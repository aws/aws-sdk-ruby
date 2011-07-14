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

module AWS
  module Http
    
    # @private
    class BuiltinHandler

      def handle(request, response)

        http = Net::HTTP.new(request.host, request.use_ssl? ? 443 : 80)

        # http://www.ruby-lang.org/en/news/2007/10/04/net-https-vulnerability/
        if request.use_ssl?
          http.use_ssl = true
          http.verify_mode = OpenSSL::SSL::VERIFY_PEER
          store = OpenSSL::X509::Store.new
          store.set_default_paths
          http.cert_store = store
        end

        http.start do 

          # Net::HTTP adds this header for us when the body is
          # provided, but it messes up signing
          headers = { 'content-type' => '' }

          # Net::HTTP calls strip on each header value, this causes errors
          # when the values are numbers (like Content-Length)
          request.headers.each_pair do |key,value|
            headers[key] = value.to_s
          end

          http_request_class = case request.http_method
          when 'HEAD'   then Net::HTTP::Head
          when 'GET'    then Net::HTTP::Get
          when 'PUT'    then Net::HTTP::Put
          when 'POST'   then Net::HTTP::Post
          when 'DELETE' then Net::HTTP::Delete
          else raise "unsupported http request method: #{request.http_method}"
          end

          http_request = http_request_class.new(request.uri, headers)
          http.request(http_request, request.body) do |http_response|
            response.body = http_response.body
            response.status = http_response.code.to_i
            response.headers = http_response.to_hash
          end

        end
      end

    end
  end
end
