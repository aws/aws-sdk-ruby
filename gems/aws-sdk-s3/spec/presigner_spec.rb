require_relative 'spec_helper'

module Aws
  module S3
    describe Presigner do
      before(:each) do
        Aws.config[:s3] = {
          region: 'us-east-1',
          credentials: Credentials.new(
            'ACCESS_KEY_ID',
            'SECRET_ACCESS_KEY'
          ),
          retry_limit: 0
        }

        allow(Time).to receive(:now).and_return(now)
        allow(now).to receive(:utc).and_return(utc)
        allow(utc).to receive(:strftime).and_return(datetime)
      end

      after(:each) do
        Aws.config = {}
      end

      let(:client) { Aws::S3::Client.new }

      let(:now) { double('now') }
      let(:utc) { double('utc-time') }
      let(:datetime) { '20130524T000000Z' }

      describe '#initialize' do
        it 'accepts an injected S3 client' do
          pre = Presigner.new(client: client)
          expect(pre.class).to eq(Aws::S3::Presigner)
        end

        it 'can be constructed without a client' do
          pre = Presigner.new
          expect(pre.class).to eq(Aws::S3::Presigner)
        end
      end

      describe '#presigned_url' do
        it 'will be tracked as an api request' do
          stub_client = Aws::S3::Client.new(stub_responses: true)
          presigner = Presigner.new(client: stub_client)
          presigner.presigned_url(:get_object, bucket: 'bkt', key: 'k')
          expect(stub_client.api_requests.size).to eq(1)
        end

        it 'can be excluded from being tracked as an api request' do
          stub_client = Aws::S3::Client.new(stub_responses: true)
          presigner = Presigner.new(client: stub_client)
          presigner.presigned_url(:get_object, bucket: 'bkt', key: 'k')
          expect(stub_client.api_requests(exclude_presign: true)).to be_empty
        end

        it 'can presign #get_object to spec' do
          bucket = 'examplebucket'
          key = 'test.txt'
          expected_url = 'https://examplebucket.s3.amazonaws.com/test.txt?'\
                         'X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential='\
                         'ACCESS_KEY_ID%2F20130524%2Fus-east-1%2Fs3%2F'\
                         'aws4_request&X-Amz-Date=20130524T000000Z'\
                         '&X-Amz-Expires=86400&X-Amz-SignedHeaders=host'\
                         '&X-Amz-Signature=5da845a038b194a3826362ecd698f78fb1e'\
                         '26cb44b25af49263f0a0983870f57'

          pre = Presigner.new(client: client)
          params = {
            bucket: bucket,
            key: key,
            expires_in: 86_400
          }
          actual_url = pre.presigned_url(:get_object, params)
          expect(actual_url).to eq(expected_url)
        end

        it 'can sign with a given time' do
          bucket = 'examplebucket'
          key = 'test.txt'

          pre = Presigner.new(client: client)
          params = {
            bucket: bucket,
            key: key,
            expires_in: 86_400,
            time: Time.utc(1969, 4, 20)
          }
          actual_url = pre.presigned_url(:get_object, params)
          expect(actual_url).to include('&X-Amz-Date=19690420T000000Z')
        end

        it 'can sign with additional whitelisted headers' do
          bucket = 'examplebucket'
          key = 'test.txt'

          pre = Presigner.new(client: client)
          params = {
            bucket: bucket,
            key: key,
            expires_in: 86_400,
            whitelist_headers: ['user-agent']
          }
          actual_url = pre.presigned_url(:get_object, params)
          expect(actual_url).to include(
            '&X-Amz-SignedHeaders=host%3Buser-agent'
          )
        end

        it 'raises when expires_in length is over 1 week' do
          bucket = 'examplebucket'
          key = 'test.txt'
          pre = Presigner.new(client: client)
          params = {
            bucket: bucket,
            key: key,
            expires_in: (7 * 86_400) + 1
          }
          expect do
            pre.presigned_url(:get_object, params)
          end.to raise_error(ArgumentError)
        end

        it 'raises when expires_in is less than or equal to 0' do
          bucket = 'examplebucket'
          key = 'test.txt'
          pre = Presigner.new(client: client)
          params = {
            bucket: bucket,
            key: key,
            expires_in: 0
          }
          expect do
            pre.presigned_url(:get_object, params)
          end.to raise_error(ArgumentError)
        end

        it 'can generate http (non-secure) urls' do
          signer = Presigner.new(client: client)
          url = signer.presigned_url(
            :get_object, bucket: 'aws-sdk', key: 'foo', secure: false
          )
          expect(url).to match(/^http:/)
        end

        it 'uses the configured :endpoint scheme' do
          client.config.endpoint = URI('http://example.com')
          signer = Presigner.new(client: client)
          url = signer.presigned_url(
            :get_object, bucket: 'aws-sdk', key: 'foo'
          )
          expect(url).to match(/^http:/)
        end

        it 'supports virtual hosting' do
          signer = Presigner.new(client: client)
          url = signer.presigned_url(
            :get_object, bucket: 'my.website.com', key: 'foo', virtual_host: true
          )
          expect(url).to match(/^https:\/\/my.website.com\/foo/)
        end

        it 'hoists x-amz-* headers to the query string' do
          signer = Presigner.new(client: client)
          url = signer.presigned_url(
            :put_object, bucket: 'aws-sdk', key: 'foo', acl: 'public-read'
          )
          expect(url).to match(/x-amz-acl=public-read/)
        end
      end

      describe '#presigned_request' do
        it 'will be tracked as an api request' do
          stub_client = Aws::S3::Client.new(stub_responses: true)
          presigner = Presigner.new(client: stub_client)
          presigner.presigned_request(:get_object, bucket: 'bkt', key: 'k')
          expect(stub_client.api_requests.size).to eq(1)
        end

        it 'can be excluded from being tracked as an api request' do
          stub_client = Aws::S3::Client.new(stub_responses: true)
          presigner = Presigner.new(client: stub_client)
          presigner.presigned_request(:get_object, bucket: 'bkt', key: 'k')
          expect(stub_client.api_requests(exclude_presign: true)).to be_empty
        end

        it 'can presign #get_object to spec' do
          bucket = 'examplebucket'
          key = 'test.txt'
          expected_url = 'https://examplebucket.s3.amazonaws.com/test.txt?'\
                         'X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential='\
                         'ACCESS_KEY_ID%2F20130524%2Fus-east-1%2Fs3%2F'\
                         'aws4_request&X-Amz-Date=20130524T000000Z'\
                         '&X-Amz-Expires=86400&X-Amz-SignedHeaders=host'\
                         '&X-Amz-Signature=5da845a038b194a3826362ecd698f78fb1e'\
                         '26cb44b25af49263f0a0983870f57'

          pre = Presigner.new(client: client)
          params = {
            bucket: bucket,
            key: key,
            expires_in: 86_400
          }
          actual_url, _ = pre.presigned_request(:get_object, params)
          expect(actual_url).to eq(expected_url)
        end

        it 'can sign with a given time' do
          bucket = 'examplebucket'
          key = 'test.txt'

          pre = Presigner.new(client: client)
          params = {
            bucket: bucket,
            key: key,
            expires_in: 86_400,
            time: Time.utc(1969, 4, 20)
          }
          actual_url, _ = pre.presigned_request(:get_object, params)
          expect(actual_url).to include('&X-Amz-Date=19690420T000000Z')
        end

        it 'can sign with additional whitelisted headers' do
          bucket = 'examplebucket'
          key = 'test.txt'

          pre = Presigner.new(client: client)
          params = {
            bucket: bucket,
            key: key,
            expires_in: 86_400,
            whitelist_headers: ['user-agent']
          }
          actual_url, _ = pre.presigned_request(:get_object, params)
          expect(actual_url).to include(
            '&X-Amz-SignedHeaders=host%3Buser-agent'
          )
        end

        it 'raises when expires_in length is over 1 week' do
          bucket = 'examplebucket'
          key = 'test.txt'
          pre = Presigner.new(client: client)
          params = {
            bucket: bucket,
            key: key,
            expires_in: (7 * 86_400) + 1
          }
          expect do
            pre.presigned_request(:get_object, params)
          end.to raise_error(ArgumentError)
        end

        it 'raises when expires_in is less than or equal to 0' do
          bucket = 'examplebucket'
          key = 'test.txt'
          pre = Presigner.new(client: client)
          params = {
            bucket: bucket,
            key: key,
            expires_in: 0
          }
          expect do
            pre.presigned_request(:get_object, params)
          end.to raise_error(ArgumentError)
        end

        it 'can generate http (non-secure) urls' do
          signer = Presigner.new(client: client)
          url, _ = signer.presigned_request(
            :get_object, bucket: 'aws-sdk', key: 'foo', secure: false
          )
          expect(url).to match(/^http:/)
        end

        it 'uses the configured :endpoint scheme' do
          client.config.endpoint = URI('http://example.com')
          signer = Presigner.new(client: client)
          url, _ = signer.presigned_request(
            :get_object, bucket: 'aws-sdk', key: 'foo'
          )
          expect(url).to match(/^http:/)
        end

        it 'supports virtual hosting' do
          signer = Presigner.new(client: client)
          url, _ = signer.presigned_request(
            :get_object, bucket: 'my.website.com', key: 'foo', virtual_host: true
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
    end
  end
end
