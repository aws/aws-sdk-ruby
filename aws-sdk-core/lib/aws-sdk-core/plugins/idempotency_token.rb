require 'securerandom'

module Aws
  module Plugins

    # Provides support for auto filling operation parameters
    # that enabled with `idempotencyToken` trait  with random UUID v4
    # when no value is provided
    class IdempotencyToken < Seahorse::Client::Plugin

      option(:idempotency_auto_fill, false)

      # @api private
      class Handler < Seahorse::Client::Handler

        # @param [RequestContext] context
        # @param [Response]
        def call(context)
          enable_auto_fill = context.params.delete(:idempotency_auto_fill)
          enable_auto_fill = context.config.idempotency_auto_fill if enable_auto_fill.nil?
          if enable_auto_fill
            auto_fill(context.params, context.operation.input)
          end
          @handler.call(context)
        end

        private

        def auto_fill(params, ref)
          ref.shape.members.each do |name, member_ref|
            if member_ref['idempotencyToken']
              params[name] = params[name] || SecureRandom.uuid
            end
          end
        end

      end

      handler(Handler, step: :initialize)

    end
  end
end
