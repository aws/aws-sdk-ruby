module Aws
  module Json
    class Handler < ProtocolHandler

      def populate_headers(context)
        metadata = context.config.api.metadata
        target = "#{metadata['json_target_prefix']}.#{context.operation.name}"
        version = metadata['json_version']
        req = context.http_request
        req.headers['X-Amz-Target'] = target
        req.headers['Content-Type'] = "application/x-amz-json-#{version}"
      end

      def builder_class
        Json::Builder
      end

      def parser_class
        Json::Parser
      end

    end
  end
end
