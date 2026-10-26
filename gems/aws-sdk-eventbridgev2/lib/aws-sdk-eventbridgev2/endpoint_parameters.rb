# frozen_string_literal: true

# This is generated code!

module Aws::EventBridgeV2
  # Endpoint parameters used to resolve endpoints per request.
  # @!attribute region
  #   The AWS region used to dispatch the request.
  #   @return [String]
  # @!attribute endpoint
  #   Override the endpoint used to send this request.
  #   @return [String]
  # @!attribute use_fips
  #   When true, send this request to the FIPS-compliant regional endpoint.
  #   @return [Boolean]
  # @!attribute use_dual_stack
  #   When true, use the dual-stack endpoint.
  #   @return [Boolean]
  # @!attribute account_id
  #   The AWS account ID used for the request, sourced from the caller's credentials.
  #   @return [String]
  # @!attribute event_bus_arn
  #   The bus ARN from the request, bound via @contextParam. Its account is the bus owner and takes precedence over the credentials-sourced account for cell routing (cross-account calls).
  #   @return [String]
  # @!attribute account_id_endpoint_mode
  #   The behavior for account ID based endpoint routing: preferred, disabled, or required.
  #   @return [String]
  EndpointParameters = Struct.new(
    nil,
    :region,
    :endpoint,
    :use_fips,
    :use_dual_stack,
    :account_id,
    :event_bus_arn,
    :account_id_endpoint_mode,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.region = options.fetch(:region, nil)
      self.endpoint = options.fetch(:endpoint, nil)
      self.use_fips = options.fetch(:use_fips, false)
      self.use_dual_stack = options.fetch(:use_dual_stack, false)
      self.account_id = options.fetch(:account_id, nil)
      self.event_bus_arn = options.fetch(:event_bus_arn, nil)
      self.account_id_endpoint_mode = options.fetch(:account_id_endpoint_mode, nil)
      raise ArgumentError, "missing required parameter: :region" if region.nil?
    end

    # @api private
    def self.create(context)
      config = context.config
      params = context.params
      operation_params =
        case context.operation_name
        when :create_event_source
          {
            event_bus_arn: params[:event_bus_arn],
          }
        when :create_subscriber
          {
            event_bus_arn: params[:event_bus_arn],
          }
        when :delete_event_bus
          {
            event_bus_arn: params[:event_bus_arn],
          }
        when :delete_resource_policy
          {
            event_bus_arn: params[:resource_arn],
          }
        when :describe_event_bus
          {
            event_bus_arn: params[:event_bus_arn],
          }
        when :get_resource_policy
          {
            event_bus_arn: params[:resource_arn],
          }
        when :list_event_sources
          {
            event_bus_arn: params[:event_bus_arn],
          }
        when :list_resource_policies
          {
            event_bus_arn: params[:resource_arn],
          }
        when :list_subscribers
          {
            event_bus_arn: params[:event_bus_arn],
          }
        when :put_events
          {
            event_bus_arn: params[:event_bus_arn],
          }
        when :put_raw_events
          {
            event_bus_arn: params[:event_bus_arn],
          }
        when :put_resource_policy
          {
            event_bus_arn: params[:resource_arn],
          }
        when :update_event_bus
          {
            event_bus_arn: params[:event_bus_arn],
          }
        else
          {}
        end

      new({
        region: config.region,
        endpoint: config.endpoint,
        use_fips: config.use_fips_endpoint,
        use_dual_stack: config.use_dualstack_endpoint,
        account_id: config.credentials_provider.identity.account_id,
        account_id_endpoint_mode: config.account_id_endpoint_mode,
      }.merge(operation_params).compact)
    end
  end
end
