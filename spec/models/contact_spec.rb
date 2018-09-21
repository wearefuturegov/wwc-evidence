require 'rails_helper'

RSpec.describe Contact, type: :model do
  let(:title) { FFaker::BaconIpsum.phrase }
  let(:url) { FFaker::Internet.http_url }
  let(:intervention) { Fabricate(:intervention) }

  let(:contact) { Fabricate(:contact, title: title, url: url, intervention: intervention) }

  it 'creates a contact' do
    expect(contact.title).to eq(title)
    expect(contact.url).to eq(url)
    expect(contact.intervention).to eq(intervention)
  end
end
