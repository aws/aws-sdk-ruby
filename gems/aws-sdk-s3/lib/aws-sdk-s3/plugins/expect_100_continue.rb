# frozen_string_literal: true

module Aws
  module S3
    module Plugins
      class Expect100Continue < Seahorse::Client::Plugin

        def add_handlers(handlers, config)
          if config.http_continue_timeout && config.http_continue_timeout > 0
            handlers.add(Handler)
          end
        end

        # @api private
        class Handler < Seahorse::Client::Handler

          def call(context)
            if body_set?(context.http_request.body)
              context.http_request.headers['expect'] = '100-continue'
            end
            @handler.call(context)
          end

          private

          def body_set?(body)
            body && body_size(body) > 0
          end

          def body_size(body)
            if body.respond_to?(:size)
              body.size
            elsif body.respond_to?(:stat) && (stat = body.stat).respond_to?(:size)
              stat.size
            else
              raise ArgumentError, 'Request body must respond to either :size or :stat'
            end
          end

        end
      end
    end
  end
end
