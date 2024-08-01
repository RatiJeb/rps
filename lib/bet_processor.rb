# frozen_string_literal: true

# this service determines the winner.
class BetProcessor
  include BetOptions

  attr_reader :our_option, :users_option

  def initialize(option)
    @users_option = option
    @our_option = Bettor.call
  end

  def call
    {
      user_bet: users_option,
      our_bet: our_option,
      winner:
    }
  end

  private

  def winner
    case options.index(users_option.downcase.to_sym) <=> options.index(our_option.downcase.to_sym)
    when -1
      first_and_last_option? ? :user_won : :user_lost
    when 1
      first_and_last_option? ? :user_lost : :user_won
    else :draw
    end
  end

  def first_and_last_option?
    (options.index(users_option.downcase.to_sym) - options.index(our_option.downcase.to_sym)).abs == options.length - 1
  end
end
