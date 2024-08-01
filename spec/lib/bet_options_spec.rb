# frozen_string_literal: true

require 'rails_helper'

class DummyClass
  include BetOptions
end

RSpec.describe BetOptions, type: :module do
  describe '.valid_option?' do
    it 'returns true for valid options' do
      outputs = DummyClass.new.options.map { |option| DummyClass.new.valid_option?(option.to_s) }

      expect(outputs).not_to include(false)
      expect(outputs).not_to include(nil)
    end

    it 'returns false for invalid options' do
      result = DummyClass.new.valid_option?('dummy_value')
      expect(result).to eq(false)
    end
  end
end
