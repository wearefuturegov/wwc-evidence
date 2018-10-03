# frozen_string_literal: true

class Intervention < ApplicationRecord
  has_many_attached :files
  has_many :outcomes
  has_many :links
  has_many :contacts

  has_many :effective_interventions_subjects,
           -> { where(classification_type: :effective) },
           class_name: 'InterventionsSubject'
  has_many :ineffective_interventions_subjects,
           -> { where(classification_type: :ineffective) },
           class_name: 'InterventionsSubject'
  has_many :negative_interventions_subjects,
           -> { where(classification_type: :negative) },
           class_name: 'InterventionsSubject'

  has_many :effective_subjects, through: :effective_interventions_subjects, source: :subject
  has_many :ineffective_subjects, through: :ineffective_interventions_subjects, source: :subject
  has_many :negative_subjects, through: :negative_interventions_subjects, source: :subject
  has_and_belongs_to_many :tags

  belongs_to :implementation

  accepts_nested_attributes_for :implementation, :outcomes, :effective_subjects, :ineffective_subjects,
                                :negative_subjects, :links, :contacts

  attr_accessor :files_to_delete

  after_update :delete_files

  private

  def delete_files
    return if files_to_delete.nil?

    files_to_delete.each do |file_id|
      files.find(file_id).purge
    end
  end
end
