class NasaApi < ApplicationRecord
  def self.get_api_info
    nasa_api_url = "https://api.nasa.gov/planetary/apod?api_key=#{ENV['NASA_API_KEY']}"
    request_to_nasa = Net::HTTP.get(URI(nasa_api_url))
    JSON.parse(request_to_nasa)
  end
end
