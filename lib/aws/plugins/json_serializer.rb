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

require 'json'
require 'stringio'

module Aws
  module Plugins
    class JsonSerializer < Seahorse::Client::Plugin
      handle(:Handler) do |context|
        json = JSON.generate(context.params)
        version = context.config.api.json_version || '1.0'
        content_type = "application/x-amz-json-#{version}"
        target = context.config.api.target_prefix + '.' + context.operation.name

        context.http_request.body = json
        context.http_request.headers['Content-Type'] = content_type
        context.http_request.headers['Content-Length'] = json.bytesize
        context.http_request.headers['X-Amz-Target'] = target

        super(context).on_complete do |response|
          response.data = JSON.parse(response.context.http_response.body.read)
        end
      end

    end
  end
end
