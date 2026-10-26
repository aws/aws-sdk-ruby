# frozen_string_literal: true

# This is generated code!

module Aws::Signin
  # Endpoint parameters used to resolve endpoints per request.
  # @!attribute use_dual_stack
  #   When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.
  #   @return [Boolean]
  # @!attribute use_fips
  #   When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
  #   @return [Boolean]
  # @!attribute endpoint
  #   Override the endpoint used to send this request
  #   @return [String]
  # @!attribute region
  #   The AWS region used to dispatch the request.
  #   @return [String]
  # @!attribute is_control_plane
  #   Indicates if the operation targets the control plane endpoint
  #   @return [Boolean]
  # @!attribute is_o_auth_endpoint
  #   Indicates if the operation targets the OAuth token endpoint
  #   @return [Boolean]
  EndpointParameters = Struct.new(
    nil,
    :use_dual_stack,
    :use_fips,
    :endpoint,
    :region,
    :is_control_plane,
    :is_o_auth_endpoint,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.use_dual_stack = options.fetch(:use_dual_stack, false)
      self.use_fips = options.fetch(:use_fips, false)
      self.endpoint = options.fetch(:endpoint, nil)
      self.region = options.fetch(:region, nil)
      self.is_control_plane = options.fetch(:is_control_plane, nil)
      self.is_o_auth_endpoint = options.fetch(:is_o_auth_endpoint, nil)
    end

    # @api private
    def self.create(context)
      config = context.config
      params = context.params
      operation_params =
        case context.operation_name
        when :create_o_auth2_token
          {
            is_control_plane: false,
          }
        when :create_o_auth2_token_with_iam
          {
            is_o_auth_endpoint: true,
          }
        when :delete_console_authorization_configuration
          {
            is_control_plane: true,
          }
        when :delete_resource_permission_statement
          {
            is_control_plane: true,
          }
        when :get_console_authorization_configuration
          {
            is_control_plane: true,
          }
        when :get_resource_policy
          {
            is_control_plane: true,
          }
        when :introspect_o_auth2_token_with_iam
          {
            is_o_auth_endpoint: true,
          }
        when :list_resource_permission_statements
          {
            is_control_plane: true,
          }
        when :put_console_authorization_configuration
          {
            is_control_plane: true,
          }
        when :put_resource_permission_statement
          {
            is_control_plane: true,
          }
        when :revoke_o_auth2_token_with_iam
          {
            is_o_auth_endpoint: true,
          }
        else
          {}
        end

      new({
        use_dual_stack: config.use_dualstack_endpoint,
        use_fips: config.use_fips_endpoint,
        endpoint: config.endpoint,
        region: config.region,
      }.merge(operation_params).compact)
    end
  end
end
