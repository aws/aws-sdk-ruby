# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::InternetMonitor
  # Endpoint parameters used to influence endpoints per request.
  #
  # @!attribute region
  #   The AWS region used to dispatch the request.
  #
  #   @return [String]
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
  EndpointParameters = Struct.new(
    :region,
    :use_fips,
    :endpoint,
  ) do
    include Aws::Structure

    # @api private
    class << self
      PARAM_MAP = {
        'Region' => :region,
        'UseFIPS' => :use_fips,
        'Endpoint' => :endpoint,
      }.freeze
    end

    def initialize(options = {})
      self[:region] = options[:region]
      self[:use_fips] = options[:use_fips]
      self[:use_fips] = false if self[:use_fips].nil?
      if self[:use_fips].nil?
        raise ArgumentError, "Missing required EndpointParameter: :use_fips"
      end
      self[:endpoint] = options[:endpoint]
    end
  end
end
