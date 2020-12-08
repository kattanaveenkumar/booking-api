require 'rails_helper'
RSpec.describe 'Bookings API' do
  let!(:space) { create(:space)}
  let!(:bookings) { create_list(:booking, 5, space_id: space.id)}
  let(:space_id) { todos.first.id }

  # Test suite for GET /bookings
  describe 'GET /bookings' do
    before { get '/bookings' }
    context 'when filters are not passed in the request' do
      it 'returns bookings' do
        # Note `json_response` is a custom helper to parse JSON responses
        expect(json_response).not_to be_empty
        expect(json_response.size).to eq(5)
      end
    end

    context 'filter bookings list with space_id' do
      it 'returns all bookings list that matches the space_id' do
        params = {"space_id" => "balsjd"}
        get :bookings, space_id: 'asfkj'
        expect(json_response).not_to be_empty
        expect(json_response.size).to eq(5)
      end
    end

  end
end