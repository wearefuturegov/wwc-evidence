class AddHowIsItDeliveredToImplementations < ActiveRecord::Migration[5.2]
  def change
    add_column :implementations, :how_is_it_delivered, :text
  end
end
