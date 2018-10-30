class OutcomeDecorator < ApplicationDecorator
  delegate_all

  def description
    h.content_tag('p') do
      [
        h.content_tag('strong', "#{title} - "),
        I18n.t("outcome.description.effect.#{effect}"),
        I18n.t("outcome.description.evidence.#{evidence}")
      ].join.html_safe
    end
  end

  def evidence_meter
    h.image_tag "meter_#{object.evidence_before_type_cast}.svg", alt: object.evidence, class: 'meter'
  end

  def effect_meter
    h.image_tag "meter_#{object.effect_before_type_cast}.svg", alt: object.effect, class: 'meter'
  end

  def intervention_notes
    parse_markdown(super).html_safe
  end
end
