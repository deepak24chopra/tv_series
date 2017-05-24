class AddVisibilityToEpisodes < ActiveRecord::Migration
  
  def up
  	add_column :episodes, :visibility, :boolean
  end

  def down
  	remove_column :episodes, :visibility
  end

end
