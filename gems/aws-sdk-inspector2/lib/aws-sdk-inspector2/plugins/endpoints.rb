# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Inspector2
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Inspector2::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Inspector2::EndpointParameters`'
      ) do |cfg|
        Aws::Inspector2::EndpointProvider.new
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
          when :associate_member
            Aws::Inspector2::Endpoints::AssociateMember.build(context)
          when :batch_get_account_status
            Aws::Inspector2::Endpoints::BatchGetAccountStatus.build(context)
          when :batch_get_code_snippet
            Aws::Inspector2::Endpoints::BatchGetCodeSnippet.build(context)
          when :batch_get_free_trial_info
            Aws::Inspector2::Endpoints::BatchGetFreeTrialInfo.build(context)
          when :batch_get_member_ec2_deep_inspection_status
            Aws::Inspector2::Endpoints::BatchGetMemberEc2DeepInspectionStatus.build(context)
          when :batch_update_member_ec2_deep_inspection_status
            Aws::Inspector2::Endpoints::BatchUpdateMemberEc2DeepInspectionStatus.build(context)
          when :cancel_findings_report
            Aws::Inspector2::Endpoints::CancelFindingsReport.build(context)
          when :cancel_sbom_export
            Aws::Inspector2::Endpoints::CancelSbomExport.build(context)
          when :create_filter
            Aws::Inspector2::Endpoints::CreateFilter.build(context)
          when :create_findings_report
            Aws::Inspector2::Endpoints::CreateFindingsReport.build(context)
          when :create_sbom_export
            Aws::Inspector2::Endpoints::CreateSbomExport.build(context)
          when :delete_filter
            Aws::Inspector2::Endpoints::DeleteFilter.build(context)
          when :describe_organization_configuration
            Aws::Inspector2::Endpoints::DescribeOrganizationConfiguration.build(context)
          when :disable
            Aws::Inspector2::Endpoints::Disable.build(context)
          when :disable_delegated_admin_account
            Aws::Inspector2::Endpoints::DisableDelegatedAdminAccount.build(context)
          when :disassociate_member
            Aws::Inspector2::Endpoints::DisassociateMember.build(context)
          when :enable
            Aws::Inspector2::Endpoints::Enable.build(context)
          when :enable_delegated_admin_account
            Aws::Inspector2::Endpoints::EnableDelegatedAdminAccount.build(context)
          when :get_configuration
            Aws::Inspector2::Endpoints::GetConfiguration.build(context)
          when :get_delegated_admin_account
            Aws::Inspector2::Endpoints::GetDelegatedAdminAccount.build(context)
          when :get_ec2_deep_inspection_configuration
            Aws::Inspector2::Endpoints::GetEc2DeepInspectionConfiguration.build(context)
          when :get_encryption_key
            Aws::Inspector2::Endpoints::GetEncryptionKey.build(context)
          when :get_findings_report_status
            Aws::Inspector2::Endpoints::GetFindingsReportStatus.build(context)
          when :get_member
            Aws::Inspector2::Endpoints::GetMember.build(context)
          when :get_sbom_export
            Aws::Inspector2::Endpoints::GetSbomExport.build(context)
          when :list_account_permissions
            Aws::Inspector2::Endpoints::ListAccountPermissions.build(context)
          when :list_coverage
            Aws::Inspector2::Endpoints::ListCoverage.build(context)
          when :list_coverage_statistics
            Aws::Inspector2::Endpoints::ListCoverageStatistics.build(context)
          when :list_delegated_admin_accounts
            Aws::Inspector2::Endpoints::ListDelegatedAdminAccounts.build(context)
          when :list_filters
            Aws::Inspector2::Endpoints::ListFilters.build(context)
          when :list_finding_aggregations
            Aws::Inspector2::Endpoints::ListFindingAggregations.build(context)
          when :list_findings
            Aws::Inspector2::Endpoints::ListFindings.build(context)
          when :list_members
            Aws::Inspector2::Endpoints::ListMembers.build(context)
          when :list_tags_for_resource
            Aws::Inspector2::Endpoints::ListTagsForResource.build(context)
          when :list_usage_totals
            Aws::Inspector2::Endpoints::ListUsageTotals.build(context)
          when :reset_encryption_key
            Aws::Inspector2::Endpoints::ResetEncryptionKey.build(context)
          when :search_vulnerabilities
            Aws::Inspector2::Endpoints::SearchVulnerabilities.build(context)
          when :tag_resource
            Aws::Inspector2::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Inspector2::Endpoints::UntagResource.build(context)
          when :update_configuration
            Aws::Inspector2::Endpoints::UpdateConfiguration.build(context)
          when :update_ec2_deep_inspection_configuration
            Aws::Inspector2::Endpoints::UpdateEc2DeepInspectionConfiguration.build(context)
          when :update_encryption_key
            Aws::Inspector2::Endpoints::UpdateEncryptionKey.build(context)
          when :update_filter
            Aws::Inspector2::Endpoints::UpdateFilter.build(context)
          when :update_org_ec2_deep_inspection_configuration
            Aws::Inspector2::Endpoints::UpdateOrgEc2DeepInspectionConfiguration.build(context)
          when :update_organization_configuration
            Aws::Inspector2::Endpoints::UpdateOrganizationConfiguration.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
