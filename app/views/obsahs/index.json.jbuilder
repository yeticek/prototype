json.array!(@obsahs) do |obsah|
  json.extract! obsah, :id, :pouzivatel, :priradene_profesie, :priradene_obory, :nazov_obsahu, :vzdelavaci_obsah
  json.url obsah_url(obsah, format: :json)
end
