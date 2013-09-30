require 'multi_json'

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

      def populate_body(context)
        if convert?(context)
          super
        else
          context.http_request.body = MultiJson.dump(context.params)
        end
      end

      def populate_response_data(rules, response)
        if convert?(response.context)
          super
        else
          response.data = MultiJson.load(response.http_response.body_contents)
        end
      end

      def convert?(context)
        context.config.convert_params
      end

      def extract_error(response)
        json = MultiJson.load(response.http_response.body_contents)
        error_code = json['__type']
        error_code = error_code.split('#').last
        if error_code == 'RequestEntityTooLarge'
          error_message = 'Request body must be less than 1 MB'
        else
          error_message = json['message'] || json['Message']
        end
        Errors.response_error(response, error_code).new(error_message)
      end

    end
  end
end
