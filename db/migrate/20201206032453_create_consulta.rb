class CreateConsulta < ActiveRecord::Migration[6.0]
  def change
    create_table :consulta do |t|
      t.string :nome
      t.string :sexo
      t.integer :idade
      t.string :email
      t.string :profissional
      t.text :descricao

      t.timestamps
    end
  end
end
