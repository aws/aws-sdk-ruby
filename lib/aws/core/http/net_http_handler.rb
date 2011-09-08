# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module AWS
  module Core
    module Http
  
      # The default http request handler for the aws-sdk gem.  It is based
      # on Net::Http.
      class NetHttpHandler
  
        def handle request, response
          http_session_for(request) do |http|
            begin
              http_resp = http.request(build_request(request))
              response.body = http_resp.body
              response.status = http_resp.code.to_i
              response.headers = http_resp.to_hash
            rescue Timeout::Error, Errno::ETIMEDOUT => e
              response.timeout = true
            end
          end
        end
          
        # @private
        protected
        def http_session_for request, &block
          begin
            http = build_http(request)
            http.start
            yield(http)
          ensure
            http.finish if http.started?
          end
        end

        # @private
        protected
        def build_http request

          http_args = []
          http_args << request.host
          http_args << (request.use_ssl? ? 443 : 80)

          ## add proxy arguments

          if proxy = request.proxy_uri
            proxy_addr = proxy.respond_to?(:request_uri) ?
              "#{proxy.host}#{proxy.request_uri}" : proxy.host
            http_args << proxy_addr
            http_args << proxy.port
            http_args << proxy.user
            http_args << proxy.password
          end

          # ruby 1.8.7 does not accept a hash of options at the end of
          # Net::HTTP.new like 1.9 does, therefore we have to set ssl
          # options on the returned http object
          http = Net::HTTP.new(*http_args)

          ## configure ssl 

          if request.use_ssl?
            http.use_ssl = true
            if request.ssl_verify_peer?
              http.verify_mode = OpenSSL::SSL::VERIFY_PEER
              http.ca_file = request.ssl_ca_file
            else
              http.verify_mode = OpenSSL::SSL::VERIFY_NONE
            end
          else
            http.use_ssl = false
          end

          http

        end

        # @private
        protected
        def build_request request

          # Net::HTTP adds a content-type header automatically unless its set
          # and this messes with request signature signing.  Also, it expects
          # all header values to be strings (it call strip on them).
          headers = { 'content-type' => '' }
          request.headers.each_pair do |key,value|
            headers[key] = value.to_s
          end

          req_class = case request.http_method
            when 'GET'    then Net::HTTP::Get
            when 'PUT'    then Net::HTTP::Put
            when 'POST'   then Net::HTTP::Post
            when 'HEAD'   then Net::HTTP::Head
            when 'DELETE' then Net::HTTP::Delete
            else raise "unsupported http method: #{request.http_method}"
          end

          net_http_req = req_class.new(request.uri, headers)
          net_http_req.body = request.body
          net_http_req

        end

      end

    end
  end
end
