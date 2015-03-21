module Aws
  module Plugins
    class S3CompleteMultipartUploadFix < Seahorse::Client::Plugin

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
          end
        end

      end

      handler(Handler,
        step: :build,
        priority: 40,
        operations: [:complete_multipart_upload]
      )

    end
  end
end
