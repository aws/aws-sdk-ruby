require_relative '../spec_helper'

module Aws
  module S3
    describe Client do
      # check service signing
      def expect_sigv4_service(service)
        allow(Aws::Plugins::SignatureV4).to receive(:apply_signature) do |args|
          expect(args[:signer].service).to eq(service)
        end
      end

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

      it 'raises when provided an arn from another service' do
        client = Aws::S3::Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        arn = 'arn:aws:sqs:us-west-2:123456789012:queue'
        expect do
          client.get_object(bucket: arn, key: 'obj')
        end.to raise_error(ArgumentError)
      end

      it 'sends an arn over the wire for #copy_object' do
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

      it 'raises with :force_path_style' do
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

      context 'Access Point ARN' do
        it 's3_use_arn_region false; accepts an accesspoint arn matching the client region' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false
          )
          arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint'
          expect_sigv4_service('s3')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 'accepts an accesspoint arn not matching the client region' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3:us-east-1:123456789012:accesspoint:myendpoint'
          expect_sigv4_service('s3')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myendpoint-123456789012.s3-accesspoint.us-east-1.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 'accepts an accesspoint arn with an s3-external-1 client' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 's3-external-1'
          )
          arn = 'arn:aws:s3:us-east-1:123456789012:accesspoint:myendpoint'
          expect_sigv4_service('s3')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myendpoint-123456789012.s3-accesspoint.us-east-1.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 's3_use_arn_region false; ignores the arn region and prefers s3-external-1' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 's3-external-1',
            s3_use_arn_region: false
          )
          arn = 'arn:aws:s3:us-east-1:123456789012:accesspoint:myendpoint'
          expect_sigv4_service('s3')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myendpoint-123456789012.s3-accesspoint.s3-external-1.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 'accepts an accesspoint arn with an aws-global client' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'aws-global'
          )
          arn = 'arn:aws:s3:us-east-1:123456789012:accesspoint:myendpoint'
          expect_sigv4_service('s3')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myendpoint-123456789012.s3-accesspoint.us-east-1.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 's3_use_arn_region false; ignores the arn region and prefers aws-global' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'aws-global',
            s3_use_arn_region: false
          )
          arn = 'arn:aws:s3:us-east-1:123456789012:accesspoint:myendpoint'
          expect_sigv4_service('s3')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myendpoint-123456789012.s3-accesspoint.aws-global.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 's3_use_arn_region false; raises if client region and arn region mismatchs' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false
          )
          arn = 'arn:aws:s3:us-east-1:123456789012:accesspoint:myendpoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(Aws::Errors::InvalidARNRegionError)
        end

        it 'can use dualstack with the accesspoint arn' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            use_dualstack_endpoint: true
          )
          arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint'
          expect_sigv4_service('s3')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myendpoint-123456789012.s3-accesspoint.dualstack.us-west-2.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 'raises if the client and accesspoint arn partitions mismatch' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(Aws::Errors::InvalidARNPartitionError)
        end

        it 'accepts an accesspoint arn in a china region' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'cn-north-1'
          )
          arn = 'arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint'
          expect_sigv4_service('s3')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myendpoint-123456789012.s3-accesspoint.cn-north-1.amazonaws.com.cn'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 's3_use_arn_region false; accepts an accesspoint arn in a china region' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'cn-north-1',
            s3_use_arn_region: false
          )
          arn = 'arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint'
          expect_sigv4_service('s3')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myendpoint-123456789012.s3-accesspoint.cn-north-1.amazonaws.com.cn'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 'accepts an accesspoint arn in a china region not matching the arn region' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'cn-north-1'
          )
          arn = 'arn:aws-cn:s3:cn-northwest-1:123456789012:accesspoint:myendpoint'
          expect_sigv4_service('s3')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myendpoint-123456789012.s3-accesspoint.cn-northwest-1.amazonaws.com.cn'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 'accepts an accesspoint arn in a gov region' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-gov-east-1'
          )
          arn = 'arn:aws-us-gov:s3:us-gov-east-1:123456789012:accesspoint:myendpoint'
          expect_sigv4_service('s3')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myendpoint-123456789012.s3-accesspoint.us-gov-east-1.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 's3_use_arn_region false; ignores the arn region with a fips client region' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'fips-us-gov-east-1',
            s3_use_arn_region: false
          )
          arn = 'arn:aws-us-gov:s3:us-gov-east-1:123456789012:accesspoint:myendpoint'
          expect_sigv4_service('s3')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myendpoint-123456789012.s3-accesspoint.fips-us-gov-east-1.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 'uses the arn region for a fips client' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'fips-us-gov-east-1'
          )
          arn = 'arn:aws-us-gov:s3:us-gov-east-1:123456789012:accesspoint:myendpoint'
          expect_sigv4_service('s3')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myendpoint-123456789012.s3-accesspoint.us-gov-east-1.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 'uses the arn region for a fips client with dualstack' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'fips-us-gov-east-1',
            use_dualstack_endpoint: true
          )
          arn = 'arn:aws-us-gov:s3:us-gov-east-1:123456789012:accesspoint:myendpoint'
          expect_sigv4_service('s3')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myendpoint-123456789012.s3-accesspoint.dualstack.us-gov-east-1.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 'raises with :use_accelerate_endpoint' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            use_accelerate_endpoint: true
          )
          arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end

        it 'only parses recognized s3 arns' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:sqs:us-west-2:123456789012:someresource'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)

          arn = 'arn:aws:s3:us-west-2:123456789012:bucket_name:mybucket'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end

        it 'validates missing region' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3::123456789012:accesspoint:myendpoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end

        it 'validates account id' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3:us-west-2::accesspoint:myendpoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)

          arn = 'arn:aws:s3:us-west-2:123.45678.9012:accesspoint:mybucket'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end

        it 'validates accesspoint name' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)

          arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint:*'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)

          arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint:my.bucket'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end

        it 'validates against sub resources' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint:mybucket:object:foo'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end
      end

      context 'Outpost Access Point ARN' do
        it 's3_use_arn_region false; accepts an outpost arn matching the client region (colon)' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false
          )
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect_sigv4_service('s3-outposts')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myaccesspoint-123456789012.op-01234567890123456.s3-outposts.us-west-2.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 'accepts an outpost arn not matching the client region (colon)' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect_sigv4_service('s3-outposts')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myaccesspoint-123456789012.op-01234567890123456.s3-outposts.us-east-1.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 's3_use_arn_region false; accepts an outpost arn matching the client region (slash)' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false
          )
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/myaccesspoint'
          expect_sigv4_service('s3-outposts')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myaccesspoint-123456789012.op-01234567890123456.s3-outposts.us-west-2.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 'accepts an outpost arn not matching the client region (slash)' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456/accesspoint/myaccesspoint'
          expect_sigv4_service('s3-outposts')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myaccesspoint-123456789012.op-01234567890123456.s3-outposts.us-east-1.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 's3_use_arn_region false; raises if client region and outpost arn region mismatches' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false
          )
          arn = 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(Aws::Errors::InvalidARNRegionError)
        end

        it 'raises if the client and outposts arn partitions mismatch' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(Aws::Errors::InvalidARNPartitionError)
        end

        it 'accepts an outpost arn in a gov region' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-gov-east-1'
          )
          arn = 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect_sigv4_service('s3-outposts')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myaccesspoint-123456789012.op-01234567890123456.s3-outposts.us-gov-east-1.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 's3_use_arn_region false; raises when client region is fips' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'fips-us-gov-east-1',
            s3_use_arn_region: false
          )
          arn = 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end

        it 'raises if outpost arn region is fips' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'fips-us-gov-east-1'
          )
          arn = 'arn:aws-us-gov:s3-outposts:fips-us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end

        it 'uses outpost arn region even when client region is fips' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'fips-us-gov-east-1'
          )
          arn = 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect_sigv4_service('s3-outposts')
          resp = client.get_object(bucket: arn, key: 'obj')
          host = 'myaccesspoint-123456789012.op-01234567890123456.s3-outposts.us-gov-east-1.amazonaws.com'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.endpoint.path).to eq('/obj')
        end

        it 'raises with :use_dualstack_endpoint' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            use_dualstack_endpoint: true
          )
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end

        it 'raises with :use_accelerate_endpoint' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            use_accelerate_endpoint: true
          )
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end

        it 'raises with no outpost id and access point' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end

        it 'raises with missing access point' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end

        it 'raises with missing outpost id and access point type' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:myaccesspoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end

        it 'raises with missing outpost id' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost::accesspoint:myaccesspoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end

        it 'raises with missing access point name' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end

        it 'validates against sub resources' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:mybucket:object:foo'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end

        it 'validates outpost id' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-0123456.890123456:accesspoint:myaccesspoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end

        it 'validates outpost arn is not an s3 arn' do
          client = Aws::S3::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect do
            client.get_object(bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end
      end
    end
  end
end
