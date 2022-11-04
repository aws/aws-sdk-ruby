# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::LookoutEquipment
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::LookoutEquipment::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::LookoutEquipment::EndpointParameters`'
      ) do |cfg|
        Aws::LookoutEquipment::EndpointProvider.new
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
            Aws::LookoutEquipment::Endpoints::CreateDataset.build(context)
          when :create_inference_scheduler
            Aws::LookoutEquipment::Endpoints::CreateInferenceScheduler.build(context)
          when :create_label
            Aws::LookoutEquipment::Endpoints::CreateLabel.build(context)
          when :create_label_group
            Aws::LookoutEquipment::Endpoints::CreateLabelGroup.build(context)
          when :create_model
            Aws::LookoutEquipment::Endpoints::CreateModel.build(context)
          when :delete_dataset
            Aws::LookoutEquipment::Endpoints::DeleteDataset.build(context)
          when :delete_inference_scheduler
            Aws::LookoutEquipment::Endpoints::DeleteInferenceScheduler.build(context)
          when :delete_label
            Aws::LookoutEquipment::Endpoints::DeleteLabel.build(context)
          when :delete_label_group
            Aws::LookoutEquipment::Endpoints::DeleteLabelGroup.build(context)
          when :delete_model
            Aws::LookoutEquipment::Endpoints::DeleteModel.build(context)
          when :describe_data_ingestion_job
            Aws::LookoutEquipment::Endpoints::DescribeDataIngestionJob.build(context)
          when :describe_dataset
            Aws::LookoutEquipment::Endpoints::DescribeDataset.build(context)
          when :describe_inference_scheduler
            Aws::LookoutEquipment::Endpoints::DescribeInferenceScheduler.build(context)
          when :describe_label
            Aws::LookoutEquipment::Endpoints::DescribeLabel.build(context)
          when :describe_label_group
            Aws::LookoutEquipment::Endpoints::DescribeLabelGroup.build(context)
          when :describe_model
            Aws::LookoutEquipment::Endpoints::DescribeModel.build(context)
          when :list_data_ingestion_jobs
            Aws::LookoutEquipment::Endpoints::ListDataIngestionJobs.build(context)
          when :list_datasets
            Aws::LookoutEquipment::Endpoints::ListDatasets.build(context)
          when :list_inference_events
            Aws::LookoutEquipment::Endpoints::ListInferenceEvents.build(context)
          when :list_inference_executions
            Aws::LookoutEquipment::Endpoints::ListInferenceExecutions.build(context)
          when :list_inference_schedulers
            Aws::LookoutEquipment::Endpoints::ListInferenceSchedulers.build(context)
          when :list_label_groups
            Aws::LookoutEquipment::Endpoints::ListLabelGroups.build(context)
          when :list_labels
            Aws::LookoutEquipment::Endpoints::ListLabels.build(context)
          when :list_models
            Aws::LookoutEquipment::Endpoints::ListModels.build(context)
          when :list_sensor_statistics
            Aws::LookoutEquipment::Endpoints::ListSensorStatistics.build(context)
          when :list_tags_for_resource
            Aws::LookoutEquipment::Endpoints::ListTagsForResource.build(context)
          when :start_data_ingestion_job
            Aws::LookoutEquipment::Endpoints::StartDataIngestionJob.build(context)
          when :start_inference_scheduler
            Aws::LookoutEquipment::Endpoints::StartInferenceScheduler.build(context)
          when :stop_inference_scheduler
            Aws::LookoutEquipment::Endpoints::StopInferenceScheduler.build(context)
          when :tag_resource
            Aws::LookoutEquipment::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::LookoutEquipment::Endpoints::UntagResource.build(context)
          when :update_inference_scheduler
            Aws::LookoutEquipment::Endpoints::UpdateInferenceScheduler.build(context)
          when :update_label_group
            Aws::LookoutEquipment::Endpoints::UpdateLabelGroup.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
