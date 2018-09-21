# frozen_string_literal: true

module InterventionSteps
  step 'I create an intervention with :num file(s)' do |num_files|
    create_intervention(num_files.to_i)
  end

  step 'the intervention should have :num file(s) attached' do |num_files|
    @intervention.reload
    expect(@intervention.files.count).to eq(num_files.to_i)
  end

  def create_intervention(num_files = 0)
    fill_in 'intervention_title', with: FFaker::BaconIpsum.phrase
    fill_in 'intervention_intro', with: FFaker::BaconIpsum.sentence
    attach_file('intervention_files', generate_files(num_files)) if num_files > 0
    first('input[name="commit"]').click
    @intervention = Intervention.last
  end
end

RSpec.configure { |c| c.include InterventionSteps }
