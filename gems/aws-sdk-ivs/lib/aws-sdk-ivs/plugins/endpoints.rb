# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IVS
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IVS::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IVS::EndpointParameters`'
      ) do |cfg|
        Aws::IVS::EndpointProvider.new
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
          when :batch_get_channel
            Aws::IVS::Endpoints::BatchGetChannel.build(context)
          when :batch_get_stream_key
            Aws::IVS::Endpoints::BatchGetStreamKey.build(context)
          when :batch_start_viewer_session_revocation
            Aws::IVS::Endpoints::BatchStartViewerSessionRevocation.build(context)
          when :create_channel
            Aws::IVS::Endpoints::CreateChannel.build(context)
          when :create_recording_configuration
            Aws::IVS::Endpoints::CreateRecordingConfiguration.build(context)
          when :create_stream_key
            Aws::IVS::Endpoints::CreateStreamKey.build(context)
          when :delete_channel
            Aws::IVS::Endpoints::DeleteChannel.build(context)
          when :delete_playback_key_pair
            Aws::IVS::Endpoints::DeletePlaybackKeyPair.build(context)
          when :delete_recording_configuration
            Aws::IVS::Endpoints::DeleteRecordingConfiguration.build(context)
          when :delete_stream_key
            Aws::IVS::Endpoints::DeleteStreamKey.build(context)
          when :get_channel
            Aws::IVS::Endpoints::GetChannel.build(context)
          when :get_playback_key_pair
            Aws::IVS::Endpoints::GetPlaybackKeyPair.build(context)
          when :get_recording_configuration
            Aws::IVS::Endpoints::GetRecordingConfiguration.build(context)
          when :get_stream
            Aws::IVS::Endpoints::GetStream.build(context)
          when :get_stream_key
            Aws::IVS::Endpoints::GetStreamKey.build(context)
          when :get_stream_session
            Aws::IVS::Endpoints::GetStreamSession.build(context)
          when :import_playback_key_pair
            Aws::IVS::Endpoints::ImportPlaybackKeyPair.build(context)
          when :list_channels
            Aws::IVS::Endpoints::ListChannels.build(context)
          when :list_playback_key_pairs
            Aws::IVS::Endpoints::ListPlaybackKeyPairs.build(context)
          when :list_recording_configurations
            Aws::IVS::Endpoints::ListRecordingConfigurations.build(context)
          when :list_stream_keys
            Aws::IVS::Endpoints::ListStreamKeys.build(context)
          when :list_stream_sessions
            Aws::IVS::Endpoints::ListStreamSessions.build(context)
          when :list_streams
            Aws::IVS::Endpoints::ListStreams.build(context)
          when :list_tags_for_resource
            Aws::IVS::Endpoints::ListTagsForResource.build(context)
          when :put_metadata
            Aws::IVS::Endpoints::PutMetadata.build(context)
          when :start_viewer_session_revocation
            Aws::IVS::Endpoints::StartViewerSessionRevocation.build(context)
          when :stop_stream
            Aws::IVS::Endpoints::StopStream.build(context)
          when :tag_resource
            Aws::IVS::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::IVS::Endpoints::UntagResource.build(context)
          when :update_channel
            Aws::IVS::Endpoints::UpdateChannel.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
