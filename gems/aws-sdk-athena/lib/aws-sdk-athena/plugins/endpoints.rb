# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Athena
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Athena::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Athena::EndpointParameters`'
      ) do |cfg|
        Aws::Athena::EndpointProvider.new
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
          when :batch_get_named_query
            Aws::Athena::Endpoints::BatchGetNamedQuery.build(context)
          when :batch_get_prepared_statement
            Aws::Athena::Endpoints::BatchGetPreparedStatement.build(context)
          when :batch_get_query_execution
            Aws::Athena::Endpoints::BatchGetQueryExecution.build(context)
          when :create_data_catalog
            Aws::Athena::Endpoints::CreateDataCatalog.build(context)
          when :create_named_query
            Aws::Athena::Endpoints::CreateNamedQuery.build(context)
          when :create_prepared_statement
            Aws::Athena::Endpoints::CreatePreparedStatement.build(context)
          when :create_work_group
            Aws::Athena::Endpoints::CreateWorkGroup.build(context)
          when :delete_data_catalog
            Aws::Athena::Endpoints::DeleteDataCatalog.build(context)
          when :delete_named_query
            Aws::Athena::Endpoints::DeleteNamedQuery.build(context)
          when :delete_prepared_statement
            Aws::Athena::Endpoints::DeletePreparedStatement.build(context)
          when :delete_work_group
            Aws::Athena::Endpoints::DeleteWorkGroup.build(context)
          when :get_data_catalog
            Aws::Athena::Endpoints::GetDataCatalog.build(context)
          when :get_database
            Aws::Athena::Endpoints::GetDatabase.build(context)
          when :get_named_query
            Aws::Athena::Endpoints::GetNamedQuery.build(context)
          when :get_prepared_statement
            Aws::Athena::Endpoints::GetPreparedStatement.build(context)
          when :get_query_execution
            Aws::Athena::Endpoints::GetQueryExecution.build(context)
          when :get_query_results
            Aws::Athena::Endpoints::GetQueryResults.build(context)
          when :get_query_runtime_statistics
            Aws::Athena::Endpoints::GetQueryRuntimeStatistics.build(context)
          when :get_table_metadata
            Aws::Athena::Endpoints::GetTableMetadata.build(context)
          when :get_work_group
            Aws::Athena::Endpoints::GetWorkGroup.build(context)
          when :list_data_catalogs
            Aws::Athena::Endpoints::ListDataCatalogs.build(context)
          when :list_databases
            Aws::Athena::Endpoints::ListDatabases.build(context)
          when :list_engine_versions
            Aws::Athena::Endpoints::ListEngineVersions.build(context)
          when :list_named_queries
            Aws::Athena::Endpoints::ListNamedQueries.build(context)
          when :list_prepared_statements
            Aws::Athena::Endpoints::ListPreparedStatements.build(context)
          when :list_query_executions
            Aws::Athena::Endpoints::ListQueryExecutions.build(context)
          when :list_table_metadata
            Aws::Athena::Endpoints::ListTableMetadata.build(context)
          when :list_tags_for_resource
            Aws::Athena::Endpoints::ListTagsForResource.build(context)
          when :list_work_groups
            Aws::Athena::Endpoints::ListWorkGroups.build(context)
          when :start_query_execution
            Aws::Athena::Endpoints::StartQueryExecution.build(context)
          when :stop_query_execution
            Aws::Athena::Endpoints::StopQueryExecution.build(context)
          when :tag_resource
            Aws::Athena::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Athena::Endpoints::UntagResource.build(context)
          when :update_data_catalog
            Aws::Athena::Endpoints::UpdateDataCatalog.build(context)
          when :update_named_query
            Aws::Athena::Endpoints::UpdateNamedQuery.build(context)
          when :update_prepared_statement
            Aws::Athena::Endpoints::UpdatePreparedStatement.build(context)
          when :update_work_group
            Aws::Athena::Endpoints::UpdateWorkGroup.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
