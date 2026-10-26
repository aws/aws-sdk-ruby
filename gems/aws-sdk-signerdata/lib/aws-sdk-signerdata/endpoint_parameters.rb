# frozen_string_literal: true

# This is generated code!

module Aws::SignerData
  # Endpoint parameters used to resolve endpoints per request.
  # @!attribute region
  #   The AWS region used to dispatch the request.
  #   @return [String]
  # @!attribute use_fips
  #   When true, send this request to the FIPS-compliant regional endpoint.
  #   @return [Boolean]
  # @!attribute use_dual_stack
  #   When true, use the dual-stack endpoint.
  #   @return [Boolean]
  # @!attribute endpoint
  #   Override the endpoint used to send this request.
  #   @return [String]
  EndpointParameters = Struct.new(
    nil,
    :region,
    :use_fips,
    :use_dual_stack,
    :endpoint,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.region = options.fetch(:region, nil)
      self.use_fips = options.fetch(:use_fips, false)
      self.use_dual_stack = options.fetch(:use_dual_stack, false)
      self.endpoint = options.fetch(:endpoint, nil)
      raise ArgumentError, "missing required parameter: :region" if region.nil?
    end

    # @api private
    def self.create(context)
      config = context.config
      new({
        region: config.region,
        use_fips: config.use_fips_endpoint,
        use_dual_stack: config.use_dualstack_endpoint,
        endpoint: config.endpoint,
      }.compact)
    end
  end
end
