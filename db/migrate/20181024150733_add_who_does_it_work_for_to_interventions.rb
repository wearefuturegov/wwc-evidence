class AddWhoDoesItWorkForToInterventions < ActiveRecord::Migration[5.2]
  def change
    add_column :interventions, :who_does_it_work_for, :text
  end
end
