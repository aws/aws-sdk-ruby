# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::NeptuneGraph
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::NeptuneGraph::EndpointProvider',
        rbs_type: 'untyped',
        docstring: <<~DOCS) do |_cfg|
The endpoint provider used to resolve endpoints. Any object that responds to
`#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
`Aws::NeptuneGraph::EndpointParameters`.
        DOCS
        Aws::NeptuneGraph::EndpointProvider.new
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

          with_metrics(context) { @handler.call(context) }
        end

        private

        def with_metrics(context, &block)
          metrics = []
          metrics << 'ENDPOINT_OVERRIDE' unless context.config.regional_endpoint
          if context[:auth_scheme] && context[:auth_scheme]['name'] == 'sigv4a'
            metrics << 'SIGV4A_SIGNING'
          end
          if context.config.credentials&.credentials&.account_id
            metrics << 'RESOLVED_ACCOUNT_ID'
          end
          Aws::Plugins::UserAgent.metric(*metrics, &block)
        end

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
          when :cancel_import_task
            Aws::NeptuneGraph::Endpoints::CancelImportTask.build(context)
          when :cancel_query
            Aws::NeptuneGraph::Endpoints::CancelQuery.build(context)
          when :create_graph
            Aws::NeptuneGraph::Endpoints::CreateGraph.build(context)
          when :create_graph_snapshot
            Aws::NeptuneGraph::Endpoints::CreateGraphSnapshot.build(context)
          when :create_graph_using_import_task
            Aws::NeptuneGraph::Endpoints::CreateGraphUsingImportTask.build(context)
          when :create_private_graph_endpoint
            Aws::NeptuneGraph::Endpoints::CreatePrivateGraphEndpoint.build(context)
          when :delete_graph
            Aws::NeptuneGraph::Endpoints::DeleteGraph.build(context)
          when :delete_graph_snapshot
            Aws::NeptuneGraph::Endpoints::DeleteGraphSnapshot.build(context)
          when :delete_private_graph_endpoint
            Aws::NeptuneGraph::Endpoints::DeletePrivateGraphEndpoint.build(context)
          when :execute_query
            Aws::NeptuneGraph::Endpoints::ExecuteQuery.build(context)
          when :get_graph
            Aws::NeptuneGraph::Endpoints::GetGraph.build(context)
          when :get_graph_snapshot
            Aws::NeptuneGraph::Endpoints::GetGraphSnapshot.build(context)
          when :get_graph_summary
            Aws::NeptuneGraph::Endpoints::GetGraphSummary.build(context)
          when :get_import_task
            Aws::NeptuneGraph::Endpoints::GetImportTask.build(context)
          when :get_private_graph_endpoint
            Aws::NeptuneGraph::Endpoints::GetPrivateGraphEndpoint.build(context)
          when :get_query
            Aws::NeptuneGraph::Endpoints::GetQuery.build(context)
          when :list_graph_snapshots
            Aws::NeptuneGraph::Endpoints::ListGraphSnapshots.build(context)
          when :list_graphs
            Aws::NeptuneGraph::Endpoints::ListGraphs.build(context)
          when :list_import_tasks
            Aws::NeptuneGraph::Endpoints::ListImportTasks.build(context)
          when :list_private_graph_endpoints
            Aws::NeptuneGraph::Endpoints::ListPrivateGraphEndpoints.build(context)
          when :list_queries
            Aws::NeptuneGraph::Endpoints::ListQueries.build(context)
          when :list_tags_for_resource
            Aws::NeptuneGraph::Endpoints::ListTagsForResource.build(context)
          when :reset_graph
            Aws::NeptuneGraph::Endpoints::ResetGraph.build(context)
          when :restore_graph_from_snapshot
            Aws::NeptuneGraph::Endpoints::RestoreGraphFromSnapshot.build(context)
          when :start_import_task
            Aws::NeptuneGraph::Endpoints::StartImportTask.build(context)
          when :tag_resource
            Aws::NeptuneGraph::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::NeptuneGraph::Endpoints::UntagResource.build(context)
          when :update_graph
            Aws::NeptuneGraph::Endpoints::UpdateGraph.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
