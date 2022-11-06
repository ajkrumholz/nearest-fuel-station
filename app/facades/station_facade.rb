class StationFacade
  def self.get_nearest(location)
    station_data = NrelService.get_nearest(location)
    nearest_station_hash = station_data[:fuel_stations].first
    Station.new(nearest_station_hash)
  end
end