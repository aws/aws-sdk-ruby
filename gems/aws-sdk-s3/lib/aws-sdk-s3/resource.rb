# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module S3
    class Resource

      # @param options ({})
      # @option options [Client] :client
      def initialize(options = {})
        @client = options[:client] || Client.new(options)
      end

      # @return [Client]
      def client
        @client
      end

      # @!group Actions

      # @param [Hash] options ({})
      # @option options [String] :acl
      #   The canned ACL to apply to the bucket.
      # @option options [required, String] :bucket
      # @option options [Types::CreateBucketConfiguration] :create_bucket_configuration
      # @option options [String] :grant_full_control
      #   Allows grantee the read, write, read ACP, and write ACP permissions on
      #   the bucket.
      # @option options [String] :grant_read
      #   Allows grantee to list the objects in the bucket.
      # @option options [String] :grant_read_acp
      #   Allows grantee to read the bucket ACL.
      # @option options [String] :grant_write
      #   Allows grantee to create, overwrite, and delete any object in the
      #   bucket.
      # @option options [String] :grant_write_acp
      #   Allows grantee to write the ACL for the applicable bucket.
      # @return [Bucket]
      def create_bucket(options = {})
        resp = @client.create_bucket(options)
        Bucket.new(
          name: options[:bucket],
          client: @client
        )
      end

      # @!group Associations

      # @param [String] name
      # @return [Bucket]
      def bucket(name)
        Bucket.new(
          name: name,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @return [Bucket::Collection]
      def buckets(options = {})
        batches = Enumerator.new do |y|
          batch = []
          resp = @client.list_buckets(options)
          resp.data.buckets.each do |b|
            batch << Bucket.new(
              name: b.name,
              data: b,
              client: @client
            )
          end
          y.yield(batch)
        end
        Bucket::Collection.new(batches)
      end

    end
  end
end
