class ImplementationDecorator < ApplicationDecorator
  delegate_all

  def intro
    field_with_header(:intro, 'h2', true)
  end

  def how_is_it_delivered
    field_with_header(:how_is_it_delivered, 'h2', true)
  end

  def deliverer
    field_with_header(:deliverer, 'h2', true)
  end

  def training_requirements
    field_with_header(:training_requirements, 'h2', true)
  end

  def fidelity
    field_with_header(:fidelity, 'h2', true)
  end

  def support
    field_with_header(:support, 'h2', true)
  end
end
