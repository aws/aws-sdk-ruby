# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::GuardDuty
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::GuardDuty::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::GuardDuty::EndpointParameters`'
      ) do |cfg|
        Aws::GuardDuty::EndpointProvider.new
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
            Aws::GuardDuty::Endpoints::AcceptAdministratorInvitation.build(context)
          when :accept_invitation
            Aws::GuardDuty::Endpoints::AcceptInvitation.build(context)
          when :archive_findings
            Aws::GuardDuty::Endpoints::ArchiveFindings.build(context)
          when :create_detector
            Aws::GuardDuty::Endpoints::CreateDetector.build(context)
          when :create_filter
            Aws::GuardDuty::Endpoints::CreateFilter.build(context)
          when :create_ip_set
            Aws::GuardDuty::Endpoints::CreateIPSet.build(context)
          when :create_members
            Aws::GuardDuty::Endpoints::CreateMembers.build(context)
          when :create_publishing_destination
            Aws::GuardDuty::Endpoints::CreatePublishingDestination.build(context)
          when :create_sample_findings
            Aws::GuardDuty::Endpoints::CreateSampleFindings.build(context)
          when :create_threat_intel_set
            Aws::GuardDuty::Endpoints::CreateThreatIntelSet.build(context)
          when :decline_invitations
            Aws::GuardDuty::Endpoints::DeclineInvitations.build(context)
          when :delete_detector
            Aws::GuardDuty::Endpoints::DeleteDetector.build(context)
          when :delete_filter
            Aws::GuardDuty::Endpoints::DeleteFilter.build(context)
          when :delete_ip_set
            Aws::GuardDuty::Endpoints::DeleteIPSet.build(context)
          when :delete_invitations
            Aws::GuardDuty::Endpoints::DeleteInvitations.build(context)
          when :delete_members
            Aws::GuardDuty::Endpoints::DeleteMembers.build(context)
          when :delete_publishing_destination
            Aws::GuardDuty::Endpoints::DeletePublishingDestination.build(context)
          when :delete_threat_intel_set
            Aws::GuardDuty::Endpoints::DeleteThreatIntelSet.build(context)
          when :describe_malware_scans
            Aws::GuardDuty::Endpoints::DescribeMalwareScans.build(context)
          when :describe_organization_configuration
            Aws::GuardDuty::Endpoints::DescribeOrganizationConfiguration.build(context)
          when :describe_publishing_destination
            Aws::GuardDuty::Endpoints::DescribePublishingDestination.build(context)
          when :disable_organization_admin_account
            Aws::GuardDuty::Endpoints::DisableOrganizationAdminAccount.build(context)
          when :disassociate_from_administrator_account
            Aws::GuardDuty::Endpoints::DisassociateFromAdministratorAccount.build(context)
          when :disassociate_from_master_account
            Aws::GuardDuty::Endpoints::DisassociateFromMasterAccount.build(context)
          when :disassociate_members
            Aws::GuardDuty::Endpoints::DisassociateMembers.build(context)
          when :enable_organization_admin_account
            Aws::GuardDuty::Endpoints::EnableOrganizationAdminAccount.build(context)
          when :get_administrator_account
            Aws::GuardDuty::Endpoints::GetAdministratorAccount.build(context)
          when :get_coverage_statistics
            Aws::GuardDuty::Endpoints::GetCoverageStatistics.build(context)
          when :get_detector
            Aws::GuardDuty::Endpoints::GetDetector.build(context)
          when :get_filter
            Aws::GuardDuty::Endpoints::GetFilter.build(context)
          when :get_findings
            Aws::GuardDuty::Endpoints::GetFindings.build(context)
          when :get_findings_statistics
            Aws::GuardDuty::Endpoints::GetFindingsStatistics.build(context)
          when :get_ip_set
            Aws::GuardDuty::Endpoints::GetIPSet.build(context)
          when :get_invitations_count
            Aws::GuardDuty::Endpoints::GetInvitationsCount.build(context)
          when :get_malware_scan_settings
            Aws::GuardDuty::Endpoints::GetMalwareScanSettings.build(context)
          when :get_master_account
            Aws::GuardDuty::Endpoints::GetMasterAccount.build(context)
          when :get_member_detectors
            Aws::GuardDuty::Endpoints::GetMemberDetectors.build(context)
          when :get_members
            Aws::GuardDuty::Endpoints::GetMembers.build(context)
          when :get_remaining_free_trial_days
            Aws::GuardDuty::Endpoints::GetRemainingFreeTrialDays.build(context)
          when :get_threat_intel_set
            Aws::GuardDuty::Endpoints::GetThreatIntelSet.build(context)
          when :get_usage_statistics
            Aws::GuardDuty::Endpoints::GetUsageStatistics.build(context)
          when :invite_members
            Aws::GuardDuty::Endpoints::InviteMembers.build(context)
          when :list_coverage
            Aws::GuardDuty::Endpoints::ListCoverage.build(context)
          when :list_detectors
            Aws::GuardDuty::Endpoints::ListDetectors.build(context)
          when :list_filters
            Aws::GuardDuty::Endpoints::ListFilters.build(context)
          when :list_findings
            Aws::GuardDuty::Endpoints::ListFindings.build(context)
          when :list_ip_sets
            Aws::GuardDuty::Endpoints::ListIPSets.build(context)
          when :list_invitations
            Aws::GuardDuty::Endpoints::ListInvitations.build(context)
          when :list_members
            Aws::GuardDuty::Endpoints::ListMembers.build(context)
          when :list_organization_admin_accounts
            Aws::GuardDuty::Endpoints::ListOrganizationAdminAccounts.build(context)
          when :list_publishing_destinations
            Aws::GuardDuty::Endpoints::ListPublishingDestinations.build(context)
          when :list_tags_for_resource
            Aws::GuardDuty::Endpoints::ListTagsForResource.build(context)
          when :list_threat_intel_sets
            Aws::GuardDuty::Endpoints::ListThreatIntelSets.build(context)
          when :start_malware_scan
            Aws::GuardDuty::Endpoints::StartMalwareScan.build(context)
          when :start_monitoring_members
            Aws::GuardDuty::Endpoints::StartMonitoringMembers.build(context)
          when :stop_monitoring_members
            Aws::GuardDuty::Endpoints::StopMonitoringMembers.build(context)
          when :tag_resource
            Aws::GuardDuty::Endpoints::TagResource.build(context)
          when :unarchive_findings
            Aws::GuardDuty::Endpoints::UnarchiveFindings.build(context)
          when :untag_resource
            Aws::GuardDuty::Endpoints::UntagResource.build(context)
          when :update_detector
            Aws::GuardDuty::Endpoints::UpdateDetector.build(context)
          when :update_filter
            Aws::GuardDuty::Endpoints::UpdateFilter.build(context)
          when :update_findings_feedback
            Aws::GuardDuty::Endpoints::UpdateFindingsFeedback.build(context)
          when :update_ip_set
            Aws::GuardDuty::Endpoints::UpdateIPSet.build(context)
          when :update_malware_scan_settings
            Aws::GuardDuty::Endpoints::UpdateMalwareScanSettings.build(context)
          when :update_member_detectors
            Aws::GuardDuty::Endpoints::UpdateMemberDetectors.build(context)
          when :update_organization_configuration
            Aws::GuardDuty::Endpoints::UpdateOrganizationConfiguration.build(context)
          when :update_publishing_destination
            Aws::GuardDuty::Endpoints::UpdatePublishingDestination.build(context)
          when :update_threat_intel_set
            Aws::GuardDuty::Endpoints::UpdateThreatIntelSet.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
