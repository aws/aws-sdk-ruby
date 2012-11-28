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

  # Represents a HTTP connection.  Call {#request} on a connection like
  # you would with a Net::HTTPSession object.
  #
  # == Getting a Connection object
  #
  # To get a connection object, you start with a connection pool:
  #
  #   pool = Net::HTTP::ConnectionPool.new
  #   connection = pool.connection_for('domain.com')
  #
  # {ConnectionPool#connection_for} accepts a number of options to control
  # the connection settings (SSL, proxy, timeouts, etc).
  #
  # == Making Requests
  #
  # Given a connection object, you call #request.  {Connection#request}
  # yields Net::HTTPResponse objects (when given a block).  You should 
  # read the response (via #body or #read_body) before the end of the
  # block.
  #
  #   connection.request(Net::HTTP::Get.new('/')) do |resp|
  #     puts resp.body
  #   end
  #
  class Connection

    # Use {ConnectionPool#connection_for} to construct {Connection} objects.
    # @private
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

    # @return [Boolean] Returns +true+ if this connection requires SSL.
    def ssl?
      @ssl
    end

    # @return [Boolean] Returns +true+ if ssl connections should verify the
    #   peer certificate.
    def ssl_verify_peer?
      @ssl_verify_peer
    end

    # @return [Boolean] Returns +true+ if this connection proxies requests.
    def proxy?
      !!proxy_address
    end

    # Makes a single HTTP request.  The Net::HTTPResponse is yielded to the
    # given block.
    #
    #   pool = Net::HTTP::ConnectionPool.new
    #   connection = pool.connection_for('www.google.com')
    #
    #   connection.request(Net::HTTP::Get.new('/')) do |response|
    #     # yeilds a Net::HTTPResponse object
    #     puts "STATUS CODE: #{response.code}"
    #     puts "HEADERS: #{response.to_hash.inspect}"
    #     puts "BODY:\n#{response.body}"
    #   end
    #
    # If you want to read the HTTP response body in chunks (useful for
    # large responses you do not want to load into memory), you should
    # pass a block to the #read_body method of the yielded response.
    #
    #   File.open('output.txt', 'w') do |file|
    #     connection.request(Net::HTTP::Get.new('/')) do |response|
    #       response.read_body do |chunk|
    #         file.write(chunk)
    #       end
    #     end
    #   end
    #
    # If you omit the block when calling #request, you will not be able
    # to read the response.  This method never returns the 
    # Net::HTTPResponse generated.
    #
    # This method passes *args to Net::HTTPSession#request.  See the
    # Ruby standard lib documentation for more documentation about 
    # accepted arguments.
    #
    # @note You should read the yielded response object before the end
    #  of the passed block. Do no save a reference to yielded response
    #  objects.
    #
    # @yield [response]
    # @yieldparam [Net::HTTPResponse] response
    # @return [nil]
    def request *args, &block
      pool.request(self, *args, &block)
    end

    # @return [String] Returns a key that can be used to group connections
    #   that may share the same HTTP sessions.
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
