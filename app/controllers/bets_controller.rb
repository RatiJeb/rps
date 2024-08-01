# frozen_string_literal: false

# BetsController
class BetsController < ApplicationController
  def index
    @bet_options = %i[rock paper scissors]
  end
end
