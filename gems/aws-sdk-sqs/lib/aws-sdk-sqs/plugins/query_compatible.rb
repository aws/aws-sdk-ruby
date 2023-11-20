# frozen_string_literal: true

require 'openssl'

module Aws
  module SQS
    module Plugins
      # @api private
      class QueryCompatible < Seahorse::Client::Plugin
        class Handler < Seahorse::Client::Handler
          def call(context)
            output = @handler.call(context)
            output.data.messages ||= []
            output
          end
        end

        def add_handlers(handlers, config)
          handlers.add(Handler, step: :initialize, operations: [:receive_message])
        end
      end
    end
  end
end
