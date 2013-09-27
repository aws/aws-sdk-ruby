
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
  module Query
    class Handler < Xml::Handler

      def build_request(context)
        context.http_request.headers['Content-Type'] =
          'application/x-www-form-urlencoded; charset=utf-8'

        param_list = Query::Builder.to_query_params(
          context.operation.input,
          context.params)

        param_list.set('Version', context.config.api.version)
        param_list.set('Action', context.operation.name)

        context.http_request.body = param_list.to_io
      end

    end
  end
end
