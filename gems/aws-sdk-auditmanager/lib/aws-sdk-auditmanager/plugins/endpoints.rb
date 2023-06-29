# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AuditManager
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::AuditManager::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::AuditManager::EndpointParameters`'
      ) do |cfg|
        Aws::AuditManager::EndpointProvider.new
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
          when :associate_assessment_report_evidence_folder
            Aws::AuditManager::Endpoints::AssociateAssessmentReportEvidenceFolder.build(context)
          when :batch_associate_assessment_report_evidence
            Aws::AuditManager::Endpoints::BatchAssociateAssessmentReportEvidence.build(context)
          when :batch_create_delegation_by_assessment
            Aws::AuditManager::Endpoints::BatchCreateDelegationByAssessment.build(context)
          when :batch_delete_delegation_by_assessment
            Aws::AuditManager::Endpoints::BatchDeleteDelegationByAssessment.build(context)
          when :batch_disassociate_assessment_report_evidence
            Aws::AuditManager::Endpoints::BatchDisassociateAssessmentReportEvidence.build(context)
          when :batch_import_evidence_to_assessment_control
            Aws::AuditManager::Endpoints::BatchImportEvidenceToAssessmentControl.build(context)
          when :create_assessment
            Aws::AuditManager::Endpoints::CreateAssessment.build(context)
          when :create_assessment_framework
            Aws::AuditManager::Endpoints::CreateAssessmentFramework.build(context)
          when :create_assessment_report
            Aws::AuditManager::Endpoints::CreateAssessmentReport.build(context)
          when :create_control
            Aws::AuditManager::Endpoints::CreateControl.build(context)
          when :delete_assessment
            Aws::AuditManager::Endpoints::DeleteAssessment.build(context)
          when :delete_assessment_framework
            Aws::AuditManager::Endpoints::DeleteAssessmentFramework.build(context)
          when :delete_assessment_framework_share
            Aws::AuditManager::Endpoints::DeleteAssessmentFrameworkShare.build(context)
          when :delete_assessment_report
            Aws::AuditManager::Endpoints::DeleteAssessmentReport.build(context)
          when :delete_control
            Aws::AuditManager::Endpoints::DeleteControl.build(context)
          when :deregister_account
            Aws::AuditManager::Endpoints::DeregisterAccount.build(context)
          when :deregister_organization_admin_account
            Aws::AuditManager::Endpoints::DeregisterOrganizationAdminAccount.build(context)
          when :disassociate_assessment_report_evidence_folder
            Aws::AuditManager::Endpoints::DisassociateAssessmentReportEvidenceFolder.build(context)
          when :get_account_status
            Aws::AuditManager::Endpoints::GetAccountStatus.build(context)
          when :get_assessment
            Aws::AuditManager::Endpoints::GetAssessment.build(context)
          when :get_assessment_framework
            Aws::AuditManager::Endpoints::GetAssessmentFramework.build(context)
          when :get_assessment_report_url
            Aws::AuditManager::Endpoints::GetAssessmentReportUrl.build(context)
          when :get_change_logs
            Aws::AuditManager::Endpoints::GetChangeLogs.build(context)
          when :get_control
            Aws::AuditManager::Endpoints::GetControl.build(context)
          when :get_delegations
            Aws::AuditManager::Endpoints::GetDelegations.build(context)
          when :get_evidence
            Aws::AuditManager::Endpoints::GetEvidence.build(context)
          when :get_evidence_by_evidence_folder
            Aws::AuditManager::Endpoints::GetEvidenceByEvidenceFolder.build(context)
          when :get_evidence_file_upload_url
            Aws::AuditManager::Endpoints::GetEvidenceFileUploadUrl.build(context)
          when :get_evidence_folder
            Aws::AuditManager::Endpoints::GetEvidenceFolder.build(context)
          when :get_evidence_folders_by_assessment
            Aws::AuditManager::Endpoints::GetEvidenceFoldersByAssessment.build(context)
          when :get_evidence_folders_by_assessment_control
            Aws::AuditManager::Endpoints::GetEvidenceFoldersByAssessmentControl.build(context)
          when :get_insights
            Aws::AuditManager::Endpoints::GetInsights.build(context)
          when :get_insights_by_assessment
            Aws::AuditManager::Endpoints::GetInsightsByAssessment.build(context)
          when :get_organization_admin_account
            Aws::AuditManager::Endpoints::GetOrganizationAdminAccount.build(context)
          when :get_services_in_scope
            Aws::AuditManager::Endpoints::GetServicesInScope.build(context)
          when :get_settings
            Aws::AuditManager::Endpoints::GetSettings.build(context)
          when :list_assessment_control_insights_by_control_domain
            Aws::AuditManager::Endpoints::ListAssessmentControlInsightsByControlDomain.build(context)
          when :list_assessment_framework_share_requests
            Aws::AuditManager::Endpoints::ListAssessmentFrameworkShareRequests.build(context)
          when :list_assessment_frameworks
            Aws::AuditManager::Endpoints::ListAssessmentFrameworks.build(context)
          when :list_assessment_reports
            Aws::AuditManager::Endpoints::ListAssessmentReports.build(context)
          when :list_assessments
            Aws::AuditManager::Endpoints::ListAssessments.build(context)
          when :list_control_domain_insights
            Aws::AuditManager::Endpoints::ListControlDomainInsights.build(context)
          when :list_control_domain_insights_by_assessment
            Aws::AuditManager::Endpoints::ListControlDomainInsightsByAssessment.build(context)
          when :list_control_insights_by_control_domain
            Aws::AuditManager::Endpoints::ListControlInsightsByControlDomain.build(context)
          when :list_controls
            Aws::AuditManager::Endpoints::ListControls.build(context)
          when :list_keywords_for_data_source
            Aws::AuditManager::Endpoints::ListKeywordsForDataSource.build(context)
          when :list_notifications
            Aws::AuditManager::Endpoints::ListNotifications.build(context)
          when :list_tags_for_resource
            Aws::AuditManager::Endpoints::ListTagsForResource.build(context)
          when :register_account
            Aws::AuditManager::Endpoints::RegisterAccount.build(context)
          when :register_organization_admin_account
            Aws::AuditManager::Endpoints::RegisterOrganizationAdminAccount.build(context)
          when :start_assessment_framework_share
            Aws::AuditManager::Endpoints::StartAssessmentFrameworkShare.build(context)
          when :tag_resource
            Aws::AuditManager::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::AuditManager::Endpoints::UntagResource.build(context)
          when :update_assessment
            Aws::AuditManager::Endpoints::UpdateAssessment.build(context)
          when :update_assessment_control
            Aws::AuditManager::Endpoints::UpdateAssessmentControl.build(context)
          when :update_assessment_control_set_status
            Aws::AuditManager::Endpoints::UpdateAssessmentControlSetStatus.build(context)
          when :update_assessment_framework
            Aws::AuditManager::Endpoints::UpdateAssessmentFramework.build(context)
          when :update_assessment_framework_share
            Aws::AuditManager::Endpoints::UpdateAssessmentFrameworkShare.build(context)
          when :update_assessment_status
            Aws::AuditManager::Endpoints::UpdateAssessmentStatus.build(context)
          when :update_control
            Aws::AuditManager::Endpoints::UpdateControl.build(context)
          when :update_settings
            Aws::AuditManager::Endpoints::UpdateSettings.build(context)
          when :validate_assessment_report_integrity
            Aws::AuditManager::Endpoints::ValidateAssessmentReportIntegrity.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
