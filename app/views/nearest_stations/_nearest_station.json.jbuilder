json.extract! nearest_station, :id, :route_name, :station_name, :time, :created_at, :updated_at
json.url nearest_station_url(nearest_station, format: :json)
