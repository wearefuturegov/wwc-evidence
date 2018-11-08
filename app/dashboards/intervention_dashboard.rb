# frozen_string_literal: true

require 'administrate/base_dashboard'

class InterventionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    title: Field::String,
    summary: Field::Text,
    intro: Field::SimpleMDEMarkdown,
    what_is_it: Field::SimpleMDEMarkdown,
    how: Field::SimpleMDEMarkdown,
    outcomes: Field::NestedHasMany,
    outcome_notes: Field::SimpleMDEMarkdown,
    studies: Field::SimpleMDEMarkdown,
    who_does_it_work_for: Field::SimpleMDEMarkdown,
    when_where_how: Field::SimpleMDEMarkdown,
    costs_benefits: Field::SimpleMDEMarkdown,
    implementation: Field::HasOne,
    further_resources: Field::SimpleMDEMarkdown,
    contacts: Field::NestedHasMany,
    links: Field::NestedHasMany,
    files: MultifileField,
    tags: TagField
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    title
    intro
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    title
    intro
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    title
    summary
    intro
    what_is_it
    how
    outcomes
    outcome_notes
    studies
    who_does_it_work_for
    when_where_how
    costs_benefits
    implementation
    further_resources
    contacts
    links
    files
    tags
  ].freeze

  def permitted_attributes
    super + [files: [], files_to_delete: [], tag_ids: []]
  end

  # Overwrite this method to customize how evidences are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(evidence)
  #   "Evidence ##{evidence.id}"
  # end
end
