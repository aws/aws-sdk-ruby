require_relative '../spec_helper'

module Aws
  module S3
    describe Client do
      
      describe ':s3_us_east_1_regional_endpoint' do

        it 'defaults to `legacy`' do
          client = Client.new(stub_responses: true, region: 'us-east-1')
          expect(client.config.s3_us_east_1_regional_endpoint).to eq('legacy')
          resp = client.list_buckets
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://s3.amazonaws.com/')
        end

        it 'can be set to `regional` in the constructor' do
          client = Client.new(
            stub_responses: true,
            region: 'us-east-1',
            s3_us_east_1_regional_endpoint: 'regional'
          )
          expect(client.config.s3_us_east_1_regional_endpoint).to eq('regional')
          resp = client.list_buckets
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://s3.us-east-1.amazonaws.com/')
        end

        it 'can be set from ENV' do
          ENV['AWS_S3_US_EAST_1_REGIONAL_ENDPOINT'] = 'regional'
          client = Client.new(
            stub_responses: true,
            region: 'us-east-1'
          )
          expect(client.config.s3_us_east_1_regional_endpoint).to eq('regional')
          resp = client.list_buckets
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://s3.us-east-1.amazonaws.com/')
        end

        it 'uses client option before ENV' do
          ENV['AWS_S3_US_EAST_1_REGIONAL_ENDPOINT'] = 'legacy'
          client = Client.new(
            stub_responses: true,
            region: 'us-east-1',
            s3_us_east_1_regional_endpoint: 'regional'
          )
          expect(client.config.s3_us_east_1_regional_endpoint).to eq('regional')
          resp = client.list_buckets
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://s3.us-east-1.amazonaws.com/')
        end

        it 'has no effect on non-IAD regions' do
          client = Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_us_east_1_regional_endpoint: 'legacy'
          )
          resp = client.list_buckets
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://s3.us-west-2.amazonaws.com/')

          client = Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_us_east_1_regional_endpoint: 'regional'
          )
          resp = client.list_buckets
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://s3.us-west-2.amazonaws.com/')
        end

        it 'has no effect on dualstack configuration' do
          client = Client.new(
            stub_responses: true,
            region: 'us-east-1',
            use_dualstack_endpoint: true
          )
          resp = client.put_object(bucket: 'bucket-name', key: 'foo')
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://bucket-name.s3.dualstack.amazonaws.com/foo')
        end

        it 'works with dualstack when regional enabled' do
          client = Client.new(
            stub_responses: true,
            region: 'us-east-1',
            s3_us_east_1_regional_endpoint: 'regional',
            use_dualstack_endpoint: true
          )
          resp = client.put_object(bucket: 'bucket-name', key: 'foo')
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://bucket-name.s3.dualstack.us-east-1.amazonaws.com/foo')
        end

      end

    end
  end
end
