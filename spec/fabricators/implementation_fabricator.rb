Fabricator(:implementation) do
  intro { FFaker::BaconIpsum.phrase }
  deliverer { FFaker::BaconIpsum.phrase }
  training_requirements { FFaker::BaconIpsum.phrase }
  supervision { FFaker::BaconIpsum.phrase }
  fidelity { FFaker::BaconIpsum.phrase }
  support { FFaker::BaconIpsum.phrase }
end
