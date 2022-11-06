class NrelService
  def self.conn
    Faraday.new(url: 'https://developer.nrel.gov/') do |faraday|
      faraday.params['api_key'] = ENV['nrel_key']
    end
  end

  def self.get_nearest(location)
    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?location=#{location}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
