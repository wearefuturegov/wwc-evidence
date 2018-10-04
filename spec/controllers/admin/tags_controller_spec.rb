require 'rails_helper'

RSpec.describe Admin::TagsController, type: :controller do

  before(:each) do
    @request.env['devise.mapping'] = Devise.mappings[:user]
    user = Fabricate(:user)
    user.confirm
    sign_in user
  end

  describe '#index' do
    let!(:tags) { Fabricate.times(5, :tag) }

    before { get :index }
    let(:body) { JSON.parse(response.body) }

    it 'lists tags' do
      expect(body.count).to eq(5)
      expect(body.map { |b| b.fetch('name') }).to eq(tags.pluck(:name))
    end
  end

  describe '#create' do
    let(:tag_name) { 'Some Tag' }
    let(:tag) { Tag.last }
    before { post :create, params: { tag: { name: tag_name } }, format: :js }

    it 'creates a tag' do
      expect(Tag.count).to eq(1)
      expect(tag.name).to eq(tag_name)
    end

    it 'assigns a tag' do
      expect(controller.tag).to eq(tag)
    end
  end

  describe '#show' do
    let(:tag) { Fabricate(:tag) }
    before { get :index, params: { id: tag.id } }

    it 'assigns a tag' do
      expect(controller.tag).to eq(tag)
    end
  end
end
