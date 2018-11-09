class CreateBannerMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :banner_messages do |t|
      t.string :title
      t.text :body
      t.integer :singleton_guard

      t.timestamps
    end
    
    add_index(:banner_messages, :singleton_guard, unique: true)
  end
end
