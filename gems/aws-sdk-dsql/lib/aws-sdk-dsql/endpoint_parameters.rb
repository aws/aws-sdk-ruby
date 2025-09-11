# frozen_string_literal: true

# This is generated code!

module Aws::DSQL
  # Endpoint parameters used to resolve endpoints per request.
  # @!attribute use_fips
  #   When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
  #
  #   @return [Boolean]
  #
  # @!attribute endpoint
  #   Override the endpoint used to send this request
  #
  #   @return [String]
  #
  # @!attribute region
  #   The AWS region used to dispatch the request.
  #
  #   @return [String]
  #
  EndpointParameters = Struct.new(
    :use_fips,
    :endpoint,
    :region,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.use_fips = options.fetch(:use_fips, false)
      self.endpoint = options.fetch(:endpoint, nil)
      self.region = options.fetch(:region, nil)
      raise ArgumentError, "Missing required EndpointParameter: :use_fips" if use_fips.nil?
    end

    # @api private
    def self.create(context)
      config = context.config
      new({
        use_fips: config.use_fips_endpoint,
        endpoint: config.endpoint,
        region: config.region,
      }.compact)
    end
  end
end
