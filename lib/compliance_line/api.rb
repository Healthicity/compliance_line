require 'active_support'

module ComplianceLine

  module Api
    include ActiveSupport::Configurable
    config_accessor :api_url
    config_accessor :api_key
    config_accessor :api_secret

    RequestError = Class.new(StandardError)
    ParameterMissing = Class.new(StandardError)
    ForbiddenError = Class.new(StandardError)

    configure do |config|
      config.api_url = 'http://example.com/webservice/partner'
      config.client_id = 'TEST_ID'
      config.client_secret = 'TEST_SECRET'
    end
  end  
end



