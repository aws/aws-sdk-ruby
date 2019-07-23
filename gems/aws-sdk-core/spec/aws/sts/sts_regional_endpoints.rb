require_relative '../../spec_helper'

module Aws
  module STS
    describe Client do

      describe ':sts_regional_endpoints' do

        it 'defaults to `legacy`' do
          client = Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect(client.config.sts_regional_endpoints).to eq('legacy')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.amazonaws.com')
        end

        it 'can be set `regional` in the constructor' do
          client = Client.new(
            stub_responses: true,
            sts_regional_endpoints: 'regional',
            region: 'us-west-2'
          )
          expect(client.config.sts_regional_endpoints).to eq('regional')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.us-west-2.amazonaws.com')
        end

        it 'can be set fron ENV' do
          ENV['AWS_STS_REGIONAL_ENDPOINTS'] = 'regional'
          client = Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect(client.config.sts_regional_endpoints).to eq('regional')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.us-west-2.amazonaws.com')
        end

        it 'can be set per operation' do
          client = Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect(client.config.sts_regional_endpoints).to eq('legacy')
          resp = client.get_caller_identity(sts_regional_endpoints: 'regional')
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.us-west-2.amazonaws.com')
        end

        it 'has no effect on fips endpoint' do
          client = Client.new(
            stub_responses: true,
            region: 'us-west-2-fips'
          )
          expect(client.config.sts_regional_endpoints).to eq('legacy')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts-fips.us-west-2.amazonaws.com')

          resp = client.get_caller_identity(sts_regional_endpoints: 'regional')
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts-fips.us-west-2.amazonaws.com')
        end

        it 'has no effect on aws-global even when `regional`' do
          client = Client.new(
            stub_responses: true,
            sts_regional_endpoints: 'regional',
            region: 'aws-global'
          )
          expect(client.config.sts_regional_endpoints).to eq('regional')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.amazonaws.com')
        end

        it 'has no effect on current regionalized regions' do
          client = Client.new(
            stub_responses: true,
            region: 'ap-east-1'
          )
          expect(client.config.sts_regional_endpoints).to eq('legacy')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.ap-east-1.amazonaws.com')

          client = Client.new(
            stub_responses: true,
            sts_regional_endpoints: 'regional',
            region: 'ap-east-1'
          )
          expect(client.config.sts_regional_endpoints).to eq('regional')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.ap-east-1.amazonaws.com')
        end

        it 'has no effect on cn-north-1 region' do
          client = Client.new(
            stub_responses: true,
            region: 'cn-north-1'
          )
          expect(client.config.sts_regional_endpoints).to eq('legacy')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.cn-north-1.amazonaws.com.cn')

          client = Client.new(
            stub_responses: true,
            sts_regional_endpoints: 'regional',
            region: 'cn-north-1'
          )
          expect(client.config.sts_regional_endpoints).to eq('regional')
          resp = client.get_caller_identity
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://sts.cn-north-1.amazonaws.com.cn')
        end
      end

    end
  end
end
