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
  class ResponseBodyStream

    include ResponseBody

    # @api private
    def initialize(&read_block)
      @read_block = Proc.new
      @yielded = false
      @bytes_yielded = 0
      @yield_mutex = Mutex.new
    end

    # Yields the chunk of data directly to the original read block.
    # @param [String] chunk
    # @return [String] Returns the chunk passed in.
    def write(chunk)
      @yield_mutex.synchronize do
        @yielded = true
        @bytes_yielded += chunk.bytesize
        @read_block.call(chunk)
        chunk
      end
    end

    # Data is yielded directly from {#write} and is not available to read.
    # Returns `nil`.
    # @return [nil]
    def read
      nil
    end

    # Data is yielded directly from {#write} and is not available to read.
    # Returns `false`.
    # @return [false]
    def available?
      false
    end

    # @return [Integer] Returns the number of bytes written/yielded.
    def size
      @yield_mutex.synchronize do
        @bytes_yielded
      end
    end

    # Returns `true` if no data has been written/yielded.  Returns `false`
    # otherwise.
    # @return [Boolean]
    def can_reset?
      @yield_mutex.synchronize do
        @yielded == false
      end
    end

    # @raise [ResetNotPossibleError] Raises if data has been written/yielded.
    def reset!
      unless can_reset?
        msg = 'unable to reset, data has already been yielded'
        raise ResetNotPossibleError, msg
      end
    end

  end
end
