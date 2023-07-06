# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::KinesisVideo
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::KinesisVideo::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::KinesisVideo::EndpointParameters`'
      ) do |cfg|
        Aws::KinesisVideo::EndpointProvider.new
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
          when :create_signaling_channel
            Aws::KinesisVideo::Endpoints::CreateSignalingChannel.build(context)
          when :create_stream
            Aws::KinesisVideo::Endpoints::CreateStream.build(context)
          when :delete_edge_configuration
            Aws::KinesisVideo::Endpoints::DeleteEdgeConfiguration.build(context)
          when :delete_signaling_channel
            Aws::KinesisVideo::Endpoints::DeleteSignalingChannel.build(context)
          when :delete_stream
            Aws::KinesisVideo::Endpoints::DeleteStream.build(context)
          when :describe_edge_configuration
            Aws::KinesisVideo::Endpoints::DescribeEdgeConfiguration.build(context)
          when :describe_image_generation_configuration
            Aws::KinesisVideo::Endpoints::DescribeImageGenerationConfiguration.build(context)
          when :describe_mapped_resource_configuration
            Aws::KinesisVideo::Endpoints::DescribeMappedResourceConfiguration.build(context)
          when :describe_media_storage_configuration
            Aws::KinesisVideo::Endpoints::DescribeMediaStorageConfiguration.build(context)
          when :describe_notification_configuration
            Aws::KinesisVideo::Endpoints::DescribeNotificationConfiguration.build(context)
          when :describe_signaling_channel
            Aws::KinesisVideo::Endpoints::DescribeSignalingChannel.build(context)
          when :describe_stream
            Aws::KinesisVideo::Endpoints::DescribeStream.build(context)
          when :get_data_endpoint
            Aws::KinesisVideo::Endpoints::GetDataEndpoint.build(context)
          when :get_signaling_channel_endpoint
            Aws::KinesisVideo::Endpoints::GetSignalingChannelEndpoint.build(context)
          when :list_edge_agent_configurations
            Aws::KinesisVideo::Endpoints::ListEdgeAgentConfigurations.build(context)
          when :list_signaling_channels
            Aws::KinesisVideo::Endpoints::ListSignalingChannels.build(context)
          when :list_streams
            Aws::KinesisVideo::Endpoints::ListStreams.build(context)
          when :list_tags_for_resource
            Aws::KinesisVideo::Endpoints::ListTagsForResource.build(context)
          when :list_tags_for_stream
            Aws::KinesisVideo::Endpoints::ListTagsForStream.build(context)
          when :start_edge_configuration_update
            Aws::KinesisVideo::Endpoints::StartEdgeConfigurationUpdate.build(context)
          when :tag_resource
            Aws::KinesisVideo::Endpoints::TagResource.build(context)
          when :tag_stream
            Aws::KinesisVideo::Endpoints::TagStream.build(context)
          when :untag_resource
            Aws::KinesisVideo::Endpoints::UntagResource.build(context)
          when :untag_stream
            Aws::KinesisVideo::Endpoints::UntagStream.build(context)
          when :update_data_retention
            Aws::KinesisVideo::Endpoints::UpdateDataRetention.build(context)
          when :update_image_generation_configuration
            Aws::KinesisVideo::Endpoints::UpdateImageGenerationConfiguration.build(context)
          when :update_media_storage_configuration
            Aws::KinesisVideo::Endpoints::UpdateMediaStorageConfiguration.build(context)
          when :update_notification_configuration
            Aws::KinesisVideo::Endpoints::UpdateNotificationConfiguration.build(context)
          when :update_signaling_channel
            Aws::KinesisVideo::Endpoints::UpdateSignalingChannel.build(context)
          when :update_stream
            Aws::KinesisVideo::Endpoints::UpdateStream.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
