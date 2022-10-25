# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ChimeSDKMeetings
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ChimeSDKMeetings::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ChimeSDKMeetings::EndpointParameters`'
      ) do |cfg|
        Aws::ChimeSDKMeetings::EndpointProvider.new
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
          when :batch_create_attendee
            Aws::ChimeSDKMeetings::Endpoints::BatchCreateAttendee.build(context)
          when :batch_update_attendee_capabilities_except
            Aws::ChimeSDKMeetings::Endpoints::BatchUpdateAttendeeCapabilitiesExcept.build(context)
          when :create_attendee
            Aws::ChimeSDKMeetings::Endpoints::CreateAttendee.build(context)
          when :create_meeting
            Aws::ChimeSDKMeetings::Endpoints::CreateMeeting.build(context)
          when :create_meeting_with_attendees
            Aws::ChimeSDKMeetings::Endpoints::CreateMeetingWithAttendees.build(context)
          when :delete_attendee
            Aws::ChimeSDKMeetings::Endpoints::DeleteAttendee.build(context)
          when :delete_meeting
            Aws::ChimeSDKMeetings::Endpoints::DeleteMeeting.build(context)
          when :get_attendee
            Aws::ChimeSDKMeetings::Endpoints::GetAttendee.build(context)
          when :get_meeting
            Aws::ChimeSDKMeetings::Endpoints::GetMeeting.build(context)
          when :list_attendees
            Aws::ChimeSDKMeetings::Endpoints::ListAttendees.build(context)
          when :list_tags_for_resource
            Aws::ChimeSDKMeetings::Endpoints::ListTagsForResource.build(context)
          when :start_meeting_transcription
            Aws::ChimeSDKMeetings::Endpoints::StartMeetingTranscription.build(context)
          when :stop_meeting_transcription
            Aws::ChimeSDKMeetings::Endpoints::StopMeetingTranscription.build(context)
          when :tag_resource
            Aws::ChimeSDKMeetings::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ChimeSDKMeetings::Endpoints::UntagResource.build(context)
          when :update_attendee_capabilities
            Aws::ChimeSDKMeetings::Endpoints::UpdateAttendeeCapabilities.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
