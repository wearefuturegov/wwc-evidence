Fabricator(:contact) do
  title { FFaker::BaconIpsum.phrase }
  url { FFaker::Internet.http_url }
end
