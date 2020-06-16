require_relative 'spec_helper'

module Aws
  module CognitoIdentityProvider
    describe Client do
      %w(
        initiate_auth
        respond_to_auth_challenge
      ).each do |method_name|
        it "does not sign calls to #{method_name}" do
          client = Client.new(stub_responses: true, validate_params: false)
          resp = client.send(method_name, {})
          expect(resp.context.http_request.headers['Authorization']).to be(nil)
        end
      end
    end
  end
end
