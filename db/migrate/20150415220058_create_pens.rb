class CreatePens < ActiveRecord::Migration
  def change
    create_table :pens do |t|
      t.string :name
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
