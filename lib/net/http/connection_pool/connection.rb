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

require 'uri'

class Net::HTTP::ConnectionPool

  # A light wrapper around Net::HTTP.  
  #
  # You should not need to construct connection objects yourself.  
  # You receive them as a response to {ConnectionPool#connection_for}.
  #
  class Connection

    # @param [ConnectionPool] pool
    # @param (see ConnectionPool#connection_for) 
    # @option (see ConnectionPool#connection_for)
    # @return [Connection]
    def initialize pool, host, options = {}

      @pool = pool

      @host = host

      @port = options.key?(:port) ? options[:port] : (options[:ssl] ? 443 : 80)

      @ssl = options.key?(:ssl) ? options[:ssl] : (port == 443) 

      @ssl_verify_peer = options.key?(:ssl_verify_peer) ?
        options[:ssl_verify_peer] : true

      @ssl_ca_file = options[:ssl_ca_file]

      @ssl_ca_path = options[:ssl_ca_path]

      if uri = options[:proxy_uri]
        uri = URI.parse(uri) if uri.is_a?(String)
        @proxy_address = uri.host
        @proxy_port = uri.port
        @proxy_user = uri.user
        @proxy_password = uri.password
      else
        @proxy_address = options[:proxy_address]
        @proxy_port = options[:proxy_port]
        @proxy_user = options[:proxy_user]
        @proxy_password = options[:proxy_password]
      end

      @read_timeout = options[:read_timeout] || 60

    end

    # @return [ConnectionPool]
    attr_reader :pool

    # @return [String]
    attr_reader :host

    # @return [Integer]
    attr_reader :port

    # @return [Boolean]
    attr_reader :ssl

    # @return [Boolean]
    attr_reader :ssl_verify_peer

    # @return [String,nil]
    attr_reader :ssl_ca_file

    # @return [String,nil]
    attr_reader :ssl_ca_path

    # @return [String,nil]
    attr_reader :proxy_address

    # @return [Integer,nil]
    attr_reader :proxy_port

    # @return [String,nil]
    attr_reader :proxy_user

    # @return [String,nil]
    attr_reader :proxy_password

    # @return [Numeric,nil]
    attr_accessor :read_timeout

    # @return [Boolean] Returns true if this connection requires SSL.
    def ssl?
      @ssl
    end

    # @return [Boolean] Returns true if ssl connections should verify the
    #   peer certificate.
    def ssl_verify_peer?
      @ssl_verify_peer
    end

    # @return [Boolean] Returns true if this connection proxies requests.
    def proxy?
      !!proxy_address
    end

    def request *args, &block
      pool.request(self, *args, &block)
    end

    # @return [String] Returns a key that can be used to group connections
    #   that connection to the same host.
    def key
      @key ||= begin
        %w(
          host port 
          ssl ssl_verify_peer ssl_ca_file ssl_ca_path
          proxy_address proxy_port proxy_user proxy_password
        ).map{|part| send(part).to_s }.join(":")
      end
    end

  end
end
