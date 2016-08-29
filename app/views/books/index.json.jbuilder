json.array!(@books) do |book|
  json.extract! book, :id, :title, :judul
  json.url book_url(book, format: :json)
end
