# frozen_string_literal: true

# This is bet options module where you can manage all options.
module BetOptions
  def options
    %i[rock paper scissors]
  end

  def valid_option?(option)
    options.include?(option.strip.downcase.to_sym)
  end
end
