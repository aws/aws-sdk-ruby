require_relative '../spec_helper'
require 'base64'
require 'openssl'

module Aws
  module S3
    module Encryption
      describe Client do
        let(:master_key) do
          Base64.decode64('kM5UVbhE/4rtMZJfsadYEdm2vaKFsmV2f5+URSeUCV4=')
        end

        let(:api_client) do
          S3::Client.new(
            access_key_id: 'akid',
            secret_access_key: 'secret',
            region: 'us-west-1',
            retry_backoff: ->(c) {} # disable failed request retries
          )
        end

        let(:options) { { client: api_client, encryption_key: master_key } }

        let(:client) { Encryption::Client.new(options) }

        describe 'configuration' do
          it 'constructs a default s3 client when one is not given' do
            api_client = double('client')
            expect(S3::Client).to receive(:new).and_return(api_client)
            client = Encryption::Client.new(encryption_key: master_key)
            expect(client.client).to be(api_client)
          end

          it 'accepts vanilla client options' do
            opts = {
              region: 'us-west-2',
              credentials: Credentials.new('akid', 'secret'),
              encryption_key: '.' * 32
            }
            enc_client = Encryption::Client.new(opts)
            expect(enc_client.client.config.region).to eq('us-west-2')
            expect(
              enc_client.client.config.credentials.access_key_id
            ).to eq('akid')
            expect(
              enc_client.client.config.credentials.secret_access_key
            ).to eq('secret')
          end

          it 'requires an encryption key or provider' do
            expect do
              options.delete(:encryption_key)
              Encryption::Client.new(options)
            end.to raise_error(
              ArgumentError, /:kms_key_id, :key_provider, or :encryption_key/
            )

            expect do
              Encryption::Client.new(options.merge(encryption_key: master_key))
            end.not_to raise_error

            expect do
              key_provider = double('key-provider')
              Encryption::Client.new(options.merge(key_provider: key_provider))
            end.not_to raise_error
          end

          it 'consturcts a key provider from a master key' do
            options[:encryption_key] = master_key
            expect(client.key_provider.key_for('')).to eq(master_key)
            expect(client.key_provider.key_for('{}')).to eq(master_key)
            expect(
              client.key_provider.key_for('{"foo":"bar"}')
            ).to eq(master_key)
          end

          it 'defaults :envelope_location to :metadata' do
            expect(client.envelope_location).to eq(:metadata)
          end

          it 'requires :envelope_location as :metadata or :instruction_file' do
            expect do
              Encryption::Client.new(options.merge(envelope_location: :bad))
            end.to raise_error(ArgumentError, /:metadata or :instruction_file/)

            expect do
              Encryption::Client.new(
                options.merge(envelope_location: :metadata)
              )
              Encryption::Client.new(
                options.merge(envelope_location: :instruction_file)
              )
            end.not_to raise_error
          end

          it 'requires :materials_description to be a valid JSON document' do
            options[:materials_description] = '?!'
            expect { client }.to raise_error(ArgumentError, /JSON document/)
          end

          it 'defaults :instruction_file_suffix to ".instruction"' do
            expect(client.instruction_file_suffix).to eq('.instruction')
          end

          it 'requires :instruction_file_suffix to be a string' do
            options[:instruction_file_suffix] = true
            expect { client }.to raise_error(ArgumentError, /must be a String/)
          end
        end

        describe 'encryption methods' do
          # this is the encrypted string "secret" using the fixed envelope
          # keys defined below in the before(:each) block
          let(:encrypted_body) { Base64.decode64('JIgXCTXpeQerPLiU6dVL4Q==') }

          before(:each) do
            key = Base64.decode64(
              'uSwsRlIMhY1klVYrgqceqjmQMmARcNl7rEKWW+7HVvA='
            )
            iv = Base64.decode64('TO5mQgtOzWkTfoX4RE5tsA==')
            allow_any_instance_of(OpenSSL::Cipher)
              .to receive(:random_key).and_return(key)
            allow_any_instance_of(OpenSSL::Cipher)
              .to receive(:random_iv).and_return(iv)
          end

          describe '#put_object' do
            it 'encrypts the data client-side' do
              stub_request(
                :put, 'https://bucket.s3.us-west-1.amazonaws.com/key'
              )
              client.put_object(bucket: 'bucket', key: 'key', body: 'secret')
              expect(
                a_request(
                  :put, 'https://bucket.s3.us-west-1.amazonaws.com/key'
                ).with(
                  body: encrypted_body,
                  headers: {
                    'Content-Length' => '16',
                    'Content-Md5' => 'l0B7VfMeJ/9UqZlxWo2uEw==',
                    # key is encrypted here with the master encryption key,
                    # then base64 encoded
                    'X-Amz-Meta-X-Amz-Key' => 'gX+a4JQYj7FP0y5TAAvxTz4e'\
                                              '2l0DvOItbXByml/NPtKQcUls'\
                                              'oGHoYR/T0TuYHcNj',
                    'X-Amz-Meta-X-Amz-Iv' => 'TO5mQgtOzWkTfoX4RE5tsA==',
                    'X-Amz-Meta-X-Amz-Matdesc' => '{}',
                    'X-Amz-Meta-X-Amz-Unencrypted-Content-Length' => '6'
                  }
                )
              ).to have_been_made.once
            end

            it 'encrypts an empty or missing body' do
              stub_request(
                :put, 'https://bucket.s3.us-west-1.amazonaws.com/key'
              )
              client.put_object(bucket: 'bucket', key: 'key') # body not set
              expect(
                a_request(
                  :put, 'https://bucket.s3.us-west-1.amazonaws.com/key'
                ).with(body: /.{16}/)
              ).to have_been_made.once
            end

            it 'can store the encryption envelope in a separate object' do
              stub_request(
                :put, 'https://bucket.s3.us-west-1.amazonaws.com/key'
              )
              stub_request(
                :put,
                'https://bucket.s3.us-west-1.amazonaws.com/key.instruction'
              )

              options[:envelope_location] = :instruction_file
              client.put_object(bucket: 'bucket', key: 'key', body: 'secret')

              # first request stores the encryption materials in the
              # instruction file
              expect(
                a_request(
                  :put,
                  'https://bucket.s3.us-west-1.amazonaws.com/key.instruction'
                ).with(
                  body: Json.dump(
                    'x-amz-key' => 'gX+a4JQYj7FP0y5TAAvxTz4e2l0DvOIt'\
                                 'bXByml/NPtKQcUlsoGHoYR/T0TuYHcNj',
                    'x-amz-iv' => 'TO5mQgtOzWkTfoX4RE5tsA==',
                    'x-amz-matdesc' => '{}'
                  )
                )
              ).to have_been_made.once

              # second request stores teh encrypted object
              expect(
                a_request(
                  :put, 'https://bucket.s3.us-west-1.amazonaws.com/key'
                ).with(
                  body: encrypted_body,
                  headers: {
                    'Content-Length' => '16',
                    'X-Amz-Meta-X-Amz-Unencrypted-Content-Length' => '6'
                  }
                )
              ).to have_been_made.once
            end

            it 'accpets a custom instruction file suffix' do
              req1 = stub_request(
                :put, 'https://bucket.s3.us-west-1.amazonaws.com/key.envelope'
              )
              req2 = stub_request(
                :put, 'https://bucket.s3.us-west-1.amazonaws.com/key'
              )

              options[:envelope_location] = :instruction_file
              options[:instruction_file_suffix] = '.envelope'
              client.put_object(bucket: 'bucket', key: 'key', body: 'secret')

              expect(req1).to have_been_made.once
              expect(req2).to have_been_made.once
            end

            it 'moves the un-encrypted md5 to a new header' do
              stub_request(
                :put, 'https://bucket.s3.us-west-1.amazonaws.com/key'
              )
              client.put_object(
                bucket: 'bucket', key: 'key', body: 'secret', content_md5: 'MD5'
              )
              expect(
                a_request(
                  :put, 'https://bucket.s3.us-west-1.amazonaws.com/key'
                ).with(
                  body: encrypted_body,
                  headers: {
                    'X-Amz-Meta-X-Amz-Unencrypted-Content-Md5' => 'MD5'
                  }
                )
              ).to have_been_made.once
            end

            it 'supports encryption with an asymmetric key pair' do
              stub_request(
                :put, 'https://bucket.s3.us-west-1.amazonaws.com/key'
              )
              options[:encryption_key] = OpenSSL::PKey::RSA.generate(1024)
              resp = client.put_object(
                bucket: 'bucket', key: 'key', body: 'secret'
              )
              expect(
                resp.context.http_request.body_contents
              ).not_to eq('secret')
            end

            it 'raises an error on an invalid encryption key' do
              options[:encryption_key] = 123
              expect do
                client.put_object(bucket: 'bucket', key: 'key', body: 'secret')
              end.to raise_error(ArgumentError, /invalid encryption key/)
            end
          end

          describe '#get_object' do
            def stub_encrypted_get(matdesc = '{}')
              stub_request(
                :get, 'https://bucket.s3.us-west-1.amazonaws.com/key'
              )
                .to_return(
                  body: encrypted_body,
                  headers: {
                    'X-Amz-Meta-X-Amz-Key' => 'gX+a4JQYj7FP0y5TAAvxTz4e'\
                                              '2l0DvOItbXByml/NPtKQcUls'\
                                              'oGHoYR/T0TuYHcNj',
                    'X-Amz-Meta-X-Amz-Iv' => 'TO5mQgtOzWkTfoX4RE5tsA==',
                    'X-Amz-Meta-X-Amz-Matdesc' => matdesc
                  }
                )
            end

            def stub_encrypted_get_chunked
              cipher = OpenSSL::Cipher::AES256.new(:CBC)
              cipher.encrypt
              cipher.key = Base64.decode64(
                'uSwsRlIMhY1klVYrgqceqjmQMmARcNl7rEKWW+7HVvA='
              )
              cipher.iv = Base64.decode64('TO5mQgtOzWkTfoX4RE5tsA==')
              encrypted_body = cipher.update('0' * 50) + cipher.final
              stub_request(
                :get, 'https://bucket.s3.us-west-1.amazonaws.com/key'
              ).to_return(
                body: encrypted_body,
                headers: {
                  'X-Amz-Meta-X-Amz-Key' => 'gX+a4JQYj7FP0y5TAAvxTz4e'\
                                            '2l0DvOItbXByml/NPtKQcUls'\
                                            'oGHoYR/T0TuYHcNj',
                  'X-Amz-Meta-X-Amz-Iv' => 'TO5mQgtOzWkTfoX4RE5tsA==',
                  'X-Amz-Meta-X-Amz-Matdesc' => '{}'
                }
              )
            end

            def stub_encrypted_get_with_instruction_file(sfx = '.instruction')
              stub_request(
                :get, 'https://bucket.s3.us-west-1.amazonaws.com/key'
              ).to_return(body: encrypted_body)
              stub_request(
                :get, "https://bucket.s3.us-west-1.amazonaws.com/key#{sfx}"
              ).to_return(
                body: Json.dump(
                  'x-amz-key' => 'gX+a4JQYj7FP0y5TAAvxTz4e2l0DvOIt'\
                               'bXByml/NPtKQcUlsoGHoYR/T0TuYHcNj',
                  'x-amz-iv' => 'TO5mQgtOzWkTfoX4RE5tsA==',
                  'x-amz-matdesc' => '{}'
                )
              )
            end

            it 'decrypts the object' do
              stub_encrypted_get
              resp = client.get_object(bucket: 'bucket', key: 'key')
              expect(resp.body.read).to eq('secret')
            end

            it 'decrypts the object with response target under retry' do
              stub_encrypted_get_chunked
              allow_any_instance_of(DecryptHandler)
                .to receive(:attach_http_event_listeners)
                .and_wrap_original do |m, context|
                m.call(context)
                context.http_response.on_data do |_chunk|
                  if context.retries.zero?
                    context.retries = 1
                    # 1.9.3 doesn't have Net:ReadTimeout Error
                    # mocking with RuntimeError instead
                    context.http_response.signal_error(
                      Seahorse::Client::NetworkingError.new(RuntimeError.new)
                    )
                  end
                end
              end
              data = StringIO.new
              client.get_object(
                bucket: 'bucket', key: 'key', response_target: data
              )
              expect(data.size).to eq(50)
            end

            it 'supports #get_object with a block' do
              stub_encrypted_get
              data = ''
              client.get_object(bucket: 'bucket', key: 'key') do |chunk|
                data << chunk
              end
              expect(data).to eq('secret')
            end

            it 'does not attempt to decrypt failed responses' do
              stub_request(
                :get, 'https://bucket.s3.us-west-1.amazonaws.com/key'
              ).to_return(status: 500)
              expect do
                client.get_object(bucket: 'bucket', key: 'key')
              end.to raise_error(Aws::S3::Errors::ServiceError)
            end

            it 'loads envelope from instruction file when not in metadata' do
              stub_encrypted_get_with_instruction_file
              resp = client.get_object(bucket: 'bucket', key: 'key')
              expect(resp.body.read).to eq('secret')
            end

            it 'users the configured instruction file suffix' do
              stub_encrypted_get_with_instruction_file('.envelope')
              options[:instruction_file_suffix] = '.envelope'
              resp = client.get_object(bucket: 'bucket', key: 'key')
              expect(resp.body.read).to eq('secret')
            end

            it 'gets the instruction file first with loc :instruction_file' do
              stub_encrypted_get_with_instruction_file
              options[:envelope_location] = :instruction_file
              resp = client.get_object(bucket: 'bucket', key: 'key')
              expect(resp.body.read).to eq('secret')
            end

            it 'accepts :envelope_location, overriding the default location' do
              stub_encrypted_get_with_instruction_file
              resp = client.get_object(
                bucket: 'bucket', key: 'key',
                envelope_location: :instruction_file
              )
              expect(resp.body.read).to eq('secret')
              expect(resp.context[:encryption][:envelope_location])
                .to eq(:instruction_file)
              expect(resp.context[:encryption][:instruction_file_suffix])
                .to eq('.instruction')
            end

            it 'accepts :instruction_file_suffix, overriding the default' do
              stub_encrypted_get_with_instruction_file('.envelope')
              resp = client.get_object(
                bucket: 'bucket', key: 'key',
                instruction_file_suffix: '.envelope'
              )
              expect(resp.body.read).to eq('secret')
              expect(resp.context[:encryption][:envelope_location])
                .to eq(:instruction_file)
              expect(resp.context[:encryption][:instruction_file_suffix])
                .to eq('.envelope')
            end

            it 'supports multiple master keys with a key provider' do
              stub_encrypted_get('MATERIALS-DESC')
              key_provider = double('key-provider')
              expect(key_provider).to receive(:key_for)
                .with('MATERIALS-DESC').and_return(master_key)
              options[:key_provider] = key_provider
              resp = client.get_object(bucket: 'bucket', key: 'key')
              expect(resp.body.read).to eq('secret')
            end

            it 'raises an error when materials can not be found' do
              stub_encrypted_get_with_instruction_file
              stub_request(
                :get,
                'https://bucket.s3.us-west-1.amazonaws.com/key.instruction'
              ).to_return(status: 404)
              expect do
                client.get_object(bucket: 'bucket', key: 'key')
              end.to raise_error(
                Errors::DecryptionError, 'unable to locate encryption envelope'
              )
            end

            it 'resets the cipher during decryption on error' do
              data = encrypted_body
              api_client.handle(step: :send) do |context|
                http_resp = context.http_response
                headers = {
                  'X-Amz-Meta-X-Amz-Key' => 'gX+a4JQYj7FP0y5TAAvxTz4e'\
                                            '2l0DvOItbXByml/NPtKQcUls'\
                                            'oGHoYR/T0TuYHcNj',
                  'X-Amz-Meta-X-Amz-Iv' => 'TO5mQgtOzWkTfoX4RE5tsA==',
                  'X-Amz-Meta-X-Amz-Matdesc' => '{}'
                }
                # fail first attempt, succeed second time
                if context[:already_failed]
                  http_resp.signal_headers(200, headers)
                  http_resp.signal_data(data)
                  http_resp.signal_done
                else
                  context[:already_failed] = true
                  http_resp.signal_headers(200, headers)
                  http_resp.signal_data(data)
                  http_resp.signal_error(
                    Seahorse::Client::NetworkingError.new(
                      RuntimeError.new('oops')
                    )
                  )
                end
                Seahorse::Client::Response.new(context: context)
              end
              resp = client.get_object(bucket: 'bucket', key: 'key')
              expect(resp.body.read).to eq('secret')
            end

            it 'raises an error when it is unable to decrypt the envelope' do
              stub_encrypted_get
              options[:encryption_key] = '.' * 32
              expect do
                client.get_object(bucket: 'bucket', key: 'key')
              end.to raise_error(
                Errors::DecryptionError,
                'decryption failed, possible incorrect key'
              )
            end

            it 'validates the key length' do
              stub_encrypted_get
              options[:encryption_key] = '.' * 31
              msg = 'invalid key, symmetric key required to be 16, 24, or 32 '\
                    'bytes in length, saw length 31'
              expect do
                client.get_object(bucket: 'bucket', key: 'key')
              end.to raise_error(ArgumentError, msg)
            end

            it 'supports asymmetric keys' do
              stub_encrypted_get
              options[:encryption_key] = OpenSSL::PKey::RSA.generate(1024)
              expect { client.get_object(bucket: 'bucket', key: 'key') }
                .to raise_error(StandardError)
            end

            it 'does not support get with range' do
              expect do
                client.get_object(
                  bucket: 'bucket', key: 'key', range: 'BYTE-RANGE'
                )
              end.to raise_error(NotImplementedError, /:range not supported/)
            end
          end

          describe '#delete_object' do
            it 'delegates to S3 client' do
              expect(client.client).to receive(:delete_object)
              client.delete_object(bucket: 'bucket', key: 'key')
            end
          end

          describe '#head_object' do
            it 'delegates to S3 client' do
              expect(client.client).to receive(:head_object)
              client.head_object(bucket: 'bucket', key: 'key')
            end
          end
        end

        describe 'kms_CBC' do
          let(:kms_client) { KMS::Client.new(stub_responses: true) }

          let(:client) do
            Encryption::Client.new(
              kms_key_id: 'kms-key-id',
              kms_client: kms_client,
              stub_responses: true
            )
          end

          let(:envelope) do
            {
              'x-amz-wrap-alg' => 'kms',
              'x-amz-cek-alg' => 'AES/CBC/PKCS5Padding',
              'x-amz-iv' => 'rVucSqIJvenVa7HliO+oIw==',
              'x-amz-key-v2' => Base64.strict_encode64('encrypted-object-key'),
              'x-amz-matdesc' => '{"kms_cmk_id":"kms-key-id"}'
            }
          end

          let(:plaintext_object_key) do
            "\xE4^\xE3\xE0v@\x8Aq\xAF\xE7y\x10\x18\xD4X"\
            "\xC2\xDC&\xF6\xDB\xCCM\x03\xAF3DD\xFF\xDA\x0Flj"
          end

          let(:encrypted_object_key) { 'encrypted-object-key' }

          let(:random_iv) { Base64.decode64('rVucSqIJvenVa7HliO+oIw==') }

          before(:each) do
            allow_any_instance_of(OpenSSL::Cipher).to(
              receive(:random_iv)
              .and_return(random_iv)
            )
          end

          it 'supports encryption via KMS' do
            kms_client.stub_responses(
              :generate_data_key,
              plaintext: plaintext_object_key,
              ciphertext_blob: encrypted_object_key
            )
            resp = client.put_object(
              bucket: 'aws-sdk', key: 'foo', body: 'plain-text'
            )
            headers = resp.context.http_request.headers
            envelope.each do |key, value|
              expect(headers["x-amz-meta-#{key}"]).to eq(value)
            end
            expect(
              Base64.encode64(resp.context.http_request.body_contents)
            ).to eq("4FAj3kTOIisQ+9b8/kia8g==\n")
          end

          it 'supports decryption via KMS w/ CBC' do
            kms_client.stub_responses(:decrypt, plaintext: plaintext_object_key)
            client.client.stub_responses(
              :get_object,
              body: Base64.decode64("4FAj3kTOIisQ+9b8/kia8g==\n"),
              metadata: envelope
            )
            resp = client.get_object(bucket: 'aws-sdk', key: 'foo')
            expect(resp.body.read).to eq('plain-text')
          end
        end

        describe 'kms_GCM' do
          let(:kms_client) { KMS::Client.new(stub_responses: true) }

          let(:client) do
            Encryption::Client.new(
              kms_key_id: 'kms-key-id',
              kms_client: kms_client,
              stub_responses: true
            )
          end

          let(:headers) do
            base64_encoded = Base64.strict_encode64('encrypted-object-key')
            {
              'x-amz-meta-x-amz-wrap-alg' => 'kms',
              'x-amz-meta-x-amz-cek-alg' => 'AES/GCM/NoPadding',
              'x-amz-meta-x-amz-iv' => 'XujE1oWCO83rw1PU',
              'x-amz-meta-x-amz-key-v2' => base64_encoded,
              'x-amz-meta-x-amz-matdesc' => '{"kms_cmk_id":"kms-key-id"}',
              'x-amz-meta-x-amz-tag-len' => '128',
              'content-length' => body.bytesize
            }
          end

          let(:body) { Base64.decode64('ZpPUtKX0PPupGaE0o7FbJw2Ov53MXfqenLA=') }

          let(:plaintext_object_key) do
            "\xACb.\xEB\x16\x19(\x9AJ\xE0uCA\x034z\xF6&\x7F"\
            "\x8E\x0E\xC0\xD5\x1A\x88\xAF2\xB1\xEEg#\x15"
          end

          if !ENV['TRAVIS'] && RUBY_VERSION > '1.9.3'
            it 'supports decryption via KMS w/ GCM' do
              unless OpenSSL::Cipher.ciphers.include?('aes-256-gcm')
                pending('aes-256-gcm not supported')
              end
              kms_client.stub_responses(
                :decrypt, plaintext: plaintext_object_key
              )
              client.client.stub_responses(
                :get_object,
                [
                  # get_object resp
                  {
                    status_code: 200,
                    headers: headers,
                    body: body
                  },
                  # get_object w/range header resp
                  {
                    status_code: 200,
                    headers: headers.merge('content-length' => '16'),
                    body: body.bytes.to_a[-16..-1].pack('C*')
                  }
                ]
              )
              resp = client.get_object(bucket: 'aws-sdk', key: 'foo')
              expect(resp.body.read).to eq('plain-text')
            end
          end
        end
      end
    end
  end
end
