json.array!(@products) do |product|
  json.extract! product, :id, :item, :subitem, :image, :from, :until, :price, :description, :stadt
  json.url product_url(product, format: :json)
end
