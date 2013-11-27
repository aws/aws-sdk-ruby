require 'multi_xml'

module Aws
  module Plugins
    class S3CompleteMultipartUploadFix < Seahorse::Client::Plugin

      class Handler < Seahorse::Client::Handler

        def call(context)
          @handler.call(context).on(200) do |response|
            if error = check_for_error(response)
              response.http_response.status_code = 500
              response.data = nil
              response.error = error
            end
          end
        end

        def check_for_error(response)
          xml = MultiXml.parse(response.http_response.body_contents)
          if xml['Error']
            error_code = xml['Error']['Code']
            error_message = xml['Error']['Message']
            Errors.error_class('S3', error_code).new(error_message)
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
