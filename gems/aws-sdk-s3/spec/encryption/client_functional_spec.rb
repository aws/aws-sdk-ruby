require_relative '../spec_helper'
require 'base64'
require 'openssl'

module Aws
  module S3
    module Encryption

      describe Client do

        before do
          if RUBY_VERSION.match(/1.9/)
            skip('authenticated encryption not supported by OpenSSL in Ruby version ~> 1.9')
          end
          # suppress deprecation warning
          allow_any_instance_of(Client).to receive(:warn)
        end

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
        # during get get_object is called twice, once to get the full body and
        # again with a range to get just the auth_tag
        def stub_get(s3_client, data, stub_auth_tag)
          resp_headers = Hash[*data[:metadata].map { |k, v| ["x-amz-meta-#{k.to_s}", v] }.flatten(1)]
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

        context 'when using a symmetric (AES) key' do
          let(:key) do
            OpenSSL::Cipher.new('aes-256-gcm').random_key
          end

          let(:v2_options) do
            {
              client: s3_client,
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              content_encryption_schema: :aes_gcm_no_padding,
              security_profile: :v2
            }
          end

          it 'can encrypt and decrypt plain text' do
            client = Aws::S3::Encryption::Client.new(encryption_key: key, client: s3_client)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            expect(data[:metadata]).to include('x-amz-key')
            expect(data[:metadata]).not_to include('x-amz-cek-alg', 'x-amz-wrap-alg')

            stub_get(s3_client, data, true)
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end

          it 'supports #get_object with a block' do
            client = Aws::S3::Encryption::Client.new(encryption_key: key, client: s3_client)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            stub_get(s3_client, data, true)
            decrypted = ''
            client.get_object(bucket: test_bucket, key: test_object) do |chunk|
              decrypted += chunk
            end
            expect(decrypted).to eq(plaintext)
          end

          it 'can can use envelope_location: instruction_file' do
            client = Aws::S3::Encryption::Client.new(
              encryption_key: key, client: s3_client, envelope_location: :instruction_file)
            data = {}
            s3_client.stub_responses(:put_object, ->(context) {
              if context.params[:key].include? '.instruction'
                data[:metadata] = JSON.load(context.params[:body])
              else
                data[:enc_body] = context.params[:body].read
              end
              {}
            })
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            resp_headers = { 'content-length' => data[:enc_body].length }
            auth_tag = data[:enc_body].unpack('C*')[-16, 16].pack('C*')

            s3_client.stub_responses(
              :get_object,
              {status_code: 200, body: data[:enc_body], headers: resp_headers},
              {body: Json.dump(data[:metadata])},
              {body: auth_tag}
            )
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end

          it 'can decrypt an object encrypted using the V2 client' do
            client_v1 = Aws::S3::Encryption::Client.new(encryption_key: key, client: s3_client)
            client_v2 = Aws::S3::EncryptionV2::Client.new(v2_options)

            data = stub_put(s3_client)
            client_v2.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            stub_get(s3_client, data, true)
            decrypted = client_v1.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end

          it 'decrypts the object with response target under retry' do
            client = Aws::S3::Encryption::Client.new(
              encryption_key: key, client: s3_client)
            data = {}
            data = stub_put(s3_client)
            s3_client.handlers.add(Aws::Plugins::RetryErrors::LegacyHandler, step: :sign, priority: 99)

            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            resp_headers = Hash[*data[:metadata].map { |k, v| ["x-amz-meta-#{k.to_s}", v] }.flatten(1)]
            resp_headers['content-length'] = data[:enc_body].length
            auth_tag = data[:enc_body].unpack('C*')[-16, 16].pack('C*')

            s3_client.stub_responses(
              :get_object,
              Seahorse::Client::NetworkingError.new(RuntimeError.new),
              {status_code: 200, body: data[:enc_body], headers: resp_headers},
              {body: auth_tag}
            )
            decrypted = StringIO.new
            client.get_object(bucket: test_bucket, key: test_object, response_target: decrypted)
            expect(decrypted.read).to eq(plaintext)
          end

          it 'raises an ArgumentError when the client has an RSA key' do
            client_v2 = Aws::S3::EncryptionV2::Client.new(v2_options)
            data = stub_put(s3_client)
            client_v2.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            client_rsa = Aws::S3::Encryption::Client.new(
              encryption_key: OpenSSL::PKey::RSA.new(1024), client: s3_client)
            stub_get(s3_client, data, true)
            expect do
              client_rsa.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(ArgumentError)
          end

          it 'raises an ArgumentError when the client has a KMS key' do
            client_v2 = Aws::S3::EncryptionV2::Client.new(v2_options)
            data = stub_put(s3_client)
            client_v2.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            client_kms = Aws::S3::Encryption::Client.new(
              kms_key_id: 'kms_key_id', client: s3_client,
              kms_client: KMS::Client.new(stub_responses: true)
            )
            stub_get(s3_client, data, true)
            expect do
              client_kms.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(ArgumentError)
          end
        end

        context 'when using an asymmetric (RSA) key' do
          let(:key) do
            OpenSSL::PKey::RSA.new(1024)
          end

          let(:v2_options) do
            {
              client: s3_client,
              encryption_key: key,
              key_wrap_schema: :rsa_oaep_sha1,
              content_encryption_schema: :aes_gcm_no_padding,
              security_profile: :v2
            }
          end

          it 'can encrypt and decrypt plain text' do
            client = Aws::S3::Encryption::Client.new(encryption_key: key, client: s3_client)

            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            stub_get(s3_client, data, true)
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end

          it 'can decrypt an object encrypted using the V2 client' do
            client_v1 = Aws::S3::Encryption::Client.new(encryption_key: key, client: s3_client)
            client_v2 = Aws::S3::EncryptionV2::Client.new(v2_options)

            data = stub_put(s3_client)
            client_v2.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            stub_get(s3_client, data, true)
            decrypted = client_v1.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end

          it 'raises an ArgumentError when the client has an AES key' do
            client_v2 = Aws::S3::EncryptionV2::Client.new(v2_options)
            data = stub_put(s3_client)
            client_v2.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            client_aes = Aws::S3::Encryption::Client.new(
              encryption_key: OpenSSL::Cipher.new('aes-256-gcm').random_key, client: s3_client)
            stub_get(s3_client, data, true)
            expect do
              client_aes.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(ArgumentError)
          end
        end

        context 'when using a KMS Key' do
          let(:kms_client) { KMS::Client.new(stub_responses: true) }
          let(:kms_key_id) { 'kms_key_id' }
          let(:kms_ciphertext_blob) do
            Base64.decode64("AQIDAHiWj6qDEnwihp7W7g6VZb1xqsat5jdSUdEaGhgZepHdLAGASCQI7LZz\nz7GzCpm6y4sHAAAAfjB8BgkqhkiG9w0BBwagbzBtAgEAMGgGCSqGSIb3DQEH\nATAeBglghkgBZQMEAS4wEQQMJMJe6d8DkRTWwlvtAgEQgDtBCwiibCTS8pb7\n6BYKklVjy+CmO9q3r6y4u/9jJ8lk9eg5GwiskmcBtPMcWogMzx/vh+/65Cjb\nsQBpLQ==\n")
          end

          let(:kms_plaintext) do
            Base64.decode64("5V7JWe+UDRhv66TaDg+tP6JONf/GkTdXk6Jq61weM+w=\n")
          end

          let(:v2_options) do
            {
              client: s3_client,
              kms_key_id: kms_key_id,
              key_wrap_schema: :kms_context,
              content_encryption_schema: :aes_gcm_no_padding,
              security_profile: :v2,
              kms_client: kms_client
            }
          end


          it 'can encrypt and decrypt plain text' do
            client = Aws::S3::Encryption::Client.new(
              kms_key_id: kms_key_id, client: s3_client, kms_client: kms_client)

            data = stub_put(s3_client)
            kms_client.stub_responses(
              :generate_data_key,
              {
                key_id: kms_key_id,
                ciphertext_blob: kms_ciphertext_blob,
                plaintext: kms_plaintext
              }
            )
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            expect(data[:metadata]['x-amz-cek-alg']).to eq('AES/CBC/PKCS5Padding')
            expect(data[:metadata]['x-amz-wrap-alg']).to eq('kms')

            stub_get(s3_client, data, true)
            kms_client.stub_responses(
              :decrypt,
              {
                key_id: kms_key_id,
                plaintext: kms_plaintext,
                encryption_algorithm: "SYMMETRIC_DEFAULT"
              }
            )
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end

          it 'can decrypt an object encrypted using the V2 client' do
            client_v1 = Aws::S3::Encryption::Client.new(
              kms_key_id: kms_key_id, client: s3_client, kms_client: kms_client)
            client_v2 = Aws::S3::EncryptionV2::Client.new(v2_options)

            data = stub_put(s3_client)
            kms_client.stub_responses(
              :generate_data_key,
              {
                key_id: kms_key_id,
                ciphertext_blob: kms_ciphertext_blob,
                plaintext: kms_plaintext
              }
            )
            client_v2.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            stub_get(s3_client, data, true)
            kms_client.stub_responses(
              :decrypt,
              {
                key_id: kms_key_id,
                plaintext: kms_plaintext,
                encryption_algorithm: "SYMMETRIC_DEFAULT"
              }
            )
            decrypted = client_v1.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end

          it 'raises a DecryptionError when the cek_alg has been modified' do
            client = Aws::S3::Encryption::Client.new(
              kms_key_id: kms_key_id, client: s3_client, kms_client: kms_client)

            # Need to use the v2 client to write the test data.
            # V1 does not support writing the correct enc context for this check
            client_v2 = Aws::S3::EncryptionV2::Client.new(v2_options)

            data = stub_put(s3_client)
            kms_client.stub_responses(
              :generate_data_key,
              {
                key_id: kms_key_id,
                ciphertext_blob: kms_ciphertext_blob,
                plaintext: kms_plaintext
              }
            )
            client_v2.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            data[:metadata]['x-amz-cek-alg'] = 'AES/CBC/PKCS5Padding'

            stub_get(s3_client, data, true)
            kms_client.stub_responses(
              :decrypt,
              {
                key_id: kms_key_id,
                plaintext: kms_plaintext,
                encryption_algorithm: "SYMMETRIC_DEFAULT"
              }
            )
            expect do
              client.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(Errors::DecryptionError, /does not match the value in the encryption context/)
          end

          it 'raises an ArgumentError when the client is configured with an AES key' do
            client = Aws::S3::EncryptionV2::Client.new(v2_options)

            data = stub_put(s3_client)
            kms_client.stub_responses(
              :generate_data_key,
              {
                key_id: kms_key_id,
                ciphertext_blob: kms_ciphertext_blob,
                plaintext: kms_plaintext
              }
            )
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            client_aes = Aws::S3::Encryption::Client.new(
              encryption_key: OpenSSL::Cipher.new('aes-256-gcm').random_key, client: s3_client)
            stub_get(s3_client, data, true)
            expect do
              client_aes.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(ArgumentError)
          end
        end
      end
    end
  end
end
