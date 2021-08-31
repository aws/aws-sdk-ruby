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

        context 'when using a symmetric (AES) key' do
          let(:key) do
            OpenSSL::Cipher.new('aes-256-gcm').random_key
          end

          let(:options) do
            {
              client: s3_client,
              encryption_key: key,
              key_wrap_schema: :aes_gcm,
              content_encryption_schema: :aes_gcm_no_padding,
              security_profile: :v2
            }
          end

          it 'can encrypt and decrypt plain text' do
            client = Aws::S3::EncryptionV2::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            expect(data[:metadata]['x-amz-cek-alg']).to eq('AES/GCM/NoPadding')
            expect(data[:metadata]['x-amz-wrap-alg']).to eq('AES/GCM')

            stub_get(s3_client, data, true)
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end

          it 'supports #get_object with a block and raises a warning the first time' do
            client = Aws::S3::EncryptionV2::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            stub_get(s3_client, data, true)
            expect_any_instance_of(Aws::S3::EncryptionV2::DecryptHandler).to receive(:warn)
            decrypted = ''
            client.get_object(bucket: test_bucket, key: test_object) do |chunk|
              decrypted += chunk
            end
            expect(decrypted).to eq(plaintext)

            # it does not warn a second time
            expect_any_instance_of(Aws::S3::EncryptionV2::DecryptHandler).not_to receive(:warn)
            stub_get(s3_client, data, true)
            decrypted = ''
            client.get_object(bucket: test_bucket, key: test_object) do |chunk|
              decrypted += chunk
            end
          end

          it 'can can use envelope_location: instruction_file' do
            client = Aws::S3::EncryptionV2::Client.new(
              options.merge(envelope_location: :instruction_file)
            )
            data = {}
            s3_client.stub_responses(:put_object, lambda { |context|
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

          context 'security_profile: v2' do
            it 'raises a DecryptionError when reading a legacy object' do
              client_v1 = Aws::S3::Encryption::Client.new(encryption_key: key, client: s3_client)
              client_v2 = Aws::S3::EncryptionV2::Client.new(options)

              data = stub_put(s3_client)
              client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

              stub_get(s3_client, data, false)
              expect do
                client_v2.get_object(bucket: test_bucket, key: test_object)
              end.to raise_error(Errors::LegacyDecryptionError)
            end
          end

          context 'security_profile: v2_and_legacy' do
            let(:legacy_options) { options.merge(security_profile: :v2_and_legacy) }

            it 'can decrypt an object encrypted using legacy algorithm' do
              client_v1 = Aws::S3::Encryption::Client.new(encryption_key: key, client: s3_client)

              expect_any_instance_of(Aws::S3::EncryptionV2::Client).to receive(:warn)
              client_v2 = Aws::S3::EncryptionV2::Client.new(legacy_options)

              data = stub_put(s3_client)
              client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

              stub_get(s3_client, data, false)
              decrypted = client_v2.get_object(bucket: test_bucket, key: test_object).body.read
              expect(decrypted).to eq(plaintext)
            end
          end

          it 'decrypts the object with response target under retry' do
            client = Aws::S3::EncryptionV2::Client.new(options)
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
            client = Aws::S3::EncryptionV2::Client.new(options)
            stub_get(s3_client, {metadata: {}, enc_body: 'encrypted'}, false)
            expect do
              client.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(Errors::DecryptionError,
                                   /unable to locate encryption envelope/)
          end

          it 'raises a DecryptionError when given an unsupported cek algorithm' do
            client = Aws::S3::EncryptionV2::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            data[:metadata]['x-amz-cek-alg'] = 'BAD/ALG'

            stub_get(s3_client, data, true)
            expect do
              client.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(Errors::DecryptionError,
                                   /unsupported content encrypting key/)
          end

          it 'raises a DecryptionError when given an unsupported wrap algorithm' do
            client = Aws::S3::EncryptionV2::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            data[:metadata]['x-amz-wrap-alg'] = 'BAD/ALG'

            stub_get(s3_client, data, true)
            expect do
              client.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(Errors::DecryptionError,
                                   /unsupported key wrapping algorithm/)
          end

          it 'raises a DecryptionError when the envelope is missing fields' do
            client = Aws::S3::EncryptionV2::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            data[:metadata].delete('x-amz-iv')

            stub_get(s3_client, data, true)
            expect do
              client.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(Errors::DecryptionError,
                                   /incomplete v2 encryption envelope/)
          end

          it 'raises an CipherError when a bit in the encrypted content modified' do
            client = Aws::S3::EncryptionV2::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            data[:enc_body][0] = [(data[:enc_body].unpack('C1')[0]) ^ 1].pack('C1')

            stub_get(s3_client, data, true)
            expect do
              client.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(OpenSSL::Cipher::CipherError)
          end

          it 'raises an ArgumentError when the client has an RSA key' do
            client = Aws::S3::EncryptionV2::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            client_rsa = Aws::S3::EncryptionV2::Client.new(
              options.merge(encryption_key: OpenSSL::PKey::RSA.new(1024), key_wrap_schema: :rsa_oaep_sha1)
            )
            stub_get(s3_client, data, true)
            expect do
              client_rsa.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(ArgumentError)
          end

          it 'raises an ArgumentError when the client has a KMS key' do
            client = Aws::S3::EncryptionV2::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            client_kms = Aws::S3::EncryptionV2::Client.new(
              kms_key_id: 'kms_key_id', client: s3_client,
              key_wrap_schema: :kms_context,
              content_encryption_schema: :aes_gcm_no_padding,
              security_profile: :v2,
              kms_client: KMS::Client.new(stub_responses: true)
            )
            stub_get(s3_client, data, true)
            expect do
              client_kms.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(ArgumentError)
          end

          it 'raises an ArgumentError when given an invalid key' do
            expect do
              Aws::S3::EncryptionV2::Client.new(options.merge(
                encryption_key: 'too-short'))
            end.to raise_exception(ArgumentError, /invalid key, symmetric key/)
          end

          it 'raises an ArgumentError when given kms_encryption_context' do
            client = Aws::S3::EncryptionV2::Client.new(options)
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
              content_encryption_schema: :aes_gcm_no_padding,
              security_profile: :v2
            }
          end

          it 'can encrypt and decrypt plain text' do
            client = Aws::S3::EncryptionV2::Client.new(options)

            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
            expect(data[:metadata]).to include('x-amz-key-v2')
            expect(data[:metadata]['x-amz-wrap-alg']).to eq('RSA-OAEP-SHA1')
            expect(data[:metadata]['x-amz-cek-alg']).to eq('AES/GCM/NoPadding')

            stub_get(s3_client, data, true)
            decrypted = client.get_object(bucket: test_bucket, key: test_object).body.read
            expect(decrypted).to eq(plaintext)
          end

          context 'security_profile: v2' do
            it 'raises a DecryptionError when reading a legacy object' do
              client_v1 = Aws::S3::Encryption::Client.new(encryption_key: key, client: s3_client)
              client_v2 = Aws::S3::EncryptionV2::Client.new(options)

              data = stub_put(s3_client)
              client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

              stub_get(s3_client, data, false)
              expect do
                client_v2.get_object(bucket: test_bucket, key: test_object)
              end.to raise_error(Errors::LegacyDecryptionError)
            end
          end

          context 'security_profile: v2_and_legacy' do
            let(:legacy_options) { options.merge(security_profile: :v2_and_legacy) }

            it 'can decrypt an object encrypted using legacy algorithm' do
              client_v1 = Aws::S3::Encryption::Client.new(encryption_key: key, client: s3_client)

              expect_any_instance_of(Aws::S3::EncryptionV2::Client).to receive(:warn)
              client_v2 = Aws::S3::EncryptionV2::Client.new(legacy_options)

              data = stub_put(s3_client)
              client_v1.put_object(bucket: test_bucket, key: test_object, body: plaintext)

              stub_get(s3_client, data, false)
              decrypted = client_v2.get_object(bucket: test_bucket, key: test_object).body.read
              expect(decrypted).to eq(plaintext)
            end
          end

          it 'raises an ArgumentError when the client has an AES key' do
            client = Aws::S3::EncryptionV2::Client.new(options)
            data = stub_put(s3_client)
            client.put_object(bucket: test_bucket, key: test_object, body: plaintext)

            client_aes = Aws::S3::EncryptionV2::Client.new(
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
              content_encryption_schema: :aes_gcm_no_padding,
              security_profile: :v2,
              kms_client: kms_client
            }
          end

          it 'can encrypt and decrypt plain text' do
            client = Aws::S3::EncryptionV2::Client.new(options)

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
            expect(data[:metadata]['x-amz-cek-alg']).to eq('AES/GCM/NoPadding')
            expect(data[:metadata]['x-amz-wrap-alg']).to eq('kms+context')

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

          context 'security_profile: v2' do
            it 'raises a DecryptionError when reading a legacy object' do
              client_v1 = Aws::S3::Encryption::Client.new(
                kms_key_id: kms_key_id, client: s3_client, kms_client: kms_client
              )
              client_v2 = Aws::S3::EncryptionV2::Client.new(options)

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
                client_v2.get_object(bucket: test_bucket, key: test_object)
              end.to raise_error(Errors::LegacyDecryptionError)
            end
          end

          context 'security_profile: v2_and_legacy' do
            let(:legacy_options) { options.merge(security_profile: :v2_and_legacy) }

            it 'can decrypt an object encrypted using legacy algorithm' do
              client_v1 = Aws::S3::Encryption::Client.new(
                kms_key_id: kms_key_id, client: s3_client, kms_client: kms_client
              )

              expect_any_instance_of(Aws::S3::EncryptionV2::Client).to receive(:warn)
              client_v2 = Aws::S3::EncryptionV2::Client.new(legacy_options)

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
              decrypted = client_v2.get_object(bucket: test_bucket, key: test_object).body.read
              expect(decrypted).to eq(plaintext)
            end
          end

          it 'raises an ArgumentError when the client is configured with an AES key' do
            client = Aws::S3::EncryptionV2::Client.new(options)

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

            client_aes = Aws::S3::EncryptionV2::Client.new(
              encryption_key: OpenSSL::Cipher.new('aes-256-gcm').random_key,
              key_wrap_schema: :aes_gcm,
              content_encryption_schema: :aes_gcm_no_padding,
              security_profile: :v2,
              client: s3_client
            )
            stub_get(s3_client, data, true)
            expect do
              client_aes.get_object(bucket: test_bucket, key: test_object)
            end.to raise_exception(ArgumentError)
          end

          it 'raises an IncorrectKeyException when given the wrong key' do
            client = Aws::S3::EncryptionV2::Client.new(options)
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
            expect(data[:metadata]['x-amz-cek-alg']).to eq('AES/GCM/NoPadding')
            expect(data[:metadata]['x-amz-wrap-alg']).to eq('kms+context')

            client_wrong_key = Aws::S3::EncryptionV2::Client.new(options.merge(
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
              client = Aws::S3::EncryptionV2::Client.new(options)
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
              expect(data[:metadata]['x-amz-cek-alg']).to eq('AES/GCM/NoPadding')
              expect(data[:metadata]['x-amz-wrap-alg']).to eq('kms+context')

              client_any_cmk = Aws::S3::EncryptionV2::Client.new(options.merge(
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
              client = Aws::S3::EncryptionV2::Client.new(options)
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
              expect(data[:metadata]['x-amz-cek-alg']).to eq('AES/GCM/NoPadding')
              expect(data[:metadata]['x-amz-wrap-alg']).to eq('kms+context')

              client_wrong_key = Aws::S3::EncryptionV2::Client.new(options.merge(
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
              client = Aws::S3::EncryptionV2::Client.new(options.merge(
                kms_key_id: :kms_allow_decrypt_with_any_cmk
              ))

              expect do
                client.put_object(bucket: test_bucket, key: test_object, body: plaintext)
              end.to raise_error(ArgumentError, /kms_allow_decrypt_with_any_cmk/)
            end

            it 'raises an ArgumentError when aws:x-amz-cek-alg is set in the user provided kms_encryption_context' do
              client = Aws::S3::EncryptionV2::Client.new(options)

              expect do
                client.put_object(
                  bucket: test_bucket, key: test_object, body: plaintext,
                  kms_encryption_context: {'aws:x-amz-cek-alg' => 'error'})
              end.to raise_error(ArgumentError,
                                 /Conflict in reserved KMS Encryption Context/)
            end
          end
        end
      end
    end
  end
end
