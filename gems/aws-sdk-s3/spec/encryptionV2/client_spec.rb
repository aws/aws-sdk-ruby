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

        let(:options) { { client: api_client, encryption_key: master_key } }

        let(:client) { Client.new(options) }

        describe '#initialize' do
          it 'constructs a default s3 client when one is not given' do
            api_client = double('client')
            expect(S3::Client).to receive(:new).and_return(api_client)
            client = Client.new(encryption_key: master_key)
            expect(client.client).to be(api_client)
          end

          it 'accepts vanilla client options' do
            opts = {
              region: 'us-west-2',
              credentials: Credentials.new('akid', 'secret'),
              encryption_key: '.' * 32
            }
            enc_client = Client.new(opts)
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

          it 'constructs a key provider from a master key' do
            client = Client.new(options.merge(encryption_key: master_key))
            expect(client.key_provider).to be_a_kind_of(DefaultKeyProvider)
            expect(client.key_provider.key_for('')).to eq(master_key)
          end

          it 'uses the provided key_provider' do
            key_provider = double('key_provider')
            expect(DefaultCipherProvider).to receive(:new).with(key_provider: key_provider)
            Client.new(options.merge(key_provider: key_provider))
          end

          it 'constructs a KMS cipher provider with default client from a kms_key_id' do
            kms_client = double('kms_client')
            expect(KMS::Client).to receive(:new).and_return(kms_client)
            expect(KmsCipherProvider).to receive(:new).with(kms_key_id: kms_key_id, kms_client: kms_client)
            Client.new(options.merge(kms_key_id: kms_key_id))
          end

          it 'uses the provided kms_client' do
            kms_client = double('kms_client')
            expect(KMS::Client).not_to receive(:new)
            expect(KmsCipherProvider).to receive(:new).with(kms_key_id: kms_key_id, kms_client: kms_client)
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

          it 'can be used with a Resource client' do
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

          it 'sets the encryption context' do
            expect(api_client).to receive(:build_request).and_return(request)
            client.put_object(params)

            expect(context).to include(encryption: {
                cipher_provider: kind_of(DefaultCipherProvider),
                envelope_location: :metadata,
                instruction_file_suffix: '.instruction'}
            )
          end

          it 'returns the response' do
            expect(api_client).to receive(:build_request).and_return(request)
            expect(client.put_object(params)).to eq response
          end
        end

        describe '#put_object' do
          let(:handlers) { double('handlers', add: nil) }
          let(:context) { {} }
          let(:response) { double('response') }
          let(:request) { double(context: context, handlers: handlers, send_request: response) }
          let(:params) { { bucket: 'bucket', key: 'key' } }
          before { allow(api_client).to receive(:build_request).and_return(request) }

          it 'builds a request from the params' do
            expect(api_client).to receive(:build_request).with(:put_object, params).and_return(request)
            client.put_object(params)
          end

          it 'adds the EncryptHandler' do
            expect(handlers).to receive(:add).with(EncryptHandler, kind_of(Hash))
            client.put_object(params)
          end

          it 'sets the encryption context' do
            client.put_object(params)

            expect(context).to include(encryption: {
              cipher_provider: kind_of(DefaultCipherProvider),
              envelope_location: :metadata,
              instruction_file_suffix: '.instruction'}
            )
          end

          it 'returns the response' do
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

          it 'raises an error for range get' do
            expect do
              client.get_object(params.merge(range: 'bytes=0-9'))
            end.to raise_error(NotImplementedError, /range not supported/)
          end

          it 'sets the encryption context' do
            client.get_object(params)

            expect(context).to include(encryption: {
              cipher_provider: kind_of(DefaultCipherProvider),
              envelope_location: :metadata,
              instruction_file_suffix: '.instruction'}
           )
          end

          it 'uses the instruction_file_suffix from params' do
            client.get_object(params.merge(instruction_file_suffix: '.custom'))
            expect(context[:encryption][:instruction_file_suffix]).to eq '.custom'
            expect(context[:encryption][:envelope_location]).to eq :instruction_file
          end

          it 'returns the response' do
            expect(client.get_object(params)).to eq response
          end
        end

      end
    end
  end
end
