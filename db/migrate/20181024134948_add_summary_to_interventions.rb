class AddSummaryToInterventions < ActiveRecord::Migration[5.2]
  def change
    add_column :interventions, :summary, :text
  end
end
