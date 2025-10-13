# frozen_string_literal: true

module Aws
  module S3
    # @api private
    class DirectoryProgress
      def initialize(progress_callback)
        @transferred_bytes = 0
        @transferred_files = 0
        @progress_callback = progress_callback
        @mutex = Mutex.new
      end

      def call(bytes_transferred)
        @mutex.synchronize do
          @transferred_bytes += bytes_transferred
          @transferred_files += 1

          @progress_callback.call(@transferred_bytes, @transferred_files)
        end
      end
    end
  end
end
