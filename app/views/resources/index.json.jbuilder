json.array!(@resources) do |resource|
  json.extract! resource, :id, :title, :language, :type, :link, :completed
  json.url resource_url(resource, format: :json)
end
