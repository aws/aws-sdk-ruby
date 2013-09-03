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

module Aws
  module Json
    class Handler < Seahorse::Client::Handler

      def call(context)
        build_request(context)
        super(context).on_complete do |response|
          parse_response(response)
        end
      end

      private

      def build_request(context)
        metadata = context.config.api.metadata
        target = "#{metadata['json_target_prefix']}.#{context.operation.name}"
        version = metadata['json_version']
        rules = context.operation.input

        req = context.http_request
        req.http_method = 'POST'
        req.path = '/'
        req.headers['X-Amz-Target'] = target
        req.headers['Content-Type'] = "application/x-amz-json-#{version}"
        req.body = Json::Builder.to_json(rules, context.params)
      end

      def parse_response(response)
        context = response.context
        body = context.http_response.body
        response.data = Json::Parser.to_hash(context.operation.output, body.read)
        body.rewind
      end

    end
  end
end
