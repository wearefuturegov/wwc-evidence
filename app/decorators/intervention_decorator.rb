class InterventionDecorator < ApplicationDecorator
  delegate_all

  def outcomes
    OutcomeDecorator.decorate_collection(super)
  end
end
