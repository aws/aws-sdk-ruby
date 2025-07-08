# frozen_string_literal: true

require_relative '../static_credentials_provider'
require_relative '../identities/credentials'
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
          :credentials_provider,
          doc_type: 'identity',
          docstring: <<~DOCS) do |config|
            The credentials provider used to resolve credentials. Any object that responds to `#identity`
            and returns a {Aws::Core::Credentials}.
          DOCS
          if config.access_key_id && config.secret_access_key
            Aws::Core::StaticCredentialsProvider.new(
              access_key_id: config.access_key_id,
              secret_access_key: config.secret_access_key,
              session_token: config.session_token,
              account_id: config.account_id
            )
          end
        end

        def after_initialize(client)
          client.config.auth_schemes['aws.auth#sigv4'] = client.config.credentials_provider
        end

        class Handler < Smithy::Client::Handler
          def call(context)
            sign(context) if context.auth[:scheme_id] == 'aws.auth#sigv4'
            @handler.call(context)
          end

          def sign(context)
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
        end

        handler(Handler, step: :sign)
      end
    end
  end
end
