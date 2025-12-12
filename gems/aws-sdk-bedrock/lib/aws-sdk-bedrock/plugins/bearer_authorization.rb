# frozen_string_literal: true

module Aws::Bedrock
  module Plugins
    # @api private
    class BearerAuthorization < Smithy::Client::Plugin
      def after_initialize(client)
        return unless (token = ENV.fetch('AWS_BEARER_TOKEN_BEDROCK', nil))

        if token.empty?
          raise ArgumentError, 'valid Bearer Auth header cannot be constructed with empty AWS_BEARER_TOKEN_BEDROCK'
        end

        token_provider = BearerTokenProvider.new(token: token)
        token_provider.features = ['BEARER_SERVICE_ENV_VARS']
        client.config.bearer_token_provider ||= token_provider
        return unless client.config.auth_scheme_preference == []

        client.config.auth_scheme_preference = ['smithy.api#httpBearerAuth']
      end

      class Handler < Smithy::Client::Handler
        def call(context)
          if ENV['AWS_BEARER_TOKEN_BEDROCK']
            track_features(context.config.bearer_token_provider) { @handler.call(context) }
          else
            @handler.call(context)
          end
        end

        def track_features(provider, &block)
          return block.call unless provider

          Smithy::Client::Features.track(*provider.features, &block)
        end
      end

      handler(Handler, step: :sign, priority: 75)
    end
  end
end
