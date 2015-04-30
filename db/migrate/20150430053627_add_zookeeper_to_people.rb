class AddZookeeperToPeople < ActiveRecord::Migration
  def change
    add_column :people, :zookeeper, :boolean
  end
end
