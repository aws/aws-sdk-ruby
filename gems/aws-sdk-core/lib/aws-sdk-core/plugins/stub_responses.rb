# frozen_string_literal: true

# The smithy-client stub_responses plugin is not auto-required by the
# smithy-client gem and is removed from the generated client's plugin list
# by the AWS weld. We require it explicitly here because we subclass it.
require 'smithy-client/plugins/stub_responses'

module Aws
  module Core
    module Plugins
      # @api private
      class StubResponses < Smithy::Client::Plugins::StubResponses
        class << self
          def options
            super + superclass.options
          end
        end

        def after_initialize(client)
          super
          return unless client.config.stub_responses

          # Restore the stub send handler after every plugin has registered its handlers.
          client.handlers.add(Smithy::Client::Plugins::StubResponses::StubHandler, step: :send)
        end

        private

        def remove_context_handlers(client)
          client.handlers.remove(Aws::Core::Plugins::RetryErrors::Handler)
        end
      end
    end
  end
end
