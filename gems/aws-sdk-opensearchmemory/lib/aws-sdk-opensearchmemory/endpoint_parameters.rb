# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OpenSearchMemory
  # Endpoint parameters used to influence endpoints per request.
  #
  # @!attribute region
  #   The AWS Region to send the request to.
  #
  #   @return [string]
  #
  # @!attribute endpoint
  #   An endpoint URL to use instead of the one the rules resolve.
  #
  #   @return [string]
  #
  # @!attribute space_id
  #   The ID of the space the request targets. When set, the request goes to that space&#39;s endpoint.
  #
  #   @return [string]
  #
  # @!attribute use_fips
  #   When true, send the request to a FIPS endpoint. The service has no FIPS endpoint, so the request fails.
  #
  #   @return [boolean]
  #
  EndpointParameters = Struct.new(
    :region,
    :endpoint,
    :space_id,
    :use_fips,
  ) do
    include Aws::Structure

    # @api private
    class << self
      PARAM_MAP = {
        'Region' => :region,
        'Endpoint' => :endpoint,
        'SpaceId' => :space_id,
        'UseFIPS' => :use_fips,
      }.freeze
    end

    def initialize(options = {})
      self[:region] = options[:region]
      if self[:region].nil?
        raise ArgumentError, "Missing required EndpointParameter: :region"
      end
      self[:endpoint] = options[:endpoint]
      self[:space_id] = options[:space_id]
      self[:use_fips] = options[:use_fips]
      self[:use_fips] = false if self[:use_fips].nil?
    end

    def self.create(config, options={})
      new({
        region: config.region,
        endpoint: (config.endpoint.to_s unless config.regional_endpoint),
        use_fips: config.use_fips_endpoint,
      }.merge(options))
    end
  end
end
