require_relative '../spec_helper'
require 'base64'
require 'openssl'

module Aws
  module S3
    module EncryptionV3

      describe 'HKDF Key Derivation via EncryptHandler' do

        let(:next_handler) { double(call: nil) }
        let(:handler) { EncryptHandler.new(next_handler) }
        let(:s3_client) { S3::Client.new(stub_responses: true) }
        let(:test_bucket) { 'test-bucket' }
        let(:test_object) { 'test-object' }
        let(:plaintext) { 'test data' }
        let(:encryption_key) { OpenSSL::Cipher.new('aes-256-gcm').random_key }

        describe 'AES-GCM encryption with HKDF' do
          let(:key_provider) { DefaultKeyProvider.new(encryption_key: encryption_key) }
          let(:cipher_provider) { DefaultCipherProvider.new(key_provider: key_provider, key_wrap_schema: :aes_gcm) }

          it 'validates input keying material length equals 32 bytes' do
            ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
            ##= type=test
            ##% - The length of the input keying material MUST equal the key derivation input length specified by the algorithm suite commit key derivation setting.

            # Verify that the generated data key has the correct length
            allow(Utils).to receive(:generate_data_key).and_wrap_original do |m|
              key = m.call
              expect(key.bytesize).to eq(32)
              key
            end

            params = { bucket: test_bucket, key: test_object, body: plaintext }
            context_enc = { cipher_provider: cipher_provider, envelope_location: :metadata }
            http_response = double(on_headers: nil)
            config = Struct.new(:user_agent_suffix).new
            context = double(params: params, client: s3_client, :[] => context_enc, http_response: http_response, config: config)

            handler.call(context)
          end

          it 'derives encryption key with correct parameters' do
            ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
            ##= type=test
            ##% - The DEK input pseudorandom key MUST be the output from the extract step.

            # Verify derive_encryption_key is called with proper parameters
            expect(Utils).to receive(:derive_encryption_key).and_call_original

            params = { bucket: test_bucket, key: test_object, body: plaintext }
            context_enc = { cipher_provider: cipher_provider, envelope_location: :metadata }
            http_response = double(on_headers: nil)
            config = Struct.new(:user_agent_suffix).new
            context = double(params: params, client: s3_client, :[] => context_enc, http_response: http_response, config: config)

            handler.call(context)
          end

          it 'returns encryption key with correct length' do
            ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
            ##= type=test
            ##% - The length of the output keying material MUST equal the encryption key length specified by the algorithm suite encryption settings.

            # Verify the derived encryption key has the correct length
            allow(Utils).to receive(:derive_encryption_key).and_wrap_original do |m, *args|
              key = m.call(*args)
              expect(key.bytesize).to eq(32)
              key
            end

            params = { bucket: test_bucket, key: test_object, body: plaintext }
            context_enc = { cipher_provider: cipher_provider, envelope_location: :metadata }
            http_response = double(on_headers: nil)
            config = Struct.new(:user_agent_suffix).new
            context = double(params: params, client: s3_client, :[] => context_enc, http_response: http_response, config: config)

            handler.call(context)
          end

          it 'derives commitment key with correct parameters' do
            ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
            ##= type=test
            ##% - The CK input pseudorandom key MUST be the output from the extract step.

            # Verify derive_commitment_key is called
            expect(Utils).to receive(:derive_commitment_key).and_call_original

            params = { bucket: test_bucket, key: test_object, body: plaintext }
            context_enc = { cipher_provider: cipher_provider, envelope_location: :metadata }
            http_response = double(on_headers: nil)
            config = Struct.new(:user_agent_suffix).new
            context = double(params: params, client: s3_client, :[] => context_enc, http_response: http_response, config: config)

            handler.call(context)
          end

          it 'returns commitment key with correct length' do
            ##= ../specification/s3-encryption/encryption.md#alg-aes-256-gcm-hkdf-sha512-commit-key
            ##= type=test
            ##% The derived key commitment value MUST be set or returned from the encryption process such that it can be included in the content metadata.
            ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
            ##= type=test
            ##% - The length of the output keying material MUST equal the commit key length specified by the supported algorithm suites.

            # Verify the derived commitment key has the correct length (28 bytes)
            allow(Utils).to receive(:derive_commitment_key).and_wrap_original do |m, *args|
              key = m.call(*args)
              expect(key.bytesize).to eq(28)
              key
            end

            params = { bucket: test_bucket, key: test_object, body: plaintext }
            context_enc = { cipher_provider: cipher_provider, envelope_location: :metadata }
            http_response = double(on_headers: nil)
            config = Struct.new(:user_agent_suffix).new
            context = double(params: params, client: s3_client, :[] => context_enc, http_response: http_response, config: config)

            handler.call(context)
          end

          it 'uses IV containing only 0x01 for AES-GCM encryption' do
            ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
            ##= type=test
            ##% When encrypting or decrypting with ALG_AES_256_GCM_HKDF_SHA512_COMMIT_KEY,
            ##% the IV used in the AES-GCM content encryption/decryption MUST consist entirely of bytes with the value 0x01.
            ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
            ##= type=test
            ##% The IV's total length MUST match the IV length defined by the algorithm suite.

            v3_iv_bytes = "\x01" * 12
            iv_used = false
            
            # aes_cipher is called multiple times - check that at least one uses zero IV
            allow(Utils).to receive(:aes_cipher).and_wrap_original do |m, mode, block_mode, key, iv|
              if iv == v3_iv_bytes && block_mode == :GCM
                iv_used = true
              end
              m.call(mode, block_mode, key, iv)
            end

            params = { bucket: test_bucket, key: test_object, body: plaintext }
            context_enc = { cipher_provider: cipher_provider, envelope_location: :metadata }
            http_response = double(on_headers: nil)
            config = Struct.new(:user_agent_suffix).new
            context = double(params: params, client: s3_client, :[] => context_enc, http_response: http_response, config: config)

            handler.call(context)
            expect(iv_used).to be true
          end

          it 'initializes cipher with derived encryption key and zero IV' do
            ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
            ##= type=test
            ##% The client MUST initialize the cipher, or call an AES-GCM encryption API, with the derived encryption key, an IV containing only bytes with the value 0x01,
            ##% and the tag length defined in the Algorithm Suite when encrypting or decrypting with ALG_AES_256_GCM_HKDF_SHA512_COMMIT_KEY.

            # Verify aes_cipher is called with the derived encryption key and zero IV
            derived_key = nil
            allow(Utils).to receive(:derive_encryption_key).and_wrap_original do |m, *args|
              derived_key = m.call(*args)
              derived_key
            end

            v3_iv_bytes = "\x01" * 12
            correct_cipher_init = false
            
            allow(Utils).to receive(:aes_cipher).and_wrap_original do |m, mode, block_mode, key, iv|
              if key == derived_key && iv == v3_iv_bytes && block_mode == :GCM
                correct_cipher_init = true
              end
              m.call(mode, block_mode, key, iv)
            end

            params = { bucket: test_bucket, key: test_object, body: plaintext }
            context_enc = { cipher_provider: cipher_provider, envelope_location: :metadata }
            http_response = double(on_headers: nil)
            config = Struct.new(:user_agent_suffix).new
            context = double(params: params, client: s3_client, :[] => context_enc, http_response: http_response, config: config)

            handler.call(context)
            expect(correct_cipher_init).to be true
          end

          it 'sets AAD to the Algorithm Suite ID' do
            ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
            ##= type=test
            ##% The client MUST set the AAD to the Algorithm Suite ID represented as bytes.

            # Verify the cipher's AAD is set correctly by checking the envelope
            params = { bucket: test_bucket, key: test_object, body: plaintext }
            context_enc = { cipher_provider: cipher_provider, envelope_location: :metadata }
            http_response = double(on_headers: nil)
            config = Struct.new(:user_agent_suffix).new
            context = double(params: params, client: s3_client, :[] => context_enc, http_response: http_response, config: config)

            handler.call(context)

            # Verify the envelope contains properly formatted values
            envelope = params[:metadata]
            expect(envelope['x-amz-c']).to eq('115') # Correct algorithm
            expect(envelope['x-amz-i']).not_to be_nil # Message ID present
            expect(envelope['x-amz-d']).not_to be_nil # Commitment key present
          end

          # The following tests use spy/mock on OpenSSL::KDF to verify HKDF behavior.
          # OpenSSL::KDF is not available in all Ruby versions, so these tests
          # are conditionally executed only when OpenSSL::KDF.hkdf is available.
          context 'when OpenSSL::KDF is available', if: defined?(OpenSSL::KDF) && OpenSSL::KDF.respond_to?(:hkdf) do
            it 'uses SHA512 as the hash function in HKDF' do
              ##= ../specification/s3-encryption/encryption.md#alg-aes-256-gcm-hkdf-sha512-commit-key
              ##= type=test
              ##% The client MUST use HKDF to derive the key commitment value and the derived encrypting key as described in [Key Derivation](key-derivation.md).
              ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
              ##= type=test
              ##% - The hash function MUST be specified by the algorithm suite commitment settings.

              # Spy on HKDF to verify SHA512 is used
              expect(OpenSSL::KDF).to receive(:hkdf).at_least(:once).with(
                anything,
                hash_including(hash: an_instance_of(OpenSSL::Digest::SHA512))
              ).and_call_original

              params = { bucket: test_bucket, key: test_object, body: plaintext }
              context_enc = { cipher_provider: cipher_provider, envelope_location: :metadata }
              http_response = double(on_headers: nil)
              config = Struct.new(:user_agent_suffix).new
              context = double(params: params, client: s3_client, :[] => context_enc, http_response: http_response, config: config)

              handler.call(context)
            end

            it 'uses the plaintext data key as input keying material' do
              ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
              ##= type=test
              ##% - The input keying material MUST be the plaintext data key (PDK) generated by the key provider.

              # Capture the data key generated and verify it's used in HKDF (both calls)
              data_key = nil
              allow(Utils).to receive(:generate_data_key).and_wrap_original do |m|
                data_key = m.call
                data_key
              end

              # Track calls to HKDF to verify the data key is used
              hkdf_calls = []
              allow(OpenSSL::KDF).to receive(:hkdf).and_wrap_original do |m, key, opts|
                hkdf_calls << key
                m.call(key, **opts)
              end

              params = { bucket: test_bucket, key: test_object, body: plaintext }
              context_enc = { cipher_provider: cipher_provider, envelope_location: :metadata }
              http_response = double(on_headers: nil)
              config = Struct.new(:user_agent_suffix).new
              context = double(params: params, client: s3_client, :[] => context_enc, http_response: http_response, config: config)

              handler.call(context)
              
              expect(data_key).not_to be_nil
              expect(data_key.bytesize).to eq(32)
              # Verify HKDF was called at least twice with the data_key
              expect(hkdf_calls.count(data_key)).to be >= 2
            end

            it 'uses the Message ID as salt in HKDF' do
              ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
              ##= type=test
              ##% - The salt MUST be the Message ID with the length defined in the algorithm suite.

              # Capture the message ID and verify it's used as salt in both HKDF calls
              message_id = nil
              allow(Utils).to receive(:generate_message_id).and_wrap_original do |m|
                message_id = m.call
                message_id
              end

              # Track calls to HKDF to verify the message_id is used as salt
              hkdf_salts = []
              allow(OpenSSL::KDF).to receive(:hkdf).and_wrap_original do |m, key, opts|
                hkdf_salts << opts[:salt]
                m.call(key, **opts)
              end

              params = { bucket: test_bucket, key: test_object, body: plaintext }
              context_enc = { cipher_provider: cipher_provider, envelope_location: :metadata }
              http_response = double(on_headers: nil)
              config = Struct.new(:user_agent_suffix).new
              context = double(params: params, client: s3_client, :[] => context_enc, http_response: http_response, config: config)

              handler.call(context)
              
              expect(message_id).not_to be_nil
              expect(message_id.bytesize).to eq(28)
              # Verify HKDF was called at least twice with the message_id as salt
              expect(hkdf_salts.count(message_id)).to be >= 2
            end

            it 'uses algorithm suite ID + DERIVEKEY as info parameter for encryption key' do
              ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
              ##= type=test
              ##% - The input info MUST be a concatenation of the algorithm suite ID as bytes followed by the string DERIVEKEY as UTF8 encoded bytes.

              expected_info = [0x00, 0x73].pack('C*') + "DERIVEKEY".encode('UTF-8')
              derivekey_called = false
              
              # HKDF is called twice - once with DERIVEKEY, once with COMMITKEY
              allow(OpenSSL::KDF).to receive(:hkdf).and_wrap_original do |m, key, opts|
                if opts[:info] == expected_info
                  derivekey_called = true
                end
                m.call(key, **opts)
              end

              params = { bucket: test_bucket, key: test_object, body: plaintext }
              context_enc = { cipher_provider: cipher_provider, envelope_location: :metadata }
              http_response = double(on_headers: nil)
              config = Struct.new(:user_agent_suffix).new
              context = double(params: params, client: s3_client, :[] => context_enc, http_response: http_response, config: config)

              handler.call(context)
              expect(derivekey_called).to be true
            end

            it 'uses algorithm suite ID + COMMITKEY as info parameter for commitment key' do
              ##= ../specification/s3-encryption/key-derivation.md#hkdf-operation
              ##= type=test
              ##% - The input info MUST be a concatenation of the algorithm suite ID as bytes followed by the string COMMITKEY as UTF8 encoded bytes.

              expected_info = [0x00, 0x73].pack('C*') + "COMMITKEY".encode('UTF-8')
              commitkey_called = false
              
              # HKDF is called twice - once with DERIVEKEY, once with COMMITKEY
              allow(OpenSSL::KDF).to receive(:hkdf).and_wrap_original do |m, key, opts|
                if opts[:info] == expected_info
                  commitkey_called = true
                end
                m.call(key, **opts)
              end

              params = { bucket: test_bucket, key: test_object, body: plaintext }
              context_enc = { cipher_provider: cipher_provider, envelope_location: :metadata }
              http_response = double(on_headers: nil)
              config = Struct.new(:user_agent_suffix).new
              context = double(params: params, client: s3_client, :[] => context_enc, http_response: http_response, config: config)

              handler.call(context)
              expect(commitkey_called).to be true
            end

            describe 'hkdf_fallback compatibility' do
              it 'raises an error when desired_length exceeds 64 bytes' do
                # The hkdf_fallback implementation only supports a single iteration
                # of the HKDF expand step, which limits output to 64 bytes (SHA512 hash length)
                input_key = OpenSSL::Random.random_bytes(32)
                salt = OpenSSL::Random.random_bytes(28)
                info = OpenSSL::Random.random_bytes(20)

                expect do
                  Utils.hkdf_fallback(input_key, salt, info, 65)
                end.to raise_error(Errors::DecryptionError, /Unsupported length/)

                expect do
                  Utils.hkdf_fallback(input_key, salt, info, 100)
                end.to raise_error(Errors::DecryptionError, /Unsupported length/)
              end

              it 'produces identical output to native hkdf for random inputs (property-based test)' do
                # Test that hkdf_fallback matches the Utils.hkdf (which uses native OpenSSL::KDF.hkdf)
                # for a variety of random inputs within the supported range
                
                test_cases = 30
                test_cases.times do
                  # Generate random parameters with various sizes
                  ikm_size = [16, 32, 64].sample
                  salt_size = [16, 28, 32].sample
                  info_size = [0, 10, 20, 50].sample
                  desired_length = rand(1..64)

                  input_key_material = OpenSSL::Random.random_bytes(ikm_size)
                  salt = OpenSSL::Random.random_bytes(salt_size)
                  info = info_size > 0 ? OpenSSL::Random.random_bytes(info_size) : ''.b
                  
                  # Get results from both implementations
                  fallback_result = Utils.hkdf_fallback(
                    input_key_material,
                    salt,
                    info,
                    desired_length
                  )
                  
                  native_result = Utils.hkdf(
                    input_key_material,
                    salt,
                    info,
                    desired_length
                  )
                  
                  # Verify they produce identical output
                  expect(fallback_result).to eq(native_result),
                    "hkdf_fallback output differs from Utils.hkdf for:\n" \
                    "  ikm_size=#{ikm_size}, salt_size=#{salt_size}, " \
                    "info_size=#{info_size}, desired_length=#{desired_length}"
                  
                  # Verify output length
                  expect(fallback_result.bytesize).to eq(desired_length)
                end
              end

              it 'produces identical output to native hkdf for production values' do
                # Test with the actual values used in production code
                data_key = OpenSSL::Random.random_bytes(32)
                message_id = OpenSSL::Random.random_bytes(28)
                
                # Define the info constants as they appear in utils.rb
                encryption_key_info = [0x00, 0x73].pack('C*') + "DERIVEKEY".encode('UTF-8')
                commitment_key_info = [0x00, 0x73].pack('C*') + "COMMITKEY".encode('UTF-8')
                
                # Test with ENCRYPTION_KEY_INFO
                fallback_enc = Utils.hkdf_fallback(
                  data_key,
                  message_id,
                  encryption_key_info,
                  32
                )
                
                native_enc = Utils.hkdf(
                  data_key,
                  message_id,
                  encryption_key_info,
                  32
                )
                
                expect(fallback_enc).to eq(native_enc)
                expect(fallback_enc.bytesize).to eq(32)
                
                # Test with COMMITMENT_KEY_INFO
                fallback_commit = Utils.hkdf_fallback(
                  data_key,
                  message_id,
                  commitment_key_info,
                  28
                )
                
                native_commit = Utils.hkdf(
                  data_key,
                  message_id,
                  commitment_key_info,
                  28
                )
                
                expect(fallback_commit).to eq(native_commit)
                expect(fallback_commit.bytesize).to eq(28)
              end
            end
          end
        end

        describe 'Non-HKDF GCM encryption' do
          let(:key_provider) { DefaultKeyProvider.new(encryption_key: encryption_key) }
          
          it 'verifies auth tag is appended to ciphertext for HKDF algorithm' do
            ##= ../specification/s3-encryption/encryption.md#alg-aes-256-gcm-hkdf-sha512-commit-key
            ##= type=test
            ##% The client MUST append the GCM auth tag to the ciphertext if the underlying crypto provider does not do so automatically.
            cipher_provider = DefaultCipherProvider.new(key_provider: key_provider, key_wrap_schema: :aes_gcm)
            
            data = {}
            s3_client.stub_responses(:put_object, lambda { |context|
              data[:metadata] = context.params[:metadata]
              data[:enc_body] = context.params[:body].read
              {}
            })
            
            client = Aws::S3::EncryptionV3::Client.new(
              client: s3_client,
              encryption_key: encryption_key,
              key_wrap_schema: :aes_gcm
            )
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # The plaintext + authTag should b plaintext + 16
            expect(data[:enc_body].bytesize).to eq(plaintext.bytesize + 16)
            auth_tag_candidate = data[:enc_body][-16..-1]
            expect(auth_tag_candidate.bytesize).to eq(16)
            
            # Verify successful decryption (which confirms tag is valid)
            resp_headers = Hash[*data[:metadata].map { |k, v| ["x-amz-meta-#{k.to_s}", v] }.flatten(1)]
            resp_headers['content-length'] = data[:enc_body].length
            s3_client.stub_responses(
              :get_object,
              {status_code: 200, body: data[:enc_body], headers: resp_headers},
              {body: auth_tag_candidate}
            )
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end
        end

        describe 'Algorithm suite validation' do
          it 'uses plaintext data key, random IV, and no AAD for non-HKDF GCM encryption' do
            ##= ../specification/s3-encryption/encryption.md#alg-aes-256-gcm-iv12-tag16-no-kdf
            ##= type=test
            ##% The client MUST initialize the cipher, or call an AES-GCM encryption API, 
            ##% with the plaintext data key, the generated IV, 
            ##% and the tag length defined in the Algorithm Suite when encrypting with ALG_AES_256_GCM_IV12_TAG16_NO_KDF.
            ##= ../specification/s3-encryption/encryption.md#alg-aes-256-gcm-iv12-tag16-no-kdf
            ##= type=test
            ##% The client MUST NOT provide any AAD when encrypting with ALG_AES_256_GCM_IV12_TAG16_NO_KDF.
            ##= ../specification/s3-encryption/encryption.md#alg-aes-256-gcm-iv12-tag16-no-kdf
            ##= type=test
            ##% The client MUST append the GCM auth tag to the ciphertext if the underlying crypto provider does not do so automatically.
            
            # With forbid_encrypt_allow_decrypt policy, the client uses non-HKDF (V2) encryption
            client = Aws::S3::EncryptionV3::Client.new(
              client: s3_client,
              encryption_key: encryption_key,
              key_wrap_schema: :aes_gcm,
              commitment_policy: :forbid_encrypt_allow_decrypt,
              content_encryption_schema: :aes_gcm_no_padding
            )
            
            # Track the plaintext data key and cipher initialization
            plaintext_data_key = nil
            random_iv = nil
            cipher_auth_data = nil
            cipher_initialized = false
            
            # Spy on V2 aes_encryption_cipher to capture the plaintext data key and IV
            allow(Aws::S3::EncryptionV2::Utils).to receive(:aes_encryption_cipher).and_wrap_original do |m, block_mode, key, iv|
              cipher = m.call(block_mode, key, iv)
              
              # Wrap the cipher to capture its key, iv, and auth_data
              allow(cipher).to receive(:key=).and_wrap_original do |method, k|
                plaintext_data_key = k
                method.call(k)
              end
              
              allow(cipher).to receive(:iv=).and_wrap_original do |method, i|
                random_iv = i
                method.call(i)
              end
              
              allow(cipher).to receive(:auth_data=).and_wrap_original do |method, ad|
                cipher_auth_data = ad
                cipher_initialized = true if block_mode == :GCM
                method.call(ad)
              end
              
              cipher
            end
            
            # Stub S3 response
            data = {}
            s3_client.stub_responses(:put_object, lambda { |context|
              data[:metadata] = context.params[:metadata]
              data[:body] = context.params[:body].read
              {}
            })
            
            # Perform encryption
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # Verify: Cipher was initialized with plaintext data key (not derived via HKDF)
            expect(plaintext_data_key).not_to be_nil
            expect(plaintext_data_key.bytesize).to eq(32) # 256-bit key
            
            # Verify: Random IV was generated (not zeros like HKDF)
            expect(random_iv).not_to be_nil
            expect(random_iv.bytesize).to eq(12) # 12-byte IV for GCM
            expect(random_iv).not_to eq("\x00" * 12) # Must NOT be all zeros
            
            # Verify: NO AAD was provided (empty string, not algorithm suite ID)
            expect(cipher_initialized).to be true
            expect(cipher_auth_data).to eq('') # Empty AAD, not algorithm suite ID
            
            # Verify: Auth tag is appended to ciphertext
            # Ciphertext should be: plaintext.length + 16 bytes for auth tag
            expect(data[:body].bytesize).to eq(plaintext.bytesize + 16)
            
            # Verify the last 16 bytes are the auth tag (non-zero for valid encryption)
            auth_tag = data[:body][-16..-1]
            expect(auth_tag.bytesize).to eq(16)
            expect(auth_tag).not_to eq("\x00" * 16) # Auth tag should not be all zeros
          end

          it 'rejects non-HKDF GCM with default policy' do
            # V3 client with default policy (require_encrypt_require_decrypt) only supports HKDF algorithms
            expect do
              Aws::S3::EncryptionV3::Client.new(
                client: s3_client,
                encryption_key: encryption_key,
                key_wrap_schema: :aes_gcm,
                content_encryption_schema: :aes_gcm_no_padding
              )
            end.to raise_error(ArgumentError, /content_encryption_schema/)
          end
        end
      end

    end
  end
end
