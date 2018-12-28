# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppMesh
  module Types

    # @!attribute [rw] mesh
    #   The service mesh that was deleted.
    #   @return [Types::MeshData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DeleteMeshOutput AWS API Documentation
    #
    class DeleteMeshOutput < Struct.new(
      :mesh)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_router
    #   A full description of the virtual router that was updated.
    #   @return [Types::VirtualRouterData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/UpdateVirtualRouterOutput AWS API Documentation
    #
    class UpdateVirtualRouterOutput < Struct.new(
      :virtual_router)
      include Aws::Structure
    end

    # An object representing a target and its relative weight. Traffic is
    # distributed across targets according to their relative weight. For
    # example, a weighted target with a relative weight of 50 receives five
    # times as much traffic as one with a relative weight of 10.
    #
    # @note When making an API call, you may pass WeightedTarget
    #   data as a hash:
    #
    #       {
    #         virtual_node: "ResourceName",
    #         weight: 1,
    #       }
    #
    # @!attribute [rw] virtual_node
    #   The virtual node to associate with the weighted target.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The relative weight of the weighted target.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/WeightedTarget AWS API Documentation
    #
    class WeightedTarget < Struct.new(
      :virtual_node,
      :weight)
      include Aws::Structure
    end

    # @!attribute [rw] route
    #   The full description of your mesh following the create call.
    #   @return [Types::RouteData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/CreateRouteOutput AWS API Documentation
    #
    class CreateRouteOutput < Struct.new(
      :route)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVirtualNodeInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         virtual_node_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which to delete the virtual node.
    #   @return [String]
    #
    # @!attribute [rw] virtual_node_name
    #   The name of the virtual node to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DeleteVirtualNodeInput AWS API Documentation
    #
    class DeleteVirtualNodeInput < Struct.new(
      :mesh_name,
      :virtual_node_name)
      include Aws::Structure
    end

    # The DNS service discovery information for your virtual node.
    #
    # @note When making an API call, you may pass DnsServiceDiscovery
    #   data as a hash:
    #
    #       {
    #         service_name: "ServiceName",
    #       }
    #
    # @!attribute [rw] service_name
    #   The DNS service name for your virtual node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DnsServiceDiscovery AWS API Documentation
    #
    class DnsServiceDiscovery < Struct.new(
      :service_name)
      include Aws::Structure
    end

    # An object representing a virtual node returned by a list operation.
    #
    # @!attribute [rw] arn
    #   The full Amazon Resource Name (ARN) for the virtual node.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which the virtual node resides.
    #   @return [String]
    #
    # @!attribute [rw] virtual_node_name
    #   The name of the virtual node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/VirtualNodeRef AWS API Documentation
    #
    class VirtualNodeRef < Struct.new(
      :arn,
      :mesh_name,
      :virtual_node_name)
      include Aws::Structure
    end

    # @!attribute [rw] route
    #   The full description of your route.
    #   @return [Types::RouteData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DescribeRouteOutput AWS API Documentation
    #
    class DescribeRouteOutput < Struct.new(
      :route)
      include Aws::Structure
    end

    # An object representing the service discovery information for a virtual
    # node.
    #
    # @note When making an API call, you may pass ServiceDiscovery
    #   data as a hash:
    #
    #       {
    #         dns: {
    #           service_name: "ServiceName",
    #         },
    #       }
    #
    # @!attribute [rw] dns
    #   Specifies the DNS service name for the virtual node.
    #   @return [Types::DnsServiceDiscovery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/ServiceDiscovery AWS API Documentation
    #
    class ServiceDiscovery < Struct.new(
      :dns)
      include Aws::Structure
    end

    # An object representing the status of a service mesh.
    #
    # @!attribute [rw] status
    #   The current mesh status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/MeshStatus AWS API Documentation
    #
    class MeshStatus < Struct.new(
      :status)
      include Aws::Structure
    end

    # An object representing a virtual node returned by a describe
    # operation.
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which the virtual node resides.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The associated metadata for the virtual node.
    #   @return [Types::ResourceMetadata]
    #
    # @!attribute [rw] spec
    #   The specifications of the virtual node.
    #   @return [Types::VirtualNodeSpec]
    #
    # @!attribute [rw] status
    #   The current status for the virtual node.
    #   @return [Types::VirtualNodeStatus]
    #
    # @!attribute [rw] virtual_node_name
    #   The name of the virtual node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/VirtualNodeData AWS API Documentation
    #
    class VirtualNodeData < Struct.new(
      :mesh_name,
      :metadata,
      :spec,
      :status,
      :virtual_node_name)
      include Aws::Structure
    end

    # An object representing the specification of a virtual node.
    #
    # @note When making an API call, you may pass VirtualNodeSpec
    #   data as a hash:
    #
    #       {
    #         backends: ["ServiceName"],
    #         listeners: [
    #           {
    #             health_check: {
    #               healthy_threshold: 1,
    #               interval_millis: 1,
    #               path: "String",
    #               port: 1,
    #               protocol: "http", # accepts http, tcp
    #               timeout_millis: 1,
    #               unhealthy_threshold: 1,
    #             },
    #             port_mapping: {
    #               port: 1,
    #               protocol: "http", # accepts http, tcp
    #             },
    #           },
    #         ],
    #         service_discovery: {
    #           dns: {
    #             service_name: "ServiceName",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] backends
    #   The backends to which the virtual node is expected to send outbound
    #   traffic.
    #   @return [Array<String>]
    #
    # @!attribute [rw] listeners
    #   The listeners from which the virtual node is expected to receive
    #   inbound traffic.
    #   @return [Array<Types::Listener>]
    #
    # @!attribute [rw] service_discovery
    #   The service discovery information for the virtual node.
    #   @return [Types::ServiceDiscovery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/VirtualNodeSpec AWS API Documentation
    #
    class VirtualNodeSpec < Struct.new(
      :backends,
      :listeners,
      :service_discovery)
      include Aws::Structure
    end

    # An object representing a service mesh returned by a list operation.
    #
    # @!attribute [rw] arn
    #   The full Amazon Resource Name (ARN) of the service mesh.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/MeshRef AWS API Documentation
    #
    class MeshRef < Struct.new(
      :arn,
      :mesh_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeVirtualRouterInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which the virtual router resides.
    #   @return [String]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DescribeVirtualRouterInput AWS API Documentation
    #
    class DescribeVirtualRouterInput < Struct.new(
      :mesh_name,
      :virtual_router_name)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_router
    #   The full description of your virtual router.
    #   @return [Types::VirtualRouterData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DescribeVirtualRouterOutput AWS API Documentation
    #
    class DescribeVirtualRouterOutput < Struct.new(
      :virtual_router)
      include Aws::Structure
    end

    # @!attribute [rw] route
    #   A full description of the route that was updated.
    #   @return [Types::RouteData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/UpdateRouteOutput AWS API Documentation
    #
    class UpdateRouteOutput < Struct.new(
      :route)
      include Aws::Structure
    end

    # An object representing the traffic distribution requirements for
    # matched HTTP requests.
    #
    # @note When making an API call, you may pass HttpRouteAction
    #   data as a hash:
    #
    #       {
    #         weighted_targets: [
    #           {
    #             virtual_node: "ResourceName",
    #             weight: 1,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] weighted_targets
    #   The targets that traffic is routed to when a request matches the
    #   route. You can specify one or more targets and their relative
    #   weights with which to distribute traffic.
    #   @return [Array<Types::WeightedTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/HttpRouteAction AWS API Documentation
    #
    class HttpRouteAction < Struct.new(
      :weighted_targets)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_router
    #   The full description of your virtual router following the create
    #   call.
    #   @return [Types::VirtualRouterData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/CreateVirtualRouterOutput AWS API Documentation
    #
    class CreateVirtualRouterOutput < Struct.new(
      :virtual_router)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVirtualRouterInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         spec: { # required
    #           service_names: ["ServiceName"],
    #         },
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which to create the virtual router.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The virtual router specification to apply.
    #   @return [Types::VirtualRouterSpec]
    #
    # @!attribute [rw] virtual_router_name
    #   The name to use for the virtual router.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/CreateVirtualRouterInput AWS API Documentation
    #
    class CreateVirtualRouterInput < Struct.new(
      :client_token,
      :mesh_name,
      :spec,
      :virtual_router_name)
      include Aws::Structure
    end

    # An object representing the current status of a route.
    #
    # @!attribute [rw] status
    #   The current status for the route.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/RouteStatus AWS API Documentation
    #
    class RouteStatus < Struct.new(
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMeshesInput
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of mesh results returned by `ListMeshes` in
    #   paginated output. When this parameter is used, `ListMeshes` only
    #   returns `limit` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `ListMeshes` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter is not used, then `ListMeshes` returns up to 100 results
    #   and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListMeshes` request where `limit` was used and the results exceeded
    #   the value of that parameter. Pagination continues from the end of
    #   the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/ListMeshesInput AWS API Documentation
    #
    class ListMeshesInput < Struct.new(
      :limit,
      :next_token)
      include Aws::Structure
    end

    # An object representing the status of a virtual router.
    #
    # @!attribute [rw] status
    #   The current status of the virtual router.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/VirtualRouterStatus AWS API Documentation
    #
    class VirtualRouterStatus < Struct.new(
      :status)
      include Aws::Structure
    end

    # @!attribute [rw] meshes
    #   The list of existing service meshes.
    #   @return [Array<Types::MeshRef>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListMeshes` request.
    #   When the results of a `ListMeshes` request exceed `limit`, this
    #   value can be used to retrieve the next page of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/ListMeshesOutput AWS API Documentation
    #
    class ListMeshesOutput < Struct.new(
      :meshes,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_node
    #   The full description of your virtual node.
    #   @return [Types::VirtualNodeData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DescribeVirtualNodeOutput AWS API Documentation
    #
    class DescribeVirtualNodeOutput < Struct.new(
      :virtual_node)
      include Aws::Structure
    end

    # @!attribute [rw] mesh
    #   The full description of your service mesh following the create call.
    #   @return [Types::MeshData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/CreateMeshOutput AWS API Documentation
    #
    class CreateMeshOutput < Struct.new(
      :mesh)
      include Aws::Structure
    end

    # An object representing a route returned by a describe operation.
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which the route resides.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The associated metadata for the route.
    #   @return [Types::ResourceMetadata]
    #
    # @!attribute [rw] route_name
    #   The name of the route.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The specifications of the route.
    #   @return [Types::RouteSpec]
    #
    # @!attribute [rw] status
    #   The status of the route.
    #   @return [Types::RouteStatus]
    #
    # @!attribute [rw] virtual_router_name
    #   The virtual router with which the route is associated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/RouteData AWS API Documentation
    #
    class RouteData < Struct.new(
      :mesh_name,
      :metadata,
      :route_name,
      :spec,
      :status,
      :virtual_router_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVirtualNodeInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         spec: { # required
    #           backends: ["ServiceName"],
    #           listeners: [
    #             {
    #               health_check: {
    #                 healthy_threshold: 1,
    #                 interval_millis: 1,
    #                 path: "String",
    #                 port: 1,
    #                 protocol: "http", # accepts http, tcp
    #                 timeout_millis: 1,
    #                 unhealthy_threshold: 1,
    #               },
    #               port_mapping: {
    #                 port: 1,
    #                 protocol: "http", # accepts http, tcp
    #               },
    #             },
    #           ],
    #           service_discovery: {
    #             dns: {
    #               service_name: "ServiceName",
    #             },
    #           },
    #         },
    #         virtual_node_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which the virtual node resides.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The new virtual node specification to apply. This overwrites the
    #   existing data.
    #   @return [Types::VirtualNodeSpec]
    #
    # @!attribute [rw] virtual_node_name
    #   The name of the virtual node to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/UpdateVirtualNodeInput AWS API Documentation
    #
    class UpdateVirtualNodeInput < Struct.new(
      :client_token,
      :mesh_name,
      :spec,
      :virtual_node_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRouteInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         route_name: "ResourceName", # required
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which to delete the route.
    #   @return [String]
    #
    # @!attribute [rw] route_name
    #   The name of the route to delete.
    #   @return [String]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router in which to delete the route.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DeleteRouteInput AWS API Documentation
    #
    class DeleteRouteInput < Struct.new(
      :mesh_name,
      :route_name,
      :virtual_router_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRoutesInput
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         mesh_name: "ResourceName", # required
    #         next_token: "String",
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of mesh results returned by `ListRoutes` in
    #   paginated output. When this parameter is used, `ListRoutes` only
    #   returns `limit` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `ListRoutes` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter is not used, then `ListRoutes` returns up to 100 results
    #   and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which to list routes.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListRoutes` request where `limit` was used and the results exceeded
    #   the value of that parameter. Pagination continues from the end of
    #   the previous results that returned the `nextToken` value.
    #   @return [String]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router in which to list routes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/ListRoutesInput AWS API Documentation
    #
    class ListRoutesInput < Struct.new(
      :limit,
      :mesh_name,
      :next_token,
      :virtual_router_name)
      include Aws::Structure
    end

    # An object representing the HTTP routing specification for a route.
    #
    # @note When making an API call, you may pass HttpRoute
    #   data as a hash:
    #
    #       {
    #         action: {
    #           weighted_targets: [
    #             {
    #               virtual_node: "ResourceName",
    #               weight: 1,
    #             },
    #           ],
    #         },
    #         match: {
    #           prefix: "String",
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   The action to take if a match is determined.
    #   @return [Types::HttpRouteAction]
    #
    # @!attribute [rw] match
    #   The criteria for determining an HTTP request match.
    #   @return [Types::HttpRouteMatch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/HttpRoute AWS API Documentation
    #
    class HttpRoute < Struct.new(
      :action,
      :match)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListRoutes` request.
    #   When the results of a `ListRoutes` request exceed `limit`, this
    #   value can be used to retrieve the next page of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @!attribute [rw] routes
    #   The list of existing routes for the specified service mesh and
    #   virtual router.
    #   @return [Array<Types::RouteRef>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/ListRoutesOutput AWS API Documentation
    #
    class ListRoutesOutput < Struct.new(
      :next_token,
      :routes)
      include Aws::Structure
    end

    # An object representing the specification of a route.
    #
    # @note When making an API call, you may pass RouteSpec
    #   data as a hash:
    #
    #       {
    #         http_route: {
    #           action: {
    #             weighted_targets: [
    #               {
    #                 virtual_node: "ResourceName",
    #                 weight: 1,
    #               },
    #             ],
    #           },
    #           match: {
    #             prefix: "String",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] http_route
    #   The HTTP routing information for the route.
    #   @return [Types::HttpRoute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/RouteSpec AWS API Documentation
    #
    class RouteSpec < Struct.new(
      :http_route)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeVirtualNodeInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         virtual_node_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which the virtual node resides.
    #   @return [String]
    #
    # @!attribute [rw] virtual_node_name
    #   The name of the virtual node to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DescribeVirtualNodeInput AWS API Documentation
    #
    class DescribeVirtualNodeInput < Struct.new(
      :mesh_name,
      :virtual_node_name)
      include Aws::Structure
    end

    # An object representing a virtual router returned by a list operation.
    #
    # @!attribute [rw] arn
    #   The full Amazon Resource Name (ARN) for the virtual router.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which the virtual router resides.
    #   @return [String]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/VirtualRouterRef AWS API Documentation
    #
    class VirtualRouterRef < Struct.new(
      :arn,
      :mesh_name,
      :virtual_router_name)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListVirtualNodes`
    #   request. When the results of a `ListVirtualNodes` request exceed
    #   `limit`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @!attribute [rw] virtual_nodes
    #   The list of existing virtual nodes for the specified service mesh.
    #   @return [Array<Types::VirtualNodeRef>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/ListVirtualNodesOutput AWS API Documentation
    #
    class ListVirtualNodesOutput < Struct.new(
      :next_token,
      :virtual_nodes)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_node
    #   The virtual node that was deleted.
    #   @return [Types::VirtualNodeData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DeleteVirtualNodeOutput AWS API Documentation
    #
    class DeleteVirtualNodeOutput < Struct.new(
      :virtual_node)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVirtualRouterInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         spec: { # required
    #           service_names: ["ServiceName"],
    #         },
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which the virtual router resides.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The new virtual router specification to apply. This overwrites the
    #   existing data.
    #   @return [Types::VirtualRouterSpec]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/UpdateVirtualRouterInput AWS API Documentation
    #
    class UpdateVirtualRouterInput < Struct.new(
      :client_token,
      :mesh_name,
      :spec,
      :virtual_router_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRouteInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         route_name: "ResourceName", # required
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which the route resides.
    #   @return [String]
    #
    # @!attribute [rw] route_name
    #   The name of the route to describe.
    #   @return [String]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router with which the route is associated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DescribeRouteInput AWS API Documentation
    #
    class DescribeRouteInput < Struct.new(
      :mesh_name,
      :route_name,
      :virtual_router_name)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListVirtualRouters`
    #   request. When the results of a `ListVirtualRouters` request exceed
    #   `limit`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @!attribute [rw] virtual_routers
    #   The list of existing virtual routers for the specified service mesh.
    #   @return [Array<Types::VirtualRouterRef>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/ListVirtualRoutersOutput AWS API Documentation
    #
    class ListVirtualRoutersOutput < Struct.new(
      :next_token,
      :virtual_routers)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_node
    #   The full description of your virtual node following the create call.
    #   @return [Types::VirtualNodeData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/CreateVirtualNodeOutput AWS API Documentation
    #
    class CreateVirtualNodeOutput < Struct.new(
      :virtual_node)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_router
    #   The virtual router that was deleted.
    #   @return [Types::VirtualRouterData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DeleteVirtualRouterOutput AWS API Documentation
    #
    class DeleteVirtualRouterOutput < Struct.new(
      :virtual_router)
      include Aws::Structure
    end

    # An object representing metadata for a resource.
    #
    # @!attribute [rw] arn
    #   The full Amazon Resource Name (ARN) for the resource.
    #
    #   <note markdown="1"> After you create a virtual node, set this value (either the full ARN
    #   or the truncated resource name, for example,
    #   `mesh/default/virtualNode/simpleapp`, as the
    #   `APPMESH_VIRTUAL_NODE_NAME` environment variable for your task
    #   group's Envoy proxy container in your task definition or pod spec.
    #   This is then mapped to the `node.id` and `node.cluster` Envoy
    #   parameters.
    #
    #    If you require your Envoy stats or tracing to use a different name,
    #   you can override the `node.cluster` value that is set by
    #   `APPMESH_VIRTUAL_NODE_NAME` with the `APPMESH_VIRTUAL_NODE_CLUSTER`
    #   environment variable.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix epoch timestamp in seconds for when the cluster was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The Unix epoch timestamp in seconds for when the cluster was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] uid
    #   The unique identifier for the resource.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource. Resources are created at version 1, and
    #   this version is incremented each time they are updated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/ResourceMetadata AWS API Documentation
    #
    class ResourceMetadata < Struct.new(
      :arn,
      :created_at,
      :last_updated_at,
      :uid,
      :version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMeshInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name to use for the service mesh.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/CreateMeshInput AWS API Documentation
    #
    class CreateMeshInput < Struct.new(
      :client_token,
      :mesh_name)
      include Aws::Structure
    end

    # An object representing a virtual node listener port mapping.
    #
    # @note When making an API call, you may pass PortMapping
    #   data as a hash:
    #
    #       {
    #         port: 1,
    #         protocol: "http", # accepts http, tcp
    #       }
    #
    # @!attribute [rw] port
    #   The port used for the port mapping.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol used for the port mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/PortMapping AWS API Documentation
    #
    class PortMapping < Struct.new(
      :port,
      :protocol)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVirtualRouterInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which to delete the virtual router.
    #   @return [String]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DeleteVirtualRouterInput AWS API Documentation
    #
    class DeleteVirtualRouterInput < Struct.new(
      :mesh_name,
      :virtual_router_name)
      include Aws::Structure
    end

    # An object representing the specification of a virtual router.
    #
    # @note When making an API call, you may pass VirtualRouterSpec
    #   data as a hash:
    #
    #       {
    #         service_names: ["ServiceName"],
    #       }
    #
    # @!attribute [rw] service_names
    #   The service mesh service names to associate with the virtual router.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/VirtualRouterSpec AWS API Documentation
    #
    class VirtualRouterSpec < Struct.new(
      :service_names)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRouteInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         route_name: "ResourceName", # required
    #         spec: { # required
    #           http_route: {
    #             action: {
    #               weighted_targets: [
    #                 {
    #                   virtual_node: "ResourceName",
    #                   weight: 1,
    #                 },
    #               ],
    #             },
    #             match: {
    #               prefix: "String",
    #             },
    #           },
    #         },
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which the route resides.
    #   @return [String]
    #
    # @!attribute [rw] route_name
    #   The name of the route to update.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The new route specification to apply. This overwrites the existing
    #   data.
    #   @return [Types::RouteSpec]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router with which the route is associated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/UpdateRouteInput AWS API Documentation
    #
    class UpdateRouteInput < Struct.new(
      :client_token,
      :mesh_name,
      :route_name,
      :spec,
      :virtual_router_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMeshInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DescribeMeshInput AWS API Documentation
    #
    class DescribeMeshInput < Struct.new(
      :mesh_name)
      include Aws::Structure
    end

    # @!attribute [rw] mesh
    #   The full description of your service mesh.
    #   @return [Types::MeshData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DescribeMeshOutput AWS API Documentation
    #
    class DescribeMeshOutput < Struct.new(
      :mesh)
      include Aws::Structure
    end

    # An object representing a virtual router returned by a describe
    # operation.
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which the virtual router resides.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The associated metadata for the virtual router.
    #   @return [Types::ResourceMetadata]
    #
    # @!attribute [rw] spec
    #   The specifications of the virtual router.
    #   @return [Types::VirtualRouterSpec]
    #
    # @!attribute [rw] status
    #   The current status of the virtual router.
    #   @return [Types::VirtualRouterStatus]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/VirtualRouterData AWS API Documentation
    #
    class VirtualRouterData < Struct.new(
      :mesh_name,
      :metadata,
      :spec,
      :status,
      :virtual_router_name)
      include Aws::Structure
    end

    # An object representing a listener for a virtual node.
    #
    # @note When making an API call, you may pass Listener
    #   data as a hash:
    #
    #       {
    #         health_check: {
    #           healthy_threshold: 1,
    #           interval_millis: 1,
    #           path: "String",
    #           port: 1,
    #           protocol: "http", # accepts http, tcp
    #           timeout_millis: 1,
    #           unhealthy_threshold: 1,
    #         },
    #         port_mapping: {
    #           port: 1,
    #           protocol: "http", # accepts http, tcp
    #         },
    #       }
    #
    # @!attribute [rw] health_check
    #   The health check information for the listener.
    #
    #   <note markdown="1"> Listener health checks are not available during the App Mesh
    #   preview.
    #
    #    </note>
    #   @return [Types::HealthCheckPolicy]
    #
    # @!attribute [rw] port_mapping
    #   The port mapping information for the listener.
    #   @return [Types::PortMapping]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/Listener AWS API Documentation
    #
    class Listener < Struct.new(
      :health_check,
      :port_mapping)
      include Aws::Structure
    end

    # An object representing the health check policy for a virtual node's
    # listener.
    #
    # <note markdown="1"> Listener health checks are not available during the App Mesh preview.
    #
    #  </note>
    #
    # @note When making an API call, you may pass HealthCheckPolicy
    #   data as a hash:
    #
    #       {
    #         healthy_threshold: 1,
    #         interval_millis: 1,
    #         path: "String",
    #         port: 1,
    #         protocol: "http", # accepts http, tcp
    #         timeout_millis: 1,
    #         unhealthy_threshold: 1,
    #       }
    #
    # @!attribute [rw] healthy_threshold
    #   The number of consecutive successful health checks that must occur
    #   before declaring listener healthy.
    #   @return [Integer]
    #
    # @!attribute [rw] interval_millis
    #   The time period in milliseconds between each health check execution.
    #   @return [Integer]
    #
    # @!attribute [rw] path
    #   The destination path for the health check request.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The destination port for the health check request.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol for the health check request.
    #   @return [String]
    #
    # @!attribute [rw] timeout_millis
    #   The amount of time to wait when receiving a response from the health
    #   check, in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] unhealthy_threshold
    #   The number of consecutive failed health checks that must occur
    #   before declaring a virtual node unhealthy.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/HealthCheckPolicy AWS API Documentation
    #
    class HealthCheckPolicy < Struct.new(
      :healthy_threshold,
      :interval_millis,
      :path,
      :port,
      :protocol,
      :timeout_millis,
      :unhealthy_threshold)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVirtualRoutersInput
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         mesh_name: "ResourceName", # required
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of mesh results returned by `ListVirtualRouters`
    #   in paginated output. When this parameter is used,
    #   `ListVirtualRouters` only returns `limit` results in a single page
    #   along with a `nextToken` response element. The remaining results of
    #   the initial request can be seen by sending another
    #   `ListVirtualRouters` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If this parameter is not used,
    #   then `ListVirtualRouters` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which to list virtual routers.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListVirtualRouters` request where `limit` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/ListVirtualRoutersInput AWS API Documentation
    #
    class ListVirtualRoutersInput < Struct.new(
      :limit,
      :mesh_name,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVirtualNodeInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         spec: { # required
    #           backends: ["ServiceName"],
    #           listeners: [
    #             {
    #               health_check: {
    #                 healthy_threshold: 1,
    #                 interval_millis: 1,
    #                 path: "String",
    #                 port: 1,
    #                 protocol: "http", # accepts http, tcp
    #                 timeout_millis: 1,
    #                 unhealthy_threshold: 1,
    #               },
    #               port_mapping: {
    #                 port: 1,
    #                 protocol: "http", # accepts http, tcp
    #               },
    #             },
    #           ],
    #           service_discovery: {
    #             dns: {
    #               service_name: "ServiceName",
    #             },
    #           },
    #         },
    #         virtual_node_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which to create the virtual node.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The virtual node specification to apply.
    #   @return [Types::VirtualNodeSpec]
    #
    # @!attribute [rw] virtual_node_name
    #   The name to use for the virtual node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/CreateVirtualNodeInput AWS API Documentation
    #
    class CreateVirtualNodeInput < Struct.new(
      :client_token,
      :mesh_name,
      :spec,
      :virtual_node_name)
      include Aws::Structure
    end

    # An object representing a service mesh returned by a describe
    # operation.
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The associated metadata for the service mesh.
    #   @return [Types::ResourceMetadata]
    #
    # @!attribute [rw] status
    #   The status of the service mesh.
    #   @return [Types::MeshStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/MeshData AWS API Documentation
    #
    class MeshData < Struct.new(
      :mesh_name,
      :metadata,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMeshInput
    #   data as a hash:
    #
    #       {
    #         mesh_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DeleteMeshInput AWS API Documentation
    #
    class DeleteMeshInput < Struct.new(
      :mesh_name)
      include Aws::Structure
    end

    # An object representing the requirements for a route to match HTTP
    # requests for a virtual router.
    #
    # @note When making an API call, you may pass HttpRouteMatch
    #   data as a hash:
    #
    #       {
    #         prefix: "String",
    #       }
    #
    # @!attribute [rw] prefix
    #   Specifies the path with which to match requests. This parameter must
    #   always start with `/`, which by itself matches all requests to the
    #   virtual router service name. You can also match for path-based
    #   routing of requests. For example, if your virtual router service
    #   name is `my-service.local`, and you want the route to match requests
    #   to `my-service.local/metrics`, then your prefix should be
    #   `/metrics`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/HttpRouteMatch AWS API Documentation
    #
    class HttpRouteMatch < Struct.new(
      :prefix)
      include Aws::Structure
    end

    # @!attribute [rw] route
    #   The route that was deleted.
    #   @return [Types::RouteData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/DeleteRouteOutput AWS API Documentation
    #
    class DeleteRouteOutput < Struct.new(
      :route)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRouteInput
    #   data as a hash:
    #
    #       {
    #         client_token: "String",
    #         mesh_name: "ResourceName", # required
    #         route_name: "ResourceName", # required
    #         spec: { # required
    #           http_route: {
    #             action: {
    #               weighted_targets: [
    #                 {
    #                   virtual_node: "ResourceName",
    #                   weight: 1,
    #                 },
    #               ],
    #             },
    #             match: {
    #               prefix: "String",
    #             },
    #           },
    #         },
    #         virtual_router_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Up to 36 letters, numbers, hyphens, and
    #   underscores are allowed.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which to create the route.
    #   @return [String]
    #
    # @!attribute [rw] route_name
    #   The name to use for the route.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The route specification to apply.
    #   @return [Types::RouteSpec]
    #
    # @!attribute [rw] virtual_router_name
    #   The name of the virtual router in which to create the route.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/CreateRouteInput AWS API Documentation
    #
    class CreateRouteInput < Struct.new(
      :client_token,
      :mesh_name,
      :route_name,
      :spec,
      :virtual_router_name)
      include Aws::Structure
    end

    # An object representing the current status of the virtual node.
    #
    # @!attribute [rw] status
    #   The current status of the virtual node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/VirtualNodeStatus AWS API Documentation
    #
    class VirtualNodeStatus < Struct.new(
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVirtualNodesInput
    #   data as a hash:
    #
    #       {
    #         limit: 1,
    #         mesh_name: "ResourceName", # required
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] limit
    #   The maximum number of mesh results returned by `ListVirtualNodes` in
    #   paginated output. When this parameter is used, `ListVirtualNodes`
    #   only returns `limit` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListVirtualNodes` request
    #   with the returned `nextToken` value. This value can be between 1 and
    #   100. If this parameter is not used, then `ListVirtualNodes` returns
    #   up to 100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which to list virtual nodes.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListVirtualNodes` request where `limit` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/ListVirtualNodesInput AWS API Documentation
    #
    class ListVirtualNodesInput < Struct.new(
      :limit,
      :mesh_name,
      :next_token)
      include Aws::Structure
    end

    # An object representing a route returned by a list operation.
    #
    # @!attribute [rw] arn
    #   The full Amazon Resource Name (ARN) for the route.
    #   @return [String]
    #
    # @!attribute [rw] mesh_name
    #   The name of the service mesh in which the route resides.
    #   @return [String]
    #
    # @!attribute [rw] route_name
    #   The name of the route.
    #   @return [String]
    #
    # @!attribute [rw] virtual_router_name
    #   The virtual router with which the route is associated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/RouteRef AWS API Documentation
    #
    class RouteRef < Struct.new(
      :arn,
      :mesh_name,
      :route_name,
      :virtual_router_name)
      include Aws::Structure
    end

    # @!attribute [rw] virtual_node
    #   A full description of the virtual node that was updated.
    #   @return [Types::VirtualNodeData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01/UpdateVirtualNodeOutput AWS API Documentation
    #
    class UpdateVirtualNodeOutput < Struct.new(
      :virtual_node)
      include Aws::Structure
    end

  end
end
