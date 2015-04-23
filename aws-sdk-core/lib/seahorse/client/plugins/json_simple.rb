module Seahorse
  module Client
    module Plugins

      # This plugin performs two trivial translations:
      #
      # * The request parameters are serialized as JSON for the request body
      # * The response body is deserialized as JSON for the response data
      #
      # No attempt is made to extract errors from the HTTP response body.
      # Parsing the response only happens for a successful response.
      #
      class JsonSimple < Plugin

        # @api private
        class Handler < Client::Handler

          def call(context)
            context.http_request.body = JSON.dump(context.params)
            @handler.call(context).on_success do |response|
              response.error = nil
              response.data = JSON.parse(context.http_response.body_contents)
            end
          end

        end

        handler(Handler)

      end
    end
  end
end
