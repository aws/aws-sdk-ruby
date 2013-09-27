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

require 'uri'

module Aws
  module Plugins

    # @note This plugin is not async compatible.
    class S3Redirects < Seahorse::Client::Plugin

      option(:follow_redirects, true)

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          response = @handler.call(context)
          if response.http_response.status_code == 307
            uri = URI.parse(response.http_response.headers['location'])
            endpoint = Seahorse::Client::Http::Endpoint.new(uri)
            context.http_response.body.truncate(0)
            context.http_request.endpoint = endpoint
            @handler.call(context)
          else
            response
          end
        end

      end

      def add_handlers(handlers, config)
        if config.follow_redirects
          # we want to re-trigger request signing
          handlers.add(Handler, step: :sign, priority: 90)
        end
      end

    end
  end
end
