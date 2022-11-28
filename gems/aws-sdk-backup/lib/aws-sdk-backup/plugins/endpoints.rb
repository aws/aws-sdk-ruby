# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Backup
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Backup::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Backup::EndpointParameters`'
      ) do |cfg|
        Aws::Backup::EndpointProvider.new
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
          when :cancel_legal_hold
            Aws::Backup::Endpoints::CancelLegalHold.build(context)
          when :create_backup_plan
            Aws::Backup::Endpoints::CreateBackupPlan.build(context)
          when :create_backup_selection
            Aws::Backup::Endpoints::CreateBackupSelection.build(context)
          when :create_backup_vault
            Aws::Backup::Endpoints::CreateBackupVault.build(context)
          when :create_framework
            Aws::Backup::Endpoints::CreateFramework.build(context)
          when :create_legal_hold
            Aws::Backup::Endpoints::CreateLegalHold.build(context)
          when :create_report_plan
            Aws::Backup::Endpoints::CreateReportPlan.build(context)
          when :delete_backup_plan
            Aws::Backup::Endpoints::DeleteBackupPlan.build(context)
          when :delete_backup_selection
            Aws::Backup::Endpoints::DeleteBackupSelection.build(context)
          when :delete_backup_vault
            Aws::Backup::Endpoints::DeleteBackupVault.build(context)
          when :delete_backup_vault_access_policy
            Aws::Backup::Endpoints::DeleteBackupVaultAccessPolicy.build(context)
          when :delete_backup_vault_lock_configuration
            Aws::Backup::Endpoints::DeleteBackupVaultLockConfiguration.build(context)
          when :delete_backup_vault_notifications
            Aws::Backup::Endpoints::DeleteBackupVaultNotifications.build(context)
          when :delete_framework
            Aws::Backup::Endpoints::DeleteFramework.build(context)
          when :delete_recovery_point
            Aws::Backup::Endpoints::DeleteRecoveryPoint.build(context)
          when :delete_report_plan
            Aws::Backup::Endpoints::DeleteReportPlan.build(context)
          when :describe_backup_job
            Aws::Backup::Endpoints::DescribeBackupJob.build(context)
          when :describe_backup_vault
            Aws::Backup::Endpoints::DescribeBackupVault.build(context)
          when :describe_copy_job
            Aws::Backup::Endpoints::DescribeCopyJob.build(context)
          when :describe_framework
            Aws::Backup::Endpoints::DescribeFramework.build(context)
          when :describe_global_settings
            Aws::Backup::Endpoints::DescribeGlobalSettings.build(context)
          when :describe_protected_resource
            Aws::Backup::Endpoints::DescribeProtectedResource.build(context)
          when :describe_recovery_point
            Aws::Backup::Endpoints::DescribeRecoveryPoint.build(context)
          when :describe_region_settings
            Aws::Backup::Endpoints::DescribeRegionSettings.build(context)
          when :describe_report_job
            Aws::Backup::Endpoints::DescribeReportJob.build(context)
          when :describe_report_plan
            Aws::Backup::Endpoints::DescribeReportPlan.build(context)
          when :describe_restore_job
            Aws::Backup::Endpoints::DescribeRestoreJob.build(context)
          when :disassociate_recovery_point
            Aws::Backup::Endpoints::DisassociateRecoveryPoint.build(context)
          when :disassociate_recovery_point_from_parent
            Aws::Backup::Endpoints::DisassociateRecoveryPointFromParent.build(context)
          when :export_backup_plan_template
            Aws::Backup::Endpoints::ExportBackupPlanTemplate.build(context)
          when :get_backup_plan
            Aws::Backup::Endpoints::GetBackupPlan.build(context)
          when :get_backup_plan_from_json
            Aws::Backup::Endpoints::GetBackupPlanFromJSON.build(context)
          when :get_backup_plan_from_template
            Aws::Backup::Endpoints::GetBackupPlanFromTemplate.build(context)
          when :get_backup_selection
            Aws::Backup::Endpoints::GetBackupSelection.build(context)
          when :get_backup_vault_access_policy
            Aws::Backup::Endpoints::GetBackupVaultAccessPolicy.build(context)
          when :get_backup_vault_notifications
            Aws::Backup::Endpoints::GetBackupVaultNotifications.build(context)
          when :get_legal_hold
            Aws::Backup::Endpoints::GetLegalHold.build(context)
          when :get_recovery_point_restore_metadata
            Aws::Backup::Endpoints::GetRecoveryPointRestoreMetadata.build(context)
          when :get_supported_resource_types
            Aws::Backup::Endpoints::GetSupportedResourceTypes.build(context)
          when :list_backup_jobs
            Aws::Backup::Endpoints::ListBackupJobs.build(context)
          when :list_backup_plan_templates
            Aws::Backup::Endpoints::ListBackupPlanTemplates.build(context)
          when :list_backup_plan_versions
            Aws::Backup::Endpoints::ListBackupPlanVersions.build(context)
          when :list_backup_plans
            Aws::Backup::Endpoints::ListBackupPlans.build(context)
          when :list_backup_selections
            Aws::Backup::Endpoints::ListBackupSelections.build(context)
          when :list_backup_vaults
            Aws::Backup::Endpoints::ListBackupVaults.build(context)
          when :list_copy_jobs
            Aws::Backup::Endpoints::ListCopyJobs.build(context)
          when :list_frameworks
            Aws::Backup::Endpoints::ListFrameworks.build(context)
          when :list_legal_holds
            Aws::Backup::Endpoints::ListLegalHolds.build(context)
          when :list_protected_resources
            Aws::Backup::Endpoints::ListProtectedResources.build(context)
          when :list_recovery_points_by_backup_vault
            Aws::Backup::Endpoints::ListRecoveryPointsByBackupVault.build(context)
          when :list_recovery_points_by_legal_hold
            Aws::Backup::Endpoints::ListRecoveryPointsByLegalHold.build(context)
          when :list_recovery_points_by_resource
            Aws::Backup::Endpoints::ListRecoveryPointsByResource.build(context)
          when :list_report_jobs
            Aws::Backup::Endpoints::ListReportJobs.build(context)
          when :list_report_plans
            Aws::Backup::Endpoints::ListReportPlans.build(context)
          when :list_restore_jobs
            Aws::Backup::Endpoints::ListRestoreJobs.build(context)
          when :list_tags
            Aws::Backup::Endpoints::ListTags.build(context)
          when :put_backup_vault_access_policy
            Aws::Backup::Endpoints::PutBackupVaultAccessPolicy.build(context)
          when :put_backup_vault_lock_configuration
            Aws::Backup::Endpoints::PutBackupVaultLockConfiguration.build(context)
          when :put_backup_vault_notifications
            Aws::Backup::Endpoints::PutBackupVaultNotifications.build(context)
          when :start_backup_job
            Aws::Backup::Endpoints::StartBackupJob.build(context)
          when :start_copy_job
            Aws::Backup::Endpoints::StartCopyJob.build(context)
          when :start_report_job
            Aws::Backup::Endpoints::StartReportJob.build(context)
          when :start_restore_job
            Aws::Backup::Endpoints::StartRestoreJob.build(context)
          when :stop_backup_job
            Aws::Backup::Endpoints::StopBackupJob.build(context)
          when :tag_resource
            Aws::Backup::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Backup::Endpoints::UntagResource.build(context)
          when :update_backup_plan
            Aws::Backup::Endpoints::UpdateBackupPlan.build(context)
          when :update_framework
            Aws::Backup::Endpoints::UpdateFramework.build(context)
          when :update_global_settings
            Aws::Backup::Endpoints::UpdateGlobalSettings.build(context)
          when :update_recovery_point_lifecycle
            Aws::Backup::Endpoints::UpdateRecoveryPointLifecycle.build(context)
          when :update_region_settings
            Aws::Backup::Endpoints::UpdateRegionSettings.build(context)
          when :update_report_plan
            Aws::Backup::Endpoints::UpdateReportPlan.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
