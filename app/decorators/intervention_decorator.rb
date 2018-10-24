class InterventionDecorator < ApplicationDecorator
  delegate_all

  def what_is_it
    field_with_header(:what_is_it, 'h2')
  end

  def how
    field_with_header(:how, 'h2')
  end

  def outcomes
    OutcomeDecorator.decorate_collection(super)
  end

  def implementation
    super.decorate
  end

  def tag_list
    tags.all.map do |t|
      h.content_tag('span', t.name)
    end.join.html_safe
  end
end
