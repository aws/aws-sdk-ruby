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

require 'thread'

module Seahorse
  module Client
    module Http

      # This module defines the interface an object must implement to be used
      # as the {Response#body #body} property of a {Response}.
      module ResponseBody

        class ResetNotPossibleError < StandardError; end

        # Writes a chunk of of data to the response body.
        #
        # You can write to a body multiple times.  You should write to the
        # body as data is streamed off the HTTP response.  This allows
        # response bodies to efficiently manage the data.
        #
        #     # write chunks as they are read off the socket
        #     response.read_body do |chunk|
        #       http_resp.body.write(chunk)
        #     end
        #
        # @param [String] chunk
        # @return [String] Returns the chunk passed in.
        def write(chunk)
          raise NotImplementedError
        end

        # Returns the body as a string if it is {#available?}.  If the body is
        # not available, `nil` is returned.  The body may not be available if
        # it has been streamed.
        # @note Calling `#read` closes the body for writes.
        # @return [String, nil]
        def read
          raise NotImplementedError
        end

        # Returns `true` when the response body is available.  A response body
        # is not available if it has been streamed to an external source.
        # When the body is available, calling {#read} must return a string.
        # When the body is not available, calling {#read} must `nil`.
        # @return [Boolean] Returns `true` if the response body is available
        #   to {#read}.
        def available?
          raise NotImplementedError
        end

        # Returns the number of bytes passed to the {#write} method.
        # Even if the data is no longer {#available?}, this method must
        # returns the size.
        # @return [Integer] Returns the number of bytes passed to {#write}.
        def size
          raise NotImplementedError
        end

        # Returns `true` if no data has been written to this body.  It must also
        # return `true` if only the empty string has been written to the body.
        # @return [Boolean]
        def empty?
          size == 0
        end

        # Returns `true` if it is safe to {#reset!} the response body.  A reset
        # may be needed in the case of a network error.  The response body
        # must return `false` if bytes have already been read from the body.
        # This is especially important for streaming bodies.
        # @return [Boolean]
        def can_reset?
          raise NotImplementedError
        end

        # Truncates the response body.  If the body can not be reset,
        # then a {ResetNotPossibleError} must be raised.
        # @raise [ResetNotPossibleError] Raises when response body can not be
        #   reset.
        # @return [void]
        def reset!
          raise NotImplementedError
        end

      end
    end
  end
end
