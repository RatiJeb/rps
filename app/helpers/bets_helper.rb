# frozen_string_literal: true

# Bets Helper module
module BetsHelper
  def generate_result_heading(result)
    case result[:winner]
    when :user_won
      'YOU WON!'
    when :user_lost
      'YOU LOST!'
    else "IT'S A DRAW!"
    end
  end

  def generate_result_paragraph(result)
    case result[:winner]
    when :user_won
      "Rati with #{result[:our_bet]} loses!"
    when :user_lost
      "Rati with #{result[:our_bet]} wins!"
    else
      "Rati also chose #{result[:our_bet]}!"
    end
  end
end
