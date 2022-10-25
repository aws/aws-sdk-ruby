# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoTAnalytics
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IoTAnalytics::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IoTAnalytics::EndpointParameters`'
      ) do |cfg|
        Aws::IoTAnalytics::EndpointProvider.new
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
          when :batch_put_message
            Aws::IoTAnalytics::Endpoints::BatchPutMessage.build(context)
          when :cancel_pipeline_reprocessing
            Aws::IoTAnalytics::Endpoints::CancelPipelineReprocessing.build(context)
          when :create_channel
            Aws::IoTAnalytics::Endpoints::CreateChannel.build(context)
          when :create_dataset
            Aws::IoTAnalytics::Endpoints::CreateDataset.build(context)
          when :create_dataset_content
            Aws::IoTAnalytics::Endpoints::CreateDatasetContent.build(context)
          when :create_datastore
            Aws::IoTAnalytics::Endpoints::CreateDatastore.build(context)
          when :create_pipeline
            Aws::IoTAnalytics::Endpoints::CreatePipeline.build(context)
          when :delete_channel
            Aws::IoTAnalytics::Endpoints::DeleteChannel.build(context)
          when :delete_dataset
            Aws::IoTAnalytics::Endpoints::DeleteDataset.build(context)
          when :delete_dataset_content
            Aws::IoTAnalytics::Endpoints::DeleteDatasetContent.build(context)
          when :delete_datastore
            Aws::IoTAnalytics::Endpoints::DeleteDatastore.build(context)
          when :delete_pipeline
            Aws::IoTAnalytics::Endpoints::DeletePipeline.build(context)
          when :describe_channel
            Aws::IoTAnalytics::Endpoints::DescribeChannel.build(context)
          when :describe_dataset
            Aws::IoTAnalytics::Endpoints::DescribeDataset.build(context)
          when :describe_datastore
            Aws::IoTAnalytics::Endpoints::DescribeDatastore.build(context)
          when :describe_logging_options
            Aws::IoTAnalytics::Endpoints::DescribeLoggingOptions.build(context)
          when :describe_pipeline
            Aws::IoTAnalytics::Endpoints::DescribePipeline.build(context)
          when :get_dataset_content
            Aws::IoTAnalytics::Endpoints::GetDatasetContent.build(context)
          when :list_channels
            Aws::IoTAnalytics::Endpoints::ListChannels.build(context)
          when :list_dataset_contents
            Aws::IoTAnalytics::Endpoints::ListDatasetContents.build(context)
          when :list_datasets
            Aws::IoTAnalytics::Endpoints::ListDatasets.build(context)
          when :list_datastores
            Aws::IoTAnalytics::Endpoints::ListDatastores.build(context)
          when :list_pipelines
            Aws::IoTAnalytics::Endpoints::ListPipelines.build(context)
          when :list_tags_for_resource
            Aws::IoTAnalytics::Endpoints::ListTagsForResource.build(context)
          when :put_logging_options
            Aws::IoTAnalytics::Endpoints::PutLoggingOptions.build(context)
          when :run_pipeline_activity
            Aws::IoTAnalytics::Endpoints::RunPipelineActivity.build(context)
          when :sample_channel_data
            Aws::IoTAnalytics::Endpoints::SampleChannelData.build(context)
          when :start_pipeline_reprocessing
            Aws::IoTAnalytics::Endpoints::StartPipelineReprocessing.build(context)
          when :tag_resource
            Aws::IoTAnalytics::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::IoTAnalytics::Endpoints::UntagResource.build(context)
          when :update_channel
            Aws::IoTAnalytics::Endpoints::UpdateChannel.build(context)
          when :update_dataset
            Aws::IoTAnalytics::Endpoints::UpdateDataset.build(context)
          when :update_datastore
            Aws::IoTAnalytics::Endpoints::UpdateDatastore.build(context)
          when :update_pipeline
            Aws::IoTAnalytics::Endpoints::UpdatePipeline.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
