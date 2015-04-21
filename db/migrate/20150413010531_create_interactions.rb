class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.string :action
      t.string :animal

      t.timestamps null: false
    end
  end
end
