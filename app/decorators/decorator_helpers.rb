module DecoratorHelpers
  def output_html(*args)
    args.join('').html_safe
  end

  def field_with_header(field_name, heading_tag = 'h3', markdown = false)
    content = object.send(field_name)
    return unless content.present?

    parsed_content = markdown ? parse_markdown(content) : h.content_tag('p', content)
    output_html(
      header(field_name, heading_tag),
      parsed_content
    )
  end

  def parse_markdown(content)
    Kramdown::Document.new(content.to_s).to_html
  end

  def array_list_with_header(field_name, heading_tag = 'h2')
    output_html(
      header(field_name, heading_tag),
      h.content_tag('ul') do
        object.send(field_name).each do |f|
          h.content_tag('li', f)
        end
      end
    )
  end

  def item_title(field_name)
    I18n.t("helpers.label.#{object.class.name.parameterize}.#{field_name}")
  end

  def header(field_name, heading_tag)
    h.content_tag(heading_tag, item_title(field_name), id: field_name)
  end

  def nav_item(field_name)
    content = object.send(field_name)
    return unless content.present?

    h.content_tag(:li) do
      h.link_to item_title(field_name), "##{field_name}"
    end.html_safe
  end
end
