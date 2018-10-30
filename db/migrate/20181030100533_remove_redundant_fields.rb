class RemoveRedundantFields < ActiveRecord::Migration[5.2]
  def change
    remove_column :interventions, :more_effective, :string, array: true, default: []
    remove_column :interventions, :works_best, :string, array: true, default: []
    remove_column :interventions, :in_practice, :string, array: true, default: []
    remove_column :interventions, :key_points, :string, array: true, default: []

    remove_column :implementations, :supervision, :string

    drop_table :subjects
    drop_table :interventions_subjects
  end
end
