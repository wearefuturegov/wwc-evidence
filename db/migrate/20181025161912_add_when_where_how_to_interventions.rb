class AddWhenWhereHowToInterventions < ActiveRecord::Migration[5.2]
  def change
    add_column :interventions, :when_where_how, :text
  end
end
