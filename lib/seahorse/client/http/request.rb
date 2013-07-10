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

require 'stringio'

module Seahorse
  class Client
    module Http
      class Request

        # @api private
        BODY_ERROR = 'must be a String or to respond to #read and #rewind'

        def initialize
          @headers = HeaderHash.new
          @body = StringIO.new
        end

        # @return [Endpoint, nil]
        attr_accessor :endpoint

        # @return [HeaderHash]
        attr_accessor :headers

        # @return [IO]
        def body
          @body
        end

        # @param [IO, String] body An IO like object that responds to #read,
        #   or a string.
        def body=(body)
          if body.is_a?(String)
            @body = StringIO.new(body)
          elsif io_like?(body)
            @body = body
          else
            raise ArgumentError, BODY_ERROR
          end
        end

        private

        # @param [Object] obj
        # @return [Boolean] Returns +true+ if the given object is IO-like.
        #   It must respond to both #read and #rewind.
        def io_like?(obj)
          obj.respond_to?(:read) && obj.respond_to?(:rewind)
        end

      end
    end
  end
end
