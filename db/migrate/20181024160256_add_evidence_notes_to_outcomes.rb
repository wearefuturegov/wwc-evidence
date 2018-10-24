class AddEvidenceNotesToOutcomes < ActiveRecord::Migration[5.2]
  def change
    add_column :outcomes, :evidence_notes, :text
  end
end
