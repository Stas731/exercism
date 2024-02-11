module Blackjack
    def self.parse_card(card)
        @card = card
      case @card
      when 'two' then 2
      when 'three' then 3
      when 'four' then 4
      when 'five' then 5
      when 'six' then 6
      when 'seven' then 7
      when 'eight' then 8
      when 'nine' then 9
      when 'ten' then 10
      when 'jack' then 10
      when 'queen' then 10
      when 'king' then 10
      when 'ace' then 11
      else 
        0
      end
    end
  
    def self.card_range(card1, card2)
      @card1 = parse_card(card1)
      @card2 = parse_card(card2)
      case @card1 + @card2
      when 4..11
        'low'
      when 12..16
        'mid'
      when 17..20
        'high'
      when 21
        'blackjack'
      end
    end
  
    def self.first_turn(card1, card2, dealer_card)
      @card1 = card1
      @card2 = card2
      @dealer_card = dealer_card

       if @card1 == 'ace' && @card2 == 'ace'
            return 'P'
       elsif card_range(card1, card2) == 'blackjack' && @dealer_card != 'ace' && @dealer_card != 'king' && @dealer_card != 'queen' && @dealer_card != 'jack' && @dealer_card != 'ten'
            return 'W'
       elsif card_range(card1, card2) == 'blackjack' && @dealer_card != 'two' && @dealer_card != 'three' && @dealer_card != 'four' && @dealer_card != 'five' && @dealer_card != 'six' && @dealer_card != 'seven' && @dealer_card != 'eight' && @dealer_card != 'nine' 
            return 'S' 
       elsif card_range(card1, card2) == 'high'
            return 'S'
       elsif card_range(card1, card2) == 'mid' && parse_card(dealer_card) < 7
            return 'S'
       elsif card_range(card1, card2) == 'mid' && parse_card(dealer_card) >= 7
            return 'H'
       elsif parse_card(card1) + parse_card(card2) <= 11
            return 'H'
        end
    end
  end
  
  p Blackjack.first_turn("ace", "king", "ace")