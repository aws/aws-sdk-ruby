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

require 'httparty'

module AWS
  module Http

    # @private
    class HTTPartyHandler

      include HTTParty

      class NoOpParser < HTTParty::Parser
        SupportedFormats = {}
      end

      def handle(request, response)

        opts = {
          :body => request.body,
          :parser => NoOpParser
        }

        if request.use_ssl?
          url = "https://#{request.host}:443#{request.uri}"
          opts[:ssl_ca_file] = request.ssl_ca_file if
            request.ssl_verify_peer?
        else
          url = "http://#{request.host}#{request.uri}"
        end

        # get, post, put, delete, head
        method = request.http_method.downcase

        # Net::HTTP adds this header for us when the body is
        # provided, but it messes up signing
        headers = { 'content-type' => '' }

        # headers must have string values (net http calls .strip on them)
        request.headers.each_pair do |key,value|
          headers[key] = value.to_s
        end

        opts[:headers] = headers

        begin
          http_response = self.class.send(method, url, opts)
        rescue Timeout::Error => e
          response.timeout = true
        else
          response.body = http_response.body
          response.status = http_response.code.to_i
          response.headers = http_response.to_hash
        end
      end
    end
  end
end
