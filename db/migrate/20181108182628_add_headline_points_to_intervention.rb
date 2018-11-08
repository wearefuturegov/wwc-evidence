class AddHeadlinePointsToIntervention < ActiveRecord::Migration[5.2]
  def change
    add_column :interventions, :headline_points, :string, array: true, default: []
  end
end
