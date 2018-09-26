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
    intro: Field::Text,
    how: Field::Text,
    outcomes: Field::NestedHasMany,
    studies: Field::Text,
    effective_subjects: Field::NestedHasMany,
    ineffective_subjects: Field::NestedHasMany,
    negative_subjects: Field::NestedHasMany,
    more_effective: ArrayField,
    works_best: ArrayField,
    in_practice: Field::Text,
    costs_benefits: Field::Text,
    implementation: Field::HasOne,
    key_points: ArrayField,
    files: MultifileField,
    links: Field::NestedHasMany,
    contacts: Field::NestedHasMany
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
    intro
    how
    outcomes
    studies
    effective_subjects
    ineffective_subjects
    negative_subjects
    more_effective
    works_best
    in_practice
    costs_benefits
    implementation
    key_points
    files
    links
    contacts
  ].freeze

  def permitted_attributes
    super + [files: [], files_to_delete: [], key_points: [], more_effective: [], works_best: []]
  end

  # Overwrite this method to customize how evidences are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(evidence)
  #   "Evidence ##{evidence.id}"
  # end
end
