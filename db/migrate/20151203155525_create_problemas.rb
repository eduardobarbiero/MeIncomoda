class CreateProblemas < ActiveRecord::Migration
  def change
    create_table :problemas do |t|
      t.string :titulo
      t.string :descricao
      t.string :classificacao
      t.string :endereco
      t.string :imagem
      t.string :lat
      t.string :long
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
