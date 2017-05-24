json.array!(@episodes) do |episode|
  json.extract! episode, :id, :season_id, :video_url, :torrent_url, :subtitle_url, :image_url, :name, :description, :storyline, :air_date
  json.url episode_url(episode, format: :json)
end
