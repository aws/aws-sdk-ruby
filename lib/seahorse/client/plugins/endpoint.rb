# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module Seahorse
  module Client
    module Plugins
      class Endpoint < Plugin

        option(:endpoint) { |config| config.api.endpoint }

        option(:ssl_default, true)

        handler do |context|
          endpoint = context.config.endpoint
          ssl_default = context.config.ssl_default
          endpoint = Http::Endpoint.new(endpoint, ssl_default: ssl_default)
          context.http_request.endpoint = endpoint
          @handler.call(context)
        end

      end
    end
  end
end
