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

module AWS
  module Core
    module Http

      # # NetHttpHandler
      #
      # This is the default HTTP handler for the aws-sdk gem.  It uses
      # Ruby's Net::HTTP to make requests.  It uses persistent connections
      # and a connection pool.
      #
      class NetHttpHandler

        # @api private
        PASS_THROUGH_ERRORS = [
          NoMethodError, FloatDomainError, TypeError, NotImplementedError,
          SystemExit, Interrupt, SyntaxError, RangeError, NoMemoryError,
          ArgumentError, ZeroDivisionError, LoadError, NameError,
          LocalJumpError, SignalException, ScriptError,
          SystemStackError, RegexpError, IndexError,
        ]

        # (see ConnectionPool.new)
        def initialize options = {}
          @pool = ConnectionPool.new(options)
        end

        # @return [ConnectionPool]
        attr_reader :pool

        # Given a populated request object and an empty response object,
        # this method will make the request and them populate the
        # response.
        # @param [Request] request
        # @param [Response] response
        # @return [nil]
        def handle request, response, &read_block
          begin

            @pool.session_for(request.endpoint) do |http|

              http.read_timeout = request.read_timeout
              http.continue_timeout = request.continue_timeout if
                http.respond_to?(:continue_timeout=)

              http.request(build_net_http_request(request)) do |net_http_resp|
                response.status = net_http_resp.code.to_i
                response.headers = net_http_resp.to_hash
                if block_given? and response.status < 300
                  net_http_resp.read_body(&read_block)
                else
                  response.body = net_http_resp.read_body
                end
              end

            end

          # The first rescue clause is required because Timeout::Error is
          # a SignalException (in Ruby 1.8, not 1.9).  Generally, SingalExceptions
          # should not be retried, except for timeout errors.
          rescue Timeout::Error => error
            response.network_error = error
          rescue *PASS_THROUGH_ERRORS => error
            raise error
          rescue Exception => error
            response.network_error = error
          end
          nil
        end

        protected

        # Given an AWS::Core::HttpRequest, this method translates
        # it into a Net::HTTPRequest (Get, Put, Post, Head or Delete).
        # @param [Request] request
        # @return [Net::HTTPRequest]
        def build_net_http_request request

          # Net::HTTP adds a content-type (1.8.7+) and accept-encoding (2.0.0+)
          # to the request if these headers are not set.  Setting a default
          # empty value defeats this.
          #
          # Removing these are necessary for most services to no break request
          # signatures as well as dynamodb crc32 checks (these fail if the
          # response is gzipped).
          headers = { 'content-type' => '', 'accept-encoding' => '' }

          request.headers.each_pair do |key,value|
            headers[key] = value.to_s
          end

          request_class = case request.http_method
            when 'GET'    then Net::HTTP::Get
            when 'PUT'    then Net::HTTP::Put
            when 'POST'   then Net::HTTP::Post
            when 'HEAD'   then Net::HTTP::Head
            when 'DELETE' then Net::HTTP::Delete
            else
              msg = "unsupported http method: #{request.http_method}"
              raise ArgumentError, msg
            end

          net_http_req = request_class.new(request.uri, headers)
          net_http_req.body_stream = request.body_stream
          net_http_req

        end

      end

    end
  end
end
