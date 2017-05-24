json.array!(@serials) do |serial|
  json.extract! serial, :id, :image_url, :name, :content
  json.url serial_url(serial, format: :json)
end
