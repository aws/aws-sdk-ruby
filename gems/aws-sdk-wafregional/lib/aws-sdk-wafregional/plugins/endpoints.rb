# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::WAFRegional
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::WAFRegional::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::WAFRegional::EndpointParameters`'
      ) do |cfg|
        Aws::WAFRegional::EndpointProvider.new
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
            Aws::WAFRegional::Endpoints::AssociateWebACL.build(context)
          when :create_byte_match_set
            Aws::WAFRegional::Endpoints::CreateByteMatchSet.build(context)
          when :create_geo_match_set
            Aws::WAFRegional::Endpoints::CreateGeoMatchSet.build(context)
          when :create_ip_set
            Aws::WAFRegional::Endpoints::CreateIPSet.build(context)
          when :create_rate_based_rule
            Aws::WAFRegional::Endpoints::CreateRateBasedRule.build(context)
          when :create_regex_match_set
            Aws::WAFRegional::Endpoints::CreateRegexMatchSet.build(context)
          when :create_regex_pattern_set
            Aws::WAFRegional::Endpoints::CreateRegexPatternSet.build(context)
          when :create_rule
            Aws::WAFRegional::Endpoints::CreateRule.build(context)
          when :create_rule_group
            Aws::WAFRegional::Endpoints::CreateRuleGroup.build(context)
          when :create_size_constraint_set
            Aws::WAFRegional::Endpoints::CreateSizeConstraintSet.build(context)
          when :create_sql_injection_match_set
            Aws::WAFRegional::Endpoints::CreateSqlInjectionMatchSet.build(context)
          when :create_web_acl
            Aws::WAFRegional::Endpoints::CreateWebACL.build(context)
          when :create_web_acl_migration_stack
            Aws::WAFRegional::Endpoints::CreateWebACLMigrationStack.build(context)
          when :create_xss_match_set
            Aws::WAFRegional::Endpoints::CreateXssMatchSet.build(context)
          when :delete_byte_match_set
            Aws::WAFRegional::Endpoints::DeleteByteMatchSet.build(context)
          when :delete_geo_match_set
            Aws::WAFRegional::Endpoints::DeleteGeoMatchSet.build(context)
          when :delete_ip_set
            Aws::WAFRegional::Endpoints::DeleteIPSet.build(context)
          when :delete_logging_configuration
            Aws::WAFRegional::Endpoints::DeleteLoggingConfiguration.build(context)
          when :delete_permission_policy
            Aws::WAFRegional::Endpoints::DeletePermissionPolicy.build(context)
          when :delete_rate_based_rule
            Aws::WAFRegional::Endpoints::DeleteRateBasedRule.build(context)
          when :delete_regex_match_set
            Aws::WAFRegional::Endpoints::DeleteRegexMatchSet.build(context)
          when :delete_regex_pattern_set
            Aws::WAFRegional::Endpoints::DeleteRegexPatternSet.build(context)
          when :delete_rule
            Aws::WAFRegional::Endpoints::DeleteRule.build(context)
          when :delete_rule_group
            Aws::WAFRegional::Endpoints::DeleteRuleGroup.build(context)
          when :delete_size_constraint_set
            Aws::WAFRegional::Endpoints::DeleteSizeConstraintSet.build(context)
          when :delete_sql_injection_match_set
            Aws::WAFRegional::Endpoints::DeleteSqlInjectionMatchSet.build(context)
          when :delete_web_acl
            Aws::WAFRegional::Endpoints::DeleteWebACL.build(context)
          when :delete_xss_match_set
            Aws::WAFRegional::Endpoints::DeleteXssMatchSet.build(context)
          when :disassociate_web_acl
            Aws::WAFRegional::Endpoints::DisassociateWebACL.build(context)
          when :get_byte_match_set
            Aws::WAFRegional::Endpoints::GetByteMatchSet.build(context)
          when :get_change_token
            Aws::WAFRegional::Endpoints::GetChangeToken.build(context)
          when :get_change_token_status
            Aws::WAFRegional::Endpoints::GetChangeTokenStatus.build(context)
          when :get_geo_match_set
            Aws::WAFRegional::Endpoints::GetGeoMatchSet.build(context)
          when :get_ip_set
            Aws::WAFRegional::Endpoints::GetIPSet.build(context)
          when :get_logging_configuration
            Aws::WAFRegional::Endpoints::GetLoggingConfiguration.build(context)
          when :get_permission_policy
            Aws::WAFRegional::Endpoints::GetPermissionPolicy.build(context)
          when :get_rate_based_rule
            Aws::WAFRegional::Endpoints::GetRateBasedRule.build(context)
          when :get_rate_based_rule_managed_keys
            Aws::WAFRegional::Endpoints::GetRateBasedRuleManagedKeys.build(context)
          when :get_regex_match_set
            Aws::WAFRegional::Endpoints::GetRegexMatchSet.build(context)
          when :get_regex_pattern_set
            Aws::WAFRegional::Endpoints::GetRegexPatternSet.build(context)
          when :get_rule
            Aws::WAFRegional::Endpoints::GetRule.build(context)
          when :get_rule_group
            Aws::WAFRegional::Endpoints::GetRuleGroup.build(context)
          when :get_sampled_requests
            Aws::WAFRegional::Endpoints::GetSampledRequests.build(context)
          when :get_size_constraint_set
            Aws::WAFRegional::Endpoints::GetSizeConstraintSet.build(context)
          when :get_sql_injection_match_set
            Aws::WAFRegional::Endpoints::GetSqlInjectionMatchSet.build(context)
          when :get_web_acl
            Aws::WAFRegional::Endpoints::GetWebACL.build(context)
          when :get_web_acl_for_resource
            Aws::WAFRegional::Endpoints::GetWebACLForResource.build(context)
          when :get_xss_match_set
            Aws::WAFRegional::Endpoints::GetXssMatchSet.build(context)
          when :list_activated_rules_in_rule_group
            Aws::WAFRegional::Endpoints::ListActivatedRulesInRuleGroup.build(context)
          when :list_byte_match_sets
            Aws::WAFRegional::Endpoints::ListByteMatchSets.build(context)
          when :list_geo_match_sets
            Aws::WAFRegional::Endpoints::ListGeoMatchSets.build(context)
          when :list_ip_sets
            Aws::WAFRegional::Endpoints::ListIPSets.build(context)
          when :list_logging_configurations
            Aws::WAFRegional::Endpoints::ListLoggingConfigurations.build(context)
          when :list_rate_based_rules
            Aws::WAFRegional::Endpoints::ListRateBasedRules.build(context)
          when :list_regex_match_sets
            Aws::WAFRegional::Endpoints::ListRegexMatchSets.build(context)
          when :list_regex_pattern_sets
            Aws::WAFRegional::Endpoints::ListRegexPatternSets.build(context)
          when :list_resources_for_web_acl
            Aws::WAFRegional::Endpoints::ListResourcesForWebACL.build(context)
          when :list_rule_groups
            Aws::WAFRegional::Endpoints::ListRuleGroups.build(context)
          when :list_rules
            Aws::WAFRegional::Endpoints::ListRules.build(context)
          when :list_size_constraint_sets
            Aws::WAFRegional::Endpoints::ListSizeConstraintSets.build(context)
          when :list_sql_injection_match_sets
            Aws::WAFRegional::Endpoints::ListSqlInjectionMatchSets.build(context)
          when :list_subscribed_rule_groups
            Aws::WAFRegional::Endpoints::ListSubscribedRuleGroups.build(context)
          when :list_tags_for_resource
            Aws::WAFRegional::Endpoints::ListTagsForResource.build(context)
          when :list_web_acls
            Aws::WAFRegional::Endpoints::ListWebACLs.build(context)
          when :list_xss_match_sets
            Aws::WAFRegional::Endpoints::ListXssMatchSets.build(context)
          when :put_logging_configuration
            Aws::WAFRegional::Endpoints::PutLoggingConfiguration.build(context)
          when :put_permission_policy
            Aws::WAFRegional::Endpoints::PutPermissionPolicy.build(context)
          when :tag_resource
            Aws::WAFRegional::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::WAFRegional::Endpoints::UntagResource.build(context)
          when :update_byte_match_set
            Aws::WAFRegional::Endpoints::UpdateByteMatchSet.build(context)
          when :update_geo_match_set
            Aws::WAFRegional::Endpoints::UpdateGeoMatchSet.build(context)
          when :update_ip_set
            Aws::WAFRegional::Endpoints::UpdateIPSet.build(context)
          when :update_rate_based_rule
            Aws::WAFRegional::Endpoints::UpdateRateBasedRule.build(context)
          when :update_regex_match_set
            Aws::WAFRegional::Endpoints::UpdateRegexMatchSet.build(context)
          when :update_regex_pattern_set
            Aws::WAFRegional::Endpoints::UpdateRegexPatternSet.build(context)
          when :update_rule
            Aws::WAFRegional::Endpoints::UpdateRule.build(context)
          when :update_rule_group
            Aws::WAFRegional::Endpoints::UpdateRuleGroup.build(context)
          when :update_size_constraint_set
            Aws::WAFRegional::Endpoints::UpdateSizeConstraintSet.build(context)
          when :update_sql_injection_match_set
            Aws::WAFRegional::Endpoints::UpdateSqlInjectionMatchSet.build(context)
          when :update_web_acl
            Aws::WAFRegional::Endpoints::UpdateWebACL.build(context)
          when :update_xss_match_set
            Aws::WAFRegional::Endpoints::UpdateXssMatchSet.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
