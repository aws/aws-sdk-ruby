# frozen_string_literal: true

# This is generated code!

module Aws::Kinesis
  # Endpoint parameters used to resolve endpoints per request.
  # @!attribute region
  #   The AWS region used to dispatch the request.
  #   @return [String]
  # @!attribute use_dual_stack
  #   When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.
  #   @return [Boolean]
  # @!attribute use_fips
  #   When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
  #   @return [Boolean]
  # @!attribute endpoint
  #   Override the endpoint used to send this request
  #   @return [String]
  # @!attribute operation_type
  #   Internal parameter to distinguish between Control/Data plane API and accordingly generate control/data plane endpoint
  #   @return [String]
  # @!attribute stream_id
  #   The unique identifier of the Kinesis stream
  #   @return [String]
  # @!attribute stream_arn
  #   The ARN of the Kinesis stream
  #   @return [String]
  # @!attribute consumer_arn
  #   The ARN of the Kinesis consumer
  #   @return [String]
  # @!attribute resource_arn
  #   The ARN of the Kinesis resource
  #   @return [String]
  # @!attribute channel_arn
  #   The ARN of the Kinesis data channel
  #   @return [String]
  # @!attribute account_id
  #   The AWS AccountId used for the request.
  #   @return [String]
  # @!attribute account_id_endpoint_mode
  #   The AccountId Endpoint Mode.
  #   @return [String]
  EndpointParameters = Struct.new(
    nil,
    :region,
    :use_dual_stack,
    :use_fips,
    :endpoint,
    :operation_type,
    :stream_id,
    :stream_arn,
    :consumer_arn,
    :resource_arn,
    :channel_arn,
    :account_id,
    :account_id_endpoint_mode,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.region = options.fetch(:region, nil)
      self.use_dual_stack = options.fetch(:use_dual_stack, false)
      self.use_fips = options.fetch(:use_fips, false)
      self.endpoint = options.fetch(:endpoint, nil)
      self.operation_type = options.fetch(:operation_type, nil)
      self.stream_id = options.fetch(:stream_id, nil)
      self.stream_arn = options.fetch(:stream_arn, nil)
      self.consumer_arn = options.fetch(:consumer_arn, nil)
      self.resource_arn = options.fetch(:resource_arn, nil)
      self.channel_arn = options.fetch(:channel_arn, nil)
      self.account_id = options.fetch(:account_id, nil)
      self.account_id_endpoint_mode = options.fetch(:account_id_endpoint_mode, nil)
    end

    # @api private
    def self.create(context)
      config = context.config
      params = context.params
      operation_params =
        case context.operation_name
        when :add_tags_to_stream
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :create_channel
          {
            operation_type: "control",
          }
        when :create_stream
          {
            operation_type: "control",
          }
        when :decrease_stream_retention_period
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :delete_channel
          {
            operation_type: "control",
            channel_arn: params[:channel_arn],
          }
        when :delete_resource_policy
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            resource_arn: params[:resource_arn],
          }
        when :delete_stream
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :deregister_stream_consumer
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
            consumer_arn: params[:consumer_arn],
          }
        when :describe_account_settings
          {
            operation_type: "control",
          }
        when :describe_channel
          {
            operation_type: "control",
            channel_arn: params[:channel_arn],
          }
        when :describe_limits
          {
            operation_type: "control",
          }
        when :describe_stream
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :describe_stream_consumer
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
            consumer_arn: params[:consumer_arn],
          }
        when :describe_stream_summary
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :disable_enhanced_monitoring
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :enable_enhanced_monitoring
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :get_records
          {
            operation_type: "data",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :get_resource_policy
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            resource_arn: params[:resource_arn],
          }
        when :get_shard_iterator
          {
            operation_type: "data",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :increase_stream_retention_period
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :list_channels
          {
            operation_type: "control",
          }
        when :list_shards
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :list_stream_consumers
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :list_streams
          {
            operation_type: "control",
          }
        when :list_tags_for_resource
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            resource_arn: params[:resource_arn],
          }
        when :list_tags_for_stream
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :merge_shards
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :put_record
          {
            operation_type: "data",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :put_records
          {
            operation_type: "data",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :put_resource_policy
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            resource_arn: params[:resource_arn],
          }
        when :register_stream_consumer
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :remove_tags_from_stream
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :split_shard
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :start_stream_encryption
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :stop_stream_encryption
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :subscribe_to_shard
          {
            operation_type: "data",
            stream_id: params[:stream_id],
            consumer_arn: params[:consumer_arn],
          }
        when :tag_resource
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            resource_arn: params[:resource_arn],
          }
        when :untag_resource
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            resource_arn: params[:resource_arn],
          }
        when :update_account_settings
          {
            operation_type: "control",
          }
        when :update_channel
          {
            operation_type: "control",
            channel_arn: params[:channel_arn],
          }
        when :update_max_record_size
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :update_shard_count
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :update_stream_mode
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :update_stream_record_distribution_strategy
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        when :update_stream_warm_throughput
          {
            operation_type: "control",
            stream_id: params[:stream_id],
            stream_arn: params[:stream_arn],
          }
        else
          {}
        end

      new({
        region: config.region,
        use_dual_stack: config.use_dualstack_endpoint,
        use_fips: config.use_fips_endpoint,
        endpoint: config.endpoint,
        account_id: config.credentials_provider.identity.account_id,
        account_id_endpoint_mode: config.account_id_endpoint_mode,
      }.merge(operation_params).compact)
    end
  end
end
