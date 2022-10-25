# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Honeycode
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Honeycode::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Honeycode::EndpointParameters`'
      ) do |cfg|
        Aws::Honeycode::EndpointProvider.new
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
          when :batch_create_table_rows
            Aws::Honeycode::Endpoints::BatchCreateTableRows.build(context)
          when :batch_delete_table_rows
            Aws::Honeycode::Endpoints::BatchDeleteTableRows.build(context)
          when :batch_update_table_rows
            Aws::Honeycode::Endpoints::BatchUpdateTableRows.build(context)
          when :batch_upsert_table_rows
            Aws::Honeycode::Endpoints::BatchUpsertTableRows.build(context)
          when :describe_table_data_import_job
            Aws::Honeycode::Endpoints::DescribeTableDataImportJob.build(context)
          when :get_screen_data
            Aws::Honeycode::Endpoints::GetScreenData.build(context)
          when :invoke_screen_automation
            Aws::Honeycode::Endpoints::InvokeScreenAutomation.build(context)
          when :list_table_columns
            Aws::Honeycode::Endpoints::ListTableColumns.build(context)
          when :list_table_rows
            Aws::Honeycode::Endpoints::ListTableRows.build(context)
          when :list_tables
            Aws::Honeycode::Endpoints::ListTables.build(context)
          when :list_tags_for_resource
            Aws::Honeycode::Endpoints::ListTagsForResource.build(context)
          when :query_table_rows
            Aws::Honeycode::Endpoints::QueryTableRows.build(context)
          when :start_table_data_import_job
            Aws::Honeycode::Endpoints::StartTableDataImportJob.build(context)
          when :tag_resource
            Aws::Honeycode::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Honeycode::Endpoints::UntagResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
