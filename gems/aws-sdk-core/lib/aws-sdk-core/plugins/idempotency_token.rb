# frozen_string_literal: true

require 'securerandom'

module Aws
  module Core
    module Plugins
      # @api private
      class IdempotencyToken < Smithy::Client::Plugin
        def add_handlers(handlers, _config)
          handlers.add(Handler, step: :initialize)
        end

        # @api private
        class Handler < Smithy::Client::Handler
          def call(context)
            apply_idempotency_token(context.operation.input, context.params)
            @handler.call(context)
          end

          private

          def apply_idempotency_token(input, params)
            input.members.each do |member_name, member_shape|
              next unless member_shape.traits.include?('smithy.api#idempotencyToken')

              params[member_name] ||= SecureRandom.uuid
            end
          end
        end
      end
    end
  end
end
