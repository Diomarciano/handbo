json.array!(@categories) do |category|
  json.extract! category, :id, :category_id, :image, :parent_id, :status, :date_added, :date_modified
  json.url category_url(category, format: :json)
end
