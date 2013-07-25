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
  class ResponseBodyBuffer

    include ResponseBody

    # @api private
    def initialize
      @data_mutex = Mutex.new
      @data = []
      @read_called = false
    end

    # Write a chunk of data to the body.  Chunks should be written to the
    # body as they are read off the response.
    # @note Chunks are buffered into memory.  This class should not be used for
    #   large responses.
    # @param [String] chunk
    # @return [String] Returns the chunk passed in.
    def write(chunk)
      @data_mutex.synchronize do
        @data << chunk
      end
      chunk
    end

    # @return [String] Returns the entire body as a string.
    def read
      @data_mutex.synchronize do
        if @read_called
          @data
        else
          @read_called = true
          @data = @data.join
        end
      end
    end

    # @return [Boolean] Returns `true`, the buffered body is always available.
    def available?
      true
    end

    # @return [Integer] Returns the size of the response body in bytes.
    def size
      @data_mutex.synchronize do
        if @read_called
          @data.bytesize
        else
          @data.inject(0) { |total, chunk| total + chunk.bytesize }
        end
      end
    end

    # Returns `true` if the body can be reset.  {#read Reading} from the body
    # causes this method to return `false`.
    # @return [Boolean] Returns `true` if the body can be reset.
    def can_reset?
      @data_mutex .synchronize do
        !@read_called
      end
    end

    # Empties the response body buffer.
    # @return [void]
    def reset!
      @data_mutex.synchronize do
        @read_called = false
        @data = []
      end
    end

  end
end
