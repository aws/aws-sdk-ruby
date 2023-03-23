# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ChimeSDKMediaPipelines
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ChimeSDKMediaPipelines::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ChimeSDKMediaPipelines::EndpointParameters`'
      ) do |cfg|
        Aws::ChimeSDKMediaPipelines::EndpointProvider.new
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
          when :create_media_capture_pipeline
            Aws::ChimeSDKMediaPipelines::Endpoints::CreateMediaCapturePipeline.build(context)
          when :create_media_concatenation_pipeline
            Aws::ChimeSDKMediaPipelines::Endpoints::CreateMediaConcatenationPipeline.build(context)
          when :create_media_insights_pipeline
            Aws::ChimeSDKMediaPipelines::Endpoints::CreateMediaInsightsPipeline.build(context)
          when :create_media_insights_pipeline_configuration
            Aws::ChimeSDKMediaPipelines::Endpoints::CreateMediaInsightsPipelineConfiguration.build(context)
          when :create_media_live_connector_pipeline
            Aws::ChimeSDKMediaPipelines::Endpoints::CreateMediaLiveConnectorPipeline.build(context)
          when :delete_media_capture_pipeline
            Aws::ChimeSDKMediaPipelines::Endpoints::DeleteMediaCapturePipeline.build(context)
          when :delete_media_insights_pipeline_configuration
            Aws::ChimeSDKMediaPipelines::Endpoints::DeleteMediaInsightsPipelineConfiguration.build(context)
          when :delete_media_pipeline
            Aws::ChimeSDKMediaPipelines::Endpoints::DeleteMediaPipeline.build(context)
          when :get_media_capture_pipeline
            Aws::ChimeSDKMediaPipelines::Endpoints::GetMediaCapturePipeline.build(context)
          when :get_media_insights_pipeline_configuration
            Aws::ChimeSDKMediaPipelines::Endpoints::GetMediaInsightsPipelineConfiguration.build(context)
          when :get_media_pipeline
            Aws::ChimeSDKMediaPipelines::Endpoints::GetMediaPipeline.build(context)
          when :list_media_capture_pipelines
            Aws::ChimeSDKMediaPipelines::Endpoints::ListMediaCapturePipelines.build(context)
          when :list_media_insights_pipeline_configurations
            Aws::ChimeSDKMediaPipelines::Endpoints::ListMediaInsightsPipelineConfigurations.build(context)
          when :list_media_pipelines
            Aws::ChimeSDKMediaPipelines::Endpoints::ListMediaPipelines.build(context)
          when :list_tags_for_resource
            Aws::ChimeSDKMediaPipelines::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::ChimeSDKMediaPipelines::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ChimeSDKMediaPipelines::Endpoints::UntagResource.build(context)
          when :update_media_insights_pipeline_configuration
            Aws::ChimeSDKMediaPipelines::Endpoints::UpdateMediaInsightsPipelineConfiguration.build(context)
          when :update_media_insights_pipeline_status
            Aws::ChimeSDKMediaPipelines::Endpoints::UpdateMediaInsightsPipelineStatus.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
