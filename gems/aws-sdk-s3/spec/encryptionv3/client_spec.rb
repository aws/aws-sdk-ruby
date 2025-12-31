require_relative '../spec_helper'
require 'base64'
require 'openssl'

module Aws
  module S3
    module EncryptionV3
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
            ##= ../specification/s3-encryption/client.md#wrapped-s3-client-s
            ##= type=test
            ##% The S3EC MUST support the option to provide an SDK S3 client instance during its initialization.
            api_client = double('client')
            expect(S3::Client).to receive(:new).and_return(api_client)
            client = Client.new(required_opts.merge(encryption_key: master_key))
            expect(client.client).to be(api_client)
          end

          it 'accepts vanilla client options' do
            ##= ../specification/s3-encryption/client.md#inherited-sdk-configuration
            ##= type=test
            ##% The S3EC MAY support directly configuring the wrapped SDK clients through its initialization.
            ##= ../specification/s3-encryption/client.md#inherited-sdk-configuration
            ##= type=test
            ##% For example, the S3EC MAY accept a credentials provider instance during its initialization.
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

          it 'applies SDK configuration to wrapped S3 client' do
            ##= ../specification/s3-encryption/client.md#inherited-sdk-configuration
            ##= type=test
            ##% If the S3EC accepts SDK client configuration, the configuration MUST be applied to all wrapped S3 clients.
            opts = {
              region: 'eu-west-1',
              credentials: Credentials.new('test_key', 'test_secret'),
              encryption_key: master_key
            }
            enc_client = Client.new(opts.merge(required_opts))
            
            # Verify the S3 client was created with the provided configuration
            expect(enc_client.client.config.region).to eq('eu-west-1')
            expect(enc_client.client.config.credentials.access_key_id).to eq('test_key')
            expect(enc_client.client.config.credentials.secret_access_key).to eq('test_secret')
          end

          it 'applies SDK configuration to KMS client' do
            ##= ../specification/s3-encryption/client.md#inherited-sdk-configuration
            ##= type=test
            ##% If the S3EC accepts SDK client configuration, the configuration MUST be applied to all wrapped SDK clients including the KMS client.
            opts = {
              region: 'ap-southeast-1',
              credentials: Credentials.new('kms_key', 'kms_secret'),
              kms_key_id: kms_key_id,
              key_wrap_schema: :kms_context
            }
            
            # Mock S3 client to capture its config
            s3_client_double = double('s3_client')
            allow(S3::Client).to receive(:new).and_return(s3_client_double)
            s3_config = double('s3_config')
            allow(s3_client_double).to receive(:config).and_return(s3_config)
            allow(s3_config).to receive(:region).and_return('ap-southeast-1')
            allow(s3_config).to receive(:credentials).and_return(Credentials.new('kms_key', 'kms_secret'))
            
            # Expect KMS client to be created with the same configuration
            kms_client_double = double('kms_client')
            expect(KMS::Client).to receive(:new).with(
              hash_including(
                region: 'ap-southeast-1',
                credentials: kind_of(Credentials)
              )
            ).and_return(kms_client_double)
            
            enc_client = Client.new(opts)
            
            # Trigger KMS client creation by accessing it
            enc_client.send(:kms_client, opts)
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

          it 'content_encryption_schema is optional' do
            options.delete(:content_encryption_schema)
            Client.new(options)
          end

          it 'defaults :kms_allow_decrypt_with_any_cmk to false' do
            expect(client.kms_allow_decrypt_with_any_cmk).to eq(false)
          end

          it 'sets :kms_allow_decrypt_with_any_cmk when provided on kms_key_id' do
            client = Client.new(
              {
                kms_key_id: :kms_allow_decrypt_with_any_cmk,
                key_wrap_schema: :kms_context,
                client: api_client,
                kms_client: double('kmsclient')
              })
            expect(client.kms_allow_decrypt_with_any_cmk).to eq(true)
          end

          it ':security_profile is optional' do
            options.delete(:security_profile)
            Client.new(options)
          end

          it 'raises an ArgumentError when given invalid :security_profile' do
            expect do
              Client.new(options.merge(security_profile: :bad_profile))
            end.to raise_error(ArgumentError)
          end

          ##= ../specification/s3-encryption/client.md#enable-legacy-wrapping-algorithms
          ##= type=test
          ##% The S3EC MUST support the option to enable or disable legacy wrapping algorithms.
          ##= ../specification/s3-encryption/client.md#enable-legacy-unauthenticated-modes
          ##= type=test
          ##% The S3EC MUST support the option to enable or disable legacy unauthenticated modes (content encryption algorithms).

          it ':v3 is a valid :security_profile' do
            Client.new(options.merge(security_profile: :v3))
          end

          it 'warns when security_profile is set to :v3_and_legacy' do
            expect_any_instance_of(Aws::S3::EncryptionV3::Client).to receive(:warn)
            Client.new(options.merge(security_profile: :v3_and_legacy))
          end

          it 'rejects legacy content encryption schemas by default' do
            ##= ../specification/s3-encryption/client.md#enable-legacy-wrapping-algorithms
            ##= type=test
            ##% The option to enable legacy wrapping algorithms MUST be set to false by default.
            ##= ../specification/s3-encryption/client.md#enable-legacy-unauthenticated-modes
            ##= type=test
            ##% The option to enable legacy unauthenticated modes MUST be set to false by default.
            
            expect do
              Client.new(options.merge(content_encryption_schema: :aes_gcm_no_padding))
            end.to raise_error(ArgumentError, /Unsupported content_encryption_schema/)
          end

          it 'rejects AES-CTR algorithm with require policy' do
            ##= ../specification/s3-encryption/encryption.md#alg-aes-256-ctr-iv16-tag16-no-kdf
            ##= type=test
            ##% Attempts to encrypt using AES-CTR MUST fail.
            ##= ../specification/s3-encryption/client.md#encryption-algorithm
            ##= type=test
            ##% The S3EC MUST validate that the configured encryption algorithm is not legacy.
            ##= ../specification/s3-encryption/client.md#encryption-algorithm
            ##= type=test
            ##% If the configured encryption algorithm is legacy, then the S3EC MUST throw an exception.
            expect do
              Client.new(options.merge(content_encryption_schema: :aes_ctr_iv16_tag16_no_kdf))
            end.to raise_error(ArgumentError, /Unsupported content_encryption_schema/)
          end

          it 'rejects AES-CTR algorithm with forbid policy' do
            ##= ../specification/s3-encryption/encryption.md#alg-aes-256-ctr-iv16-tag16-no-kdf
            ##= type=test
            ##% Attempts to encrypt using AES-CTR MUST fail.
            ##= ../specification/s3-encryption/client.md#encryption-algorithm
            ##= type=test
            ##% The S3EC MUST validate that the configured encryption algorithm is not legacy.
            ##= ../specification/s3-encryption/client.md#encryption-algorithm
            ##= type=test
            ##% If the configured encryption algorithm is legacy, then the S3EC MUST throw an exception.
            expect do
              Client.new(options.merge(
                commitment_policy: :forbid_encrypt_allow_decrypt,
                content_encryption_schema: :aes_ctr_iv16_tag16_no_kdf
              ))
            end.to raise_error(ArgumentError, /Unsupported content_encryption_schema/)
          end

          it 'rejects key committing AES-CTR algorithm with require policy' do
            ##= ../specification/s3-encryption/encryption.md#alg-aes-256-ctr-hkdf-sha512-commit-key
            ##= type=test
            ##% Attempts to encrypt using key committing AES-CTR MUST fail.
            expect do
              Client.new(options.merge(content_encryption_schema: :aes_ctr_hkdf_sha512_commit_key))
            end.to raise_error(ArgumentError, /Unsupported content_encryption_schema/)
          end

          it 'rejects key committing AES-CTR algorithm with forbid policy' do
            ##= ../specification/s3-encryption/encryption.md#alg-aes-256-ctr-hkdf-sha512-commit-key
            ##= type=test
            ##% Attempts to encrypt using key committing AES-CTR MUST fail.
            expect do
              Client.new(options.merge(
                commitment_policy: :forbid_encrypt_allow_decrypt,
                content_encryption_schema: :aes_ctr_hkdf_sha512_commit_key
              ))
            end.to raise_error(ArgumentError, /Unsupported content_encryption_schema/)
          end

          it 'accepts key material directly via encryption_key' do
            ##= ../specification/s3-encryption/client.md#cryptographic-materials
            ##= type=test
            ##% The S3EC MAY accept key material directly.
            client = Client.new(options.merge(encryption_key: master_key))
            expect(client.key_provider).to be_a_kind_of(DefaultKeyProvider)
            expect(client.key_provider.key_for('')).to eq(master_key)
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
            client = Client.new(options)
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#object-metadata
            ##= type=test
            ##% By default, the S3EC MUST store content metadata in the S3 Object Metadata.
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#instruction-file
            ##= type=test
            ##% Instruction File writes MUST NOT be enabled by default.
            ##= ../specification/s3-encryption/client.md#instruction-file-configuration
            ##= type=test
            ##% In this case, the Instruction File Configuration SHOULD be optional, such that its default configuration is used when none is provided.
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
            ##= ../specification/s3-encryption/data-format/metadata-strategy.md#instruction-file
            ##= type=test
            ##% The default Instruction File behavior uses the same S3 object key as its associated object suffixed with ".instruction".
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

          it 'validates the configured encryption algorithm against the key commitment policy' do
            ##= ../specification/s3-encryption/client.md#key-commitment
            ##= type=test
            ##% The S3EC MUST validate the configured Encryption Algorithm against the provided key commitment policy.
            expect do
              Client.new(options.merge(
                content_encryption_schema: :alg_aes_256_gcm_hkdf_sha512_commit_key,
                commitment_policy: :require_encrypt_require_decrypt
              ))
            end.not_to raise_error

            # Valid combination: non-committing algorithm with forbid policy
            expect do
              Client.new(options.merge(
                content_encryption_schema: :aes_gcm_no_padding,
                commitment_policy: :forbid_encrypt_allow_decrypt
              ))
            end.not_to raise_error
          end

          it 'throws an exception when encryption algorithm is incompatible with key commitment policy' do
            ##= ../specification/s3-encryption/client.md#key-commitment
            ##= type=test
            ##% If the configured Encryption Algorithm is incompatible with the key commitment policy, then it MUST throw an exception.
            expect do
              Client.new(options.merge(
                content_encryption_schema: :aes_gcm_no_padding,
                commitment_policy: :require_encrypt_require_decrypt
              ))
            end.to raise_error(ArgumentError, /Unsupported content_encryption_schema/)
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
              commitment_policy: :require_encrypt_require_decrypt,
              v3_cipher_provider: kind_of(DefaultCipherProvider),
              envelope_location: :metadata,
              instruction_file_suffix: '.instruction',
              kms_encryption_context: nil,
              kms_allow_decrypt_with_any_cmk: false,
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
            expect_any_instance_of(Aws::S3::EncryptionV3::Client).to receive(:warn)
            client = Client.new(options.merge(commitment_policy: :require_encrypt_allow_decrypt))
            client.get_object(params.merge(security_profile: :v3_and_legacy))

            expect(context).to include(encryption: hash_including(
              # Yes, v2.
              # Even thought the input if v3, we translate it to v2
              # because this is what is going to be sent to the v2 client.
              security_profile: :v2_and_legacy
            ))
          end

          it 'raises an ArgumentError when the security_profile is invalid' do
            client = Client.new(options.merge(commitment_policy: :require_encrypt_allow_decrypt))
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
