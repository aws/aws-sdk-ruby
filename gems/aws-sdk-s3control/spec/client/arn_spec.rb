require_relative '../spec_helper'

module Aws
  module S3Control
    describe Client do
      it 'is configured to use the arn region by default' do
        client = Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        expect(client.config.s3_use_arn_region).to be true
      end

      it 'can be configured using shared config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:s3_use_arn_region).and_return('false')
        client = Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        expect(client.config.s3_use_arn_region).to be false
      end

      it 'can be configured using ENV with precedence over shared config' do
        allow_any_instance_of(Aws::SharedConfig)
          .to receive(:s3_use_arn_region).and_return('true')
        ENV['AWS_S3_USE_ARN_REGION'] = 'false'
        client = Client.new(
          stub_responses: true,
          region: 'us-west-2'
        )
        expect(client.config.s3_use_arn_region).to be false
      end

      it 'raises when use arn region is not true or false' do
        ENV['AWS_S3_USE_ARN_REGION'] = 'peccy'

        expect do
          Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
        end.to raise_error(ArgumentError)
      end

      context 'Outpost Access Point ARN' do
        it 's3_use_arn_region false; accepts an access point arn' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false
          )
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect_auth({ 'signingName' => 's3-outposts' })
          resp = client.get_access_point(name: arn)
          host = 's3-outposts.us-west-2.amazonaws.com'
          outpost_header = 'op-01234567890123456'
          account_header = '123456789012'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq(outpost_header)
          expect(resp.context.http_request.headers['x-amz-account-id']).to eq(account_header)
        end

        it 'accepts an access point arn' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect_auth({ 'signingName' => 's3-outposts' })
          resp = client.get_access_point(name: arn)
          host = 's3-outposts.us-east-1.amazonaws.com'
          outpost_header = 'op-01234567890123456'
          account_header = '123456789012'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq(outpost_header)
          expect(resp.context.http_request.headers['x-amz-account-id']).to eq(account_header)
        end

        it 's3_use_arn_region false; raises when given a cross region outpost access point arn' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false
          )
          arn = 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect do
            client.get_access_point(name: arn)
          end.to raise_error(ArgumentError)
        end

        it 'raises when given a cross partition outpost access point arn' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect do
            client.get_access_point(name: arn)
          end.to raise_error(ArgumentError)
        end

        it 'accepts an access point arn in us-gov' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-gov-east-1'
          )
          arn = 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect_auth({ 'signingName' => 's3-outposts' })
          resp = client.get_access_point(name: arn)
          host = 's3-outposts.us-gov-east-1.amazonaws.com'
          outpost_header = 'op-01234567890123456'
          account_header = '123456789012'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq(outpost_header)
          expect(resp.context.http_request.headers['x-amz-account-id']).to eq(account_header)
        end

        it 's3_use_arn_region false; can create a fips endpoint' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-gov-west-1',
            s3_use_arn_region: false,
            use_fips_endpoint: true
          )
          arn = 'arn:aws-us-gov:s3-outposts:us-gov-west-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect_auth({ 'signingName' => 's3-outposts' })
          resp = client.get_access_point(name: arn)
          host = 's3-outposts-fips.us-gov-west-1.amazonaws.com'
          outpost_header = 'op-01234567890123456'
          account_header = '123456789012'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq(outpost_header)
          expect(resp.context.http_request.headers['x-amz-account-id']).to eq(account_header)
        end

        it 'can create a fips endpoint' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-gov-west-1',
            use_fips_endpoint: true
          )
          arn = 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect_auth({ 'signingName' => 's3-outposts' })
          resp = client.get_access_point(name: arn)
          host = 's3-outposts-fips.us-gov-east-1.amazonaws.com'
          outpost_header = 'op-01234567890123456'
          account_header = '123456789012'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq(outpost_header)
          expect(resp.context.http_request.headers['x-amz-account-id']).to eq(account_header)
        end

        it 'raises when given a fips arn' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-gov-east-1'
          )
          arn = 'arn:aws-us-gov:s3-outposts:us-gov-west-1-fips:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect do
            client.get_access_point(name: arn)
          end.to raise_error(ArgumentError)
        end

        it 'raises when use_accelerate_endpoint is set' do
          # use_accelerate_endpoint is not supported in the S3Control client
          expect do
            Aws::S3Control::Client.new(
              stub_responses: true,
              region: 'us-west-2',
              use_accelerate_endpoint: true
            )
          end.to raise_error(ArgumentError)
        end

        it 'raises when the outpost resource is invalid' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost'
          expect do
            client.get_access_point(name: arn)
          end.to raise_error(ArgumentError)

          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456'
          expect do
            client.get_access_point(name: arn)
          end.to raise_error(ArgumentError)

          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:myaccesspoint'
          expect do
            client.get_access_point(name: arn)
          end.to raise_error(ArgumentError)
        end

        it 'uses the name when not given an ARN' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect_auth({ 'signingName' => 's3' })
          resp = client.get_access_point(
            name: 'myaccesspoint', account_id: '123456789012'
          )
          host = '123456789012.s3-control.us-west-2.amazonaws.com'
          account_header = '123456789012'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.headers['x-amz-account-id']).to eq(account_header)
        end
      end

      context 'Outpost Bucket ARN' do
        it 's3_use_arn_region false; accepts an outposts bucket arn' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false
          )
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket'
          expect_auth({ 'signingName' => 's3-outposts' })
          resp = client.get_bucket(bucket: arn)
          host = 's3-outposts.us-west-2.amazonaws.com'
          outpost_header = 'op-01234567890123456'
          account_header = '123456789012'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq(outpost_header)
          expect(resp.context.http_request.headers['x-amz-account-id']).to eq(account_header)
        end

        it 'accepts an outposts bucket arn' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket'
          expect_auth({ 'signingName' => 's3-outposts' })
          resp = client.get_bucket(bucket: arn)
          host = 's3-outposts.us-east-1.amazonaws.com'
          outpost_header = 'op-01234567890123456'
          account_header = '123456789012'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq(outpost_header)
          expect(resp.context.http_request.headers['x-amz-account-id']).to eq(account_header)
        end

        it 's3_use_arn_region false; raises when given a cross region outpost access point arn' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2',
            s3_use_arn_region: false
          )
          arn = 'arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket'
          expect do
            client.get_bucket(bucket: arn)
          end.to raise_error(ArgumentError)
        end

        it 'raises when given a cross partition outpost bucket' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:bucket:mybucket'
          expect do
            client.get_bucket(bucket: arn)
          end.to raise_error(ArgumentError)
        end

        it 'accepts an outposts bucket arn in us-gov' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-gov-east-1'
          )
          arn = 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket'
          expect_auth({ 'signingName' => 's3-outposts' })
          resp = client.get_bucket(bucket: arn)
          host = 's3-outposts.us-gov-east-1.amazonaws.com'
          outpost_header = 'op-01234567890123456'
          account_header = '123456789012'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq(outpost_header)
          expect(resp.context.http_request.headers['x-amz-account-id']).to eq(account_header)
        end

        it 's3_use_arn_region false; can create a fips endpoint' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-gov-west-1',
            s3_use_arn_region: false,
            use_fips_endpoint: true
          )
          arn = 'arn:aws-us-gov:s3-outposts:us-gov-west-1:123456789012:outpost:op-01234567890123456:bucket:mybucket'
          expect_auth({ 'signingName' => 's3-outposts' })
          resp = client.get_bucket(bucket: arn)
          host = 's3-outposts-fips.us-gov-west-1.amazonaws.com'
          outpost_header = 'op-01234567890123456'
          account_header = '123456789012'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq(outpost_header)
          expect(resp.context.http_request.headers['x-amz-account-id']).to eq(account_header)
        end

        it 'can create a fips endpoint' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-gov-west-1',
            use_fips_endpoint: true
          )
          arn = 'arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket'
          expect_auth({ 'signingName' => 's3-outposts' })
          resp = client.get_bucket(bucket: arn)
          host = 's3-outposts-fips.us-gov-east-1.amazonaws.com'
          outpost_header = 'op-01234567890123456'
          account_header = '123456789012'
          expect(resp.context.http_request.endpoint.host).to eq(host)
          expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq(outpost_header)
          expect(resp.context.http_request.headers['x-amz-account-id']).to eq(account_header)
        end

        it 'raises when given a fips arn' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-gov-east-1'
          )
          arn = 'arn:aws:s3-outposts:us-gov-west-1-fips:123456789012:outpost:op-01234567890123456:bucket:mybucket'
          expect do
            client.get_bucket(bucket: arn)
          end.to raise_error(ArgumentError)
        end

        it 'raises when the outpost resource is invalid' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost'
          expect do
            client.get_bucket(bucket: arn)
          end.to raise_error(ArgumentError)

          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456'
          expect do
            client.get_bucket(bucket: arn)
          end.to raise_error(ArgumentError)

          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:bucket'
          expect do
            client.get_bucket(bucket: arn)
          end.to raise_error(ArgumentError)

          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket'
          expect do
            client.get_bucket(bucket: arn)
          end.to raise_error(ArgumentError)
        end
      end

      # account id exists in the ARN and may be provided by the client
      # if they are different, we raise an error
      context 'account id' do
        it 'uses the ARN account id when account_id is not present' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          resp = client.get_access_point(name: arn)
          account_header = '123456789012'
          expect(resp.context.http_request.headers['x-amz-account-id']).to eq(account_header)
        end

        it 'uses the ARN account id when account_id is present and equal' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          resp = client.get_access_point(name: arn, account_id: '123456789012')
          account_header = '123456789012'
          expect(resp.context.http_request.headers['x-amz-account-id']).to eq(account_header)
        end

        it 'uses the account_id without an ARN' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          resp = client.get_access_point(
            name: 'myaccesspoint', account_id: '123456789012'
          )
          account_header = '123456789012'
          expect(resp.context.http_request.headers['x-amz-account-id']).to eq(account_header)
        end

        it 'raises without any account id' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          expect do
            client.get_access_point(name: 'myaccesspoint')
          end.to raise_error(ArgumentError)
        end

        it 'raises with an ARN missing account id without account_id' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3-outposts:us-west-2::outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect do
            client.get_access_point(name: arn)
          end.to raise_error(ArgumentError)
        end

        it 'raises when ARN account id mismatches account_id' do
          client = Aws::S3Control::Client.new(
            stub_responses: true,
            region: 'us-west-2'
          )
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          expect do
            client.get_access_point(name: arn, account_id: '923456789012')
          end.to raise_error(ArgumentError)
        end
      end

      context 'special test cases' do
        describe '#create_bucket' do
          it 'sets the endpoint and signs with the correct service' do
            client = Aws::S3Control::Client.new(
              stub_responses: true,
              region: 'us-west-2'
            )
            expect_auth({ 'signingName' => 's3-outposts' })
            resp = client.create_bucket(
              bucket: 'bucket', outpost_id: 'op-01234567890123456'
            )
            host = 's3-outposts.us-west-2.amazonaws.com'
            outpost_header = 'op-01234567890123456'
            expect(resp.context.http_request.endpoint.host).to eq(host)
            expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq(outpost_header)
          end

          it 'sets the fips endpoint and signs with the correct service' do
            client = Aws::S3Control::Client.new(
              stub_responses: true,
              region: 'us-west-2',
              use_fips_endpoint: true
            )
            expect_auth({ 'signingName' => 's3-outposts' })
            resp = client.create_bucket(
              bucket: 'bucket', outpost_id: 'op-01234567890123456'
            )
            host = 's3-outposts-fips.us-west-2.amazonaws.com'
            outpost_header = 'op-01234567890123456'
            expect(resp.context.http_request.endpoint.host).to eq(host)
            expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq(outpost_header)
          end
        end

        describe '#list_regional_buckets' do
          it 'sets the endpoint and signs with the correct service' do
            client = Aws::S3Control::Client.new(
              stub_responses: true,
              region: 'us-west-2'
            )
            expect_auth({ 'signingName' => 's3-outposts' })
            resp = client.list_regional_buckets(
              outpost_id: 'op-01234567890123456', account_id: '123456789012'
            )
            host = 's3-outposts.us-west-2.amazonaws.com'
            outpost_header = 'op-01234567890123456'
            expect(resp.context.http_request.endpoint.host).to eq(host)
            expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq(outpost_header)
          end

          it 'sets the fips endpoint and signs with the correct service' do
            client = Aws::S3Control::Client.new(
              stub_responses: true,
              region: 'us-west-2',
              use_fips_endpoint: true
            )
            expect_auth({ 'signingName' => 's3-outposts' })
            resp = client.list_regional_buckets(
              outpost_id: 'op-01234567890123456', account_id: '123456789012'
            )
            host = 's3-outposts-fips.us-west-2.amazonaws.com'
            outpost_header = 'op-01234567890123456'
            expect(resp.context.http_request.endpoint.host).to eq(host)
            expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq(outpost_header)
          end
        end

        describe '#create_access_point' do
          it 'creates an outposts access point with an outposts bucket arn' do
            client = Aws::S3Control::Client.new(
              stub_responses: true,
              region: 'us-west-2'
            )
            expect_auth({ 'signingName' => 's3-outposts' })
            arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket'
            resp = client.create_access_point(bucket: arn, name: 'myaccesspoint')
            host = 's3-outposts.us-west-2.amazonaws.com'
            outpost_header = 'op-01234567890123456'
            expect(resp.context.http_request.endpoint.host).to eq(host)
            expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq(outpost_header)
          end

          it 'creates a fips outposts access point with an outposts bucket arn' do
            client = Aws::S3Control::Client.new(
              stub_responses: true,
              region: 'us-west-2',
              use_fips_endpoint: true
            )
            expect_auth({ 'signingName' => 's3-outposts' })
            arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket'
            resp = client.create_access_point(bucket: arn, name: 'myaccesspoint')
            host = 's3-outposts-fips.us-west-2.amazonaws.com'
            outpost_header = 'op-01234567890123456'
            expect(resp.context.http_request.endpoint.host).to eq(host)
            expect(resp.context.http_request.headers['x-amz-outpost-id']).to eq(outpost_header)
          end
        end
      end
    end
  end
end
