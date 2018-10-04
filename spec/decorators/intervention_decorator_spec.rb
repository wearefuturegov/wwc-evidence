require 'rails_helper'

RSpec.describe OutcomeDecorator do
  include RSpecHtmlMatchers

  describe '#tag_list' do
    let(:tags) { Fabricate.times(2, :tag, name: 'tag') }
    let(:intervention) { Fabricate(:intervention, tags: tags).decorate }

    it 'lists tags' do
      expect(intervention.tag_list).to eq('<span>tag</span><span>tag</span>')
    end
  end
end
