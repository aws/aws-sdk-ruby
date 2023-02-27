# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::TimestreamWrite
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::TimestreamWrite::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::TimestreamWrite::EndpointParameters`'
      ) do |cfg|
        Aws::TimestreamWrite::EndpointProvider.new
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
          when :create_batch_load_task
            Aws::TimestreamWrite::Endpoints::CreateBatchLoadTask.build(context)
          when :create_database
            Aws::TimestreamWrite::Endpoints::CreateDatabase.build(context)
          when :create_table
            Aws::TimestreamWrite::Endpoints::CreateTable.build(context)
          when :delete_database
            Aws::TimestreamWrite::Endpoints::DeleteDatabase.build(context)
          when :delete_table
            Aws::TimestreamWrite::Endpoints::DeleteTable.build(context)
          when :describe_batch_load_task
            Aws::TimestreamWrite::Endpoints::DescribeBatchLoadTask.build(context)
          when :describe_database
            Aws::TimestreamWrite::Endpoints::DescribeDatabase.build(context)
          when :describe_endpoints
            Aws::TimestreamWrite::Endpoints::DescribeEndpoints.build(context)
          when :describe_table
            Aws::TimestreamWrite::Endpoints::DescribeTable.build(context)
          when :list_batch_load_tasks
            Aws::TimestreamWrite::Endpoints::ListBatchLoadTasks.build(context)
          when :list_databases
            Aws::TimestreamWrite::Endpoints::ListDatabases.build(context)
          when :list_tables
            Aws::TimestreamWrite::Endpoints::ListTables.build(context)
          when :list_tags_for_resource
            Aws::TimestreamWrite::Endpoints::ListTagsForResource.build(context)
          when :resume_batch_load_task
            Aws::TimestreamWrite::Endpoints::ResumeBatchLoadTask.build(context)
          when :tag_resource
            Aws::TimestreamWrite::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::TimestreamWrite::Endpoints::UntagResource.build(context)
          when :update_database
            Aws::TimestreamWrite::Endpoints::UpdateDatabase.build(context)
          when :update_table
            Aws::TimestreamWrite::Endpoints::UpdateTable.build(context)
          when :write_records
            Aws::TimestreamWrite::Endpoints::WriteRecords.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
