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

require 'httparty'

module AWS
  module Core
    module Http
  
      # Makes HTTP requests using HTTParty.  This is the default
      # handler, so you don't need to do anything special to configure
      # it.  However, you can directly instantiate this class in order
      # to send extra options to HTTParty, for example to enable an HTTP
      # proxy:
      #
      #   AWS.config(
      #     :http_handler => AWS::Http::HTTPartyHandler.new(
      #       :http_proxyaddr => "http://myproxy.com",
      #       :http_proxyport => 80
      #     )
      #   )
      #
      class HTTPartyHandler
  
        # @return [Hash] The default options to send to HTTParty on each
        #   request.
        attr_reader :default_request_options
  
        # Constructs a new HTTP handler using HTTParty.
        #
        # @param [Hash] options Default options to send to HTTParty on
        #   each request.  These options will be sent to +get+, +post+,
        #   +head+, +put+, or +delete+ when a request is made.  Note
        #   that +:body+, +:headers+, +:parser+, and +:ssl_ca_file+ are
        #   ignored.  If you need to set the CA file, you should use the
        #   +:ssl_ca_file+ option to {AWS.config} or
        #   {Configuration} instead.
        def initialize options = {}
          @default_request_options = options
        end
  
        include HTTParty
  
        class NoOpParser < HTTParty::Parser
          SupportedFormats = {}
        end
  
        def handle(request, response)
  
          opts = default_request_options.merge({
            :body => request.body,
            :parser => NoOpParser
          })
  
          if request.proxy_uri
            opts[:http_proxyaddr] = request.proxy_uri.host
            opts[:http_proxyport] = request.proxy_uri.port
          end
  
          if request.use_ssl?
            protocol = 'https'
            opts[:ssl_ca_file] = request.ssl_ca_file if request.ssl_verify_peer?
          else
            protocol = 'http'
          end

          url = "#{protocol}://#{request.host}:#{request.port}#{request.uri}"
  
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
          rescue Timeout::Error, Errno::ETIMEDOUT => e
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

  # We move this from AWS::Http to AWS::Core::Http, but we want the 
  # previous default handler to remain accessible from its old namesapce
  # @private
  module Http
    class HTTPartyHandler < Core::Http::HTTPartyHandler; end
  end

end
