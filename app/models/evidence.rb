# frozen_string_literal: true

class Evidence < ApplicationRecord
  has_many_attached :files
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
