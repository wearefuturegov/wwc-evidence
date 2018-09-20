class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|
      t.string :title
      t.text :intro
      t.text :how
      t.text :studies
      t.string :more_effective, array: true, default: []
      t.string :works_best, array: true, default: []
      t.string :more_effective, array: true, default: []
      t.text :in_practice
      t.text :costs_benefits
      t.string :key_points, array: true, default: []
      t.references :implementation
    end
    
    create_table :outcomes do |t|
      t.string :title
      t.text :description
      t.integer :effect
      t.integer :evidence
      t.references :intervention
    end
    
    create_table :subjects do |t|
      t.string :title
    end
    
    create_table :implementations do |t|
      t.text :intro
      t.string :deliverer
      t.string :training_requirements
      t.string :supervision
      t.string :fidelity
      t.string :support
    end
    
    create_table :links do |t|
      t.string :title
      t.string :url
      t.references :intervention
    end
    
    create_table :contacts do |t|
      t.string :title
      t.string :url
      t.references :intervention
    end
    
    create_table :interventions_subjects do |t|
      t.references :intervention
      t.references :subject
      t.integer :classification_type
    end
  end
end
