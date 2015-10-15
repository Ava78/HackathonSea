class Weather
  attr_accessor :location

  def initialize(location)
    @location = location

  end

  def currently
    ForecastIO.forecast(location.latitude, location.longitude).try(:currently).try(:icon)
  end

end