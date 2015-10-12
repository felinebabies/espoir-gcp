json.array!(@passengers) do |passenger|
  json.extract! passenger, :id, :name, :starCount, :money, :debt, :g_count, :c_count, :p_count, :location
  json.url passenger_url(passenger, format: :json)
end
