require 'spec_helper'

module Aws
  module CognitoIdentityProvider
    describe Client do

      let(:client) { Client.new(stub_responses: true) }

      it "does not sign calls to forgot_password" do
        resp = client.forgot_password(client_id:'id', username:'username')
        expect(resp.context.http_request.headers['Authorization']).to be(nil)
      end

    end
  end
end
