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

      # Creates a {PresignedPost} that makes it easy to upload a file from
      # a web browser direct to Amazon S3 using an HTML post form with
      # a file field.
      #
      # See the {PresignedPost} documentation for more information.
      # @note You must specify `:key` or `:key_starts_with`. All other options
      #   are optional.
      # @option (see PresignedPost#initialize)
      # @return [PresignedPost]
      # @see PresignedPost
      def presigned_post(options = {})
        PresignedPost.new(
          client.config.credentials,
          client.config.region,
          name,
          options)
      end

      private

      def dns_compatible?(scheme)
        Plugins::S3BucketDns.dns_compatible?(name, scheme == 'https')
      end

    end
  end
end
