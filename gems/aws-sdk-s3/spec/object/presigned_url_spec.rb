# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module S3
    describe Object do
      let(:client) do
        Aws::S3::Client.new(
          region: 'us-east-1',
          access_key_id: 'ACCESS_KEY_ID',
          secret_access_key: 'SECRET_ACCESS_KEY'
        )
      end

      let(:bucket_name) { 'my.bucket.com' }
      let(:key) { 'test.txt' }

      describe '#presigned_url' do
        context 'method name automatic suffix' do
          let(:presigner) do
            double("DummyPresigner", presigned_url: 'some url')
          end

          before do
            allow(Aws::S3::Presigner).to receive(:new).and_return(presigner)
          end

          method_expectations = {
            # HTTP Methods
            delete: :delete_object,
            head: :head_object,
            get: :get_object,
            put: :put_object,
            # Non-HTTP methods
            create_multipart_upload: :create_multipart_upload,
            list_multipart_uploads: :list_multipart_uploads,
            complete_multipart_upload: :complete_multipart_upload,
            abort_multipart_upload: :abort_multipart_upload,
            list_parts: :list_parts,
            upload_part: :upload_part
          }

          method_expectations.each do |method, expected_method|
            it "rewrites #{method} as #{expected_method} to the Presigner" do
              obj = Object.new(
                bucket_name: bucket_name,
                key: key,
                client: client
              )

              expect(presigner).to receive(:presigned_url).with(
                expected_method,
                bucket: bucket_name,
                key: key
              )

              obj.presigned_url(method)
            end
          end
        end

        # from http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
        it 'generates a valid presigned url' do
          obj = Object.new(
            bucket_name: 'examplebucket',
            key: 'test.txt',
            client: client
          )

          now = Time.parse('20130524T000000Z')
          allow(Time).to receive(:now).and_return(now)
          url = obj.presigned_url(:get, expires_in: 86_400)
          expect(url).to eq(
            'https://examplebucket.s3.amazonaws.com/test.txt?X-Amz-Algorithm='\
            'AWS4-HMAC-SHA256&X-Amz-Credential=ACCESS_KEY_ID%2F20130524%2F'\
            'us-east-1%2Fs3%2Faws4_request&X-Amz-Date=20130524T000000Z&'\
            'X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature='\
            '5da845a038b194a3826362ecd698f78fb1e26cb44b25af49263f0a0983870f57'
          )
        end

        it 'can use the bucket name to create a virtual hosted url' do
          obj = Object.new(
            bucket_name: 'my.bucket.com',
            key: 'test.txt',
            client: client
          )

          url = obj.presigned_url(:get, virtual_host: true)
          expect(url).to match(%r{^https://my\.bucket\.com(:443)?/})
        end

        it 'rejects empty keys' do
          obj = Object.new(
            'bucket-name',
            '',
            client: client
          )
          expect(obj.key).to eq('')
          expect do
            obj.presigned_url(:get)
          end.to raise_error(ArgumentError, /:key must not be blank/)
        end
      end

      describe '#presigned_request' do
        context 'method name automatic suffix' do
          let(:presigner) do
            double("DummyPresigner",
              presigned_request: ['some url', {"some" => "header"}])
          end

          before do
            allow(Aws::S3::Presigner).to receive(:new).and_return(presigner)
          end

          method_expectations = {
            # HTTP Methods
            delete: :delete_object,
            head: :head_object,
            get: :get_object,
            put: :put_object,
            # Non-HTTP methods
            create_multipart_upload: :create_multipart_upload,
            list_multipart_uploads: :list_multipart_uploads,
            complete_multipart_upload: :complete_multipart_upload,
            abort_multipart_upload: :abort_multipart_upload,
            list_parts: :list_parts,
            upload_part: :upload_part
          }

          method_expectations.each do |method, expected_method|
            it "rewrites #{method} as #{expected_method} to the Presigner" do
              obj = Object.new(
                bucket_name: bucket_name,
                key: key,
                client: client
              )

              expect(presigner).to receive(:presigned_request).with(
                expected_method,
                bucket: bucket_name,
                key: key
              )

              obj.presigned_request(method)
            end
          end
        end

        # from http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
        it 'generates a valid presigned request' do
          obj = Object.new(
            bucket_name: 'examplebucket',
            key: 'test.txt',
            client: client
          )

          now = Time.parse('20130524T000000Z')
          allow(Time).to receive(:now).and_return(now)
          url, headers = obj.presigned_request(
            :get, expires_in: 86_400, request_payer: 'peccy')
          expect(url).to eq(
            'https://examplebucket.s3.amazonaws.com/test.txt?X-Amz-Algorithm='\
            'AWS4-HMAC-SHA256&X-Amz-Credential=ACCESS_KEY_ID%2F20130524%2F'\
            'us-east-1%2Fs3%2Faws4_request&X-Amz-Date=20130524T000000Z'\
            '&X-Amz-Expires=86400&X-Amz-SignedHeaders=host%3B'\
            'x-amz-request-payer&X-Amz-Signature='\
            '7adcfb1b638c3198eca2c9d4637394e2d90ffe2bcc717056ef8e5eb4d73946b2'
          )
          expect(headers).to eq({"x-amz-request-payer" => "peccy"})
        end

        it 'can use the bucket name to create a virtual hosted url' do
          obj = Object.new(
            bucket_name: 'my.bucket.com',
            key: 'test.txt',
            client: client
          )

          url, _headers = obj.presigned_request(:get, virtual_host: true)
          expect(url).to match(%r{^https://my\.bucket\.com(:443)?/})
        end

        it 'rejects empty keys' do
          obj = Object.new(
            'bucket-name',
            '',
            client: client
          )
          expect(obj.key).to eq('')
          expect do
            obj.presigned_request(:get)
          end.to raise_error(ArgumentError, /:key must not be blank/)
        end
      end
    end
  end
end
