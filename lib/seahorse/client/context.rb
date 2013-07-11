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
  class Client
    class Context

      # @option options [Hash] :params ({})
      # @option options [String] :operation_name
      # @option options [Configuration] :config
      # @option options [Endpoint] :http_endpoint
      # @option options [String] :http_uri ('/')
      # @option options [HeaderHash] :http_headers ({})
      # @option options [IO] :http_body (StringIO.new) Must respond to #read
      #   and #rewind.
      def initialize(options = {})
        @params = options[:params] || {}
        @operation_name = options[:operation_name]
        @config = options[:config]
        @http_method = options[:http_method] || 'GET'
        @http_endpoint = options[:http_endpoint]
        @http_uri = options[:http_uri] || '/'
        @http_headers = options[:http_headers] || HeaderHash.new
        @http_body = options[:http_body] || StringIO.new
      end

      # @return [Hash] The hash of request parameters.
      attr_accessor :params

      # @return [String] Name of the API operation called.
      attr_accessor :operation_name

      # @return [Configuration] The client configuration.
      attr_accessor :config

      # @return [String] The HTTP verb (e.g. 'GET', 'PUT', 'POST', etc)
      attr_accessor :http_method

      # @return [Endpoint] The HTTP request endpoint (scheme, host, port).
      attr_accessor :http_endpoint

      # @return [String] The request uri, e.g. '/foo/bar?abc=xyz'.
      attr_accessor :http_uri

      # @return [HeaderHash] The HTTP request headers.
      attr_accessor :http_headers

      # @return [IO] The HTTP request payload.  Must respond to #read
      #   and #rewind.
      attr_accessor :http_body

    end
  end
end
