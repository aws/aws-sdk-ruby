# frozen_string_literal: true

# This is generated code!

module Aws::AgentRegistryControl
  # Endpoint parameters used to resolve endpoints per request.
  # @!attribute region
  #   The AWS region of the service.
  #   @return [String]
  # @!attribute endpoint
  #   Override the endpoint used to send requests.
  #   @return [String]
  EndpointParameters = Struct.new(
    nil,
    :region,
    :endpoint,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.region = options.fetch(:region, nil)
      self.endpoint = options.fetch(:endpoint, nil)
    end

    # @api private
    def self.create(context)
      config = context.config
      new({
        region: config.region,
        endpoint: config.endpoint,
      }.compact)
    end
  end
end
