class Card
    attr_reader :value, :suit
    def initialize (value, suit)
        @value = value
        @suit = suit.downcase

        if @value.between?(1,13) == false
            raise ArgumentError.new("Must be a value between 1 and 13")
        elsif @value == 14
            raise ArgumentError.new("In this deck, Aces are low")
        elsif @value.is_a?(Integer) ==  false
            raise ArgumentError.new("In this deck, only natural integers are allowed")
        elsif ["clubs", "hearts", "diamonds", "spades"].include?(@suit) == false
            raise ArgumentError.new("In this deck, only clubs, hearts, diamonds, and spades are used")
        end
    end

    def face
        case @value
        when 1 
            @value = "Ace"
        when 2..10
            @value = value.to_s
        when 11
            @value = "Jack"
        when 12 
            @value = "Queen"
        when 13 
            @value = "King"
        else
            "Not a valid face in this deck."
        end
    end
end

