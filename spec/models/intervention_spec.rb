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

  context 'with attached files' do
    let(:files) { generate_files(3) }

    before do
      files.each_with_index do |f, i|
        intervention.files.attach(io: File.open(f), filename: "file-#{i}.txt")
      end
    end

    it 'gives a list of files' do
      expect(intervention.file_list.count).to eq(3)
      expect(intervention.file_list.first.title).to eq('file-0.txt')
      expect(intervention.file_list.first.url).to match(%r{rails\/active_storage\/blobs\/})
    end

    it 'combines links and files' do
      expect(intervention.files_and_links.count).to eq(intervention.links.count + files.count)
    end
  end
end
