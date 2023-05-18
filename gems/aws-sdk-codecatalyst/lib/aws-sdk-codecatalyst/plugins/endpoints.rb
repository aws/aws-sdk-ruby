# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CodeCatalyst
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CodeCatalyst::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CodeCatalyst::EndpointParameters`'
      ) do |cfg|
        Aws::CodeCatalyst::EndpointProvider.new
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
          when :create_access_token
            Aws::CodeCatalyst::Endpoints::CreateAccessToken.build(context)
          when :create_dev_environment
            Aws::CodeCatalyst::Endpoints::CreateDevEnvironment.build(context)
          when :create_project
            Aws::CodeCatalyst::Endpoints::CreateProject.build(context)
          when :create_source_repository_branch
            Aws::CodeCatalyst::Endpoints::CreateSourceRepositoryBranch.build(context)
          when :delete_access_token
            Aws::CodeCatalyst::Endpoints::DeleteAccessToken.build(context)
          when :delete_dev_environment
            Aws::CodeCatalyst::Endpoints::DeleteDevEnvironment.build(context)
          when :get_dev_environment
            Aws::CodeCatalyst::Endpoints::GetDevEnvironment.build(context)
          when :get_project
            Aws::CodeCatalyst::Endpoints::GetProject.build(context)
          when :get_source_repository_clone_urls
            Aws::CodeCatalyst::Endpoints::GetSourceRepositoryCloneUrls.build(context)
          when :get_space
            Aws::CodeCatalyst::Endpoints::GetSpace.build(context)
          when :get_subscription
            Aws::CodeCatalyst::Endpoints::GetSubscription.build(context)
          when :get_user_details
            Aws::CodeCatalyst::Endpoints::GetUserDetails.build(context)
          when :list_access_tokens
            Aws::CodeCatalyst::Endpoints::ListAccessTokens.build(context)
          when :list_dev_environment_sessions
            Aws::CodeCatalyst::Endpoints::ListDevEnvironmentSessions.build(context)
          when :list_dev_environments
            Aws::CodeCatalyst::Endpoints::ListDevEnvironments.build(context)
          when :list_event_logs
            Aws::CodeCatalyst::Endpoints::ListEventLogs.build(context)
          when :list_projects
            Aws::CodeCatalyst::Endpoints::ListProjects.build(context)
          when :list_source_repositories
            Aws::CodeCatalyst::Endpoints::ListSourceRepositories.build(context)
          when :list_source_repository_branches
            Aws::CodeCatalyst::Endpoints::ListSourceRepositoryBranches.build(context)
          when :list_spaces
            Aws::CodeCatalyst::Endpoints::ListSpaces.build(context)
          when :start_dev_environment
            Aws::CodeCatalyst::Endpoints::StartDevEnvironment.build(context)
          when :start_dev_environment_session
            Aws::CodeCatalyst::Endpoints::StartDevEnvironmentSession.build(context)
          when :stop_dev_environment
            Aws::CodeCatalyst::Endpoints::StopDevEnvironment.build(context)
          when :stop_dev_environment_session
            Aws::CodeCatalyst::Endpoints::StopDevEnvironmentSession.build(context)
          when :update_dev_environment
            Aws::CodeCatalyst::Endpoints::UpdateDevEnvironment.build(context)
          when :verify_session
            Aws::CodeCatalyst::Endpoints::VerifySession.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
