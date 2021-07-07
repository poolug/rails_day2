class Card
    attr_accessor :number, :kind
    def initialize(number=nil, kind=nil)
        @number = number
        @kind = kind
        number = Random.rand(1...13)
        kind = %w[C D T E].sample
        @number = number
        @kind = kind
    end
end

# a = Card.new

# pp a