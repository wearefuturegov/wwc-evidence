class InterventionDecorator < ApplicationDecorator
  delegate_all

  def how
    field_with_header(:how, 'h2')
  end

  def outcomes
    OutcomeDecorator.decorate_collection(super)
  end

  def implementation
    super.decorate
  end
end
