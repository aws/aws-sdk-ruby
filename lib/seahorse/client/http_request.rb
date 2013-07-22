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

require 'uri'

module Seahorse
  class Client
    class HttpRequest

      # @param [Endpoint] endpoint
      # @param [String] http_method
      # @param [String] path
      # @param [HeaderHash] headers
      # @param [IO] body
      def initialize(endpoint, http_method, path, headers, body)
        @endpoint = endpoint
        @http_method = http_method
        @path = path
        @headers = headers
        @body = body
      end

      # @return [Endpoint]
      attr_reader :endpoint

      # @return [String]
      attr_reader :http_method

      # @return [String]
      attr_reader :path

      # @return [HeaderHash]
      attr_reader :headers

      # @return [IO]
      attr_reader :body

    end
  end
end
