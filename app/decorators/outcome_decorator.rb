class OutcomeDecorator < Draper::Decorator
  delegate_all

  def evidence_meter
    meter(object.evidence_before_type_cast)
  end

  def effect_meter
    meter(object.effect_before_type_cast)
  end

  def meter(index)
    output = ''
    3.times do |i|
      output << h.content_tag('div', nil, class: "spot measure #{i >= index ? '' : 'fill'}")
    end
    output.html_safe
  end
end
