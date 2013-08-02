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
      handler(:Input) do |context|
        json = JSON.generate(context.params)
        target = context.config.api.target_prefix + '.' + context.operation.name
        context.http_request.body = StringIO.new(json)
        context.http_request.http_method = 'POST'
        context.http_request.path = '/'
        context.http_request.headers['Content-Type'] = 'application/x-amz-json-' + (context.config.api.json_version || 1.0).to_s
        context.http_request.headers['Content-Length'] = json.size
        context.http_request.headers['X-Amz-Target'] = target
        super(context).tap do |response|
          response.data = JSON.parse(context.http_response.body.read)
        end
      end
    end
  end
end
