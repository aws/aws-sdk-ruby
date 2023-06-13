# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Drs
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Drs::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Drs::EndpointParameters`'
      ) do |cfg|
        Aws::Drs::EndpointProvider.new
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
          when :associate_source_network_stack
            Aws::Drs::Endpoints::AssociateSourceNetworkStack.build(context)
          when :create_extended_source_server
            Aws::Drs::Endpoints::CreateExtendedSourceServer.build(context)
          when :create_launch_configuration_template
            Aws::Drs::Endpoints::CreateLaunchConfigurationTemplate.build(context)
          when :create_replication_configuration_template
            Aws::Drs::Endpoints::CreateReplicationConfigurationTemplate.build(context)
          when :create_source_network
            Aws::Drs::Endpoints::CreateSourceNetwork.build(context)
          when :delete_job
            Aws::Drs::Endpoints::DeleteJob.build(context)
          when :delete_launch_configuration_template
            Aws::Drs::Endpoints::DeleteLaunchConfigurationTemplate.build(context)
          when :delete_recovery_instance
            Aws::Drs::Endpoints::DeleteRecoveryInstance.build(context)
          when :delete_replication_configuration_template
            Aws::Drs::Endpoints::DeleteReplicationConfigurationTemplate.build(context)
          when :delete_source_network
            Aws::Drs::Endpoints::DeleteSourceNetwork.build(context)
          when :delete_source_server
            Aws::Drs::Endpoints::DeleteSourceServer.build(context)
          when :describe_job_log_items
            Aws::Drs::Endpoints::DescribeJobLogItems.build(context)
          when :describe_jobs
            Aws::Drs::Endpoints::DescribeJobs.build(context)
          when :describe_launch_configuration_templates
            Aws::Drs::Endpoints::DescribeLaunchConfigurationTemplates.build(context)
          when :describe_recovery_instances
            Aws::Drs::Endpoints::DescribeRecoveryInstances.build(context)
          when :describe_recovery_snapshots
            Aws::Drs::Endpoints::DescribeRecoverySnapshots.build(context)
          when :describe_replication_configuration_templates
            Aws::Drs::Endpoints::DescribeReplicationConfigurationTemplates.build(context)
          when :describe_source_networks
            Aws::Drs::Endpoints::DescribeSourceNetworks.build(context)
          when :describe_source_servers
            Aws::Drs::Endpoints::DescribeSourceServers.build(context)
          when :disconnect_recovery_instance
            Aws::Drs::Endpoints::DisconnectRecoveryInstance.build(context)
          when :disconnect_source_server
            Aws::Drs::Endpoints::DisconnectSourceServer.build(context)
          when :export_source_network_cfn_template
            Aws::Drs::Endpoints::ExportSourceNetworkCfnTemplate.build(context)
          when :get_failback_replication_configuration
            Aws::Drs::Endpoints::GetFailbackReplicationConfiguration.build(context)
          when :get_launch_configuration
            Aws::Drs::Endpoints::GetLaunchConfiguration.build(context)
          when :get_replication_configuration
            Aws::Drs::Endpoints::GetReplicationConfiguration.build(context)
          when :initialize_service
            Aws::Drs::Endpoints::InitializeService.build(context)
          when :list_extensible_source_servers
            Aws::Drs::Endpoints::ListExtensibleSourceServers.build(context)
          when :list_staging_accounts
            Aws::Drs::Endpoints::ListStagingAccounts.build(context)
          when :list_tags_for_resource
            Aws::Drs::Endpoints::ListTagsForResource.build(context)
          when :retry_data_replication
            Aws::Drs::Endpoints::RetryDataReplication.build(context)
          when :reverse_replication
            Aws::Drs::Endpoints::ReverseReplication.build(context)
          when :start_failback_launch
            Aws::Drs::Endpoints::StartFailbackLaunch.build(context)
          when :start_recovery
            Aws::Drs::Endpoints::StartRecovery.build(context)
          when :start_replication
            Aws::Drs::Endpoints::StartReplication.build(context)
          when :start_source_network_recovery
            Aws::Drs::Endpoints::StartSourceNetworkRecovery.build(context)
          when :start_source_network_replication
            Aws::Drs::Endpoints::StartSourceNetworkReplication.build(context)
          when :stop_failback
            Aws::Drs::Endpoints::StopFailback.build(context)
          when :stop_replication
            Aws::Drs::Endpoints::StopReplication.build(context)
          when :stop_source_network_replication
            Aws::Drs::Endpoints::StopSourceNetworkReplication.build(context)
          when :tag_resource
            Aws::Drs::Endpoints::TagResource.build(context)
          when :terminate_recovery_instances
            Aws::Drs::Endpoints::TerminateRecoveryInstances.build(context)
          when :untag_resource
            Aws::Drs::Endpoints::UntagResource.build(context)
          when :update_failback_replication_configuration
            Aws::Drs::Endpoints::UpdateFailbackReplicationConfiguration.build(context)
          when :update_launch_configuration
            Aws::Drs::Endpoints::UpdateLaunchConfiguration.build(context)
          when :update_launch_configuration_template
            Aws::Drs::Endpoints::UpdateLaunchConfigurationTemplate.build(context)
          when :update_replication_configuration
            Aws::Drs::Endpoints::UpdateReplicationConfiguration.build(context)
          when :update_replication_configuration_template
            Aws::Drs::Endpoints::UpdateReplicationConfigurationTemplate.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
