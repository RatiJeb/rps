# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Bets' do
  describe 'GET /index' do
    let(:bet_options) { %i[rock paper scissors] }

    it 'renders a successful response' do
      get '/bets'
      expect(response).to have_http_status(:success)
    end

    it 'assigns @bet_options' do
      get '/bets'
      expect(assigns(:bet_options)).to eq(bet_options)
    end

    it 'renders the index template' do
      get '/bets'
      expect(response).to render_template(:index)
    end
  end
end
