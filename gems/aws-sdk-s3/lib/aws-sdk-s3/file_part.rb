# frozen_string_literal: true

module Aws
  module S3

    # A utility class that provides an IO-like interface to a portion of a file
    # on disk.
    # @api private
    class FilePart

      # @option options [required, String, Pathname, File, Tempfile] :source
      #   The file to upload.
      #
      # @option options [required, Integer] :offset The file part will read
      #   starting at this byte offset.
      #
      # @option options [required, Integer] :size The maximum number of bytes to
      #   read from the `:offset`.
      def initialize(options = {})
        @source = options[:source]
        @first_byte = options[:offset]
        @last_byte = @first_byte + options[:size]
        @size = options[:size]
        @file = nil
      end

      # @return [String, Pathname, File, Tempfile]
      attr_reader :source

      # @return [Integer]
      attr_reader :first_byte

      # @return [Integer]
      attr_reader :last_byte

      # @return [Integer]
      attr_reader :size

      def read(bytes = nil, output_buffer = nil)
        open_file unless @file
        read_from_file(bytes, output_buffer)
      end

      def rewind
        if @file
          @file.seek(@first_byte)
          @position = @first_byte
        end
        0
      end

      def close
        @file.close if @file
      end

      private

      def open_file
        @file = File.open(@source, 'rb')
        rewind
      end

      def read_from_file(bytes, output_buffer)
        length = [remaining_bytes, *bytes].min
        data   = @file.read(length, output_buffer)

        @position += data ? data.bytesize : 0

        data.to_s unless bytes && (data.nil? || data.empty?)
      end

      def remaining_bytes
        @last_byte - @position
      end

    end
  end
end
