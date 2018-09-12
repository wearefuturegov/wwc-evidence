class CreateEvidence < ActiveRecord::Migration[5.2]
  def change
    create_table :evidences do |t|
      t.string :title
      t.string :description
    end
  end
end
