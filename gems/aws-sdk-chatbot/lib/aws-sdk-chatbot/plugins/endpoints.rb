# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Chatbot
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Chatbot::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Chatbot::EndpointParameters`'
      ) do |cfg|
        Aws::Chatbot::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)

            context[:endpoint_params] = params
            context[:endpoint_properties] = endpoint.properties
          end

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
          when :create_chime_webhook_configuration
            Aws::Chatbot::Endpoints::CreateChimeWebhookConfiguration.build(context)
          when :create_microsoft_teams_channel_configuration
            Aws::Chatbot::Endpoints::CreateMicrosoftTeamsChannelConfiguration.build(context)
          when :create_slack_channel_configuration
            Aws::Chatbot::Endpoints::CreateSlackChannelConfiguration.build(context)
          when :delete_chime_webhook_configuration
            Aws::Chatbot::Endpoints::DeleteChimeWebhookConfiguration.build(context)
          when :delete_microsoft_teams_channel_configuration
            Aws::Chatbot::Endpoints::DeleteMicrosoftTeamsChannelConfiguration.build(context)
          when :delete_microsoft_teams_configured_team
            Aws::Chatbot::Endpoints::DeleteMicrosoftTeamsConfiguredTeam.build(context)
          when :delete_microsoft_teams_user_identity
            Aws::Chatbot::Endpoints::DeleteMicrosoftTeamsUserIdentity.build(context)
          when :delete_slack_channel_configuration
            Aws::Chatbot::Endpoints::DeleteSlackChannelConfiguration.build(context)
          when :delete_slack_user_identity
            Aws::Chatbot::Endpoints::DeleteSlackUserIdentity.build(context)
          when :delete_slack_workspace_authorization
            Aws::Chatbot::Endpoints::DeleteSlackWorkspaceAuthorization.build(context)
          when :describe_chime_webhook_configurations
            Aws::Chatbot::Endpoints::DescribeChimeWebhookConfigurations.build(context)
          when :describe_slack_channel_configurations
            Aws::Chatbot::Endpoints::DescribeSlackChannelConfigurations.build(context)
          when :describe_slack_user_identities
            Aws::Chatbot::Endpoints::DescribeSlackUserIdentities.build(context)
          when :describe_slack_workspaces
            Aws::Chatbot::Endpoints::DescribeSlackWorkspaces.build(context)
          when :get_account_preferences
            Aws::Chatbot::Endpoints::GetAccountPreferences.build(context)
          when :get_microsoft_teams_channel_configuration
            Aws::Chatbot::Endpoints::GetMicrosoftTeamsChannelConfiguration.build(context)
          when :list_microsoft_teams_channel_configurations
            Aws::Chatbot::Endpoints::ListMicrosoftTeamsChannelConfigurations.build(context)
          when :list_microsoft_teams_configured_teams
            Aws::Chatbot::Endpoints::ListMicrosoftTeamsConfiguredTeams.build(context)
          when :list_microsoft_teams_user_identities
            Aws::Chatbot::Endpoints::ListMicrosoftTeamsUserIdentities.build(context)
          when :update_account_preferences
            Aws::Chatbot::Endpoints::UpdateAccountPreferences.build(context)
          when :update_chime_webhook_configuration
            Aws::Chatbot::Endpoints::UpdateChimeWebhookConfiguration.build(context)
          when :update_microsoft_teams_channel_configuration
            Aws::Chatbot::Endpoints::UpdateMicrosoftTeamsChannelConfiguration.build(context)
          when :update_slack_channel_configuration
            Aws::Chatbot::Endpoints::UpdateSlackChannelConfiguration.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
