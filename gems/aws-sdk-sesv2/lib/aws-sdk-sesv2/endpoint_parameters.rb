# frozen_string_literal: true

# This is generated code!

module Aws::SESv2
  # Endpoint parameters used to resolve endpoints per request.
  # @!attribute region
  #   The AWS region used to dispatch the request.
  #   @return [String]
  # @!attribute use_dual_stack
  #   When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.
  #   @return [Boolean]
  # @!attribute use_fips
  #   When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
  #   @return [Boolean]
  # @!attribute endpoint
  #   Override the endpoint used to send this request
  #   @return [String]
  # @!attribute endpoint_id
  #   Operation parameter for EndpointId
  #   @return [String]
  EndpointParameters = Struct.new(
    nil,
    :region,
    :use_dual_stack,
    :use_fips,
    :endpoint,
    :endpoint_id,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.region = options.fetch(:region, nil)
      self.use_dual_stack = options.fetch(:use_dual_stack, false)
      self.use_fips = options.fetch(:use_fips, false)
      self.endpoint = options.fetch(:endpoint, nil)
      self.endpoint_id = options.fetch(:endpoint_id, nil)
    end

    # @api private
    def self.create(context)
      config = context.config
      params = context.params
      operation_params =
        case context.operation_name
        when :send_bulk_email
          {
            endpoint_id: params[:endpoint_id],
          }
        when :send_email
          {
            endpoint_id: params[:endpoint_id],
          }
        else
          {}
        end

      new({
        region: config.region,
        use_dual_stack: config.use_dualstack_endpoint,
        use_fips: config.use_fips_endpoint,
        endpoint: config.endpoint,
      }.merge(operation_params).compact)
    end
  end
end
