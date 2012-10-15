class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
    	t.string "name", :limit => 35, :default => "", :null => false
      t.timestamps
    end
  end
end
