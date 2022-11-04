# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::StorageGateway
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::StorageGateway::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::StorageGateway::EndpointParameters`'
      ) do |cfg|
        Aws::StorageGateway::EndpointProvider.new
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
          when :activate_gateway
            Aws::StorageGateway::Endpoints::ActivateGateway.build(context)
          when :add_cache
            Aws::StorageGateway::Endpoints::AddCache.build(context)
          when :add_tags_to_resource
            Aws::StorageGateway::Endpoints::AddTagsToResource.build(context)
          when :add_upload_buffer
            Aws::StorageGateway::Endpoints::AddUploadBuffer.build(context)
          when :add_working_storage
            Aws::StorageGateway::Endpoints::AddWorkingStorage.build(context)
          when :assign_tape_pool
            Aws::StorageGateway::Endpoints::AssignTapePool.build(context)
          when :associate_file_system
            Aws::StorageGateway::Endpoints::AssociateFileSystem.build(context)
          when :attach_volume
            Aws::StorageGateway::Endpoints::AttachVolume.build(context)
          when :cancel_archival
            Aws::StorageGateway::Endpoints::CancelArchival.build(context)
          when :cancel_retrieval
            Aws::StorageGateway::Endpoints::CancelRetrieval.build(context)
          when :create_cached_iscsi_volume
            Aws::StorageGateway::Endpoints::CreateCachediSCSIVolume.build(context)
          when :create_nfs_file_share
            Aws::StorageGateway::Endpoints::CreateNFSFileShare.build(context)
          when :create_smb_file_share
            Aws::StorageGateway::Endpoints::CreateSMBFileShare.build(context)
          when :create_snapshot
            Aws::StorageGateway::Endpoints::CreateSnapshot.build(context)
          when :create_snapshot_from_volume_recovery_point
            Aws::StorageGateway::Endpoints::CreateSnapshotFromVolumeRecoveryPoint.build(context)
          when :create_stored_iscsi_volume
            Aws::StorageGateway::Endpoints::CreateStorediSCSIVolume.build(context)
          when :create_tape_pool
            Aws::StorageGateway::Endpoints::CreateTapePool.build(context)
          when :create_tape_with_barcode
            Aws::StorageGateway::Endpoints::CreateTapeWithBarcode.build(context)
          when :create_tapes
            Aws::StorageGateway::Endpoints::CreateTapes.build(context)
          when :delete_automatic_tape_creation_policy
            Aws::StorageGateway::Endpoints::DeleteAutomaticTapeCreationPolicy.build(context)
          when :delete_bandwidth_rate_limit
            Aws::StorageGateway::Endpoints::DeleteBandwidthRateLimit.build(context)
          when :delete_chap_credentials
            Aws::StorageGateway::Endpoints::DeleteChapCredentials.build(context)
          when :delete_file_share
            Aws::StorageGateway::Endpoints::DeleteFileShare.build(context)
          when :delete_gateway
            Aws::StorageGateway::Endpoints::DeleteGateway.build(context)
          when :delete_snapshot_schedule
            Aws::StorageGateway::Endpoints::DeleteSnapshotSchedule.build(context)
          when :delete_tape
            Aws::StorageGateway::Endpoints::DeleteTape.build(context)
          when :delete_tape_archive
            Aws::StorageGateway::Endpoints::DeleteTapeArchive.build(context)
          when :delete_tape_pool
            Aws::StorageGateway::Endpoints::DeleteTapePool.build(context)
          when :delete_volume
            Aws::StorageGateway::Endpoints::DeleteVolume.build(context)
          when :describe_availability_monitor_test
            Aws::StorageGateway::Endpoints::DescribeAvailabilityMonitorTest.build(context)
          when :describe_bandwidth_rate_limit
            Aws::StorageGateway::Endpoints::DescribeBandwidthRateLimit.build(context)
          when :describe_bandwidth_rate_limit_schedule
            Aws::StorageGateway::Endpoints::DescribeBandwidthRateLimitSchedule.build(context)
          when :describe_cache
            Aws::StorageGateway::Endpoints::DescribeCache.build(context)
          when :describe_cached_iscsi_volumes
            Aws::StorageGateway::Endpoints::DescribeCachediSCSIVolumes.build(context)
          when :describe_chap_credentials
            Aws::StorageGateway::Endpoints::DescribeChapCredentials.build(context)
          when :describe_file_system_associations
            Aws::StorageGateway::Endpoints::DescribeFileSystemAssociations.build(context)
          when :describe_gateway_information
            Aws::StorageGateway::Endpoints::DescribeGatewayInformation.build(context)
          when :describe_maintenance_start_time
            Aws::StorageGateway::Endpoints::DescribeMaintenanceStartTime.build(context)
          when :describe_nfs_file_shares
            Aws::StorageGateway::Endpoints::DescribeNFSFileShares.build(context)
          when :describe_smb_file_shares
            Aws::StorageGateway::Endpoints::DescribeSMBFileShares.build(context)
          when :describe_smb_settings
            Aws::StorageGateway::Endpoints::DescribeSMBSettings.build(context)
          when :describe_snapshot_schedule
            Aws::StorageGateway::Endpoints::DescribeSnapshotSchedule.build(context)
          when :describe_stored_iscsi_volumes
            Aws::StorageGateway::Endpoints::DescribeStorediSCSIVolumes.build(context)
          when :describe_tape_archives
            Aws::StorageGateway::Endpoints::DescribeTapeArchives.build(context)
          when :describe_tape_recovery_points
            Aws::StorageGateway::Endpoints::DescribeTapeRecoveryPoints.build(context)
          when :describe_tapes
            Aws::StorageGateway::Endpoints::DescribeTapes.build(context)
          when :describe_upload_buffer
            Aws::StorageGateway::Endpoints::DescribeUploadBuffer.build(context)
          when :describe_vtl_devices
            Aws::StorageGateway::Endpoints::DescribeVTLDevices.build(context)
          when :describe_working_storage
            Aws::StorageGateway::Endpoints::DescribeWorkingStorage.build(context)
          when :detach_volume
            Aws::StorageGateway::Endpoints::DetachVolume.build(context)
          when :disable_gateway
            Aws::StorageGateway::Endpoints::DisableGateway.build(context)
          when :disassociate_file_system
            Aws::StorageGateway::Endpoints::DisassociateFileSystem.build(context)
          when :join_domain
            Aws::StorageGateway::Endpoints::JoinDomain.build(context)
          when :list_automatic_tape_creation_policies
            Aws::StorageGateway::Endpoints::ListAutomaticTapeCreationPolicies.build(context)
          when :list_file_shares
            Aws::StorageGateway::Endpoints::ListFileShares.build(context)
          when :list_file_system_associations
            Aws::StorageGateway::Endpoints::ListFileSystemAssociations.build(context)
          when :list_gateways
            Aws::StorageGateway::Endpoints::ListGateways.build(context)
          when :list_local_disks
            Aws::StorageGateway::Endpoints::ListLocalDisks.build(context)
          when :list_tags_for_resource
            Aws::StorageGateway::Endpoints::ListTagsForResource.build(context)
          when :list_tape_pools
            Aws::StorageGateway::Endpoints::ListTapePools.build(context)
          when :list_tapes
            Aws::StorageGateway::Endpoints::ListTapes.build(context)
          when :list_volume_initiators
            Aws::StorageGateway::Endpoints::ListVolumeInitiators.build(context)
          when :list_volume_recovery_points
            Aws::StorageGateway::Endpoints::ListVolumeRecoveryPoints.build(context)
          when :list_volumes
            Aws::StorageGateway::Endpoints::ListVolumes.build(context)
          when :notify_when_uploaded
            Aws::StorageGateway::Endpoints::NotifyWhenUploaded.build(context)
          when :refresh_cache
            Aws::StorageGateway::Endpoints::RefreshCache.build(context)
          when :remove_tags_from_resource
            Aws::StorageGateway::Endpoints::RemoveTagsFromResource.build(context)
          when :reset_cache
            Aws::StorageGateway::Endpoints::ResetCache.build(context)
          when :retrieve_tape_archive
            Aws::StorageGateway::Endpoints::RetrieveTapeArchive.build(context)
          when :retrieve_tape_recovery_point
            Aws::StorageGateway::Endpoints::RetrieveTapeRecoveryPoint.build(context)
          when :set_local_console_password
            Aws::StorageGateway::Endpoints::SetLocalConsolePassword.build(context)
          when :set_smb_guest_password
            Aws::StorageGateway::Endpoints::SetSMBGuestPassword.build(context)
          when :shutdown_gateway
            Aws::StorageGateway::Endpoints::ShutdownGateway.build(context)
          when :start_availability_monitor_test
            Aws::StorageGateway::Endpoints::StartAvailabilityMonitorTest.build(context)
          when :start_gateway
            Aws::StorageGateway::Endpoints::StartGateway.build(context)
          when :update_automatic_tape_creation_policy
            Aws::StorageGateway::Endpoints::UpdateAutomaticTapeCreationPolicy.build(context)
          when :update_bandwidth_rate_limit
            Aws::StorageGateway::Endpoints::UpdateBandwidthRateLimit.build(context)
          when :update_bandwidth_rate_limit_schedule
            Aws::StorageGateway::Endpoints::UpdateBandwidthRateLimitSchedule.build(context)
          when :update_chap_credentials
            Aws::StorageGateway::Endpoints::UpdateChapCredentials.build(context)
          when :update_file_system_association
            Aws::StorageGateway::Endpoints::UpdateFileSystemAssociation.build(context)
          when :update_gateway_information
            Aws::StorageGateway::Endpoints::UpdateGatewayInformation.build(context)
          when :update_gateway_software_now
            Aws::StorageGateway::Endpoints::UpdateGatewaySoftwareNow.build(context)
          when :update_maintenance_start_time
            Aws::StorageGateway::Endpoints::UpdateMaintenanceStartTime.build(context)
          when :update_nfs_file_share
            Aws::StorageGateway::Endpoints::UpdateNFSFileShare.build(context)
          when :update_smb_file_share
            Aws::StorageGateway::Endpoints::UpdateSMBFileShare.build(context)
          when :update_smb_file_share_visibility
            Aws::StorageGateway::Endpoints::UpdateSMBFileShareVisibility.build(context)
          when :update_smb_local_groups
            Aws::StorageGateway::Endpoints::UpdateSMBLocalGroups.build(context)
          when :update_smb_security_strategy
            Aws::StorageGateway::Endpoints::UpdateSMBSecurityStrategy.build(context)
          when :update_snapshot_schedule
            Aws::StorageGateway::Endpoints::UpdateSnapshotSchedule.build(context)
          when :update_vtl_device_type
            Aws::StorageGateway::Endpoints::UpdateVTLDeviceType.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
