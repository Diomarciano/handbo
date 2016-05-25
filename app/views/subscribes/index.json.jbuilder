json.array!(@subscribes) do |subscribe|
  json.extract! subscribe, :id, :email
  json.url subscribe_url(subscribe, format: :json)
end
