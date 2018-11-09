class PageDecorator < ApplicationDecorator
  include DecoratorHelpers
  delegate_all

  def title
    h.content_tag('h1', object.title)
  end

  def body
    parse_markdown(object.body).html_safe
  end
end
