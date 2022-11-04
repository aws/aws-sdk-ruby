# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Route53Resolver
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Route53Resolver::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Route53Resolver::EndpointParameters`'
      ) do |cfg|
        Aws::Route53Resolver::EndpointProvider.new
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
          when :associate_firewall_rule_group
            Aws::Route53Resolver::Endpoints::AssociateFirewallRuleGroup.build(context)
          when :associate_resolver_endpoint_ip_address
            Aws::Route53Resolver::Endpoints::AssociateResolverEndpointIpAddress.build(context)
          when :associate_resolver_query_log_config
            Aws::Route53Resolver::Endpoints::AssociateResolverQueryLogConfig.build(context)
          when :associate_resolver_rule
            Aws::Route53Resolver::Endpoints::AssociateResolverRule.build(context)
          when :create_firewall_domain_list
            Aws::Route53Resolver::Endpoints::CreateFirewallDomainList.build(context)
          when :create_firewall_rule
            Aws::Route53Resolver::Endpoints::CreateFirewallRule.build(context)
          when :create_firewall_rule_group
            Aws::Route53Resolver::Endpoints::CreateFirewallRuleGroup.build(context)
          when :create_resolver_endpoint
            Aws::Route53Resolver::Endpoints::CreateResolverEndpoint.build(context)
          when :create_resolver_query_log_config
            Aws::Route53Resolver::Endpoints::CreateResolverQueryLogConfig.build(context)
          when :create_resolver_rule
            Aws::Route53Resolver::Endpoints::CreateResolverRule.build(context)
          when :delete_firewall_domain_list
            Aws::Route53Resolver::Endpoints::DeleteFirewallDomainList.build(context)
          when :delete_firewall_rule
            Aws::Route53Resolver::Endpoints::DeleteFirewallRule.build(context)
          when :delete_firewall_rule_group
            Aws::Route53Resolver::Endpoints::DeleteFirewallRuleGroup.build(context)
          when :delete_resolver_endpoint
            Aws::Route53Resolver::Endpoints::DeleteResolverEndpoint.build(context)
          when :delete_resolver_query_log_config
            Aws::Route53Resolver::Endpoints::DeleteResolverQueryLogConfig.build(context)
          when :delete_resolver_rule
            Aws::Route53Resolver::Endpoints::DeleteResolverRule.build(context)
          when :disassociate_firewall_rule_group
            Aws::Route53Resolver::Endpoints::DisassociateFirewallRuleGroup.build(context)
          when :disassociate_resolver_endpoint_ip_address
            Aws::Route53Resolver::Endpoints::DisassociateResolverEndpointIpAddress.build(context)
          when :disassociate_resolver_query_log_config
            Aws::Route53Resolver::Endpoints::DisassociateResolverQueryLogConfig.build(context)
          when :disassociate_resolver_rule
            Aws::Route53Resolver::Endpoints::DisassociateResolverRule.build(context)
          when :get_firewall_config
            Aws::Route53Resolver::Endpoints::GetFirewallConfig.build(context)
          when :get_firewall_domain_list
            Aws::Route53Resolver::Endpoints::GetFirewallDomainList.build(context)
          when :get_firewall_rule_group
            Aws::Route53Resolver::Endpoints::GetFirewallRuleGroup.build(context)
          when :get_firewall_rule_group_association
            Aws::Route53Resolver::Endpoints::GetFirewallRuleGroupAssociation.build(context)
          when :get_firewall_rule_group_policy
            Aws::Route53Resolver::Endpoints::GetFirewallRuleGroupPolicy.build(context)
          when :get_resolver_config
            Aws::Route53Resolver::Endpoints::GetResolverConfig.build(context)
          when :get_resolver_dnssec_config
            Aws::Route53Resolver::Endpoints::GetResolverDnssecConfig.build(context)
          when :get_resolver_endpoint
            Aws::Route53Resolver::Endpoints::GetResolverEndpoint.build(context)
          when :get_resolver_query_log_config
            Aws::Route53Resolver::Endpoints::GetResolverQueryLogConfig.build(context)
          when :get_resolver_query_log_config_association
            Aws::Route53Resolver::Endpoints::GetResolverQueryLogConfigAssociation.build(context)
          when :get_resolver_query_log_config_policy
            Aws::Route53Resolver::Endpoints::GetResolverQueryLogConfigPolicy.build(context)
          when :get_resolver_rule
            Aws::Route53Resolver::Endpoints::GetResolverRule.build(context)
          when :get_resolver_rule_association
            Aws::Route53Resolver::Endpoints::GetResolverRuleAssociation.build(context)
          when :get_resolver_rule_policy
            Aws::Route53Resolver::Endpoints::GetResolverRulePolicy.build(context)
          when :import_firewall_domains
            Aws::Route53Resolver::Endpoints::ImportFirewallDomains.build(context)
          when :list_firewall_configs
            Aws::Route53Resolver::Endpoints::ListFirewallConfigs.build(context)
          when :list_firewall_domain_lists
            Aws::Route53Resolver::Endpoints::ListFirewallDomainLists.build(context)
          when :list_firewall_domains
            Aws::Route53Resolver::Endpoints::ListFirewallDomains.build(context)
          when :list_firewall_rule_group_associations
            Aws::Route53Resolver::Endpoints::ListFirewallRuleGroupAssociations.build(context)
          when :list_firewall_rule_groups
            Aws::Route53Resolver::Endpoints::ListFirewallRuleGroups.build(context)
          when :list_firewall_rules
            Aws::Route53Resolver::Endpoints::ListFirewallRules.build(context)
          when :list_resolver_configs
            Aws::Route53Resolver::Endpoints::ListResolverConfigs.build(context)
          when :list_resolver_dnssec_configs
            Aws::Route53Resolver::Endpoints::ListResolverDnssecConfigs.build(context)
          when :list_resolver_endpoint_ip_addresses
            Aws::Route53Resolver::Endpoints::ListResolverEndpointIpAddresses.build(context)
          when :list_resolver_endpoints
            Aws::Route53Resolver::Endpoints::ListResolverEndpoints.build(context)
          when :list_resolver_query_log_config_associations
            Aws::Route53Resolver::Endpoints::ListResolverQueryLogConfigAssociations.build(context)
          when :list_resolver_query_log_configs
            Aws::Route53Resolver::Endpoints::ListResolverQueryLogConfigs.build(context)
          when :list_resolver_rule_associations
            Aws::Route53Resolver::Endpoints::ListResolverRuleAssociations.build(context)
          when :list_resolver_rules
            Aws::Route53Resolver::Endpoints::ListResolverRules.build(context)
          when :list_tags_for_resource
            Aws::Route53Resolver::Endpoints::ListTagsForResource.build(context)
          when :put_firewall_rule_group_policy
            Aws::Route53Resolver::Endpoints::PutFirewallRuleGroupPolicy.build(context)
          when :put_resolver_query_log_config_policy
            Aws::Route53Resolver::Endpoints::PutResolverQueryLogConfigPolicy.build(context)
          when :put_resolver_rule_policy
            Aws::Route53Resolver::Endpoints::PutResolverRulePolicy.build(context)
          when :tag_resource
            Aws::Route53Resolver::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Route53Resolver::Endpoints::UntagResource.build(context)
          when :update_firewall_config
            Aws::Route53Resolver::Endpoints::UpdateFirewallConfig.build(context)
          when :update_firewall_domains
            Aws::Route53Resolver::Endpoints::UpdateFirewallDomains.build(context)
          when :update_firewall_rule
            Aws::Route53Resolver::Endpoints::UpdateFirewallRule.build(context)
          when :update_firewall_rule_group_association
            Aws::Route53Resolver::Endpoints::UpdateFirewallRuleGroupAssociation.build(context)
          when :update_resolver_config
            Aws::Route53Resolver::Endpoints::UpdateResolverConfig.build(context)
          when :update_resolver_dnssec_config
            Aws::Route53Resolver::Endpoints::UpdateResolverDnssecConfig.build(context)
          when :update_resolver_endpoint
            Aws::Route53Resolver::Endpoints::UpdateResolverEndpoint.build(context)
          when :update_resolver_rule
            Aws::Route53Resolver::Endpoints::UpdateResolverRule.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
