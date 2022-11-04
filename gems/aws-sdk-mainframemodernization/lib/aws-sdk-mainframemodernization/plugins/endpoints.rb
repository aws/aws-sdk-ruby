# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MainframeModernization
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MainframeModernization::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MainframeModernization::EndpointParameters`'
      ) do |cfg|
        Aws::MainframeModernization::EndpointProvider.new
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
          when :cancel_batch_job_execution
            Aws::MainframeModernization::Endpoints::CancelBatchJobExecution.build(context)
          when :create_application
            Aws::MainframeModernization::Endpoints::CreateApplication.build(context)
          when :create_data_set_import_task
            Aws::MainframeModernization::Endpoints::CreateDataSetImportTask.build(context)
          when :create_deployment
            Aws::MainframeModernization::Endpoints::CreateDeployment.build(context)
          when :create_environment
            Aws::MainframeModernization::Endpoints::CreateEnvironment.build(context)
          when :delete_application
            Aws::MainframeModernization::Endpoints::DeleteApplication.build(context)
          when :delete_application_from_environment
            Aws::MainframeModernization::Endpoints::DeleteApplicationFromEnvironment.build(context)
          when :delete_environment
            Aws::MainframeModernization::Endpoints::DeleteEnvironment.build(context)
          when :get_application
            Aws::MainframeModernization::Endpoints::GetApplication.build(context)
          when :get_application_version
            Aws::MainframeModernization::Endpoints::GetApplicationVersion.build(context)
          when :get_batch_job_execution
            Aws::MainframeModernization::Endpoints::GetBatchJobExecution.build(context)
          when :get_data_set_details
            Aws::MainframeModernization::Endpoints::GetDataSetDetails.build(context)
          when :get_data_set_import_task
            Aws::MainframeModernization::Endpoints::GetDataSetImportTask.build(context)
          when :get_deployment
            Aws::MainframeModernization::Endpoints::GetDeployment.build(context)
          when :get_environment
            Aws::MainframeModernization::Endpoints::GetEnvironment.build(context)
          when :list_application_versions
            Aws::MainframeModernization::Endpoints::ListApplicationVersions.build(context)
          when :list_applications
            Aws::MainframeModernization::Endpoints::ListApplications.build(context)
          when :list_batch_job_definitions
            Aws::MainframeModernization::Endpoints::ListBatchJobDefinitions.build(context)
          when :list_batch_job_executions
            Aws::MainframeModernization::Endpoints::ListBatchJobExecutions.build(context)
          when :list_data_set_import_history
            Aws::MainframeModernization::Endpoints::ListDataSetImportHistory.build(context)
          when :list_data_sets
            Aws::MainframeModernization::Endpoints::ListDataSets.build(context)
          when :list_deployments
            Aws::MainframeModernization::Endpoints::ListDeployments.build(context)
          when :list_engine_versions
            Aws::MainframeModernization::Endpoints::ListEngineVersions.build(context)
          when :list_environments
            Aws::MainframeModernization::Endpoints::ListEnvironments.build(context)
          when :list_tags_for_resource
            Aws::MainframeModernization::Endpoints::ListTagsForResource.build(context)
          when :start_application
            Aws::MainframeModernization::Endpoints::StartApplication.build(context)
          when :start_batch_job
            Aws::MainframeModernization::Endpoints::StartBatchJob.build(context)
          when :stop_application
            Aws::MainframeModernization::Endpoints::StopApplication.build(context)
          when :tag_resource
            Aws::MainframeModernization::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::MainframeModernization::Endpoints::UntagResource.build(context)
          when :update_application
            Aws::MainframeModernization::Endpoints::UpdateApplication.build(context)
          when :update_environment
            Aws::MainframeModernization::Endpoints::UpdateEnvironment.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
