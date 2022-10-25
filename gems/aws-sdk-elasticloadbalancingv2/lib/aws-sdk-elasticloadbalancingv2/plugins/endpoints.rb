# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ElasticLoadBalancingV2
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ElasticLoadBalancingV2::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ElasticLoadBalancingV2::EndpointParameters`'
      ) do |cfg|
        Aws::ElasticLoadBalancingV2::EndpointProvider.new
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
          when :add_listener_certificates
            Aws::ElasticLoadBalancingV2::Endpoints::AddListenerCertificates.build(context)
          when :add_tags
            Aws::ElasticLoadBalancingV2::Endpoints::AddTags.build(context)
          when :create_listener
            Aws::ElasticLoadBalancingV2::Endpoints::CreateListener.build(context)
          when :create_load_balancer
            Aws::ElasticLoadBalancingV2::Endpoints::CreateLoadBalancer.build(context)
          when :create_rule
            Aws::ElasticLoadBalancingV2::Endpoints::CreateRule.build(context)
          when :create_target_group
            Aws::ElasticLoadBalancingV2::Endpoints::CreateTargetGroup.build(context)
          when :delete_listener
            Aws::ElasticLoadBalancingV2::Endpoints::DeleteListener.build(context)
          when :delete_load_balancer
            Aws::ElasticLoadBalancingV2::Endpoints::DeleteLoadBalancer.build(context)
          when :delete_rule
            Aws::ElasticLoadBalancingV2::Endpoints::DeleteRule.build(context)
          when :delete_target_group
            Aws::ElasticLoadBalancingV2::Endpoints::DeleteTargetGroup.build(context)
          when :deregister_targets
            Aws::ElasticLoadBalancingV2::Endpoints::DeregisterTargets.build(context)
          when :describe_account_limits
            Aws::ElasticLoadBalancingV2::Endpoints::DescribeAccountLimits.build(context)
          when :describe_listener_certificates
            Aws::ElasticLoadBalancingV2::Endpoints::DescribeListenerCertificates.build(context)
          when :describe_listeners
            Aws::ElasticLoadBalancingV2::Endpoints::DescribeListeners.build(context)
          when :describe_load_balancer_attributes
            Aws::ElasticLoadBalancingV2::Endpoints::DescribeLoadBalancerAttributes.build(context)
          when :describe_load_balancers
            Aws::ElasticLoadBalancingV2::Endpoints::DescribeLoadBalancers.build(context)
          when :describe_rules
            Aws::ElasticLoadBalancingV2::Endpoints::DescribeRules.build(context)
          when :describe_ssl_policies
            Aws::ElasticLoadBalancingV2::Endpoints::DescribeSSLPolicies.build(context)
          when :describe_tags
            Aws::ElasticLoadBalancingV2::Endpoints::DescribeTags.build(context)
          when :describe_target_group_attributes
            Aws::ElasticLoadBalancingV2::Endpoints::DescribeTargetGroupAttributes.build(context)
          when :describe_target_groups
            Aws::ElasticLoadBalancingV2::Endpoints::DescribeTargetGroups.build(context)
          when :describe_target_health
            Aws::ElasticLoadBalancingV2::Endpoints::DescribeTargetHealth.build(context)
          when :modify_listener
            Aws::ElasticLoadBalancingV2::Endpoints::ModifyListener.build(context)
          when :modify_load_balancer_attributes
            Aws::ElasticLoadBalancingV2::Endpoints::ModifyLoadBalancerAttributes.build(context)
          when :modify_rule
            Aws::ElasticLoadBalancingV2::Endpoints::ModifyRule.build(context)
          when :modify_target_group
            Aws::ElasticLoadBalancingV2::Endpoints::ModifyTargetGroup.build(context)
          when :modify_target_group_attributes
            Aws::ElasticLoadBalancingV2::Endpoints::ModifyTargetGroupAttributes.build(context)
          when :register_targets
            Aws::ElasticLoadBalancingV2::Endpoints::RegisterTargets.build(context)
          when :remove_listener_certificates
            Aws::ElasticLoadBalancingV2::Endpoints::RemoveListenerCertificates.build(context)
          when :remove_tags
            Aws::ElasticLoadBalancingV2::Endpoints::RemoveTags.build(context)
          when :set_ip_address_type
            Aws::ElasticLoadBalancingV2::Endpoints::SetIpAddressType.build(context)
          when :set_rule_priorities
            Aws::ElasticLoadBalancingV2::Endpoints::SetRulePriorities.build(context)
          when :set_security_groups
            Aws::ElasticLoadBalancingV2::Endpoints::SetSecurityGroups.build(context)
          when :set_subnets
            Aws::ElasticLoadBalancingV2::Endpoints::SetSubnets.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
