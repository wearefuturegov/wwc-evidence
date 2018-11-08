# frozen_string_literal: true

Fabricator(:intervention) do
  title { FFaker::BaconIpsum.phrase }
  intro { FFaker::BaconIpsum.paragraph }
  how { FFaker::BaconIpsum.paragraph }
  studies { FFaker::BaconIpsum.paragraph }
  implementation
  costs_benefits { FFaker::BaconIpsum.paragraph }
  outcomes(rand: 5)
  links(rand: 5)
  contacts(rand: 5)
  tags(rand: 5) { Fabricate.build(:tag) }
  headline_points(rand: 5) { FFaker::BaconIpsum.phrase }
end
