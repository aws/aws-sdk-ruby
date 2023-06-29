# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::VerifiedPermissions
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::VerifiedPermissions::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::VerifiedPermissions::EndpointParameters`'
      ) do |cfg|
        Aws::VerifiedPermissions::EndpointProvider.new
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
          when :create_identity_source
            Aws::VerifiedPermissions::Endpoints::CreateIdentitySource.build(context)
          when :create_policy
            Aws::VerifiedPermissions::Endpoints::CreatePolicy.build(context)
          when :create_policy_store
            Aws::VerifiedPermissions::Endpoints::CreatePolicyStore.build(context)
          when :create_policy_template
            Aws::VerifiedPermissions::Endpoints::CreatePolicyTemplate.build(context)
          when :delete_identity_source
            Aws::VerifiedPermissions::Endpoints::DeleteIdentitySource.build(context)
          when :delete_policy
            Aws::VerifiedPermissions::Endpoints::DeletePolicy.build(context)
          when :delete_policy_store
            Aws::VerifiedPermissions::Endpoints::DeletePolicyStore.build(context)
          when :delete_policy_template
            Aws::VerifiedPermissions::Endpoints::DeletePolicyTemplate.build(context)
          when :get_identity_source
            Aws::VerifiedPermissions::Endpoints::GetIdentitySource.build(context)
          when :get_policy
            Aws::VerifiedPermissions::Endpoints::GetPolicy.build(context)
          when :get_policy_store
            Aws::VerifiedPermissions::Endpoints::GetPolicyStore.build(context)
          when :get_policy_template
            Aws::VerifiedPermissions::Endpoints::GetPolicyTemplate.build(context)
          when :get_schema
            Aws::VerifiedPermissions::Endpoints::GetSchema.build(context)
          when :is_authorized
            Aws::VerifiedPermissions::Endpoints::IsAuthorized.build(context)
          when :is_authorized_with_token
            Aws::VerifiedPermissions::Endpoints::IsAuthorizedWithToken.build(context)
          when :list_identity_sources
            Aws::VerifiedPermissions::Endpoints::ListIdentitySources.build(context)
          when :list_policies
            Aws::VerifiedPermissions::Endpoints::ListPolicies.build(context)
          when :list_policy_stores
            Aws::VerifiedPermissions::Endpoints::ListPolicyStores.build(context)
          when :list_policy_templates
            Aws::VerifiedPermissions::Endpoints::ListPolicyTemplates.build(context)
          when :put_schema
            Aws::VerifiedPermissions::Endpoints::PutSchema.build(context)
          when :update_identity_source
            Aws::VerifiedPermissions::Endpoints::UpdateIdentitySource.build(context)
          when :update_policy
            Aws::VerifiedPermissions::Endpoints::UpdatePolicy.build(context)
          when :update_policy_store
            Aws::VerifiedPermissions::Endpoints::UpdatePolicyStore.build(context)
          when :update_policy_template
            Aws::VerifiedPermissions::Endpoints::UpdatePolicyTemplate.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
