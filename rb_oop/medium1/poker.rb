require 'pry'
# Include Card and Deck classes from the last two exercises.
class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    @cards = []
    get_new_deck
  end

  def get_new_deck
    cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
       cards << Card.new(rank, suit)
      end
    end
    @cards = cards.shuffle!
  end

  def draw
    get_new_deck if @cards.empty?
    @cards.pop
  end
end

class Card
  include Comparable
  attr_reader :rank, :suit, :value
  FACE_VALUES = { "Ace" => 14,
                  "King" => 13,
                  "Queen" => 12,
                  "Jack" => 11 
                }
  SUIT_VALUES = {"Spades" => 3,
                 "Hearts" => 2,
                 "Clubs" => 1,
                 "Diamonds" => 0
                }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @value = get_value(rank)
  end

  def <=>(other)
    rank == other.rank ? compare_suit(other) : value <=> other.value
  end

  def to_s
    "#{rank} of #{suit}"
  end

  private

  def get_value(rank)
    FACE_VALUES.fetch(rank, rank.to_i) 
  end

  def compare_suit(other)
    SUIT_VALUES[suit] <=> SUIT_VALUES[other.suit]
  end

end

class PokerHand
  attr_accessor :hand, :ranks
  def initialize(deck)
    @hand = []
    get_hand(deck)
    get_ranks
  end

  def get_hand(deck)
    5.times do 
      @hand << deck.draw
    end
    @hand.sort!
  end

  def print
    @hand.each do |card|
      puts card
    end
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def royal_flush?
    flush? && (ranks == [10, 'Jack', 'Queen', 'King', 'Ace'])
    # Ace, King, Queen, Jack, 10 of same suit
  end

  def straight_flush?
    flush? && straight?
    # same suit, in sequence
  end

  def four_of_a_kind?
    ranks.uniq.each do |rank|
      return true if ranks.count(rank) == 4
    end
    false
    # four cards same rank + other card
  end

  def full_house?
    pair? && three_of_a_kind?
  end

  def flush?
    # five cards same suit
    Deck::SUITS.any? do |suit|
      @hand.all?{|card| card.suit == suit}
    end
  end

  def straight?
    # five cards in sequence
    reference = five_consecutive_ranks(ranks.first)
    ranks == reference
  end

  def five_consecutive_ranks(starting_rank)
    Deck::RANKS.each_with_index do |rank, idx|
      if rank == starting_rank
        return Deck::RANKS[idx...(idx + 5)]
      end
    end
  end

  def three_of_a_kind?
    count_ranks(3)
  end

  def two_pair?
    pairs = 0
    ranks.uniq.each do |rank|
      pairs += 1 if ranks.count(rank) == 2
    end
    pairs == 2
  end # end two_pair?

  def pair?
    count_ranks(2)
    # Two cards of the same rank
    # see if any two elements in the ranks are the same

  end # end pair?()

  def get_ranks # returns array of ranks
    ranks = []
    @hand.each do |card|
      ranks << card.rank
    end
    @ranks = ranks
  end

  def count_ranks(count)
    ranks.uniq.each do |rank|
      return true if ranks.count(rank) == count
    end
    false
  end
end

hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])

print "Royal flush: "
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
print "Straight flush: "
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
print "four of a kind: "
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
print "full house: "
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
print "Flush: "
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
print "Straight: "
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
print "Straight: "
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
print "three of a kind: "
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
print "two pair :"
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
print "pair :"
puts hand.evaluate == 'Pair'
# puts hand.hand.sort

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
print "high card :"
puts hand.evaluate == 'High card'
