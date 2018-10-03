# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Intervention, type: :model do
  let(:title) { FFaker::BaconIpsum.phrase }
  let(:more_effective) { [FFaker::BaconIpsum.phrase] }
  let(:implementation) { Fabricate.build(:implementation) }
  let(:outcomes) { Fabricate.build_times(4, :outcome) }
  let(:tags) { Fabricate.build_times(4, :tag) }

  let(:intervention) do
    Fabricate(:intervention,
              title: title,
              more_effective: more_effective,
              implementation: implementation,
              outcomes: outcomes,
              tags: tags)
  end

  it 'creates an intervention' do
    expect(intervention.title).to eq(title)
    expect(intervention.more_effective).to eq(more_effective)
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

  describe 'subjects' do
    let(:effective_subjects) { Fabricate.build_times(4, :subject) }
    let(:ineffective_subjects) { Fabricate.build_times(2, :subject) }
    let(:negative_subjects) { Fabricate.build_times(2, :subject) }

    let(:intervention) do
      Fabricate(:intervention,
                effective_subjects: effective_subjects,
                ineffective_subjects: ineffective_subjects,
                negative_subjects: negative_subjects)
    end

    it 'has effective subjects' do
      expect(intervention.effective_subjects).to eq(effective_subjects)
    end

    it 'has ineffective subjects' do
      expect(intervention.ineffective_subjects).to eq(ineffective_subjects)
    end

    it 'has negative subjects' do
      expect(intervention.negative_subjects).to eq(negative_subjects)
    end
  end
end
