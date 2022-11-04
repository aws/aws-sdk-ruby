# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MigrationHubRefactorSpaces
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MigrationHubRefactorSpaces::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MigrationHubRefactorSpaces::EndpointParameters`'
      ) do |cfg|
        Aws::MigrationHubRefactorSpaces::EndpointProvider.new
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
          when :create_application
            Aws::MigrationHubRefactorSpaces::Endpoints::CreateApplication.build(context)
          when :create_environment
            Aws::MigrationHubRefactorSpaces::Endpoints::CreateEnvironment.build(context)
          when :create_route
            Aws::MigrationHubRefactorSpaces::Endpoints::CreateRoute.build(context)
          when :create_service
            Aws::MigrationHubRefactorSpaces::Endpoints::CreateService.build(context)
          when :delete_application
            Aws::MigrationHubRefactorSpaces::Endpoints::DeleteApplication.build(context)
          when :delete_environment
            Aws::MigrationHubRefactorSpaces::Endpoints::DeleteEnvironment.build(context)
          when :delete_resource_policy
            Aws::MigrationHubRefactorSpaces::Endpoints::DeleteResourcePolicy.build(context)
          when :delete_route
            Aws::MigrationHubRefactorSpaces::Endpoints::DeleteRoute.build(context)
          when :delete_service
            Aws::MigrationHubRefactorSpaces::Endpoints::DeleteService.build(context)
          when :get_application
            Aws::MigrationHubRefactorSpaces::Endpoints::GetApplication.build(context)
          when :get_environment
            Aws::MigrationHubRefactorSpaces::Endpoints::GetEnvironment.build(context)
          when :get_resource_policy
            Aws::MigrationHubRefactorSpaces::Endpoints::GetResourcePolicy.build(context)
          when :get_route
            Aws::MigrationHubRefactorSpaces::Endpoints::GetRoute.build(context)
          when :get_service
            Aws::MigrationHubRefactorSpaces::Endpoints::GetService.build(context)
          when :list_applications
            Aws::MigrationHubRefactorSpaces::Endpoints::ListApplications.build(context)
          when :list_environment_vpcs
            Aws::MigrationHubRefactorSpaces::Endpoints::ListEnvironmentVpcs.build(context)
          when :list_environments
            Aws::MigrationHubRefactorSpaces::Endpoints::ListEnvironments.build(context)
          when :list_routes
            Aws::MigrationHubRefactorSpaces::Endpoints::ListRoutes.build(context)
          when :list_services
            Aws::MigrationHubRefactorSpaces::Endpoints::ListServices.build(context)
          when :list_tags_for_resource
            Aws::MigrationHubRefactorSpaces::Endpoints::ListTagsForResource.build(context)
          when :put_resource_policy
            Aws::MigrationHubRefactorSpaces::Endpoints::PutResourcePolicy.build(context)
          when :tag_resource
            Aws::MigrationHubRefactorSpaces::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::MigrationHubRefactorSpaces::Endpoints::UntagResource.build(context)
          when :update_route
            Aws::MigrationHubRefactorSpaces::Endpoints::UpdateRoute.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
