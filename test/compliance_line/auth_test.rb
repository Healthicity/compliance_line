# frozen_string_literal: true

require "test_helper"

class ComplianceLine::Api::AuthTest < Test::Unit::TestCase
  def test_get_oauth_token
    stub = stub_request(:post, "http://example.com/webservice/partner/token").
      with(body: { "grant_type": "client_credentials", "client_Secret": "TEST_SECRET", "client_ID": "TEST_ID" }).
          to_return(status: 200, headers: { 'Content-Type': "application/json" }, body: { Token: "abc" }.to_json)

    ComplianceLine::Api::Auth.new.get_token
    remove_request_stub(stub)
  end
end
