# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AppSync
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::AppSync::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::AppSync::EndpointParameters`'
      ) do |cfg|
        Aws::AppSync::EndpointProvider.new
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
          when :associate_api
            Aws::AppSync::Endpoints::AssociateApi.build(context)
          when :associate_merged_graphql_api
            Aws::AppSync::Endpoints::AssociateMergedGraphqlApi.build(context)
          when :associate_source_graphql_api
            Aws::AppSync::Endpoints::AssociateSourceGraphqlApi.build(context)
          when :create_api_cache
            Aws::AppSync::Endpoints::CreateApiCache.build(context)
          when :create_api_key
            Aws::AppSync::Endpoints::CreateApiKey.build(context)
          when :create_data_source
            Aws::AppSync::Endpoints::CreateDataSource.build(context)
          when :create_domain_name
            Aws::AppSync::Endpoints::CreateDomainName.build(context)
          when :create_function
            Aws::AppSync::Endpoints::CreateFunction.build(context)
          when :create_graphql_api
            Aws::AppSync::Endpoints::CreateGraphqlApi.build(context)
          when :create_resolver
            Aws::AppSync::Endpoints::CreateResolver.build(context)
          when :create_type
            Aws::AppSync::Endpoints::CreateType.build(context)
          when :delete_api_cache
            Aws::AppSync::Endpoints::DeleteApiCache.build(context)
          when :delete_api_key
            Aws::AppSync::Endpoints::DeleteApiKey.build(context)
          when :delete_data_source
            Aws::AppSync::Endpoints::DeleteDataSource.build(context)
          when :delete_domain_name
            Aws::AppSync::Endpoints::DeleteDomainName.build(context)
          when :delete_function
            Aws::AppSync::Endpoints::DeleteFunction.build(context)
          when :delete_graphql_api
            Aws::AppSync::Endpoints::DeleteGraphqlApi.build(context)
          when :delete_resolver
            Aws::AppSync::Endpoints::DeleteResolver.build(context)
          when :delete_type
            Aws::AppSync::Endpoints::DeleteType.build(context)
          when :disassociate_api
            Aws::AppSync::Endpoints::DisassociateApi.build(context)
          when :disassociate_merged_graphql_api
            Aws::AppSync::Endpoints::DisassociateMergedGraphqlApi.build(context)
          when :disassociate_source_graphql_api
            Aws::AppSync::Endpoints::DisassociateSourceGraphqlApi.build(context)
          when :evaluate_code
            Aws::AppSync::Endpoints::EvaluateCode.build(context)
          when :evaluate_mapping_template
            Aws::AppSync::Endpoints::EvaluateMappingTemplate.build(context)
          when :flush_api_cache
            Aws::AppSync::Endpoints::FlushApiCache.build(context)
          when :get_api_association
            Aws::AppSync::Endpoints::GetApiAssociation.build(context)
          when :get_api_cache
            Aws::AppSync::Endpoints::GetApiCache.build(context)
          when :get_data_source
            Aws::AppSync::Endpoints::GetDataSource.build(context)
          when :get_domain_name
            Aws::AppSync::Endpoints::GetDomainName.build(context)
          when :get_function
            Aws::AppSync::Endpoints::GetFunction.build(context)
          when :get_graphql_api
            Aws::AppSync::Endpoints::GetGraphqlApi.build(context)
          when :get_introspection_schema
            Aws::AppSync::Endpoints::GetIntrospectionSchema.build(context)
          when :get_resolver
            Aws::AppSync::Endpoints::GetResolver.build(context)
          when :get_schema_creation_status
            Aws::AppSync::Endpoints::GetSchemaCreationStatus.build(context)
          when :get_source_api_association
            Aws::AppSync::Endpoints::GetSourceApiAssociation.build(context)
          when :get_type
            Aws::AppSync::Endpoints::GetType.build(context)
          when :list_api_keys
            Aws::AppSync::Endpoints::ListApiKeys.build(context)
          when :list_data_sources
            Aws::AppSync::Endpoints::ListDataSources.build(context)
          when :list_domain_names
            Aws::AppSync::Endpoints::ListDomainNames.build(context)
          when :list_functions
            Aws::AppSync::Endpoints::ListFunctions.build(context)
          when :list_graphql_apis
            Aws::AppSync::Endpoints::ListGraphqlApis.build(context)
          when :list_resolvers
            Aws::AppSync::Endpoints::ListResolvers.build(context)
          when :list_resolvers_by_function
            Aws::AppSync::Endpoints::ListResolversByFunction.build(context)
          when :list_source_api_associations
            Aws::AppSync::Endpoints::ListSourceApiAssociations.build(context)
          when :list_tags_for_resource
            Aws::AppSync::Endpoints::ListTagsForResource.build(context)
          when :list_types
            Aws::AppSync::Endpoints::ListTypes.build(context)
          when :list_types_by_association
            Aws::AppSync::Endpoints::ListTypesByAssociation.build(context)
          when :start_schema_creation
            Aws::AppSync::Endpoints::StartSchemaCreation.build(context)
          when :start_schema_merge
            Aws::AppSync::Endpoints::StartSchemaMerge.build(context)
          when :tag_resource
            Aws::AppSync::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::AppSync::Endpoints::UntagResource.build(context)
          when :update_api_cache
            Aws::AppSync::Endpoints::UpdateApiCache.build(context)
          when :update_api_key
            Aws::AppSync::Endpoints::UpdateApiKey.build(context)
          when :update_data_source
            Aws::AppSync::Endpoints::UpdateDataSource.build(context)
          when :update_domain_name
            Aws::AppSync::Endpoints::UpdateDomainName.build(context)
          when :update_function
            Aws::AppSync::Endpoints::UpdateFunction.build(context)
          when :update_graphql_api
            Aws::AppSync::Endpoints::UpdateGraphqlApi.build(context)
          when :update_resolver
            Aws::AppSync::Endpoints::UpdateResolver.build(context)
          when :update_source_api_association
            Aws::AppSync::Endpoints::UpdateSourceApiAssociation.build(context)
          when :update_type
            Aws::AppSync::Endpoints::UpdateType.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
