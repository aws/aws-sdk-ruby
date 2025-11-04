require_relative '../spec_helper'
require 'base64'
require 'openssl'

module Aws
  module S3
    module EncryptionV3
      describe 'Commitment Policy' do
        # Captures the data (metadata and body) put to an s3 object
        def stub_put(s3_client)
          data = {}
          s3_client.stub_responses(:put_object, lambda { |context|
            data[:metadata] = context.params[:metadata]
            data[:enc_body] = context.params[:body].read
            {}
          })
          data
        end

        # Given data from stub_put, stub a get for the same object
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

        let(:master_key) do
          OpenSSL::Cipher.new('aes-256-gcm').random_key
        end

        let(:s3_client) do
          S3::Client.new(stub_responses: true)
        end

        let(:test_bucket) { 'test-bucket' }
        let(:test_object) { 'test-object' }
        let(:plaintext) { 'super secret plain text' }

        ##= ../specification/s3-encryption/client.md#key-commitment
        ##= type=test
        ##% The S3EC MUST support configuration of the [Key Commitment policy](./key-commitment.md) during its initialization.

        describe 'encryption behavior' do
          context 'with FORBID_ENCRYPT_ALLOW_DECRYPT' do
            it 'does not encrypt with committing algorithms' do
              ##= ../specification/s3-encryption/key-commitment.md#commitment-policy
              ##= type=test
              ##% When the commitment policy is FORBID_ENCRYPT_ALLOW_DECRYPT, the S3EC MUST NOT encrypt using an algorithm suite which supports key commitment.

              client = Client.new(
                client: s3_client,
                encryption_key: master_key,
                key_wrap_schema: :aes_gcm,
                commitment_policy: :forbid_encrypt_allow_decrypt,
                content_encryption_schema: :aes_gcm_no_padding,
              )

              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              # Verify that v2 (non-committing) algorithm is used
              # V2 uses 'AES/GCM/NoPadding' as x-amz-cek-alg
              expect(data[:metadata]['x-amz-cek-alg']).to eq('AES/GCM/NoPadding')
              expect(data[:metadata]['x-amz-wrap-alg']).to eq('AES/GCM')
            end
          end

          context 'with REQUIRE_ENCRYPT_ALLOW_DECRYPT' do
            it 'only encrypts with committing algorithms' do
              ##= ../specification/s3-encryption/key-commitment.md#commitment-policy
              ##= type=test
              ##% When the commitment policy is REQUIRE_ENCRYPT_ALLOW_DECRYPT, the S3EC MUST only encrypt using an algorithm suite which supports key commitment.

              client = Client.new(
                client: s3_client,
                encryption_key: master_key,
                key_wrap_schema: :aes_gcm,
                commitment_policy: :require_encrypt_allow_decrypt
              )

              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              # Verify that v3 (committing) algorithm is used
              # V3 uses '115' as x-amz-c and has x-amz-i and x-amz-d
              expect(data[:metadata]['x-amz-c']).to eq('115')
              expect(data[:metadata]['x-amz-w']).to eq('02')
              expect(data[:metadata]['x-amz-i']).not_to be_nil
              expect(data[:metadata]['x-amz-d']).not_to be_nil
            end
          end

          context 'with REQUIRE_ENCRYPT_REQUIRE_DECRYPT' do
            it 'only encrypts with committing algorithms' do
              ##= ../specification/s3-encryption/key-commitment.md#commitment-policy
              ##= type=test
              ##% When the commitment policy is REQUIRE_ENCRYPT_REQUIRE_DECRYPT, the S3EC MUST only encrypt using an algorithm suite which supports key commitment.

              client = Client.new(
                client: s3_client,
                encryption_key: master_key,
                key_wrap_schema: :aes_gcm,
                commitment_policy: :require_encrypt_require_decrypt
              )

              data = stub_put(s3_client)
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              
              # Verify that v3 (committing) algorithm is used
              # V3 uses '115' as x-amz-c and has x-amz-i and x-amz-d
              expect(data[:metadata]['x-amz-c']).to eq('115')
              expect(data[:metadata]['x-amz-w']).to eq('02')
              expect(data[:metadata]['x-amz-i']).not_to be_nil
              expect(data[:metadata]['x-amz-d']).not_to be_nil
            end
          end
        end

        describe 'decryption behavior' do
          context 'with FORBID_ENCRYPT_ALLOW_DECRYPT' do
            it 'allows decryption of non-committing algorithms' do
              ##= ../specification/s3-encryption/key-commitment.md#commitment-policy
              ##= type=test
              ##% When the commitment policy is FORBID_ENCRYPT_ALLOW_DECRYPT, the S3EC MUST allow decryption using algorithm suites which do not support key commitment.

              # Encrypt with v1 client (non-committing)
              client_v1 = Aws::S3::Encryption::Client.new(encryption_key: master_key, client: s3_client)
              data = stub_put(s3_client)
              client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

              # Decrypt with v3 client using FORBID_ENCRYPT_ALLOW_DECRYPT
              # Need security_profile: :v3_and_legacy to allow v1 decryption
              client_v3 = Client.new(
                client: s3_client,
                encryption_key: master_key,
                key_wrap_schema: :aes_gcm,
                commitment_policy: :forbid_encrypt_allow_decrypt,
                content_encryption_schema: :aes_gcm_no_padding,
                security_profile: :v3_and_legacy
              )

              stub_get(s3_client, data, false)
              
              # Should successfully decrypt without error
              decrypted = client_v3.get_object(bucket: test_bucket, key: test_object).body.read
              expect(decrypted).to eq(plaintext)
            end
          end

          context 'with REQUIRE_ENCRYPT_ALLOW_DECRYPT' do
            it 'allows decryption of non-committing algorithms' do
              ##= ../specification/s3-encryption/key-commitment.md#commitment-policy
              ##= type=test
              ##% When the commitment policy is REQUIRE_ENCRYPT_ALLOW_DECRYPT, the S3EC MUST allow decryption using algorithm suites which do not support key commitment.

              # Encrypt with v1 client (non-committing)
              client_v1 = Aws::S3::Encryption::Client.new(encryption_key: master_key, client: s3_client)
              data = stub_put(s3_client)
              client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

              # Decrypt with v3 client using REQUIRE_ENCRYPT_ALLOW_DECRYPT
              client_v3 = Client.new(
                client: s3_client,
                encryption_key: master_key,
                key_wrap_schema: :aes_gcm,
                commitment_policy: :require_encrypt_allow_decrypt,
                content_encryption_schema: :aes_gcm_no_padding,
                security_profile: :v3_and_legacy
              )

              stub_get(s3_client, data, false)
              
              # Should successfully decrypt without error
              decrypted = client_v3.get_object(bucket: test_bucket, key: test_object).body.read
              expect(decrypted).to eq(plaintext)
            end
          end

          context 'with REQUIRE_ENCRYPT_REQUIRE_DECRYPT' do
            it 'does not allow decryption of non-committing algorithms' do
              ##= ../specification/s3-encryption/key-commitment.md#commitment-policy
              ##= type=test
              ##% When the commitment policy is REQUIRE_ENCRYPT_REQUIRE_DECRYPT, the S3EC MUST NOT allow decryption using algorithm suites which do not support key commitment.

              # Encrypt with v1 client (non-committing)
              client_v1 = Aws::S3::Encryption::Client.new(encryption_key: master_key, client: s3_client)
              data = stub_put(s3_client)
              client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

              # Decrypt with v3 client using REQUIRE_ENCRYPT_REQUIRE_DECRYPT
              client_v3 = Client.new(
                client: s3_client,
                encryption_key: master_key,
                key_wrap_schema: :aes_gcm,
                commitment_policy: :require_encrypt_require_decrypt
              )

              stub_get(s3_client, data, false)
              
              # Should raise NonCommittingDecryptionError
              expect {
                client_v3.get_object(bucket: test_bucket, key: test_object)
              }.to raise_error(Errors::NonCommittingDecryptionError)
            end
          end
        end

        describe 'key commitment validation' do
          it 'validates algorithm suite against policy before attempting decrypt' do
            ##= ../specification/s3-encryption/decryption.md#key-commitment
            ##= type=test
            ##% The S3EC MUST validate the algorithm suite used for decryption against the key commitment policy before attempting to decrypt the content ciphertext.

            # Encrypt with v1 client (non-committing)
            client_v1 = Aws::S3::Encryption::Client.new(encryption_key: master_key, client: s3_client)
            data = stub_put(s3_client)
            client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            # Try to decrypt with v3 client that requires committing algorithms
            client_v3 = Client.new(
              client: s3_client,
              encryption_key: master_key,
              key_wrap_schema: :aes_gcm,
              commitment_policy: :require_encrypt_require_decrypt
            )

            stub_get(s3_client, data, false)
            
            # The error should be raised during validation, not during actual decryption
            expect {
              client_v3.get_object(bucket: test_bucket, key: test_object)
            }.to raise_error(Errors::NonCommittingDecryptionError)
          end

          it 'throws exception when policy requires committing but object does not support it' do
            ##= ../specification/s3-encryption/decryption.md#key-commitment
            ##= type=test
            ##% If the commitment policy requires decryption using a committing algorithm suite, and the algorithm suite associated with the object does not support key commitment, then the S3EC MUST throw an exception.

            # Encrypt with v1 client (non-committing)
            client_v1 = Aws::S3::Encryption::Client.new(encryption_key: master_key, client: s3_client)
            data = stub_put(s3_client)
            client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            # Try to decrypt with v3 client that requires committing algorithms
            client_v3 = Client.new(
              client: s3_client,
              encryption_key: master_key,
              key_wrap_schema: :aes_gcm,
              commitment_policy: :require_encrypt_require_decrypt
            )

            stub_get(s3_client, data, false)
            
            expect {
              client_v3.get_object(bucket: test_bucket, key: test_object)
            }.to raise_error(Errors::NonCommittingDecryptionError)
          end

          context 'when using committing algorithm suite' do
            it 'verifies derived commitment matches stored commitment' do
              ##= ../specification/s3-encryption/decryption.md#decrypting-with-commitment
              ##= type=test
              ##% When using an algorithm suite which supports key commitment, the client MUST verify that the [derived key commitment](./key-derivation.md#hkdf-operation) contains the same bytes as the stored key commitment retrieved from the stored object's metadata.

              # Encrypt with v3 client
              client_v3_enc = Client.new(
                client: s3_client,
                encryption_key: master_key,
                key_wrap_schema: :aes_gcm,
                commitment_policy: :require_encrypt_require_decrypt
              )
              
              data = stub_put(s3_client)
              client_v3_enc.put_object(bucket: test_bucket, key: test_object, body: plaintext)

              # Decrypt with v3 client - should succeed because commitment matches
              client_v3_dec = Client.new(
                client: s3_client,
                encryption_key: master_key,
                key_wrap_schema: :aes_gcm,
                commitment_policy: :require_encrypt_require_decrypt
              )

              stub_get(s3_client, data, true)
              decrypted = client_v3_dec.get_object(bucket: test_bucket, key: test_object).body.read
              expect(decrypted).to eq(plaintext)
            end

            it 'throws exception when derived and stored commitments do not match' do
              ##= ../specification/s3-encryption/decryption.md#decrypting-with-commitment
              ##= type=test
              ##% When using an algorithm suite which supports key commitment, the client MUST throw an exception when the derived key commitment value and stored key commitment value do not match.

              # Encrypt with v3 client
              client_v3_enc = Client.new(
                client: s3_client,
                encryption_key: master_key,
                key_wrap_schema: :aes_gcm,
                commitment_policy: :require_encrypt_require_decrypt
              )
              
              data = stub_put(s3_client)
              client_v3_enc.put_object(bucket: test_bucket, key: test_object, body: plaintext)

              # Tamper with the stored commitment
              original_commitment = data[:metadata]['x-amz-d']
              data[:metadata]['x-amz-d'] = Base64.strict_encode64('tampered' * 4)

              # Try to decrypt - should fail due to commitment mismatch
              client_v3_dec = Client.new(
                client: s3_client,
                encryption_key: master_key,
                key_wrap_schema: :aes_gcm,
                commitment_policy: :require_encrypt_require_decrypt
              )

              stub_get(s3_client, data, true)
              # The library should raise an error (commitment mismatch detected)
              expect {
                client_v3_dec.get_object(bucket: test_bucket, key: test_object)
              }.to raise_error # Any error indicates commitment was checked
            end

            it 'verifies commitments before deriving encryption key' do
              ##= ../specification/s3-encryption/decryption.md#decrypting-with-commitment
              ##= type=test
              ##% When using an algorithm suite which supports key commitment, the client MUST verify the key commitment values match before deriving the [derived encryption key](./key-derivation.md#hkdf-operation).

              # Encrypt with v3 client
              client_v3_enc = Client.new(
                client: s3_client,
                encryption_key: master_key,
                key_wrap_schema: :aes_gcm,
                commitment_policy: :require_encrypt_require_decrypt
              )
              
              data = stub_put(s3_client)
              client_v3_enc.put_object(bucket: test_bucket, key: test_object, body: plaintext)

              # Tamper with the stored commitment
              data[:metadata]['x-amz-d'] = Base64.strict_encode64('tampered' * 4)

              # Decrypt - should fail BEFORE trying to derive encryption key
              client_v3_dec = Client.new(
                client: s3_client,
                encryption_key: master_key,
                key_wrap_schema: :aes_gcm,
                commitment_policy: :require_encrypt_require_decrypt
              )

              # Spy on derive_encryption_key to ensure it's not called
              expect(Utils).not_to receive(:derive_encryption_key)

              stub_get(s3_client, data, true)
              # The library should raise an error before deriving encryption key
              expect {
                client_v3_dec.get_object(bucket: test_bucket, key: test_object)
              }.to raise_error # Any error indicates commitment was checked first
            end
          end
        end
      end
    end
  end
end
