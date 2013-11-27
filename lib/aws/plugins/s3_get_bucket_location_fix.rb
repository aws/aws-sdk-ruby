module Aws
  module Plugins
    class S3GetBucketLocationFix < Seahorse::Client::Plugin

      class Handler < Seahorse::Client::Handler

        def call(context)
          @handler.call(context).on(200) do |response|
            xml = MultiXml.parse(response.http_response.body_contents)
            if constraint = xml['LocationConstraint']
              response.data[:location_constraint] = constraint['__content__'].to_s
            end
          end
        end
      end

      handler(Handler, priority: 60, operations: [:get_bucket_location])

    end
  end
end
