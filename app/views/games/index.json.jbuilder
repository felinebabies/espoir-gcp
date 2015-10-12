json.array!(@games) do |game|
  json.extract! game, :id, :startTime, :term, :status
  json.url game_url(game, format: :json)
end
