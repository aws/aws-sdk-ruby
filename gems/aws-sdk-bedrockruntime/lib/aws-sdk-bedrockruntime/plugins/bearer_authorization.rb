# frozen_string_literal: true

module Aws::BedrockRuntime
  module Plugins
    # @api private
    class BearerAuthorization < Seahorse::Client::Plugin
      def after_initialize(client)
        return unless (token = ENV['AWS_BEARER_TOKEN_BEDROCK'])

        client.config.token_provider ||= Aws::StaticTokenProvider.new(token)
      end

      class Handler < Seahorse::Client::Handler
        def call(context)
          # This also sets the preferred auth scheme even if the code token has precedence.
          context[:auth_scheme] = { 'name' => 'bearer' } if ENV['AWS_BEARER_TOKEN_BEDROCK']
          with_metric { @handler.call(context) }
        end

        private

        def with_metric(&block)
          if ENV['AWS_BEARER_TOKEN_BEDROCK']
            Aws::Plugins::UserAgent.metric('BEARER_SERVICE_ENV_VARS', &block)
          else
            block.call
          end
        end
      end

      handle(Handler)
    end
  end
end
