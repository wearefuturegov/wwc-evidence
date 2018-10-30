require 'administrate/base_dashboard'

class OutcomeDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    title: Field::String,
    description: Field::Text,
    effect: EnumField,
    evidence: EnumField,
    intervention_notes: Field::SimpleMDEMarkdown
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    title
    description
    effect
    evidence
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    title
    description
    effect
    evidence
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    title
    description
    effect
    evidence
    intervention_notes
  ].freeze

  # Overwrite this method to customize how outcomes are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(outcome)
  #   "Outcome ##{outcome.id}"
  # end
end
