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

require 'net/http/connection_pool'

module AWS
  module Core
    module Http

      # = NetHttpHandler
      #
      # This is the default HTTP handler for the aws-sdk gem.  It uses
      # Ruby's Net::HTTP to make requests.  It uses persistent connections
      # and a connection pool.
      #
      class NetHttpHandler

        # @private
        NETWORK_ERRORS = [
          SocketError,
          EOFError,
          IOError,
          Errno::ECONNABORTED,
          Errno::ECONNRESET,
          Errno::EPIPE,
          Errno::EINVAL,
          Timeout::Error,
          Errno::ETIMEDOUT,
        ]

        # (see Net::HTTP::ConnectionPool.new)
        def initialize options = {}
          @pool = Net::HTTP::ConnectionPool.new(options)
        end

        # @return [Net::HTTP::ConnectionPool]
        attr_reader :pool

        # Given a populated request object and an empty response object,
        # this method will make the request and them populate the
        # response.
        # @param [Request] request
        # @param [Response] response
        # @return [nil]
        def handle request, response, &read_block

          options = {}
          options[:port] = request.port
          options[:ssl] = request.use_ssl?
          options[:proxy_uri] = request.proxy_uri
          options[:ssl_verify_peer] = request.ssl_verify_peer?
          options[:ssl_ca_file] = request.ssl_ca_file if request.ssl_ca_file
          options[:ssl_ca_path] = request.ssl_ca_path if request.ssl_ca_path

          begin

            connection = pool.connection_for(request.host, options)
            connection.read_timeout = request.read_timeout

            connection.request(build_net_http_request(request)) do |http_resp|
              response.status = http_resp.code.to_i
              response.headers = http_resp.to_hash
              if block_given? and response.status < 300
                http_resp.read_body(&read_block)
              else
                response.body = http_resp.read_body
              end
            end

          rescue *NETWORK_ERRORS
            response.network_error = true
          end

          nil

        end

        protected

        # Given an AWS::Core::HttpRequest, this method translates
        # it into a Net::HTTPRequest (Get, Put, Post, Head or Delete).
        # @param [Request] request
        # @return [Net::HTTPRequest]
        def build_net_http_request request

          # Net::HTTP adds a content-type header automatically unless its set
          # and this messes with request signature signing.  Also, it expects
          # all header values to be strings (it call strip on them).
          headers = { 'content-type' => '' }
          request.headers.each_pair do |key,value|
            headers[key] = value.to_s
          end

          request_class = case request.http_method
            when 'GET'    then Net::HTTP::Get
            when 'PUT'    then Net::HTTP::Put
            when 'POST'   then Net::HTTP::Post
            when 'HEAD'   then Net::HTTP::Head
            when 'DELETE' then Net::HTTP::Delete
            else raise "unsupported http method: #{request.http_method}"
            end

          net_http_req = request_class.new(request.uri, headers)
          net_http_req.body_stream = request.body_stream
          net_http_req

        end

      end

    end
  end
end
