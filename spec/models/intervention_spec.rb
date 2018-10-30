# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Intervention, type: :model do
  let(:title) { FFaker::BaconIpsum.phrase }
  let(:implementation) { Fabricate.build(:implementation) }
  let(:outcomes) { Fabricate.build_times(4, :outcome) }
  let(:tags) { Fabricate.build_times(4, :tag) }

  let(:intervention) do
    Fabricate(:intervention,
              title: title,
              implementation: implementation,
              outcomes: outcomes,
              tags: tags)
  end

  it 'creates an intervention' do
    expect(intervention.title).to eq(title)
  end

  it 'can have an implementation' do
    expect(intervention.implementation).to eq(implementation)
  end

  it 'can have many outcomes' do
    expect(intervention.outcomes).to eq(outcomes)
  end

  it 'can have many tags' do
    expect(intervention.tags).to eq(tags)
  end
end
