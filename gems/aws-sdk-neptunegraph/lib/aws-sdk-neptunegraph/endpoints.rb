# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::NeptuneGraph
  # @api private
  module Endpoints

    class CancelExportTask
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class CancelImportTask
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class CancelQuery
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "DataPlane",
        )
      end
    end

    class CreateGraph
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class CreateGraphSnapshot
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class CreateGraphUsingImportTask
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class CreatePrivateGraphEndpoint
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class DeleteGraph
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class DeleteGraphSnapshot
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class DeletePrivateGraphEndpoint
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class ExecuteQuery
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "DataPlane",
        )
      end
    end

    class GetExportTask
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class GetGraph
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class GetGraphSnapshot
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class GetGraphSummary
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "DataPlane",
        )
      end
    end

    class GetImportTask
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class GetPrivateGraphEndpoint
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class GetQuery
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "DataPlane",
        )
      end
    end

    class ListExportTasks
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class ListGraphSnapshots
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class ListGraphs
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class ListImportTasks
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class ListPrivateGraphEndpoints
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class ListQueries
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "DataPlane",
        )
      end
    end

    class ListTagsForResource
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class ResetGraph
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class RestoreGraphFromSnapshot
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class StartExportTask
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class StartGraph
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class StartImportTask
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class StopGraph
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class TagResource
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class UntagResource
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end

    class UpdateGraph
      def self.build(context)
        Aws::NeptuneGraph::EndpointParameters.create(
          context.config,
          api_type: "ControlPlane",
        )
      end
    end


    def self.parameters_for_operation(context)
      case context.operation_name
      when :cancel_export_task
        CancelExportTask.build(context)
      when :cancel_import_task
        CancelImportTask.build(context)
      when :cancel_query
        CancelQuery.build(context)
      when :create_graph
        CreateGraph.build(context)
      when :create_graph_snapshot
        CreateGraphSnapshot.build(context)
      when :create_graph_using_import_task
        CreateGraphUsingImportTask.build(context)
      when :create_private_graph_endpoint
        CreatePrivateGraphEndpoint.build(context)
      when :delete_graph
        DeleteGraph.build(context)
      when :delete_graph_snapshot
        DeleteGraphSnapshot.build(context)
      when :delete_private_graph_endpoint
        DeletePrivateGraphEndpoint.build(context)
      when :execute_query
        ExecuteQuery.build(context)
      when :get_export_task
        GetExportTask.build(context)
      when :get_graph
        GetGraph.build(context)
      when :get_graph_snapshot
        GetGraphSnapshot.build(context)
      when :get_graph_summary
        GetGraphSummary.build(context)
      when :get_import_task
        GetImportTask.build(context)
      when :get_private_graph_endpoint
        GetPrivateGraphEndpoint.build(context)
      when :get_query
        GetQuery.build(context)
      when :list_export_tasks
        ListExportTasks.build(context)
      when :list_graph_snapshots
        ListGraphSnapshots.build(context)
      when :list_graphs
        ListGraphs.build(context)
      when :list_import_tasks
        ListImportTasks.build(context)
      when :list_private_graph_endpoints
        ListPrivateGraphEndpoints.build(context)
      when :list_queries
        ListQueries.build(context)
      when :list_tags_for_resource
        ListTagsForResource.build(context)
      when :reset_graph
        ResetGraph.build(context)
      when :restore_graph_from_snapshot
        RestoreGraphFromSnapshot.build(context)
      when :start_export_task
        StartExportTask.build(context)
      when :start_graph
        StartGraph.build(context)
      when :start_import_task
        StartImportTask.build(context)
      when :stop_graph
        StopGraph.build(context)
      when :tag_resource
        TagResource.build(context)
      when :untag_resource
        UntagResource.build(context)
      when :update_graph
        UpdateGraph.build(context)
      else
        Aws::NeptuneGraph::EndpointParameters.create(context.config)
      end
    end
  end
end
