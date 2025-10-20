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
  # @!attribute stream_arn
  #   The ARN of the Kinesis stream
  #   @return [String]
  # @!attribute operation_type
  #   Internal parameter to distinguish between Control/Data plane API and accordingly generate control/data plane endpoint
  #   @return [String]
  # @!attribute consumer_arn
  #   The ARN of the Kinesis consumer
  #   @return [String]
  # @!attribute resource_arn
  #   The ARN of the Kinesis resource
  #   @return [String]
  EndpointParameters = Struct.new(
    :region,
    :use_dual_stack,
    :use_fips,
    :endpoint,
    :stream_arn,
    :operation_type,
    :consumer_arn,
    :resource_arn,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.region = options.fetch(:region, nil)
      self.use_dual_stack = options.fetch(:use_dual_stack, false)
      self.use_fips = options.fetch(:use_fips, false)
      self.endpoint = options.fetch(:endpoint, nil)
      self.stream_arn = options.fetch(:stream_arn, nil)
      self.operation_type = options.fetch(:operation_type, nil)
      self.consumer_arn = options.fetch(:consumer_arn, nil)
      self.resource_arn = options.fetch(:resource_arn, nil)
    end

    # @api private
    def self.create(context)
      config = context.config
      params = context.params
      operation_params =
        case context.operation_name
        when :add_tags_to_stream
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :decrease_stream_retention_period
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :delete_resource_policy
          {
            operation_type: "control",
            resource_arn: params[:resource_arn],
          }
        when :delete_stream
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :deregister_stream_consumer
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
            consumer_arn: params[:consumer_arn],
          }
        when :describe_stream
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :describe_stream_consumer
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
            consumer_arn: params[:consumer_arn],
          }
        when :describe_stream_summary
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :disable_enhanced_monitoring
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :enable_enhanced_monitoring
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :get_records
          {
            stream_arn: params[:stream_arn],
            operation_type: "data",
          }
        when :get_resource_policy
          {
            operation_type: "control",
            resource_arn: params[:resource_arn],
          }
        when :get_shard_iterator
          {
            stream_arn: params[:stream_arn],
            operation_type: "data",
          }
        when :increase_stream_retention_period
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :list_shards
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :list_stream_consumers
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :list_tags_for_resource
          {
            operation_type: "control",
            resource_arn: params[:resource_arn],
          }
        when :list_tags_for_stream
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :merge_shards
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :put_record
          {
            stream_arn: params[:stream_arn],
            operation_type: "data",
          }
        when :put_records
          {
            stream_arn: params[:stream_arn],
            operation_type: "data",
          }
        when :put_resource_policy
          {
            operation_type: "control",
            resource_arn: params[:resource_arn],
          }
        when :register_stream_consumer
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :remove_tags_from_stream
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :split_shard
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :start_stream_encryption
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :stop_stream_encryption
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :subscribe_to_shard
          {
            operation_type: "data",
            consumer_arn: params[:consumer_arn],
          }
        when :tag_resource
          {
            operation_type: "control",
            resource_arn: params[:resource_arn],
          }
        when :untag_resource
          {
            operation_type: "control",
            resource_arn: params[:resource_arn],
          }
        when :update_shard_count
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        when :update_stream_mode
          {
            stream_arn: params[:stream_arn],
            operation_type: "control",
          }
        else
          {}
        end

      new({
        region: config.region,
        use_dual_stack: config.use_dualstack_endpoint,
        use_fips: config.use_fips_endpoint,
        endpoint: config.endpoint,
      }.merge(operation_params).compact)
    end
  end
end
