# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ChimeSDKIdentity
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ChimeSDKIdentity::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ChimeSDKIdentity::EndpointParameters`'
      ) do |cfg|
        Aws::ChimeSDKIdentity::EndpointProvider.new
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
          when :create_app_instance
            Aws::ChimeSDKIdentity::Endpoints::CreateAppInstance.build(context)
          when :create_app_instance_admin
            Aws::ChimeSDKIdentity::Endpoints::CreateAppInstanceAdmin.build(context)
          when :create_app_instance_bot
            Aws::ChimeSDKIdentity::Endpoints::CreateAppInstanceBot.build(context)
          when :create_app_instance_user
            Aws::ChimeSDKIdentity::Endpoints::CreateAppInstanceUser.build(context)
          when :delete_app_instance
            Aws::ChimeSDKIdentity::Endpoints::DeleteAppInstance.build(context)
          when :delete_app_instance_admin
            Aws::ChimeSDKIdentity::Endpoints::DeleteAppInstanceAdmin.build(context)
          when :delete_app_instance_bot
            Aws::ChimeSDKIdentity::Endpoints::DeleteAppInstanceBot.build(context)
          when :delete_app_instance_user
            Aws::ChimeSDKIdentity::Endpoints::DeleteAppInstanceUser.build(context)
          when :deregister_app_instance_user_endpoint
            Aws::ChimeSDKIdentity::Endpoints::DeregisterAppInstanceUserEndpoint.build(context)
          when :describe_app_instance
            Aws::ChimeSDKIdentity::Endpoints::DescribeAppInstance.build(context)
          when :describe_app_instance_admin
            Aws::ChimeSDKIdentity::Endpoints::DescribeAppInstanceAdmin.build(context)
          when :describe_app_instance_bot
            Aws::ChimeSDKIdentity::Endpoints::DescribeAppInstanceBot.build(context)
          when :describe_app_instance_user
            Aws::ChimeSDKIdentity::Endpoints::DescribeAppInstanceUser.build(context)
          when :describe_app_instance_user_endpoint
            Aws::ChimeSDKIdentity::Endpoints::DescribeAppInstanceUserEndpoint.build(context)
          when :get_app_instance_retention_settings
            Aws::ChimeSDKIdentity::Endpoints::GetAppInstanceRetentionSettings.build(context)
          when :list_app_instance_admins
            Aws::ChimeSDKIdentity::Endpoints::ListAppInstanceAdmins.build(context)
          when :list_app_instance_bots
            Aws::ChimeSDKIdentity::Endpoints::ListAppInstanceBots.build(context)
          when :list_app_instance_user_endpoints
            Aws::ChimeSDKIdentity::Endpoints::ListAppInstanceUserEndpoints.build(context)
          when :list_app_instance_users
            Aws::ChimeSDKIdentity::Endpoints::ListAppInstanceUsers.build(context)
          when :list_app_instances
            Aws::ChimeSDKIdentity::Endpoints::ListAppInstances.build(context)
          when :list_tags_for_resource
            Aws::ChimeSDKIdentity::Endpoints::ListTagsForResource.build(context)
          when :put_app_instance_retention_settings
            Aws::ChimeSDKIdentity::Endpoints::PutAppInstanceRetentionSettings.build(context)
          when :put_app_instance_user_expiration_settings
            Aws::ChimeSDKIdentity::Endpoints::PutAppInstanceUserExpirationSettings.build(context)
          when :register_app_instance_user_endpoint
            Aws::ChimeSDKIdentity::Endpoints::RegisterAppInstanceUserEndpoint.build(context)
          when :tag_resource
            Aws::ChimeSDKIdentity::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ChimeSDKIdentity::Endpoints::UntagResource.build(context)
          when :update_app_instance
            Aws::ChimeSDKIdentity::Endpoints::UpdateAppInstance.build(context)
          when :update_app_instance_bot
            Aws::ChimeSDKIdentity::Endpoints::UpdateAppInstanceBot.build(context)
          when :update_app_instance_user
            Aws::ChimeSDKIdentity::Endpoints::UpdateAppInstanceUser.build(context)
          when :update_app_instance_user_endpoint
            Aws::ChimeSDKIdentity::Endpoints::UpdateAppInstanceUserEndpoint.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
