
models = File.join(File.dirname(__FILE__), '..', 'models', '*.rb')
Dir[models].each {|file| require file }

require_relative './general_api.rb'
require_relative './locations_api.rb'
require_relative './monkey.rb'
require_relative './swagger.rb'
require_relative './users_api.rb'
require_relative './concessions_api.rb'

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

