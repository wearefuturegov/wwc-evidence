# frozen_string_literal: true

class Intervention < ApplicationRecord
  include Rails.application.routes.url_helpers

  has_many_attached :files
  has_many :outcomes
  has_many :links
  has_many :contacts

  has_and_belongs_to_many :tags

  belongs_to :implementation

  accepts_nested_attributes_for :implementation, :outcomes, :links, :contacts, :tags, allow_destroy: true

  attr_accessor :files_to_delete

  after_update :delete_files

  def file_list
    files.map do |f|
      OpenStruct.new(
        title: f.filename.to_s,
        url: rails_blob_path(f, only_path: true)
      )
    end
  end

  def files_and_links
    (file_list + links).sort_by(&:title)
  end

  private

  def delete_files
    return if files_to_delete.nil?

    files_to_delete.each do |file_id|
      files.find(file_id).purge
    end
  end
end
