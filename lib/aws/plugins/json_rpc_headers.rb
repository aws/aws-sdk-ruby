
module Aws
  module Plugins

    # This plugin applies the "X-Amz-Target" and "Content-Type" headers
    # for AWS JSON Rpc style APIs.
    class JsonRpcHeaders < Seahorse::Client::Plugin

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          context.http_request.headers['X-Amz-Target'] = target(context)
          context.http_request.headers['Content-Type'] = content_type(context)
          @handler.call(context)
        end

        def target(context)
          prefix = context.config.api.metadata['json_target_prefix']
          "#{prefix}.#{context.operation.name}"
        end

        def content_type(context)
          version = context.config.api.metadata['json_version']
          "application/x-amz-json-#{version}"
        end

      end

      handler(Handler)

    end
  end
end
