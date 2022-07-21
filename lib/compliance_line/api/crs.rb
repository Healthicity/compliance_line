# frozen_string_literal: true

module ComplianceLine
  module Api
    class Crs < Base
      def save_resolution(attributes)
        customerID = attributes.delete(:customerID)
        crsId = attributes.delete(:CRSID)
        perform_post("v1/customer/#{customerID}/issues/#{crsId}/resolution", attributes)
      end

      private

        def request_headers(options)
          {
            "Content-Type" => "application/json",
            "Authorization" => "Bearer #{cl_options[:access_token]}"
          }
        end
    end
  end
end
