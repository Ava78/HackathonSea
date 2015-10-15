require File.expand_path('../boot', __FILE__)

require 'rails/all'
#require 'forecast_io'
#require 'open_weather'

# get current weather by city name
#OpenWeather::Current.city("Cochin, IN")

# get current weather by city id
#OpenWeather::Current.city_id("1273874")

# get current weather by geocode. (lat, lon)
#OpenWeather::Current.geocode(9.94, 76.26)

# get current weather for a list of city ids
#OpenWeather::Current.cities([524901, 703448, 2643743])

# get current weather for a bounding box
#OpenWeather::Current.rectangle_zone(12, 32, 15, 37, 10)

# get current weather for cities around a point
#OpenWeather::Current.circle_zone(55.5, 37.5, 10)

# get the current weather in degrees celsius
#OpenWeather::Current.city("Cochin, IN", units: 'metric')

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Test1
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
  end
end
