# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::NetworkFirewall
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::NetworkFirewall::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::NetworkFirewall::EndpointParameters`'
      ) do |cfg|
        Aws::NetworkFirewall::EndpointProvider.new
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
          when :associate_firewall_policy
            Aws::NetworkFirewall::Endpoints::AssociateFirewallPolicy.build(context)
          when :associate_subnets
            Aws::NetworkFirewall::Endpoints::AssociateSubnets.build(context)
          when :create_firewall
            Aws::NetworkFirewall::Endpoints::CreateFirewall.build(context)
          when :create_firewall_policy
            Aws::NetworkFirewall::Endpoints::CreateFirewallPolicy.build(context)
          when :create_rule_group
            Aws::NetworkFirewall::Endpoints::CreateRuleGroup.build(context)
          when :create_tls_inspection_configuration
            Aws::NetworkFirewall::Endpoints::CreateTLSInspectionConfiguration.build(context)
          when :delete_firewall
            Aws::NetworkFirewall::Endpoints::DeleteFirewall.build(context)
          when :delete_firewall_policy
            Aws::NetworkFirewall::Endpoints::DeleteFirewallPolicy.build(context)
          when :delete_resource_policy
            Aws::NetworkFirewall::Endpoints::DeleteResourcePolicy.build(context)
          when :delete_rule_group
            Aws::NetworkFirewall::Endpoints::DeleteRuleGroup.build(context)
          when :delete_tls_inspection_configuration
            Aws::NetworkFirewall::Endpoints::DeleteTLSInspectionConfiguration.build(context)
          when :describe_firewall
            Aws::NetworkFirewall::Endpoints::DescribeFirewall.build(context)
          when :describe_firewall_policy
            Aws::NetworkFirewall::Endpoints::DescribeFirewallPolicy.build(context)
          when :describe_logging_configuration
            Aws::NetworkFirewall::Endpoints::DescribeLoggingConfiguration.build(context)
          when :describe_resource_policy
            Aws::NetworkFirewall::Endpoints::DescribeResourcePolicy.build(context)
          when :describe_rule_group
            Aws::NetworkFirewall::Endpoints::DescribeRuleGroup.build(context)
          when :describe_rule_group_metadata
            Aws::NetworkFirewall::Endpoints::DescribeRuleGroupMetadata.build(context)
          when :describe_tls_inspection_configuration
            Aws::NetworkFirewall::Endpoints::DescribeTLSInspectionConfiguration.build(context)
          when :disassociate_subnets
            Aws::NetworkFirewall::Endpoints::DisassociateSubnets.build(context)
          when :list_firewall_policies
            Aws::NetworkFirewall::Endpoints::ListFirewallPolicies.build(context)
          when :list_firewalls
            Aws::NetworkFirewall::Endpoints::ListFirewalls.build(context)
          when :list_rule_groups
            Aws::NetworkFirewall::Endpoints::ListRuleGroups.build(context)
          when :list_tls_inspection_configurations
            Aws::NetworkFirewall::Endpoints::ListTLSInspectionConfigurations.build(context)
          when :list_tags_for_resource
            Aws::NetworkFirewall::Endpoints::ListTagsForResource.build(context)
          when :put_resource_policy
            Aws::NetworkFirewall::Endpoints::PutResourcePolicy.build(context)
          when :tag_resource
            Aws::NetworkFirewall::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::NetworkFirewall::Endpoints::UntagResource.build(context)
          when :update_firewall_delete_protection
            Aws::NetworkFirewall::Endpoints::UpdateFirewallDeleteProtection.build(context)
          when :update_firewall_description
            Aws::NetworkFirewall::Endpoints::UpdateFirewallDescription.build(context)
          when :update_firewall_encryption_configuration
            Aws::NetworkFirewall::Endpoints::UpdateFirewallEncryptionConfiguration.build(context)
          when :update_firewall_policy
            Aws::NetworkFirewall::Endpoints::UpdateFirewallPolicy.build(context)
          when :update_firewall_policy_change_protection
            Aws::NetworkFirewall::Endpoints::UpdateFirewallPolicyChangeProtection.build(context)
          when :update_logging_configuration
            Aws::NetworkFirewall::Endpoints::UpdateLoggingConfiguration.build(context)
          when :update_rule_group
            Aws::NetworkFirewall::Endpoints::UpdateRuleGroup.build(context)
          when :update_subnet_change_protection
            Aws::NetworkFirewall::Endpoints::UpdateSubnetChangeProtection.build(context)
          when :update_tls_inspection_configuration
            Aws::NetworkFirewall::Endpoints::UpdateTLSInspectionConfiguration.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
