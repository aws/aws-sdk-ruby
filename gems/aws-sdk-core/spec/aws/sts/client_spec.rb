require_relative '../../spec_helper'

module Aws
  module STS
    describe Client do
      it 'constructs the proper endpoint in gov-cloud' do
        client = Client.new(
          region: 'us-gov-west-1',
          credentials: Credentials.new('akid', 'secret')
        )
        expect(client.config.endpoint.to_s)
          .to eq('https://sts.us-gov-west-1.amazonaws.com')
      end

      it 'makes assume_role_with_* calls without authentication' do
        client = Aws::STS::Client.new(region: 'us-east-1', credentials: nil)
        client.handle(step: :send) do |context|
          Seahorse::Client::Response.new(context: context)
        end
        resp = client.assume_role_with_web_identity(
          role_arn: 'role-arn',
          role_session_name: 'role-session-name',
          web_identity_token: 'token'
        )
        expect(resp.context.http_request.headers['authorization']).to be(nil)
        resp = client.assume_role_with_saml(
          role_arn: 'role-arn',
          principal_arn: 'principal-arn',
          saml_assertion: 'saml-assertion'
        )
        expect(resp.context.http_request.headers['authorization']).to be(nil)
      end
    end
  end
end
