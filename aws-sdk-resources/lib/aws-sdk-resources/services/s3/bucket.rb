module Aws
  module S3
    class Bucket

      # Deletes all objects and versioned objects from this bucket
      #
      # @example
      #
      #   bucket.clear!
      #
      # @return [void]
      def clear!
        object_versions.delete
      end

      # Deletes all objects and versioned objects from this bucket and
      # then deletes the bucket.
      #
      # @example
      #
      #   bucket.delete!
      #
      # @return [void]
      def delete!
        clear!
        delete
      end

    end
  end
end
