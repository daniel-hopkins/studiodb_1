class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
			create_table "jobs", :id => false, :force => true do |t|
	    t.integer "id",                                                  :null => false
	    t.string  "name",          :limit => 100, :default => "",        :null => false
	    t.string  "date",          :limit => 50,  :default => "",        :null => false
	    t.integer "client_id",                    :default => 0,         :null => false
	    t.text    "notes"
	    t.string  "folder",        :limit => 100, :default => "folder/", :null => false
	    t.integer "invoiced",                     :default => 0
	    t.string  "invoiceNumber", :limit => 15
	    t.string  "tifHD",         :limit => 15,  :default => "",        :null => false
	    t.string  "rawHD",         :limit => 15,  :default => "",        :null => false
	    t.string  "extras",        :limit => 250
	    t.boolean "oldJob",                       :default => false,     :null => false
	    t.boolean "public",                       :default => false,     :null => false
	    t.date    "created_at"
	    t.date    "updated_at"
	  end

  		add_index "jobs", ["id"], :name => "id", :unique => true
      t.timestamps
    end
  end
end
