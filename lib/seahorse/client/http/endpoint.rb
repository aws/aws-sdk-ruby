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
  module Client
    module Http

      # # Constructing an Endpoint
      #
      # You can construct an endpoint from a string like so:
      #
      #     puts Endpoint.new('http://foo.com:123')
      #     #=> 'http://foo.com'
      #
      # If you omit the protocol, it will default to a HTTPS endpoint:
      #
      #     puts Endpoint.new('foo.com')
      #     #=> 'https://foo.com'
      #
      # You can default to a HTTP endpoint by passing `:ssl_default` as `false`:
      #
      #     puts Endpoint.new('foo.com', ssl_default: false)
      #     #=> 'http://foo.com'
      #
      class Endpoint < String

        # @option (see #to_uri)
        def initialize(endpoint, options = {})
          uri = to_uri(endpoint, options)
          @scheme = uri.scheme
          @host = uri.host
          @port = uri.port
          super(uri.to_s)
        end

        # @return [String] Returns the endpoint scheme ('https' or 'http').
        attr_reader :scheme

        # @return [String] Returns the endpoint host (e.g. 'foo.com')
        attr_reader :host

        # @return [Integer] Returns the endpoint port number (e.g. 443).
        attr_reader :port

        def http?
          scheme == 'http'
        end

        def https?
          scheme == 'https'
        end

        private

        # @param [Endpoint] endpoint
        # @option options [Boolean] :ssl_default (true)
        # @return [URI::HTTP, URI::HTTPS]
        def to_uri(endpoint, options = {})
          endpoint = endpoint.to_s
          endpoint = apply_scheme(endpoint, options) unless endpoint =~ /^http/
          URI.parse(endpoint)
        end

        # @param [String] endpoint
        # @option options [Boolean] :ssl_default (true)
        # @return [String]
        def apply_scheme(endpoint, options)
          "http#{options.fetch(:ssl_default, true) ? 's' : ''}://#{endpoint}"
        end

      end
    end
  end
end
