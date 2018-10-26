class AddInterventionNotesToOutcome < ActiveRecord::Migration[5.2]
  def change
    add_column :outcomes, :intervention_notes, :text
  end
end
