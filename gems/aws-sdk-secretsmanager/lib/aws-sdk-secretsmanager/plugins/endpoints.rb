# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SecretsManager
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SecretsManager::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SecretsManager::EndpointParameters`'
      ) do |cfg|
        Aws::SecretsManager::EndpointProvider.new
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
          when :cancel_rotate_secret
            Aws::SecretsManager::Endpoints::CancelRotateSecret.build(context)
          when :create_secret
            Aws::SecretsManager::Endpoints::CreateSecret.build(context)
          when :delete_resource_policy
            Aws::SecretsManager::Endpoints::DeleteResourcePolicy.build(context)
          when :delete_secret
            Aws::SecretsManager::Endpoints::DeleteSecret.build(context)
          when :describe_secret
            Aws::SecretsManager::Endpoints::DescribeSecret.build(context)
          when :get_random_password
            Aws::SecretsManager::Endpoints::GetRandomPassword.build(context)
          when :get_resource_policy
            Aws::SecretsManager::Endpoints::GetResourcePolicy.build(context)
          when :get_secret_value
            Aws::SecretsManager::Endpoints::GetSecretValue.build(context)
          when :list_secret_version_ids
            Aws::SecretsManager::Endpoints::ListSecretVersionIds.build(context)
          when :list_secrets
            Aws::SecretsManager::Endpoints::ListSecrets.build(context)
          when :put_resource_policy
            Aws::SecretsManager::Endpoints::PutResourcePolicy.build(context)
          when :put_secret_value
            Aws::SecretsManager::Endpoints::PutSecretValue.build(context)
          when :remove_regions_from_replication
            Aws::SecretsManager::Endpoints::RemoveRegionsFromReplication.build(context)
          when :replicate_secret_to_regions
            Aws::SecretsManager::Endpoints::ReplicateSecretToRegions.build(context)
          when :restore_secret
            Aws::SecretsManager::Endpoints::RestoreSecret.build(context)
          when :rotate_secret
            Aws::SecretsManager::Endpoints::RotateSecret.build(context)
          when :stop_replication_to_replica
            Aws::SecretsManager::Endpoints::StopReplicationToReplica.build(context)
          when :tag_resource
            Aws::SecretsManager::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::SecretsManager::Endpoints::UntagResource.build(context)
          when :update_secret
            Aws::SecretsManager::Endpoints::UpdateSecret.build(context)
          when :update_secret_version_stage
            Aws::SecretsManager::Endpoints::UpdateSecretVersionStage.build(context)
          when :validate_resource_policy
            Aws::SecretsManager::Endpoints::ValidateResourcePolicy.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
