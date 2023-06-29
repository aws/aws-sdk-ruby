# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SecurityHub
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SecurityHub::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SecurityHub::EndpointParameters`'
      ) do |cfg|
        Aws::SecurityHub::EndpointProvider.new
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
          when :accept_administrator_invitation
            Aws::SecurityHub::Endpoints::AcceptAdministratorInvitation.build(context)
          when :accept_invitation
            Aws::SecurityHub::Endpoints::AcceptInvitation.build(context)
          when :batch_delete_automation_rules
            Aws::SecurityHub::Endpoints::BatchDeleteAutomationRules.build(context)
          when :batch_disable_standards
            Aws::SecurityHub::Endpoints::BatchDisableStandards.build(context)
          when :batch_enable_standards
            Aws::SecurityHub::Endpoints::BatchEnableStandards.build(context)
          when :batch_get_automation_rules
            Aws::SecurityHub::Endpoints::BatchGetAutomationRules.build(context)
          when :batch_get_security_controls
            Aws::SecurityHub::Endpoints::BatchGetSecurityControls.build(context)
          when :batch_get_standards_control_associations
            Aws::SecurityHub::Endpoints::BatchGetStandardsControlAssociations.build(context)
          when :batch_import_findings
            Aws::SecurityHub::Endpoints::BatchImportFindings.build(context)
          when :batch_update_automation_rules
            Aws::SecurityHub::Endpoints::BatchUpdateAutomationRules.build(context)
          when :batch_update_findings
            Aws::SecurityHub::Endpoints::BatchUpdateFindings.build(context)
          when :batch_update_standards_control_associations
            Aws::SecurityHub::Endpoints::BatchUpdateStandardsControlAssociations.build(context)
          when :create_action_target
            Aws::SecurityHub::Endpoints::CreateActionTarget.build(context)
          when :create_automation_rule
            Aws::SecurityHub::Endpoints::CreateAutomationRule.build(context)
          when :create_finding_aggregator
            Aws::SecurityHub::Endpoints::CreateFindingAggregator.build(context)
          when :create_insight
            Aws::SecurityHub::Endpoints::CreateInsight.build(context)
          when :create_members
            Aws::SecurityHub::Endpoints::CreateMembers.build(context)
          when :decline_invitations
            Aws::SecurityHub::Endpoints::DeclineInvitations.build(context)
          when :delete_action_target
            Aws::SecurityHub::Endpoints::DeleteActionTarget.build(context)
          when :delete_finding_aggregator
            Aws::SecurityHub::Endpoints::DeleteFindingAggregator.build(context)
          when :delete_insight
            Aws::SecurityHub::Endpoints::DeleteInsight.build(context)
          when :delete_invitations
            Aws::SecurityHub::Endpoints::DeleteInvitations.build(context)
          when :delete_members
            Aws::SecurityHub::Endpoints::DeleteMembers.build(context)
          when :describe_action_targets
            Aws::SecurityHub::Endpoints::DescribeActionTargets.build(context)
          when :describe_hub
            Aws::SecurityHub::Endpoints::DescribeHub.build(context)
          when :describe_organization_configuration
            Aws::SecurityHub::Endpoints::DescribeOrganizationConfiguration.build(context)
          when :describe_products
            Aws::SecurityHub::Endpoints::DescribeProducts.build(context)
          when :describe_standards
            Aws::SecurityHub::Endpoints::DescribeStandards.build(context)
          when :describe_standards_controls
            Aws::SecurityHub::Endpoints::DescribeStandardsControls.build(context)
          when :disable_import_findings_for_product
            Aws::SecurityHub::Endpoints::DisableImportFindingsForProduct.build(context)
          when :disable_organization_admin_account
            Aws::SecurityHub::Endpoints::DisableOrganizationAdminAccount.build(context)
          when :disable_security_hub
            Aws::SecurityHub::Endpoints::DisableSecurityHub.build(context)
          when :disassociate_from_administrator_account
            Aws::SecurityHub::Endpoints::DisassociateFromAdministratorAccount.build(context)
          when :disassociate_from_master_account
            Aws::SecurityHub::Endpoints::DisassociateFromMasterAccount.build(context)
          when :disassociate_members
            Aws::SecurityHub::Endpoints::DisassociateMembers.build(context)
          when :enable_import_findings_for_product
            Aws::SecurityHub::Endpoints::EnableImportFindingsForProduct.build(context)
          when :enable_organization_admin_account
            Aws::SecurityHub::Endpoints::EnableOrganizationAdminAccount.build(context)
          when :enable_security_hub
            Aws::SecurityHub::Endpoints::EnableSecurityHub.build(context)
          when :get_administrator_account
            Aws::SecurityHub::Endpoints::GetAdministratorAccount.build(context)
          when :get_enabled_standards
            Aws::SecurityHub::Endpoints::GetEnabledStandards.build(context)
          when :get_finding_aggregator
            Aws::SecurityHub::Endpoints::GetFindingAggregator.build(context)
          when :get_finding_history
            Aws::SecurityHub::Endpoints::GetFindingHistory.build(context)
          when :get_findings
            Aws::SecurityHub::Endpoints::GetFindings.build(context)
          when :get_insight_results
            Aws::SecurityHub::Endpoints::GetInsightResults.build(context)
          when :get_insights
            Aws::SecurityHub::Endpoints::GetInsights.build(context)
          when :get_invitations_count
            Aws::SecurityHub::Endpoints::GetInvitationsCount.build(context)
          when :get_master_account
            Aws::SecurityHub::Endpoints::GetMasterAccount.build(context)
          when :get_members
            Aws::SecurityHub::Endpoints::GetMembers.build(context)
          when :invite_members
            Aws::SecurityHub::Endpoints::InviteMembers.build(context)
          when :list_automation_rules
            Aws::SecurityHub::Endpoints::ListAutomationRules.build(context)
          when :list_enabled_products_for_import
            Aws::SecurityHub::Endpoints::ListEnabledProductsForImport.build(context)
          when :list_finding_aggregators
            Aws::SecurityHub::Endpoints::ListFindingAggregators.build(context)
          when :list_invitations
            Aws::SecurityHub::Endpoints::ListInvitations.build(context)
          when :list_members
            Aws::SecurityHub::Endpoints::ListMembers.build(context)
          when :list_organization_admin_accounts
            Aws::SecurityHub::Endpoints::ListOrganizationAdminAccounts.build(context)
          when :list_security_control_definitions
            Aws::SecurityHub::Endpoints::ListSecurityControlDefinitions.build(context)
          when :list_standards_control_associations
            Aws::SecurityHub::Endpoints::ListStandardsControlAssociations.build(context)
          when :list_tags_for_resource
            Aws::SecurityHub::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::SecurityHub::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::SecurityHub::Endpoints::UntagResource.build(context)
          when :update_action_target
            Aws::SecurityHub::Endpoints::UpdateActionTarget.build(context)
          when :update_finding_aggregator
            Aws::SecurityHub::Endpoints::UpdateFindingAggregator.build(context)
          when :update_findings
            Aws::SecurityHub::Endpoints::UpdateFindings.build(context)
          when :update_insight
            Aws::SecurityHub::Endpoints::UpdateInsight.build(context)
          when :update_organization_configuration
            Aws::SecurityHub::Endpoints::UpdateOrganizationConfiguration.build(context)
          when :update_security_hub_configuration
            Aws::SecurityHub::Endpoints::UpdateSecurityHubConfiguration.build(context)
          when :update_standards_control
            Aws::SecurityHub::Endpoints::UpdateStandardsControl.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
