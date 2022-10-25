# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::RedshiftDataAPIService
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::RedshiftDataAPIService::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::RedshiftDataAPIService::EndpointParameters`'
      ) do |cfg|
        Aws::RedshiftDataAPIService::EndpointProvider.new
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
          when :batch_execute_statement
            Aws::RedshiftDataAPIService::Endpoints::BatchExecuteStatement.build(context)
          when :cancel_statement
            Aws::RedshiftDataAPIService::Endpoints::CancelStatement.build(context)
          when :describe_statement
            Aws::RedshiftDataAPIService::Endpoints::DescribeStatement.build(context)
          when :describe_table
            Aws::RedshiftDataAPIService::Endpoints::DescribeTable.build(context)
          when :execute_statement
            Aws::RedshiftDataAPIService::Endpoints::ExecuteStatement.build(context)
          when :get_statement_result
            Aws::RedshiftDataAPIService::Endpoints::GetStatementResult.build(context)
          when :list_databases
            Aws::RedshiftDataAPIService::Endpoints::ListDatabases.build(context)
          when :list_schemas
            Aws::RedshiftDataAPIService::Endpoints::ListSchemas.build(context)
          when :list_statements
            Aws::RedshiftDataAPIService::Endpoints::ListStatements.build(context)
          when :list_tables
            Aws::RedshiftDataAPIService::Endpoints::ListTables.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
