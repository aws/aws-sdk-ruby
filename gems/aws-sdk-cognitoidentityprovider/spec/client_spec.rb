require_relative 'spec_helper'

module Aws
  module CognitoIdentityProvider
    describe Client do

      it "does not sign calls to forgot_password" do
        client = Client.new(stub_responses: true)
        resp = client.forgot_password(client_id:'id', username:'username')
        expect(resp.context.http_request.headers['Authorization']).to be(nil)
      end

      it "does not sign calls to initiate_auth" do
        client = Client.new(stub_responses: true)
        resp = client.initiate_auth(
          client_id:'id',
          auth_flow: 'USER_PASSWORD_AUTH',
          auth_parameters: {}
        )
        expect(resp.context.http_request.headers['Authorization']).to be(nil)
      end

    end
  end
end
