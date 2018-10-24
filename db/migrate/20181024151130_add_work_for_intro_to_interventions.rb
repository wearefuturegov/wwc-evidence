class AddWorkForIntroToInterventions < ActiveRecord::Migration[5.2]
  def change
    add_column :interventions, :work_for_intro, :text
  end
end
