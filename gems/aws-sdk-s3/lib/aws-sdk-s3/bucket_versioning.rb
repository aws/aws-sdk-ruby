# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3
  class BucketVersioning

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

    # The versioning state of the bucket.
    # @return [String]
    def status
      data.status
    end

    # Specifies whether MFA delete is enabled in the bucket versioning
    # configuration. This element is only returned if the bucket has been
    # configured with MFA delete. If the bucket has never been so
    # configured, this element is not returned.
    # @return [String]
    def mfa_delete
      data.mfa_delete
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {BucketVersioning}.
    # Returns `self` making it possible to chain methods.
    #
    #     bucket_versioning.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_bucket_versioning(bucket: @bucket_name)
      @data = resp.data
      self
    end
    alias :reload :load

    # @return [Types::GetBucketVersioningOutput]
    #   Returns the data for this {BucketVersioning}. Calls
    #   {Client#get_bucket_versioning} if {#data_loaded?} is `false`.
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
    #   bucket_versioning.enable({
    #     content_md5: "ContentMD5",
    #     mfa: "MFA",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :content_md5
    # @option options [String] :mfa
    #   The concatenation of the authentication device's serial number, a
    #   space, and the value that is displayed on your authentication device.
    # @return [EmptyStructure]
    def enable(options = {})
      options = Aws::Util.deep_merge(options,
        bucket: @bucket_name,
        versioning_configuration: {
          status: "Enabled"
        }
      )
      resp = @client.put_bucket_versioning(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   bucket_versioning.put({
    #     content_md5: "ContentMD5",
    #     mfa: "MFA",
    #     versioning_configuration: { # required
    #       mfa_delete: "Enabled", # accepts Enabled, Disabled
    #       status: "Enabled", # accepts Enabled, Suspended
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [String] :content_md5
    # @option options [String] :mfa
    #   The concatenation of the authentication device's serial number, a
    #   space, and the value that is displayed on your authentication device.
    # @option options [required, Types::VersioningConfiguration] :versioning_configuration
    # @return [EmptyStructure]
    def put(options = {})
      options = options.merge(bucket: @bucket_name)
      resp = @client.put_bucket_versioning(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   bucket_versioning.suspend({
    #     content_md5: "ContentMD5",
    #     mfa: "MFA",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :content_md5
    # @option options [String] :mfa
    #   The concatenation of the authentication device's serial number, a
    #   space, and the value that is displayed on your authentication device.
    # @return [EmptyStructure]
    def suspend(options = {})
      options = Aws::Util.deep_merge(options,
        bucket: @bucket_name,
        versioning_configuration: {
          status: "Suspended"
        }
      )
      resp = @client.put_bucket_versioning(options)
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
