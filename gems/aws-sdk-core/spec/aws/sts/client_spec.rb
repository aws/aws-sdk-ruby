require_relative '../../spec_helper'

module Aws
  module STS
    describe Client do
      it 'constructs the proper endpoint in gov-cloud' do
        client = Client.new(region: 'us-gov-west-1', credentials: Credentials.new('akid', 'secret'))
        expect(client.config.endpoint.to_s).to eq('https://sts.us-gov-west-1.amazonaws.com')
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

      describe 'get_caller_identity_presigned_url' do
        let(:client) do
          Client.new(
            region: 'us-west-2',
            credentials: Credentials.new('akid', 'secret'),
            stub_responses: true
          )
        end

        it 'gets a presigned_url' do
          now = Time.mktime(2018, 8, 6)
          allow(Time).to receive(:now).and_return(now)

          resp = client.get_caller_identity_presigned_url(
            headers: { 'X-K8s-Aws-Id' => 'my-eks-cluster' }
          )
          expect(resp).to eq('https://sts.amazonaws.com/?Action=GetCallerIdentity&Version=2011-06-15&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=akid%2F20180806%2Fus-west-2%2Fsts%2Faws4_request&X-Amz-Date=20180806T040000Z&X-Amz-Expires=60&X-Amz-SignedHeaders=host%3Bx-k8s-aws-id&X-Amz-Signature=6b79fa6f572514cda41b91d6d4eae9d8ea0f04a271c29d80925b9177f2575274')
        end
      end
    end
  end
end
