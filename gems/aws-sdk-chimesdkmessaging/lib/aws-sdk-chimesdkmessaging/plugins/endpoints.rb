# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ChimeSDKMessaging
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ChimeSDKMessaging::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ChimeSDKMessaging::EndpointParameters`'
      ) do |cfg|
        Aws::ChimeSDKMessaging::EndpointProvider.new
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
          when :associate_channel_flow
            Aws::ChimeSDKMessaging::Endpoints::AssociateChannelFlow.build(context)
          when :batch_create_channel_membership
            Aws::ChimeSDKMessaging::Endpoints::BatchCreateChannelMembership.build(context)
          when :channel_flow_callback
            Aws::ChimeSDKMessaging::Endpoints::ChannelFlowCallback.build(context)
          when :create_channel
            Aws::ChimeSDKMessaging::Endpoints::CreateChannel.build(context)
          when :create_channel_ban
            Aws::ChimeSDKMessaging::Endpoints::CreateChannelBan.build(context)
          when :create_channel_flow
            Aws::ChimeSDKMessaging::Endpoints::CreateChannelFlow.build(context)
          when :create_channel_membership
            Aws::ChimeSDKMessaging::Endpoints::CreateChannelMembership.build(context)
          when :create_channel_moderator
            Aws::ChimeSDKMessaging::Endpoints::CreateChannelModerator.build(context)
          when :delete_channel
            Aws::ChimeSDKMessaging::Endpoints::DeleteChannel.build(context)
          when :delete_channel_ban
            Aws::ChimeSDKMessaging::Endpoints::DeleteChannelBan.build(context)
          when :delete_channel_flow
            Aws::ChimeSDKMessaging::Endpoints::DeleteChannelFlow.build(context)
          when :delete_channel_membership
            Aws::ChimeSDKMessaging::Endpoints::DeleteChannelMembership.build(context)
          when :delete_channel_message
            Aws::ChimeSDKMessaging::Endpoints::DeleteChannelMessage.build(context)
          when :delete_channel_moderator
            Aws::ChimeSDKMessaging::Endpoints::DeleteChannelModerator.build(context)
          when :delete_messaging_streaming_configurations
            Aws::ChimeSDKMessaging::Endpoints::DeleteMessagingStreamingConfigurations.build(context)
          when :describe_channel
            Aws::ChimeSDKMessaging::Endpoints::DescribeChannel.build(context)
          when :describe_channel_ban
            Aws::ChimeSDKMessaging::Endpoints::DescribeChannelBan.build(context)
          when :describe_channel_flow
            Aws::ChimeSDKMessaging::Endpoints::DescribeChannelFlow.build(context)
          when :describe_channel_membership
            Aws::ChimeSDKMessaging::Endpoints::DescribeChannelMembership.build(context)
          when :describe_channel_membership_for_app_instance_user
            Aws::ChimeSDKMessaging::Endpoints::DescribeChannelMembershipForAppInstanceUser.build(context)
          when :describe_channel_moderated_by_app_instance_user
            Aws::ChimeSDKMessaging::Endpoints::DescribeChannelModeratedByAppInstanceUser.build(context)
          when :describe_channel_moderator
            Aws::ChimeSDKMessaging::Endpoints::DescribeChannelModerator.build(context)
          when :disassociate_channel_flow
            Aws::ChimeSDKMessaging::Endpoints::DisassociateChannelFlow.build(context)
          when :get_channel_membership_preferences
            Aws::ChimeSDKMessaging::Endpoints::GetChannelMembershipPreferences.build(context)
          when :get_channel_message
            Aws::ChimeSDKMessaging::Endpoints::GetChannelMessage.build(context)
          when :get_channel_message_status
            Aws::ChimeSDKMessaging::Endpoints::GetChannelMessageStatus.build(context)
          when :get_messaging_session_endpoint
            Aws::ChimeSDKMessaging::Endpoints::GetMessagingSessionEndpoint.build(context)
          when :get_messaging_streaming_configurations
            Aws::ChimeSDKMessaging::Endpoints::GetMessagingStreamingConfigurations.build(context)
          when :list_channel_bans
            Aws::ChimeSDKMessaging::Endpoints::ListChannelBans.build(context)
          when :list_channel_flows
            Aws::ChimeSDKMessaging::Endpoints::ListChannelFlows.build(context)
          when :list_channel_memberships
            Aws::ChimeSDKMessaging::Endpoints::ListChannelMemberships.build(context)
          when :list_channel_memberships_for_app_instance_user
            Aws::ChimeSDKMessaging::Endpoints::ListChannelMembershipsForAppInstanceUser.build(context)
          when :list_channel_messages
            Aws::ChimeSDKMessaging::Endpoints::ListChannelMessages.build(context)
          when :list_channel_moderators
            Aws::ChimeSDKMessaging::Endpoints::ListChannelModerators.build(context)
          when :list_channels
            Aws::ChimeSDKMessaging::Endpoints::ListChannels.build(context)
          when :list_channels_associated_with_channel_flow
            Aws::ChimeSDKMessaging::Endpoints::ListChannelsAssociatedWithChannelFlow.build(context)
          when :list_channels_moderated_by_app_instance_user
            Aws::ChimeSDKMessaging::Endpoints::ListChannelsModeratedByAppInstanceUser.build(context)
          when :list_sub_channels
            Aws::ChimeSDKMessaging::Endpoints::ListSubChannels.build(context)
          when :list_tags_for_resource
            Aws::ChimeSDKMessaging::Endpoints::ListTagsForResource.build(context)
          when :put_channel_expiration_settings
            Aws::ChimeSDKMessaging::Endpoints::PutChannelExpirationSettings.build(context)
          when :put_channel_membership_preferences
            Aws::ChimeSDKMessaging::Endpoints::PutChannelMembershipPreferences.build(context)
          when :put_messaging_streaming_configurations
            Aws::ChimeSDKMessaging::Endpoints::PutMessagingStreamingConfigurations.build(context)
          when :redact_channel_message
            Aws::ChimeSDKMessaging::Endpoints::RedactChannelMessage.build(context)
          when :search_channels
            Aws::ChimeSDKMessaging::Endpoints::SearchChannels.build(context)
          when :send_channel_message
            Aws::ChimeSDKMessaging::Endpoints::SendChannelMessage.build(context)
          when :tag_resource
            Aws::ChimeSDKMessaging::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ChimeSDKMessaging::Endpoints::UntagResource.build(context)
          when :update_channel
            Aws::ChimeSDKMessaging::Endpoints::UpdateChannel.build(context)
          when :update_channel_flow
            Aws::ChimeSDKMessaging::Endpoints::UpdateChannelFlow.build(context)
          when :update_channel_message
            Aws::ChimeSDKMessaging::Endpoints::UpdateChannelMessage.build(context)
          when :update_channel_read_marker
            Aws::ChimeSDKMessaging::Endpoints::UpdateChannelReadMarker.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
