require_relative '../spec_helper'

module Aws
  module S3Control
    describe Client do
      context 'success cases' do
        it 'applies the account id to the custom endpoint' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false,
            endpoint: 'https://beta.example.com'
          )
          name = 'apname'
          expect_auth({ 'signingName' => 's3' })
          resp = client.get_access_point(name: name, account_id: '123456789012')
          host = '123456789012.beta.example.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
        end

        it 'works with outpost access point ARNs' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false,
            endpoint: 'https://beta.example.com'
          )
          name = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect_auth({ 'signingName' => 's3-outposts' })
          resp = client.get_access_point(name: name)
          host = 'beta.example.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
        end

        it 'works with normal bucket names' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false,
            endpoint: 'https://beta.example.com'
          )
          bucket = 'bucketname'
          expect_auth({ 'signingName' => 's3-outposts' })
          resp = client.create_bucket(bucket: bucket, outpost_id: 'op-123')
          host = 'beta.example.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
        end

        it 'works with outpost bucket ARNs' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false,
            endpoint: 'https://beta.example.com'
          )
          bucket = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket'
          expect_auth({ 'signingName' => 's3-outposts' })
          resp = client.get_bucket(bucket: bucket)
          host = 'beta.example.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
        end
      end

      context 'failure cases' do
        it 'raises when a custom endpoint is used with dualstack' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            use_dualstack_endpoint: true,
            s3_use_arn_region: false,
            endpoint: 'https://beta.example.com'
          )
          name = 'apname'
          expect do
            client.get_access_point(name: name, account_id: '123456789012')
          end.to raise_error(ArgumentError)
        end

        it 'raises when outpost access point ARN is used with dualstack' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            use_dualstack_endpoint: true,
            s3_use_arn_region: false,
            endpoint: 'https://beta.example.com'
          )
          name = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect do
            client.get_access_point(name: name)
          end.to raise_error(ArgumentError)
        end

        it 'raises when an outpost id is used with dualstack' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            use_dualstack_endpoint: true,
            s3_use_arn_region: false,
            endpoint: 'https://beta.example.com'
          )
          bucket = 'bucketname'
          expect do
            client.create_bucket(bucket: bucket, outpost_id: 'op-123')
          end.to raise_error(ArgumentError)
        end

        it 'raises when outpost bucket ARN is used with dualstack' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            use_dualstack_endpoint: true,
            s3_use_arn_region: false,
            endpoint: 'https://beta.example.com'
          )
          bucket = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket'
          expect do
            client.get_bucket(bucket: bucket)
          end.to raise_error(ArgumentError)
        end
      end
    end
  end
end
