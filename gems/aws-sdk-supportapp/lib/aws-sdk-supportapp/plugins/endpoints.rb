# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SupportApp
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SupportApp::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SupportApp::EndpointParameters`'
      ) do |cfg|
        Aws::SupportApp::EndpointProvider.new
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
          when :create_slack_channel_configuration
            Aws::SupportApp::Endpoints::CreateSlackChannelConfiguration.build(context)
          when :delete_account_alias
            Aws::SupportApp::Endpoints::DeleteAccountAlias.build(context)
          when :delete_slack_channel_configuration
            Aws::SupportApp::Endpoints::DeleteSlackChannelConfiguration.build(context)
          when :delete_slack_workspace_configuration
            Aws::SupportApp::Endpoints::DeleteSlackWorkspaceConfiguration.build(context)
          when :get_account_alias
            Aws::SupportApp::Endpoints::GetAccountAlias.build(context)
          when :list_slack_channel_configurations
            Aws::SupportApp::Endpoints::ListSlackChannelConfigurations.build(context)
          when :list_slack_workspace_configurations
            Aws::SupportApp::Endpoints::ListSlackWorkspaceConfigurations.build(context)
          when :put_account_alias
            Aws::SupportApp::Endpoints::PutAccountAlias.build(context)
          when :register_slack_workspace_for_organization
            Aws::SupportApp::Endpoints::RegisterSlackWorkspaceForOrganization.build(context)
          when :update_slack_channel_configuration
            Aws::SupportApp::Endpoints::UpdateSlackChannelConfiguration.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
