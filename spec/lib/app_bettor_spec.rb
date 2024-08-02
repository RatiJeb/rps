# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AppBettor, type: :module do
  include BetOptions
  describe '.call' do
    it 'generates a random bet' do
      expected_outputs = options

      result = AppBettor.call

      expect(expected_outputs).to include(result)
    end
  end
end
