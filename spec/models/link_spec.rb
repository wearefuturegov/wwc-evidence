require 'rails_helper'

RSpec.describe Link, type: :model do
  let(:title) { FFaker::BaconIpsum.phrase }
  let(:url) { FFaker::Internet.http_url }
  let(:intervention) { Fabricate(:intervention) }

  let(:link) { Fabricate(:link, title: title, url: url, intervention: intervention) }

  it 'creates a link' do
    expect(link.title).to eq(title)
    expect(link.url).to eq(url)
    expect(link.intervention).to eq(intervention)
  end
end
