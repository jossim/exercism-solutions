module Blackjack
  def self.parse_card(card)
    case card
    when 'ace'
      11
    when 'two'
      2
    when 'three'
      3
    when 'four'
      4
    when 'five'
      5
    when 'six'
      6
    when 'seven'
      7
    when 'eight'
      8
    when 'nine'
      9
    when 'ten', 'jack', 'queen', 'king'
      10
    else
      0
    end
  end

  def self.card_range(card1, card2)
    score = parse_card(card1) + parse_card(card2)

    case score
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
    range = card_range(card1, card2)
    dealer_score = parse_card(dealer_card)

    case
    when card1 == 'ace' && card2 == 'ace'
      'P'
    when range =='blackjack' && dealer_score < 10
      'W'
    when range =='blackjack'
      'S'
    when range == 'low' || (range == 'mid' && dealer_score >= 7)
      'H'
    when dealer_score == 10 || (range == 'high') || (range == 'mid' && dealer_score < 7)
      'S'
    end
  end
end
