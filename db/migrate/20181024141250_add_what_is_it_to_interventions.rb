class AddWhatIsItToInterventions < ActiveRecord::Migration[5.2]
  def change
    add_column :interventions, :what_is_it, :text
  end
end
