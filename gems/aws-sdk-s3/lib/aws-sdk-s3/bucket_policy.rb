# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3
  class BucketPolicy

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

    # The bucket policy as a JSON document.
    # @return [IO]
    def policy
      data.policy
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {BucketPolicy}.
    # Returns `self` making it possible to chain methods.
    #
    #     bucket_policy.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_bucket_policy(bucket: @bucket_name)
      @data = resp.data
      self
    end
    alias :reload :load

    # @return [Types::GetBucketPolicyOutput]
    #   Returns the data for this {BucketPolicy}. Calls
    #   {Client#get_bucket_policy} if {#data_loaded?} is `false`.
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

    # @example Request syntax with placeholder values
    #
    #   bucket_policy.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(bucket: @bucket_name)
      resp = @client.delete_bucket_policy(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   bucket_policy.put({
    #     content_md5: "ContentMD5",
    #     policy: "Policy", # required
    #   })
    # @param [Hash] options ({})
    # @option options [String] :content_md5
    # @option options [required, String] :policy
    #   The bucket policy as a JSON document.
    # @return [EmptyStructure]
    def put(options = {})
      options = options.merge(bucket: @bucket_name)
      resp = @client.put_bucket_policy(options)
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

    class Collection < Aws::Resources::Collection; end
  end
end
