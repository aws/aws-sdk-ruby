require_relative '../spec_helper'
require 'base64'
require 'openssl'

module Aws
  module S3
    module EncryptionV3

      describe Client do
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
            # The auth tag is left for legacy reasons.
            # The v3 client accumulates this from the current get object.
            {body: auth_tag}
          )
        end

        def stub_decrypt(kms_client, opts)
          kms_client.stub_responses(
            :decrypt, lambda do |context|
            if opts[:any_kms_key]
              expect(context.params['key_id']).to be_nil
            else
              if opts[:raise] && context.params['key_id'] != opts[:response][:key_id]
                raise Aws::KMS::Errors::IncorrectKeyException.new(context, '')
              else
                expect(context.params[:key_id]).to eq(opts[:response][:key_id])
              end
            end
            opts[:response]
            end
          )
        end

        let(:plaintext) { 'super secret plain text' }
        let(:test_bucket) { 'test_bucket' }
        let(:test_object) { 'test_object' }

        let(:s3_client) { S3::Client.new(stub_responses: true) }

        describe 'algorithm configuration' do
          let(:key) { OpenSSL::Cipher.new('aes-256-gcm').random_key }
          let(:options) do
            {
              client: s3_client,
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
            }
          end

          it 'uses the configured encryption algorithm during encryption' do
            ##= ../specification/s3-encryption/encryption.md#content-encryption
            ##= type=test
            ##% The S3EC MUST use the encryption algorithm configured during [client](./client.md) initialization.
            ##= ../specification/s3-encryption/client.md#encryption-algorithm
            ##= type=test
            ##% The S3EC MUST support configuration of the encryption algorithm (or algorithm suite) during its initialization.
            
            # Test with explicitly configured HKDF algorithm (V3 default)
            client_v3 = Aws::S3::EncryptionV3::Client.new(
              options.merge(content_encryption_schema: :alg_aes_256_gcm_hkdf_sha512_commit_key)
            )
            data_v3 = stub_put(s3_client)
            client_v3.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            expect(data_v3[:metadata]['x-amz-c']).to eq('115') # ALG_AES_256_GCM_HKDF_SHA512_COMMIT_KEY
            
            # Test with forbid policy uses V2 algorithm (aes_gcm_no_padding is default for V2)
            client_v2 = Aws::S3::EncryptionV3::Client.new(
              options.merge(
                commitment_policy: :forbid_encrypt_allow_decrypt,
                content_encryption_schema: :aes_gcm_no_padding,
              )
            )
            data_v2 = stub_put(s3_client)
            client_v2.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            expect(data_v2[:metadata]['x-amz-cek-alg']).to eq('AES/GCM/NoPadding')
          end

          it 'generates Message ID with correct length for encryption' do
            ##= ../specification/s3-encryption/encryption.md#content-encryption
            ##= type=test
            ##% The client MUST generate an IV or Message ID using the length of the IV or Message ID defined in the algorithm suite.
            client = Aws::S3::EncryptionV3::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # Verify Message ID is present and has correct length (28 bytes base64 encoded)
            expect(data[:metadata]['x-amz-i']).not_to be_nil
            decoded_message_id = Base64.decode64(data[:metadata]['x-amz-i'])
            expect(decoded_message_id.bytesize).to eq(28) # 224 bits for HKDF algorithm
          end

          it 'includes generated Message ID in content metadata' do
            ##= ../specification/s3-encryption/encryption.md#content-encryption
            ##= type=test
            ##% The generated IV or Message ID MUST be set or returned from the encryption process such that it can be included in the content metadata.
            client = Aws::S3::EncryptionV3::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # Verify Message ID is included in metadata
            expect(data[:metadata]['x-amz-i']).not_to be_nil
            
            # Verify it can be used for decryption
            stub_get(s3_client, data, true)
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end
        end

        context 'when using a symmetric (AES) key' do
          let(:key) do
            OpenSSL::Cipher.new('aes-256-gcm').random_key
          end

          let(:options) do
            {
              client: s3_client,
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
            }
          end

          it 'can encrypt and decrypt plain text' do
            client = Aws::S3::EncryptionV3::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            expect(data[:metadata]['x-amz-c']).to eq('115')
            expect(data[:metadata]['x-amz-w']).to eq('02')

            stub_get(s3_client, data, true)
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end

          it 'implements PutObject operation' do
            ##= ../specification/s3-encryption/client.md#required-api-operations
            ##= type=test
            ##% - PutObject MUST be implemented by the S3EC.
            client = Aws::S3::EncryptionV3::Client.new(options)
            data = stub_put(s3_client)
            
            # Verify PutObject can be called without errors
            expect do
              client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            end.not_to raise_error
            
            # Verify the operation completed successfully
            expect(data[:enc_body]).not_to be_nil
          end

          it 'encrypts data before uploading with PutObject' do
            ##= ../specification/s3-encryption/client.md#required-api-operations
            ##= type=test
            ##% - PutObject MUST encrypt its input data before it is uploaded to S3.
            client = Aws::S3::EncryptionV3::Client.new(options)
            data = stub_put(s3_client)
            
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # Verify the encrypted body is different from plaintext
            expect(data[:enc_body]).not_to eq(plaintext)
            
            # Verify encryption metadata is present
            expect(data[:metadata]['x-amz-c']).not_to be_nil
            expect(data[:metadata]['x-amz-w']).not_to be_nil
            expect(data[:metadata]['x-amz-d']).not_to be_nil
          end

          it 'implements GetObject operation' do
            ##= ../specification/s3-encryption/client.md#required-api-operations
            ##= type=test
            ##% - GetObject MUST be implemented by the S3EC.
            client = Aws::S3::EncryptionV3::Client.new(options)
            data = stub_put(s3_client)
            
            # First encrypt some data
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            stub_get(s3_client, data, true)
            
            # Verify GetObject can be called without errors
            expect do
              client.get_object(bucket: test_bucket, key: test_object)
            end.not_to raise_error
          end

          it 'decrypts data received from S3 with GetObject' do
            ##= ../specification/s3-encryption/client.md#required-api-operations
            ##= type=test
            ##% - GetObject MUST decrypt data received from the S3 server and return it as plaintext.
            client = Aws::S3::EncryptionV3::Client.new(options)
            data = stub_put(s3_client)
            
            # Encrypt and upload data
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            
            # Verify data was encrypted (different from plaintext)
            expect(data[:enc_body]).not_to eq(plaintext)
            
            stub_get(s3_client, data, true)
            
            # GetObject should return decrypted plaintext
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
            
            # Verify we're not just returning the encrypted data
            expect(decrypted).not_to eq(data[:enc_body])
          end

          it 'supports #get_object with a block and raises a warning the first time' do
            client = Aws::S3::EncryptionV3::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            stub_get(s3_client, data, true)
            expect_any_instance_of(Aws::S3::EncryptionV3::DecryptHandler).to receive(:warn)
            decrypted = ''
            client.get_object(bucket: test_bucket, key: test_object) do |chunk|
              decrypted += chunk
            end
            expect(decrypted).to eq(plaintext)

            # it does not warn a second time
            expect_any_instance_of(Aws::S3::EncryptionV3::DecryptHandler).not_to receive(:warn)
            stub_get(s3_client, data, true)
            decrypted = ''
            client.get_object(bucket: test_bucket, key: test_object) do |chunk|
              decrypted += chunk
            end
          end

          it 'can can use envelope_location: instruction_file' do
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#instruction-file
            ##= type=test
            ##% The S3EC MUST support writing some or all (depending on format) content metadata to an Instruction File.
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#instruction-file
            ##= type=test
            ##% Instruction File writes MUST be optionally configured during client creation or on each PutObject request.
            ##= ../specification/s3-encryption/client.md#instruction-file-configuration
            ##= type=test
            ##% The S3EC MAY support the option to provide Instruction File Configuration during its initialization.
            ##= ../specification/s3-encryption/client.md#instruction-file-configuration
            ##= type=test
            ##% If the S3EC in a given language supports Instruction Files, then it MUST accept Instruction File Configuration during its initialization.
            ##= ../specification/s3-encryption/client.md#instruction-file-configuration
            ##= type=test
            ##% In this case, the Instruction File Configuration SHOULD be optional, such that its default configuration is used when none is provided.

            client = Aws::S3::EncryptionV3::Client.new(
              options.merge(envelope_location: :instruction_file)
            )
            data = {}
            s3_client.stub_responses(:put_object, lambda { |context|
              if context.params[:key].include? '.instruction'
                ##= ../specification/s3-encryption/data-format/metadata-strategy.md#instruction-file
                ##= type=test
                ##% The content metadata stored in the Instruction File MUST be serialized to a JSON string.
                ##= ../specification/s3-encryption/data-format/metadata-strategy.md#instruction-file
                ##= type=test
                ##% The serialized JSON string MUST be the only contents of the Instruction File.
                data[:instruction_metadata] = JSON.load(context.params[:body])
              else
                data[:metadata] = context.params[:metadata]
                data[:enc_body] = context.params[:body].read
              end
              {}
            })
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            resp_headers = Hash[*data[:metadata].map { |k, v| ["x-amz-meta-#{k.to_s}", v] }.flatten(1)]
            resp_headers['content-length'] = data[:enc_body].length

            auth_tag = data[:enc_body].unpack('C*')[-16, 16].pack('C*')

            s3_client.stub_responses(
              :get_object,
              {status_code: 200, body: data[:enc_body], headers: resp_headers},
              {body: Json.dump(data[:instruction_metadata])},
              {body: auth_tag}
            )
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end

          it 'can can use instruction_file_suffix for a custom suffix' do
            clientPut = Aws::S3::EncryptionV3::Client.new(
              options.merge(envelope_location: :instruction_file, instruction_file_suffix: ".foo")
            )
            data = {}
            s3_client.stub_responses(:put_object, lambda { |context|
              if context.params[:key].include? '.foo'
                data[:instruction_metadata] = JSON.load(context.params[:body])
              else
                data[:metadata] = context.params[:metadata]
                data[:enc_body] = context.params[:body].read
              end
              {}
            })
            clientPut.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            clientGet = Aws::S3::EncryptionV3::Client.new(
              options.merge(envelope_location: :instruction_file)
            )

            resp_headers = Hash[*data[:metadata].map { |k, v| ["x-amz-meta-#{k.to_s}", v] }.flatten(1)]
            resp_headers['content-length'] = data[:enc_body].length

            auth_tag = data[:enc_body].unpack('C*')[-16, 16].pack('C*')

            s3_client.stub_responses(
              :get_object,
              {status_code: 200, body: data[:enc_body], headers: resp_headers},
              {body: Json.dump(data[:instruction_metadata])},
              {body: auth_tag}
            )
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#instruction-file
            ##= type=test
            ##% The S3EC SHOULD support providing a custom Instruction File suffix on GetObject requests, regardless of whether or not re-encryption is supported.
            decrypted = clientGet.get_object(bucket: test_bucket, key: test_object, instruction_file_suffix: "foo").body.read
            expect(decrypted).to eq(plaintext)
          end

          context 'security_profile: v3' do
            it 'raises a NonCommittingDecryptionError when reading a legacy object' do
              ##= ../specification/s3-encryption/decryption.md#legacy-decryption
              ##= type=test
              ##% If the S3EC is not configured to enable legacy unauthenticated content decryption, the client MUST throw an exception when attempting to decrypt an object encrypted with a legacy unauthenticated algorithm suite.
              ##= ../specification/s3-encryption/client.md#enable-legacy-unauthenticated-modes
              ##= type=test
              ##% When disabled, the S3EC MUST NOT decrypt objects encrypted using legacy content encryption algorithms; it MUST throw an exception when attempting to decrypt an object encrypted with a legacy content encryption algorithm.
              client_v1 = Aws::S3::Encryption::Client.new(encryption_key: key, client: s3_client)
              client_v3 = Aws::S3::EncryptionV3::Client.new(options)

              data = stub_put(s3_client)
              client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

              stub_get(s3_client, data, false)
              expect do
                client_v3.get_object(bucket: test_bucket, key: test_object)
              end.to raise_error(Errors::NonCommittingDecryptionError)
            end
          end

          context 'security_profile: v3_and_legacy' do
            let(:legacy_options) { options.merge(
                security_profile: :v3_and_legacy,
                commitment_policy: :require_encrypt_allow_decrypt
              )
            }

            it 'can decrypt an object encrypted using legacy algorithm' do
              ##= ../specification/s3-encryption/decryption.md#legacy-decryption
              ##= type=test
              ##% The S3EC MUST NOT decrypt objects encrypted using legacy unauthenticated algorithm suites unless specifically configured to do so.
              ##= ../specification/s3-encryption/client.md#enable-legacy-unauthenticated-modes
              ##= type=test
              ##% When enabled, the S3EC MUST be able to decrypt objects encrypted with all content encryption algorithms (both legacy and fully supported).
              client_v1 = Aws::S3::Encryption::Client.new(encryption_key: key, client: s3_client)

              expect_any_instance_of(Aws::S3::EncryptionV3::Client).to receive(:warn)
              client_v3 = Aws::S3::EncryptionV3::Client.new(legacy_options)

              data = stub_put(s3_client)
              client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

              stub_get(s3_client, data, false)
              decrypted = client_v3.get_object(bucket: test_bucket, key: test_object).body.read
              expect(decrypted).to eq(plaintext)
            end
          end

          it 'decrypts the object with response target under retry' do
            client = Aws::S3::EncryptionV3::Client.new(options)
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

          # Error cases
          it 'raises a DecryptionError when the envelope is missing' do
            client = Aws::S3::EncryptionV3::Client.new(options.merge(commitment_policy: :require_encrypt_allow_decrypt))
            stub_get(s3_client, {metadata: {}, enc_body: 'encrypted'}, false)
            expect do
              client.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(Aws::S3::EncryptionV2::Errors::DecryptionError,
                                   /unable to locate encryption envelope/)
          end

          it 'raises a DecryptionError when the envelope is missing' do
            client = Aws::S3::EncryptionV3::Client.new(options.merge(
              commitment_policy: :forbid_encrypt_allow_decrypt,
              content_encryption_schema: :aes_gcm_no_padding,
            ))
            stub_get(s3_client, {metadata: {}, enc_body: 'encrypted'}, false)
            expect do
              client.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(Aws::S3::EncryptionV2::Errors::DecryptionError,
                                   /unable to locate encryption envelope/)
          end

          it 'raises a NonCommittingDecryptionError when the envelope is missing' do
            client = Aws::S3::EncryptionV3::Client.new(options.merge(commitment_policy: :require_encrypt_require_decrypt))
            stub_get(s3_client, {metadata: {}, enc_body: 'encrypted'}, false)
            expect do
              client.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(Errors::NonCommittingDecryptionError,
                                   /not supported under :require_encrypt_require_decrypt/)
          end

          it 'raises a DecryptionError when given an unsupported cek algorithm' do
            client = Aws::S3::EncryptionV3::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            data[:metadata]['x-amz-c'] = 'BAD/ALG'

            stub_get(s3_client, data, true)
            expect do
              client.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(Errors::DecryptionError,
                                   /unsupported content encrypting key/)
          end

          it 'raises a DecryptionError when given an unsupported wrap algorithm' do
            client = Aws::S3::EncryptionV3::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            data[:metadata]['x-amz-w'] = 'BAD/ALG'

            stub_get(s3_client, data, true)
            expect do
              client.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(Errors::DecryptionError,
                                   /unsupported key wrapping algorithm/)
          end

          it 'raises a DecryptionError when the envelope is missing fields' do
            client = Aws::S3::EncryptionV3::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            data[:metadata].delete('x-amz-d')

            stub_get(s3_client, data, true)
            expect do
              client.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(Errors::DecryptionError,
                                   /incomplete v3 encryption envelope/)
          end

          it 'raises an CipherError when a bit in the encrypted content modified' do
            client = Aws::S3::EncryptionV3::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            data[:enc_body][0] = [(data[:enc_body].unpack('C1')[0]) ^ 1].pack('C1')

            stub_get(s3_client, data, true)
            expect do
              client.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(OpenSSL::Cipher::CipherError)
          end

          it 'raises an ArgumentError when the client has an RSA key' do
            client = Aws::S3::EncryptionV3::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            client_rsa = Aws::S3::EncryptionV3::Client.new(
              options.merge(encryption_key: OpenSSL::PKey::RSA.new(1024), key_wrap_schema: :rsa_oaep_sha1)
            )
            stub_get(s3_client, data, true)
            expect do
              client_rsa.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(ArgumentError)
          end

          it 'raises an ArgumentError when the client has a KMS key' do
            client = Aws::S3::EncryptionV3::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            client_kms = Aws::S3::EncryptionV3::Client.new(
              kms_key_id: 'kms_key_id', client: s3_client,
              key_wrap_schema: :kms_context,
              kms_client: KMS::Client.new(stub_responses: true)
            )
            stub_get(s3_client, data, true)
            expect do
              client_kms.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(ArgumentError)
          end

          it 'raises an ArgumentError when given an invalid key' do
            expect do
              Aws::S3::EncryptionV3::Client.new(options.merge(
                encryption_key: 'too-short'))
            end.to raise_exception(ArgumentError, /invalid key, symmetric key/)
          end

          it 'raises an ArgumentError when given kms_encryption_context' do
            client = Aws::S3::EncryptionV3::Client.new(options)
            expect do
              client.put_object(
                bucket: test_bucket, key: test_object, body: plaintext,
                kms_encryption_context: {context: 'test'}
              )
            end.to raise_error(ArgumentError, /kms_encryption_context/)
          end
        end

        context 'when using an asymmetric (RSA) key' do
          let(:key) do
            OpenSSL::PKey::RSA.new(1024)
          end

          let(:options) do
            {
              client: s3_client,
              encryption_key: key,
              key_wrap_schema: :rsa_oaep_sha1,
            }
          end

          it 'can encrypt and decrypt plain text' do
            client = Aws::S3::EncryptionV3::Client.new(options)

            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            expect(data[:metadata]).to include('x-amz-3')
            expect(data[:metadata]['x-amz-w']).to eq('22')
            expect(data[:metadata]['x-amz-c']).to eq('115')

            stub_get(s3_client, data, true)
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end

          context 'security_profile: v3' do
            it 'raises a NonCommittingDecryptionError when reading a legacy object' do
              ##= ../specification/s3-encryption/decryption.md#legacy-decryption
              ##= type=test
              ##% If the S3EC is not configured to enable legacy unauthenticated content decryption, the client MUST throw an exception when attempting to decrypt an object encrypted with a legacy unauthenticated algorithm suite.
              ##= ../specification/s3-encryption/client.md#enable-legacy-unauthenticated-modes
              ##= type=test
              ##% When disabled, the S3EC MUST NOT decrypt objects encrypted using legacy content encryption algorithms; it MUST throw an exception when attempting to decrypt an object encrypted with a legacy content encryption algorithm.
              ##= ../specification/s3-encryption/client.md#enable-legacy-wrapping-algorithms
              ##= type=test
              ##% When disabled, the S3EC MUST NOT decrypt objects encrypted using legacy wrapping algorithms; it MUST throw an exception when attempting to decrypt an object encrypted with a legacy wrapping algorithm.
              client_v1 = Aws::S3::Encryption::Client.new(encryption_key: key, client: s3_client)
              client_v3 = Aws::S3::EncryptionV3::Client.new(options)

              data = stub_put(s3_client)
              client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

              stub_get(s3_client, data, false)
              expect do
                client_v3.get_object(bucket: test_bucket, key: test_object)
              end.to raise_error(Errors::NonCommittingDecryptionError)
            end
          end

          context 'security_profile: v3_and_legacy' do
            let(:legacy_options) { options.merge(
                security_profile: :v3_and_legacy,
                commitment_policy: :require_encrypt_allow_decrypt
              )
            }

            it 'can decrypt an object encrypted using legacy algorithm' do
              ##= ../specification/s3-encryption/decryption.md#legacy-decryption
              ##= type=test
              ##% The S3EC MUST NOT decrypt objects encrypted using legacy unauthenticated algorithm suites unless specifically configured to do so.
              ##= ../specification/s3-encryption/client.md#enable-legacy-unauthenticated-modes
              ##= type=test
              ##% When enabled, the S3EC MUST be able to decrypt objects encrypted with all content encryption algorithms (both legacy and fully supported).
              ##= ../specification/s3-encryption/client.md#enable-legacy-wrapping-algorithms
              ##= type=test
              ##% When enabled, the S3EC MUST be able to decrypt objects encrypted with all supported wrapping algorithms (both legacy and fully supported).
              client_v1 = Aws::S3::Encryption::Client.new(encryption_key: key, client: s3_client)

              expect_any_instance_of(Aws::S3::EncryptionV3::Client).to receive(:warn)
              client_v3 = Aws::S3::EncryptionV3::Client.new(legacy_options)

              data = stub_put(s3_client)
              client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

              stub_get(s3_client, data, false)
              decrypted = client_v3.get_object(bucket: test_bucket, key: test_object).body.read
              expect(decrypted).to eq(plaintext)
            end
          end

          it 'raises an ArgumentError when the client has an AES key' do
            client = Aws::S3::EncryptionV3::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            client_aes = Aws::S3::EncryptionV3::Client.new(
              options.merge(
                encryption_key: OpenSSL::Cipher.new('aes-256-gcm').random_key,
                key_wrap_schema: :aes_gcm
              )
            )
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

          let(:options) do
            {
              client: s3_client,
              kms_key_id: kms_key_id,
              key_wrap_schema: :kms_context,
              kms_client: kms_client
            }
          end

          it 'can encrypt and decrypt plain text' do
            client = Aws::S3::EncryptionV3::Client.new(options)

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
            expect(data[:metadata]['x-amz-c']).to eq('115')
            expect(data[:metadata]['x-amz-w']).to eq('12')

            stub_get(s3_client, data, true)

            stub_decrypt(kms_client, any_kms_key: false, response:
              {
                key_id: kms_key_id,
                plaintext: kms_plaintext,
                encryption_algorithm: "SYMMETRIC_DEFAULT"
              })

            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end

          it 'can encrypt and decrypt non-current versions' do
            client = Aws::S3::EncryptionV3::Client.new(options)

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
            expect(data[:metadata]['x-amz-c']).to eq('115')
            expect(data[:metadata]['x-amz-w']).to eq('12')

            stub_get(s3_client, data, true)

            stub_decrypt(kms_client, any_kms_key: false, response:
              {
                key_id: kms_key_id,
                plaintext: kms_plaintext,
                encryption_algorithm: "SYMMETRIC_DEFAULT"
              })

            decrypted = client.get_object(bucket: test_bucket, key: test_object,
                                          version_id: 'version_id').body.read
            expect(decrypted).to eq(plaintext)
          end

          context 'security_profile: v3' do
            it 'raises a NonCommittingDecryptionError when reading a legacy object' do
              ##= ../specification/s3-encryption/decryption.md#legacy-decryption
              ##= type=test
              ##% If the S3EC is not configured to enable legacy unauthenticated content decryption, the client MUST throw an exception when attempting to decrypt an object encrypted with a legacy unauthenticated algorithm suite.
              ##= ../specification/s3-encryption/client.md#enable-legacy-unauthenticated-modes
              ##= type=test
              ##% When disabled, the S3EC MUST NOT decrypt objects encrypted using legacy content encryption algorithms; it MUST throw an exception when attempting to decrypt an object encrypted with a legacy content encryption algorithm.
              ##= ../specification/s3-encryption/client.md#enable-legacy-wrapping-algorithms
              ##= type=test
              ##% When disabled, the S3EC MUST NOT decrypt objects encrypted using legacy wrapping algorithms; it MUST throw an exception when attempting to decrypt an object encrypted with a legacy wrapping algorithm.
              client_v1 = Aws::S3::Encryption::Client.new(
                kms_key_id: kms_key_id, client: s3_client, kms_client: kms_client
              )
              client_v3 = Aws::S3::EncryptionV3::Client.new(options)

              data = stub_put(s3_client)
              kms_client.stub_responses(
                :generate_data_key,
                {
                  key_id: kms_key_id,
                  ciphertext_blob: kms_ciphertext_blob,
                  plaintext: kms_plaintext
                }
              )
              client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

              stub_get(s3_client, data, true)
              stub_decrypt(kms_client, any_kms_key: false, response:
                {
                  key_id: kms_key_id,
                  plaintext: kms_plaintext,
                  encryption_algorithm: "SYMMETRIC_DEFAULT"
                })
              expect do
                client_v3.get_object(bucket: test_bucket, key: test_object)
              end.to raise_error(Errors::NonCommittingDecryptionError)
            end
          end

          context 'security_profile: v3_and_legacy' do
            let(:legacy_options) { options.merge(
                security_profile: :v3_and_legacy,
                commitment_policy: :require_encrypt_allow_decrypt
              )
            }

            it 'can decrypt an object encrypted using legacy algorithm' do
              ##= ../specification/s3-encryption/decryption.md#legacy-decryption
              ##= type=test
              ##% The S3EC MUST NOT decrypt objects encrypted using legacy unauthenticated algorithm suites unless specifically configured to do so.
              ##= ../specification/s3-encryption/client.md#enable-legacy-unauthenticated-modes
              ##= type=test
              ##% When enabled, the S3EC MUST be able to decrypt objects encrypted with all content encryption algorithms (both legacy and fully supported).
              ##= ../specification/s3-encryption/client.md#enable-legacy-wrapping-algorithms
              ##= type=test
              ##% When enabled, the S3EC MUST be able to decrypt objects encrypted with all supported wrapping algorithms (both legacy and fully supported).
              client_v1 = Aws::S3::Encryption::Client.new(
                kms_key_id: kms_key_id, client: s3_client, kms_client: kms_client
              )

              expect_any_instance_of(Aws::S3::EncryptionV3::Client).to receive(:warn)
              client_v3 = Aws::S3::EncryptionV3::Client.new(legacy_options)

              data = stub_put(s3_client)
              kms_client.stub_responses(
                :generate_data_key,
                {
                  key_id: kms_key_id,
                  ciphertext_blob: kms_ciphertext_blob,
                  plaintext: kms_plaintext
                }
              )
              client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

              stub_get(s3_client, data, true)
              stub_decrypt(kms_client, any_kms_key: false, response:
                {
                  key_id: kms_key_id,
                  plaintext: kms_plaintext,
                  encryption_algorithm: "SYMMETRIC_DEFAULT"
                })
              decrypted = client_v3.get_object(bucket: test_bucket, key: test_object).body.read
              expect(decrypted).to eq(plaintext)
            end
          end

          it 'raises an ArgumentError when the client is configured with an AES key' do
            client = Aws::S3::EncryptionV3::Client.new(options)

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

            client_aes = Aws::S3::EncryptionV3::Client.new(
              encryption_key: OpenSSL::Cipher.new('aes-256-gcm').random_key,
              key_wrap_schema: :aes_gcm,
              client: s3_client
            )
            stub_get(s3_client, data, true)
            expect do
              client_aes.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(ArgumentError)
          end

          it 'raises an IncorrectKeyException when given the wrong key', rbs_test: :skip do
            client = Aws::S3::EncryptionV3::Client.new(options)
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
            expect(data[:metadata]['x-amz-c']).to eq('115')
            expect(data[:metadata]['x-amz-w']).to eq('12')

            client_wrong_key = Aws::S3::EncryptionV3::Client.new(options.merge(
              kms_key_id: 'wrong-key'
            ))

            stub_get(s3_client, data, true)
            stub_decrypt(kms_client, any_kms_key: false, raise: true, response:
              {
                key_id: kms_key_id,
                plaintext: kms_plaintext,
                encryption_algorithm: "SYMMETRIC_DEFAULT"
              })

            expect do
              client_wrong_key.get_object(bucket: test_bucket, key: test_object)
            end.to raise_error(Aws::KMS::Errors::IncorrectKeyException)
          end

          context 'kms_allow_decrypt_with_any_cmk' do
            it 'can decrypt with kms_key_id = kms_allow_decrypt_with_any_cmk' do
              client = Aws::S3::EncryptionV3::Client.new(options)
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
              expect(data[:metadata]['x-amz-c']).to eq('115')
              expect(data[:metadata]['x-amz-w']).to eq('12')

              client_any_cmk = Aws::S3::EncryptionV3::Client.new(options.merge(
                kms_key_id: :kms_allow_decrypt_with_any_cmk
              ))

              stub_get(s3_client, data, true)
              stub_decrypt(kms_client, any_kms_key: true, response:
                {
                  key_id: 'wrong-key',
                  plaintext: kms_plaintext,
                  encryption_algorithm: "SYMMETRIC_DEFAULT"
                })

              decrypted = client_any_cmk.get_object(bucket: test_bucket, key: test_object).body.read
              expect(decrypted).to eq(plaintext)
            end

            it 'can decrypt when given a different kms key with get_object override' do
              client = Aws::S3::EncryptionV3::Client.new(options)
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
              expect(data[:metadata]['x-amz-c']).to eq('115')
              expect(data[:metadata]['x-amz-w']).to eq('12')

              client_wrong_key = Aws::S3::EncryptionV3::Client.new(options.merge(
                kms_key_id: 'wrong-key'
              ))

              stub_get(s3_client, data, true)
              stub_decrypt(kms_client, any_kms_key: true, response:
                {
                  key_id: kms_key_id,
                  plaintext: kms_plaintext,
                  encryption_algorithm: "SYMMETRIC_DEFAULT"
                })

              decrypted = client_wrong_key.get_object(
                bucket: test_bucket, key: test_object,
                kms_allow_decrypt_with_any_cmk: true
              ).body.read
              expect(decrypted).to eq(plaintext)
            end

            it 'raises an ArgumentError when encrypting with kms_key_id = kms_allow_decrypt_with_any_cmk' do
              client = Aws::S3::EncryptionV3::Client.new(options.merge(
                kms_key_id: :kms_allow_decrypt_with_any_cmk
              ))

              expect do
                client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              end.to raise_error(ArgumentError, /kms_allow_decrypt_with_any_cmk/)
            end

            it 'raises an ArgumentError when aws:x-amz-cek-alg is set in the user provided kms_encryption_context' do
              client = Aws::S3::EncryptionV3::Client.new(options)

              expect do
                client.put_object(
                  bucket: test_bucket, key: test_object, body: plaintext,
                  kms_encryption_context: {'aws:x-amz-cek-alg' => 'error'})
              end.to raise_error(ArgumentError,
                                 /Conflict in reserved KMS Encryption Context/)
            end

            it 'does not change the encryption context' do
              client = Aws::S3::EncryptionV3::Client.new(options)
              enc_context = { user_context: '你好' }
              data = stub_put(s3_client)
              kms_client.stub_responses(
                :generate_data_key,
                {
                  key_id: kms_key_id,
                  ciphertext_blob: kms_ciphertext_blob,
                  plaintext: kms_plaintext
                }
              )
              client.put_object(
                bucket: test_bucket, key: test_object, body: plaintext,
                kms_encryption_context: enc_context
              )

              ##= ../specification/s3-encryption/data-format/metadata-strategy.md#object-metadata
              ##= type=test
              ##% If the S3EC does not support decoding the S3 Server's "double encoding" then it MUST return the content metadata untouched.
              expect(JSON.parse(data[:metadata]['x-amz-t'])).to include('user_context' => '你好')
            end
          end
        end
      end
    end
  end
end
