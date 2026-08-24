# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AgentRegistryControl
  # Endpoint parameters used to influence endpoints per request.
  #
  # @!attribute region
  #   The AWS region of the service.
  #
  #   @return [String]
  #
  # @!attribute endpoint
  #   Override the endpoint used to send requests.
  #
  #   @return [String]
  #
  EndpointParameters = Struct.new(
    :region,
    :endpoint,
  ) do
    include Aws::Structure

    # @api private
    class << self
      PARAM_MAP = {
        'Region' => :region,
        'Endpoint' => :endpoint,
      }.freeze
    end

    def initialize(options = {})
      self[:region] = options[:region]
      self[:endpoint] = options[:endpoint]
    end

    def self.create(config, options={})
      new({
        region: config.region,
        endpoint: (config.endpoint.to_s unless config.regional_endpoint),
      }.merge(options))
    end
  end
end
