require 'rails_helper'

RSpec.describe Outcome, type: :model do
  let(:intervention) { Fabricate(:intervention) }
  let(:outcome) { Fabricate(:outcome, intervention: intervention) }

  it 'can have an intervention' do
    expect(outcome.intervention).to eq(intervention)
  end
end
