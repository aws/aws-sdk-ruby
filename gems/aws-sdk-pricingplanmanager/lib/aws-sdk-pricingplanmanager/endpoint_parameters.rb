# frozen_string_literal: true

# This is generated code!

module Aws::PricingPlanManager
  # Endpoint parameters used to resolve endpoints per request.
  # @!attribute endpoint
  #   Override the endpoint URL
  #   @return [String]
  # @!attribute region
  #   The AWS region
  #   @return [String]
  EndpointParameters = Struct.new(
    nil,
    :endpoint,
    :region,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.endpoint = options.fetch(:endpoint, nil)
      self.region = options.fetch(:region, nil)
      raise ArgumentError, "missing required parameter: :region" if region.nil?
    end

    # @api private
    def self.create(context)
      config = context.config
      new({
        endpoint: config.endpoint,
        region: config.region,
      }.compact)
    end
  end
end
