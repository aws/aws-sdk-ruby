require_relative '../spec_helper'

module Aws
  module S3
    describe Client do
      context 'success cases' do
        it 'applies the bucket to the custom endpoint' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false,
            endpoint: 'https://beta.example.com'
          )
          bucket = 'bucketname'
          expect_auth({ 'signingName' => 's3' })
          resp = client.list_objects(bucket: bucket)
          host = 'bucketname.beta.example.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
        end

        it 'works with access point ARNs' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false,
            endpoint: 'https://beta.example.com'
          )
          bucket = 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint'
          expect_auth({ 'signingName' => 's3' })
          resp = client.list_objects(bucket: bucket)
          host = 'myendpoint-123456789012.beta.example.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
        end

        it 'works with outpost access point ARNs' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false,
            endpoint: 'https://beta.example.com'
          )
          bucket = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect_auth({ 'signingName' => 's3-outposts' })
          resp = client.list_objects(bucket: bucket)
          host = 'myaccesspoint-123456789012.op-01234567890123456.beta.example.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
        end

        it 'works with a global list bucket operation' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            endpoint: 'https://bucket.vpce-123-abc.s3.us-west-2.vpce.amazonaws.com'
          )
          expect_auth({ 'signingName' => 's3' })
          resp = client.list_buckets
          host = 'bucket.vpce-123-abc.s3.us-west-2.vpce.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
        end

        it 'works with the private link endpoint as is with path style' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            force_path_style: true,
            endpoint: 'https://bucket.vpce-123-abc.s3.us-west-2.vpce.amazonaws.com'
          )
          bucket = 'bucketname'
          expect_auth({ 'signingName' => 's3' })
          resp = client.list_objects(bucket: bucket)
          host = 'bucket.vpce-123-abc.s3.us-west-2.vpce.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
        end

        it 'works with the private link endpoint as is' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            endpoint: 'https://bucket.vpce-123-abc.s3.us-west-2.vpce.amazonaws.com'
          )
          bucket = 'bucketname'
          expect_auth({ 'signingName' => 's3' })
          resp = client.list_objects(bucket: bucket)
          host = 'bucketname.bucket.vpce-123-abc.s3.us-west-2.vpce.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
        end

        it 'works with the private link endpoint using the ARN region' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'eu-west-1',
            endpoint: 'https://accesspoint.vpce-123-abc.s3.us-west-2.vpce.amazonaws.com'
          )
          bucket = 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint'
          expect_auth({ 'signingName' => 's3' })
          resp = client.list_objects(bucket: bucket)
          host = 'myendpoint-123456789012.accesspoint.vpce-123-abc.s3.us-west-2.vpce.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
        end
      end

      context 'failure cases' do
        it 'raises when a custom endpoint is used with dualstack' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            use_dualstack_endpoint: true,
            s3_use_arn_region: false,
            endpoint: 'https://beta.example.com'
          )
          bucket = 'bucketname'
          expect do
            client.list_objects(bucket: bucket)
          end.to raise_error(ArgumentError)
        end

        it 'raises when outpost access point ARN is used with dualstack' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            use_dualstack_endpoint: true,
            s3_use_arn_region: false,
            endpoint: 'https://beta.example.com'
          )
          bucket = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect do
            client.list_objects(bucket: bucket)
          end.to raise_error(ArgumentError)
        end
      end
    end
  end
end
