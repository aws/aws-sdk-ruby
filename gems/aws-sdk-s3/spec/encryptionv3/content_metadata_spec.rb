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

            it 'writes wrapping algorithm value 02 for AES/GCM' do
              ##= ../specification/s3-encryption/data-format/content-metadata.md#v3-only
              ##= type=test
              ##% - The wrapping algorithm value "02" MUST be translated to AES/GCM upon retrieval, and vice versa on write.

              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
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

            it 'uses Material Description for AES/GCM wrapping' do
              ##= ../specification/s3-encryption/data-format/content-metadata.md#v3-only
              ##= type=test
              ##% The Material Description MUST be used for wrapping algorithms `AES/GCM` (`02`) and `RSA-OAEP-SHA1` (`22`).

              materials_desc = '{"description":"test-materials"}'
              client = Client.new(options.merge(materials_description: materials_desc))
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              # For AES/GCM (02), material description should be present
              expect(data[:metadata]).to have_key('x-amz-m')
              expect(data[:metadata]['x-amz-w']).to eq('02')
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

            it 'writes wrapping algorithm value 22 for RSA-OAEP-SHA1' do
              ##= ../specification/s3-encryption/data-format/content-metadata.md#v3-only
              ##= type=test
              ##% - The wrapping algorithm value "22" MUST be translated to RSA-OAEP-SHA1 upon retrieval, and vice versa on write.

              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              expect(data[:metadata]['x-amz-w']).to eq('22')
            end

            it 'uses Material Description for RSA-OAEP-SHA1 wrapping' do
              ##= ../specification/s3-encryption/data-format/content-metadata.md#v3-only
              ##= type=test
              ##% The Material Description MUST be used for wrapping algorithms `AES/GCM` (`02`) and `RSA-OAEP-SHA1` (`22`).

              materials_desc = '{"description":"rsa-test"}'
              client = Client.new(options.merge(materials_description: materials_desc))
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              # For RSA-OAEP-SHA1 (22), material description should be present
              expect(data[:metadata]).to have_key('x-amz-m')
              expect(data[:metadata]['x-amz-m']).to eq(materials_desc)
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

            it 'writes wrapping algorithm value 12 for kms+context' do
              ##= ../specification/s3-encryption/data-format/content-metadata.md#v3-only
              ##= type=test
              ##% - The wrapping algorithm value "12" MUST be translated to kms+context upon retrieval, and vice versa on write.

              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
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

            it 'uses Encryption Context for kms+context wrapping' do
              ##= ../specification/s3-encryption/data-format/content-metadata.md#v3-only
              ##= type=test
              ##% The Encryption Context value MUST be used for wrapping algorithm `kms+context` or `12`.

              enc_context = { 'department' => 'finance', 'project' => 'alpha' }
              client = Client.new(options)
              data = stub_put(s3_client)
              client.put_object(
                bucket: test_bucket,
                key: test_object,
                body: plaintext,
                kms_encryption_context: enc_context
              )
              
              # For kms+context (12), encryption context should be present
              expect(data[:metadata]).to have_key('x-amz-t')
              expect(data[:metadata]['x-amz-w']).to eq('12')
            end
          end
        end

        context 'Default Material Description' do
          it 'defaults material description to empty map when not present' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#v3-only
            ##= type=test
            ##% If the mapkey x-amz-m is not present, the default Material Description value MUST be set to an empty map (`{}`).

            key = OpenSSL::Cipher.new('aes-256-gcm').random_key
            options = {
              client: s3_client,
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              envelope_location: :metadata
            }
            
            client = Client.new(options)
            data = stub_put(s3_client)
            
            # Put object without materials_description parameter
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # The default Material Description value should be an empty map
            expect(data[:metadata]).to have_key('x-amz-m')
            expect(data[:metadata]['x-amz-m']).to eq('{}')
          end
        end

        context 'Algorithm Suite and Message Format Version Compatibility' do
          it 'allows ALG_AES_256_CBC_IV16_NO_KDF with V1 format' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#algorithm-suite-and-message-format-version-compatibility
            ##= type=test
            ##% Objects encrypted with ALG_AES_256_CBC_IV16_NO_KDF MAY use either the V1 or V2 message format version.

            # V1 client uses ALG_AES_256_CBC_IV16_NO_KDF with V1 format
            # This demonstrates that CBC is not restricted to a single format version
            cbc_key = OpenSSL::Cipher.new('aes-256-cbc').random_key
            client_v1 = Aws::S3::Encryption::Client.new(
              encryption_key: cbc_key,
              client: s3_client
            )
            
            data = stub_put(s3_client)
            client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # Verify V1 format is used (has x-amz-key, no x-amz-key-v2 or x-amz-3)
            expect(data[:metadata]).to have_key('x-amz-key')
            expect(data[:metadata]).not_to have_key('x-amz-key-v2')
            expect(data[:metadata]).not_to have_key('x-amz-3')
            
            # Verify it uses CBC algorithm (V1 default)
            expect(data[:metadata]).to have_key('x-amz-iv')
            expect(data[:metadata]).to have_key('x-amz-matdesc')
          end

          it 'requires ALG_AES_256_GCM_IV12_TAG16_NO_KDF to use V2 format only' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#algorithm-suite-and-message-format-version-compatibility
            ##= type=test
            ##% Objects encrypted with ALG_AES_256_GCM_IV12_TAG16_NO_KDF MUST use the V2 message format version only.

            # V3 client with forbid_encrypt_allow_decrypt uses ALG_AES_256_GCM_IV12_TAG16_NO_KDF
            # which corresponds to V2 format
            gcm_key = OpenSSL::Cipher.new('aes-256-gcm').random_key
            client = Client.new(
              client: s3_client,
              encryption_key: gcm_key,
              key_wrap_schema: :aes_gcm,
              commitment_policy: :forbid_encrypt_allow_decrypt,
              content_encryption_schema: :aes_gcm_no_padding
            )
            
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # Verify V2 format is used (has x-amz-key-v2, not x-amz-key or x-amz-3)
            expect(data[:metadata]).to have_key('x-amz-key-v2')
            expect(data[:metadata]).not_to have_key('x-amz-key')
            expect(data[:metadata]).not_to have_key('x-amz-3')
            
            # Verify it uses GCM algorithm with V2 markers
            expect(data[:metadata]['x-amz-cek-alg']).to eq('AES/GCM/NoPadding')
            expect(data[:metadata]).to have_key('x-amz-wrap-alg')
            expect(data[:metadata]).to have_key('x-amz-iv')
          end

          it 'requires ALG_AES_256_GCM_HKDF_SHA512_COMMIT_KEY to use V3 format only' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#algorithm-suite-and-message-format-version-compatibility
            ##= type=test
            ##% Objects encrypted with ALG_AES_256_GCM_HKDF_SHA512_COMMIT_KEY MUST use the V3 message format version only.

            # V3 client with default settings uses ALG_AES_256_GCM_HKDF_SHA512_COMMIT_KEY
            gcm_key = OpenSSL::Cipher.new('aes-256-gcm').random_key
            client = Client.new(
              client: s3_client,
              encryption_key: gcm_key,
              key_wrap_schema: :aes_gcm
            )
            
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # Verify V3 format is used (has x-amz-3, not x-amz-key or x-amz-key-v2)
            expect(data[:metadata]).to have_key('x-amz-3')
            expect(data[:metadata]).not_to have_key('x-amz-key')
            expect(data[:metadata]).not_to have_key('x-amz-key-v2')
            
            # Verify it uses the HKDF algorithm (suite ID 115)
            expect(data[:metadata]['x-amz-c']).to eq('115')
            
            # Verify V3-specific keys are present
            expect(data[:metadata]).to have_key('x-amz-w')
            expect(data[:metadata]).to have_key('x-amz-d')
            expect(data[:metadata]).to have_key('x-amz-i')
          end
        end
      end
    end
  end
end
