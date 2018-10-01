class OutcomesDecorator < Draper::CollectionDecorator
  include DecoratorHelpers

  def list_with_header
    output_html(
      h.content_tag('h2', I18n.t('outcome.titles.heading')),
      list
    )
  end

  def list
    h.content_tag('ul') do
      object.map do |o|
        h.content_tag('li', "#{o.title} - #{o.description}")
      end.reduce(&:+)
    end
  end
end
