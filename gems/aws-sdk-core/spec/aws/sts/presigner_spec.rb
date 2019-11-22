require_relative '../../spec_helper'

module Aws
  module STS
    describe Presigner do
      before(:each) do
        allow(Time).to receive(:now).and_return(now)
        allow(now).to receive(:utc).and_return(utc)
        allow(utc).to receive(:strftime).and_return(datetime)
      end

      let(:now) { double('now') }
      let(:utc) { double('utc-time') }
      let(:datetime) { '20160101T112233Z' }
      let(:credentials) { Credentials.new('akid', 'secret') }
      let(:region) { 'us-west-2' }

      describe '#presigned_url' do
        it 'can presign #get_caller_identity correctly' do
          expected_url = 'https://sts.amazonaws.com/?'\
            'Action=GetCallerIdentity&Version=2011-06-15&'\
            'X-Amz-Algorithm=AWS4-HMAC-SHA256&'\
            'X-Amz-Credential=akid%2F20160101%2F'\
            'us-west-2%2Fsts%2Faws4_request&'\
            'X-Amz-Date=20160101T112233Z&X-Amz-Expires=60&'\
            'X-Amz-SignedHeaders=host%3Bx-k8s-aws-id&'\
            'X-Amz-Signature=b81c2e9bf689d104cd5c04fbdfea0fb7'\
            '731be75f988c75e83dbf785988d227d2'

          client = Aws::STS::Client.new(
            region: region, credentials: credentials
          )

          pre = Presigner.new(client: client)
          params = {
            headers: { 'X-K8s-Aws-Id' => 'my-eks-cluster' }
          }

          actual_url = pre.get_caller_identity_presigned_url(params)
          expect(actual_url).to eq(expected_url)
        end
      end
    end
  end
end
