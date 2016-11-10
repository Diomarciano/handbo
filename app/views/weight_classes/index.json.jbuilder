json.array!(@weight_classes) do |weight_class|
  json.extract! weight_class, :id, :weight_class_id, :value
  json.url weight_class_url(weight_class, format: :json)
end
