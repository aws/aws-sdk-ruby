# frozen_string_literal: true

require_relative '../static_credentials_provider'
require_relative '../identities/credentials'
require_relative '../signers/sigv4'
require_relative '../auth_schemes/sigv4'

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
          doc_type: 'identity(properties)',
          docstring: <<~DOCS) do |config|
            The credentials provider used to resolve credentials. Any object that responds to `#identity(properties)`
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

        option(:sigv4_auth_scheme) do |_config|
          Aws::Core::AuthSchemes::SigV4.new
        end
      end
    end
  end
end
