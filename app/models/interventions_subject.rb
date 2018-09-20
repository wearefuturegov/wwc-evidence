class InterventionsSubject < ApplicationRecord
  belongs_to :interventions, optional: true
  belongs_to :subject, optional: true

  enum classification_type: %i[effective ineffective negative]
end
