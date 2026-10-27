# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EventBridgeV2
  # Endpoint parameters used to influence endpoints per request.
  #
  # @!attribute region
  #   The AWS region used to dispatch the request.
  #
  #   @return [String]
  #
  # @!attribute endpoint
  #   Override the endpoint used to send this request.
  #
  #   @return [String]
  #
  # @!attribute use_fips
  #   When true, send this request to the FIPS-compliant regional endpoint.
  #
  #   @return [Boolean]
  #
  # @!attribute use_dual_stack
  #   When true, use the dual-stack endpoint.
  #
  #   @return [Boolean]
  #
  # @!attribute account_id
  #   The AWS account ID used for the request, sourced from the caller&#39;s credentials.
  #
  #   @return [String]
  #
  # @!attribute event_bus_arn
  #   The bus ARN from the request, bound via @contextParam. Its account is the bus owner and takes precedence over the credentials-sourced account for cell routing (cross-account calls).
  #
  #   @return [String]
  #
  # @!attribute account_id_endpoint_mode
  #   The behavior for account ID based endpoint routing: preferred, disabled, or required.
  #
  #   @return [String]
  #
  EndpointParameters = Struct.new(
    :region,
    :endpoint,
    :use_fips,
    :use_dual_stack,
    :account_id,
    :event_bus_arn,
    :account_id_endpoint_mode,
  ) do
    include Aws::Structure

    # @api private
    class << self
      PARAM_MAP = {
        'Region' => :region,
        'Endpoint' => :endpoint,
        'UseFIPS' => :use_fips,
        'UseDualStack' => :use_dual_stack,
        'AccountId' => :account_id,
        'EventBusArn' => :event_bus_arn,
        'AccountIdEndpointMode' => :account_id_endpoint_mode,
      }.freeze
    end

    def initialize(options = {})
      self[:region] = options[:region]
      if self[:region].nil?
        raise ArgumentError, "Missing required EndpointParameter: :region"
      end
      self[:endpoint] = options[:endpoint]
      self[:use_fips] = options[:use_fips]
      self[:use_fips] = false if self[:use_fips].nil?
      self[:use_dual_stack] = options[:use_dual_stack]
      self[:use_dual_stack] = false if self[:use_dual_stack].nil?
      self[:account_id] = options[:account_id]
      self[:event_bus_arn] = options[:event_bus_arn]
      self[:account_id_endpoint_mode] = options[:account_id_endpoint_mode]
    end

    def self.create(config, options={})
      new({
        region: config.region,
        endpoint: (config.endpoint.to_s unless config.regional_endpoint),
        use_fips: config.use_fips_endpoint,
        use_dual_stack: config.use_dualstack_endpoint,
        account_id: config.credentials.credentials.account_id,
        account_id_endpoint_mode: config.account_id_endpoint_mode,
      }.merge(options))
    end
  end
end
