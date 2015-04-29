class AddPersonToInteractions < ActiveRecord::Migration
  def change
    add_reference :interactions, :person, index: true
    add_foreign_key :interactions, :people
  end
end
