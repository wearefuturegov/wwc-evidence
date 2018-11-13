class AddCaseStudiesAndInSummaryToInterventions < ActiveRecord::Migration[5.2]
  def change
    add_column :interventions, :in_summary, :string, array: true, default: []
    add_column :interventions, :case_studies, :text
  end
end
