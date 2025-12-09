# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NeptuneGraph
  # Endpoint parameters used to influence endpoints per request.
  #
  # @!attribute region
  #   The AWS region used to dispatch the request.
  #
  #   @return [string]
  #
  # @!attribute use_fips
  #   When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
  #
  #   @return [boolean]
  #
  # @!attribute use_dual_stack
  #   When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.
  #
  #   @return [boolean]
  #
  # @!attribute endpoint
  #   Override the endpoint used to send this request
  #
  #   @return [string]
  #
  # @!attribute api_type
  #   Parameter to determine whether current API is a control plane or dataplane API
  #
  #   @return [string]
  #
  EndpointParameters = Struct.new(
    :region,
    :use_fips,
    :use_dual_stack,
    :endpoint,
    :api_type,
  ) do
    include Aws::Structure

    # @api private
    class << self
      PARAM_MAP = {
        'Region' => :region,
        'UseFIPS' => :use_fips,
        'UseDualStack' => :use_dual_stack,
        'Endpoint' => :endpoint,
        'ApiType' => :api_type,
      }.freeze
    end

    def initialize(options = {})
      self[:region] = options[:region]
      self[:use_fips] = options[:use_fips]
      self[:use_fips] = false if self[:use_fips].nil?
      self[:use_dual_stack] = options[:use_dual_stack]
      self[:use_dual_stack] = false if self[:use_dual_stack].nil?
      self[:endpoint] = options[:endpoint]
      self[:api_type] = options[:api_type]
      if self[:api_type].nil?
        raise ArgumentError, "Missing required EndpointParameter: :api_type"
      end
    end

    def self.create(config, options={})
      new({
        region: config.region,
        use_fips: config.use_fips_endpoint,
        use_dual_stack: config.use_dualstack_endpoint,
        endpoint: (config.endpoint.to_s unless config.regional_endpoint),
      }.merge(options))
    end
  end
end
