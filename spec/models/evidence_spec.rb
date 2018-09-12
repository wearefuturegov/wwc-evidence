# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Evidence, type: :model do
  let(:title) { FFaker::BaconIpsum.phrase }
  let(:evidence) { Fabricate(:evidence, title: title) }

  it 'creates a piece of evidence' do
    expect(evidence.title).to eq(title)
  end
end
