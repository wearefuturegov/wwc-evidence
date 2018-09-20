# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Intervention, type: :model do
  let(:title) { FFaker::BaconIpsum.phrase }
  let(:intervention) { Fabricate(:intervention, title: title) }

  it 'creates an intervention' do
    expect(intervention.title).to eq(title)
  end
end
