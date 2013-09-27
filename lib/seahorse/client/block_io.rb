module Seahorse
  module Client
    class BlockIO

      def initialize(&block)
        @block = block
        @size = 0
      end

      # @param [String] chunk
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
