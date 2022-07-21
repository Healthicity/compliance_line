# frozen_string_literal: true

module ComplianceLine
  module Api
    class Auth < Base
      def get_token
        request_body = {
                          grant_type:    "client_credentials",
                          client_ID:      ComplianceLine::Api.config.client_id,
                          client_Secret:  ComplianceLine::Api.config.client_secret,
                        }

        perform_post("token", request_body)
      end

      private

        def request_headers(options)
          {
            "Content-Type" => "application/json",
          }
        end
    end
  end
end
