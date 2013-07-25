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
  class BufferedResponseBody

    include ResponseBody

    # @api private
    def initialize
      @mutex = Mutex.new
      @data = []
    end

    # @param [String] chunk
    # @return [String]
    # @raise [BodyClosedError]
    def write(chunk)
      @mutex.synchronize do
        @data << chunk
      end
    end

    # @return [String]
    def read
      @mutex.synchronize do
        if @read_called
          @data
        else
          @read_called = true
          @data = @data.join
        end
      end
    end

    # @return [Boolean]
    def available?
      true
    end

    # @return [Integer]
    def size
      @mutex.synchronize do
        if @read_called
          @data.bytesize
        else
          @data.inject(0) { |total, chunk| total + chunk.bytesize }
        end
      end
    end

    # @return [Boolean]
    def can_reset?
      true
    end

    # @return [void]
    def reset!
      @mutex.synchronize do
        @read_called = false
        @data = []
      end
    end

  end
end
