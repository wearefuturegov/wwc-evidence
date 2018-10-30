class ImplementationDecorator < ApplicationDecorator
  delegate_all

  def intro
    parse_markdown(super).html_safe
  end

  def how_is_it_delivered
    parse_markdown(super).html_safe
  end

  def training_requirements
    parse_markdown(super).html_safe
  end

  def fidelity
    parse_markdown(super).html_safe
  end

  def support
    parse_markdown(super).html_safe
  end
end
