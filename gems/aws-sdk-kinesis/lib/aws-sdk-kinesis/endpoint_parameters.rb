# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Kinesis
  # Endpoint parameters used to influence endpoints per request.
  #
  # @!attribute region
  #   The AWS region used to dispatch the request.
  #
  #   @return [string]
  #
  # @!attribute use_dual_stack
  #   When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.
  #
  #   @return [boolean]
  #
  # @!attribute use_fips
  #   When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
  #
  #   @return [boolean]
  #
  # @!attribute endpoint
  #   Override the endpoint used to send this request
  #
  #   @return [string]
  #
  # @!attribute operation_type
  #   Internal parameter to distinguish between Control/Data plane API and accordingly generate control/data plane endpoint
  #
  #   @return [string]
  #
  # @!attribute stream_id
  #   The unique identifier of the Kinesis stream
  #
  #   @return [string]
  #
  # @!attribute stream_arn
  #   The ARN of the Kinesis stream
  #
  #   @return [string]
  #
  # @!attribute consumer_arn
  #   The ARN of the Kinesis consumer
  #
  #   @return [string]
  #
  # @!attribute resource_arn
  #   The ARN of the Kinesis resource
  #
  #   @return [string]
  #
  # @!attribute channel_arn
  #   The ARN of the Kinesis data channel
  #
  #   @return [string]
  #
  # @!attribute account_id
  #   The AWS AccountId used for the request.
  #
  #   @return [string]
  #
  # @!attribute account_id_endpoint_mode
  #   The AccountId Endpoint Mode.
  #
  #   @return [string]
  #
  EndpointParameters = Struct.new(
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
  ) do
    include Aws::Structure

    # @api private
    class << self
      PARAM_MAP = {
        'Region' => :region,
        'UseDualStack' => :use_dual_stack,
        'UseFIPS' => :use_fips,
        'Endpoint' => :endpoint,
        'OperationType' => :operation_type,
        'StreamId' => :stream_id,
        'StreamARN' => :stream_arn,
        'ConsumerARN' => :consumer_arn,
        'ResourceARN' => :resource_arn,
        'ChannelARN' => :channel_arn,
        'AccountId' => :account_id,
        'AccountIdEndpointMode' => :account_id_endpoint_mode,
      }.freeze
    end

    def initialize(options = {})
      self[:region] = options[:region]
      self[:use_dual_stack] = options[:use_dual_stack]
      self[:use_dual_stack] = false if self[:use_dual_stack].nil?
      self[:use_fips] = options[:use_fips]
      self[:use_fips] = false if self[:use_fips].nil?
      self[:endpoint] = options[:endpoint]
      self[:operation_type] = options[:operation_type]
      self[:stream_id] = options[:stream_id]
      self[:stream_arn] = options[:stream_arn]
      self[:consumer_arn] = options[:consumer_arn]
      self[:resource_arn] = options[:resource_arn]
      self[:channel_arn] = options[:channel_arn]
      self[:account_id] = options[:account_id]
      self[:account_id_endpoint_mode] = options[:account_id_endpoint_mode]
    end

    def self.create(config, options={})
      new({
        region: config.region,
        use_dual_stack: config.use_dualstack_endpoint,
        use_fips: config.use_fips_endpoint,
        endpoint: (config.endpoint.to_s unless config.regional_endpoint),
        account_id: config.credentials.credentials.account_id,
        account_id_endpoint_mode: config.account_id_endpoint_mode,
      }.merge(options))
    end
  end
end
