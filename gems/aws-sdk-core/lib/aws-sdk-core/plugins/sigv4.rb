# frozen_string_literal: true

require_relative '../credentials_provider'
require 'aws-sigv4'

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

        option(:session_token, doc_type: String, docstring: '') do |config|
          'stubbed-session-token' if config.stub_responses
        end

        option(:account_id, doc_type: String, docstring: '') do |config|
          'stubbed-account-id' if config.stub_responses
        end

        option(
          :credentials,
          doc_type: '#identity',
          docstring: <<~DOCS) do |config|
            The credentials provider used to resolve credentials. Any object that responds to `#identity`
            and returns a {Aws::Core::Credentials}.
          DOCS
          DefaultCredentials.new(config)
        end

        def after_initialize(client)
          client.config.auth_schemes['aws.auth#sigv4'] = client.config.credentials
        end

        # @api private
        class Handler < Smithy::Client::Handler
          def call(context)
            if context.auth[:scheme_id] == 'aws.auth#sigv4'
              sign(context)
              track_features(context.config.credentials) { @handler.call(context) }
            else
              @handler.call(context)
            end
          end

          def sign(context) # rubocop:disable Metrics/AbcSize
            reset(context)
            signer = Aws::Sigv4::Signer.new(
              service: context.config.service.traits['aws.auth#sigv4']['name'],
              # TODO: hardcoded for now to pass protocol tests, update after implementing region resolution
              region: 'us-west-2',
              credentials: context.auth[:identity]
            )
            signature = signer.sign_request(
              http_method: context.http_request.http_method,
              url: context.http_request.endpoint,
              headers: context.http_request.headers,
              body: context.http_request.body
            )
            context.http_request.headers.update(signature.headers)
          end

          def reset(context)
            context.http_request.headers.delete('Authorization')
            context.http_request.headers.delete('X-Amz-Security-Token')
            context.http_request.headers.delete('X-Amz-Date')
            context.http_request.headers.delete('x-Amz-Region-Set')
          end

          def track_features(provider, &block)
            return block.call unless provider

            Smithy::Client::Features.track(*provider.features, &block)
          end
        end

        handler(Handler, step: :sign)
      end
    end
  end
end
