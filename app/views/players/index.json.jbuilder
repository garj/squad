json.array!(@players) do |player|
  json.extract! player, :id, :name, :image_url
  json.url player_url(player, format: :json)
end
