$:.unshift File.dirname(__FILE__)

models = File.join(File.dirname(__FILE__), '..', 'models', '*.rb')
Dir[models].each {|file| require file }

require 'general_api'
require 'locations_api'
require 'monkey'
require 'swagger'
require 'users_api'
require 'concessions_api'

Swagger.configure do |config|
    config.format = 'json'
    config.scheme = 'https'
    config.host = 'api.subtledata.com'
    config.base_path = '/v1'
    config.inject_format = false
end

module SubtleData
    module Standard
        Locations = ::Locations_api
        Users = ::Users_api
        General = ::General_api
    end
end

