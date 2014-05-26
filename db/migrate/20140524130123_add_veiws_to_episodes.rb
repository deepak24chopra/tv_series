class AddVeiwsToEpisodes < ActiveRecord::Migration
 
  def up
  	add_column :episodes, :veiws, :integer
  end

  def down
  	remove_column :episodes, :veiws
  end

end
