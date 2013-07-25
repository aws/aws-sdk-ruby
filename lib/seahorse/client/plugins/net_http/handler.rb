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

module Seahorse::Client::Plugins::NetHttp

  # The default HTTP handler for Seahorse::Client.  This is based on
  # the Ruby's `Net::HTTP`.
  class Handler < Seahorse::Client::Handler

    # Raised when a {Handler} can not construct a `Net::HTTP::Request`
    # from the given http verb.
    class InvalidHttpVerbError < StandardError; end

    # @param [Configuration] config
    def initialize(config, handler = nil)
      @config = config
      @pool = ConnectionPool.new(pool_options(@config))
    end

    # @return [ConnectionPool]
    attr_reader :pool

    # @param [RequestContext] context
    # @return [Response]
    def call(context)
      transmit(context.http_request, context.http_response)
      Seahorse::Client::Response.new(context: context).signal_complete
    end

    private

    # @param [Http::Request] request
    # @param [Http::Response] response
    # @return [void]
    def transmit(request, response)
      @pool.session_for(request.endpoint) do |http|
        http.request(net_http_request(request)) do |resp|

          # extract HTTP status code and headers
          response.status_code = resp.code.to_i
          response.headers.update(response_headers(resp))

          # read the body in chunks
          resp.read_body do |chunk|
            response.body.write(chunk)
          end

        end
      end
    end

    # Extracts the {ConnectionPool} configuration options.
    # @param [Configuration] config
    # @return [Hash]
    def pool_options(config)
      ConnectionPool::OPTIONS.keys.inject({}) do |opts,opt|
        opts[opt] = config.send(opt)
        opts
      end
    end

    # Constructs and returns a Net::HTTP::Request object from
    # a {Seahorse::Client::Http::Request}.
    # @param [Http::Request] request
    # @return [Net::HTTP::Request]
    def net_http_request(request)
      request_class = net_http_request_class(request)
      req = request_class.new(request.path, headers(request))
      req.body_stream = request.body
      req
    end

    # @param [Http::Request] request
    # @raise [InvalidHttpVerbError]
    # @return Returns a base `Net::HTTP::Request` class, e.g.,
    #   `Net::HTTP::Get`, `Net::HTTP::Post`, etc.
    def net_http_request_class(request)
      Net::HTTP.const_get(request.http_method.capitalize)
    rescue NameError
      msg = "`#{request.http_method}` is not a valid http verb"
      raise InvalidHttpVerbError, msg
    end

    # @param [Http::Request] request
    # @return [Hash] Returns a vanilla hash of headers to send with the
    #   HTTP request.
    def headers(request)
      # setting these to stop net/http from providing defaults
      headers = { 'content-type' => '', 'accept-encoding' => '' }
      request.headers.each_pair do |key, value|
        headers[key] = value
      end
      headers
    end

    # @param [Net::HTTP::Response] response
    # @return [Hash<String, String>]
    def response_headers(response)
      response.to_hash.inject({}) do |headers, (k, v)|
        headers[k] = v.first
        headers
      end
    end

  end
end
