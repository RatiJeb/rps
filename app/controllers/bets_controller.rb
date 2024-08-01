# frozen_string_literal: false

# BetsController
class BetsController < ApplicationController
  def index
    @bet_options = %i[rock paper scissors]
  end

  def loading
    @bet_options = %i[rock paper scissors]
    @option = bet_params[:option].strip if @bet_options.include?(bet_params[:option].strip.downcase.to_sym)
    render partial: 'loading'
  end

  private

  def bet_params
    params.permit(:option)
  end
end
