# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ACM
  # Endpoint parameters used to influence endpoints per request.
  #
  # @!attribute region
  #   The AWS region to send requests to.
  #
  #   @return [string]
  #
  # @!attribute endpoint
  #   Override the endpoint used to send requests.
  #
  #   @return [string]
  #
  # @!attribute use_fips
  #   Use FIPS endpoints.
  #
  #   @return [boolean]
  #
  # @!attribute use_dual_stack
  #   Use dual-stack endpoints.
  #
  #   @return [boolean]
  #
  # @!attribute service_type
  #   The service type: ACM or ACM-ACME. Injected via @staticContextParams.
  #
  #   @return [string]
  #
  EndpointParameters = Struct.new(
    :region,
    :endpoint,
    :use_fips,
    :use_dual_stack,
    :service_type,
  ) do
    include Aws::Structure

    # @api private
    class << self
      PARAM_MAP = {
        'Region' => :region,
        'Endpoint' => :endpoint,
        'UseFIPS' => :use_fips,
        'UseDualStack' => :use_dual_stack,
        'ServiceType' => :service_type,
      }.freeze
    end

    def initialize(options = {})
      self[:region] = options[:region]
      if self[:region].nil?
        raise ArgumentError, "Missing required EndpointParameter: :region"
      end
      self[:endpoint] = options[:endpoint]
      self[:use_fips] = options[:use_fips]
      self[:use_fips] = false if self[:use_fips].nil?
      self[:use_dual_stack] = options[:use_dual_stack]
      self[:use_dual_stack] = false if self[:use_dual_stack].nil?
      self[:service_type] = options[:service_type]
      if self[:service_type].nil?
        raise ArgumentError, "Missing required EndpointParameter: :service_type"
      end
    end

    def self.create(config, options={})
      new({
        region: config.region,
        endpoint: (config.endpoint.to_s unless config.regional_endpoint),
        use_fips: config.use_fips_endpoint,
        use_dual_stack: config.use_dualstack_endpoint,
        service_type: config.service_type,
      }.merge(options))
    end
  end
end
