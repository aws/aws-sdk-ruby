# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ManagedGrafana
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ManagedGrafana::EndpointProvider',
        rbs_type: 'untyped',
        docstring: <<~DOCS) do |_cfg|
The endpoint provider used to resolve endpoints. Any object that responds to
`#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
`Aws::ManagedGrafana::EndpointParameters`.
        DOCS
        Aws::ManagedGrafana::EndpointProvider.new
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

          with_metrics(context) { @handler.call(context) }
        end

        private

        def with_metrics(context, &block)
          metrics = []
          metrics << 'ENDPOINT_OVERRIDE' unless context.config.regional_endpoint
          if context[:auth_scheme] && context[:auth_scheme]['name'] == 'sigv4a'
            metrics << 'SIGV4A_SIGNING'
          end
          if context.config.credentials&.credentials&.account_id
            metrics << 'RESOLVED_ACCOUNT_ID'
          end
          Aws::Plugins::UserAgent.metric(*metrics, &block)
        end

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
          when :associate_license
            Aws::ManagedGrafana::Endpoints::AssociateLicense.build(context)
          when :create_workspace
            Aws::ManagedGrafana::Endpoints::CreateWorkspace.build(context)
          when :create_workspace_api_key
            Aws::ManagedGrafana::Endpoints::CreateWorkspaceApiKey.build(context)
          when :create_workspace_service_account
            Aws::ManagedGrafana::Endpoints::CreateWorkspaceServiceAccount.build(context)
          when :create_workspace_service_account_token
            Aws::ManagedGrafana::Endpoints::CreateWorkspaceServiceAccountToken.build(context)
          when :delete_workspace
            Aws::ManagedGrafana::Endpoints::DeleteWorkspace.build(context)
          when :delete_workspace_api_key
            Aws::ManagedGrafana::Endpoints::DeleteWorkspaceApiKey.build(context)
          when :delete_workspace_service_account
            Aws::ManagedGrafana::Endpoints::DeleteWorkspaceServiceAccount.build(context)
          when :delete_workspace_service_account_token
            Aws::ManagedGrafana::Endpoints::DeleteWorkspaceServiceAccountToken.build(context)
          when :describe_workspace
            Aws::ManagedGrafana::Endpoints::DescribeWorkspace.build(context)
          when :describe_workspace_authentication
            Aws::ManagedGrafana::Endpoints::DescribeWorkspaceAuthentication.build(context)
          when :describe_workspace_configuration
            Aws::ManagedGrafana::Endpoints::DescribeWorkspaceConfiguration.build(context)
          when :disassociate_license
            Aws::ManagedGrafana::Endpoints::DisassociateLicense.build(context)
          when :list_permissions
            Aws::ManagedGrafana::Endpoints::ListPermissions.build(context)
          when :list_tags_for_resource
            Aws::ManagedGrafana::Endpoints::ListTagsForResource.build(context)
          when :list_versions
            Aws::ManagedGrafana::Endpoints::ListVersions.build(context)
          when :list_workspace_service_account_tokens
            Aws::ManagedGrafana::Endpoints::ListWorkspaceServiceAccountTokens.build(context)
          when :list_workspace_service_accounts
            Aws::ManagedGrafana::Endpoints::ListWorkspaceServiceAccounts.build(context)
          when :list_workspaces
            Aws::ManagedGrafana::Endpoints::ListWorkspaces.build(context)
          when :tag_resource
            Aws::ManagedGrafana::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ManagedGrafana::Endpoints::UntagResource.build(context)
          when :update_permissions
            Aws::ManagedGrafana::Endpoints::UpdatePermissions.build(context)
          when :update_workspace
            Aws::ManagedGrafana::Endpoints::UpdateWorkspace.build(context)
          when :update_workspace_authentication
            Aws::ManagedGrafana::Endpoints::UpdateWorkspaceAuthentication.build(context)
          when :update_workspace_configuration
            Aws::ManagedGrafana::Endpoints::UpdateWorkspaceConfiguration.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
