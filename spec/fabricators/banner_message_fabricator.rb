Fabricator(:banner_message) do
  title { FFaker::BaconIpsum.phrase }
  body  { FFaker::BaconIpsum.paragraph }
  singleton_guard 0
end
