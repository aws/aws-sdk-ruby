require 'spec_helper'

module Aws
  module CognitoIdentity
    describe Client do

      let(:client) { Client.new(stub_responses: true, validate_params: false) }

      Plugins::RequestSigner::Handler::COGNITO_IDENTITY_UNSIGNED_REQUESTS.each do |operation_name|
        Seahorse::Util.underscore(operation_name).tap do |method_name|

          it "does not sign calls to #{method_name}" do
            resp = client.send(method_name, {})
            expect(resp.context.http_request.headers['Authorization']).to be(nil)
          end

        end
      end
    end
  end
end
