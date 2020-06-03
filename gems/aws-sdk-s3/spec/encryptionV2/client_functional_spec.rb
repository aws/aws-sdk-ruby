require_relative '../spec_helper'
require 'base64'
require 'openssl'

module Aws
  module S3
    module EncryptionV2

      describe Client do

        # Captures the data (metadata and body) put to an s3 object
        def stub_put(s3_client)
          data = {}
          s3_client.stub_responses(:put_object, ->(context) {
            data[:metadata] = context.params[:metadata]
            data[:enc_body] = context.params[:body].read
            {}
          })
          data
        end

        # Given data from stub_put, stub a get for the same object
        def stub_get(s3_client, data, stub_auth_tag)
          resp_headers = data[:metadata].map { |k, v| ["x-amz-meta-#{k.to_s}", v] }.to_h
          resp_headers['content-length'] = data[:enc_body].length
          if stub_auth_tag
            auth_tag = data[:enc_body].unpack('C*')[-16, 16].pack('C*')
          else
            auth_tag = nil
          end
          s3_client.stub_responses(
            :get_object,
            {status_code: 200, body: data[:enc_body], headers: resp_headers},
            {body: auth_tag}
          )
        end

        let(:plaintext) { 'super secret plain text' }
        let(:test_bucket) { 'test_bucket' }
        let(:test_object) { 'test_object' }

        let(:s3_client) { S3::Client.new(stub_responses: true) }

        context 'customer provides symmetric (AES) key' do
          let(:aes_key) do
            OpenSSL::Cipher::AES.new(256, :GCM).random_key
            #Base64.decode64("xmcwx8x67G2hbjRTsalme9ddO45hRIWrATTqcvqn5xk=\n")
          end

          it 'can encrypt and decrypt plain text' do
            client = Aws::S3::EncryptionV2::Client.new(encryption_key: aes_key, client: s3_client)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            stub_get(s3_client, data, true)
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end

          it 'can decrypt an object encrypted using old algorithm' do
            client_v1 = Aws::S3::Encryption::Client.new(encryption_key: aes_key, client: s3_client)
            client_v2 = Aws::S3::EncryptionV2::Client.new(encryption_key: aes_key, client: s3_client)

            data = stub_put(s3_client)
            client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            stub_get(s3_client, data, false)
            decrypted = client_v2.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end
        end

        context 'customer provides asymmetric (RSA) key' do
          let(:key) do
            OpenSSL::PKey::RSA.new(1024)
          end

          it 'can encrypt and decrypt plain text' do
            client = Aws::S3::EncryptionV2::Client.new(encryption_key: key, client: s3_client)

            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            stub_get(s3_client, data, true)
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end

          it 'can decrypt an object encrypted using old algorithm' do
            client_v1 = Aws::S3::Encryption::Client.new(encryption_key: key, client: s3_client)
            client_v2 = Aws::S3::EncryptionV2::Client.new(encryption_key: key, client: s3_client)

            data = stub_put(s3_client)
            client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            stub_get(s3_client, data, false)
            decrypted = client_v2.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end
        end
      end

      # TODO: Tests of KMS

    end
  end
end
