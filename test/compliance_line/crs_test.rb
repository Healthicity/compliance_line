# frozen_string_literal: true

require "test_helper"

class ComplianceLine::Api::CrsTest < Test::Unit::TestCase
  def test_save_resolution
    stub = stub_request(:post, "http://example.com/webservice/partner/v1/customer/HCC/issues/1/resolution").
            to_return(status: 200, headers: { 'Content-Type': "application/json" }, body: {}.to_json)

    ComplianceLine::Api::Crs.new(access_token: "abc").save_resolution(customerID: "HCC", CRSID: "1")
    remove_request_stub(stub)
  end
end
