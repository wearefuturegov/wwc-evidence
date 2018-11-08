require 'rails_helper'

RSpec.describe InterventionsController, type: :controller do
  describe 'GET #index' do
    let!(:interventions) { Fabricate.times(4, :intervention) }

    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'gets interventions' do
      get :index
      expect(controller.interventions).to eq(interventions.sort_by(&:title))
    end
  end

  describe 'GET #show' do
    let(:intervention) { Fabricate(:intervention) }

    it 'gets an intervention' do
      get :show, params: { id: intervention.id }
      expect(controller.intervention).to eq(intervention)
    end
  end
end
