require_relative '../spec_helper'

module Aws
  module S3
    describe Client do
      it 'is configured to use the arn region by default' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        expect(client.config.s3_use_arn_region).to be true
      end

      it 'can be configured using shared config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:s3_use_arn_region).and_return('false')
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        expect(client.config.s3_use_arn_region).to be false
      end

      it 'can be configured using ENV with precedence over shared config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:s3_use_arn_region).and_return('true')
        ENV['AWS_S3_USE_ARN_REGION'] = 'false'
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        expect(client.config.s3_use_arn_region).to be false
      end

      it 'raises when use arn region is not true or false' do
        ENV['AWS_S3_USE_ARN_REGION'] = 'peccy'

        expect do
          Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
        end.to raise_error(ArgumentError)
      end

      it 'uses an accesspoint arn to construct the host' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint/myendpoint'
        resp = client.get_object(bucket: arn, key: 'obj')
        host = 'myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com'
        expect(resp.context.http_request.endpoint.host).to eq(host)
        expect(resp.context.http_request.endpoint.path).to eq('/obj')
      end

      it 'uses the accesspoint arn region for the request' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        arn = 'arn:aws:s3:us-east-1:123456789012:accesspoint/myendpoint'
        resp = client.get_object(bucket: arn, key: 'obj')
        host = 'myendpoint-123456789012.s3-accesspoint.us-east-1.amazonaws.com'
        expect(resp.context.http_request.endpoint.host).to eq(host)
        expect(resp.context.http_request.endpoint.path).to eq('/obj')
      end

      it 'can use dualstack with the accesspoint arn' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2',
          use_dualstack_endpoint: true
        )
        arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint/myendpoint'
        host = 'myendpoint-123456789012.s3-accesspoint.dualstack'\
               '.us-west-2.amazonaws.com'
        resp = client.get_object(bucket: arn, key: 'obj')
        expect(resp.context.http_request.endpoint.host).to eq(host)
        expect(resp.context.http_request.endpoint.path).to eq('/obj')
      end

      it 'sends the arn over the wire for #copy_object' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint/myendpoint'
        source = 'arn:aws:s3:us-west-2:120987654321:accesspoint:source/obj'
        resp = client.copy_object(
          bucket: arn,
          key: 'obj',
          copy_source: source
        )
        host = 'myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com'
        expect(resp.context.http_request.endpoint.host).to eq(host)
        expect(resp.context.http_request.headers['x-amz-copy-source'])
          .to eq(source)
        expect(resp.context.http_request.endpoint.path).to eq('/obj')
      end

      it 'raises for clients configured in a fips region' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-east-1-fips'
        )
        arn = 'arn:aws-us-gov:s3:us-east-1:123456789012:accesspoint:myendpoint'
        expect do
          client.get_object(bucket: arn, key: 'obj')
        end.to raise_error(ArgumentError)
      end

      it 'raises if the client and accesspoint arn partitions mismatch' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        arn = 'arn:aws-cn:s3:cn-north-1:123456789012:accesspoint/myendpoint'
        expect do
          client.get_object(bucket: arn, key: 'obj')
        end.to raise_error(Aws::Errors::InvalidARNPartitionError)
      end

      it 'raises with :endpoint and an accesspoint arn' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          endpoint: 'https://example.com',
          region: 'us-west-2'
        )
        arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint/myendpoint'
        expect do
          client.get_object(bucket: arn, key: 'obj')
        end.to raise_error(ArgumentError)
      end

      it 'raises with :use_accelerate_endpoint and an accesspoint arn' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2',
          use_accelerate_endpoint: true
        )
        arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint/myendpoint'
        expect do
          client.get_object(bucket: arn, key: 'obj')
        end.to raise_error(ArgumentError)
      end

      it 'raises with :force_path_style and an accesspoint arn' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2',
          force_path_style: true
        )
        arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint/myendpoint'
        expect do
          client.get_object(bucket: arn, key: 'obj')
        end.to raise_error(ArgumentError)
      end

      it 'raises when provided an ARN from another service' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        arn = 'arn:aws:sqs:us-west-2:123456789012:queue'
        expect do
          client.get_object(bucket: arn, key: 'obj')
        end.to raise_error(ArgumentError)
      end

      it 'raises when provided an ARN without a region' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        arn = 'arn:aws:s3::123456789012:accesspoint/myendpoint'
        expect do
          client.get_object(bucket: arn, key: 'obj')
        end.to raise_error(ArgumentError)
      end

      it 'raises when provided an ARN with multiple resource ids' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint/myendpoint/invalid'
        expect do
          client.get_object(bucket: arn, key: 'obj')
        end.to raise_error(ArgumentError)
      end

      it 'raises when given an S3 ARN that is not an accesspoint' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        arn = 'arn:aws:s3:us-west-2:123456789012:bucket'
        expect do
          client.get_object(bucket: arn, key: 'obj')
        end.to raise_error(ArgumentError)
      end

      context 's3_use_arn_region is false' do
        it 'accepts an accesspoint arn with the same configured region' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false
          )
          arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint/myendpoint'
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myendpoint-123456789012.s3-accesspoint'\
                 '.us-west-2.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 'raises if client region and accesspoint arn region mismatchs' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false
          )
          arn = 'arn:aws:s3:us-east-1:123456789012:accesspoint/myendpoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(Aws::Errors::InvalidARNRegionError)
        end
      end
    end
  end
end
