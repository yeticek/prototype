json.array!(@profesia) do |profesium|
  json.extract! profesium, :id, :profesia_cislo, :nazov_profesie
  json.url profesium_url(profesium, format: :json)
end
