class ChangeMoreEffectiveAndWorksBest < ActiveRecord::Migration[5.2]
  def change
    change_column(:interventions, :more_effective, :text)
    change_column(:interventions, :works_best, :text)
    change_column_default(:interventions, :more_effective, nil)
    change_column_default(:interventions, :works_best, nil)
  end
end
