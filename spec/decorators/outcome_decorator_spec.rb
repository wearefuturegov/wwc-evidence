require 'rails_helper'

RSpec.describe OutcomeDecorator do
  include RSpecHtmlMatchers

  let(:intervention) { Fabricate(:intervention) }
  let(:outcome) { Fabricate(:outcome, intervention: intervention).decorate }

  describe 'meters' do
    describe '#evidence_meter' do
      let(:output) { outcome.evidence_meter }

      it 'shows the right output when poor quality' do
        outcome.evidence = :poor_quality
        outcome.save
        expect(output).to have_tag('div.spot.measure', count: 3)
        expect(output).to_not have_tag('div.spot.measure.fill')
      end

      it 'shows the right output when low quality' do
        outcome.evidence = :low_quality
        outcome.save
        expect(output).to have_tag('div.spot.measure', count: 3)
        expect(output).to have_tag('div.spot.measure.fill', count: 1)
      end

      it 'shows the right output when moderate quality' do
        outcome.evidence = :moderate_quality
        outcome.save
        expect(output).to have_tag('div.spot.measure', count: 3)
        expect(output).to have_tag('div.spot.measure.fill', count: 2)
      end

      it 'shows the right output when high quality' do
        outcome.evidence = :high_quality
        outcome.save
        expect(output).to have_tag('div.spot.measure', count: 3)
        expect(output).to have_tag('div.spot.measure.fill', count: 3)
      end
    end

    describe '#effect_meter' do
      let(:output) { outcome.effect_meter }

      it 'shows the right output when poor quality' do
        outcome.effect = :not_effective
        outcome.save
        expect(output).to have_css("img[src*='meter_0']")
      end

      it 'shows the right output when low quality' do
        outcome.effect = :low_effect
        outcome.save
        expect(output).to have_css("img[src*='meter_1']")
      end

      it 'shows the right output when moderate quality' do
        outcome.effect = :moderate_effect
        outcome.save
        expect(output).to have_css("img[src*='meter_2']")
      end

      it 'shows the right output when high quality' do
        outcome.effect = :high_effect
        outcome.save
        expect(output).to have_css("img[src*='meter_3']")
      end
    end
  end
end
