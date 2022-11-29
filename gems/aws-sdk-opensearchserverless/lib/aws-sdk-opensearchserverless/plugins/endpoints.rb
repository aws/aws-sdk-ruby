# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::OpenSearchServerless
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::OpenSearchServerless::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::OpenSearchServerless::EndpointParameters`'
      ) do |cfg|
        Aws::OpenSearchServerless::EndpointProvider.new
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
          when :batch_get_collection
            Aws::OpenSearchServerless::Endpoints::BatchGetCollection.build(context)
          when :batch_get_vpc_endpoint
            Aws::OpenSearchServerless::Endpoints::BatchGetVpcEndpoint.build(context)
          when :create_access_policy
            Aws::OpenSearchServerless::Endpoints::CreateAccessPolicy.build(context)
          when :create_collection
            Aws::OpenSearchServerless::Endpoints::CreateCollection.build(context)
          when :create_security_config
            Aws::OpenSearchServerless::Endpoints::CreateSecurityConfig.build(context)
          when :create_security_policy
            Aws::OpenSearchServerless::Endpoints::CreateSecurityPolicy.build(context)
          when :create_vpc_endpoint
            Aws::OpenSearchServerless::Endpoints::CreateVpcEndpoint.build(context)
          when :delete_access_policy
            Aws::OpenSearchServerless::Endpoints::DeleteAccessPolicy.build(context)
          when :delete_collection
            Aws::OpenSearchServerless::Endpoints::DeleteCollection.build(context)
          when :delete_security_config
            Aws::OpenSearchServerless::Endpoints::DeleteSecurityConfig.build(context)
          when :delete_security_policy
            Aws::OpenSearchServerless::Endpoints::DeleteSecurityPolicy.build(context)
          when :delete_vpc_endpoint
            Aws::OpenSearchServerless::Endpoints::DeleteVpcEndpoint.build(context)
          when :get_access_policy
            Aws::OpenSearchServerless::Endpoints::GetAccessPolicy.build(context)
          when :get_account_settings
            Aws::OpenSearchServerless::Endpoints::GetAccountSettings.build(context)
          when :get_policies_stats
            Aws::OpenSearchServerless::Endpoints::GetPoliciesStats.build(context)
          when :get_security_config
            Aws::OpenSearchServerless::Endpoints::GetSecurityConfig.build(context)
          when :get_security_policy
            Aws::OpenSearchServerless::Endpoints::GetSecurityPolicy.build(context)
          when :list_access_policies
            Aws::OpenSearchServerless::Endpoints::ListAccessPolicies.build(context)
          when :list_collections
            Aws::OpenSearchServerless::Endpoints::ListCollections.build(context)
          when :list_security_configs
            Aws::OpenSearchServerless::Endpoints::ListSecurityConfigs.build(context)
          when :list_security_policies
            Aws::OpenSearchServerless::Endpoints::ListSecurityPolicies.build(context)
          when :list_tags_for_resource
            Aws::OpenSearchServerless::Endpoints::ListTagsForResource.build(context)
          when :list_vpc_endpoints
            Aws::OpenSearchServerless::Endpoints::ListVpcEndpoints.build(context)
          when :tag_resource
            Aws::OpenSearchServerless::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::OpenSearchServerless::Endpoints::UntagResource.build(context)
          when :update_access_policy
            Aws::OpenSearchServerless::Endpoints::UpdateAccessPolicy.build(context)
          when :update_account_settings
            Aws::OpenSearchServerless::Endpoints::UpdateAccountSettings.build(context)
          when :update_collection
            Aws::OpenSearchServerless::Endpoints::UpdateCollection.build(context)
          when :update_security_config
            Aws::OpenSearchServerless::Endpoints::UpdateSecurityConfig.build(context)
          when :update_security_policy
            Aws::OpenSearchServerless::Endpoints::UpdateSecurityPolicy.build(context)
          when :update_vpc_endpoint
            Aws::OpenSearchServerless::Endpoints::UpdateVpcEndpoint.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
