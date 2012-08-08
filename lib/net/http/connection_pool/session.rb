# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'net/http'
require 'net/https'
require 'openssl'

class Net::HTTP::ConnectionPool

  # Used by Net::HTTP::ConnectionPool to wrap Net::HTTP::Session objects.
  # Users should never need to interact with these session wrappers.
  # @private
  class Session

    # @param [Net::HTTPSession] http_session
    # @param [String] key
    def initialize http_session, key
      @http_session = http_session
      @key = key
      @created_at = Time.now
      @last_used_at = nil
    end

    # @return [Net::HTTPSession]
    attr_reader :http_session

    # @return [String]
    attr_reader :key

    # @return [Time]
    attr_reader :created_at

    # @return [Time]
    attr_reader :last_used_at

    # @param [Integer] timeout Number of seconds before Net::HTTP should
    #   timeout while waiting to read a response.
    def read_timeout= timeout
      http_session.read_timeout = timeout
    end

    # Makes a HTTP request.  See Net::HTTPSession#request documentation
    # from the Ruby standard library for information about argments.
    #
    #   connection.request(Net::HTTP::Get.new('/')) do |response|
    #     # Parse the response (status, headers and body) here.
    #     # You should be done with the response by the end of the block.
    #   end
    #
    # @yield [response]
    # @yieldparam [Net::HTTPResponse] response
    # @return [nil]
    def request *args, &block
      http_session.request(*args, &block)
      @last_used_at = Time.now
      nil
    end

    # Attempts to cleanly close the HTTP session.
    # @return [nil]
    def finish
      begin
        http_session.finish if http_session.started?
      rescue IOError
      end
      nil
    end

    class << self

      # Starts a new HTTP session and returns it wrapped in a {Session} object.
      # @param [Connection] connection
      # @param [Hash] options
      # @option options [Integer] :open_timeout (15) The number of seconds to
      #   wait while trying to open the HTTP session before timeing out.
      # @option options [Logger] :debug_logger HTTP wire traces are logged
      #   here when specified.
      # @return [Session]
      def start connection, options = {}

        http_args = []
        http_args << connection.host
        http_args << connection.port
        if connection.proxy?
          http_args << connection.proxy_address
          http_args << connection.proxy_port
          http_args << connection.proxy_user
          http_args << connection.proxy_password
        end

        http = Net::HTTP.new(*http_args)
        http.set_debug_output(options[:debug_logger]) if options[:debug_logger]
        http.open_timeout = options[:open_timeout] || 15

        if connection.ssl?
          http.use_ssl = true
          if connection.ssl_verify_peer?
            http.verify_mode = OpenSSL::SSL::VERIFY_PEER
            http.ca_file = connection.ssl_ca_file if connection.ssl_ca_file
            http.ca_path = connection.ssl_ca_path if connection.ssl_ca_path
          else
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE
          end
        else
          http.use_ssl = false
        end

        http.start

        Session.new(http, connection.key)

      end

    end
  end
end
