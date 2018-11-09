class BannerMessageDecorator < ApplicationDecorator
  delegate_all

  def title
    h.content_tag(:h1, super, class: 'message')
  end

  def body
    parse_markdown(super).html_safe
  end
end
