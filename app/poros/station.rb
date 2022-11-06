class Station
  attr_reader :name,
              :address,
              :fuel_type,
              :access_times,
              :country,
              :state,
              :city,
              :street_address,
              :zip_code

  def initialize(data)
    @name = data[:station_name]
    @country = data[:country]
    @state = data[:state]
    @city = data[:city]
    @street_address = data[:street_address]
    @zip_code = data[:zip]
    @fuel_type = data[:fuel_type_code]
    @access_times = data[:access_days_time]
  end

  def address
    "#{street_address}, #{city}, #{state} #{zip_code}"
  end
end