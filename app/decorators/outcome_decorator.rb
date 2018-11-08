class OutcomeDecorator < ApplicationDecorator
  delegate_all

  def description
    h.content_tag('p') do
      [
        h.content_tag('strong', title.to_s),
        I18n.t("outcome.description.effect.#{effect}"),
        I18n.t("outcome.description.evidence.#{evidence}")
      ].join.html_safe
    end
  end

  def evidence_meter
    output = ''
    3.times do |i|
      output << h.content_tag('div', nil, class: "spot measure #{i >= object.evidence_before_type_cast ? '' : 'fill'}")
    end
    h.content_tag('div', output.html_safe, class: "evidence_wrapper #{object.evidence}")
  end

  def effect_meter
    h.image_tag "meter_#{object.effect_before_type_cast}.svg", alt: object.effect, class: 'meter'
  end

  def intervention_notes
    parse_markdown(super).html_safe
  end
end
