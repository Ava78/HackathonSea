class Location < ActiveRecord::Base
  geocoded_by :address  # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
  
def temp
  json = ForecastIO.forecast(latitude, longitude)
  json.currently.temperature
end

end
