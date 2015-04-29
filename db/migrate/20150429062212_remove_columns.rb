class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :interactions, :animal
  end
end
