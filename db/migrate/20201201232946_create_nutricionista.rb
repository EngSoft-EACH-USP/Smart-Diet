class CreateNutricionista < ActiveRecord::Migration[6.0]
  def change
    create_table :nutricionista do |t|
      t.text :nome
      t.integer :crn
      t.text :email
      t.integer :exp

      t.timestamps
    end
  end
end
