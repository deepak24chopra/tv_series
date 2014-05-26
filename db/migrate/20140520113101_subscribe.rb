class Subscribe < ActiveRecord::Migration
  
  def up
  	create_table :subscribe do |t|

  		t.string "name"
  		t.string "email"

  	end
  end

  def down
  	drop_table :subscribe
  end

end