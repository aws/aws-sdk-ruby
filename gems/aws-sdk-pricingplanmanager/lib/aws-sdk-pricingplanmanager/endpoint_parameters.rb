# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PricingPlanManager
  # Endpoint parameters used to influence endpoints per request.
  #
  # @!attribute endpoint
  #   Override the endpoint URL
  #
  #   @return [String]
  #
  # @!attribute region
  #   The AWS region
  #
  #   @return [String]
  #
  EndpointParameters = Struct.new(
    :endpoint,
    :region,
  ) do
    include Aws::Structure

    # @api private
    class << self
      PARAM_MAP = {
        'Endpoint' => :endpoint,
        'Region' => :region,
      }.freeze
    end

    def initialize(options = {})
      self[:endpoint] = options[:endpoint]
      self[:region] = options[:region]
      if self[:region].nil?
        raise ArgumentError, "Missing required EndpointParameter: :region"
      end
    end

    def self.create(config, options={})
      new({
        endpoint: (config.endpoint.to_s unless config.regional_endpoint),
        region: config.region,
      }.merge(options))
    end
  end
end
