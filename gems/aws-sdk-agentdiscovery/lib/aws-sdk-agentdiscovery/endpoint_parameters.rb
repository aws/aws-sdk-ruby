# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AgentDiscovery
  # Endpoint parameters used to influence endpoints per request.
  #
  # @!attribute region
  #   The AWS Region the client is configured for. us-east-1, eu-west-1 and ap-northeast-1 resolve to their own Regional endpoint; any other Region resolves to the standard Regional pattern, which Agent Discovery does not serve.
  #
  #   @return [String]
  #
  # @!attribute use_fips
  #   When true, send the request to a FIPS-compliant endpoint. Agent Discovery has none, so this is an error.
  #
  #   @return [Boolean]
  #
  # @!attribute use_dual_stack
  #   When true, send the request to a dual-stack endpoint. Agent Discovery&#39;s Regional endpoints already are, so they resolve unchanged.
  #
  #   @return [Boolean]
  #
  # @!attribute endpoint
  #   Override the endpoint used to send this request.
  #
  #   @return [String]
  #
  EndpointParameters = Struct.new(
    :region,
    :use_fips,
    :use_dual_stack,
    :endpoint,
  ) do
    include Aws::Structure

    # @api private
    class << self
      PARAM_MAP = {
        'Region' => :region,
        'UseFIPS' => :use_fips,
        'UseDualStack' => :use_dual_stack,
        'Endpoint' => :endpoint,
      }.freeze
    end

    def initialize(options = {})
      self[:region] = options[:region]
      self[:use_fips] = options[:use_fips]
      self[:use_fips] = false if self[:use_fips].nil?
      self[:use_dual_stack] = options[:use_dual_stack]
      self[:use_dual_stack] = false if self[:use_dual_stack].nil?
      self[:endpoint] = options[:endpoint]
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
