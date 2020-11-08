class CreateCalculadoras < ActiveRecord::Migration[6.0]
  def change
    create_table :calculadoras do |t|
      t.integer :peso
      t.float :altura
      t.integer :idade
      t.integer :meta
      t.string :sexo
      t.integer :tempo

      t.timestamps
    end
  end
end
