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
      class Response

        # @option options [Integer] :status_code (nil)
        # @option options [Headers] :headers (Headers.new)
        # @option options [IO] :body (StringIO.new)
        def initialize(options = {})
          @status_code = nil
          @headers = options[:headers] || Headers.new
          @body = options[:body] || PlainStringIO.new
        end

        # @return [Integer, nil]
        attr_accessor :status_code

        # @return [Headers]
        attr_accessor :headers

        # @return [IO]
        attr_accessor :body

        # @return [String]
        def body_contents
          contents = body.read
          body.rewind
          contents
        end

      end
    end
  end
end
