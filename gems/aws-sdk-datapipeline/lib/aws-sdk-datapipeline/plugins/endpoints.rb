# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DataPipeline
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::DataPipeline::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::DataPipeline::EndpointParameters`'
      ) do |cfg|
        Aws::DataPipeline::EndpointProvider.new
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
          when :activate_pipeline
            Aws::DataPipeline::Endpoints::ActivatePipeline.build(context)
          when :add_tags
            Aws::DataPipeline::Endpoints::AddTags.build(context)
          when :create_pipeline
            Aws::DataPipeline::Endpoints::CreatePipeline.build(context)
          when :deactivate_pipeline
            Aws::DataPipeline::Endpoints::DeactivatePipeline.build(context)
          when :delete_pipeline
            Aws::DataPipeline::Endpoints::DeletePipeline.build(context)
          when :describe_objects
            Aws::DataPipeline::Endpoints::DescribeObjects.build(context)
          when :describe_pipelines
            Aws::DataPipeline::Endpoints::DescribePipelines.build(context)
          when :evaluate_expression
            Aws::DataPipeline::Endpoints::EvaluateExpression.build(context)
          when :get_pipeline_definition
            Aws::DataPipeline::Endpoints::GetPipelineDefinition.build(context)
          when :list_pipelines
            Aws::DataPipeline::Endpoints::ListPipelines.build(context)
          when :poll_for_task
            Aws::DataPipeline::Endpoints::PollForTask.build(context)
          when :put_pipeline_definition
            Aws::DataPipeline::Endpoints::PutPipelineDefinition.build(context)
          when :query_objects
            Aws::DataPipeline::Endpoints::QueryObjects.build(context)
          when :remove_tags
            Aws::DataPipeline::Endpoints::RemoveTags.build(context)
          when :report_task_progress
            Aws::DataPipeline::Endpoints::ReportTaskProgress.build(context)
          when :report_task_runner_heartbeat
            Aws::DataPipeline::Endpoints::ReportTaskRunnerHeartbeat.build(context)
          when :set_status
            Aws::DataPipeline::Endpoints::SetStatus.build(context)
          when :set_task_status
            Aws::DataPipeline::Endpoints::SetTaskStatus.build(context)
          when :validate_pipeline_definition
            Aws::DataPipeline::Endpoints::ValidatePipelineDefinition.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
