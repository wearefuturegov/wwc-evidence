class OutcomeFrameworkDecorator < ApplicationDecorator
  include DecoratorHelpers
  delegate_all

  def title
    h.content_tag('h1', object.title)
  end

  def body
    parse_markdown(object.body)
  end
end
