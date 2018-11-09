require 'rails_helper'

RSpec.describe BannerMessage, type: :model do
  describe '#instance' do
    let(:instance) { described_class.instance }
    let(:banner_message) { Fabricate(:banner_message) }

    it 'creates a BannerMessage if none exists' do
      expect(instance).to be_a(BannerMessage)
    end

    it 'returns the message' do
      banner_message
      expect(instance).to eq(banner_message)
    end
  end
end
