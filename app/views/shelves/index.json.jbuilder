json.array!(@shelves) do |shelf|
  json.extract! shelf, :id, :code, :capacity, :location
  json.url shelf_url(shelf, format: :json)
end
