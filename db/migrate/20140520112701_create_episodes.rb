class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.integer :season_id
      t.string :video_url
      t.string :torrent_url
      t.string :subtitle_url
      t.string :image_url
      t.integer :episode_number
      t.string :name
      t.string :description
      t.text :storyline
      t.integer :likes
      t.datetime :air_date

      t.timestamps
    end
  end
end
