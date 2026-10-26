# frozen_string_literal: true

# This is generated code!

module Aws::WellArchitected
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
  # @!attribute sub_service_type
  #   Identifies the sub-service used for endpoint routing. This value is set automatically per operation and is not client-configurable. It is unset for Well-Architected Tool operations. It is AGENT for Well-Architected Agent operations, which resolve to the wellarchitected-agent endpoint.
  #   @return [String]
  EndpointParameters = Struct.new(
    nil,
    :use_dual_stack,
    :use_fips,
    :endpoint,
    :region,
    :sub_service_type,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.use_dual_stack = options.fetch(:use_dual_stack, false)
      self.use_fips = options.fetch(:use_fips, false)
      self.endpoint = options.fetch(:endpoint, nil)
      self.region = options.fetch(:region, nil)
      self.sub_service_type = options.fetch(:sub_service_type, nil)
    end

    # @api private
    def self.create(context)
      config = context.config
      params = context.params
      operation_params =
        case context.operation_name
        when :create_agent_context
          {
            sub_service_type: "AGENT",
          }
        when :create_agent_goal
          {
            sub_service_type: "AGENT",
          }
        when :create_agent_profile
          {
            sub_service_type: "AGENT",
          }
        when :delete_agent_context
          {
            sub_service_type: "AGENT",
          }
        when :delete_agent_goal
          {
            sub_service_type: "AGENT",
          }
        when :delete_agent_profile
          {
            sub_service_type: "AGENT",
          }
        when :get_agent_context
          {
            sub_service_type: "AGENT",
          }
        when :get_agent_goal
          {
            sub_service_type: "AGENT",
          }
        when :get_agent_profile
          {
            sub_service_type: "AGENT",
          }
        when :get_agent_recommendation
          {
            sub_service_type: "AGENT",
          }
        when :get_agent_recommendation_generation
          {
            sub_service_type: "AGENT",
          }
        when :list_agent_contexts
          {
            sub_service_type: "AGENT",
          }
        when :list_agent_goals
          {
            sub_service_type: "AGENT",
          }
        when :list_agent_profiles
          {
            sub_service_type: "AGENT",
          }
        when :list_agent_recommendation_generations
          {
            sub_service_type: "AGENT",
          }
        when :list_agent_recommendation_items
          {
            sub_service_type: "AGENT",
          }
        when :list_agent_recommendations
          {
            sub_service_type: "AGENT",
          }
        when :put_agent_recommendation_feedback
          {
            sub_service_type: "AGENT",
          }
        when :start_agent_recommendation_generation
          {
            sub_service_type: "AGENT",
          }
        when :update_agent_context
          {
            sub_service_type: "AGENT",
          }
        when :update_agent_goal
          {
            sub_service_type: "AGENT",
          }
        when :update_agent_profile
          {
            sub_service_type: "AGENT",
          }
        when :update_agent_recommendation_status
          {
            sub_service_type: "AGENT",
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
