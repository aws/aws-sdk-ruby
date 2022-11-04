# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Chime
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Chime::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Chime::EndpointParameters`'
      ) do |cfg|
        Aws::Chime::EndpointProvider.new
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
          when :associate_phone_number_with_user
            Aws::Chime::Endpoints::AssociatePhoneNumberWithUser.build(context)
          when :associate_phone_numbers_with_voice_connector
            Aws::Chime::Endpoints::AssociatePhoneNumbersWithVoiceConnector.build(context)
          when :associate_phone_numbers_with_voice_connector_group
            Aws::Chime::Endpoints::AssociatePhoneNumbersWithVoiceConnectorGroup.build(context)
          when :associate_signin_delegate_groups_with_account
            Aws::Chime::Endpoints::AssociateSigninDelegateGroupsWithAccount.build(context)
          when :batch_create_attendee
            Aws::Chime::Endpoints::BatchCreateAttendee.build(context)
          when :batch_create_channel_membership
            Aws::Chime::Endpoints::BatchCreateChannelMembership.build(context)
          when :batch_create_room_membership
            Aws::Chime::Endpoints::BatchCreateRoomMembership.build(context)
          when :batch_delete_phone_number
            Aws::Chime::Endpoints::BatchDeletePhoneNumber.build(context)
          when :batch_suspend_user
            Aws::Chime::Endpoints::BatchSuspendUser.build(context)
          when :batch_unsuspend_user
            Aws::Chime::Endpoints::BatchUnsuspendUser.build(context)
          when :batch_update_phone_number
            Aws::Chime::Endpoints::BatchUpdatePhoneNumber.build(context)
          when :batch_update_user
            Aws::Chime::Endpoints::BatchUpdateUser.build(context)
          when :create_account
            Aws::Chime::Endpoints::CreateAccount.build(context)
          when :create_app_instance
            Aws::Chime::Endpoints::CreateAppInstance.build(context)
          when :create_app_instance_admin
            Aws::Chime::Endpoints::CreateAppInstanceAdmin.build(context)
          when :create_app_instance_user
            Aws::Chime::Endpoints::CreateAppInstanceUser.build(context)
          when :create_attendee
            Aws::Chime::Endpoints::CreateAttendee.build(context)
          when :create_bot
            Aws::Chime::Endpoints::CreateBot.build(context)
          when :create_channel
            Aws::Chime::Endpoints::CreateChannel.build(context)
          when :create_channel_ban
            Aws::Chime::Endpoints::CreateChannelBan.build(context)
          when :create_channel_membership
            Aws::Chime::Endpoints::CreateChannelMembership.build(context)
          when :create_channel_moderator
            Aws::Chime::Endpoints::CreateChannelModerator.build(context)
          when :create_media_capture_pipeline
            Aws::Chime::Endpoints::CreateMediaCapturePipeline.build(context)
          when :create_meeting
            Aws::Chime::Endpoints::CreateMeeting.build(context)
          when :create_meeting_dial_out
            Aws::Chime::Endpoints::CreateMeetingDialOut.build(context)
          when :create_meeting_with_attendees
            Aws::Chime::Endpoints::CreateMeetingWithAttendees.build(context)
          when :create_phone_number_order
            Aws::Chime::Endpoints::CreatePhoneNumberOrder.build(context)
          when :create_proxy_session
            Aws::Chime::Endpoints::CreateProxySession.build(context)
          when :create_room
            Aws::Chime::Endpoints::CreateRoom.build(context)
          when :create_room_membership
            Aws::Chime::Endpoints::CreateRoomMembership.build(context)
          when :create_sip_media_application
            Aws::Chime::Endpoints::CreateSipMediaApplication.build(context)
          when :create_sip_media_application_call
            Aws::Chime::Endpoints::CreateSipMediaApplicationCall.build(context)
          when :create_sip_rule
            Aws::Chime::Endpoints::CreateSipRule.build(context)
          when :create_user
            Aws::Chime::Endpoints::CreateUser.build(context)
          when :create_voice_connector
            Aws::Chime::Endpoints::CreateVoiceConnector.build(context)
          when :create_voice_connector_group
            Aws::Chime::Endpoints::CreateVoiceConnectorGroup.build(context)
          when :delete_account
            Aws::Chime::Endpoints::DeleteAccount.build(context)
          when :delete_app_instance
            Aws::Chime::Endpoints::DeleteAppInstance.build(context)
          when :delete_app_instance_admin
            Aws::Chime::Endpoints::DeleteAppInstanceAdmin.build(context)
          when :delete_app_instance_streaming_configurations
            Aws::Chime::Endpoints::DeleteAppInstanceStreamingConfigurations.build(context)
          when :delete_app_instance_user
            Aws::Chime::Endpoints::DeleteAppInstanceUser.build(context)
          when :delete_attendee
            Aws::Chime::Endpoints::DeleteAttendee.build(context)
          when :delete_channel
            Aws::Chime::Endpoints::DeleteChannel.build(context)
          when :delete_channel_ban
            Aws::Chime::Endpoints::DeleteChannelBan.build(context)
          when :delete_channel_membership
            Aws::Chime::Endpoints::DeleteChannelMembership.build(context)
          when :delete_channel_message
            Aws::Chime::Endpoints::DeleteChannelMessage.build(context)
          when :delete_channel_moderator
            Aws::Chime::Endpoints::DeleteChannelModerator.build(context)
          when :delete_events_configuration
            Aws::Chime::Endpoints::DeleteEventsConfiguration.build(context)
          when :delete_media_capture_pipeline
            Aws::Chime::Endpoints::DeleteMediaCapturePipeline.build(context)
          when :delete_meeting
            Aws::Chime::Endpoints::DeleteMeeting.build(context)
          when :delete_phone_number
            Aws::Chime::Endpoints::DeletePhoneNumber.build(context)
          when :delete_proxy_session
            Aws::Chime::Endpoints::DeleteProxySession.build(context)
          when :delete_room
            Aws::Chime::Endpoints::DeleteRoom.build(context)
          when :delete_room_membership
            Aws::Chime::Endpoints::DeleteRoomMembership.build(context)
          when :delete_sip_media_application
            Aws::Chime::Endpoints::DeleteSipMediaApplication.build(context)
          when :delete_sip_rule
            Aws::Chime::Endpoints::DeleteSipRule.build(context)
          when :delete_voice_connector
            Aws::Chime::Endpoints::DeleteVoiceConnector.build(context)
          when :delete_voice_connector_emergency_calling_configuration
            Aws::Chime::Endpoints::DeleteVoiceConnectorEmergencyCallingConfiguration.build(context)
          when :delete_voice_connector_group
            Aws::Chime::Endpoints::DeleteVoiceConnectorGroup.build(context)
          when :delete_voice_connector_origination
            Aws::Chime::Endpoints::DeleteVoiceConnectorOrigination.build(context)
          when :delete_voice_connector_proxy
            Aws::Chime::Endpoints::DeleteVoiceConnectorProxy.build(context)
          when :delete_voice_connector_streaming_configuration
            Aws::Chime::Endpoints::DeleteVoiceConnectorStreamingConfiguration.build(context)
          when :delete_voice_connector_termination
            Aws::Chime::Endpoints::DeleteVoiceConnectorTermination.build(context)
          when :delete_voice_connector_termination_credentials
            Aws::Chime::Endpoints::DeleteVoiceConnectorTerminationCredentials.build(context)
          when :describe_app_instance
            Aws::Chime::Endpoints::DescribeAppInstance.build(context)
          when :describe_app_instance_admin
            Aws::Chime::Endpoints::DescribeAppInstanceAdmin.build(context)
          when :describe_app_instance_user
            Aws::Chime::Endpoints::DescribeAppInstanceUser.build(context)
          when :describe_channel
            Aws::Chime::Endpoints::DescribeChannel.build(context)
          when :describe_channel_ban
            Aws::Chime::Endpoints::DescribeChannelBan.build(context)
          when :describe_channel_membership
            Aws::Chime::Endpoints::DescribeChannelMembership.build(context)
          when :describe_channel_membership_for_app_instance_user
            Aws::Chime::Endpoints::DescribeChannelMembershipForAppInstanceUser.build(context)
          when :describe_channel_moderated_by_app_instance_user
            Aws::Chime::Endpoints::DescribeChannelModeratedByAppInstanceUser.build(context)
          when :describe_channel_moderator
            Aws::Chime::Endpoints::DescribeChannelModerator.build(context)
          when :disassociate_phone_number_from_user
            Aws::Chime::Endpoints::DisassociatePhoneNumberFromUser.build(context)
          when :disassociate_phone_numbers_from_voice_connector
            Aws::Chime::Endpoints::DisassociatePhoneNumbersFromVoiceConnector.build(context)
          when :disassociate_phone_numbers_from_voice_connector_group
            Aws::Chime::Endpoints::DisassociatePhoneNumbersFromVoiceConnectorGroup.build(context)
          when :disassociate_signin_delegate_groups_from_account
            Aws::Chime::Endpoints::DisassociateSigninDelegateGroupsFromAccount.build(context)
          when :get_account
            Aws::Chime::Endpoints::GetAccount.build(context)
          when :get_account_settings
            Aws::Chime::Endpoints::GetAccountSettings.build(context)
          when :get_app_instance_retention_settings
            Aws::Chime::Endpoints::GetAppInstanceRetentionSettings.build(context)
          when :get_app_instance_streaming_configurations
            Aws::Chime::Endpoints::GetAppInstanceStreamingConfigurations.build(context)
          when :get_attendee
            Aws::Chime::Endpoints::GetAttendee.build(context)
          when :get_bot
            Aws::Chime::Endpoints::GetBot.build(context)
          when :get_channel_message
            Aws::Chime::Endpoints::GetChannelMessage.build(context)
          when :get_events_configuration
            Aws::Chime::Endpoints::GetEventsConfiguration.build(context)
          when :get_global_settings
            Aws::Chime::Endpoints::GetGlobalSettings.build(context)
          when :get_media_capture_pipeline
            Aws::Chime::Endpoints::GetMediaCapturePipeline.build(context)
          when :get_meeting
            Aws::Chime::Endpoints::GetMeeting.build(context)
          when :get_messaging_session_endpoint
            Aws::Chime::Endpoints::GetMessagingSessionEndpoint.build(context)
          when :get_phone_number
            Aws::Chime::Endpoints::GetPhoneNumber.build(context)
          when :get_phone_number_order
            Aws::Chime::Endpoints::GetPhoneNumberOrder.build(context)
          when :get_phone_number_settings
            Aws::Chime::Endpoints::GetPhoneNumberSettings.build(context)
          when :get_proxy_session
            Aws::Chime::Endpoints::GetProxySession.build(context)
          when :get_retention_settings
            Aws::Chime::Endpoints::GetRetentionSettings.build(context)
          when :get_room
            Aws::Chime::Endpoints::GetRoom.build(context)
          when :get_sip_media_application
            Aws::Chime::Endpoints::GetSipMediaApplication.build(context)
          when :get_sip_media_application_logging_configuration
            Aws::Chime::Endpoints::GetSipMediaApplicationLoggingConfiguration.build(context)
          when :get_sip_rule
            Aws::Chime::Endpoints::GetSipRule.build(context)
          when :get_user
            Aws::Chime::Endpoints::GetUser.build(context)
          when :get_user_settings
            Aws::Chime::Endpoints::GetUserSettings.build(context)
          when :get_voice_connector
            Aws::Chime::Endpoints::GetVoiceConnector.build(context)
          when :get_voice_connector_emergency_calling_configuration
            Aws::Chime::Endpoints::GetVoiceConnectorEmergencyCallingConfiguration.build(context)
          when :get_voice_connector_group
            Aws::Chime::Endpoints::GetVoiceConnectorGroup.build(context)
          when :get_voice_connector_logging_configuration
            Aws::Chime::Endpoints::GetVoiceConnectorLoggingConfiguration.build(context)
          when :get_voice_connector_origination
            Aws::Chime::Endpoints::GetVoiceConnectorOrigination.build(context)
          when :get_voice_connector_proxy
            Aws::Chime::Endpoints::GetVoiceConnectorProxy.build(context)
          when :get_voice_connector_streaming_configuration
            Aws::Chime::Endpoints::GetVoiceConnectorStreamingConfiguration.build(context)
          when :get_voice_connector_termination
            Aws::Chime::Endpoints::GetVoiceConnectorTermination.build(context)
          when :get_voice_connector_termination_health
            Aws::Chime::Endpoints::GetVoiceConnectorTerminationHealth.build(context)
          when :invite_users
            Aws::Chime::Endpoints::InviteUsers.build(context)
          when :list_accounts
            Aws::Chime::Endpoints::ListAccounts.build(context)
          when :list_app_instance_admins
            Aws::Chime::Endpoints::ListAppInstanceAdmins.build(context)
          when :list_app_instance_users
            Aws::Chime::Endpoints::ListAppInstanceUsers.build(context)
          when :list_app_instances
            Aws::Chime::Endpoints::ListAppInstances.build(context)
          when :list_attendee_tags
            Aws::Chime::Endpoints::ListAttendeeTags.build(context)
          when :list_attendees
            Aws::Chime::Endpoints::ListAttendees.build(context)
          when :list_bots
            Aws::Chime::Endpoints::ListBots.build(context)
          when :list_channel_bans
            Aws::Chime::Endpoints::ListChannelBans.build(context)
          when :list_channel_memberships
            Aws::Chime::Endpoints::ListChannelMemberships.build(context)
          when :list_channel_memberships_for_app_instance_user
            Aws::Chime::Endpoints::ListChannelMembershipsForAppInstanceUser.build(context)
          when :list_channel_messages
            Aws::Chime::Endpoints::ListChannelMessages.build(context)
          when :list_channel_moderators
            Aws::Chime::Endpoints::ListChannelModerators.build(context)
          when :list_channels
            Aws::Chime::Endpoints::ListChannels.build(context)
          when :list_channels_moderated_by_app_instance_user
            Aws::Chime::Endpoints::ListChannelsModeratedByAppInstanceUser.build(context)
          when :list_media_capture_pipelines
            Aws::Chime::Endpoints::ListMediaCapturePipelines.build(context)
          when :list_meeting_tags
            Aws::Chime::Endpoints::ListMeetingTags.build(context)
          when :list_meetings
            Aws::Chime::Endpoints::ListMeetings.build(context)
          when :list_phone_number_orders
            Aws::Chime::Endpoints::ListPhoneNumberOrders.build(context)
          when :list_phone_numbers
            Aws::Chime::Endpoints::ListPhoneNumbers.build(context)
          when :list_proxy_sessions
            Aws::Chime::Endpoints::ListProxySessions.build(context)
          when :list_room_memberships
            Aws::Chime::Endpoints::ListRoomMemberships.build(context)
          when :list_rooms
            Aws::Chime::Endpoints::ListRooms.build(context)
          when :list_sip_media_applications
            Aws::Chime::Endpoints::ListSipMediaApplications.build(context)
          when :list_sip_rules
            Aws::Chime::Endpoints::ListSipRules.build(context)
          when :list_supported_phone_number_countries
            Aws::Chime::Endpoints::ListSupportedPhoneNumberCountries.build(context)
          when :list_tags_for_resource
            Aws::Chime::Endpoints::ListTagsForResource.build(context)
          when :list_users
            Aws::Chime::Endpoints::ListUsers.build(context)
          when :list_voice_connector_groups
            Aws::Chime::Endpoints::ListVoiceConnectorGroups.build(context)
          when :list_voice_connector_termination_credentials
            Aws::Chime::Endpoints::ListVoiceConnectorTerminationCredentials.build(context)
          when :list_voice_connectors
            Aws::Chime::Endpoints::ListVoiceConnectors.build(context)
          when :logout_user
            Aws::Chime::Endpoints::LogoutUser.build(context)
          when :put_app_instance_retention_settings
            Aws::Chime::Endpoints::PutAppInstanceRetentionSettings.build(context)
          when :put_app_instance_streaming_configurations
            Aws::Chime::Endpoints::PutAppInstanceStreamingConfigurations.build(context)
          when :put_events_configuration
            Aws::Chime::Endpoints::PutEventsConfiguration.build(context)
          when :put_retention_settings
            Aws::Chime::Endpoints::PutRetentionSettings.build(context)
          when :put_sip_media_application_logging_configuration
            Aws::Chime::Endpoints::PutSipMediaApplicationLoggingConfiguration.build(context)
          when :put_voice_connector_emergency_calling_configuration
            Aws::Chime::Endpoints::PutVoiceConnectorEmergencyCallingConfiguration.build(context)
          when :put_voice_connector_logging_configuration
            Aws::Chime::Endpoints::PutVoiceConnectorLoggingConfiguration.build(context)
          when :put_voice_connector_origination
            Aws::Chime::Endpoints::PutVoiceConnectorOrigination.build(context)
          when :put_voice_connector_proxy
            Aws::Chime::Endpoints::PutVoiceConnectorProxy.build(context)
          when :put_voice_connector_streaming_configuration
            Aws::Chime::Endpoints::PutVoiceConnectorStreamingConfiguration.build(context)
          when :put_voice_connector_termination
            Aws::Chime::Endpoints::PutVoiceConnectorTermination.build(context)
          when :put_voice_connector_termination_credentials
            Aws::Chime::Endpoints::PutVoiceConnectorTerminationCredentials.build(context)
          when :redact_channel_message
            Aws::Chime::Endpoints::RedactChannelMessage.build(context)
          when :redact_conversation_message
            Aws::Chime::Endpoints::RedactConversationMessage.build(context)
          when :redact_room_message
            Aws::Chime::Endpoints::RedactRoomMessage.build(context)
          when :regenerate_security_token
            Aws::Chime::Endpoints::RegenerateSecurityToken.build(context)
          when :reset_personal_pin
            Aws::Chime::Endpoints::ResetPersonalPIN.build(context)
          when :restore_phone_number
            Aws::Chime::Endpoints::RestorePhoneNumber.build(context)
          when :search_available_phone_numbers
            Aws::Chime::Endpoints::SearchAvailablePhoneNumbers.build(context)
          when :send_channel_message
            Aws::Chime::Endpoints::SendChannelMessage.build(context)
          when :start_meeting_transcription
            Aws::Chime::Endpoints::StartMeetingTranscription.build(context)
          when :stop_meeting_transcription
            Aws::Chime::Endpoints::StopMeetingTranscription.build(context)
          when :tag_attendee
            Aws::Chime::Endpoints::TagAttendee.build(context)
          when :tag_meeting
            Aws::Chime::Endpoints::TagMeeting.build(context)
          when :tag_resource
            Aws::Chime::Endpoints::TagResource.build(context)
          when :untag_attendee
            Aws::Chime::Endpoints::UntagAttendee.build(context)
          when :untag_meeting
            Aws::Chime::Endpoints::UntagMeeting.build(context)
          when :untag_resource
            Aws::Chime::Endpoints::UntagResource.build(context)
          when :update_account
            Aws::Chime::Endpoints::UpdateAccount.build(context)
          when :update_account_settings
            Aws::Chime::Endpoints::UpdateAccountSettings.build(context)
          when :update_app_instance
            Aws::Chime::Endpoints::UpdateAppInstance.build(context)
          when :update_app_instance_user
            Aws::Chime::Endpoints::UpdateAppInstanceUser.build(context)
          when :update_bot
            Aws::Chime::Endpoints::UpdateBot.build(context)
          when :update_channel
            Aws::Chime::Endpoints::UpdateChannel.build(context)
          when :update_channel_message
            Aws::Chime::Endpoints::UpdateChannelMessage.build(context)
          when :update_channel_read_marker
            Aws::Chime::Endpoints::UpdateChannelReadMarker.build(context)
          when :update_global_settings
            Aws::Chime::Endpoints::UpdateGlobalSettings.build(context)
          when :update_phone_number
            Aws::Chime::Endpoints::UpdatePhoneNumber.build(context)
          when :update_phone_number_settings
            Aws::Chime::Endpoints::UpdatePhoneNumberSettings.build(context)
          when :update_proxy_session
            Aws::Chime::Endpoints::UpdateProxySession.build(context)
          when :update_room
            Aws::Chime::Endpoints::UpdateRoom.build(context)
          when :update_room_membership
            Aws::Chime::Endpoints::UpdateRoomMembership.build(context)
          when :update_sip_media_application
            Aws::Chime::Endpoints::UpdateSipMediaApplication.build(context)
          when :update_sip_media_application_call
            Aws::Chime::Endpoints::UpdateSipMediaApplicationCall.build(context)
          when :update_sip_rule
            Aws::Chime::Endpoints::UpdateSipRule.build(context)
          when :update_user
            Aws::Chime::Endpoints::UpdateUser.build(context)
          when :update_user_settings
            Aws::Chime::Endpoints::UpdateUserSettings.build(context)
          when :update_voice_connector
            Aws::Chime::Endpoints::UpdateVoiceConnector.build(context)
          when :update_voice_connector_group
            Aws::Chime::Endpoints::UpdateVoiceConnectorGroup.build(context)
          when :validate_e911_address
            Aws::Chime::Endpoints::ValidateE911Address.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
