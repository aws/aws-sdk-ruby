# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::STS
  # Endpoint parameters used to influence endpoints per request.
  #
  # @!attribute use_global_endpoint
  #   Whether the global endpoint should be used, rather then the regional endpoint for us-east-1.
  #
  #   @return [Boolean]
  #
  EndpointParameters = Struct.new(
    :use_global_endpoint,
  ) do
    include Aws::Structure

    # @api private
    self::PARAM_MAP = {
      'UseGlobalEndpoint' => :use_global_endpoint,
    }.freeze

    def initialize(options = {})
      self[:use_global_endpoint] = options[:use_global_endpoint]
      self[:use_global_endpoint] = false if self[:use_global_endpoint].nil?
      if self[:use_global_endpoint].nil?
        raise ArgumentError, "Missing required EndpointParameter: :use_global_endpoint"
      end
    end
  end
end
