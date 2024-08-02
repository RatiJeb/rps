# frozen_string_literal: true

# this service sets app-s bet.
class AppBettor < Bettor
  def call
    options[rand(options.length)]
  end
end
