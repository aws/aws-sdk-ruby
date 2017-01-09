# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3
  class BucketWebsite

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

    # @return [Types::RedirectAllRequestsTo]
    def redirect_all_requests_to
      data.redirect_all_requests_to
    end

    # @return [Types::IndexDocument]
    def index_document
      data.index_document
    end

    # @return [Types::ErrorDocument]
    def error_document
      data.error_document
    end

    # @return [Array<Types::RoutingRule>]
    def routing_rules
      data.routing_rules
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {BucketWebsite}.
    # Returns `self` making it possible to chain methods.
    #
    #     bucket_website.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_bucket_website(bucket: @bucket_name)
      @data = resp.data
      self
    end
    alias :reload :load

    # @return [Types::GetBucketWebsiteOutput]
    #   Returns the data for this {BucketWebsite}. Calls
    #   {Client#get_bucket_website} if {#data_loaded?} is `false`.
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
    #   bucket_website.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(bucket: @bucket_name)
      resp = @client.delete_bucket_website(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   bucket_website.put({
    #     content_md5: "ContentMD5",
    #     website_configuration: { # required
    #       error_document: {
    #         key: "ObjectKey", # required
    #       },
    #       index_document: {
    #         suffix: "Suffix", # required
    #       },
    #       redirect_all_requests_to: {
    #         host_name: "HostName", # required
    #         protocol: "http", # accepts http, https
    #       },
    #       routing_rules: [
    #         {
    #           condition: {
    #             http_error_code_returned_equals: "HttpErrorCodeReturnedEquals",
    #             key_prefix_equals: "KeyPrefixEquals",
    #           },
    #           redirect: { # required
    #             host_name: "HostName",
    #             http_redirect_code: "HttpRedirectCode",
    #             protocol: "http", # accepts http, https
    #             replace_key_prefix_with: "ReplaceKeyPrefixWith",
    #             replace_key_with: "ReplaceKeyWith",
    #           },
    #         },
    #       ],
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [String] :content_md5
    # @option options [required, Types::WebsiteConfiguration] :website_configuration
    # @return [EmptyStructure]
    def put(options = {})
      options = options.merge(bucket: @bucket_name)
      resp = @client.put_bucket_website(options)
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
