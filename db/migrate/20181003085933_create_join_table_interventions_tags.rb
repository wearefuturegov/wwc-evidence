class CreateJoinTableInterventionsTags < ActiveRecord::Migration[5.2]
  def change
    create_join_table :interventions, :tags do |t|
      t.index [:intervention_id, :tag_id]
      t.index [:tag_id, :intervention_id]
    end
  end
end
