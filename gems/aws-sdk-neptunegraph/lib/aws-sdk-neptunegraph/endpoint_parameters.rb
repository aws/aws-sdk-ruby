# frozen_string_literal: true

# This is generated code!

module Aws::NeptuneGraph
  # Endpoint parameters used to resolve endpoints per request.
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
  # @!attribute use_dual_stack
  #   When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.
  #
  #   @return [Boolean]
  #
  # @!attribute endpoint
  #   Override the endpoint used to send this request
  #
  #   @return [String]
  #
  # @!attribute api_type
  #   Parameter to determine whether current API is a control plane or dataplane API
  #
  #   @return [String]
  #
  EndpointParameters = Struct.new(
    :region,
    :use_fips,
    :use_dual_stack,
    :endpoint,
    :api_type,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.region = options.fetch(:region, nil)
      self.use_fips = options.fetch(:use_fips, false)
      self.use_dual_stack = options.fetch(:use_dual_stack, false)
      self.endpoint = options.fetch(:endpoint, nil)
      self.api_type = options.fetch(:api_type, nil)
      raise ArgumentError, "Missing required EndpointParameter: :use_fips" if use_fips.nil?
      raise ArgumentError, "Missing required EndpointParameter: :use_dual_stack" if use_dual_stack.nil?
      raise ArgumentError, "Missing required EndpointParameter: :api_type" if api_type.nil?
    end

    # @api private
    def self.create(context)
      config = context.config
      params = context.params
      operation_params =
        case context.operation_name
        when :cancel_export_task
          {
            api_type: "ControlPlane",
          }
        when :cancel_import_task
          {
            api_type: "ControlPlane",
          }
        when :cancel_query
          {
            api_type: "DataPlane",
          }
        when :create_graph
          {
            api_type: "ControlPlane",
          }
        when :create_graph_snapshot
          {
            api_type: "ControlPlane",
          }
        when :create_graph_using_import_task
          {
            api_type: "ControlPlane",
          }
        when :create_private_graph_endpoint
          {
            api_type: "ControlPlane",
          }
        when :delete_graph
          {
            api_type: "ControlPlane",
          }
        when :delete_graph_snapshot
          {
            api_type: "ControlPlane",
          }
        when :delete_private_graph_endpoint
          {
            api_type: "ControlPlane",
          }
        when :execute_query
          {
            api_type: "DataPlane",
          }
        when :get_export_task
          {
            api_type: "ControlPlane",
          }
        when :get_graph
          {
            api_type: "ControlPlane",
          }
        when :get_graph_snapshot
          {
            api_type: "ControlPlane",
          }
        when :get_graph_summary
          {
            api_type: "DataPlane",
          }
        when :get_import_task
          {
            api_type: "ControlPlane",
          }
        when :get_private_graph_endpoint
          {
            api_type: "ControlPlane",
          }
        when :get_query
          {
            api_type: "DataPlane",
          }
        when :list_export_tasks
          {
            api_type: "ControlPlane",
          }
        when :list_graph_snapshots
          {
            api_type: "ControlPlane",
          }
        when :list_graphs
          {
            api_type: "ControlPlane",
          }
        when :list_import_tasks
          {
            api_type: "ControlPlane",
          }
        when :list_private_graph_endpoints
          {
            api_type: "ControlPlane",
          }
        when :list_queries
          {
            api_type: "DataPlane",
          }
        when :list_tags_for_resource
          {
            api_type: "ControlPlane",
          }
        when :reset_graph
          {
            api_type: "ControlPlane",
          }
        when :restore_graph_from_snapshot
          {
            api_type: "ControlPlane",
          }
        when :start_export_task
          {
            api_type: "ControlPlane",
          }
        when :start_graph
          {
            api_type: "ControlPlane",
          }
        when :start_import_task
          {
            api_type: "ControlPlane",
          }
        when :stop_graph
          {
            api_type: "ControlPlane",
          }
        when :tag_resource
          {
            api_type: "ControlPlane",
          }
        when :untag_resource
          {
            api_type: "ControlPlane",
          }
        when :update_graph
          {
            api_type: "ControlPlane",
          }
        else
          {}
        end

      new({
        region: config.region,
        use_fips: config.use_fips_endpoint,
        use_dual_stack: config.use_dual_stack_endpoint,
        endpoint: config.endpoint,
      }.merge(operation_params).compact)
    end
  end
end
