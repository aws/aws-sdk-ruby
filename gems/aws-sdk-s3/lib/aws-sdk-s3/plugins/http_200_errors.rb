# frozen_string_literal: true

module Aws
  module S3
    module Plugins

      # A handful of Amazon S3 operations will respond with a 200 status
      # code but will send an error in the response body. This plugin
      # injects a handler that will parse 200 response bodies for potential
      # errors, allowing them to be retried.
      # @api private
      class Http200Errors < Seahorse::Client::Plugin

        class Handler < Seahorse::Client::Handler

          def call(context)
            @handler.call(context).on(200) do |response|
              return response if streaming_output?(context.operation.output)

              error = check_for_error(context)
              return response unless error

              context.http_response.status_code = 500
              response.data = nil
              response.error = error
            end
          end

          private

          def streaming_output?(output)
            if (payload = output[:payload_member]) # checking ref and shape
              payload['streaming'] || payload.shape['streaming']
            else
              false
            end
          end

          def output_has_body?(output)
            output.shape.members.any? { |_, k| k.location.nil? }
          end

          def check_for_error(context)
            xml = context.http_response.body_contents
            if xml.match(/\?>\n<Error>/)
              error_code = xml.match(/<Code>(.+?)<\/Code>/)[1]
              error_message = xml.match(/<Message>(.+?)<\/Message>/)[1]
              S3::Errors.error_class(error_code).new(context, error_message)
            elsif output_has_body?(context.operation.output) && !xml.match(/<\w/)
              # Must have a body member and have the start of an XML Tag
              # Other incomplete xml bodies will result in XML ParsingError
              Seahorse::Client::NetworkingError.new(
                S3::Errors
                  .error_class('InternalError')
                  .new(context, 'Empty or incomplete response body')
              )
            end
          end
        end

        handler(Handler, step: :sign)
      end
    end
  end
end
