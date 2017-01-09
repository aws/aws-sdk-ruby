# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3
  class BucketNotification

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

    # @return [Array<Types::TopicConfiguration>]
    def topic_configurations
      data.topic_configurations
    end

    # @return [Array<Types::QueueConfiguration>]
    def queue_configurations
      data.queue_configurations
    end

    # @return [Array<Types::LambdaFunctionConfiguration>]
    def lambda_function_configurations
      data.lambda_function_configurations
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {BucketNotification}.
    # Returns `self` making it possible to chain methods.
    #
    #     bucket_notification.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_bucket_notification_configuration(bucket: @bucket_name)
      @data = resp.data
      self
    end
    alias :reload :load

    # @return [Types::NotificationConfiguration]
    #   Returns the data for this {BucketNotification}. Calls
    #   {Client#get_bucket_notification_configuration} if {#data_loaded?} is `false`.
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
    #   bucket_notification.put({
    #     notification_configuration: { # required
    #       topic_configurations: [
    #         {
    #           id: "NotificationId",
    #           topic_arn: "TopicArn", # required
    #           events: ["s3:ReducedRedundancyLostObject"], # required, accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
    #           filter: {
    #             key: {
    #               filter_rules: [
    #                 {
    #                   name: "prefix", # accepts prefix, suffix
    #                   value: "FilterRuleValue",
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       ],
    #       queue_configurations: [
    #         {
    #           id: "NotificationId",
    #           queue_arn: "QueueArn", # required
    #           events: ["s3:ReducedRedundancyLostObject"], # required, accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
    #           filter: {
    #             key: {
    #               filter_rules: [
    #                 {
    #                   name: "prefix", # accepts prefix, suffix
    #                   value: "FilterRuleValue",
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       ],
    #       lambda_function_configurations: [
    #         {
    #           id: "NotificationId",
    #           lambda_function_arn: "LambdaFunctionArn", # required
    #           events: ["s3:ReducedRedundancyLostObject"], # required, accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
    #           filter: {
    #             key: {
    #               filter_rules: [
    #                 {
    #                   name: "prefix", # accepts prefix, suffix
    #                   value: "FilterRuleValue",
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       ],
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [required, Types::NotificationConfiguration] :notification_configuration
    #   Container for specifying the notification configuration of the bucket.
    #   If this element is empty, notifications are turned off on the bucket.
    # @return [EmptyStructure]
    def put(options = {})
      options = options.merge(bucket: @bucket_name)
      resp = @client.put_bucket_notification_configuration(options)
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
