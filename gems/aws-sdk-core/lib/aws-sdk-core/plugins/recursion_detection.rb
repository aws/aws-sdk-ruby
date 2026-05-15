# frozen_string_literal: true

module Aws
  module Core
    module Plugins
      # @api private
      class RecursionDetection < Smithy::Client::Plugin
        # @api private
        class Handler < Smithy::Client::Handler
          def call(context)
            if !context.http_request.headers.key?('x-amzn-trace-id') &&
               (trace_id = validate_header(ENV.fetch('_X_AMZN_TRACE_ID', nil)))
              context.http_request.headers['x-amzn-trace-id'] = trace_id
            end
            @handler.call(context)
          end

          private

          def validate_header(header_value)
            return unless header_value

            if header_value.chars.intersect?((0..31).map(&:chr))
              raise ArgumentError, 'Invalid _X_AMZN_TRACE_ID value: ' \
                                   'contains ASCII control characters'
            end
            header_value
          end
        end

        # should be at the end of build so that
        # modeled traits / service customizations apply first
        handler(Handler, step: :build, order: 99)
      end
    end
  end
end
