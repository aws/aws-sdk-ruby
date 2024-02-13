require_relative '../spec_helper'
require 'base64'
require 'openssl'

module Aws
  module S3
    module EncryptionV2
      describe Client do
        let(:master_key) do
          Base64.decode64('kM5UVbhE/4rtMZJfsadYEdm2vaKFsmV2f5+URSeUCV4=')
        end

        let(:kms_key_id) { 'kms_key_id' }

        let(:api_client) do
          S3::Client.new(
            access_key_id: 'akid',
            secret_access_key: 'secret',
            region: 'us-west-1',
            retry_backoff: ->(c) {} # disable failed request retries
          )
        end

        let(:required_opts) do
          {
            key_wrap_schema: :aes_gcm,
            content_encryption_schema: :aes_gcm_no_padding,
            security_profile: :v2
          }
        end

        let(:options) do
          required_opts.merge({
            client: api_client,
            encryption_key: master_key
          })
        end

        let(:client) { Client.new(options) }

        describe '#initialize' do
          it 'constructs a default s3 client when one is not given' do
            api_client = double('client')
            expect(S3::Client).to receive(:new).and_return(api_client)
            client = Client.new(required_opts.merge(encryption_key: master_key))
            expect(client.client).to be(api_client)
          end

          it 'accepts vanilla client options' do
            opts = {
              region: 'us-west-2',
              credentials: Credentials.new('akid', 'secret'),
              encryption_key: '.' * 32
            }
            enc_client = Client.new(opts.merge(required_opts))
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
              Client.new(options)
            end.to raise_error(
              ArgumentError, /:kms_key_id, :key_provider, or :encryption_key/
            )
          end

          it 'requires the key_wrap_schema to be set' do
            expect do
              options.delete(:key_wrap_schema)
              Client.new(options)
            end.to raise_error(ArgumentError, /key_wrap_schema/)
          end

          it 'requires the content_encryption_schema to be set' do
            expect do
              options.delete(:content_encryption_schema)
              Client.new(options)
            end.to raise_error(ArgumentError, /content_encryption_schema/)
          end

          it 'defaults :kms_allow_decrypt_with_any_cmk to false' do
            expect(client.kms_allow_decrypt_with_any_cmk).to eq(false)
          end

          it 'sets :kms_allow_decrypt_with_any_cmk when provided on kms_key_id' do
            client = Client.new(
              {
                kms_key_id: :kms_allow_decrypt_with_any_cmk,
                key_wrap_schema: :kms_context,
                content_encryption_schema: :aes_gcm_no_padding,
                security_profile: :v2,
                client: api_client,
                kms_client: double('kmsclient')
              })
            expect(client.kms_allow_decrypt_with_any_cmk).to eq(true)
          end

          it 'requires :security_profile to be set' do
            expect do
              options.delete(:security_profile)
              Client.new(options)
            end.to raise_error(ArgumentError, /security_profile/)
          end

          it 'raises an ArgumentError when given invalid :security_profile' do
            expect do
              Client.new(options.merge(security_profile: :bad_profile))
            end.to raise_error(ArgumentError)
          end

          it 'warns when security_profile is set to :v2_and_legacy' do
            expect_any_instance_of(Aws::S3::EncryptionV2::Client).to receive(:warn)
            Client.new(options.merge(security_profile: :v2_and_legacy))
          end

          it 'constructs a key provider from a master key' do
            client = Client.new(options.merge(encryption_key: master_key))
            expect(client.key_provider).to be_a_kind_of(DefaultKeyProvider)
            expect(client.key_provider.key_for('')).to eq(master_key)
          end

          it 'uses the provided key_provider' do
            key_provider = double('key_provider')
            expect(DefaultCipherProvider).to receive(:new).with(
              hash_including(key_provider: key_provider)
            )
            Client.new(options.merge(key_provider: key_provider))
          end

          it 'constructs a KMS cipher provider with default client from a kms_key_id' do
            kms_client = double('kms_client')
            expect(KMS::Client).to receive(:new).and_return(kms_client)
            expect(KmsCipherProvider).to receive(:new).with(
              hash_including(kms_key_id: kms_key_id, kms_client: kms_client)
            )
            Client.new(options.merge(kms_key_id: kms_key_id))
          end

          it 'uses the provided kms_client' do
            kms_client = double('kms_client')
            expect(KMS::Client).not_to receive(:new)
            expect(KmsCipherProvider).to receive(:new).with(
              hash_including(kms_key_id: kms_key_id, kms_client: kms_client)
            )
            Client.new(options.merge(kms_key_id: kms_key_id, kms_client: kms_client))
          end

          it 'defaults :envelope_location to :metadata' do
            expect(client.envelope_location).to eq(:metadata)
          end

          it 'requires :envelope_location as :metadata or :instruction_file' do
            expect do
              Client.new(options.merge(envelope_location: :bad))
            end.to raise_error(ArgumentError, /:metadata or :instruction_file/)
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

          it 'can be used with a Resource client', rbs_test: :skip do
            resource = S3::Resource.new(client: client)
            expect(resource.client.config).to eq(api_client.config)
          end
        end

        describe '#put_object' do
          let(:handlers) { double('handlers', add: nil) }
          let(:context) { {} }
          let(:response) { double('response') }
          let(:request) { double(context: context, handlers: handlers, send_request: response) }
          let(:params) { { bucket: 'bucket', key: 'key' } }

          it 'builds a request from the params' do
            expect(api_client).to receive(:build_request).with(:put_object, params).and_return(request)
            client.put_object(params)
          end

          it 'adds the EncryptHandler' do
            expect(api_client).to receive(:build_request).and_return(request)
            expect(handlers).to receive(:add).with(EncryptHandler, kind_of(Hash))
            client.put_object(params)
          end

          it 'sets the context[:encryption]' do
            expect(api_client).to receive(:build_request).and_return(request)
            client.put_object(params)

            expect(context).to include(encryption: {
                cipher_provider: kind_of(DefaultCipherProvider),
                envelope_location: :metadata,
                instruction_file_suffix: '.instruction',
                kms_encryption_context: nil,
            })
          end

          it 'sets the kms encryption context' do
            expect(api_client).to receive(:build_request).and_return(request)
            enc_context = { user_context: 'data' }
            client.put_object(params.merge(kms_encryption_context: enc_context))

            expect(context).to include(encryption: hash_including(
              kms_encryption_context: enc_context
            ))
          end

          it 'returns the response' do
            expect(api_client).to receive(:build_request).and_return(request)
            expect(client.put_object(params)).to eq response
          end
        end

        describe '#get_object' do
          let(:handlers) { double('handlers', add: nil) }
          let(:context) { {} }
          let(:response) { double('response') }
          let(:request) { double(context: context, handlers: handlers, send_request: response) }
          let(:params) { { bucket: 'bucket', key: 'key' } }
          before { allow(api_client).to receive(:build_request).and_return(request) }

          it 'builds a request from the params' do
            expect(api_client).to receive(:build_request).with(:get_object, params).and_return(request)
            client.get_object(params)
          end

          it 'adds the DecryptHandler' do
            expect(handlers).to receive(:add).with(DecryptHandler)
            client.get_object(params)
          end

          it 'sets the context[:encryption]' do
            client.get_object(params)

            expect(context).to include(encryption: {
              cipher_provider: kind_of(DefaultCipherProvider),
              envelope_location: :metadata,
              instruction_file_suffix: '.instruction',
              kms_encryption_context: nil,
              kms_allow_decrypt_with_any_cmk: false,
              security_profile: :v2
            })
          end

          it 'sets the kms encryption context' do
            enc_context = { user_context: 'data' }
            client.get_object(params.merge(kms_encryption_context: enc_context))

            expect(context).to include(encryption: hash_including(
              kms_encryption_context: enc_context
            ))
          end

          it 'overrides the kms_allow_decrypt_with_any_cmk when set' do
            client.get_object(params.merge(kms_allow_decrypt_with_any_cmk: true))

            expect(context).to include(encryption: hash_including(
              kms_allow_decrypt_with_any_cmk: true
            ))
          end

          it 'overrides the security_profile when set' do
            expect_any_instance_of(Aws::S3::EncryptionV2::Client).to receive(:warn)
            client.get_object(params.merge(security_profile: :v2_and_legacy))

            expect(context).to include(encryption: hash_including(
              security_profile: :v2_and_legacy
            ))
          end

          it 'raises an ArgumentError when the security_profile is invalid' do
            expect do
              client.get_object(params.merge(security_profile: :bad_profile))
            end.to raise_error(ArgumentError)
          end

          it 'returns the response' do
            expect(client.get_object(params)).to eq response
          end
        end
      end
    end
  end
end
