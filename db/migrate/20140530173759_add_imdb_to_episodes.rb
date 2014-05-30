class AddImdbToEpisodes < ActiveRecord::Migration
  
  def up
  	add_column :episodes, :imdb_link, :string
  	add_column :episodes, :imdb_rating, :string
  end

  def down
  	remove_column :episodes, :imdb_rating, :string
  	remove_column :episodes, :imdb_link, :string
  end

end
