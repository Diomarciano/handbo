json.array!(@products) do |product|
  json.extract! product, :id, :product_id, :sku, :quantity, :image, :price, :shipping, :weight, :weight_class_id, :length, :width, :height, :length_class_id, :status, :viewed
  json.url product_url(product, format: :json)
end
