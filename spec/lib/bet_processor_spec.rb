# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BetProcessor, type: :module do
  include BetOptions
  describe '.call' do
    it 'returns hash with all required keys' do
      expected_keys = %i[user_bet our_bet winner]

      result = BetProcessor.new('rock').call

      expect(expected_keys).to eq(result.keys)
    end
  end

  describe '.winner' do
    it 'returns loser' do
      service = BetProcessor.new('rock')
      service.instance_variable_set(:@our_option, 'paper')

      winner = service.send(:winner)

      expect(winner).to eq(:user_lost)
    end

    it 'returns winner' do
      service = BetProcessor.new('scissors')
      service.instance_variable_set(:@our_option, 'paper')

      winner = service.send(:winner)

      expect(winner).to eq(:user_won)
    end

    it 'returns draw' do
      service = BetProcessor.new('paper')
      service.instance_variable_set(:@our_option, 'paper')

      winner = service.send(:winner)

      expect(winner).to eq(:draw)
    end
  end
end
