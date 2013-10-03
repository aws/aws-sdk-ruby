require 'multi_json'

module Aws
  module Json
    class Handler < ProtocolHandler

      def populate_headers(context)
      end

      def builder_class
        Json::Builder
      end

      def parser_class
        Json::Parser
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
