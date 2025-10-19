# frozen_string_literal: true

# This is generated code!

module Aws::ARCRegionswitch
  # Endpoint parameters used to resolve endpoints per request.
  # @!attribute use_fips
  #   When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
  #   @return [Boolean]
  # @!attribute endpoint
  #   Override the endpoint used to send this request
  #   @return [String]
  # @!attribute region
  #   The AWS region used to dispatch the request.
  #   @return [String]
  # @!attribute use_control_plane_endpoint
  #   Whether the operation is a control plane operation. Control plane operations are routed to a centralized endpoint in the partition leader.
  #   @return [Boolean]
  EndpointParameters = Struct.new(
    :use_fips,
    :endpoint,
    :region,
    :use_control_plane_endpoint,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.use_fips = options.fetch(:use_fips, false)
      self.endpoint = options.fetch(:endpoint, nil)
      self.region = options.fetch(:region, nil)
      self.use_control_plane_endpoint = options.fetch(:use_control_plane_endpoint, nil)
    end

    # @api private
    def self.create(context)
      config = context.config
      params = context.params
      operation_params =
        case context.operation_name
        when :create_plan
          {
            use_control_plane_endpoint: true,
          }
        when :delete_plan
          {
            use_control_plane_endpoint: true,
          }
        when :get_plan
          {
            use_control_plane_endpoint: true,
          }
        when :list_plans
          {
            use_control_plane_endpoint: true,
          }
        when :list_route53_health_checks
          {
            use_control_plane_endpoint: true,
          }
        when :list_tags_for_resource
          {
            use_control_plane_endpoint: true,
          }
        when :tag_resource
          {
            use_control_plane_endpoint: true,
          }
        when :untag_resource
          {
            use_control_plane_endpoint: true,
          }
        when :update_plan
          {
            use_control_plane_endpoint: true,
          }
        else
          {}
        end

      new({
        use_fips: config.use_fips_endpoint,
        endpoint: config.endpoint,
        region: config.region,
      }.merge(operation_params).compact)
    end
  end
end
