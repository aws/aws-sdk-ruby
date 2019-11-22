require_relative '../spec_helper'

module Aws
  module S3
    describe Client do
      let(:options) { { stub_responses: true, region: 'us-west-2' } }

      let(:client) { Client.new(options) }

      let(:dualstack_client) do
        Client.new(options.merge(use_dualstack_endpoint: true))
      end

      describe ':use_dualstack_endpoint' do
        it 'defaults to false' do
          client = Client.new(options)
          expect(client.config.use_dualstack_endpoint).to be(false)
          resp = client.put_object(bucket: 'bucket-name', key: 'key')
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://bucket-name.s3.us-west-2.amazonaws.com/key'
          )
        end

        it 'can be set in the constructor' do
          client = Client.new(options.merge(use_dualstack_endpoint: true))
          expect(client.config.use_dualstack_endpoint).to be(true)
          resp = client.put_object(bucket: 'bucket-name', key: 'key')
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://bucket-name.s3.dualstack.us-west-2.amazonaws.com/key'
          )
        end

        it 'can be set on the operation' do
          expect(client.config.use_dualstack_endpoint).to be(false)
          resp = client.put_object(
            bucket: 'bucket-name', key: 'key', use_dualstack_endpoint: true
          )
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://bucket-name.s3.dualstack.us-west-2.amazonaws.com/key'
          )
        end

        it 'can be disabled by the operation' do
          resp = dualstack_client.put_object(
            bucket: 'bucket-name', key: 'key', use_dualstack_endpoint: false
          )
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://bucket-name.s3.us-west-2.amazonaws.com/key'
          )
        end

        it 'works for global operations' do
          resp = dualstack_client.list_buckets
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://s3.dualstack.us-west-2.amazonaws.com/'
          )
        end

        it 'works with HTTP endpoints' do
          client = Client.new(
            options.merge(
              use_dualstack_endpoint: true,
              endpoint: 'http://s3.us-west-2.amazonaws.com'
            )
          )
          resp = client.put_object(bucket: 'bucket-name', key: 'key')
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'http://bucket-name.s3.dualstack.us-west-2.amazonaws.com/key'
          )
        end

        it 'works with DNS incompatible buckets' do
          resp = dualstack_client.put_object(bucket: 'bucket.name', key: 'key')
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://s3.dualstack.us-west-2.amazonaws.com/bucket.name/key'
          )
        end

        it 'works with DNS incompatible buckets in HTTP scheme' do
          client = Client.new(
            options.merge(
              use_dualstack_endpoint: true,
              endpoint: 'http://s3.us-west-2.amazonaws.com'
            )
          )
          resp = client.put_object(bucket: 'bucket.name', key: 'key')
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'http://bucket.name.s3.dualstack.us-west-2.amazonaws.com/key'
          )
        end

        it 'works with :force_path_style' do
          client = Client.new(
            options.merge(
              use_dualstack_endpoint: true,
              force_path_style: true
            )
          )
          resp = client.put_object(bucket: 'bucket-name', key: 'key')
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://s3.dualstack.us-west-2.amazonaws.com/bucket-name/key'
          )
        end

        it 'uses the correct endpoint pattern for us-east-1' do
          client = Client.new(
            stub_responses: true,
            region: 'us-east-1',
            use_dualstack_endpoint: true
          )
          resp = client.put_object(bucket: 'bucket-name', key: 'key')
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://bucket-name.s3.dualstack.us-east-1.amazonaws.com/key'
          )
        end

        it 'works for different dns suffixes' do
          client = Client.new(
            stub_responses: true,
            region: 'cn-north-1',
            use_dualstack_endpoint: true
          )
          resp = client.put_object(bucket: 'bucket-name', key: 'key')
          expect(resp.context.http_request.endpoint.to_s).to eq(
            'https://bucket-name.s3.dualstack.cn-north-1.amazonaws.com.cn/key'
          )
        end
      end
    end
  end
end
