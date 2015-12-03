json.array!(@problemas) do |problema|
  json.titulo problema.titulo
  json.descricao problema.descricao
  json.classificacao problema.classificacao
  json.endereco problema.endereco
  json.imagem problema.imagem
  json.position do
    json.lat problema.lat
    json.long problema.long
  end
  #json.extract! problema, :titulo, :descricao, :classificacao, :endereco, :imagem, position: [:lat, :long],
  #json.url problema_url(problema, format: :json)
end

