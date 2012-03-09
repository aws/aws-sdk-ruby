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
  
      # The default http request handler for the aws-sdk gem.  It is based
      # on Net::Http.
      class NetHttpHandler

        @@pool = Net::HTTP::ConnectionPool.new

        # @private
        def self.pool
          @@pool
        end
  
        def handle request, response

          options = {}
          options[:ssl] = request.use_ssl?
          options[:proxy_uri] = request.proxy_uri
          options[:ssl_verify_peer] = request.ssl_verify_peer?
          options[:ssl_ca_file] = request.ssl_ca_file if request.ssl_ca_file
          options[:ssl_ca_path] = request.ssl_ca_path if request.ssl_ca_path

          connection = self.class.pool.connection_for(request.host, options)
          connection.read_timeout = request.read_timeout

          begin
            http_response = connection.request(build_request(request))
            response.body = http_response.body
            response.status = http_response.code.to_i
            response.headers = http_response.to_hash
          rescue Timeout::Error, Errno::ETIMEDOUT => e
            response.timeout = true
          end

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
