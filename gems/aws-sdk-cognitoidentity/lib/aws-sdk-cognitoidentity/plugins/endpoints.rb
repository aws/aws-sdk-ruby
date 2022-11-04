# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CognitoIdentity
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CognitoIdentity::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CognitoIdentity::EndpointParameters`'
      ) do |cfg|
        Aws::CognitoIdentity::EndpointProvider.new
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
          when :create_identity_pool
            Aws::CognitoIdentity::Endpoints::CreateIdentityPool.build(context)
          when :delete_identities
            Aws::CognitoIdentity::Endpoints::DeleteIdentities.build(context)
          when :delete_identity_pool
            Aws::CognitoIdentity::Endpoints::DeleteIdentityPool.build(context)
          when :describe_identity
            Aws::CognitoIdentity::Endpoints::DescribeIdentity.build(context)
          when :describe_identity_pool
            Aws::CognitoIdentity::Endpoints::DescribeIdentityPool.build(context)
          when :get_credentials_for_identity
            Aws::CognitoIdentity::Endpoints::GetCredentialsForIdentity.build(context)
          when :get_id
            Aws::CognitoIdentity::Endpoints::GetId.build(context)
          when :get_identity_pool_roles
            Aws::CognitoIdentity::Endpoints::GetIdentityPoolRoles.build(context)
          when :get_open_id_token
            Aws::CognitoIdentity::Endpoints::GetOpenIdToken.build(context)
          when :get_open_id_token_for_developer_identity
            Aws::CognitoIdentity::Endpoints::GetOpenIdTokenForDeveloperIdentity.build(context)
          when :get_principal_tag_attribute_map
            Aws::CognitoIdentity::Endpoints::GetPrincipalTagAttributeMap.build(context)
          when :list_identities
            Aws::CognitoIdentity::Endpoints::ListIdentities.build(context)
          when :list_identity_pools
            Aws::CognitoIdentity::Endpoints::ListIdentityPools.build(context)
          when :list_tags_for_resource
            Aws::CognitoIdentity::Endpoints::ListTagsForResource.build(context)
          when :lookup_developer_identity
            Aws::CognitoIdentity::Endpoints::LookupDeveloperIdentity.build(context)
          when :merge_developer_identities
            Aws::CognitoIdentity::Endpoints::MergeDeveloperIdentities.build(context)
          when :set_identity_pool_roles
            Aws::CognitoIdentity::Endpoints::SetIdentityPoolRoles.build(context)
          when :set_principal_tag_attribute_map
            Aws::CognitoIdentity::Endpoints::SetPrincipalTagAttributeMap.build(context)
          when :tag_resource
            Aws::CognitoIdentity::Endpoints::TagResource.build(context)
          when :unlink_developer_identity
            Aws::CognitoIdentity::Endpoints::UnlinkDeveloperIdentity.build(context)
          when :unlink_identity
            Aws::CognitoIdentity::Endpoints::UnlinkIdentity.build(context)
          when :untag_resource
            Aws::CognitoIdentity::Endpoints::UntagResource.build(context)
          when :update_identity_pool
            Aws::CognitoIdentity::Endpoints::UpdateIdentityPool.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
