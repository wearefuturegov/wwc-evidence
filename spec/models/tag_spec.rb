require 'rails_helper'

RSpec.describe Tag, type: :model do
  let(:interventions) { Fabricate.times(5, :intervention) }
  let(:tag) { Fabricate(:tag, interventions: interventions) }

  it 'has many interventions' do
    expect(tag.interventions).to eq(interventions)
  end
end
