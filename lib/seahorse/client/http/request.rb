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

require 'stringio'

module Seahorse
  module Client
    module Http
      class Request

        # @option options [Endpoint] :endpoint (nil)
        # @option options [String] :http_method ('GET')
        # @option options [String] :path ('/')
        # @option options [Headers] :headers (Headers.new)
        # @option options [Body] :body (StringIO.new)
        def initialize(options = {})
          self.endpoint = options[:endpoint]
          self.http_method = options[:http_method] || 'GET'
          self.path = options[:path] || '/'
          self.headers = options[:headers] || Headers.new
          self.body = options[:body] || ''
        end

        # @return [Endpoint, nil]
        attr_accessor :endpoint

        # @return [String] The HTTP request method, e.g. `GET`, `PUT`, etc.
        attr_accessor :http_method

        # @return [Headers] The hash of request headers.
        attr_accessor :headers

        # @return [String] The path name and querystring, e.g. `/abc?mno=xyz`.
        attr_accessor :path

        # @return [IO]
        attr_reader :body

        def body=(io)
          @body = String === io ? PlainStringIO.new(io) : io
        end
      end
    end
  end
end
