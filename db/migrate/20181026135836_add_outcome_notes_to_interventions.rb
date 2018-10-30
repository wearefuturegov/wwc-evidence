class AddOutcomeNotesToInterventions < ActiveRecord::Migration[5.2]
  def change
    add_column :interventions, :outcome_notes, :text
  end
end
