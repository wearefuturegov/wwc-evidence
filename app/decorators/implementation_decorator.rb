class ImplementationDecorator < ApplicationDecorator
  delegate_all

  def intro
    field_with_header(:intro, 'h2', true)
  end

  def deliverer
    field_with_header(:deliverer)
  end

  def training_requirements
    field_with_header(:training_requirements)
  end

  def supervision
    field_with_header(:supervision)
  end

  def fidelity
    field_with_header(:fidelity)
  end

  def support
    field_with_header(:support)
  end
end
