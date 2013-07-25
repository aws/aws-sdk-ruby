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
  module ResponseBody

    class ResetNotPossibleError < StandardError; end

    # @param [String] chunk
    # @return [String]
    def write(chunk)
      raise NotImplementedError
    end

    # Returns the response body as a string if it is {#available?}.
    # A response body may be unavailable if it has been streamed.
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

    # Returns the size of the response body.  This may return a value greater
    # than zero, even if the body is not {#available?}.  This can be the case
    # when the response body was streamed.
    # @return [Integer] Returns the size of the response body.
    def size
      raise NotImplementedError
    end

    # @return [Boolean] Returns `true` if no data has been written to this
    #   response body.
    def empty?
      size == 0
    end

    # @return [Boolean]
    def can_reset?
      raise NotImplementedError
    end

    # Attempts to reset the response body.  Not all response bodies can be
    # reset.  For example, streaming response bodies that have already
    # yielded data can not be reset.
    # @return [void]
    # @raise [ResetNotPossibleError] Raises if the response body can not be reset.
    def reset!
      raise NotImplementedError
    end

  end
end
