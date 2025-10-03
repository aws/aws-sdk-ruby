# frozen_string_literal: true

# This is generated code!

module Aws::STS
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
  # @!attribute use_global_endpoint
  #   Whether the global endpoint should be used, rather then the regional endpoint for us-east-1.
  #   @return [Boolean]
  EndpointParameters = Struct.new(
    :region,
    :use_dual_stack,
    :use_fips,
    :endpoint,
    :use_global_endpoint,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.region = options.fetch(:region, nil)
      self.use_dual_stack = options.fetch(:use_dual_stack, false)
      self.use_fips = options.fetch(:use_fips, false)
      self.endpoint = options.fetch(:endpoint, nil)
      self.use_global_endpoint = options.fetch(:use_global_endpoint, false)
      raise ArgumentError, "missing required parameter: :use_dual_stack" if use_dual_stack.nil?
      raise ArgumentError, "missing required parameter: :use_fips" if use_fips.nil?
      raise ArgumentError, "missing required parameter: :use_global_endpoint" if use_global_endpoint.nil?
    end

    # @api private
    def self.create(context)
      config = context.config
      new({
        region: config.region,
        use_dual_stack: config.use_dualstack_endpoint,
        use_fips: config.use_fips_endpoint,
        endpoint: config.endpoint,
        use_global_endpoint: config.sts_regional_endpoints == "legacy",
      }.compact)
    end
  end
end
