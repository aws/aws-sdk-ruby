require 'uri'

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

      # @return [String] the URL for this bucket.
      def url
        url = URI.parse(client.config.endpoint.to_s)
        if dns_compatible?(url.scheme) && !client.config.force_path_style
          url.host = "#{name}.#{url.host}"
        else
          url.path = "/#{name}"
        end
        url.to_s
      end

      private

      def dns_compatible?(scheme)
        Plugins::S3BucketDns.dns_compatible?(name, scheme == 'https')
      end

    end
  end
end
