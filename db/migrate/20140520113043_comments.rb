class Comments < ActiveRecord::Migration
  
  def up
  create_table :comments do |t|

  	t.string "username"
  	t.integer "episode_id"
  	t.text "content"

  	end
  end

  def down
  	drop_table :comments
  end

end
