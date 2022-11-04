# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SMS
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SMS::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SMS::EndpointParameters`'
      ) do |cfg|
        Aws::SMS::EndpointProvider.new
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
          when :create_app
            Aws::SMS::Endpoints::CreateApp.build(context)
          when :create_replication_job
            Aws::SMS::Endpoints::CreateReplicationJob.build(context)
          when :delete_app
            Aws::SMS::Endpoints::DeleteApp.build(context)
          when :delete_app_launch_configuration
            Aws::SMS::Endpoints::DeleteAppLaunchConfiguration.build(context)
          when :delete_app_replication_configuration
            Aws::SMS::Endpoints::DeleteAppReplicationConfiguration.build(context)
          when :delete_app_validation_configuration
            Aws::SMS::Endpoints::DeleteAppValidationConfiguration.build(context)
          when :delete_replication_job
            Aws::SMS::Endpoints::DeleteReplicationJob.build(context)
          when :delete_server_catalog
            Aws::SMS::Endpoints::DeleteServerCatalog.build(context)
          when :disassociate_connector
            Aws::SMS::Endpoints::DisassociateConnector.build(context)
          when :generate_change_set
            Aws::SMS::Endpoints::GenerateChangeSet.build(context)
          when :generate_template
            Aws::SMS::Endpoints::GenerateTemplate.build(context)
          when :get_app
            Aws::SMS::Endpoints::GetApp.build(context)
          when :get_app_launch_configuration
            Aws::SMS::Endpoints::GetAppLaunchConfiguration.build(context)
          when :get_app_replication_configuration
            Aws::SMS::Endpoints::GetAppReplicationConfiguration.build(context)
          when :get_app_validation_configuration
            Aws::SMS::Endpoints::GetAppValidationConfiguration.build(context)
          when :get_app_validation_output
            Aws::SMS::Endpoints::GetAppValidationOutput.build(context)
          when :get_connectors
            Aws::SMS::Endpoints::GetConnectors.build(context)
          when :get_replication_jobs
            Aws::SMS::Endpoints::GetReplicationJobs.build(context)
          when :get_replication_runs
            Aws::SMS::Endpoints::GetReplicationRuns.build(context)
          when :get_servers
            Aws::SMS::Endpoints::GetServers.build(context)
          when :import_app_catalog
            Aws::SMS::Endpoints::ImportAppCatalog.build(context)
          when :import_server_catalog
            Aws::SMS::Endpoints::ImportServerCatalog.build(context)
          when :launch_app
            Aws::SMS::Endpoints::LaunchApp.build(context)
          when :list_apps
            Aws::SMS::Endpoints::ListApps.build(context)
          when :notify_app_validation_output
            Aws::SMS::Endpoints::NotifyAppValidationOutput.build(context)
          when :put_app_launch_configuration
            Aws::SMS::Endpoints::PutAppLaunchConfiguration.build(context)
          when :put_app_replication_configuration
            Aws::SMS::Endpoints::PutAppReplicationConfiguration.build(context)
          when :put_app_validation_configuration
            Aws::SMS::Endpoints::PutAppValidationConfiguration.build(context)
          when :start_app_replication
            Aws::SMS::Endpoints::StartAppReplication.build(context)
          when :start_on_demand_app_replication
            Aws::SMS::Endpoints::StartOnDemandAppReplication.build(context)
          when :start_on_demand_replication_run
            Aws::SMS::Endpoints::StartOnDemandReplicationRun.build(context)
          when :stop_app_replication
            Aws::SMS::Endpoints::StopAppReplication.build(context)
          when :terminate_app
            Aws::SMS::Endpoints::TerminateApp.build(context)
          when :update_app
            Aws::SMS::Endpoints::UpdateApp.build(context)
          when :update_replication_job
            Aws::SMS::Endpoints::UpdateReplicationJob.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
