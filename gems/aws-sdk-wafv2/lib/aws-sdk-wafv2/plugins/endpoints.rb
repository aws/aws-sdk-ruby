# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::WAFV2
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::WAFV2::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::WAFV2::EndpointParameters`'
      ) do |cfg|
        Aws::WAFV2::EndpointProvider.new
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
          when :associate_web_acl
            Aws::WAFV2::Endpoints::AssociateWebACL.build(context)
          when :check_capacity
            Aws::WAFV2::Endpoints::CheckCapacity.build(context)
          when :create_api_key
            Aws::WAFV2::Endpoints::CreateAPIKey.build(context)
          when :create_ip_set
            Aws::WAFV2::Endpoints::CreateIPSet.build(context)
          when :create_regex_pattern_set
            Aws::WAFV2::Endpoints::CreateRegexPatternSet.build(context)
          when :create_rule_group
            Aws::WAFV2::Endpoints::CreateRuleGroup.build(context)
          when :create_web_acl
            Aws::WAFV2::Endpoints::CreateWebACL.build(context)
          when :delete_firewall_manager_rule_groups
            Aws::WAFV2::Endpoints::DeleteFirewallManagerRuleGroups.build(context)
          when :delete_ip_set
            Aws::WAFV2::Endpoints::DeleteIPSet.build(context)
          when :delete_logging_configuration
            Aws::WAFV2::Endpoints::DeleteLoggingConfiguration.build(context)
          when :delete_permission_policy
            Aws::WAFV2::Endpoints::DeletePermissionPolicy.build(context)
          when :delete_regex_pattern_set
            Aws::WAFV2::Endpoints::DeleteRegexPatternSet.build(context)
          when :delete_rule_group
            Aws::WAFV2::Endpoints::DeleteRuleGroup.build(context)
          when :delete_web_acl
            Aws::WAFV2::Endpoints::DeleteWebACL.build(context)
          when :describe_all_managed_products
            Aws::WAFV2::Endpoints::DescribeAllManagedProducts.build(context)
          when :describe_managed_products_by_vendor
            Aws::WAFV2::Endpoints::DescribeManagedProductsByVendor.build(context)
          when :describe_managed_rule_group
            Aws::WAFV2::Endpoints::DescribeManagedRuleGroup.build(context)
          when :disassociate_web_acl
            Aws::WAFV2::Endpoints::DisassociateWebACL.build(context)
          when :generate_mobile_sdk_release_url
            Aws::WAFV2::Endpoints::GenerateMobileSdkReleaseUrl.build(context)
          when :get_decrypted_api_key
            Aws::WAFV2::Endpoints::GetDecryptedAPIKey.build(context)
          when :get_ip_set
            Aws::WAFV2::Endpoints::GetIPSet.build(context)
          when :get_logging_configuration
            Aws::WAFV2::Endpoints::GetLoggingConfiguration.build(context)
          when :get_managed_rule_set
            Aws::WAFV2::Endpoints::GetManagedRuleSet.build(context)
          when :get_mobile_sdk_release
            Aws::WAFV2::Endpoints::GetMobileSdkRelease.build(context)
          when :get_permission_policy
            Aws::WAFV2::Endpoints::GetPermissionPolicy.build(context)
          when :get_rate_based_statement_managed_keys
            Aws::WAFV2::Endpoints::GetRateBasedStatementManagedKeys.build(context)
          when :get_regex_pattern_set
            Aws::WAFV2::Endpoints::GetRegexPatternSet.build(context)
          when :get_rule_group
            Aws::WAFV2::Endpoints::GetRuleGroup.build(context)
          when :get_sampled_requests
            Aws::WAFV2::Endpoints::GetSampledRequests.build(context)
          when :get_web_acl
            Aws::WAFV2::Endpoints::GetWebACL.build(context)
          when :get_web_acl_for_resource
            Aws::WAFV2::Endpoints::GetWebACLForResource.build(context)
          when :list_api_keys
            Aws::WAFV2::Endpoints::ListAPIKeys.build(context)
          when :list_available_managed_rule_group_versions
            Aws::WAFV2::Endpoints::ListAvailableManagedRuleGroupVersions.build(context)
          when :list_available_managed_rule_groups
            Aws::WAFV2::Endpoints::ListAvailableManagedRuleGroups.build(context)
          when :list_ip_sets
            Aws::WAFV2::Endpoints::ListIPSets.build(context)
          when :list_logging_configurations
            Aws::WAFV2::Endpoints::ListLoggingConfigurations.build(context)
          when :list_managed_rule_sets
            Aws::WAFV2::Endpoints::ListManagedRuleSets.build(context)
          when :list_mobile_sdk_releases
            Aws::WAFV2::Endpoints::ListMobileSdkReleases.build(context)
          when :list_regex_pattern_sets
            Aws::WAFV2::Endpoints::ListRegexPatternSets.build(context)
          when :list_resources_for_web_acl
            Aws::WAFV2::Endpoints::ListResourcesForWebACL.build(context)
          when :list_rule_groups
            Aws::WAFV2::Endpoints::ListRuleGroups.build(context)
          when :list_tags_for_resource
            Aws::WAFV2::Endpoints::ListTagsForResource.build(context)
          when :list_web_acls
            Aws::WAFV2::Endpoints::ListWebACLs.build(context)
          when :put_logging_configuration
            Aws::WAFV2::Endpoints::PutLoggingConfiguration.build(context)
          when :put_managed_rule_set_versions
            Aws::WAFV2::Endpoints::PutManagedRuleSetVersions.build(context)
          when :put_permission_policy
            Aws::WAFV2::Endpoints::PutPermissionPolicy.build(context)
          when :tag_resource
            Aws::WAFV2::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::WAFV2::Endpoints::UntagResource.build(context)
          when :update_ip_set
            Aws::WAFV2::Endpoints::UpdateIPSet.build(context)
          when :update_managed_rule_set_version_expiry_date
            Aws::WAFV2::Endpoints::UpdateManagedRuleSetVersionExpiryDate.build(context)
          when :update_regex_pattern_set
            Aws::WAFV2::Endpoints::UpdateRegexPatternSet.build(context)
          when :update_rule_group
            Aws::WAFV2::Endpoints::UpdateRuleGroup.build(context)
          when :update_web_acl
            Aws::WAFV2::Endpoints::UpdateWebACL.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
