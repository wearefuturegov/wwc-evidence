class RemoveOutcomeDescription < ActiveRecord::Migration[5.2]
  def change
    remove_column :outcomes, :description, :text
  end
end
