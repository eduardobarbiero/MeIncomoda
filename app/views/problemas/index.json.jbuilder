json.array!(@problemas) do |problema|
  json.extract! problema, :id, :titulo, :descricao, :classificacao, :endereco, :imagem, :lat, :long, :user_id
  json.url problema_url(problema, format: :json)
end
