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
               !ENV.fetch('AWS_LAMBDA_FUNCTION_NAME', nil).to_s.empty? &&
               (trace_id = validate_header(ENV.fetch('_X_AMZN_TRACE_ID', nil)))
              context.http_request.headers['x-amzn-trace-id'] = trace_id
            end
            @handler.call(context)
          end

          private

          def validate_header(header_value)
            return if header_value.nil? || header_value.empty?

            if header_value.chars.intersect?((0..31).map(&:chr))
              raise ArgumentError, 'Invalid _X_AMZN_TRACE_ID value: contains ASCII control characters'
            end

            header_value
          end
        end

        # should be at the end of build so that
        # modeled traits / service customizations apply first
        handler(Handler, step: :build, priority: 1)
      end
    end
  end
end
