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

        let(:now) { double('now') }
        let(:utc) { double('utc-time') }
        let(:datetime) { '20180805T000000Z' }

        before (:each) do
          allow(Time).to receive(:now).and_return(now)
          allow(now).to receive(:utc).and_return(utc)
          allow(utc).to receive(:strftime).and_return(datetime)
        end

        it 'gets a presigned_url' do
          client = Aws::STS::Client.new(region: 'us-west-2', credentials: Credentials.new('akid', 'secret'))

          resp = client.get_caller_identity_presigned_url(
            headers: { 'X-K8s-Aws-Id' => 'my-eks-cluster' },
            expires_in: 59
          )

          expect(resp).to eq('https://sts.amazonaws.com/?Action=GetCallerIdentity&Version=2011-06-15&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=akid%2F20180805%2Fus-west-2%2Fsts%2Faws4_request&X-Amz-Date=20180805T000000Z&X-Amz-Expires=59&X-Amz-SignedHeaders=host%3Bx-k8s-aws-id&X-Amz-Signature=d1f6551aafc0f5c57971fe161a12cbe0539fc1681698ea4a4c0fde5abc51e32e')
        end
      end
    end
  end
end
