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

        operation = context.operation
        metadata = context.config.api.metadata

        rules = operation.input.body_params
        target = "#{metadata['json_target_prefix']}.#{operation.name}"
        version = metadata['json_version']

        # build request
        req = context.http_request
        req.http_method = 'POST'
        req.path = '/'
        req.headers['X-Amz-Target'] = target
        req.headers['Content-Type'] = "application/x-amz-json-#{version}"
        req.body = Json::Builder.to_json(rules, context.params)

        # parse response
        super(context).on_complete do |response|
          response.context.http_response.body.tap do |body|
            response.data = Json::Parser.to_hash(operation.output, body.read)
            body.rewind
          end
        end

      end
    end
  end
end
