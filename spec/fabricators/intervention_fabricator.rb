# frozen_string_literal: true

Fabricator(:intervention) do
  title { FFaker::BaconIpsum.phrase }
  intro { FFaker::BaconIpsum.paragraph }
  how { FFaker::BaconIpsum.paragraph }
  studies { FFaker::BaconIpsum.paragraph }
  more_effective(rand: 5) { FFaker::BaconIpsum.phrase }
  works_best(rand: 5) { FFaker::BaconIpsum.phrase }
  more_effective(rand: 5) { FFaker::BaconIpsum.phrase }
  implementation
  in_practice { FFaker::BaconIpsum.paragraph }
  costs_benefits { FFaker::BaconIpsum.paragraph }
  key_points(rand: 5) { FFaker::BaconIpsum.phrase }
  outcomes(rand: 5)
  links(rand: 5)
  contacts(rand: 5)
  effective_subjects(rand: 5) { Fabricate.build(:subject) }
  ineffective_subjects(rand: 5) { Fabricate.build(:subject) }
  negative_subjects(rand: 5) { Fabricate.build(:subject) }
  tags(rand: 5) { Fabricate.build(:tag) }
end
