json.array!(@odbors) do |odbor|
  json.extract! odbor, :id, :cislo, :nazov
  json.url odbor_url(odbor, format: :json)
end
