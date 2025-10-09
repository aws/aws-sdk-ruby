# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module STS
    describe Presigner do
      let(:options) { { stub_responses: true, region: 'us-west-2' } }
      let(:client) { Client.new(options) }
      let(:presigner) { Presigner.new(client: client) }
      let(:headers) { { 'X-K8s-Aws-Id' => 'my-eks-cluster' } }

      describe '#get_caller_identity' do
        it 'returns a presigned url' do
          url = presigner.get_caller_identity(headers: headers)
          expect(url).to start_with('https://sts.us-west-2.amazonaws.com/?')
          expect(url).to include('Action=GetCallerIdentity')
          expect(url).to include('Version=2011-06-15')
          expect(url).to include('X-Amz-Algorithm=AWS4-HMAC-SHA256')
          expect(url).to include('X-Amz-Credential=stubbed-access-key-id')
          expect(url).to include('X-Amz-Date=')
          expect(url).to include('X-Amz-Expires=900')
          expect(url).to include('X-Amz-SignedHeaders=host%3Bx-k8s-aws-id')
          expect(url).to include('X-Amz-Signature=')
        end

        it 'can presign with the legacy global sts endpoint' do
          options[:sts_regional_endpoints] = 'legacy'
          url = presigner.get_caller_identity(headers: headers)
          expect(url).to start_with('https://sts.amazonaws.com/?')
        end

        it 'can presign with the fips endpoint' do
          options[:use_fips_endpoint] = true
          url = presigner.get_caller_identity(headers: headers)
          expect(url).to start_with('https://sts-fips.us-west-2.amazonaws.com/?')
        end

        it 'can presign with the dualstack endpoint' do
          options[:use_dualstack_endpoint] = true
          url = presigner.get_caller_identity(headers: headers)
          expect(url).to start_with('https://sts.us-west-2.api.aws/?')
        end
      end
    end
  end
end
