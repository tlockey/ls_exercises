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

cards = [ Card.new(4, 'Spades'),
         Card.new(4, 'Diamonds'),
         Card.new(4, 'Hearts'),
         Card.new(4, 'Clubs'),
         Card.new(5, 'Diamonds')]
puts cards
puts "Sorted \n\n"
puts cards.sort
puts cards.min == Card.new(4, 'Diamonds')
puts cards.max == Card.new(5, 'Diamonds')


