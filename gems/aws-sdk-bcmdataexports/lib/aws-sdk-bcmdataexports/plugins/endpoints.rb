# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BCMDataExports
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::BCMDataExports::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::BCMDataExports::EndpointParameters`'
      ) do |cfg|
        Aws::BCMDataExports::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)

            context[:endpoint_params] = params
            context[:endpoint_properties] = endpoint.properties
          end

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
          when :create_export
            Aws::BCMDataExports::Endpoints::CreateExport.build(context)
          when :delete_export
            Aws::BCMDataExports::Endpoints::DeleteExport.build(context)
          when :get_execution
            Aws::BCMDataExports::Endpoints::GetExecution.build(context)
          when :get_export
            Aws::BCMDataExports::Endpoints::GetExport.build(context)
          when :get_table
            Aws::BCMDataExports::Endpoints::GetTable.build(context)
          when :list_executions
            Aws::BCMDataExports::Endpoints::ListExecutions.build(context)
          when :list_exports
            Aws::BCMDataExports::Endpoints::ListExports.build(context)
          when :list_tables
            Aws::BCMDataExports::Endpoints::ListTables.build(context)
          when :list_tags_for_resource
            Aws::BCMDataExports::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::BCMDataExports::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::BCMDataExports::Endpoints::UntagResource.build(context)
          when :update_export
            Aws::BCMDataExports::Endpoints::UpdateExport.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
