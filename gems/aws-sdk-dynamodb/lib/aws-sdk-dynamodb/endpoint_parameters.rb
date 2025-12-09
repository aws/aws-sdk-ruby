# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DynamoDB
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
  # @!attribute resource_arn
  #   ResourceArn containing arn of resource
  #
  #   @return [string]
  #
  # @!attribute resource_arn_list
  #   ResourceArnList containing list of resource arns
  #
  #   @return [stringArray]
  #
  EndpointParameters = Struct.new(
    :region,
    :use_dual_stack,
    :use_fips,
    :endpoint,
    :account_id,
    :account_id_endpoint_mode,
    :resource_arn,
    :resource_arn_list,
  ) do
    include Aws::Structure

    # @api private
    class << self
      PARAM_MAP = {
        'Region' => :region,
        'UseDualStack' => :use_dual_stack,
        'UseFIPS' => :use_fips,
        'Endpoint' => :endpoint,
        'AccountId' => :account_id,
        'AccountIdEndpointMode' => :account_id_endpoint_mode,
        'ResourceArn' => :resource_arn,
        'ResourceArnList' => :resource_arn_list,
      }.freeze
    end

    def initialize(options = {})
      self[:region] = options[:region]
      self[:use_dual_stack] = options[:use_dual_stack]
      self[:use_dual_stack] = false if self[:use_dual_stack].nil?
      self[:use_fips] = options[:use_fips]
      self[:use_fips] = false if self[:use_fips].nil?
      self[:endpoint] = options[:endpoint]
      self[:account_id] = options[:account_id]
      self[:account_id_endpoint_mode] = options[:account_id_endpoint_mode]
      self[:resource_arn] = options[:resource_arn]
      self[:resource_arn_list] = options[:resource_arn_list]
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
