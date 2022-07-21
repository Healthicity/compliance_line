require 'http_api'
module ComplianceLine
  module Api
    class Base
      include HttpApi::Request
      attr_accessor :cl_options

      def initialize(cl_options = {})
        @cl_options = cl_options
      end

      def url
        ComplianceLine::Api.config.api_url
      end

      private

      def http_client
        HTTP.timeout(:per_operation, :write => 60, :connect => 60, :read => 60)
      end

    end
  end
end