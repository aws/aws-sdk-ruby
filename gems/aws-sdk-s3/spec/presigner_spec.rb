# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module S3
    describe Presigner do
      let(:client) { Aws::S3::Client.new(**client_opts) }

      let(:credentials) do
        Credentials.new(
          'ACCESS_KEY_ID',
          'SECRET_ACCESS_KEY'
        )
      end
      let(:client_opts) do
        {
          region: 'us-east-1',
          credentials: credentials,
          stub_responses: true
        }
      end

      subject { Presigner.new(client: client) }

      let(:time) { Time.utc(2021, 8, 27) }
      before { allow(Time).to receive(:now).and_return(time) }

      let(:expiration_time) { time + 180 }
      let(:credentials_provider_class) do
        Class.new do
          include CredentialProvider

          def initialize(expiration_time)
            @credentials = Credentials.new(
              'akid',
              'secret',
              'session'
            )
            @expiration = expiration_time
          end
        end
      end

      describe '#initialize' do
        it 'accepts an injected S3 client' do
          pre = Presigner.new(client: client)
          expect(pre.class).to eq(Aws::S3::Presigner)
        end

        it 'can be constructed without a client' do
          expect(Aws::S3::Client).to receive(:new).and_return(client)
          pre = Presigner.new
          expect(pre.class).to eq(Aws::S3::Presigner)
        end
      end

      describe '#presigned_url' do
        it 'will be tracked as an api request' do
          subject.presigned_url(:get_object, bucket: 'bkt', key: 'k')
          expect(client.api_requests.size).to eq(1)
        end

        it 'labels context as a presigned request before handlers are invoked' do
          expect do |block|
            client.handle_request(&block)

            subject.presigned_url(:get_object, bucket: 'bkt', key: 'k')
          end.to yield_with_args { |c| c[:presigned_url] == true }
        end

        it 'can be excluded from being tracked as an api request' do
          subject.presigned_url(:get_object, bucket: 'bkt', key: 'k')
          expect(client.api_requests(exclude_presign: true)).to be_empty
        end

        it 'can presign #get_object to spec' do
          expected_url = 'https://examplebucket.s3.amazonaws.com/test.txt?'\
                         'X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential='\
                         'ACCESS_KEY_ID%2F20210827%2Fus-east-1%2Fs3%2F'\
                         'aws4_request&X-Amz-Date=20210827T000000Z'\
                         '&X-Amz-Expires=86400&X-Amz-SignedHeaders=host'\
                         '&X-Amz-Signature=cd4953fc4c1ebb97c3ca18ce433b4bc9ff9'\
                         'f9f6a54eb47c31d908e0e7ecf524c'
          actual_url = subject.presigned_url(
            :get_object,
            bucket: 'examplebucket',
            key: 'test.txt',
            expires_in: 86_400
          )
          expect(URI.decode_www_form(actual_url)).to eq(URI.decode_www_form(expected_url))
        end

        it 'can sign with a given time' do
          actual_url = subject.presigned_url(
            :get_object,
            bucket: 'examplebucket',
            key: 'test.txt',
            expires_in: 86_400,
            time: Time.utc(2022, 02, 22)
          )
          expect(actual_url).to include('&X-Amz-Date=20220222T000000Z')
        end

        it 'can sign with additional whitelisted headers' do
          actual_url = subject.presigned_url(
            :get_object,
            bucket: 'examplebucket',
            key: 'test.txt',
            expires_in: 86_400,
            whitelist_headers: ['user-agent']
          )
          expect(actual_url).to include(
            '&X-Amz-SignedHeaders=host%3Buser-agent'
          )
        end

        it 'raises when expires_in length is over 1 week' do
          expect do
            subject.presigned_url(
              :get_object,
              bucket: 'examplebucket',
              key: 'test.txt',
              expires_in: (7 * 86_400) + 1
            )
          end.to raise_error(ArgumentError)
        end

        it 'raises when expires_in is less than or equal to 0' do
          expect do
            subject.presigned_url(
              :get_object,
              bucket: 'examplebucket',
              key: 'test.txt',
              expires_in: 0
            )
          end.to raise_error(ArgumentError)
        end

        it 'can generate http (non-secure) urls' do
          url = subject.presigned_url(
            :get_object,
            bucket: 'aws-sdk',
            key: 'foo',
            secure: false
          )
          expect(url).to match(/^http:/)
        end

        it 'uses the configured :endpoint scheme' do
          client_opts[:endpoint] = 'http://example.com'
          client_opts[:force_path_style] = true
          url = subject.presigned_url(
            :get_object,
            bucket: 'aws-sdk',
            key: 'foo'
          )
          expect(url).to start_with('http://example.com')
        end

        it 'uses the configured :endpoint port' do
          client_opts[:endpoint] = 'http://localhost:9000'
          client_opts[:force_path_style] = true
          url = subject.presigned_url(
            :get_object,
            bucket: 'aws-sdk',
            key: 'foo'
          )
          expect(url).to start_with('http://localhost:9000')
        end

        it 'supports virtual hosting' do
          url = subject.presigned_url(
            :get_object,
            bucket: 'my.website.com',
            key: 'foo',
            virtual_host: true
          )
          expect(url).to match(/^https:\/\/my.website.com\/foo/)
        end

        it 'hoists x-amz-* headers to the query string' do
          url = subject.presigned_url(
            :put_object,
            bucket: 'aws-sdk',
            key: 'foo',
            acl: 'public-read'
          )
          expect(url).to match(/x-amz-acl=public-read/)
        end

        it 'does not normalize object keys' do
          url = subject.presigned_url(
            :get_object,
            bucket: 'aws-sdk',
            key: 'foo/../bar'
          )
          expect(url).to include('foo/../bar')
        end

        context 'credential expiration' do
          let(:credentials) do
            credentials_provider_class.new(expiration_time)
          end

          it 'picks the minimum time between expires_in and credential expiration' do
            url = subject.presigned_url(
              :get_object,
              bucket: 'aws-sdk',
              key: 'foo',
              expires_in: 3600
            )
            expect(url).to match(/X-Amz-Expires=180/)
          end
        end
      end

      describe '#presigned_request' do
        it 'will be tracked as an api request' do
          subject.presigned_request(:get_object, bucket: 'bkt', key: 'k')
          expect(client.api_requests.size).to eq(1)
        end

        it 'labels context as a presigned request before handlers are invoked' do
          expect do |block|
            client.handle_request(&block)

            subject.presigned_request(:get_object, bucket: 'bkt', key: 'k')
          end.to yield_with_args { |c| c[:presigned_url] == true }
        end

        it 'can be excluded from being tracked as an api request' do
          subject.presigned_request(:get_object, bucket: 'bkt', key: 'k')
          expect(client.api_requests(exclude_presign: true)).to be_empty
        end

        it 'can presign #get_object to spec' do
          expected_url = 'https://examplebucket.s3.amazonaws.com/test.txt?'\
                         'X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential='\
                         'ACCESS_KEY_ID%2F20210827%2Fus-east-1%2Fs3%2F'\
                         'aws4_request&X-Amz-Date=20210827T000000Z'\
                         '&X-Amz-Expires=86400&X-Amz-SignedHeaders=host'\
                         '&X-Amz-Signature=cd4953fc4c1ebb97c3ca18ce433b4bc9ff9'\
                         'f9f6a54eb47c31d908e0e7ecf524c'
          actual_url, = subject.presigned_request(
            :get_object,
            bucket: 'examplebucket',
            key: 'test.txt',
            expires_in: 86_400
          )
          expect(URI.decode_www_form(actual_url)).to eq(URI.decode_www_form(expected_url))
        end

        it 'can sign with a given time' do
          actual_url, = subject.presigned_request(
            :get_object,
            bucket: 'examplebucket',
            key: 'test.txt',
            expires_in: 86_400,
            time: Time.utc(2022, 02, 22)
          )
          expect(actual_url).to include('&X-Amz-Date=20220222T000000Z')
        end

        it 'can sign with additional whitelisted headers' do
          actual_url, = subject.presigned_request(
            :get_object,
            bucket: 'examplebucket',
            key: 'test.txt',
            expires_in: 86_400,
            whitelist_headers: ['user-agent']
          )
          expect(actual_url).to include(
            '&X-Amz-SignedHeaders=host%3Buser-agent'
          )
        end

        it 'raises when expires_in length is over 1 week' do
          expect do
            subject.presigned_request(
              :get_object,
              bucket: 'examplebucket',
              key: 'test.txt',
              expires_in: (7 * 86_400) + 1
            )
          end.to raise_error(ArgumentError)
        end

        it 'raises when expires_in is less than or equal to 0' do
          expect do
            subject.presigned_request(
              :get_object,
              bucket: 'examplebucket',
              key: 'test.txt',
              expires_in: 0
            )
          end.to raise_error(ArgumentError)
        end

        it 'can generate http (non-secure) urls' do
          url, = subject.presigned_request(
            :get_object,
            bucket: 'aws-sdk',
            key: 'foo',
            secure: false
          )
          expect(url).to match(/^http:/)
        end

        it 'uses the configured :endpoint scheme' do
          client_opts[:endpoint] = 'http://example.com'
          client_opts[:force_path_style] = true
          url, = subject.presigned_request(
            :get_object,
            bucket: 'aws-sdk',
            key: 'foo'
          )
          expect(url).to start_with('http://example.com')
        end

        it 'uses the configured :endpoint port' do
          client_opts[:endpoint] = 'http://localhost:9000'
          client_opts[:force_path_style] = true
          url, = subject.presigned_request(
            :get_object,
            bucket: 'aws-sdk',
            key: 'foo'
          )
          expect(url).to start_with('http://localhost:9000')
        end

        it 'supports virtual hosting' do
          url, = subject.presigned_request(
            :get_object,
            bucket: 'my.website.com',
            key: 'foo',
            virtual_host: true
          )
          expect(url).to match(/^https:\/\/my.website.com\/foo/)
        end

        it 'returns x-amz-* headers instead of hoisting to the query string' do
          url, headers = subject.presigned_request(
            :put_object, bucket: 'aws-sdk', key: 'foo', acl: 'public-read'
          )
          expect(url).to match(/X-Amz-SignedHeaders=host%3Bx-amz-acl/)
          expect(headers).to eq('x-amz-acl' => 'public-read')
        end

        it 'does not normalize object keys' do
          url, = subject.presigned_request(
            :get_object,
            bucket: 'aws-sdk',
            key: 'foo/../bar'
          )
          expect(url).to include('foo/../bar')
        end

        context 'credential expiration' do
          let(:credentials) do
            credentials_provider_class.new(expiration_time)
          end

          it 'picks the minimum time between expires_in and credential expiration' do
            url, = subject.presigned_request(
              :get_object,
              bucket: 'aws-sdk',
              key: 'foo',
              expires_in: 3600
            )
            expect(url).to match(/X-Amz-Expires=180/)
          end
        end
      end

      context 'outpost access point ARNs' do
        it 'uses s3-outposts as the service' do
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          url = subject.presigned_url(:get_object, bucket: arn, key: 'obj')
          expected_service = 's3-outposts'
          expect(url).to include('X-Amz-Signature')
          expect(url).to include("#{expected_service}%2Faws4_request")
        end

        it 'uses the resolved-region' do
          arn_region = 'us-east-1'
          arn = "arn:aws:s3-outposts:#{arn_region}:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint"
          url = subject.presigned_url(:get_object, bucket: arn, key: 'obj')
          expect(url).to include('X-Amz-Signature')
          expect(url).to include("s3-outposts.#{arn_region}.")
        end
      end

      context 'access point ARN' do
        it 'uses s3 as the service' do
          arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint/myendpoint'
          url = subject.presigned_url(:get_object, bucket: arn, key: 'obj')
          expected_service = 's3'
          expect(url).to include(
            "20210827%2Fus-west-2%2F#{expected_service}%2Faws4_request"
          )
          expect(url).to include(
            'd6b2a8840209fa40456c97ae99f9fab2526316d70f3ebaa75c22d654b90e9da9'
          )
        end

        it 'uses the resolved-region' do
          arn_region = 'us-east-1'
          arn = "arn:aws:s3:#{arn_region}:123456789012:accesspoint/myendpoint"
          url = subject.presigned_url(:get_object, bucket: arn, key: 'obj')
          expect(url).to include(
            "20210827%2F#{arn_region}%2Fs3%2Faws4_request"
          )
          expect(url).to include(
            '5a27899693cea5f6ccf9dc26a3e44c4a3d45ae57a441954fb4b7cdc8c2ef45ea'
          )
        end
      end

      context 'MRAP ARNs' do
        let(:arn) { 'arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap' }

        it 'creates a presigned url with sigv4a' do
          url = subject.presigned_url(:get_object, bucket: arn, key: 'obj')
          expect(url).to include('https://mfzwi23gnjvgw.mrap.accesspoint.s3-global.amazonaws.com/obj')
          expect(url).to include('X-Amz-Region-Set=%2A')
        end

        it 'raises an ArgumentError when MRAP is disabled' do
          client.config.s3_disable_multiregion_access_points = true
          expect do
            subject.presigned_url(:get_object, bucket: arn, key: 'obj')
          end.to raise_error(ArgumentError)
        end
      end

      context 'express endpoints' do
        it 'uses express credentials' do
          bucket = 'presign-bucket--use1-az2--x-s3'
          credentials = {
            access_key_id: 's3-akid',
            secret_access_key: 's3-secret',
            session_token: 's3-session',
            expiration: Time.now + 60 * 5
          }
          client.stub_responses(:create_session, credentials: credentials)
          expect(client).to receive(:create_session)
            .with({bucket: bucket}).and_call_original

          url = subject.presigned_url(:get_object, bucket: bucket, key: 'obj')
          expect(url).to include('X-Amz-Credential=s3-akid')
          expect(url).to include('s3express%2Faws4_request')
          expect(url).to include('X-Amz-S3session-Token=s3-session')
        end

        it 'does not use express credentials when disabled' do
          client_opts[:disable_s3_express_session_auth] = true
          bucket = 'presign-bucket--use1-az2--x-s3'
          expect(client).not_to receive(:create_session)

          url = subject.presigned_url(:get_object, bucket: bucket, key: 'obj')
          expect(url).not_to include('X-Amz-S3session-Token')
        end
      end
    end
  end
end
