json.array!(@pouzivatels) do |pouzivatel|
  json.extract! pouzivatel, :id, :nick, :heslo
  json.url pouzivatel_url(pouzivatel, format: :json)
end
