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

      subject { Presigner.new(client: client) }

      before { allow(Time).to receive(:now).and_return(Time.utc(2021, 8, 27)) }

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
          expect(CGI.parse(actual_url)).to eq(CGI.parse(expected_url))
        end

        it 'can sign with a given time' do
          actual_url = subject.presigned_url(
            :get_object,
            bucket: 'examplebucket',
            key: 'test.txt',
            expires_in: 86_400,
            time: Time.utc(2022, 02, 02)
          )
          expect(actual_url).to include('&X-Amz-Date=20220202T000000Z')
        end

        it 'can sign with additional whitelisted headers' do
          skip("CRT does not support whitelisting user-agent") if Aws::Sigv4::Signer.use_crt?

          actual_url = subject.presigned_url(
            :get_object,
            bucket: 'examplebucket',
            key: 'test.txt',
            expires_in: 86_400,
            whitelist_headers: ['user-agent']
          )
          puts CGI.parse(actual_url)
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
          expect(CGI.parse(actual_url)).to eq(CGI.parse(expected_url))
        end

        it 'can sign with a given time' do
          actual_url, = subject.presigned_request(
            :get_object,
            bucket: 'examplebucket',
            key: 'test.txt',
            expires_in: 86_400,
            time: Time.utc(2020, 02, 02)
          )
          expect(actual_url).to include('&X-Amz-Date=20200202T000000Z')
        end

        it 'can sign with additional whitelisted headers' do
          skip("CRT is unable to whitelist user-agent") if Aws::Sigv4::Signer.use_crt?

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
          expect(url).to include(
            "20210827%2Fus-west-2%2F#{expected_service}%2Faws4_request"
          )
          expect(url).to include(
            'a944fbe2bfbae429f922746546d1c6f890649c88ba7826bd1d258ac13f327e09'
          )
        end

        it 'uses the resolved-region' do
          arn_region = 'us-east-1'
          arn = "arn:aws:s3-outposts:#{arn_region}:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint"
          url = subject.presigned_url(:get_object, bucket: arn, key: 'obj')
          expect(url).to include(
            "20210827%2F#{arn_region}%2Fs3-outposts%2Faws4_request"
          )
          expect(url).to include(
            '7f93df0b81f80e590d95442d579bd6cf749a35ff4bbdc6373fa669b89c7fce4e'
          )
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
        let(:signer) { double('sigv4a_signer') }
        let(:arn) { 'arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap' }

        it 'creates a presigned url with sigv4a' do
          # Signer is created twice, return a normal one first
          expect(Aws::Sigv4::Signer).to receive(:new).and_call_original
          expect(Aws::Sigv4::Signer)
            .to receive(:new)
                  .with(hash_including(
                          service: 's3',
                          region: '*',
                          signing_algorithm: :sigv4a
                        ))
                  .and_return(signer)

          expect(signer)
            .to receive(:presign_url)
                  .with(hash_including(
                          url: URI.parse('https://mfzwi23gnjvgw.mrap.accesspoint.s3-global.amazonaws.com/obj')
                        ))

          subject.presigned_url(:get_object, bucket: arn, key: 'obj')
        end

        context 's3_disable_multiregion_access_points is true' do
          let(:client) do
            Aws::S3::Client.new(
              stub_responses: true,
              s3_disable_multiregion_access_points: true
            )
          end

          it 'raises an ArgumentError' do
            arn = 'arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap'
            expect do
              subject.presigned_url(:get_object, bucket: arn, key: 'obj')
            end.to raise_error(ArgumentError)
          end
        end
      end
    end
  end
end
