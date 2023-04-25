# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DataSync
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::DataSync::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::DataSync::EndpointParameters`'
      ) do |cfg|
        Aws::DataSync::EndpointProvider.new
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
          when :add_storage_system
            Aws::DataSync::Endpoints::AddStorageSystem.build(context)
          when :cancel_task_execution
            Aws::DataSync::Endpoints::CancelTaskExecution.build(context)
          when :create_agent
            Aws::DataSync::Endpoints::CreateAgent.build(context)
          when :create_location_efs
            Aws::DataSync::Endpoints::CreateLocationEfs.build(context)
          when :create_location_fsx_lustre
            Aws::DataSync::Endpoints::CreateLocationFsxLustre.build(context)
          when :create_location_fsx_ontap
            Aws::DataSync::Endpoints::CreateLocationFsxOntap.build(context)
          when :create_location_fsx_open_zfs
            Aws::DataSync::Endpoints::CreateLocationFsxOpenZfs.build(context)
          when :create_location_fsx_windows
            Aws::DataSync::Endpoints::CreateLocationFsxWindows.build(context)
          when :create_location_hdfs
            Aws::DataSync::Endpoints::CreateLocationHdfs.build(context)
          when :create_location_nfs
            Aws::DataSync::Endpoints::CreateLocationNfs.build(context)
          when :create_location_object_storage
            Aws::DataSync::Endpoints::CreateLocationObjectStorage.build(context)
          when :create_location_s3
            Aws::DataSync::Endpoints::CreateLocationS3.build(context)
          when :create_location_smb
            Aws::DataSync::Endpoints::CreateLocationSmb.build(context)
          when :create_task
            Aws::DataSync::Endpoints::CreateTask.build(context)
          when :delete_agent
            Aws::DataSync::Endpoints::DeleteAgent.build(context)
          when :delete_location
            Aws::DataSync::Endpoints::DeleteLocation.build(context)
          when :delete_task
            Aws::DataSync::Endpoints::DeleteTask.build(context)
          when :describe_agent
            Aws::DataSync::Endpoints::DescribeAgent.build(context)
          when :describe_discovery_job
            Aws::DataSync::Endpoints::DescribeDiscoveryJob.build(context)
          when :describe_location_efs
            Aws::DataSync::Endpoints::DescribeLocationEfs.build(context)
          when :describe_location_fsx_lustre
            Aws::DataSync::Endpoints::DescribeLocationFsxLustre.build(context)
          when :describe_location_fsx_ontap
            Aws::DataSync::Endpoints::DescribeLocationFsxOntap.build(context)
          when :describe_location_fsx_open_zfs
            Aws::DataSync::Endpoints::DescribeLocationFsxOpenZfs.build(context)
          when :describe_location_fsx_windows
            Aws::DataSync::Endpoints::DescribeLocationFsxWindows.build(context)
          when :describe_location_hdfs
            Aws::DataSync::Endpoints::DescribeLocationHdfs.build(context)
          when :describe_location_nfs
            Aws::DataSync::Endpoints::DescribeLocationNfs.build(context)
          when :describe_location_object_storage
            Aws::DataSync::Endpoints::DescribeLocationObjectStorage.build(context)
          when :describe_location_s3
            Aws::DataSync::Endpoints::DescribeLocationS3.build(context)
          when :describe_location_smb
            Aws::DataSync::Endpoints::DescribeLocationSmb.build(context)
          when :describe_storage_system
            Aws::DataSync::Endpoints::DescribeStorageSystem.build(context)
          when :describe_storage_system_resource_metrics
            Aws::DataSync::Endpoints::DescribeStorageSystemResourceMetrics.build(context)
          when :describe_storage_system_resources
            Aws::DataSync::Endpoints::DescribeStorageSystemResources.build(context)
          when :describe_task
            Aws::DataSync::Endpoints::DescribeTask.build(context)
          when :describe_task_execution
            Aws::DataSync::Endpoints::DescribeTaskExecution.build(context)
          when :generate_recommendations
            Aws::DataSync::Endpoints::GenerateRecommendations.build(context)
          when :list_agents
            Aws::DataSync::Endpoints::ListAgents.build(context)
          when :list_discovery_jobs
            Aws::DataSync::Endpoints::ListDiscoveryJobs.build(context)
          when :list_locations
            Aws::DataSync::Endpoints::ListLocations.build(context)
          when :list_storage_systems
            Aws::DataSync::Endpoints::ListStorageSystems.build(context)
          when :list_tags_for_resource
            Aws::DataSync::Endpoints::ListTagsForResource.build(context)
          when :list_task_executions
            Aws::DataSync::Endpoints::ListTaskExecutions.build(context)
          when :list_tasks
            Aws::DataSync::Endpoints::ListTasks.build(context)
          when :remove_storage_system
            Aws::DataSync::Endpoints::RemoveStorageSystem.build(context)
          when :start_discovery_job
            Aws::DataSync::Endpoints::StartDiscoveryJob.build(context)
          when :start_task_execution
            Aws::DataSync::Endpoints::StartTaskExecution.build(context)
          when :stop_discovery_job
            Aws::DataSync::Endpoints::StopDiscoveryJob.build(context)
          when :tag_resource
            Aws::DataSync::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::DataSync::Endpoints::UntagResource.build(context)
          when :update_agent
            Aws::DataSync::Endpoints::UpdateAgent.build(context)
          when :update_discovery_job
            Aws::DataSync::Endpoints::UpdateDiscoveryJob.build(context)
          when :update_location_hdfs
            Aws::DataSync::Endpoints::UpdateLocationHdfs.build(context)
          when :update_location_nfs
            Aws::DataSync::Endpoints::UpdateLocationNfs.build(context)
          when :update_location_object_storage
            Aws::DataSync::Endpoints::UpdateLocationObjectStorage.build(context)
          when :update_location_smb
            Aws::DataSync::Endpoints::UpdateLocationSmb.build(context)
          when :update_storage_system
            Aws::DataSync::Endpoints::UpdateStorageSystem.build(context)
          when :update_task
            Aws::DataSync::Endpoints::UpdateTask.build(context)
          when :update_task_execution
            Aws::DataSync::Endpoints::UpdateTaskExecution.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
