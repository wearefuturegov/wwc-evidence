Fabricator(:link) do
  title { FFaker::BaconIpsum.phrase }
  url { FFaker::Internet.http_url }
end
