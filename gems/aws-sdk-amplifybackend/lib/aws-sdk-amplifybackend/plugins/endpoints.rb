# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AmplifyBackend
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::AmplifyBackend::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::AmplifyBackend::EndpointParameters`'
      ) do |cfg|
        Aws::AmplifyBackend::EndpointProvider.new
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
          when :clone_backend
            Aws::AmplifyBackend::Endpoints::CloneBackend.build(context)
          when :create_backend
            Aws::AmplifyBackend::Endpoints::CreateBackend.build(context)
          when :create_backend_api
            Aws::AmplifyBackend::Endpoints::CreateBackendAPI.build(context)
          when :create_backend_auth
            Aws::AmplifyBackend::Endpoints::CreateBackendAuth.build(context)
          when :create_backend_config
            Aws::AmplifyBackend::Endpoints::CreateBackendConfig.build(context)
          when :create_backend_storage
            Aws::AmplifyBackend::Endpoints::CreateBackendStorage.build(context)
          when :create_token
            Aws::AmplifyBackend::Endpoints::CreateToken.build(context)
          when :delete_backend
            Aws::AmplifyBackend::Endpoints::DeleteBackend.build(context)
          when :delete_backend_api
            Aws::AmplifyBackend::Endpoints::DeleteBackendAPI.build(context)
          when :delete_backend_auth
            Aws::AmplifyBackend::Endpoints::DeleteBackendAuth.build(context)
          when :delete_backend_storage
            Aws::AmplifyBackend::Endpoints::DeleteBackendStorage.build(context)
          when :delete_token
            Aws::AmplifyBackend::Endpoints::DeleteToken.build(context)
          when :generate_backend_api_models
            Aws::AmplifyBackend::Endpoints::GenerateBackendAPIModels.build(context)
          when :get_backend
            Aws::AmplifyBackend::Endpoints::GetBackend.build(context)
          when :get_backend_api
            Aws::AmplifyBackend::Endpoints::GetBackendAPI.build(context)
          when :get_backend_api_models
            Aws::AmplifyBackend::Endpoints::GetBackendAPIModels.build(context)
          when :get_backend_auth
            Aws::AmplifyBackend::Endpoints::GetBackendAuth.build(context)
          when :get_backend_job
            Aws::AmplifyBackend::Endpoints::GetBackendJob.build(context)
          when :get_backend_storage
            Aws::AmplifyBackend::Endpoints::GetBackendStorage.build(context)
          when :get_token
            Aws::AmplifyBackend::Endpoints::GetToken.build(context)
          when :import_backend_auth
            Aws::AmplifyBackend::Endpoints::ImportBackendAuth.build(context)
          when :import_backend_storage
            Aws::AmplifyBackend::Endpoints::ImportBackendStorage.build(context)
          when :list_backend_jobs
            Aws::AmplifyBackend::Endpoints::ListBackendJobs.build(context)
          when :list_s3_buckets
            Aws::AmplifyBackend::Endpoints::ListS3Buckets.build(context)
          when :remove_all_backends
            Aws::AmplifyBackend::Endpoints::RemoveAllBackends.build(context)
          when :remove_backend_config
            Aws::AmplifyBackend::Endpoints::RemoveBackendConfig.build(context)
          when :update_backend_api
            Aws::AmplifyBackend::Endpoints::UpdateBackendAPI.build(context)
          when :update_backend_auth
            Aws::AmplifyBackend::Endpoints::UpdateBackendAuth.build(context)
          when :update_backend_config
            Aws::AmplifyBackend::Endpoints::UpdateBackendConfig.build(context)
          when :update_backend_job
            Aws::AmplifyBackend::Endpoints::UpdateBackendJob.build(context)
          when :update_backend_storage
            Aws::AmplifyBackend::Endpoints::UpdateBackendStorage.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
