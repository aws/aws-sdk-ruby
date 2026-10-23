# frozen_string_literal: true

require_relative '../sigv4_signer'

module Aws
  module Core
    # @api private
    module Plugins
      # @api private
      class SigV4 < Smithy::Client::Plugin
        option(:access_key_id, doc_type: String, docstring: '') do |config|
          'stubbed-access-key-id' if config.stub_responses
        end
        option(:secret_access_key, doc_type: String, docstring: '') do |config|
          'stubbed-secret-access-key' if config.stub_responses
        end
        option(:session_token, doc_type: String, docstring: '')
        option(:account_id, doc_type: String, docstring: '')

        option(
          :credentials_provider,
          doc_type: '#identity',
          docstring: <<~DOCS) do |config|
            The credentials provider used to resolve credentials. Any object that responds to `#identity`
            and returns a {Aws::Credentials}.
          DOCS
          CredentialsProviderChain.new(config).resolve
        end

        option(:sigv4_signer) do |config|
          trait = config.service.traits['aws.auth#sigv4']
          Aws::Core::SigV4Signer.new(
            service: trait['name'],
            region: config.region,
            credentials_provider: config.credentials_provider
          )
        end

        def after_initialize(client)
          client.config.auth_schemes['aws.auth#sigv4'] = Smithy::Client::AuthScheme.new(
            identity_provider: client.config.credentials_provider,
            scheme_id: 'aws.auth#sigv4',
            signer: client.config.sigv4_signer
          )
          client.config.auth_schemes['aws.auth#sigv4a'] = Smithy::Client::AuthScheme.new(
            identity_provider: client.config.credentials_provider,
            scheme_id: 'aws.auth#sigva4',
            signer: client.config.sigv4_signer
          )
        end

        # @api private
        class Handler < Smithy::Client::Handler
          def call(context)
            if context.auth.scheme_id == 'aws.auth#sigv4'
              track_features(context.config.credentials_provider) { @handler.call(context) }
            else
              @handler.call(context)
            end
          end

          def track_features(provider, &block)
            return block.call unless provider

            Smithy::Client::Features.track(*provider.features, &block)
          end
        end

        # Run after ResolveAuth (75) and before SignRequests (50).
        handler(Handler, step: :sign, priority: 70)
      end
    end
  end
end
