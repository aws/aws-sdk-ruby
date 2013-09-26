# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module Aws
  module Plugins
    class S3GetBucketLocationFix < Seahorse::Client::Plugin

      class Handler < Seahorse::Client::Handler

        def call(context)
          @handler.call(context).on_complete do |response|
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
