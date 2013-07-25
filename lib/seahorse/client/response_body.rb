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
  class Client
    class ResponseBody

      class BodyClosedError < StandardError; end

      # @api private
      def initialize
        @mutex = Mutex.new
        @data = []
      end

      # @param [String] chunk
      # @return [String]
      # @raise [StandardErro
      def write(chunk)
        @mutex.synchronize do
          if @read_called
            msg = 'unable to write after #read has been called'
            raise BodyClosedError, msg
          end
          @data << chunk unless chunk.bytesize == 0
        end
      end
      alias << write

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
      alias to_str read
      alias to_s read

      # @return [Boolean]
      def empty?
        @mutex.synchronize do
          @data.empty?
        end
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
end
