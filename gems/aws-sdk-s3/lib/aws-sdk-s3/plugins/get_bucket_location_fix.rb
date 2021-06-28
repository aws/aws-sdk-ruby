# frozen_string_literal: true

module Aws
  module S3
    module Plugins
      class GetBucketLocationFix < Seahorse::Client::Plugin

        class Handler < Seahorse::Client::Handler

          def call(context)
            @handler.call(context).on(200) do |response|
              response.data = S3::Types::GetBucketLocationOutput.new
              xml = context.http_response.body_contents
              matches = xml.match(/<LocationConstraint.*?>(.+?)<\/LocationConstraint>/)

              # According to the service API docs, a bucket is us-east-1 has a LocationConstraint
              # value `null`.
              # https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLocation.html
              response.data[:location_constraint] = matches ? matches[1] : 'us-east-1'
            end
          end
        end

        handler(Handler, priority: 60, operations: [:get_bucket_location])

      end
    end
  end
end
