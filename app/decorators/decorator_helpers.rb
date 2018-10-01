module DecoratorHelpers
  def output_html(*args)
    args.join('').html_safe
  end

  def field_with_header(field_name, heading_tag = 'h3')
    output_html(
      header(field_name, heading_tag),
      h.content_tag('p', object.send(field_name) || 'DK')
    )
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

  def header(field_name, heading_tag)
    h.content_tag(heading_tag, I18n.t("#{object.class.name.parameterize}.titles.#{field_name}"))
  end
end
