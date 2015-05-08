require 'spec_helper'
require 'base64'

module Aws
  module S3
    module Encryption
      describe Client do

        let(:master_key) {
          Base64.decode64("kM5UVbhE/4rtMZJfsadYEdm2vaKFsmV2f5+URSeUCV4=")
        }

        let(:api_client) {
          S3::Client.new(
            access_key_id: 'akid',
            secret_access_key: 'secret',
            region: 'us-west-1',
            retry_backoff: lambda { |c| }, # disable failed request retries
          )
        }

        let(:options) {{ client: api_client, encryption_key: master_key }}

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
              credentials:Credentials.new('akid', 'secret'),
              encryption_key: '.' * 32,
            }
            enc_client = Encryption::Client.new(opts)
            expect(enc_client.client.config.region).to eq('us-west-2')
            expect(enc_client.client.config.credentials.access_key_id).to eq('akid')
            expect(enc_client.client.config.credentials.secret_access_key).to eq('secret')
          end

          it 'requires an encryption key or provider' do
            expect {
              options.delete(:encryption_key)
              Encryption::Client.new(options)
            }.to raise_error(ArgumentError, /:key_provider or :encryption_key/)

            expect {
              Encryption::Client.new(options.merge(encryption_key: master_key))
            }.not_to raise_error

            expect {
              key_provider = double('key-provider')
              Encryption::Client.new(options.merge(key_provider: key_provider))
            }.not_to raise_error
          end

          it 'consturcts a key provider from a master key' do
            options[:encryption_key] = master_key
            # the master key is used for every materials description
            expect(client.key_provider.key_for('')).to eq(master_key)
            expect(client.key_provider.key_for('{}')).to eq(master_key)
            expect(client.key_provider.key_for('{"foo":"bar"}')).to eq(master_key)
          end

          it 'defaults :envelope_location to :metadata' do
            expect(client.envelope_location).to eq(:metadata)
          end

          it 'requires :envelope_location to be :metadata or :instruction_file' do
            expect {
              Encryption::Client.new(options.merge(envelope_location: :bad))
            }.to raise_error(ArgumentError, /:metadata or :instruction_file/)

            expect {
              Encryption::Client.new(options.merge(envelope_location: :metadata))
              Encryption::Client.new(options.merge(envelope_location: :instruction_file))
            }.not_to raise_error
          end

          it 'defaults :materials_description to an empty JSON document' do
            expect(client.key_provider.encryption_materials.description).to eq('{}')
          end

          it 'requires :materials_description to be a valid JSON document' do
            options[:materials_description] = '?!'
            expect {
              client
            }.to raise_error(ArgumentError, /JSON document/)
          end

          it 'defaults :instruction_file_suffix to ".instruction"' do
            expect(client.instruction_file_suffix).to eq('.instruction')
          end

          it 'requires :instruction_file_suffix to be a string' do
            options[:instruction_file_suffix] = true
            expect {
              client
            }.to raise_error(ArgumentError, /must be a String/)
          end

        end

        describe 'encryption methods' do

          # this is the encrypted string "secret" using the fixed envelope
          # keys defined below in the before(:each) block
          let(:encrypted_body) { Base64.decode64("JIgXCTXpeQerPLiU6dVL4Q==") }

          before(:each) do
            key = Base64.decode64("uSwsRlIMhY1klVYrgqceqjmQMmARcNl7rEKWW+7HVvA=")
            iv = Base64.decode64("TO5mQgtOzWkTfoX4RE5tsA==")
            allow_any_instance_of(OpenSSL::Cipher).to receive(:random_key).and_return(key)
            allow_any_instance_of(OpenSSL::Cipher).to receive(:random_iv).and_return(iv)
          end

          describe '#put_object' do

            it 'encrypts the data client-side' do
              stub_request(:put, "https://bucket.s3-us-west-1.amazonaws.com/key")
              client.put_object(bucket:'bucket', key:'key', body:'secret')
              expect(
                a_request(:put, "https://bucket.s3-us-west-1.amazonaws.com/key").with(
                  :body => encrypted_body,
                  :headers => {
                    'Content-Length' => '16',
                    'Content-Md5' => 'l0B7VfMeJ/9UqZlxWo2uEw==',
                    # key is encrypted here with the master encryption key,
                    # then base64 encoded
                    'X-Amz-Meta-X-Amz-Key'=>'gX+a4JQYj7FP0y5TAAvxTz4e2l0DvOItbXByml/NPtKQcUlsoGHoYR/T0TuYHcNj',
                    'X-Amz-Meta-X-Amz-Iv' => 'TO5mQgtOzWkTfoX4RE5tsA==',
                    'X-Amz-Meta-X-Amz-Matdesc' => '{}',
                    'X-Amz-Meta-X-Amz-Unencrypted-Content-Length' => '6'
                  }
                )
              ).to have_been_made.once
            end

            it 'encrypts an empty or missing body' do
              stub_request(:put, "https://bucket.s3-us-west-1.amazonaws.com/key")
              client.put_object(bucket:'bucket', key:'key') # body not set
              expect(
                a_request(:put, "https://bucket.s3-us-west-1.amazonaws.com/key").
                  with(:body => /.{16}/)
              ).to have_been_made.once
            end

            it 'can store the encryption envelope in a separate object' do

              stub_request(:put, "https://bucket.s3-us-west-1.amazonaws.com/key")
              stub_request(:put, "https://bucket.s3-us-west-1.amazonaws.com/key.instruction")

              options[:envelope_location] = :instruction_file
              client.put_object(bucket:'bucket', key:'key', body:'secret')

              # first request stores the encryption materials in the instruction file
              expect(
                a_request(:put, "https://bucket.s3-us-west-1.amazonaws.com/key.instruction").with(
                  :body => Json.dump(
                    'x-amz-key'=>'gX+a4JQYj7FP0y5TAAvxTz4e2l0DvOItbXByml/NPtKQcUlsoGHoYR/T0TuYHcNj',
                    'x-amz-iv' => 'TO5mQgtOzWkTfoX4RE5tsA==',
                    'x-amz-matdesc' => '{}',
                  )
                )
              ).to have_been_made.once

              # second request stores teh encrypted object
              expect(
                a_request(:put, "https://bucket.s3-us-west-1.amazonaws.com/key").with(
                  :body => encrypted_body,
                  :headers => {
                    'Content-Length' => '16',
                    'X-Amz-Meta-X-Amz-Unencrypted-Content-Length' => '6'
                  }
                )
              ).to have_been_made.once

            end

            it 'accpets a custom instruction file suffix' do
              req1 = stub_request(:put, "https://bucket.s3-us-west-1.amazonaws.com/key.envelope")
              req2 = stub_request(:put, "https://bucket.s3-us-west-1.amazonaws.com/key")

              options[:envelope_location] = :instruction_file
              options[:instruction_file_suffix] = '.envelope'
              client.put_object(bucket:'bucket', key:'key', body:'secret')

              expect(req1).to have_been_made.once
              expect(req2).to have_been_made.once
            end

            it 'moves the un-encrypted md5 to a new header' do
              stub_request(:put, "https://bucket.s3-us-west-1.amazonaws.com/key")
              client.put_object(bucket:'bucket', key:'key', body:'secret', content_md5: 'MD5')
              expect(
                a_request(:put, "https://bucket.s3-us-west-1.amazonaws.com/key").with(
                  :body => encrypted_body,
                  :headers => {
                    'X-Amz-Meta-X-Amz-Unencrypted-Content-Md5' => 'MD5'
                  }
                )
              ).to have_been_made.once
            end

            it 'supports encryption with an asymmetric key pair' do
              stub_request(:put, "https://bucket.s3-us-west-1.amazonaws.com/key")
              options[:encryption_key] = OpenSSL::PKey::RSA.generate(1024)
              resp = client.put_object(bucket:'bucket', key:'key', body:'secret')
              expect(resp.context.http_request.body_contents).not_to eq('secret')
            end

            it 'raises an error on an invalid encryption key' do
              options[:encryption_key] = 123
              expect {
                client.put_object(bucket:'bucket', key:'key', body:'secret')
              }.to raise_error(ArgumentError, /invalid encryption key/)
            end

          end

          describe '#get_object' do

            def stub_encrypted_get(matdesc = '{}')
              stub_request(:get, "https://bucket.s3-us-west-1.amazonaws.com/key").
                to_return(
                  body: encrypted_body,
                  headers: {
                    'X-Amz-Meta-X-Amz-Key'=>'gX+a4JQYj7FP0y5TAAvxTz4e2l0DvOItbXByml/NPtKQcUlsoGHoYR/T0TuYHcNj',
                    'X-Amz-Meta-X-Amz-Iv' => 'TO5mQgtOzWkTfoX4RE5tsA==',
                    'X-Amz-Meta-X-Amz-Matdesc' => matdesc,
                  }
                )
            end

            def stub_encrypted_get_with_instruction_file(suffix = '.instruction')
              stub_request(:get, "https://bucket.s3-us-west-1.amazonaws.com/key").
                to_return(body: encrypted_body)
              stub_request(:get, "https://bucket.s3-us-west-1.amazonaws.com/key#{suffix}").
                to_return(
                  :body => Json.dump(
                    'x-amz-key'=>'gX+a4JQYj7FP0y5TAAvxTz4e2l0DvOItbXByml/NPtKQcUlsoGHoYR/T0TuYHcNj',
                    'x-amz-iv' => 'TO5mQgtOzWkTfoX4RE5tsA==',
                    'x-amz-matdesc' => '{}',
                  )
                )
            end

            it 'decrypts the object' do
              stub_encrypted_get
              resp = client.get_object(bucket:'bucket', key:'key')
              expect(resp.body.read).to eq('secret')
            end

            it 'supports #get_object with a block' do
              stub_encrypted_get
              data = ''
              client.get_object(bucket:'bucket', key:'key') do |chunk|
                data << chunk
              end
              expect(data).to eq('secret')
            end

            it 'does not attempt to decrypt failed responses' do
              stub_request(:get, "https://bucket.s3-us-west-1.amazonaws.com/key").
                to_return(status: 500)
              expect {
                client.get_object(bucket:'bucket', key:'key')
              }.to raise_error(Aws::S3::Errors::ServiceError)
            end

            it 'loads envelope from instruction file when not found in metadata' do
              stub_encrypted_get_with_instruction_file
              resp = client.get_object(bucket:'bucket', key:'key')
              expect(resp.body.read).to eq('secret')
            end

            it 'users the configured instruction file suffix' do
              stub_encrypted_get_with_instruction_file('.envelope')
              options[:instruction_file_suffix] = '.envelope'
              resp = client.get_object(bucket:'bucket', key:'key')
              expect(resp.body.read).to eq('secret')
            end

            it 'gets the instruction file first with loc :instruction_file' do
              stub_encrypted_get_with_instruction_file
              options[:envelope_location] = :instruction_file
              resp = client.get_object(bucket:'bucket', key:'key')
              expect(resp.body.read).to eq('secret')
            end

            it 'accepts :envelope_location, overriding the default location' do
              stub_encrypted_get_with_instruction_file
              resp = client.get_object(bucket:'bucket', key:'key', envelope_location: :instruction_file)
              expect(resp.body.read).to eq('secret')
              expect(resp.context[:encryption][:envelope_location]).to eq(:instruction_file)
              expect(resp.context[:encryption][:instruction_file_suffix]).to eq('.instruction')
            end

            it 'accepts :instruction_file_suffix, overriding the default location' do
              stub_encrypted_get_with_instruction_file('.envelope')
              resp = client.get_object(bucket:'bucket', key:'key', instruction_file_suffix: '.envelope')
              expect(resp.body.read).to eq('secret')
              expect(resp.context[:encryption][:envelope_location]).to eq(:instruction_file)
              expect(resp.context[:encryption][:instruction_file_suffix]).to eq('.envelope')
            end

            it 'supports multiple master keys with a key provider' do
              stub_encrypted_get('MATERIALS-DESC')
              key_provider = double('key-provider')
              expect(key_provider).to receive(:key_for).
                with('MATERIALS-DESC').and_return(master_key)
              options[:key_provider] = key_provider
              resp = client.get_object(bucket:'bucket', key:'key')
              expect(resp.body.read).to eq('secret')
            end

            it 'raises an error when materials can not be found' do
              stub_encrypted_get_with_instruction_file
              stub_request(:get, "https://bucket.s3-us-west-1.amazonaws.com/key.instruction").
                to_return(status: 404)
              expect {
                client.get_object(bucket:'bucket', key:'key')
              }.to raise_error(Errors::DecryptionError, 'unable to locate encyrption envelope')
            end

            it 'resets the cipher during decryption on error' do
              data = encrypted_body
              api_client.handle(step: :send) do |context|
                http_resp = context.http_response
                headers = {
                  'X-Amz-Meta-X-Amz-Key'=>'gX+a4JQYj7FP0y5TAAvxTz4e2l0DvOItbXByml/NPtKQcUlsoGHoYR/T0TuYHcNj',
                  'X-Amz-Meta-X-Amz-Iv' => 'TO5mQgtOzWkTfoX4RE5tsA==',
                  'X-Amz-Meta-X-Amz-Matdesc' => '{}',
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
                    Seahorse::Client::NetworkingError.new(RuntimeError.new('oops'))
                  )
                end
                Seahorse::Client::Response.new(context: context)
              end
              resp = client.get_object(bucket:'bucket', key:'key')
              expect(resp.body.read).to eq('secret')
            end

            it 'raises an error when it is unable to decrypt the envelope' do
              stub_encrypted_get
              options[:encryption_key] = '.' * 32
              expect {
                client.get_object(bucket:'bucket', key:'key')
              }.to raise_error(Errors::DecryptionError, 'decryption failed, possible incorrect key')
            end

            it  'validates the key length' do
              stub_encrypted_get
              options[:encryption_key] = '.' * 31
              msg = 'invalid key, symmetric key required to be 16, 24, or 32 bytes in length, saw length 31'
              expect {
                client.get_object(bucket:'bucket', key:'key')
              }.to raise_error(ArgumentError, msg)
            end

            it 'supports asymmetric keys' do
              stub_encrypted_get
              options[:encryption_key] = OpenSSL::PKey::RSA.generate(1024)
              expect { client.get_object(bucket:'bucket', key:'key') }.to raise_error
            end

            it 'does not support get with range' do
              expect {
                client.get_object(bucket:'bucket', key:'key', range: 'BYTE-RANGE')
              }.to raise_error(NotImplementedError, /:range not supported/)
            end

          end
        end
      end
    end
  end
end
