# frozen_string_literal: true

module EvidenceSteps
  step 'I create a piece of evidence with :num file(s)' do |num_files|
    create_evidence(num_files.to_i)
  end

  step 'the evidence should have :num file(s) attached' do |num_files|
    expect(@evidence.files.count).to eq(num_files.to_i)
  end

  def create_evidence(num_files = 0)
    fill_in 'evidence_title', with: FFaker::BaconIpsum.phrase
    fill_in 'evidence_description', with: FFaker::BaconIpsum.sentence
    attach_file('evidence_files', generate_files(num_files)) if num_files > 0
    first('input[name="commit"]').click
    @evidence = Evidence.last
  end
end

RSpec.configure { |c| c.include EvidenceSteps }
