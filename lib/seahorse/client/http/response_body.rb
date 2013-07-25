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

module Seahorse::Client::Http

  # This module defines the interface an object must implement to be used
  # as the {Response#body #body} property of a {Response}.
  module ResponseBody

    class ResetNotPossibleError < StandardError; end

    # Write a chunk of data to the body.  Chunks should be written to the
    # body as they are read off the response.
    # @param [String] chunk
    # @return [String] Returns the chunk passed in.
    def write(chunk)
      raise NotImplementedError
    end

    # Returns the body as a string if it is {#available?}.  If the body is not
    # available, `nil` is returned.  The body may not be available if it has
    # been streamed.
    # @return [String, nil]
    def read
      raise NotImplementedError
    end

    # Returns `true` when the response body is available.  When the body
    # is available, calling {#read} returns a String.  When the body is
    # not available, calling {#read} returns `nil`.
    # @return [Boolean] Returns `true` if the response body is available.
    def available?
      raise NotImplementedError
    end

    # Returns the size of the response body in bytes.  Even when the body
    # is not {#available?}, this method should return the total number of
    # bytes given to {#write}.
    # @return [Integer] Returns the size of the response body.
    def size
      raise NotImplementedError
    end

    # Returns `true` if no data has been written to this body.  It also
    # returns `true` if only the empty string has been written.
    # @return [Boolean]
    def empty?
      size == 0
    end

    # Returns `true` if it is safe to {#reset!} the response body.  A reset
    # may be needed in the case of a network error.  The response body
    # may return `false` if bytes have already been read from the body.
    # This is especially important for streaming bodies.
    # @return [Boolean]
    def can_reset?
      raise NotImplementedError
    end

    # Resets (empties) the response body.  If the body can not be reset,
    # then a {ResetNotPossibleError} should be raised.
    # @return [void]
    # @raise [ResetNotPossibleError] Raises when response body can not be reset.
    def reset!
      raise NotImplementedError
    end

  end
end
