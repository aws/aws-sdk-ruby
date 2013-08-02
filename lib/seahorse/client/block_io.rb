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

module Seahorse
  module Client
    class BlockIO

      def initialize(&block)
        @block = block
        @size = 0
      end

      # @param [String]
      # @return [Integer]
      def write(chunk)
        @block.call(chunk)
        chunk.bytesize.tap { |chunk_size| @size += chunk_size }
      end

      # @param [Integer] bytes (nil)
      # @param [String] output_buffer (nil)
      # @return [String, nil]
      def read(bytes = nil, output_buffer = nil)
        data = bytes ? nil : ''
        output_buffer ? output_buffer.replace(data || '') : data
      end

      # @return [Integer]
      def size
        @size
      end

      # It is not possible to rewind a {BlockIO} object as the data has
      # already been yielded.
      # @return [NotImplementedError]
      def rewind
        raise NotImplementedError
      end

    end
  end
end
