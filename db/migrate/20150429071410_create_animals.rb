class CreateAnimals < ActiveRecord::Migration
  def change

    create_table :animals do |t|
      t.string :species
      t.integer :energy
      t.references :pens, index: true

      t.timestamps null: false
    end
    add_foreign_key :animals, :pens
  end
end
