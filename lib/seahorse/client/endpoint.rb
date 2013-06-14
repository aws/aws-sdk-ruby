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

require 'uri'

module Seahorse
  class Client

    # ## Constructing an Endpoint
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
    # You can default to a HTTP endpoint by passing `:secure => false`
    #
    #     puts Endpoint.new('foo.com', :secure => false)
    #     #=> 'http://foo.com'
    #
    class Endpoint < String

      def initialize endpoint, options = {}
        uri = to_uri(endpoint, options)
        @scheme = uri.scheme
        @host = uri.host
        @port = uri.port
        super(format)
      end

      # @return [String] Returns the endpoint scheme ('https' or 'http').
      attr_reader :scheme

      # @return [String] Returns the endpoint host (e.g. 'foo.com')
      attr_reader :host

      # @return [Integer] Returns the endpoint port number (e.g. 443).
      attr_reader :port

      private

      def to_uri endpoint, options
        case endpoint
        when Endpoint, URI::HTTP, URI::HTTPS
          endpoint
        when String
          unless endpoint.match(/^http/)
            secure = options.fetch(:secure, true)
            endpoint = secure ? "https://#{endpoint}" : "http://#{endpoint}"
          end
          URI.parse(endpoint)
        else
          msg = "expected an Endpoint, URI::HTTP, URI::HTTPS or String"
          raise ArgumentError, msg
        end
      end

      # @return [String]
      def format
        if
          (scheme == 'https' and port == 443) or
          (scheme == 'http' and port == 80)
        then
          "#{scheme}://#{host}"
        else
          "#{scheme}://#{host}:#{port}"
        end
      end

    end
  end
end
