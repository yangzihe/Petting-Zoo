class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :species
      t.integer :energy

      t.timestamps null: false
    end
  end
end
