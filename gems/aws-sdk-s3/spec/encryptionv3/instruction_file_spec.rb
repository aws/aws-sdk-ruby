require_relative '../spec_helper'
require 'base64'
require 'openssl'

module Aws
  module S3
    module EncryptionV3
      describe 'Instruction File' do
        let(:plaintext) { 'super secret plain text' }
        let(:test_bucket) { 'test-bucket' }
        let(:test_object) { 'test-object' }
        let(:s3_client) { S3::Client.new(stub_responses: true) }

        # Helper to capture put_object calls
        def stub_put_with_instruction_file(s3_client)
          data = { object_metadata: nil, object_body: nil, instruction_metadata: nil }
          s3_client.stub_responses(:put_object, lambda { |context|
            if context.params[:key].end_with?('.instruction')
              data[:instruction_metadata] = JSON.parse(context.params[:body])
            else
              data[:object_metadata] = context.params[:metadata]
              data[:object_body] = context.params[:body].read
            end
            {}
          })
          data
        end

        # Helper to stub get_object for instruction file decryption
        def stub_get_with_instruction_file(s3_client, data)
          resp_headers = Hash[*data[:object_metadata].map { |k, v| ["x-amz-meta-#{k.to_s}", v] }.flatten(1)]
          resp_headers['content-length'] = data[:object_body].length
          auth_tag = data[:object_body].unpack('C*')[-16, 16].pack('C*')
          
          s3_client.stub_responses(
            :get_object,
            {status_code: 200, body: data[:object_body], headers: resp_headers},
            {body: Json.dump(data[:instruction_metadata])},
            {body: auth_tag}
          )
        end

        context 'V3 message format with AES key' do
          let(:key) { OpenSSL::Cipher.new('aes-256-gcm').random_key }
          let(:options) do
            {
              client: s3_client,
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              envelope_location: :instruction_file
            }
          end

          ##= ../specification/s3-encryption/data-format/content-metadata.md#content-metadata-mapkeys
          ##= type=test
          ##% In the V3 format, the mapkeys "x-amz-c", "x-amz-d", and "x-amz-i" MUST be stored exclusively in the Object Metadata.

          it 'stores x-amz-c in object metadata and not in instruction file' do
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#v3-instruction-files
            ##= type=test
            ##% - The V3 message format MUST store the mapkey "x-amz-c" and its value in the Object Metadata when writing with an Instruction File.
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#v3-instruction-files
            ##= type=test
            ##% - The V3 message format MUST NOT store the mapkey "x-amz-c" and its value in the Instruction File.

            client = Client.new(options)
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # x-amz-c must be in object metadata
            expect(data[:object_metadata]).to have_key('x-amz-c')
            expect(data[:object_metadata]['x-amz-c']).to eq('115')
            
            # x-amz-c must NOT be in instruction file
            expect(data[:instruction_metadata]).not_to have_key('x-amz-c')
          end

          it 'stores x-amz-d in object metadata and not in instruction file' do
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#v3-instruction-files
            ##= type=test
            ##% - The V3 message format MUST store the mapkey "x-amz-d" and its value in the Object Metadata when writing with an Instruction File.
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#v3-instruction-files
            ##= type=test
            ##% - The V3 message format MUST NOT store the mapkey "x-amz-d" and its value in the Instruction File.

            client = Client.new(options)
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # x-amz-d must be in object metadata
            expect(data[:object_metadata]).to have_key('x-amz-d')
            expect(data[:object_metadata]['x-amz-d']).not_to be_empty
            
            # x-amz-d must NOT be in instruction file
            expect(data[:instruction_metadata]).not_to have_key('x-amz-d')
          end

          it 'stores x-amz-i in object metadata and not in instruction file' do
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#v3-instruction-files
            ##= type=test
            ##% - The V3 message format MUST store the mapkey "x-amz-i" and its value in the Object Metadata when writing with an Instruction File.
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#v3-instruction-files
            ##= type=test
            ##% - The V3 message format MUST NOT store the mapkey "x-amz-i" and its value in the Instruction File.

            client = Client.new(options)
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # x-amz-i must be in object metadata
            expect(data[:object_metadata]).to have_key('x-amz-i')
            expect(data[:object_metadata]['x-amz-i']).not_to be_empty
            
            # x-amz-i must NOT be in instruction file
            expect(data[:instruction_metadata]).not_to have_key('x-amz-i')
          end

          it 'stores x-amz-3 in instruction file and not in object metadata' do
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#v3-instruction-files
            ##= type=test
            ##% - The V3 message format MUST store the mapkey "x-amz-3" and its value in the Instruction File.

            client = Client.new(options)
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # x-amz-3 must be in instruction file
            expect(data[:instruction_metadata]).to have_key('x-amz-3')
            expect(data[:instruction_metadata]['x-amz-3']).not_to be_empty
            
            # x-amz-3 must NOT be in object metadata
            expect(data[:object_metadata]).not_to have_key('x-amz-3')
          end

          it 'stores x-amz-w in instruction file and not in object metadata' do
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#v3-instruction-files
            ##= type=test
            ##% - The V3 message format MUST store the mapkey "x-amz-w" and its value in the Instruction File.

            client = Client.new(options)
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # x-amz-w must be in instruction file
            expect(data[:instruction_metadata]).to have_key('x-amz-w')
            expect(data[:instruction_metadata]['x-amz-w']).to eq('02')
            
            # x-amz-w must NOT be in object metadata
            expect(data[:object_metadata]).not_to have_key('x-amz-w')
          end

          it 'writes wrapping algorithm value 02 for AES/GCM in instruction file' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#v3-only
            ##= type=test
            ##% - The wrapping algorithm value "02" MUST be translated to AES/GCM upon retrieval, and vice versa on write.

            client = Client.new(options)
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            expect(data[:instruction_metadata]['x-amz-w']).to eq('02')
          end

          it 'stores x-amz-m in instruction file when materials description is provided' do
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#v3-instruction-files
            ##= type=test
            ##% - The V3 message format MUST store the mapkey "x-amz-m" and its value (when present in the content metadata) in the Instruction File.

            materials_desc = '{"description":"test-materials"}'
            client = Client.new(options.merge(materials_description: materials_desc))
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # x-amz-m must be in instruction file when present
            expect(data[:instruction_metadata]).to have_key('x-amz-m')
            expect(data[:instruction_metadata]['x-amz-m']).to eq(materials_desc)
            
            # x-amz-m must NOT be in object metadata
            expect(data[:object_metadata]).not_to have_key('x-amz-m')
          end

          it 'uses Material Description for AES/GCM wrapping in instruction file' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#v3-only
            ##= type=test
            ##% The Material Description MUST be used for wrapping algorithms `AES/GCM` (`02`) and `RSA-OAEP-SHA1` (`22`).

            materials_desc = '{"description":"test-materials"}'
            client = Client.new(options.merge(materials_description: materials_desc))
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # For AES/GCM (02), material description should be present
            expect(data[:instruction_metadata]).to have_key('x-amz-m')
            expect(data[:instruction_metadata]['x-amz-w']).to eq('02')
            expect(data[:instruction_metadata]['x-amz-m']).to eq(materials_desc)
          end

          it 'can decrypt objects encrypted with instruction files' do
            client = Client.new(options)
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            stub_get_with_instruction_file(s3_client, data)
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end
        end

        context 'V3 message format with RSA key' do
          let(:key) { OpenSSL::PKey::RSA.new(1024) }
          let(:options) do
            {
              client: s3_client,
              encryption_key: key,
              key_wrap_schema: :rsa_oaep_sha1,
              envelope_location: :instruction_file
            }
          end

          it 'stores required fields correctly with RSA key' do
            client = Client.new(options)
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # Object metadata must contain x-amz-c, x-amz-d, x-amz-i
            expect(data[:object_metadata]).to have_key('x-amz-c')
            expect(data[:object_metadata]).to have_key('x-amz-d')
            expect(data[:object_metadata]).to have_key('x-amz-i')
            
            # Instruction file must contain x-amz-3, x-amz-w
            expect(data[:instruction_metadata]).to have_key('x-amz-3')
            expect(data[:instruction_metadata]).to have_key('x-amz-w')
            expect(data[:instruction_metadata]['x-amz-w']).to eq('22')
            
            # Instruction file must NOT contain x-amz-c, x-amz-d, x-amz-i
            expect(data[:instruction_metadata]).not_to have_key('x-amz-c')
            expect(data[:instruction_metadata]).not_to have_key('x-amz-d')
            expect(data[:instruction_metadata]).not_to have_key('x-amz-i')
            
            # Object metadata must NOT contain x-amz-3, x-amz-w
            expect(data[:object_metadata]).not_to have_key('x-amz-3')
            expect(data[:object_metadata]).not_to have_key('x-amz-w')
          end

          it 'writes wrapping algorithm value 22 for RSA-OAEP-SHA1 in instruction file' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#v3-only
            ##= type=test
            ##% - The wrapping algorithm value "22" MUST be translated to RSA-OAEP-SHA1 upon retrieval, and vice versa on write.

            client = Client.new(options)
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            expect(data[:instruction_metadata]['x-amz-w']).to eq('22')
          end

          it 'uses Material Description for RSA-OAEP-SHA1 wrapping in instruction file' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#v3-only
            ##= type=test
            ##% The Material Description MUST be used for wrapping algorithms `AES/GCM` (`02`) and `RSA-OAEP-SHA1` (`22`).

            materials_desc = '{"description":"rsa-test"}'
            client = Client.new(options.merge(materials_description: materials_desc))
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # For RSA-OAEP-SHA1 (22), material description should be present
            expect(data[:instruction_metadata]).to have_key('x-amz-m')
            expect(data[:instruction_metadata]['x-amz-m']).to eq(materials_desc)
            expect(data[:instruction_metadata]['x-amz-w']).to eq('22')
          end

          it 'can decrypt RSA encrypted objects with instruction files' do
            client = Client.new(options)
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            stub_get_with_instruction_file(s3_client, data)
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end
        end

        context 'V3 message format with KMS key' do
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
              envelope_location: :instruction_file
            }
          end

          it 'stores required fields correctly with KMS key' do
            kms_client.stub_responses(
              :generate_data_key,
              {
                key_id: kms_key_id,
                ciphertext_blob: kms_ciphertext_blob,
                plaintext: kms_plaintext
              }
            )

            client = Client.new(options)
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # Object metadata must contain x-amz-c, x-amz-d, x-amz-i
            expect(data[:object_metadata]).to have_key('x-amz-c')
            expect(data[:object_metadata]).to have_key('x-amz-d')
            expect(data[:object_metadata]).to have_key('x-amz-i')
            
            # Instruction file must contain x-amz-3, x-amz-w
            expect(data[:instruction_metadata]).to have_key('x-amz-3')
            expect(data[:instruction_metadata]).to have_key('x-amz-w')
            expect(data[:instruction_metadata]['x-amz-w']).to eq('12')
            
            # Instruction file must NOT contain x-amz-c, x-amz-d, x-amz-i
            expect(data[:instruction_metadata]).not_to have_key('x-amz-c')
            expect(data[:instruction_metadata]).not_to have_key('x-amz-d')
            expect(data[:instruction_metadata]).not_to have_key('x-amz-i')
            
            # Object metadata must NOT contain x-amz-3, x-amz-w
            expect(data[:object_metadata]).not_to have_key('x-amz-3')
            expect(data[:object_metadata]).not_to have_key('x-amz-w')
          end

          it 'writes wrapping algorithm value 12 for kms+context in instruction file' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#v3-only
            ##= type=test
            ##% - The wrapping algorithm value "12" MUST be translated to kms+context upon retrieval, and vice versa on write.

            kms_client.stub_responses(
              :generate_data_key,
              {
                key_id: kms_key_id,
                ciphertext_blob: kms_ciphertext_blob,
                plaintext: kms_plaintext
              }
            )

            client = Client.new(options)
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            expect(data[:instruction_metadata]['x-amz-w']).to eq('12')
          end

          it 'stores x-amz-t in instruction file when KMS encryption context is provided' do
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#v3-instruction-files
            ##= type=test
            ##% - The V3 message format MUST store the mapkey "x-amz-t" and its value (when present in the content metadata) in the Instruction File.

            kms_client.stub_responses(
              :generate_data_key,
              {
                key_id: kms_key_id,
                ciphertext_blob: kms_ciphertext_blob,
                plaintext: kms_plaintext
              }
            )

            enc_context = { 'department' => 'finance', 'project' => 'alpha' }
            client = Client.new(options)
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(
              bucket: test_bucket,
              key: test_object,
              body: plaintext,
              kms_encryption_context: enc_context
            )
            
            # x-amz-t must be in instruction file when present
            expect(data[:instruction_metadata]).to have_key('x-amz-t')
            stored_context = JSON.parse(data[:instruction_metadata]['x-amz-t'])
            expect(stored_context).to include('department' => 'finance')
            expect(stored_context).to include('project' => 'alpha')
            
            # x-amz-t must NOT be in object metadata
            expect(data[:object_metadata]).not_to have_key('x-amz-t')
          end

          it 'uses Encryption Context for kms+context wrapping in instruction file' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#v3-only
            ##= type=test
            ##% The Encryption Context value MUST be used for wrapping algorithm `kms+context` or `12`.

            kms_client.stub_responses(
              :generate_data_key,
              {
                key_id: kms_key_id,
                ciphertext_blob: kms_ciphertext_blob,
                plaintext: kms_plaintext
              }
            )

            enc_context = { 'department' => 'finance', 'project' => 'alpha' }
            client = Client.new(options)
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(
              bucket: test_bucket,
              key: test_object,
              body: plaintext,
              kms_encryption_context: enc_context
            )
            
            # For kms+context (12), encryption context should be present
            expect(data[:instruction_metadata]).to have_key('x-amz-t')
            expect(data[:instruction_metadata]['x-amz-w']).to eq('12')
          end

          it 'can decrypt KMS encrypted objects with instruction files' do
            kms_client.stub_responses(
              :generate_data_key,
              {
                key_id: kms_key_id,
                ciphertext_blob: kms_ciphertext_blob,
                plaintext: kms_plaintext
              }
            )
            kms_client.stub_responses(
              :decrypt,
              {
                key_id: kms_key_id,
                plaintext: kms_plaintext,
                encryption_algorithm: "SYMMETRIC_DEFAULT"
              }
            )

            client = Client.new(options)
            data = stub_put_with_instruction_file(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            stub_get_with_instruction_file(s3_client, data)
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end
        end

        context 'V1/V2 message format with instruction files' do
          let(:key) { OpenSSL::Cipher.new('aes-256-cbc').random_key }

          it 'stores all metadata in instruction file for V1 format' do
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#v1-v2-instruction-files
            ##= type=test
            ##% In the V1/V2 message format, all of the content metadata MUST be stored in the Instruction File.

            # Create a V1 client with instruction file
            client_v1 = Aws::S3::Encryption::Client.new(
              encryption_key: key,
              client: s3_client,
              envelope_location: :instruction_file
            )
            
            data = { object_metadata: nil, object_body: nil, instruction_metadata: nil }
            s3_client.stub_responses(:put_object, lambda { |context|
              if context.params[:key].end_with?('.instruction')
                data[:instruction_metadata] = JSON.parse(context.params[:body])
              else
                data[:object_metadata] = context.params[:metadata]
                data[:object_body] = context.params[:body].read
              end
              {}
            })
            
            client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # All V1/V2 metadata must be in instruction file
            expect(data[:instruction_metadata]).to have_key('x-amz-key')
            expect(data[:instruction_metadata]).to have_key('x-amz-iv')
            expect(data[:instruction_metadata]).to have_key('x-amz-matdesc')
            
            # Object metadata should be empty or minimal (no encryption metadata)
            if data[:object_metadata]
              expect(data[:object_metadata]).not_to have_key('x-amz-key')
              expect(data[:object_metadata]).not_to have_key('x-amz-iv')
              expect(data[:object_metadata]).not_to have_key('x-amz-matdesc')
            end
          end

          it 'stores all metadata in instruction file for V2 format with AES-GCM' do
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#v1-v2-instruction-files
            ##= type=test
            ##% In the V1/V2 message format, all of the content metadata MUST be stored in the Instruction File.

            # Create a V3 client in legacy mode to produce V2 format
            client_v2 = Client.new(
              client: s3_client,
              encryption_key: OpenSSL::Cipher.new('aes-256-gcm').random_key,
              key_wrap_schema: :aes_gcm,
              commitment_policy: :forbid_encrypt_allow_decrypt,
              content_encryption_schema: :aes_gcm_no_padding,
              envelope_location: :instruction_file
            )
            
            data = { object_metadata: nil, object_body: nil, instruction_metadata: nil }
            s3_client.stub_responses(:put_object, lambda { |context|
              if context.params[:key].end_with?('.instruction')
                data[:instruction_metadata] = JSON.parse(context.params[:body])
              else
                data[:object_metadata] = context.params[:metadata]
                data[:object_body] = context.params[:body].read
              end
              {}
            })
            
            client_v2.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # All V2 metadata must be in instruction file
            expect(data[:instruction_metadata]).to have_key('x-amz-key-v2')
            expect(data[:instruction_metadata]).to have_key('x-amz-iv')
            expect(data[:instruction_metadata]).to have_key('x-amz-matdesc')
            expect(data[:instruction_metadata]).to have_key('x-amz-wrap-alg')
            expect(data[:instruction_metadata]).to have_key('x-amz-cek-alg')
            expect(data[:instruction_metadata]).to have_key('x-amz-tag-len')
            
            # Object metadata should be empty or minimal (no encryption metadata)
            if data[:object_metadata]
              expect(data[:object_metadata]).not_to have_key('x-amz-key-v2')
              expect(data[:object_metadata]).not_to have_key('x-amz-iv')
              expect(data[:object_metadata]).not_to have_key('x-amz-matdesc')
              expect(data[:object_metadata]).not_to have_key('x-amz-wrap-alg')
              expect(data[:object_metadata]).not_to have_key('x-amz-cek-alg')
              expect(data[:object_metadata]).not_to have_key('x-amz-tag-len')
            end
          end
        end

        context 'Custom instruction file suffix' do
          let(:key) { OpenSSL::Cipher.new('aes-256-gcm').random_key }
          let(:custom_suffix) { '.custom-instruction' }
          let(:options) do
            {
              client: s3_client,
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              envelope_location: :instruction_file,
              instruction_file_suffix: custom_suffix
            }
          end

          it 'uses custom suffix for instruction file' do
            client = Client.new(options)
            
            instruction_file_key = nil
            s3_client.stub_responses(:put_object, lambda { |context|
              if context.params[:key].end_with?(custom_suffix)
                instruction_file_key = context.params[:key]
              end
              {}
            })
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            expect(instruction_file_key).to eq("#{test_object}#{custom_suffix}")
          end

          it 'still places metadata correctly with custom suffix' do
            client = Client.new(options)
            data = { object_metadata: nil, instruction_metadata: nil }
            
            s3_client.stub_responses(:put_object, lambda { |context|
              if context.params[:key].end_with?(custom_suffix)
                data[:instruction_metadata] = JSON.parse(context.params[:body])
              else
                data[:object_metadata] = context.params[:metadata]
              end
              {}
            })
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # Verify metadata placement is still correct
            expect(data[:object_metadata]).to have_key('x-amz-c')
            expect(data[:object_metadata]).to have_key('x-amz-d')
            expect(data[:object_metadata]).to have_key('x-amz-i')
            expect(data[:instruction_metadata]).to have_key('x-amz-3')
            expect(data[:instruction_metadata]).to have_key('x-amz-w')
          end
        end
      end
    end
  end
end
