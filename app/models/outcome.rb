class Outcome < ApplicationRecord
  belongs_to :intervention

  enum effect: %i[not_effective low_effect moderate_effect high_effect]
  enum evidence: %i[poor_quality low_quality moderate_quality high_quality]
end
