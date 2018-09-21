Fabricator(:outcome) do
  title { FFaker::BaconIpsum.phrase }
  description { FFaker::BaconIpsum.sentence }
  effect 0
  evidence 0
end
