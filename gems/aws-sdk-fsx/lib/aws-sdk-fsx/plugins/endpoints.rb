# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::FSx
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::FSx::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::FSx::EndpointParameters`'
      ) do |cfg|
        Aws::FSx::EndpointProvider.new
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
          when :associate_file_system_aliases
            Aws::FSx::Endpoints::AssociateFileSystemAliases.build(context)
          when :cancel_data_repository_task
            Aws::FSx::Endpoints::CancelDataRepositoryTask.build(context)
          when :copy_backup
            Aws::FSx::Endpoints::CopyBackup.build(context)
          when :create_backup
            Aws::FSx::Endpoints::CreateBackup.build(context)
          when :create_data_repository_association
            Aws::FSx::Endpoints::CreateDataRepositoryAssociation.build(context)
          when :create_data_repository_task
            Aws::FSx::Endpoints::CreateDataRepositoryTask.build(context)
          when :create_file_cache
            Aws::FSx::Endpoints::CreateFileCache.build(context)
          when :create_file_system
            Aws::FSx::Endpoints::CreateFileSystem.build(context)
          when :create_file_system_from_backup
            Aws::FSx::Endpoints::CreateFileSystemFromBackup.build(context)
          when :create_snapshot
            Aws::FSx::Endpoints::CreateSnapshot.build(context)
          when :create_storage_virtual_machine
            Aws::FSx::Endpoints::CreateStorageVirtualMachine.build(context)
          when :create_volume
            Aws::FSx::Endpoints::CreateVolume.build(context)
          when :create_volume_from_backup
            Aws::FSx::Endpoints::CreateVolumeFromBackup.build(context)
          when :delete_backup
            Aws::FSx::Endpoints::DeleteBackup.build(context)
          when :delete_data_repository_association
            Aws::FSx::Endpoints::DeleteDataRepositoryAssociation.build(context)
          when :delete_file_cache
            Aws::FSx::Endpoints::DeleteFileCache.build(context)
          when :delete_file_system
            Aws::FSx::Endpoints::DeleteFileSystem.build(context)
          when :delete_snapshot
            Aws::FSx::Endpoints::DeleteSnapshot.build(context)
          when :delete_storage_virtual_machine
            Aws::FSx::Endpoints::DeleteStorageVirtualMachine.build(context)
          when :delete_volume
            Aws::FSx::Endpoints::DeleteVolume.build(context)
          when :describe_backups
            Aws::FSx::Endpoints::DescribeBackups.build(context)
          when :describe_data_repository_associations
            Aws::FSx::Endpoints::DescribeDataRepositoryAssociations.build(context)
          when :describe_data_repository_tasks
            Aws::FSx::Endpoints::DescribeDataRepositoryTasks.build(context)
          when :describe_file_caches
            Aws::FSx::Endpoints::DescribeFileCaches.build(context)
          when :describe_file_system_aliases
            Aws::FSx::Endpoints::DescribeFileSystemAliases.build(context)
          when :describe_file_systems
            Aws::FSx::Endpoints::DescribeFileSystems.build(context)
          when :describe_snapshots
            Aws::FSx::Endpoints::DescribeSnapshots.build(context)
          when :describe_storage_virtual_machines
            Aws::FSx::Endpoints::DescribeStorageVirtualMachines.build(context)
          when :describe_volumes
            Aws::FSx::Endpoints::DescribeVolumes.build(context)
          when :disassociate_file_system_aliases
            Aws::FSx::Endpoints::DisassociateFileSystemAliases.build(context)
          when :list_tags_for_resource
            Aws::FSx::Endpoints::ListTagsForResource.build(context)
          when :release_file_system_nfs_v3_locks
            Aws::FSx::Endpoints::ReleaseFileSystemNfsV3Locks.build(context)
          when :restore_volume_from_snapshot
            Aws::FSx::Endpoints::RestoreVolumeFromSnapshot.build(context)
          when :tag_resource
            Aws::FSx::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::FSx::Endpoints::UntagResource.build(context)
          when :update_data_repository_association
            Aws::FSx::Endpoints::UpdateDataRepositoryAssociation.build(context)
          when :update_file_cache
            Aws::FSx::Endpoints::UpdateFileCache.build(context)
          when :update_file_system
            Aws::FSx::Endpoints::UpdateFileSystem.build(context)
          when :update_snapshot
            Aws::FSx::Endpoints::UpdateSnapshot.build(context)
          when :update_storage_virtual_machine
            Aws::FSx::Endpoints::UpdateStorageVirtualMachine.build(context)
          when :update_volume
            Aws::FSx::Endpoints::UpdateVolume.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
