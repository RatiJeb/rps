# frozen_string_literal: true

# this service sets app-s bet.
class Bettor
  include BetOptions
  extend BetOptions
  def self.call
    bettors.each do |bettor|
      subclass = "#{bettor.to_s.camelcase}Bettor".constantize.new
      result = subclass.call
      break result if result
    end
  end
end
