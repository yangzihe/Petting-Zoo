class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :interactions, :action, :act
  end
end
