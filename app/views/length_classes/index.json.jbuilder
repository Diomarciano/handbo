json.array!(@length_classes) do |length_class|
  json.extract! length_class, :id, :length_class_id, :value
  json.url length_class_url(length_class, format: :json)
end
