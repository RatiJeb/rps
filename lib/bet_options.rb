# frozen_string_literal: true

# This is bet options module where you can manage all options.
module BetOptions
  # from weakest to strongest, first option is stronger than last one.
  def options
    %i[rock paper scissors]
  end

  def valid_option?(option)
    options.include?(option.strip.downcase.to_sym)
  end

  def bettors
    %i[api app]
  end
end
