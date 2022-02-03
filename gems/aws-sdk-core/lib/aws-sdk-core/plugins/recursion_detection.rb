# frozen_string_literal: true

module Aws
  module Plugins
    # @api private
    class RecursionDetection < Seahorse::Client::Plugin

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)

          unless context.http_request.headers.key?('x-amz-trace-id')
            if ENV['AWS_LAMBDA_FUNCTION_NAME'] &&
              (trace_id = ENV['_X_AMZ_TRACE_ID'])
              context.http_request.headers['x-amz-trace-id'] = trace_id
            end
          end
          @handler.call(context)
        end
      end

      # should be at the end of build so that
      # modeled traits / service customizations apply first
      handler(Handler, step: :build, order: 99)
    end
  end
end
