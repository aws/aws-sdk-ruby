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

    class CancelImportTask
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class CreateGraph
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class CreateGraphSnapshot
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class CreateGraphUsingImportTask
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class CreatePrivateGraphEndpoint
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class DeleteGraph
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class DeleteGraphSnapshot
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class DeletePrivateGraphEndpoint
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class GetGraph
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class GetGraphSnapshot
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class GetImportTask
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class GetPrivateGraphEndpoint
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class ListGraphSnapshots
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class ListGraphs
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class ListImportTasks
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class ListPrivateGraphEndpoints
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class ListTagsForResource
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class ResetGraph
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class RestoreGraphFromSnapshot
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class TagResource
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class UntagResource
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

    class UpdateGraph
      def self.build(context)
        unless context.config.regional_endpoint
          endpoint = context.config.endpoint.to_s
        end
        Aws::NeptuneGraph::EndpointParameters.new(
          region: context.config.region,
          use_fips: context.config.use_fips_endpoint,
          use_dual_stack: context.config.use_dualstack_endpoint,
          endpoint: endpoint,
          api_type: "ControlPlane",
        )
      end
    end

  end
end
