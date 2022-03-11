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

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @value = get_value(rank)
  end

  def <=>(other)
    value <=> other.value
  end

  def to_s
    "#{rank} of #{suit}"
  end

  private

  def get_value(rank)
    case rank
    when 'Ace' then 14
    when 'King' then 13
    when 'Queen' then 12
    when 'Jack' then 11
    else rank.to_i
    end
  end

end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
p 52.times { drawn2 << deck.draw }
p drawn != drawn2 # Almost always.
