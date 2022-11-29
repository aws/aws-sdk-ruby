# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Macie2
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Macie2::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Macie2::EndpointParameters`'
      ) do |cfg|
        Aws::Macie2::EndpointProvider.new
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
          when :accept_invitation
            Aws::Macie2::Endpoints::AcceptInvitation.build(context)
          when :batch_get_custom_data_identifiers
            Aws::Macie2::Endpoints::BatchGetCustomDataIdentifiers.build(context)
          when :create_allow_list
            Aws::Macie2::Endpoints::CreateAllowList.build(context)
          when :create_classification_job
            Aws::Macie2::Endpoints::CreateClassificationJob.build(context)
          when :create_custom_data_identifier
            Aws::Macie2::Endpoints::CreateCustomDataIdentifier.build(context)
          when :create_findings_filter
            Aws::Macie2::Endpoints::CreateFindingsFilter.build(context)
          when :create_invitations
            Aws::Macie2::Endpoints::CreateInvitations.build(context)
          when :create_member
            Aws::Macie2::Endpoints::CreateMember.build(context)
          when :create_sample_findings
            Aws::Macie2::Endpoints::CreateSampleFindings.build(context)
          when :decline_invitations
            Aws::Macie2::Endpoints::DeclineInvitations.build(context)
          when :delete_allow_list
            Aws::Macie2::Endpoints::DeleteAllowList.build(context)
          when :delete_custom_data_identifier
            Aws::Macie2::Endpoints::DeleteCustomDataIdentifier.build(context)
          when :delete_findings_filter
            Aws::Macie2::Endpoints::DeleteFindingsFilter.build(context)
          when :delete_invitations
            Aws::Macie2::Endpoints::DeleteInvitations.build(context)
          when :delete_member
            Aws::Macie2::Endpoints::DeleteMember.build(context)
          when :describe_buckets
            Aws::Macie2::Endpoints::DescribeBuckets.build(context)
          when :describe_classification_job
            Aws::Macie2::Endpoints::DescribeClassificationJob.build(context)
          when :describe_organization_configuration
            Aws::Macie2::Endpoints::DescribeOrganizationConfiguration.build(context)
          when :disable_macie
            Aws::Macie2::Endpoints::DisableMacie.build(context)
          when :disable_organization_admin_account
            Aws::Macie2::Endpoints::DisableOrganizationAdminAccount.build(context)
          when :disassociate_from_administrator_account
            Aws::Macie2::Endpoints::DisassociateFromAdministratorAccount.build(context)
          when :disassociate_from_master_account
            Aws::Macie2::Endpoints::DisassociateFromMasterAccount.build(context)
          when :disassociate_member
            Aws::Macie2::Endpoints::DisassociateMember.build(context)
          when :enable_macie
            Aws::Macie2::Endpoints::EnableMacie.build(context)
          when :enable_organization_admin_account
            Aws::Macie2::Endpoints::EnableOrganizationAdminAccount.build(context)
          when :get_administrator_account
            Aws::Macie2::Endpoints::GetAdministratorAccount.build(context)
          when :get_allow_list
            Aws::Macie2::Endpoints::GetAllowList.build(context)
          when :get_automated_discovery_configuration
            Aws::Macie2::Endpoints::GetAutomatedDiscoveryConfiguration.build(context)
          when :get_bucket_statistics
            Aws::Macie2::Endpoints::GetBucketStatistics.build(context)
          when :get_classification_export_configuration
            Aws::Macie2::Endpoints::GetClassificationExportConfiguration.build(context)
          when :get_classification_scope
            Aws::Macie2::Endpoints::GetClassificationScope.build(context)
          when :get_custom_data_identifier
            Aws::Macie2::Endpoints::GetCustomDataIdentifier.build(context)
          when :get_finding_statistics
            Aws::Macie2::Endpoints::GetFindingStatistics.build(context)
          when :get_findings
            Aws::Macie2::Endpoints::GetFindings.build(context)
          when :get_findings_filter
            Aws::Macie2::Endpoints::GetFindingsFilter.build(context)
          when :get_findings_publication_configuration
            Aws::Macie2::Endpoints::GetFindingsPublicationConfiguration.build(context)
          when :get_invitations_count
            Aws::Macie2::Endpoints::GetInvitationsCount.build(context)
          when :get_macie_session
            Aws::Macie2::Endpoints::GetMacieSession.build(context)
          when :get_master_account
            Aws::Macie2::Endpoints::GetMasterAccount.build(context)
          when :get_member
            Aws::Macie2::Endpoints::GetMember.build(context)
          when :get_resource_profile
            Aws::Macie2::Endpoints::GetResourceProfile.build(context)
          when :get_reveal_configuration
            Aws::Macie2::Endpoints::GetRevealConfiguration.build(context)
          when :get_sensitive_data_occurrences
            Aws::Macie2::Endpoints::GetSensitiveDataOccurrences.build(context)
          when :get_sensitive_data_occurrences_availability
            Aws::Macie2::Endpoints::GetSensitiveDataOccurrencesAvailability.build(context)
          when :get_sensitivity_inspection_template
            Aws::Macie2::Endpoints::GetSensitivityInspectionTemplate.build(context)
          when :get_usage_statistics
            Aws::Macie2::Endpoints::GetUsageStatistics.build(context)
          when :get_usage_totals
            Aws::Macie2::Endpoints::GetUsageTotals.build(context)
          when :list_allow_lists
            Aws::Macie2::Endpoints::ListAllowLists.build(context)
          when :list_classification_jobs
            Aws::Macie2::Endpoints::ListClassificationJobs.build(context)
          when :list_classification_scopes
            Aws::Macie2::Endpoints::ListClassificationScopes.build(context)
          when :list_custom_data_identifiers
            Aws::Macie2::Endpoints::ListCustomDataIdentifiers.build(context)
          when :list_findings
            Aws::Macie2::Endpoints::ListFindings.build(context)
          when :list_findings_filters
            Aws::Macie2::Endpoints::ListFindingsFilters.build(context)
          when :list_invitations
            Aws::Macie2::Endpoints::ListInvitations.build(context)
          when :list_managed_data_identifiers
            Aws::Macie2::Endpoints::ListManagedDataIdentifiers.build(context)
          when :list_members
            Aws::Macie2::Endpoints::ListMembers.build(context)
          when :list_organization_admin_accounts
            Aws::Macie2::Endpoints::ListOrganizationAdminAccounts.build(context)
          when :list_resource_profile_artifacts
            Aws::Macie2::Endpoints::ListResourceProfileArtifacts.build(context)
          when :list_resource_profile_detections
            Aws::Macie2::Endpoints::ListResourceProfileDetections.build(context)
          when :list_sensitivity_inspection_templates
            Aws::Macie2::Endpoints::ListSensitivityInspectionTemplates.build(context)
          when :list_tags_for_resource
            Aws::Macie2::Endpoints::ListTagsForResource.build(context)
          when :put_classification_export_configuration
            Aws::Macie2::Endpoints::PutClassificationExportConfiguration.build(context)
          when :put_findings_publication_configuration
            Aws::Macie2::Endpoints::PutFindingsPublicationConfiguration.build(context)
          when :search_resources
            Aws::Macie2::Endpoints::SearchResources.build(context)
          when :tag_resource
            Aws::Macie2::Endpoints::TagResource.build(context)
          when :test_custom_data_identifier
            Aws::Macie2::Endpoints::TestCustomDataIdentifier.build(context)
          when :untag_resource
            Aws::Macie2::Endpoints::UntagResource.build(context)
          when :update_allow_list
            Aws::Macie2::Endpoints::UpdateAllowList.build(context)
          when :update_automated_discovery_configuration
            Aws::Macie2::Endpoints::UpdateAutomatedDiscoveryConfiguration.build(context)
          when :update_classification_job
            Aws::Macie2::Endpoints::UpdateClassificationJob.build(context)
          when :update_classification_scope
            Aws::Macie2::Endpoints::UpdateClassificationScope.build(context)
          when :update_findings_filter
            Aws::Macie2::Endpoints::UpdateFindingsFilter.build(context)
          when :update_macie_session
            Aws::Macie2::Endpoints::UpdateMacieSession.build(context)
          when :update_member_session
            Aws::Macie2::Endpoints::UpdateMemberSession.build(context)
          when :update_organization_configuration
            Aws::Macie2::Endpoints::UpdateOrganizationConfiguration.build(context)
          when :update_resource_profile
            Aws::Macie2::Endpoints::UpdateResourceProfile.build(context)
          when :update_resource_profile_detections
            Aws::Macie2::Endpoints::UpdateResourceProfileDetections.build(context)
          when :update_reveal_configuration
            Aws::Macie2::Endpoints::UpdateRevealConfiguration.build(context)
          when :update_sensitivity_inspection_template
            Aws::Macie2::Endpoints::UpdateSensitivityInspectionTemplate.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
