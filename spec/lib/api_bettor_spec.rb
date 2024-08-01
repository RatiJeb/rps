# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApiBettor, type: :module do
  include BetOptions
  describe '.call' do
    it 'fetches a bet from api' do
      expected_outputs = options << nil

      result = ApiBettor.call

      expect(expected_outputs).to include(result)
    end
  end
end
