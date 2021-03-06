require 'administrate/base_dashboard'

class ImplementationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    intro: Field::SimpleMDEMarkdown,
    how_is_it_delivered: Field::SimpleMDEMarkdown,
    deliverer: Field::SimpleMDEMarkdown,
    training_requirements: Field::SimpleMDEMarkdown,
    fidelity: Field::SimpleMDEMarkdown,
    support: Field::SimpleMDEMarkdown
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    intro
    deliverer
    training_requirements
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    intro
    deliverer
    training_requirements
    fidelity
    support
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    intro
    how_is_it_delivered
    deliverer
    training_requirements
    fidelity
    support
  ].freeze

  # Overwrite this method to customize how implementations are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(implementation)
  #   "Implementation ##{implementation.id}"
  # end
end
