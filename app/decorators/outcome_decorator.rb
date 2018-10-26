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
    meter(object.evidence_before_type_cast)
  end

  def effect_meter
    meter(object.effect_before_type_cast)
  end

  def intervention_notes
    parse_markdown(super).html_safe
  end

  def meter(index)
    output = ''
    3.times do |i|
      output << h.content_tag('div', nil, class: "spot measure #{i >= index ? '' : 'fill'}")
    end
    output.html_safe
  end
end
