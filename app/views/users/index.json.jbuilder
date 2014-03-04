json.array!(@users) do |user|
  json.extract! user, :id, :pseudo, :name, :prenom, :email, :sexe, :age, :ville, :departement, :pays
  json.url user_url(user, format: :json)
end
