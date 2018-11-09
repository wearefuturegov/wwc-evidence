require 'administrate/field/base'

class EnumField < Administrate::Field::Base
  def to_s
    data
  end

  def key_translation(klass, key, value)
    class_name = klass.to_s.downcase
    I18n.t("helpers.options.#{class_name}.#{key}.#{value}")
  end

  def select_field_values(form_builder)
    form_builder.object.class.public_send(attribute.to_s.pluralize).keys.map do |v|
      [key_translation(form_builder.object.class, attribute.to_s, v), v]
    end
  end
end
