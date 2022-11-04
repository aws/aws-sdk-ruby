# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::EFS
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::EFS::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::EFS::EndpointParameters`'
      ) do |cfg|
        Aws::EFS::EndpointProvider.new
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
          when :create_access_point
            Aws::EFS::Endpoints::CreateAccessPoint.build(context)
          when :create_file_system
            Aws::EFS::Endpoints::CreateFileSystem.build(context)
          when :create_mount_target
            Aws::EFS::Endpoints::CreateMountTarget.build(context)
          when :create_replication_configuration
            Aws::EFS::Endpoints::CreateReplicationConfiguration.build(context)
          when :create_tags
            Aws::EFS::Endpoints::CreateTags.build(context)
          when :delete_access_point
            Aws::EFS::Endpoints::DeleteAccessPoint.build(context)
          when :delete_file_system
            Aws::EFS::Endpoints::DeleteFileSystem.build(context)
          when :delete_file_system_policy
            Aws::EFS::Endpoints::DeleteFileSystemPolicy.build(context)
          when :delete_mount_target
            Aws::EFS::Endpoints::DeleteMountTarget.build(context)
          when :delete_replication_configuration
            Aws::EFS::Endpoints::DeleteReplicationConfiguration.build(context)
          when :delete_tags
            Aws::EFS::Endpoints::DeleteTags.build(context)
          when :describe_access_points
            Aws::EFS::Endpoints::DescribeAccessPoints.build(context)
          when :describe_account_preferences
            Aws::EFS::Endpoints::DescribeAccountPreferences.build(context)
          when :describe_backup_policy
            Aws::EFS::Endpoints::DescribeBackupPolicy.build(context)
          when :describe_file_system_policy
            Aws::EFS::Endpoints::DescribeFileSystemPolicy.build(context)
          when :describe_file_systems
            Aws::EFS::Endpoints::DescribeFileSystems.build(context)
          when :describe_lifecycle_configuration
            Aws::EFS::Endpoints::DescribeLifecycleConfiguration.build(context)
          when :describe_mount_target_security_groups
            Aws::EFS::Endpoints::DescribeMountTargetSecurityGroups.build(context)
          when :describe_mount_targets
            Aws::EFS::Endpoints::DescribeMountTargets.build(context)
          when :describe_replication_configurations
            Aws::EFS::Endpoints::DescribeReplicationConfigurations.build(context)
          when :describe_tags
            Aws::EFS::Endpoints::DescribeTags.build(context)
          when :list_tags_for_resource
            Aws::EFS::Endpoints::ListTagsForResource.build(context)
          when :modify_mount_target_security_groups
            Aws::EFS::Endpoints::ModifyMountTargetSecurityGroups.build(context)
          when :put_account_preferences
            Aws::EFS::Endpoints::PutAccountPreferences.build(context)
          when :put_backup_policy
            Aws::EFS::Endpoints::PutBackupPolicy.build(context)
          when :put_file_system_policy
            Aws::EFS::Endpoints::PutFileSystemPolicy.build(context)
          when :put_lifecycle_configuration
            Aws::EFS::Endpoints::PutLifecycleConfiguration.build(context)
          when :tag_resource
            Aws::EFS::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::EFS::Endpoints::UntagResource.build(context)
          when :update_file_system
            Aws::EFS::Endpoints::UpdateFileSystem.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
