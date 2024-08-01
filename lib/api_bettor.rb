# frozen_string_literal: true

# this service sets api-s bet.
class ApiBettor < Bettor
  require 'rest-client'
  attr_reader :api_url

  def initialize
    @api_url = 'https://5eddt4q9dk.execute-api.us-east-1.amazonaws.com/rps-stage/throw'
    super
  end

  def call
    RestClient.get(api_url)
  rescue RestClient::InternalServerError
    # Ignored
  end
end
