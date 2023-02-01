# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MediaTailor
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MediaTailor::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MediaTailor::EndpointParameters`'
      ) do |cfg|
        Aws::MediaTailor::EndpointProvider.new
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
          when :configure_logs_for_channel
            Aws::MediaTailor::Endpoints::ConfigureLogsForChannel.build(context)
          when :configure_logs_for_playback_configuration
            Aws::MediaTailor::Endpoints::ConfigureLogsForPlaybackConfiguration.build(context)
          when :create_channel
            Aws::MediaTailor::Endpoints::CreateChannel.build(context)
          when :create_live_source
            Aws::MediaTailor::Endpoints::CreateLiveSource.build(context)
          when :create_prefetch_schedule
            Aws::MediaTailor::Endpoints::CreatePrefetchSchedule.build(context)
          when :create_program
            Aws::MediaTailor::Endpoints::CreateProgram.build(context)
          when :create_source_location
            Aws::MediaTailor::Endpoints::CreateSourceLocation.build(context)
          when :create_vod_source
            Aws::MediaTailor::Endpoints::CreateVodSource.build(context)
          when :delete_channel
            Aws::MediaTailor::Endpoints::DeleteChannel.build(context)
          when :delete_channel_policy
            Aws::MediaTailor::Endpoints::DeleteChannelPolicy.build(context)
          when :delete_live_source
            Aws::MediaTailor::Endpoints::DeleteLiveSource.build(context)
          when :delete_playback_configuration
            Aws::MediaTailor::Endpoints::DeletePlaybackConfiguration.build(context)
          when :delete_prefetch_schedule
            Aws::MediaTailor::Endpoints::DeletePrefetchSchedule.build(context)
          when :delete_program
            Aws::MediaTailor::Endpoints::DeleteProgram.build(context)
          when :delete_source_location
            Aws::MediaTailor::Endpoints::DeleteSourceLocation.build(context)
          when :delete_vod_source
            Aws::MediaTailor::Endpoints::DeleteVodSource.build(context)
          when :describe_channel
            Aws::MediaTailor::Endpoints::DescribeChannel.build(context)
          when :describe_live_source
            Aws::MediaTailor::Endpoints::DescribeLiveSource.build(context)
          when :describe_program
            Aws::MediaTailor::Endpoints::DescribeProgram.build(context)
          when :describe_source_location
            Aws::MediaTailor::Endpoints::DescribeSourceLocation.build(context)
          when :describe_vod_source
            Aws::MediaTailor::Endpoints::DescribeVodSource.build(context)
          when :get_channel_policy
            Aws::MediaTailor::Endpoints::GetChannelPolicy.build(context)
          when :get_channel_schedule
            Aws::MediaTailor::Endpoints::GetChannelSchedule.build(context)
          when :get_playback_configuration
            Aws::MediaTailor::Endpoints::GetPlaybackConfiguration.build(context)
          when :get_prefetch_schedule
            Aws::MediaTailor::Endpoints::GetPrefetchSchedule.build(context)
          when :list_alerts
            Aws::MediaTailor::Endpoints::ListAlerts.build(context)
          when :list_channels
            Aws::MediaTailor::Endpoints::ListChannels.build(context)
          when :list_live_sources
            Aws::MediaTailor::Endpoints::ListLiveSources.build(context)
          when :list_playback_configurations
            Aws::MediaTailor::Endpoints::ListPlaybackConfigurations.build(context)
          when :list_prefetch_schedules
            Aws::MediaTailor::Endpoints::ListPrefetchSchedules.build(context)
          when :list_source_locations
            Aws::MediaTailor::Endpoints::ListSourceLocations.build(context)
          when :list_tags_for_resource
            Aws::MediaTailor::Endpoints::ListTagsForResource.build(context)
          when :list_vod_sources
            Aws::MediaTailor::Endpoints::ListVodSources.build(context)
          when :put_channel_policy
            Aws::MediaTailor::Endpoints::PutChannelPolicy.build(context)
          when :put_playback_configuration
            Aws::MediaTailor::Endpoints::PutPlaybackConfiguration.build(context)
          when :start_channel
            Aws::MediaTailor::Endpoints::StartChannel.build(context)
          when :stop_channel
            Aws::MediaTailor::Endpoints::StopChannel.build(context)
          when :tag_resource
            Aws::MediaTailor::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::MediaTailor::Endpoints::UntagResource.build(context)
          when :update_channel
            Aws::MediaTailor::Endpoints::UpdateChannel.build(context)
          when :update_live_source
            Aws::MediaTailor::Endpoints::UpdateLiveSource.build(context)
          when :update_program
            Aws::MediaTailor::Endpoints::UpdateProgram.build(context)
          when :update_source_location
            Aws::MediaTailor::Endpoints::UpdateSourceLocation.build(context)
          when :update_vod_source
            Aws::MediaTailor::Endpoints::UpdateVodSource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
