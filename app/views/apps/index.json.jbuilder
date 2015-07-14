json.array!(@apps) do |app|
  json.extract! app, :id, :name, :description, :platform, :availableTo, :availableThrough, :icon
  json.url app_url(app, format: :json)
end
