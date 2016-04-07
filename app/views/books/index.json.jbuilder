json.array!(@books) do |book|
  json.extract! book, :id, :isbn, :title, :author, :available
  json.url book_url(book, format: :json)
end
