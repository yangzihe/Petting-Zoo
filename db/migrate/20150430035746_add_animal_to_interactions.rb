class AddAnimalToInteractions < ActiveRecord::Migration
  def change
    add_column :interactions, :animal, :string
  end
end
