require 'rails_helper'

RSpec.describe Admin::TagsController, type: :controller do
  let!(:tags) { Fabricate.times(5, :tag) }

  before(:each) do
    @request.env['devise.mapping'] = Devise.mappings[:user]
    user = Fabricate(:user)
    user.confirm
    sign_in user
  end

  describe '#index' do
    before { get :index }
    let(:body) { JSON.parse(response.body) }

    it 'lists tags' do
      expect(body.count).to eq(5)
      expect(body.map { |b| b.fetch('name') }).to eq(tags.pluck(:name))
    end
  end
end
