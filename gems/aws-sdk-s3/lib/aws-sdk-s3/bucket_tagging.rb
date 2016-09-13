# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module S3
    class BucketTagging

      extend Aws::Deprecations

      # @overload def initialize(bucket_name, options = {})
      #   @param [String] bucket_name
      #   @option options [Client] :client
      # @overload def initialize(options = {})
      #   @option options [required, String] :bucket_name
      #   @option options [Client] :client
      def initialize(*args)
        options = Hash === args.last ? args.pop.dup : {}
        @bucket_name = extract_bucket_name(args, options)
        @data = options.delete(:data)
        @client = options.delete(:client) || Client.new(options)
      end

      # @!group Read-Only Attributes

      # @return [String]
      def bucket_name
        @bucket_name
      end

      # @return [Array<Types::Tag>]
      def tag_set
        data.tag_set
      end

      # @!endgroup

      # @return [Client]
      def client
        @client
      end

      # Loads, or reloads {#data} for the current {BucketTagging}.
      # Returns `self` making it possible to chain methods.
      #
      #     bucket_tagging.reload.data
      #
      # @return [self]
      def load
        resp = @client.get_bucket_tagging(bucket: @bucket_name)
        @data = resp.data
        self
      end
      alias :reload :load

      # @return [Types::GetBucketTaggingOutput]
      #   Returns the data for this {BucketTagging}. Calls
      #   {Client#get_bucket_tagging} if {#data_loaded?} is `false`.
      def data
        load unless @data
        @data
      end

      # @return [Boolean]
      #   Returns `true` if this resource is loaded.  Accessing attributes or
      #   {#data} on an unloaded resource will trigger a call to {#load}.
      def data_loaded?
        !!@data
      end

      # @!group Actions

      # @param [Hash] options ({})
      # @return [EmptyStructure]
      def delete(options = {})
        options = options.merge(bucket: @bucket_name)
        resp = @client.delete_bucket_tagging(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [String] :content_md5
      # @option options [required, Types::Tagging] :tagging
      # @return [EmptyStructure]
      def put(options = {})
        options = options.merge(bucket: @bucket_name)
        resp = @client.put_bucket_tagging(options)
        resp.data
      end

      # @!group Associations

      # @return [Bucket]
      def bucket
        Bucket.new(
          name: @bucket_name,
          client: @client
        )
      end

      # @deprecated
      # @api private
      def identifiers
        { bucket_name: @bucket_name }
      end
      deprecated(:identifiers)

      private

      def extract_bucket_name(args, options)
        value = args[0] || options.delete(:bucket_name)
        case value
        when String then value
        when nil then raise ArgumentError, "missing required option :bucket_name"
        else
          msg = "expected :bucket_name to be a String, got #{value.class}"
          raise ArgumentError, msg
        end
      end

      class Collection

        include Aws::Resources::Collection

        # @return [Enumerator<BucketTagging>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

      end
    end
  end
end
