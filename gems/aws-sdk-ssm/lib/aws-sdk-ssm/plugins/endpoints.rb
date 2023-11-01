# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SSM
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SSM::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SSM::EndpointParameters`'
      ) do |cfg|
        Aws::SSM::EndpointProvider.new
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
          when :add_tags_to_resource
            Aws::SSM::Endpoints::AddTagsToResource.build(context)
          when :associate_ops_item_related_item
            Aws::SSM::Endpoints::AssociateOpsItemRelatedItem.build(context)
          when :cancel_command
            Aws::SSM::Endpoints::CancelCommand.build(context)
          when :cancel_maintenance_window_execution
            Aws::SSM::Endpoints::CancelMaintenanceWindowExecution.build(context)
          when :create_activation
            Aws::SSM::Endpoints::CreateActivation.build(context)
          when :create_association
            Aws::SSM::Endpoints::CreateAssociation.build(context)
          when :create_association_batch
            Aws::SSM::Endpoints::CreateAssociationBatch.build(context)
          when :create_document
            Aws::SSM::Endpoints::CreateDocument.build(context)
          when :create_maintenance_window
            Aws::SSM::Endpoints::CreateMaintenanceWindow.build(context)
          when :create_ops_item
            Aws::SSM::Endpoints::CreateOpsItem.build(context)
          when :create_ops_metadata
            Aws::SSM::Endpoints::CreateOpsMetadata.build(context)
          when :create_patch_baseline
            Aws::SSM::Endpoints::CreatePatchBaseline.build(context)
          when :create_resource_data_sync
            Aws::SSM::Endpoints::CreateResourceDataSync.build(context)
          when :delete_activation
            Aws::SSM::Endpoints::DeleteActivation.build(context)
          when :delete_association
            Aws::SSM::Endpoints::DeleteAssociation.build(context)
          when :delete_document
            Aws::SSM::Endpoints::DeleteDocument.build(context)
          when :delete_inventory
            Aws::SSM::Endpoints::DeleteInventory.build(context)
          when :delete_maintenance_window
            Aws::SSM::Endpoints::DeleteMaintenanceWindow.build(context)
          when :delete_ops_item
            Aws::SSM::Endpoints::DeleteOpsItem.build(context)
          when :delete_ops_metadata
            Aws::SSM::Endpoints::DeleteOpsMetadata.build(context)
          when :delete_parameter
            Aws::SSM::Endpoints::DeleteParameter.build(context)
          when :delete_parameters
            Aws::SSM::Endpoints::DeleteParameters.build(context)
          when :delete_patch_baseline
            Aws::SSM::Endpoints::DeletePatchBaseline.build(context)
          when :delete_resource_data_sync
            Aws::SSM::Endpoints::DeleteResourceDataSync.build(context)
          when :delete_resource_policy
            Aws::SSM::Endpoints::DeleteResourcePolicy.build(context)
          when :deregister_managed_instance
            Aws::SSM::Endpoints::DeregisterManagedInstance.build(context)
          when :deregister_patch_baseline_for_patch_group
            Aws::SSM::Endpoints::DeregisterPatchBaselineForPatchGroup.build(context)
          when :deregister_target_from_maintenance_window
            Aws::SSM::Endpoints::DeregisterTargetFromMaintenanceWindow.build(context)
          when :deregister_task_from_maintenance_window
            Aws::SSM::Endpoints::DeregisterTaskFromMaintenanceWindow.build(context)
          when :describe_activations
            Aws::SSM::Endpoints::DescribeActivations.build(context)
          when :describe_association
            Aws::SSM::Endpoints::DescribeAssociation.build(context)
          when :describe_association_execution_targets
            Aws::SSM::Endpoints::DescribeAssociationExecutionTargets.build(context)
          when :describe_association_executions
            Aws::SSM::Endpoints::DescribeAssociationExecutions.build(context)
          when :describe_automation_executions
            Aws::SSM::Endpoints::DescribeAutomationExecutions.build(context)
          when :describe_automation_step_executions
            Aws::SSM::Endpoints::DescribeAutomationStepExecutions.build(context)
          when :describe_available_patches
            Aws::SSM::Endpoints::DescribeAvailablePatches.build(context)
          when :describe_document
            Aws::SSM::Endpoints::DescribeDocument.build(context)
          when :describe_document_permission
            Aws::SSM::Endpoints::DescribeDocumentPermission.build(context)
          when :describe_effective_instance_associations
            Aws::SSM::Endpoints::DescribeEffectiveInstanceAssociations.build(context)
          when :describe_effective_patches_for_patch_baseline
            Aws::SSM::Endpoints::DescribeEffectivePatchesForPatchBaseline.build(context)
          when :describe_instance_associations_status
            Aws::SSM::Endpoints::DescribeInstanceAssociationsStatus.build(context)
          when :describe_instance_information
            Aws::SSM::Endpoints::DescribeInstanceInformation.build(context)
          when :describe_instance_patch_states
            Aws::SSM::Endpoints::DescribeInstancePatchStates.build(context)
          when :describe_instance_patch_states_for_patch_group
            Aws::SSM::Endpoints::DescribeInstancePatchStatesForPatchGroup.build(context)
          when :describe_instance_patches
            Aws::SSM::Endpoints::DescribeInstancePatches.build(context)
          when :describe_inventory_deletions
            Aws::SSM::Endpoints::DescribeInventoryDeletions.build(context)
          when :describe_maintenance_window_execution_task_invocations
            Aws::SSM::Endpoints::DescribeMaintenanceWindowExecutionTaskInvocations.build(context)
          when :describe_maintenance_window_execution_tasks
            Aws::SSM::Endpoints::DescribeMaintenanceWindowExecutionTasks.build(context)
          when :describe_maintenance_window_executions
            Aws::SSM::Endpoints::DescribeMaintenanceWindowExecutions.build(context)
          when :describe_maintenance_window_schedule
            Aws::SSM::Endpoints::DescribeMaintenanceWindowSchedule.build(context)
          when :describe_maintenance_window_targets
            Aws::SSM::Endpoints::DescribeMaintenanceWindowTargets.build(context)
          when :describe_maintenance_window_tasks
            Aws::SSM::Endpoints::DescribeMaintenanceWindowTasks.build(context)
          when :describe_maintenance_windows
            Aws::SSM::Endpoints::DescribeMaintenanceWindows.build(context)
          when :describe_maintenance_windows_for_target
            Aws::SSM::Endpoints::DescribeMaintenanceWindowsForTarget.build(context)
          when :describe_ops_items
            Aws::SSM::Endpoints::DescribeOpsItems.build(context)
          when :describe_parameters
            Aws::SSM::Endpoints::DescribeParameters.build(context)
          when :describe_patch_baselines
            Aws::SSM::Endpoints::DescribePatchBaselines.build(context)
          when :describe_patch_group_state
            Aws::SSM::Endpoints::DescribePatchGroupState.build(context)
          when :describe_patch_groups
            Aws::SSM::Endpoints::DescribePatchGroups.build(context)
          when :describe_patch_properties
            Aws::SSM::Endpoints::DescribePatchProperties.build(context)
          when :describe_sessions
            Aws::SSM::Endpoints::DescribeSessions.build(context)
          when :disassociate_ops_item_related_item
            Aws::SSM::Endpoints::DisassociateOpsItemRelatedItem.build(context)
          when :get_automation_execution
            Aws::SSM::Endpoints::GetAutomationExecution.build(context)
          when :get_calendar_state
            Aws::SSM::Endpoints::GetCalendarState.build(context)
          when :get_command_invocation
            Aws::SSM::Endpoints::GetCommandInvocation.build(context)
          when :get_connection_status
            Aws::SSM::Endpoints::GetConnectionStatus.build(context)
          when :get_default_patch_baseline
            Aws::SSM::Endpoints::GetDefaultPatchBaseline.build(context)
          when :get_deployable_patch_snapshot_for_instance
            Aws::SSM::Endpoints::GetDeployablePatchSnapshotForInstance.build(context)
          when :get_document
            Aws::SSM::Endpoints::GetDocument.build(context)
          when :get_inventory
            Aws::SSM::Endpoints::GetInventory.build(context)
          when :get_inventory_schema
            Aws::SSM::Endpoints::GetInventorySchema.build(context)
          when :get_maintenance_window
            Aws::SSM::Endpoints::GetMaintenanceWindow.build(context)
          when :get_maintenance_window_execution
            Aws::SSM::Endpoints::GetMaintenanceWindowExecution.build(context)
          when :get_maintenance_window_execution_task
            Aws::SSM::Endpoints::GetMaintenanceWindowExecutionTask.build(context)
          when :get_maintenance_window_execution_task_invocation
            Aws::SSM::Endpoints::GetMaintenanceWindowExecutionTaskInvocation.build(context)
          when :get_maintenance_window_task
            Aws::SSM::Endpoints::GetMaintenanceWindowTask.build(context)
          when :get_ops_item
            Aws::SSM::Endpoints::GetOpsItem.build(context)
          when :get_ops_metadata
            Aws::SSM::Endpoints::GetOpsMetadata.build(context)
          when :get_ops_summary
            Aws::SSM::Endpoints::GetOpsSummary.build(context)
          when :get_parameter
            Aws::SSM::Endpoints::GetParameter.build(context)
          when :get_parameter_history
            Aws::SSM::Endpoints::GetParameterHistory.build(context)
          when :get_parameters
            Aws::SSM::Endpoints::GetParameters.build(context)
          when :get_parameters_by_path
            Aws::SSM::Endpoints::GetParametersByPath.build(context)
          when :get_patch_baseline
            Aws::SSM::Endpoints::GetPatchBaseline.build(context)
          when :get_patch_baseline_for_patch_group
            Aws::SSM::Endpoints::GetPatchBaselineForPatchGroup.build(context)
          when :get_resource_policies
            Aws::SSM::Endpoints::GetResourcePolicies.build(context)
          when :get_service_setting
            Aws::SSM::Endpoints::GetServiceSetting.build(context)
          when :label_parameter_version
            Aws::SSM::Endpoints::LabelParameterVersion.build(context)
          when :list_association_versions
            Aws::SSM::Endpoints::ListAssociationVersions.build(context)
          when :list_associations
            Aws::SSM::Endpoints::ListAssociations.build(context)
          when :list_command_invocations
            Aws::SSM::Endpoints::ListCommandInvocations.build(context)
          when :list_commands
            Aws::SSM::Endpoints::ListCommands.build(context)
          when :list_compliance_items
            Aws::SSM::Endpoints::ListComplianceItems.build(context)
          when :list_compliance_summaries
            Aws::SSM::Endpoints::ListComplianceSummaries.build(context)
          when :list_document_metadata_history
            Aws::SSM::Endpoints::ListDocumentMetadataHistory.build(context)
          when :list_document_versions
            Aws::SSM::Endpoints::ListDocumentVersions.build(context)
          when :list_documents
            Aws::SSM::Endpoints::ListDocuments.build(context)
          when :list_inventory_entries
            Aws::SSM::Endpoints::ListInventoryEntries.build(context)
          when :list_ops_item_events
            Aws::SSM::Endpoints::ListOpsItemEvents.build(context)
          when :list_ops_item_related_items
            Aws::SSM::Endpoints::ListOpsItemRelatedItems.build(context)
          when :list_ops_metadata
            Aws::SSM::Endpoints::ListOpsMetadata.build(context)
          when :list_resource_compliance_summaries
            Aws::SSM::Endpoints::ListResourceComplianceSummaries.build(context)
          when :list_resource_data_sync
            Aws::SSM::Endpoints::ListResourceDataSync.build(context)
          when :list_tags_for_resource
            Aws::SSM::Endpoints::ListTagsForResource.build(context)
          when :modify_document_permission
            Aws::SSM::Endpoints::ModifyDocumentPermission.build(context)
          when :put_compliance_items
            Aws::SSM::Endpoints::PutComplianceItems.build(context)
          when :put_inventory
            Aws::SSM::Endpoints::PutInventory.build(context)
          when :put_parameter
            Aws::SSM::Endpoints::PutParameter.build(context)
          when :put_resource_policy
            Aws::SSM::Endpoints::PutResourcePolicy.build(context)
          when :register_default_patch_baseline
            Aws::SSM::Endpoints::RegisterDefaultPatchBaseline.build(context)
          when :register_patch_baseline_for_patch_group
            Aws::SSM::Endpoints::RegisterPatchBaselineForPatchGroup.build(context)
          when :register_target_with_maintenance_window
            Aws::SSM::Endpoints::RegisterTargetWithMaintenanceWindow.build(context)
          when :register_task_with_maintenance_window
            Aws::SSM::Endpoints::RegisterTaskWithMaintenanceWindow.build(context)
          when :remove_tags_from_resource
            Aws::SSM::Endpoints::RemoveTagsFromResource.build(context)
          when :reset_service_setting
            Aws::SSM::Endpoints::ResetServiceSetting.build(context)
          when :resume_session
            Aws::SSM::Endpoints::ResumeSession.build(context)
          when :send_automation_signal
            Aws::SSM::Endpoints::SendAutomationSignal.build(context)
          when :send_command
            Aws::SSM::Endpoints::SendCommand.build(context)
          when :start_associations_once
            Aws::SSM::Endpoints::StartAssociationsOnce.build(context)
          when :start_automation_execution
            Aws::SSM::Endpoints::StartAutomationExecution.build(context)
          when :start_change_request_execution
            Aws::SSM::Endpoints::StartChangeRequestExecution.build(context)
          when :start_session
            Aws::SSM::Endpoints::StartSession.build(context)
          when :stop_automation_execution
            Aws::SSM::Endpoints::StopAutomationExecution.build(context)
          when :terminate_session
            Aws::SSM::Endpoints::TerminateSession.build(context)
          when :unlabel_parameter_version
            Aws::SSM::Endpoints::UnlabelParameterVersion.build(context)
          when :update_association
            Aws::SSM::Endpoints::UpdateAssociation.build(context)
          when :update_association_status
            Aws::SSM::Endpoints::UpdateAssociationStatus.build(context)
          when :update_document
            Aws::SSM::Endpoints::UpdateDocument.build(context)
          when :update_document_default_version
            Aws::SSM::Endpoints::UpdateDocumentDefaultVersion.build(context)
          when :update_document_metadata
            Aws::SSM::Endpoints::UpdateDocumentMetadata.build(context)
          when :update_maintenance_window
            Aws::SSM::Endpoints::UpdateMaintenanceWindow.build(context)
          when :update_maintenance_window_target
            Aws::SSM::Endpoints::UpdateMaintenanceWindowTarget.build(context)
          when :update_maintenance_window_task
            Aws::SSM::Endpoints::UpdateMaintenanceWindowTask.build(context)
          when :update_managed_instance_role
            Aws::SSM::Endpoints::UpdateManagedInstanceRole.build(context)
          when :update_ops_item
            Aws::SSM::Endpoints::UpdateOpsItem.build(context)
          when :update_ops_metadata
            Aws::SSM::Endpoints::UpdateOpsMetadata.build(context)
          when :update_patch_baseline
            Aws::SSM::Endpoints::UpdatePatchBaseline.build(context)
          when :update_resource_data_sync
            Aws::SSM::Endpoints::UpdateResourceDataSync.build(context)
          when :update_service_setting
            Aws::SSM::Endpoints::UpdateServiceSetting.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
