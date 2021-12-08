# frozen_string_literal: true

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

        it 'raise an error when invalid option provided' do
          ENV['AWS_S3_US_EAST_1_REGIONAL_ENDPOINT'] = 'foo'
          expect do
            Client.new(
              stub_responses: true,
              region: 'us-east-1'
            )
          end.to raise_error(ArgumentError)
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

        it 'can be set through defaults mode' do
          allow_any_instance_of(Aws::ConfigurationDefaults::DefaultsModeConfigResolver)
            .to receive(:resolve).with(:s3_us_east_1_regional_endpoint).and_return('regional')
          client = Client.new(
            stub_responses: true,
            region: 'us-west-2',
            retry_mode: 'standard',
            defaults_mode: 'standard'
          )
          expect(client.config.s3_us_east_1_regional_endpoint).to eq('regional')
        end

        it 'is case insensitive' do
          ENV['AWS_S3_US_EAST_1_REGIONAL_ENDPOINT'] = 'LEGACY'
          client = Client.new(
            stub_responses: true,
            region: 'us-east-1'
          )
          expect(client.config.s3_us_east_1_regional_endpoint).to eq('legacy')
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

        it 'does not modify custom endpoints' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-east-1',
            endpoint: 'https://my-endpoint.us-east-1.amazonaws.com'
          )
          bucket = 'bucketname'
          resp = client.list_objects(bucket: bucket)
          expect(resp.context.http_request.endpoint.to_s).to match(/us-east-1/)
        end

        it 'does not modify any ARNs' do
          client = Client.new(
            stub_responses: true,
            region: 'us-east-1'
          )
          arn = 'arn:aws:s3:us-east-1:123456789012:accesspoint:myendpoint'
          resp = client.list_objects(bucket: arn)
          expect(resp.context.http_request.endpoint.to_s).to match(/us-east-1/)
        end

      end

    end
  end
end
