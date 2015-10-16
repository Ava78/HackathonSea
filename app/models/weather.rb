class Weather
  attr_accessor :location

  def initialize(location)
    @location = location

  end

  def currently
    ForecastIO.forecast(location.latitude, location.longitude, location.temperature).try(:currently).try(:icon)
  end

end