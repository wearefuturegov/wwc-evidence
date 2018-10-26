class InterventionDecorator < ApplicationDecorator
  delegate_all

  def what_is_it
    field_with_header(:what_is_it, 'h2')
  end

  def intro
    parse_markdown(super).html_safe
  end

  def how
    field_with_header(:how, 'h2', true)
  end

  def in_practice
    field_with_header(:in_practice, 'h2', true)
  end

  def costs_benefits
    field_with_header(:costs_benefits, 'h2', true)
  end

  def studies
    field_with_header(:studies, 'h2', true)
  end

  def who_does_it_work_for
    parse_markdown(super).html_safe
  end

  def when_where_how
    parse_markdown(super).html_safe
  end

  def outcomes
    OutcomeDecorator.decorate_collection(super)
  end

  def outcome_notes
    parse_markdown(super).html_safe
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
