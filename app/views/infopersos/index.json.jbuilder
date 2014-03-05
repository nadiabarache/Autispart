json.array!(@infopersos) do |infoperso|
  json.extract! infoperso, :id, :pseudo, :age, :sexe, :ville, :departement, :pays
  json.url infoperso_url(infoperso, format: :json)
end
