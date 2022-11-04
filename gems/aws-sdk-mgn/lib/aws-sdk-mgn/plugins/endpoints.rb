# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Mgn
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Mgn::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Mgn::EndpointParameters`'
      ) do |cfg|
        Aws::Mgn::EndpointProvider.new
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
          when :change_server_life_cycle_state
            Aws::Mgn::Endpoints::ChangeServerLifeCycleState.build(context)
          when :create_launch_configuration_template
            Aws::Mgn::Endpoints::CreateLaunchConfigurationTemplate.build(context)
          when :create_replication_configuration_template
            Aws::Mgn::Endpoints::CreateReplicationConfigurationTemplate.build(context)
          when :delete_job
            Aws::Mgn::Endpoints::DeleteJob.build(context)
          when :delete_launch_configuration_template
            Aws::Mgn::Endpoints::DeleteLaunchConfigurationTemplate.build(context)
          when :delete_replication_configuration_template
            Aws::Mgn::Endpoints::DeleteReplicationConfigurationTemplate.build(context)
          when :delete_source_server
            Aws::Mgn::Endpoints::DeleteSourceServer.build(context)
          when :delete_vcenter_client
            Aws::Mgn::Endpoints::DeleteVcenterClient.build(context)
          when :describe_job_log_items
            Aws::Mgn::Endpoints::DescribeJobLogItems.build(context)
          when :describe_jobs
            Aws::Mgn::Endpoints::DescribeJobs.build(context)
          when :describe_launch_configuration_templates
            Aws::Mgn::Endpoints::DescribeLaunchConfigurationTemplates.build(context)
          when :describe_replication_configuration_templates
            Aws::Mgn::Endpoints::DescribeReplicationConfigurationTemplates.build(context)
          when :describe_source_servers
            Aws::Mgn::Endpoints::DescribeSourceServers.build(context)
          when :describe_vcenter_clients
            Aws::Mgn::Endpoints::DescribeVcenterClients.build(context)
          when :disconnect_from_service
            Aws::Mgn::Endpoints::DisconnectFromService.build(context)
          when :finalize_cutover
            Aws::Mgn::Endpoints::FinalizeCutover.build(context)
          when :get_launch_configuration
            Aws::Mgn::Endpoints::GetLaunchConfiguration.build(context)
          when :get_replication_configuration
            Aws::Mgn::Endpoints::GetReplicationConfiguration.build(context)
          when :initialize_service
            Aws::Mgn::Endpoints::InitializeService.build(context)
          when :list_tags_for_resource
            Aws::Mgn::Endpoints::ListTagsForResource.build(context)
          when :mark_as_archived
            Aws::Mgn::Endpoints::MarkAsArchived.build(context)
          when :retry_data_replication
            Aws::Mgn::Endpoints::RetryDataReplication.build(context)
          when :start_cutover
            Aws::Mgn::Endpoints::StartCutover.build(context)
          when :start_replication
            Aws::Mgn::Endpoints::StartReplication.build(context)
          when :start_test
            Aws::Mgn::Endpoints::StartTest.build(context)
          when :tag_resource
            Aws::Mgn::Endpoints::TagResource.build(context)
          when :terminate_target_instances
            Aws::Mgn::Endpoints::TerminateTargetInstances.build(context)
          when :untag_resource
            Aws::Mgn::Endpoints::UntagResource.build(context)
          when :update_launch_configuration
            Aws::Mgn::Endpoints::UpdateLaunchConfiguration.build(context)
          when :update_launch_configuration_template
            Aws::Mgn::Endpoints::UpdateLaunchConfigurationTemplate.build(context)
          when :update_replication_configuration
            Aws::Mgn::Endpoints::UpdateReplicationConfiguration.build(context)
          when :update_replication_configuration_template
            Aws::Mgn::Endpoints::UpdateReplicationConfigurationTemplate.build(context)
          when :update_source_server_replication_type
            Aws::Mgn::Endpoints::UpdateSourceServerReplicationType.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
