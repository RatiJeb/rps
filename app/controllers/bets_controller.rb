# frozen_string_literal: false

# BetsController
class BetsController < ApplicationController
  include BetOptions
  def index
    @bet_options = options
  end

  def create
    @result = BetProcessor.new(bet_params[:option].strip).call
    render partial: 'result'
  end

  def loading
    @option = bet_params[:option].strip if valid_option?(bet_params[:option])
    render partial: 'loading'
  end

  private

  def bet_params
    params.permit(:option)
  end
end
