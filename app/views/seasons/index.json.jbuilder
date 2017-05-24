json.array!(@seasons) do |season|
  json.extract! season, :id, :serial_id, :image_url, :description, :story
  json.url season_url(season, format: :json)
end
