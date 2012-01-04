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

  # @private
  class Session

    def initialize http_session, key
      @http_session = http_session
      @key = key
      @created_at = Time.now
      @last_used_at = nil
    end

    attr_reader :http_session

    attr_reader :key

    attr_reader :created_at

    attr_reader :last_used_at

    def request *args, &block
      response = http_session.request(*args, &block)
      @last_used_at = Time.now
      response
    end

    # @return [nil]
    def finish
      begin
        http_session.finish if http_session.started?
      rescue IOError
      end
      nil
    end

    class << self

      def for connection, open_timeout

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
        #http.set_debug_output($stdout)
        http.open_timeout = open_timeout

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
