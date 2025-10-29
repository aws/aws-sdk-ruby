require_relative '../spec_helper'
require 'base64'
require 'openssl'

module Aws
  module S3
    module EncryptionV3
      describe 'DecryptHandler - Determining S3EC Object Status' do
        let(:plaintext) { 'super secret plain text' }
        let(:test_bucket) { 'test-bucket' }
        let(:test_object) { 'test-key' }
        let(:s3_client) { S3::Client.new(stub_responses: true) }
        let(:key) { OpenSSL::Cipher.new('aes-256-gcm').random_key }

        # Helper to stub get_object with specific metadata
        def stub_get_with_metadata(s3_client, metadata, body = 'encrypted-content')
          resp_headers = metadata.map { |k, v| ["x-amz-meta-#{k}", v] }.to_h
          resp_headers['content-length'] = body.length.to_s
          s3_client.stub_responses(:get_object, {
            status_code: 200,
            body: body,
            headers: resp_headers
          })
        end

        context 'V1 format detection' do
          it 'identifies V1 format with x-amz-iv and x-amz-key' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#determining-s3ec-object-status
            ##= type=test
            ##% - If the metadata contains "x-amz-iv" and "x-amz-key" then the object MUST be considered as an S3EC-encrypted object using the V1 format.

            # Create V1 encrypted object
            client_v1 = Aws::S3::Encryption::Client.new(
              encryption_key: key,
              client: s3_client
            )
            
            data = {}
            s3_client.stub_responses(:put_object, lambda { |context|
              data[:metadata] = context.params[:metadata]
              data[:enc_body] = context.params[:body].read
              {}
            })
            
            client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # Verify V1 metadata is present
            expect(data[:metadata]).to have_key('x-amz-key')
            expect(data[:metadata]).to have_key('x-amz-iv')
            
            # V3 client with legacy support should be able to decrypt it
            client_v3 = Client.new(
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              client: s3_client,
              security_profile: :v3_and_legacy,
              commitment_policy: :require_encrypt_allow_decrypt
            )
            
            # Stub get response with V1 metadata
            resp_headers = data[:metadata].map { |k, v| ["x-amz-meta-#{k}", v] }.to_h
            resp_headers['content-length'] = data[:enc_body].length.to_s
            s3_client.stub_responses(:get_object, {
              status_code: 200,
              body: data[:enc_body],
              headers: resp_headers
            })
            
            # Should successfully decrypt (format detection works)
            decrypted = client_v3.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end
        end

        context 'V2 format detection' do
          it 'identifies V2 format with x-amz-iv and x-amz-key-v2' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#determining-s3ec-object-status
            ##= type=test
            ##% - If the metadata contains "x-amz-iv" and "x-amz-metadata-x-amz-key-v2" then the object MUST be considered as an S3EC-encrypted object using the V2 format.

            # Create V2 encrypted object (V3 client with forbid policy)
            client_v2 = Client.new(
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              client: s3_client,
              commitment_policy: :forbid_encrypt_allow_decrypt,
              content_encryption_schema: :aes_gcm_no_padding
            )
            
            data = {}
            s3_client.stub_responses(:put_object, lambda { |context|
              data[:metadata] = context.params[:metadata]
              data[:enc_body] = context.params[:body].read
              {}
            })
            
            client_v2.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # Verify V2 metadata is present
            expect(data[:metadata]).to have_key('x-amz-key-v2')
            expect(data[:metadata]).to have_key('x-amz-iv')
            
            # V3 client with legacy support should be able to decrypt it
            client_v3 = Client.new(
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              client: s3_client,
              security_profile: :v3_and_legacy,
              commitment_policy: :require_encrypt_allow_decrypt
            )
            
            # Stub get response with V2 metadata
            resp_headers = data[:metadata].map { |k, v| ["x-amz-meta-#{k}", v] }.to_h
            resp_headers['content-length'] = data[:enc_body].length.to_s
            auth_tag = data[:enc_body].unpack('C*')[-16, 16].pack('C*')
            s3_client.stub_responses(:get_object,
              {status_code: 200, body: data[:enc_body], headers: resp_headers},
              {body: auth_tag}
            )
            
            # Should successfully decrypt (format detection works)
            decrypted = client_v3.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end
        end

        context 'V3 format detection' do
          it 'identifies V3 format with x-amz-3, x-amz-d, and x-amz-i' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#determining-s3ec-object-status
            ##= type=test
            ##% - If the metadata contains "x-amz-3" and "x-amz-d" and "x-amz-i" then the object MUST be considered an S3EC-encrypted object using the V3 format.

            # Create V3 encrypted object
            client_v3 = Client.new(
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              client: s3_client
            )
            
            data = {}
            s3_client.stub_responses(:put_object, lambda { |context|
              data[:metadata] = context.params[:metadata]
              data[:enc_body] = context.params[:body].read
              {}
            })
            
            client_v3.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # Verify V3 metadata is present
            expect(data[:metadata]).to have_key('x-amz-3')
            expect(data[:metadata]).to have_key('x-amz-d')
            expect(data[:metadata]).to have_key('x-amz-i')
            expect(data[:metadata]).to have_key('x-amz-w')
            expect(data[:metadata]).to have_key('x-amz-c')
            
            # Stub get response with V3 metadata
            resp_headers = data[:metadata].map { |k, v| ["x-amz-meta-#{k}", v] }.to_h
            resp_headers['content-length'] = data[:enc_body].length.to_s
            auth_tag = data[:enc_body].unpack('C*')[-16, 16].pack('C*')
            s3_client.stub_responses(:get_object,
              {status_code: 200, body: data[:enc_body], headers: resp_headers},
              {body: auth_tag}
            )
            
            # Should successfully decrypt
            decrypted = client_v3.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end
        end

        context 'Instruction file fallback' do
          it 'attempts to get instruction file when metadata does not match V1/V2/V3 formats' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#determining-s3ec-object-status
            ##= type=test
            ##% If the object matches none of the V1/V2/V3 formats, the S3EC MUST attempt to get the instruction file.

            # Create V3 object with instruction file
            client_v3 = Client.new(
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              client: s3_client,
              envelope_location: :instruction_file
            )
            
            data = { metadata: {}, enc_body: nil, instruction_metadata: nil }
            s3_client.stub_responses(:put_object, lambda { |context|
              if context.params[:key].end_with?('.instruction')
                data[:instruction_metadata] = JSON.parse(context.params[:body])
              else
                data[:metadata] = context.params[:metadata]
                data[:enc_body] = context.params[:body].read
              end
              {}
            })
            
            client_v3.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # Verify some metadata is in object but not all (triggers instruction file lookup)
            expect(data[:metadata]).to have_key('x-amz-i')
            expect(data[:metadata]).not_to have_key('x-amz-3')
            expect(data[:instruction_metadata]).to have_key('x-amz-3')
            
            # Stub get responses - object metadata, instruction file, and auth tag
            resp_headers = data[:metadata].map { |k, v| ["x-amz-meta-#{k}", v] }.to_h
            resp_headers['content-length'] = data[:enc_body].length.to_s
            auth_tag = data[:enc_body].unpack('C*')[-16, 16].pack('C*')
            
            s3_client.stub_responses(:get_object,
              {status_code: 200, body: data[:enc_body], headers: resp_headers},
              {body: Json.dump(data[:instruction_metadata])},
              {body: auth_tag}
            )
            
            # Should successfully decrypt by fetching instruction file
            decrypted = client_v3.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end
        end

        context 'Exclusive mapkeys conflict' do
          it 'throws exception when both x-amz-key and x-amz-3 are present' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#determining-s3ec-object-status
            ##= type=test
            ##% If there are multiple mapkeys which are meant to be exclusive, such as "x-amz-key", "x-amz-key-v2", and "x-amz-3" then the S3EC SHOULD throw an exception.

            client_v3 = Client.new(
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              client: s3_client
            )
            
            # Create conflicting metadata - both V1 and V3 keys
            conflicting_metadata = {
              'x-amz-key' => Base64.strict_encode64('v1-key'),
              'x-amz-3' => Base64.strict_encode64('v3-encrypted-key'),
              'x-amz-w' => '02',
              'x-amz-c' => '115',
              'x-amz-d' => Base64.strict_encode64('commitment'),
              'x-amz-i' => Base64.strict_encode64('message-id')
            }
            
            stub_get_with_metadata(s3_client, conflicting_metadata)
            
            expect {
              client_v3.get_object(bucket: test_bucket, key: test_object)
            }.to raise_error(Errors::DecryptionError)
          end

          it 'throws exception when both x-amz-key-v2 and x-amz-3 are present' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#determining-s3ec-object-status
            ##= type=test
            ##% If there are multiple mapkeys which are meant to be exclusive, such as "x-amz-key", "x-amz-key-v2", and "x-amz-3" then the S3EC SHOULD throw an exception.

            client_v3 = Client.new(
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              client: s3_client
            )
            
            # Create conflicting metadata - both V2 and V3 keys
            conflicting_metadata = {
              'x-amz-key-v2' => Base64.strict_encode64('v2-key'),
              'x-amz-3' => Base64.strict_encode64('v3-encrypted-key'),
              'x-amz-w' => '02',
              'x-amz-c' => '115',
              'x-amz-d' => Base64.strict_encode64('commitment'),
              'x-amz-i' => Base64.strict_encode64('message-id')
            }
            
            stub_get_with_metadata(s3_client, conflicting_metadata)
            
            expect {
              client_v3.get_object(bucket: test_bucket, key: test_object)
            }.to raise_error(Errors::DecryptionError)
          end
        end

        context 'Format deviation exception' do
          it 'throws exception when V3 format is incomplete (missing required keys)' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#determining-s3ec-object-status
            ##= type=test
            ##% In general, if there is any deviation from the above format, with the exception of additional unrelated mapkeys, then the S3EC SHOULD throw an exception.

            client_v3 = Client.new(
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              client: s3_client
            )
            
            # Create incomplete V3 metadata - missing x-amz-w
            incomplete_metadata = {
              'x-amz-3' => Base64.strict_encode64('encrypted-key'),
              'x-amz-c' => '115',
              'x-amz-d' => Base64.strict_encode64('commitment'),
              'x-amz-i' => Base64.strict_encode64('message-id')
            }
            
            stub_get_with_metadata(s3_client, incomplete_metadata)
            
            expect {
              client_v3.get_object(bucket: test_bucket, key: test_object)
            }.to raise_error(Errors::DecryptionError, /unsupported key wrapping algorithm/)
          end

          it 'throws exception when V3 format has unsupported content encryption algorithm' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#determining-s3ec-object-status
            ##= type=test
            ##% In general, if there is any deviation from the above format, with the exception of additional unrelated mapkeys, then the S3EC SHOULD throw an exception.

            client_v3 = Client.new(
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              client: s3_client
            )
            
            # Create V3 metadata with unsupported x-amz-c value
            invalid_metadata = {
              'x-amz-3' => Base64.strict_encode64('encrypted-key'),
              'x-amz-w' => '02',
              'x-amz-c' => '999',  # Invalid algorithm
              'x-amz-d' => Base64.strict_encode64('commitment'),
              'x-amz-i' => Base64.strict_encode64('message-id')
            }
            
            stub_get_with_metadata(s3_client, invalid_metadata)
            
            expect {
              client_v3.get_object(bucket: test_bucket, key: test_object)
            }.to raise_error(Errors::DecryptionError, /unsupported content encrypting key/)
          end

          it 'throws exception when V3 format has unsupported wrapping algorithm' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#determining-s3ec-object-status
            ##= type=test
            ##% In general, if there is any deviation from the above format, with the exception of additional unrelated mapkeys, then the S3EC SHOULD throw an exception.

            client_v3 = Client.new(
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              client: s3_client
            )
            
            # Create V3 metadata with unsupported x-amz-w value
            invalid_metadata = {
              'x-amz-3' => Base64.strict_encode64('encrypted-key'),
              'x-amz-w' => '99',  # Invalid wrapping algorithm
              'x-amz-c' => '115',
              'x-amz-d' => Base64.strict_encode64('commitment'),
              'x-amz-i' => Base64.strict_encode64('message-id')
            }
            
            stub_get_with_metadata(s3_client, invalid_metadata)
            
            expect {
              client_v3.get_object(bucket: test_bucket, key: test_object)
            }.to raise_error(Errors::DecryptionError, /unsupported key wrapping algorithm/)
          end

          it 'allows additional unrelated mapkeys in V3 format' do
            ##= ../specification/s3-encryption/data-format/content-metadata.md#determining-s3ec-object-status
            ##= type=test
            ##% In general, if there is any deviation from the above format, with the exception of additional unrelated mapkeys, then the S3EC SHOULD throw an exception.

            # Create V3 encrypted object
            client_v3 = Client.new(
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              client: s3_client
            )
            
            data = {}
            s3_client.stub_responses(:put_object, lambda { |context|
              data[:metadata] = context.params[:metadata]
              data[:enc_body] = context.params[:body].read
              {}
            })
            
            client_v3.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # Add unrelated metadata keys
            data[:metadata]['custom-key'] = 'custom-value'
            data[:metadata]['another-key'] = 'another-value'
            
            # Stub get response with additional unrelated keys
            resp_headers = data[:metadata].map { |k, v| ["x-amz-meta-#{k}", v] }.to_h
            resp_headers['content-length'] = data[:enc_body].length.to_s
            auth_tag = data[:enc_body].unpack('C*')[-16, 16].pack('C*')
            s3_client.stub_responses(:get_object,
              {status_code: 200, body: data[:enc_body], headers: resp_headers},
              {body: auth_tag}
            )
            
            # Should not raise an error - additional unrelated keys are allowed
            expect {
              decrypted = client_v3.get_object(bucket: test_bucket, key: test_object).body.read
              expect(decrypted).to eq(plaintext)
            }.not_to raise_error
          end
        end
      end
    end
  end
end
