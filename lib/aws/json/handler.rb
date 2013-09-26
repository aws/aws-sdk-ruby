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
    class Handler < ProtocolHandler

      def populate_headers(context)
        metadata = context.config.api.metadata
        target = "#{metadata['json_target_prefix']}.#{context.operation.name}"
        version = metadata['json_version']
        req = context.http_request
        req.headers['X-Amz-Target'] = target
        req.headers['Content-Type'] = "application/x-amz-json-#{version}"
      end

      def builder_class
        Json::Builder
      end

      def parser_class
        Json::Parser
      end

    end
  end
end
