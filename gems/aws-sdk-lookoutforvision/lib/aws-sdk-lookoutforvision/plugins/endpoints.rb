# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::LookoutforVision
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::LookoutforVision::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::LookoutforVision::EndpointParameters`'
      ) do |cfg|
        Aws::LookoutforVision::EndpointProvider.new
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
          when :create_dataset
            Aws::LookoutforVision::Endpoints::CreateDataset.build(context)
          when :create_model
            Aws::LookoutforVision::Endpoints::CreateModel.build(context)
          when :create_project
            Aws::LookoutforVision::Endpoints::CreateProject.build(context)
          when :delete_dataset
            Aws::LookoutforVision::Endpoints::DeleteDataset.build(context)
          when :delete_model
            Aws::LookoutforVision::Endpoints::DeleteModel.build(context)
          when :delete_project
            Aws::LookoutforVision::Endpoints::DeleteProject.build(context)
          when :describe_dataset
            Aws::LookoutforVision::Endpoints::DescribeDataset.build(context)
          when :describe_model
            Aws::LookoutforVision::Endpoints::DescribeModel.build(context)
          when :describe_model_packaging_job
            Aws::LookoutforVision::Endpoints::DescribeModelPackagingJob.build(context)
          when :describe_project
            Aws::LookoutforVision::Endpoints::DescribeProject.build(context)
          when :detect_anomalies
            Aws::LookoutforVision::Endpoints::DetectAnomalies.build(context)
          when :list_dataset_entries
            Aws::LookoutforVision::Endpoints::ListDatasetEntries.build(context)
          when :list_model_packaging_jobs
            Aws::LookoutforVision::Endpoints::ListModelPackagingJobs.build(context)
          when :list_models
            Aws::LookoutforVision::Endpoints::ListModels.build(context)
          when :list_projects
            Aws::LookoutforVision::Endpoints::ListProjects.build(context)
          when :list_tags_for_resource
            Aws::LookoutforVision::Endpoints::ListTagsForResource.build(context)
          when :start_model
            Aws::LookoutforVision::Endpoints::StartModel.build(context)
          when :start_model_packaging_job
            Aws::LookoutforVision::Endpoints::StartModelPackagingJob.build(context)
          when :stop_model
            Aws::LookoutforVision::Endpoints::StopModel.build(context)
          when :tag_resource
            Aws::LookoutforVision::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::LookoutforVision::Endpoints::UntagResource.build(context)
          when :update_dataset_entries
            Aws::LookoutforVision::Endpoints::UpdateDatasetEntries.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
