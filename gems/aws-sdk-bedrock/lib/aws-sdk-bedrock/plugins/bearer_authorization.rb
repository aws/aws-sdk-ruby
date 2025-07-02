# frozen_string_literal: true

module Aws::Bedrock
  module Plugins
    # @api private
    class BearerAuthorization < Seahorse::Client::Plugin
      def after_initialize(client)
        return unless (token = ENV['AWS_BEARER_TOKEN_BEDROCK'])

        token_provider = Aws::StaticTokenProvider.new(token)
        token_provider.metrics = ['BEARER_SERVICE_ENV_VARS']
        client.config.token_provider ||= token_provider
      end

      class Handler < Seahorse::Client::Handler
        def call(context)
          # This also sets the preferred auth scheme even if the code token has precedence.
          context[:auth_scheme] = { 'name' => 'bearer' } if ENV['AWS_BEARER_TOKEN_BEDROCK']
          @handler.call(context)
        end
      end

      # After endpoint/auth but before builders.
      handle(Handler, priority: 60)
    end
  end
end
