module Aws
  module Plugins
    class S3GetBucketLocationFix < Seahorse::Client::Plugin

      class Handler < Seahorse::Client::Handler

        def call(context)
          @handler.call(context).on(200) do |response|
            response.data = Structure.new([:location_constraint])
            xml = MultiXml.parse(context.http_response.body_contents)
            if constraint = xml['LocationConstraint']
              response.data[:location_constraint] =
                case constraint
                when String then constraint
                when Hash then constraint['__content__'].to_s
                end
            else
              response.data[:location_constraint] = ''
            end
          end
        end
      end

      handler(Handler, priority: 60, operations: [:get_bucket_location])

    end
  end
end
