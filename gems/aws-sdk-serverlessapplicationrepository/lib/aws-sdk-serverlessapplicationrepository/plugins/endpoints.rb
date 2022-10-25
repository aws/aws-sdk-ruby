# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ServerlessApplicationRepository
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ServerlessApplicationRepository::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ServerlessApplicationRepository::EndpointParameters`'
      ) do |cfg|
        Aws::ServerlessApplicationRepository::EndpointProvider.new
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
            Aws::ServerlessApplicationRepository::Endpoints::CreateApplication.build(context)
          when :create_application_version
            Aws::ServerlessApplicationRepository::Endpoints::CreateApplicationVersion.build(context)
          when :create_cloud_formation_change_set
            Aws::ServerlessApplicationRepository::Endpoints::CreateCloudFormationChangeSet.build(context)
          when :create_cloud_formation_template
            Aws::ServerlessApplicationRepository::Endpoints::CreateCloudFormationTemplate.build(context)
          when :delete_application
            Aws::ServerlessApplicationRepository::Endpoints::DeleteApplication.build(context)
          when :get_application
            Aws::ServerlessApplicationRepository::Endpoints::GetApplication.build(context)
          when :get_application_policy
            Aws::ServerlessApplicationRepository::Endpoints::GetApplicationPolicy.build(context)
          when :get_cloud_formation_template
            Aws::ServerlessApplicationRepository::Endpoints::GetCloudFormationTemplate.build(context)
          when :list_application_dependencies
            Aws::ServerlessApplicationRepository::Endpoints::ListApplicationDependencies.build(context)
          when :list_application_versions
            Aws::ServerlessApplicationRepository::Endpoints::ListApplicationVersions.build(context)
          when :list_applications
            Aws::ServerlessApplicationRepository::Endpoints::ListApplications.build(context)
          when :put_application_policy
            Aws::ServerlessApplicationRepository::Endpoints::PutApplicationPolicy.build(context)
          when :unshare_application
            Aws::ServerlessApplicationRepository::Endpoints::UnshareApplication.build(context)
          when :update_application
            Aws::ServerlessApplicationRepository::Endpoints::UpdateApplication.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
