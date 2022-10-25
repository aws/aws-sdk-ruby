# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ElasticLoadBalancing
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ElasticLoadBalancing::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ElasticLoadBalancing::EndpointParameters`'
      ) do |cfg|
        Aws::ElasticLoadBalancing::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          # If endpoint was discovered, do not resolve or apply the endpoint.
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)
          end

          context[:endpoint_params] = params
          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end

        def parameters_for_operation(context)
          case context.operation_name
          when :add_tags
            Aws::ElasticLoadBalancing::Endpoints::AddTags.build(context)
          when :apply_security_groups_to_load_balancer
            Aws::ElasticLoadBalancing::Endpoints::ApplySecurityGroupsToLoadBalancer.build(context)
          when :attach_load_balancer_to_subnets
            Aws::ElasticLoadBalancing::Endpoints::AttachLoadBalancerToSubnets.build(context)
          when :configure_health_check
            Aws::ElasticLoadBalancing::Endpoints::ConfigureHealthCheck.build(context)
          when :create_app_cookie_stickiness_policy
            Aws::ElasticLoadBalancing::Endpoints::CreateAppCookieStickinessPolicy.build(context)
          when :create_lb_cookie_stickiness_policy
            Aws::ElasticLoadBalancing::Endpoints::CreateLBCookieStickinessPolicy.build(context)
          when :create_load_balancer
            Aws::ElasticLoadBalancing::Endpoints::CreateLoadBalancer.build(context)
          when :create_load_balancer_listeners
            Aws::ElasticLoadBalancing::Endpoints::CreateLoadBalancerListeners.build(context)
          when :create_load_balancer_policy
            Aws::ElasticLoadBalancing::Endpoints::CreateLoadBalancerPolicy.build(context)
          when :delete_load_balancer
            Aws::ElasticLoadBalancing::Endpoints::DeleteLoadBalancer.build(context)
          when :delete_load_balancer_listeners
            Aws::ElasticLoadBalancing::Endpoints::DeleteLoadBalancerListeners.build(context)
          when :delete_load_balancer_policy
            Aws::ElasticLoadBalancing::Endpoints::DeleteLoadBalancerPolicy.build(context)
          when :deregister_instances_from_load_balancer
            Aws::ElasticLoadBalancing::Endpoints::DeregisterInstancesFromLoadBalancer.build(context)
          when :describe_account_limits
            Aws::ElasticLoadBalancing::Endpoints::DescribeAccountLimits.build(context)
          when :describe_instance_health
            Aws::ElasticLoadBalancing::Endpoints::DescribeInstanceHealth.build(context)
          when :describe_load_balancer_attributes
            Aws::ElasticLoadBalancing::Endpoints::DescribeLoadBalancerAttributes.build(context)
          when :describe_load_balancer_policies
            Aws::ElasticLoadBalancing::Endpoints::DescribeLoadBalancerPolicies.build(context)
          when :describe_load_balancer_policy_types
            Aws::ElasticLoadBalancing::Endpoints::DescribeLoadBalancerPolicyTypes.build(context)
          when :describe_load_balancers
            Aws::ElasticLoadBalancing::Endpoints::DescribeLoadBalancers.build(context)
          when :describe_tags
            Aws::ElasticLoadBalancing::Endpoints::DescribeTags.build(context)
          when :detach_load_balancer_from_subnets
            Aws::ElasticLoadBalancing::Endpoints::DetachLoadBalancerFromSubnets.build(context)
          when :disable_availability_zones_for_load_balancer
            Aws::ElasticLoadBalancing::Endpoints::DisableAvailabilityZonesForLoadBalancer.build(context)
          when :enable_availability_zones_for_load_balancer
            Aws::ElasticLoadBalancing::Endpoints::EnableAvailabilityZonesForLoadBalancer.build(context)
          when :modify_load_balancer_attributes
            Aws::ElasticLoadBalancing::Endpoints::ModifyLoadBalancerAttributes.build(context)
          when :register_instances_with_load_balancer
            Aws::ElasticLoadBalancing::Endpoints::RegisterInstancesWithLoadBalancer.build(context)
          when :remove_tags
            Aws::ElasticLoadBalancing::Endpoints::RemoveTags.build(context)
          when :set_load_balancer_listener_ssl_certificate
            Aws::ElasticLoadBalancing::Endpoints::SetLoadBalancerListenerSSLCertificate.build(context)
          when :set_load_balancer_policies_for_backend_server
            Aws::ElasticLoadBalancing::Endpoints::SetLoadBalancerPoliciesForBackendServer.build(context)
          when :set_load_balancer_policies_of_listener
            Aws::ElasticLoadBalancing::Endpoints::SetLoadBalancerPoliciesOfListener.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
