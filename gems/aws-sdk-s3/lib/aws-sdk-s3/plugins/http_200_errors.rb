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
              if error = check_for_error(context)
                context.http_response.status_code = 500
                response.data = nil
                response.error = error
              end
            end
          end

          def check_for_error(context)
            xml = context.http_response.body_contents
            if xml.match(/<Error>/)
              error_code = xml.match(/<Code>(.+?)<\/Code>/)[1]
              error_message = xml.match(/<Message>(.+?)<\/Message>/)[1]
              S3::Errors.error_class(error_code).new(context, error_message)
            elsif incomplete_response?(xml, context)
              S3::Errors
                  .error_class('InternalError')
                  .new(context, 'Incomplete or empty response body')
            end
          end

          private

          # An S3 response is considered complete only if all output shapes
          # expected in the body are present
          def incomplete_response?(xml, context)
            output_shapes = context.operation.output.shape.members
            body_shapes = output_shapes.select do |symbol, shape_ref|
              shape_ref.location.nil?
            end

            body_shapes.any? do |symbol, shape_ref|
              !xml.include? "<#{shape_ref.location_name}"
            end
          end

        end

        handler(Handler,
          step: :sign,
          operations: [
            :complete_multipart_upload,
            :copy_object,
            :upload_part_copy,
          ]
        )
      end
    end
  end
end
