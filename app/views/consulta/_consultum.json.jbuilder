json.extract! consultum, :id, :nome, :sexo, :idade, :email, :profissional, :descricao, :created_at, :updated_at
json.url consultum_url(consultum, format: :json)
