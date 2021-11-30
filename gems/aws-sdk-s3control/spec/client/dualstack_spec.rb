# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module S3Control
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
          resp = client.get_bucket(bucket: 'bucket-name', account_id: '12345')
          expect(resp.context.http_request.endpoint.to_s).to match(
            'https://12345.s3-control.us-west-2.amazonaws.com'
          )
        end

        it 'can be set in the constructor' do
          client = Client.new(options.merge(use_dualstack_endpoint: true))
          expect(client.config.use_dualstack_endpoint).to be(true)
          resp = client.get_bucket(bucket: 'bucket-name', account_id: '12345')
          expect(resp.context.http_request.endpoint.to_s).to match(
            'https://12345.s3-control.dualstack.us-west-2.amazonaws.com'
          )
        end

        it 'can be set on the operation' do
          expect(client.config.use_dualstack_endpoint).to be(false)
          resp = client.get_bucket(
            bucket: 'bucket-name', account_id: '12345', use_dualstack_endpoint: true
          )
          expect(resp.context.http_request.endpoint.to_s).to match(
            'https://12345.s3-control.dualstack.us-west-2.amazonaws.com'
          )
        end

        it 'can be disabled by the operation' do
          resp = dualstack_client.get_bucket(
            bucket: 'bucket-name', account_id: '12345', use_dualstack_endpoint: false
          )
          expect(resp.context.http_request.endpoint.to_s).to match(
            'https://12345.s3-control.us-west-2.amazonaws.com'
          )
        end

        it 'works for global operations' do
          resp = dualstack_client.list_regional_buckets(account_id: '12345')
          expect(resp.context.http_request.endpoint.to_s).to match(
            'https://12345.s3-control.dualstack.us-west-2.amazonaws.com'
          )
        end

        it 'works with DNS incompatible buckets' do
          resp = dualstack_client.get_bucket(bucket: 'bucket.name', account_id: '12345')
          expect(resp.context.http_request.endpoint.to_s).to match(
            'https://12345.s3-control.dualstack.us-west-2.amazonaws.com'
          )
        end

        it 'uses the correct endpoint pattern for us-east-1' do
          client = Client.new(
            stub_responses: true,
            region: 'us-east-1',
            use_dualstack_endpoint: true
          )
          resp = client.get_bucket(bucket: 'bucket-name', account_id: '12345')
          expect(resp.context.http_request.endpoint.to_s).to match(
            'https://12345.s3-control.dualstack.us-east-1.amazonaws.com'
          )
        end

        it 'works for different dns suffixes' do
          client = Client.new(
            stub_responses: true,
            region: 'cn-north-1',
            use_dualstack_endpoint: true
          )
          resp = client.get_bucket(bucket: 'bucket-name', account_id: '12345')
          expect(resp.context.http_request.endpoint.to_s).to match(
            "https://12345.s3-control.dualstack.cn-north-1.amazonaws.com.cn"
          )
        end

        it 'works with operations that use a path' do
          # from a prior bug
          client = Client.new(
            stub_responses: true,
            region: 'us-east-1',
            use_dualstack_endpoint: true
          )
          resp = client.get_access_point(name: 'accesspoint', account_id: '12345')
          expect(resp.context.http_request.endpoint.to_s).to match(
            'https://12345.s3-control.dualstack.us-east-1.amazonaws.com/v20180820/accesspoint/accesspoint'
          )
        end
      end
    end
  end
end
