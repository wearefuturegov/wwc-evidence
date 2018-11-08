class AddFurtherResourcesToInterventions < ActiveRecord::Migration[5.2]
  def change
    add_column :interventions, :further_resources, :text
  end
end
