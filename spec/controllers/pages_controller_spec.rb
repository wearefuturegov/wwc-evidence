require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe 'GET #show' do
    let!(:page) { Fabricate(:page, title: 'My Page') }

    it 'Gets a page' do
      get :show, params: { id: page.slug }
      expect(controller.page).to eq(page)
    end
  end

end
