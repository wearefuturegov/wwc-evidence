Fabricator(:contact) do
  title { FFaker::BaconIpsum.phrase }
  url { FFaker::Intenet.http_url }
  intervention { Fabricate(:intervention) }
end
