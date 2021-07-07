require_relative 'carta.rb'

class Deck
    attr_reader :cards
    def initialize
        @cards = []
        (1..13).each do |num|
            %w[C D E T].each do |kind|
                @cards << Card.new(num, kind)
            end
        end
    end

    def shuffles
        self.cards.shuffle
    end

    def draw
        self.cards.pop
    end

    def initial_draw
        self.cards.pop(5)
    end
end

deck_cards = Deck.new

pp deck_cards.shuffles
pp "---------"
pp deck_cards.draw
pp "---------"
pp deck_cards.initial_draw