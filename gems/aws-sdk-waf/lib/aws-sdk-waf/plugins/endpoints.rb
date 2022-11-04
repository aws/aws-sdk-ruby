# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::WAF
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::WAF::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::WAF::EndpointParameters`'
      ) do |cfg|
        Aws::WAF::EndpointProvider.new
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
          when :create_byte_match_set
            Aws::WAF::Endpoints::CreateByteMatchSet.build(context)
          when :create_geo_match_set
            Aws::WAF::Endpoints::CreateGeoMatchSet.build(context)
          when :create_ip_set
            Aws::WAF::Endpoints::CreateIPSet.build(context)
          when :create_rate_based_rule
            Aws::WAF::Endpoints::CreateRateBasedRule.build(context)
          when :create_regex_match_set
            Aws::WAF::Endpoints::CreateRegexMatchSet.build(context)
          when :create_regex_pattern_set
            Aws::WAF::Endpoints::CreateRegexPatternSet.build(context)
          when :create_rule
            Aws::WAF::Endpoints::CreateRule.build(context)
          when :create_rule_group
            Aws::WAF::Endpoints::CreateRuleGroup.build(context)
          when :create_size_constraint_set
            Aws::WAF::Endpoints::CreateSizeConstraintSet.build(context)
          when :create_sql_injection_match_set
            Aws::WAF::Endpoints::CreateSqlInjectionMatchSet.build(context)
          when :create_web_acl
            Aws::WAF::Endpoints::CreateWebACL.build(context)
          when :create_web_acl_migration_stack
            Aws::WAF::Endpoints::CreateWebACLMigrationStack.build(context)
          when :create_xss_match_set
            Aws::WAF::Endpoints::CreateXssMatchSet.build(context)
          when :delete_byte_match_set
            Aws::WAF::Endpoints::DeleteByteMatchSet.build(context)
          when :delete_geo_match_set
            Aws::WAF::Endpoints::DeleteGeoMatchSet.build(context)
          when :delete_ip_set
            Aws::WAF::Endpoints::DeleteIPSet.build(context)
          when :delete_logging_configuration
            Aws::WAF::Endpoints::DeleteLoggingConfiguration.build(context)
          when :delete_permission_policy
            Aws::WAF::Endpoints::DeletePermissionPolicy.build(context)
          when :delete_rate_based_rule
            Aws::WAF::Endpoints::DeleteRateBasedRule.build(context)
          when :delete_regex_match_set
            Aws::WAF::Endpoints::DeleteRegexMatchSet.build(context)
          when :delete_regex_pattern_set
            Aws::WAF::Endpoints::DeleteRegexPatternSet.build(context)
          when :delete_rule
            Aws::WAF::Endpoints::DeleteRule.build(context)
          when :delete_rule_group
            Aws::WAF::Endpoints::DeleteRuleGroup.build(context)
          when :delete_size_constraint_set
            Aws::WAF::Endpoints::DeleteSizeConstraintSet.build(context)
          when :delete_sql_injection_match_set
            Aws::WAF::Endpoints::DeleteSqlInjectionMatchSet.build(context)
          when :delete_web_acl
            Aws::WAF::Endpoints::DeleteWebACL.build(context)
          when :delete_xss_match_set
            Aws::WAF::Endpoints::DeleteXssMatchSet.build(context)
          when :get_byte_match_set
            Aws::WAF::Endpoints::GetByteMatchSet.build(context)
          when :get_change_token
            Aws::WAF::Endpoints::GetChangeToken.build(context)
          when :get_change_token_status
            Aws::WAF::Endpoints::GetChangeTokenStatus.build(context)
          when :get_geo_match_set
            Aws::WAF::Endpoints::GetGeoMatchSet.build(context)
          when :get_ip_set
            Aws::WAF::Endpoints::GetIPSet.build(context)
          when :get_logging_configuration
            Aws::WAF::Endpoints::GetLoggingConfiguration.build(context)
          when :get_permission_policy
            Aws::WAF::Endpoints::GetPermissionPolicy.build(context)
          when :get_rate_based_rule
            Aws::WAF::Endpoints::GetRateBasedRule.build(context)
          when :get_rate_based_rule_managed_keys
            Aws::WAF::Endpoints::GetRateBasedRuleManagedKeys.build(context)
          when :get_regex_match_set
            Aws::WAF::Endpoints::GetRegexMatchSet.build(context)
          when :get_regex_pattern_set
            Aws::WAF::Endpoints::GetRegexPatternSet.build(context)
          when :get_rule
            Aws::WAF::Endpoints::GetRule.build(context)
          when :get_rule_group
            Aws::WAF::Endpoints::GetRuleGroup.build(context)
          when :get_sampled_requests
            Aws::WAF::Endpoints::GetSampledRequests.build(context)
          when :get_size_constraint_set
            Aws::WAF::Endpoints::GetSizeConstraintSet.build(context)
          when :get_sql_injection_match_set
            Aws::WAF::Endpoints::GetSqlInjectionMatchSet.build(context)
          when :get_web_acl
            Aws::WAF::Endpoints::GetWebACL.build(context)
          when :get_xss_match_set
            Aws::WAF::Endpoints::GetXssMatchSet.build(context)
          when :list_activated_rules_in_rule_group
            Aws::WAF::Endpoints::ListActivatedRulesInRuleGroup.build(context)
          when :list_byte_match_sets
            Aws::WAF::Endpoints::ListByteMatchSets.build(context)
          when :list_geo_match_sets
            Aws::WAF::Endpoints::ListGeoMatchSets.build(context)
          when :list_ip_sets
            Aws::WAF::Endpoints::ListIPSets.build(context)
          when :list_logging_configurations
            Aws::WAF::Endpoints::ListLoggingConfigurations.build(context)
          when :list_rate_based_rules
            Aws::WAF::Endpoints::ListRateBasedRules.build(context)
          when :list_regex_match_sets
            Aws::WAF::Endpoints::ListRegexMatchSets.build(context)
          when :list_regex_pattern_sets
            Aws::WAF::Endpoints::ListRegexPatternSets.build(context)
          when :list_rule_groups
            Aws::WAF::Endpoints::ListRuleGroups.build(context)
          when :list_rules
            Aws::WAF::Endpoints::ListRules.build(context)
          when :list_size_constraint_sets
            Aws::WAF::Endpoints::ListSizeConstraintSets.build(context)
          when :list_sql_injection_match_sets
            Aws::WAF::Endpoints::ListSqlInjectionMatchSets.build(context)
          when :list_subscribed_rule_groups
            Aws::WAF::Endpoints::ListSubscribedRuleGroups.build(context)
          when :list_tags_for_resource
            Aws::WAF::Endpoints::ListTagsForResource.build(context)
          when :list_web_acls
            Aws::WAF::Endpoints::ListWebACLs.build(context)
          when :list_xss_match_sets
            Aws::WAF::Endpoints::ListXssMatchSets.build(context)
          when :put_logging_configuration
            Aws::WAF::Endpoints::PutLoggingConfiguration.build(context)
          when :put_permission_policy
            Aws::WAF::Endpoints::PutPermissionPolicy.build(context)
          when :tag_resource
            Aws::WAF::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::WAF::Endpoints::UntagResource.build(context)
          when :update_byte_match_set
            Aws::WAF::Endpoints::UpdateByteMatchSet.build(context)
          when :update_geo_match_set
            Aws::WAF::Endpoints::UpdateGeoMatchSet.build(context)
          when :update_ip_set
            Aws::WAF::Endpoints::UpdateIPSet.build(context)
          when :update_rate_based_rule
            Aws::WAF::Endpoints::UpdateRateBasedRule.build(context)
          when :update_regex_match_set
            Aws::WAF::Endpoints::UpdateRegexMatchSet.build(context)
          when :update_regex_pattern_set
            Aws::WAF::Endpoints::UpdateRegexPatternSet.build(context)
          when :update_rule
            Aws::WAF::Endpoints::UpdateRule.build(context)
          when :update_rule_group
            Aws::WAF::Endpoints::UpdateRuleGroup.build(context)
          when :update_size_constraint_set
            Aws::WAF::Endpoints::UpdateSizeConstraintSet.build(context)
          when :update_sql_injection_match_set
            Aws::WAF::Endpoints::UpdateSqlInjectionMatchSet.build(context)
          when :update_web_acl
            Aws::WAF::Endpoints::UpdateWebACL.build(context)
          when :update_xss_match_set
            Aws::WAF::Endpoints::UpdateXssMatchSet.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
