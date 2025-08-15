# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BCMRecommendedActions
  # Endpoint parameters used to influence endpoints per request.
  #
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
  ) do
    include Aws::Structure

    # @api private
    class << self
      PARAM_MAP = {
        'UseFIPS' => :use_fips,
        'Endpoint' => :endpoint,
        'Region' => :region,
      }.freeze
    end

    def initialize(options = {})
      self[:use_fips] = options[:use_fips]
      self[:use_fips] = false if self[:use_fips].nil?
      self[:endpoint] = options[:endpoint]
      self[:region] = options[:region]
    end

    def self.create(config, options={})
      new({
        use_fips: config.use_fips_endpoint,
        endpoint: (config.endpoint.to_s unless config.regional_endpoint),
        region: config.region,
      }.merge(options))
    end
  end
end
