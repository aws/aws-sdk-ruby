module Aws
  module Json

    # This plugin performs two trivial translations:
    #
    # * The request parameters are serialized as JSON for the request body
    # * The response body is deserialized as JSON for the response data
    #
    # No attempt is made to extract errors from the HTTP response body.
    # Parsing the response only happens for a successful response.
    #
    class SimpleBodyHandler < Seahorse::Client::Handler

      def call(context)
        build_json(context)
        @handler.call(context).on_success do |response|
          response.error = nil
          response.data = parse_json(context)
        end
      end

      private

      def build_json(context)
        context.http_request.body = MultiJson.dump(context.params)
      end

      def parse_json(context)
        MultiJson.load(context.http_response.body_contents)
      end

    end
  end
end
