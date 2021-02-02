# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module S3
    describe Presigner do
      let(:client) do
        Aws::S3::Client.new(
          region: 'us-east-1',
          credentials: Credentials.new(
            'ACCESS_KEY_ID',
            'SECRET_ACCESS_KEY'
          ),
          stub_responses: true
        )
      end

      let(:now) { double('now') }
      let(:utc) { double('utc-time') }
      let(:datetime) { '20130524T000000Z' }

      subject { Presigner.new(client: client) }

      before do
        allow(Time).to receive(:now).and_return(now)
        allow(now).to receive(:utc).and_return(utc)
        allow(utc).to receive(:strftime).and_return(datetime)
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

        it 'can be excluded from being tracked as an api request' do
          subject.presigned_url(:get_object, bucket: 'bkt', key: 'k')
          expect(client.api_requests(exclude_presign: true)).to be_empty
        end

        it 'can presign #get_object to spec' do
          expected_url = 'https://examplebucket.s3.amazonaws.com/test.txt?'\
                         'X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential='\
                         'ACCESS_KEY_ID%2F20130524%2Fus-east-1%2Fs3%2F'\
                         'aws4_request&X-Amz-Date=20130524T000000Z'\
                         '&X-Amz-Expires=86400&X-Amz-SignedHeaders=host'\
                         '&X-Amz-Signature=5da845a038b194a3826362ecd698f78fb1e'\
                         '26cb44b25af49263f0a0983870f57'
          actual_url = subject.presigned_url(
            :get_object,
            bucket: 'examplebucket',
            key: 'test.txt',
            expires_in: 86_400
          )
          expect(actual_url).to eq(expected_url)
        end

        it 'can sign with a given time' do
          actual_url = subject.presigned_url(
            :get_object,
            bucket: 'examplebucket',
            key: 'test.txt',
            expires_in: 86_400,
            time: Time.utc(1969, 4, 20)
          )
          expect(actual_url).to include('&X-Amz-Date=19690420T000000Z')
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
          client.config.endpoint = URI('http://example.com')
          url = subject.presigned_url(
            :get_object,
            bucket: 'aws-sdk',
            key: 'foo'
          )
          expect(url).to match(/^http:/)
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
      end

      describe '#presigned_request' do
        it 'will be tracked as an api request' do
          subject.presigned_request(:get_object, bucket: 'bkt', key: 'k')
          expect(client.api_requests.size).to eq(1)
        end

        it 'can be excluded from being tracked as an api request' do
          subject.presigned_request(:get_object, bucket: 'bkt', key: 'k')
          expect(client.api_requests(exclude_presign: true)).to be_empty
        end

        it 'can presign #get_object to spec' do
          expected_url = 'https://examplebucket.s3.amazonaws.com/test.txt?'\
                         'X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential='\
                         'ACCESS_KEY_ID%2F20130524%2Fus-east-1%2Fs3%2F'\
                         'aws4_request&X-Amz-Date=20130524T000000Z'\
                         '&X-Amz-Expires=86400&X-Amz-SignedHeaders=host'\
                         '&X-Amz-Signature=5da845a038b194a3826362ecd698f78fb1e'\
                         '26cb44b25af49263f0a0983870f57'
          actual_url, = subject.presigned_request(
            :get_object,
            bucket: 'examplebucket',
            key: 'test.txt',
            expires_in: 86_400
          )
          expect(actual_url).to eq(expected_url)
        end

        it 'can sign with a given time' do
          actual_url, = subject.presigned_request(
            :get_object,
            bucket: 'examplebucket',
            key: 'test.txt',
            expires_in: 86_400,
            time: Time.utc(1969, 4, 20)
          )
          expect(actual_url).to include('&X-Amz-Date=19690420T000000Z')
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
          client.config.endpoint = URI('http://example.com')
          url, = subject.presigned_request(
            :get_object,
            bucket: 'aws-sdk',
            key: 'foo'
          )
          expect(url).to match(/^http:/)
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
          signer = Presigner.new(client: client)
          url, headers = signer.presigned_request(
            :put_object, bucket: 'aws-sdk', key: 'foo', acl: 'public-read'
          )
          expect(url).to match(/X-Amz-SignedHeaders=host%3Bx-amz-acl/)
          expect(headers).to eq('x-amz-acl' => 'public-read')
        end
      end

      context 'outpost access point ARNs' do
        it 'uses s3-outposts as the service' do
          arn = 'arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint'
          url = subject.presigned_url(:get_object, bucket: arn, key: 'obj')
          expected_service = 's3-outposts'
          expect(url).to include("X-Amz-Credential=ACCESS_KEY_ID%2F20130524%2Fus-west-2%2F#{expected_service}%2Faws4_request")
        end

        it 'uses the resolved-region' do
          arn_region = 'us-east-1'
          arn = "arn:aws:s3-outposts:#{arn_region}:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint"
          url = subject.presigned_url(:get_object, bucket: arn, key: 'obj')
          expect(url).to include("X-Amz-Credential=ACCESS_KEY_ID%2F20130524%2F#{arn_region}%2Fs3-outposts%2Faws4_request")
        end
      end

      context 'access point ARN' do
        it 'uses s3as the service' do
          arn = 'arn:aws:s3:us-west-2:123456789012:accesspoint/myendpoint'
          url = subject.presigned_url(:get_object, bucket: arn, key: 'obj')
          expected_service = 's3'
          expect(url).to include("X-Amz-Credential=ACCESS_KEY_ID%2F20130524%2Fus-west-2%2F#{expected_service}%2Faws4_request")
        end

        it 'uses the resolved-region' do
          arn_region = 'us-east-1'
          arn = "arn:aws:s3:#{arn_region}:123456789012:accesspoint/myendpoint"
          url = subject.presigned_url(:get_object, bucket: arn, key: 'obj')
          expect(url).to include("X-Amz-Credential=ACCESS_KEY_ID%2F20130524%2F#{arn_region}%2Fs3%2Faws4_request")
        end
      end
    end
  end
end
