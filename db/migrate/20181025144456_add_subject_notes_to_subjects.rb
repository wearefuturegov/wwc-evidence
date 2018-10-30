class AddSubjectNotesToSubjects < ActiveRecord::Migration[5.2]
  def change
    add_column :subjects, :subject_notes, :text
  end
end
