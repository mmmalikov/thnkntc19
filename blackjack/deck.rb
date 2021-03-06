require_relative 'Card'

class Deck
  SUITS = %w[♥ ♠ ♦ ♣]
  RANGS = %w[02 03 04 05 06 07 08 09 10 V Q K A]
  POINTS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 10]

  def initialize
    @cards = []

    SUITS.each do |suit|
      RANGS.zip(POINTS) { |rank, points| @cards << Card.new(suit, rank, points) }
    end

    @cards.shuffle!
  end

  def card
    @cards.pop
    @cards.last
  end
end
