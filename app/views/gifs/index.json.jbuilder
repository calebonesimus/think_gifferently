json.array!(@gifs) do |gif|
  json.extract! gif, :id, :image_file, :user_id, :summary, :title
  json.url gif_url(gif, format: :json)
end
