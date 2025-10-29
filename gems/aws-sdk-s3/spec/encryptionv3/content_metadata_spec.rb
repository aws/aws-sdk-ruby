require_relative '../spec_helper'
require 'base64'
require 'openssl'

module Aws
  module S3
    module EncryptionV3
      describe 'Content Metadata Mapkeys' do
        # Helper to capture metadata from put_object
        def stub_put(s3_client)
          data = {}
          s3_client.stub_responses(:put_object, lambda { |context|
            data[:metadata] = context.params[:metadata]
            data[:enc_body] = context.params[:body].read
            {}
          })
          data
        end

        let(:plaintext) { 'super secret plain text' }
        let(:test_bucket) { 'test-bucket' }
        let(:test_object) { 'test-object' }
        let(:s3_client) { S3::Client.new(stub_responses: true) }

        context 'V1 Format with Object Metadata' do
          let(:key) { OpenSSL::Cipher.new('aes-256-cbc').random_key }

          it 'has x-amz-key in metadata' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
            ##= type=test
            ##% - The mapkey "x-amz-key" MUST be present for V1 format objects.

            client = Aws::S3::Encryption::Client.new(
              encryption_key: key,
              client: s3_client
            )
            
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            expect(data[:metadata]).to have_key('x-amz-key')
            expect(data[:metadata]['x-amz-key']).not_to be_empty
          end

          it 'has x-amz-matdesc in metadata' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
            ##= type=test
            ##% - The mapkey "x-amz-matdesc" MUST be present for V1 format objects.

            client = Aws::S3::Encryption::Client.new(
              encryption_key: key,
              client: s3_client
            )
            
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            expect(data[:metadata]).to have_key('x-amz-matdesc')
            expect(data[:metadata]['x-amz-matdesc']).not_to be_empty
          end

          it 'has x-amz-iv in metadata' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
            ##= type=test
            ##% - The mapkey "x-amz-iv" MUST be present for V1 format objects.

            client = Aws::S3::Encryption::Client.new(
              encryption_key: key,
              client: s3_client
            )
            
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            expect(data[:metadata]).to have_key('x-amz-iv')
            expect(data[:metadata]['x-amz-iv']).not_to be_empty
          end

          it 'has x-amz-unencrypted-content-length in metadata' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
            ##= type=test
            ##% - The mapkey "x-amz-unencrypted-content-length" SHOULD be present for V1 format objects.

            client = Aws::S3::Encryption::Client.new(
              encryption_key: key,
              client: s3_client
            )
            
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            expect(data[:metadata]).to have_key('x-amz-unencrypted-content-length')
            expect(data[:metadata]['x-amz-unencrypted-content-length']).to eq(plaintext.bytesize)
          end
        end

        context 'V2 Format with Object Metadata' do
          let(:key) { OpenSSL::Cipher.new('aes-256-gcm').random_key }
          let(:options) do
            {
              client: s3_client,
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              commitment_policy: :forbid_encrypt_allow_decrypt,
              content_encryption_schema: :aes_gcm_no_padding,
              envelope_location: :metadata
            }
          end

          it 'has x-amz-key-v2 in metadata' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
            ##= type=test
            ##% - The mapkey "x-amz-key-v2" MUST be present for V2 format objects.

            client = Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            expect(data[:metadata]).to have_key('x-amz-key-v2')
            expect(data[:metadata]['x-amz-key-v2']).not_to be_empty
          end

          it 'has x-amz-matdesc in metadata' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
            ##= type=test
            ##% - The mapkey "x-amz-matdesc" MUST be present for V2 format objects.

            client = Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            expect(data[:metadata]).to have_key('x-amz-matdesc')
            expect(data[:metadata]['x-amz-matdesc']).not_to be_empty
          end

          it 'has x-amz-iv in metadata' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
            ##= type=test
            ##% - The mapkey "x-amz-iv" MUST be present for V2 format objects.

            client = Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            expect(data[:metadata]).to have_key('x-amz-iv')
            expect(data[:metadata]['x-amz-iv']).not_to be_empty
          end

          it 'has x-amz-wrap-alg in metadata' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
            ##= type=test
            ##% - The mapkey "x-amz-wrap-alg" MUST be present for V2 format objects.

            client = Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            expect(data[:metadata]).to have_key('x-amz-wrap-alg')
            expect(data[:metadata]['x-amz-wrap-alg']).to eq('AES/GCM')
          end

          it 'has x-amz-cek-alg in metadata' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
            ##= type=test
            ##% - The mapkey "x-amz-cek-alg" MUST be present for V2 format objects.

            client = Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            expect(data[:metadata]).to have_key('x-amz-cek-alg')
            expect(data[:metadata]['x-amz-cek-alg']).to eq('AES/GCM/NoPadding')
          end
        end

        context 'V3 Format with Object Metadata' do
          context 'with AES key' do
            let(:key) { OpenSSL::Cipher.new('aes-256-gcm').random_key }
            let(:options) do
              {
                client: s3_client,
                encryption_key: key,
                key_wrap_schema: :aes_gcm,
                envelope_location: :metadata
              }
            end

            it 'has x-amz-c in metadata' do
              ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
              ##= type=test
              ##% - The mapkey "x-amz-c" MUST be present for V3 format objects.

              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]).to have_key('x-amz-c')
              expect(data[:metadata]['x-amz-c']).to eq('115')
            end

            it 'has x-amz-3 in metadata' do
              ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
              ##= type=test
              ##% - The mapkey "x-amz-3" MUST be present for V3 format objects.

              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]).to have_key('x-amz-3')
              expect(data[:metadata]['x-amz-3']).not_to be_empty
            end

            it 'has x-amz-w in metadata' do
              ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
              ##= type=test
              ##% - The mapkey "x-amz-w" MUST be present for V3 format objects.

              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]).to have_key('x-amz-w')
              expect(data[:metadata]['x-amz-w']).to eq('02')
            end

            it 'has x-amz-d in metadata' do
              ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
              ##= type=test
              ##% - The mapkey "x-amz-d" MUST be present for V3 format objects.

              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]).to have_key('x-amz-d')
              expect(data[:metadata]['x-amz-d']).not_to be_empty
            end

            it 'has x-amz-i in metadata' do
              ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
              ##= type=test
              ##% - The mapkey "x-amz-i" MUST be present for V3 format objects.

              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]).to have_key('x-amz-i')
              expect(data[:metadata]['x-amz-i']).not_to be_empty
            end

            it 'has x-amz-m in metadata when materials description is provided' do
              ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
              ##= type=test
              ##% - The mapkey "x-amz-m" SHOULD be present for V3 format objects that use Raw Keyring Material Description.

              materials_desc = '{"description":"test-materials"}'
              client = Client.new(options.merge(materials_description: materials_desc))
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]).to have_key('x-amz-m')
              expect(data[:metadata]['x-amz-m']).to eq(materials_desc)
            end
          end

          context 'with RSA key' do
            let(:key) { OpenSSL::PKey::RSA.new(1024) }
            let(:options) do
              {
                client: s3_client,
                encryption_key: key,
                key_wrap_schema: :rsa_oaep_sha1,
                envelope_location: :metadata
              }
            end

            it 'has x-amz-c in metadata' do
              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]).to have_key('x-amz-c')
              expect(data[:metadata]['x-amz-c']).to eq('115')
            end

            it 'has x-amz-3 in metadata' do
              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]).to have_key('x-amz-3')
              expect(data[:metadata]['x-amz-3']).not_to be_empty
            end

            it 'has x-amz-w in metadata with value 22 for RSA-OAEP-SHA1' do
              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]).to have_key('x-amz-w')
              expect(data[:metadata]['x-amz-w']).to eq('22')
            end

            it 'has x-amz-d in metadata' do
              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]).to have_key('x-amz-d')
              expect(data[:metadata]['x-amz-d']).not_to be_empty
            end

            it 'has x-amz-i in metadata' do
              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]).to have_key('x-amz-i')
              expect(data[:metadata]['x-amz-i']).not_to be_empty
            end
          end

          context 'with KMS key' do
            let(:kms_client) { KMS::Client.new(stub_responses: true) }
            let(:kms_key_id) { 'arn:aws:kms:us-west-2:123456789012:key/12345678-1234-1234-1234-123456789012' }
            let(:kms_ciphertext_blob) do
              Base64.decode64("AQIDAHiWj6qDEnwihp7W7g6VZb1xqsat5jdSUdEaGhgZepHdLAGASCQI7LZz\nz7GzCpm6y4sHAAAAfjB8BgkqhkiG9w0BBwagbzBtAgEAMGgGCSqGSIb3DQEH\nATAeBglghkgBZQMEAS4wEQQMJMJe6d8DkRTWwlvtAgEQgDtBCwiibCTS8pb7\n6BYKklVjy+CmO9q3r6y4u/9jJ8lk9eg5GwiskmcBtPMcWogMzx/vh+/65Cjb\nsQBpLQ==\n")
            end
            let(:kms_plaintext) do
              Base64.decode64("5V7JWe+UDRhv66TaDg+tP6JONf/GkTdXk6Jq61weM+w=\n")
            end
            let(:options) do
              {
                client: s3_client,
                kms_key_id: kms_key_id,
                key_wrap_schema: :kms_context,
                kms_client: kms_client,
                envelope_location: :metadata
              }
            end

            before do
              kms_client.stub_responses(
                :generate_data_key,
                {
                  key_id: kms_key_id,
                  ciphertext_blob: kms_ciphertext_blob,
                  plaintext: kms_plaintext
                }
              )
            end

            it 'has x-amz-c in metadata' do
              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]).to have_key('x-amz-c')
              expect(data[:metadata]['x-amz-c']).to eq('115')
            end

            it 'has x-amz-3 in metadata' do
              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]).to have_key('x-amz-3')
              expect(data[:metadata]['x-amz-3']).not_to be_empty
            end

            it 'has x-amz-w in metadata with value 12 for KMS' do
              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]).to have_key('x-amz-w')
              expect(data[:metadata]['x-amz-w']).to eq('12')
            end

            it 'has x-amz-d in metadata' do
              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]).to have_key('x-amz-d')
              expect(data[:metadata]['x-amz-d']).not_to be_empty
            end

            it 'has x-amz-i in metadata' do
              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]).to have_key('x-amz-i')
              expect(data[:metadata]['x-amz-i']).not_to be_empty
            end

            it 'has x-amz-t in metadata when KMS encryption context is provided' do
              ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
              ##= type=test
              ##% - The mapkey "x-amz-t" SHOULD be present for V3 format objects that use KMS Encryption Context.

              enc_context = { 'department' => 'finance', 'project' => 'alpha' }
              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(
                bucket: test_bucket,
                key: test_object,
                body: plaintext,
                kms_encryption_context: enc_context
              )
              
              expect(data[:metadata]).to have_key('x-amz-t')
              stored_context = JSON.parse(data[:metadata]['x-amz-t'])
              expect(stored_context).to include('department' => 'finance')
              expect(stored_context).to include('project' => 'alpha')
            end
          end
        end
      end
    end
  end
end
