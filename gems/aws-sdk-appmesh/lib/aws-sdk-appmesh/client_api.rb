# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppMesh
  # @api private
  module ClientApi

    include Seahorse::Model

    Arn = Shapes::StringShape.new(name: 'Arn')
    Backends = Shapes::ListShape.new(name: 'Backends')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateMeshInput = Shapes::StructureShape.new(name: 'CreateMeshInput')
    CreateMeshOutput = Shapes::StructureShape.new(name: 'CreateMeshOutput')
    CreateRouteInput = Shapes::StructureShape.new(name: 'CreateRouteInput')
    CreateRouteOutput = Shapes::StructureShape.new(name: 'CreateRouteOutput')
    CreateVirtualNodeInput = Shapes::StructureShape.new(name: 'CreateVirtualNodeInput')
    CreateVirtualNodeOutput = Shapes::StructureShape.new(name: 'CreateVirtualNodeOutput')
    CreateVirtualRouterInput = Shapes::StructureShape.new(name: 'CreateVirtualRouterInput')
    CreateVirtualRouterOutput = Shapes::StructureShape.new(name: 'CreateVirtualRouterOutput')
    DeleteMeshInput = Shapes::StructureShape.new(name: 'DeleteMeshInput')
    DeleteMeshOutput = Shapes::StructureShape.new(name: 'DeleteMeshOutput')
    DeleteRouteInput = Shapes::StructureShape.new(name: 'DeleteRouteInput')
    DeleteRouteOutput = Shapes::StructureShape.new(name: 'DeleteRouteOutput')
    DeleteVirtualNodeInput = Shapes::StructureShape.new(name: 'DeleteVirtualNodeInput')
    DeleteVirtualNodeOutput = Shapes::StructureShape.new(name: 'DeleteVirtualNodeOutput')
    DeleteVirtualRouterInput = Shapes::StructureShape.new(name: 'DeleteVirtualRouterInput')
    DeleteVirtualRouterOutput = Shapes::StructureShape.new(name: 'DeleteVirtualRouterOutput')
    DescribeMeshInput = Shapes::StructureShape.new(name: 'DescribeMeshInput')
    DescribeMeshOutput = Shapes::StructureShape.new(name: 'DescribeMeshOutput')
    DescribeRouteInput = Shapes::StructureShape.new(name: 'DescribeRouteInput')
    DescribeRouteOutput = Shapes::StructureShape.new(name: 'DescribeRouteOutput')
    DescribeVirtualNodeInput = Shapes::StructureShape.new(name: 'DescribeVirtualNodeInput')
    DescribeVirtualNodeOutput = Shapes::StructureShape.new(name: 'DescribeVirtualNodeOutput')
    DescribeVirtualRouterInput = Shapes::StructureShape.new(name: 'DescribeVirtualRouterInput')
    DescribeVirtualRouterOutput = Shapes::StructureShape.new(name: 'DescribeVirtualRouterOutput')
    DnsServiceDiscovery = Shapes::StructureShape.new(name: 'DnsServiceDiscovery')
    DurationMillis = Shapes::IntegerShape.new(name: 'DurationMillis')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    HealthCheckPolicy = Shapes::StructureShape.new(name: 'HealthCheckPolicy')
    HttpRoute = Shapes::StructureShape.new(name: 'HttpRoute')
    HttpRouteAction = Shapes::StructureShape.new(name: 'HttpRouteAction')
    HttpRouteMatch = Shapes::StructureShape.new(name: 'HttpRouteMatch')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListMeshesInput = Shapes::StructureShape.new(name: 'ListMeshesInput')
    ListMeshesLimit = Shapes::IntegerShape.new(name: 'ListMeshesLimit')
    ListMeshesOutput = Shapes::StructureShape.new(name: 'ListMeshesOutput')
    ListRoutesInput = Shapes::StructureShape.new(name: 'ListRoutesInput')
    ListRoutesLimit = Shapes::IntegerShape.new(name: 'ListRoutesLimit')
    ListRoutesOutput = Shapes::StructureShape.new(name: 'ListRoutesOutput')
    ListVirtualNodesInput = Shapes::StructureShape.new(name: 'ListVirtualNodesInput')
    ListVirtualNodesLimit = Shapes::IntegerShape.new(name: 'ListVirtualNodesLimit')
    ListVirtualNodesOutput = Shapes::StructureShape.new(name: 'ListVirtualNodesOutput')
    ListVirtualRoutersInput = Shapes::StructureShape.new(name: 'ListVirtualRoutersInput')
    ListVirtualRoutersLimit = Shapes::IntegerShape.new(name: 'ListVirtualRoutersLimit')
    ListVirtualRoutersOutput = Shapes::StructureShape.new(name: 'ListVirtualRoutersOutput')
    Listener = Shapes::StructureShape.new(name: 'Listener')
    Listeners = Shapes::ListShape.new(name: 'Listeners')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MeshData = Shapes::StructureShape.new(name: 'MeshData')
    MeshList = Shapes::ListShape.new(name: 'MeshList')
    MeshRef = Shapes::StructureShape.new(name: 'MeshRef')
    MeshStatus = Shapes::StructureShape.new(name: 'MeshStatus')
    MeshStatusCode = Shapes::StringShape.new(name: 'MeshStatusCode')
    NonNegativeInt = Shapes::IntegerShape.new(name: 'NonNegativeInt')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    PercentInt = Shapes::IntegerShape.new(name: 'PercentInt')
    PortMapping = Shapes::StructureShape.new(name: 'PortMapping')
    PortNumber = Shapes::IntegerShape.new(name: 'PortNumber')
    PortProtocol = Shapes::StringShape.new(name: 'PortProtocol')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceMetadata = Shapes::StructureShape.new(name: 'ResourceMetadata')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    RouteData = Shapes::StructureShape.new(name: 'RouteData')
    RouteList = Shapes::ListShape.new(name: 'RouteList')
    RouteRef = Shapes::StructureShape.new(name: 'RouteRef')
    RouteSpec = Shapes::StructureShape.new(name: 'RouteSpec')
    RouteStatus = Shapes::StructureShape.new(name: 'RouteStatus')
    RouteStatusCode = Shapes::StringShape.new(name: 'RouteStatusCode')
    ServiceDiscovery = Shapes::StructureShape.new(name: 'ServiceDiscovery')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    ServiceNames = Shapes::ListShape.new(name: 'ServiceNames')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UpdateRouteInput = Shapes::StructureShape.new(name: 'UpdateRouteInput')
    UpdateRouteOutput = Shapes::StructureShape.new(name: 'UpdateRouteOutput')
    UpdateVirtualNodeInput = Shapes::StructureShape.new(name: 'UpdateVirtualNodeInput')
    UpdateVirtualNodeOutput = Shapes::StructureShape.new(name: 'UpdateVirtualNodeOutput')
    UpdateVirtualRouterInput = Shapes::StructureShape.new(name: 'UpdateVirtualRouterInput')
    UpdateVirtualRouterOutput = Shapes::StructureShape.new(name: 'UpdateVirtualRouterOutput')
    VirtualNodeData = Shapes::StructureShape.new(name: 'VirtualNodeData')
    VirtualNodeList = Shapes::ListShape.new(name: 'VirtualNodeList')
    VirtualNodeRef = Shapes::StructureShape.new(name: 'VirtualNodeRef')
    VirtualNodeSpec = Shapes::StructureShape.new(name: 'VirtualNodeSpec')
    VirtualNodeStatus = Shapes::StructureShape.new(name: 'VirtualNodeStatus')
    VirtualNodeStatusCode = Shapes::StringShape.new(name: 'VirtualNodeStatusCode')
    VirtualRouterData = Shapes::StructureShape.new(name: 'VirtualRouterData')
    VirtualRouterList = Shapes::ListShape.new(name: 'VirtualRouterList')
    VirtualRouterRef = Shapes::StructureShape.new(name: 'VirtualRouterRef')
    VirtualRouterSpec = Shapes::StructureShape.new(name: 'VirtualRouterSpec')
    VirtualRouterStatus = Shapes::StructureShape.new(name: 'VirtualRouterStatus')
    VirtualRouterStatusCode = Shapes::StringShape.new(name: 'VirtualRouterStatusCode')
    WeightedTarget = Shapes::StructureShape.new(name: 'WeightedTarget')
    WeightedTargets = Shapes::ListShape.new(name: 'WeightedTargets')

    Backends.member = Shapes::ShapeRef.new(shape: ServiceName)

    CreateMeshInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateMeshInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    CreateMeshInput.struct_class = Types::CreateMeshInput

    CreateMeshOutput.add_member(:mesh, Shapes::ShapeRef.new(shape: MeshData, location_name: "mesh"))
    CreateMeshOutput.struct_class = Types::CreateMeshOutput
    CreateMeshOutput[:payload] = :mesh
    CreateMeshOutput[:payload_member] = CreateMeshOutput.member(:mesh)

    CreateRouteInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateRouteInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    CreateRouteInput.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "routeName"))
    CreateRouteInput.add_member(:spec, Shapes::ShapeRef.new(shape: RouteSpec, required: true, location_name: "spec"))
    CreateRouteInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    CreateRouteInput.struct_class = Types::CreateRouteInput

    CreateRouteOutput.add_member(:route, Shapes::ShapeRef.new(shape: RouteData, location_name: "route"))
    CreateRouteOutput.struct_class = Types::CreateRouteOutput
    CreateRouteOutput[:payload] = :route
    CreateRouteOutput[:payload_member] = CreateRouteOutput.member(:route)

    CreateVirtualNodeInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateVirtualNodeInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    CreateVirtualNodeInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualNodeSpec, required: true, location_name: "spec"))
    CreateVirtualNodeInput.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualNodeName"))
    CreateVirtualNodeInput.struct_class = Types::CreateVirtualNodeInput

    CreateVirtualNodeOutput.add_member(:virtual_node, Shapes::ShapeRef.new(shape: VirtualNodeData, location_name: "virtualNode"))
    CreateVirtualNodeOutput.struct_class = Types::CreateVirtualNodeOutput
    CreateVirtualNodeOutput[:payload] = :virtual_node
    CreateVirtualNodeOutput[:payload_member] = CreateVirtualNodeOutput.member(:virtual_node)

    CreateVirtualRouterInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateVirtualRouterInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    CreateVirtualRouterInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualRouterSpec, required: true, location_name: "spec"))
    CreateVirtualRouterInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualRouterName"))
    CreateVirtualRouterInput.struct_class = Types::CreateVirtualRouterInput

    CreateVirtualRouterOutput.add_member(:virtual_router, Shapes::ShapeRef.new(shape: VirtualRouterData, location_name: "virtualRouter"))
    CreateVirtualRouterOutput.struct_class = Types::CreateVirtualRouterOutput
    CreateVirtualRouterOutput[:payload] = :virtual_router
    CreateVirtualRouterOutput[:payload_member] = CreateVirtualRouterOutput.member(:virtual_router)

    DeleteMeshInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DeleteMeshInput.struct_class = Types::DeleteMeshInput

    DeleteMeshOutput.add_member(:mesh, Shapes::ShapeRef.new(shape: MeshData, location_name: "mesh"))
    DeleteMeshOutput.struct_class = Types::DeleteMeshOutput
    DeleteMeshOutput[:payload] = :mesh
    DeleteMeshOutput[:payload_member] = DeleteMeshOutput.member(:mesh)

    DeleteRouteInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DeleteRouteInput.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "routeName"))
    DeleteRouteInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    DeleteRouteInput.struct_class = Types::DeleteRouteInput

    DeleteRouteOutput.add_member(:route, Shapes::ShapeRef.new(shape: RouteData, location_name: "route"))
    DeleteRouteOutput.struct_class = Types::DeleteRouteOutput
    DeleteRouteOutput[:payload] = :route
    DeleteRouteOutput[:payload_member] = DeleteRouteOutput.member(:route)

    DeleteVirtualNodeInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DeleteVirtualNodeInput.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualNodeName"))
    DeleteVirtualNodeInput.struct_class = Types::DeleteVirtualNodeInput

    DeleteVirtualNodeOutput.add_member(:virtual_node, Shapes::ShapeRef.new(shape: VirtualNodeData, location_name: "virtualNode"))
    DeleteVirtualNodeOutput.struct_class = Types::DeleteVirtualNodeOutput
    DeleteVirtualNodeOutput[:payload] = :virtual_node
    DeleteVirtualNodeOutput[:payload_member] = DeleteVirtualNodeOutput.member(:virtual_node)

    DeleteVirtualRouterInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DeleteVirtualRouterInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    DeleteVirtualRouterInput.struct_class = Types::DeleteVirtualRouterInput

    DeleteVirtualRouterOutput.add_member(:virtual_router, Shapes::ShapeRef.new(shape: VirtualRouterData, location_name: "virtualRouter"))
    DeleteVirtualRouterOutput.struct_class = Types::DeleteVirtualRouterOutput
    DeleteVirtualRouterOutput[:payload] = :virtual_router
    DeleteVirtualRouterOutput[:payload_member] = DeleteVirtualRouterOutput.member(:virtual_router)

    DescribeMeshInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DescribeMeshInput.struct_class = Types::DescribeMeshInput

    DescribeMeshOutput.add_member(:mesh, Shapes::ShapeRef.new(shape: MeshData, location_name: "mesh"))
    DescribeMeshOutput.struct_class = Types::DescribeMeshOutput
    DescribeMeshOutput[:payload] = :mesh
    DescribeMeshOutput[:payload_member] = DescribeMeshOutput.member(:mesh)

    DescribeRouteInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DescribeRouteInput.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "routeName"))
    DescribeRouteInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    DescribeRouteInput.struct_class = Types::DescribeRouteInput

    DescribeRouteOutput.add_member(:route, Shapes::ShapeRef.new(shape: RouteData, location_name: "route"))
    DescribeRouteOutput.struct_class = Types::DescribeRouteOutput
    DescribeRouteOutput[:payload] = :route
    DescribeRouteOutput[:payload_member] = DescribeRouteOutput.member(:route)

    DescribeVirtualNodeInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DescribeVirtualNodeInput.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualNodeName"))
    DescribeVirtualNodeInput.struct_class = Types::DescribeVirtualNodeInput

    DescribeVirtualNodeOutput.add_member(:virtual_node, Shapes::ShapeRef.new(shape: VirtualNodeData, location_name: "virtualNode"))
    DescribeVirtualNodeOutput.struct_class = Types::DescribeVirtualNodeOutput
    DescribeVirtualNodeOutput[:payload] = :virtual_node
    DescribeVirtualNodeOutput[:payload_member] = DescribeVirtualNodeOutput.member(:virtual_node)

    DescribeVirtualRouterInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DescribeVirtualRouterInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    DescribeVirtualRouterInput.struct_class = Types::DescribeVirtualRouterInput

    DescribeVirtualRouterOutput.add_member(:virtual_router, Shapes::ShapeRef.new(shape: VirtualRouterData, location_name: "virtualRouter"))
    DescribeVirtualRouterOutput.struct_class = Types::DescribeVirtualRouterOutput
    DescribeVirtualRouterOutput[:payload] = :virtual_router
    DescribeVirtualRouterOutput[:payload_member] = DescribeVirtualRouterOutput.member(:virtual_router)

    DnsServiceDiscovery.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "serviceName"))
    DnsServiceDiscovery.struct_class = Types::DnsServiceDiscovery

    HealthCheckPolicy.add_member(:healthy_threshold, Shapes::ShapeRef.new(shape: NonNegativeInt, location_name: "healthyThreshold"))
    HealthCheckPolicy.add_member(:interval_millis, Shapes::ShapeRef.new(shape: DurationMillis, location_name: "intervalMillis"))
    HealthCheckPolicy.add_member(:path, Shapes::ShapeRef.new(shape: String, location_name: "path"))
    HealthCheckPolicy.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "port"))
    HealthCheckPolicy.add_member(:protocol, Shapes::ShapeRef.new(shape: PortProtocol, location_name: "protocol"))
    HealthCheckPolicy.add_member(:timeout_millis, Shapes::ShapeRef.new(shape: DurationMillis, location_name: "timeoutMillis"))
    HealthCheckPolicy.add_member(:unhealthy_threshold, Shapes::ShapeRef.new(shape: NonNegativeInt, location_name: "unhealthyThreshold"))
    HealthCheckPolicy.struct_class = Types::HealthCheckPolicy

    HttpRoute.add_member(:action, Shapes::ShapeRef.new(shape: HttpRouteAction, location_name: "action"))
    HttpRoute.add_member(:match, Shapes::ShapeRef.new(shape: HttpRouteMatch, location_name: "match"))
    HttpRoute.struct_class = Types::HttpRoute

    HttpRouteAction.add_member(:weighted_targets, Shapes::ShapeRef.new(shape: WeightedTargets, location_name: "weightedTargets"))
    HttpRouteAction.struct_class = Types::HttpRouteAction

    HttpRouteMatch.add_member(:prefix, Shapes::ShapeRef.new(shape: String, location_name: "prefix"))
    HttpRouteMatch.struct_class = Types::HttpRouteMatch

    ListMeshesInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListMeshesLimit, location: "querystring", location_name: "limit"))
    ListMeshesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListMeshesInput.struct_class = Types::ListMeshesInput

    ListMeshesOutput.add_member(:meshes, Shapes::ShapeRef.new(shape: MeshList, required: true, location_name: "meshes"))
    ListMeshesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMeshesOutput.struct_class = Types::ListMeshesOutput

    ListRoutesInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListRoutesLimit, location: "querystring", location_name: "limit"))
    ListRoutesInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    ListRoutesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListRoutesInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    ListRoutesInput.struct_class = Types::ListRoutesInput

    ListRoutesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListRoutesOutput.add_member(:routes, Shapes::ShapeRef.new(shape: RouteList, required: true, location_name: "routes"))
    ListRoutesOutput.struct_class = Types::ListRoutesOutput

    ListVirtualNodesInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListVirtualNodesLimit, location: "querystring", location_name: "limit"))
    ListVirtualNodesInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    ListVirtualNodesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListVirtualNodesInput.struct_class = Types::ListVirtualNodesInput

    ListVirtualNodesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListVirtualNodesOutput.add_member(:virtual_nodes, Shapes::ShapeRef.new(shape: VirtualNodeList, required: true, location_name: "virtualNodes"))
    ListVirtualNodesOutput.struct_class = Types::ListVirtualNodesOutput

    ListVirtualRoutersInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListVirtualRoutersLimit, location: "querystring", location_name: "limit"))
    ListVirtualRoutersInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    ListVirtualRoutersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListVirtualRoutersInput.struct_class = Types::ListVirtualRoutersInput

    ListVirtualRoutersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListVirtualRoutersOutput.add_member(:virtual_routers, Shapes::ShapeRef.new(shape: VirtualRouterList, required: true, location_name: "virtualRouters"))
    ListVirtualRoutersOutput.struct_class = Types::ListVirtualRoutersOutput

    Listener.add_member(:health_check, Shapes::ShapeRef.new(shape: HealthCheckPolicy, location_name: "healthCheck"))
    Listener.add_member(:port_mapping, Shapes::ShapeRef.new(shape: PortMapping, location_name: "portMapping"))
    Listener.struct_class = Types::Listener

    Listeners.member = Shapes::ShapeRef.new(shape: Listener)

    MeshData.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    MeshData.add_member(:metadata, Shapes::ShapeRef.new(shape: ResourceMetadata, required: true, location_name: "metadata"))
    MeshData.add_member(:status, Shapes::ShapeRef.new(shape: MeshStatus, location_name: "status"))
    MeshData.struct_class = Types::MeshData

    MeshList.member = Shapes::ShapeRef.new(shape: MeshRef)

    MeshRef.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    MeshRef.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "meshName"))
    MeshRef.struct_class = Types::MeshRef

    MeshStatus.add_member(:status, Shapes::ShapeRef.new(shape: MeshStatusCode, location_name: "status"))
    MeshStatus.struct_class = Types::MeshStatus

    PortMapping.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "port"))
    PortMapping.add_member(:protocol, Shapes::ShapeRef.new(shape: PortProtocol, location_name: "protocol"))
    PortMapping.struct_class = Types::PortMapping

    ResourceMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    ResourceMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ResourceMetadata.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    ResourceMetadata.add_member(:uid, Shapes::ShapeRef.new(shape: String, location_name: "uid"))
    ResourceMetadata.add_member(:version, Shapes::ShapeRef.new(shape: Long, location_name: "version"))
    ResourceMetadata.struct_class = Types::ResourceMetadata

    RouteData.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    RouteData.add_member(:metadata, Shapes::ShapeRef.new(shape: ResourceMetadata, location_name: "metadata"))
    RouteData.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "routeName"))
    RouteData.add_member(:spec, Shapes::ShapeRef.new(shape: RouteSpec, location_name: "spec"))
    RouteData.add_member(:status, Shapes::ShapeRef.new(shape: RouteStatus, location_name: "status"))
    RouteData.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualRouterName"))
    RouteData.struct_class = Types::RouteData

    RouteList.member = Shapes::ShapeRef.new(shape: RouteRef)

    RouteRef.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    RouteRef.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "meshName"))
    RouteRef.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "routeName"))
    RouteRef.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "virtualRouterName"))
    RouteRef.struct_class = Types::RouteRef

    RouteSpec.add_member(:http_route, Shapes::ShapeRef.new(shape: HttpRoute, location_name: "httpRoute"))
    RouteSpec.struct_class = Types::RouteSpec

    RouteStatus.add_member(:status, Shapes::ShapeRef.new(shape: RouteStatusCode, location_name: "status"))
    RouteStatus.struct_class = Types::RouteStatus

    ServiceDiscovery.add_member(:dns, Shapes::ShapeRef.new(shape: DnsServiceDiscovery, location_name: "dns"))
    ServiceDiscovery.struct_class = Types::ServiceDiscovery

    ServiceNames.member = Shapes::ShapeRef.new(shape: ServiceName)

    UpdateRouteInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateRouteInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    UpdateRouteInput.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "routeName"))
    UpdateRouteInput.add_member(:spec, Shapes::ShapeRef.new(shape: RouteSpec, required: true, location_name: "spec"))
    UpdateRouteInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    UpdateRouteInput.struct_class = Types::UpdateRouteInput

    UpdateRouteOutput.add_member(:route, Shapes::ShapeRef.new(shape: RouteData, location_name: "route"))
    UpdateRouteOutput.struct_class = Types::UpdateRouteOutput
    UpdateRouteOutput[:payload] = :route
    UpdateRouteOutput[:payload_member] = UpdateRouteOutput.member(:route)

    UpdateVirtualNodeInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateVirtualNodeInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    UpdateVirtualNodeInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualNodeSpec, required: true, location_name: "spec"))
    UpdateVirtualNodeInput.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualNodeName"))
    UpdateVirtualNodeInput.struct_class = Types::UpdateVirtualNodeInput

    UpdateVirtualNodeOutput.add_member(:virtual_node, Shapes::ShapeRef.new(shape: VirtualNodeData, location_name: "virtualNode"))
    UpdateVirtualNodeOutput.struct_class = Types::UpdateVirtualNodeOutput
    UpdateVirtualNodeOutput[:payload] = :virtual_node
    UpdateVirtualNodeOutput[:payload_member] = UpdateVirtualNodeOutput.member(:virtual_node)

    UpdateVirtualRouterInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateVirtualRouterInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    UpdateVirtualRouterInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualRouterSpec, required: true, location_name: "spec"))
    UpdateVirtualRouterInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    UpdateVirtualRouterInput.struct_class = Types::UpdateVirtualRouterInput

    UpdateVirtualRouterOutput.add_member(:virtual_router, Shapes::ShapeRef.new(shape: VirtualRouterData, location_name: "virtualRouter"))
    UpdateVirtualRouterOutput.struct_class = Types::UpdateVirtualRouterOutput
    UpdateVirtualRouterOutput[:payload] = :virtual_router
    UpdateVirtualRouterOutput[:payload_member] = UpdateVirtualRouterOutput.member(:virtual_router)

    VirtualNodeData.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    VirtualNodeData.add_member(:metadata, Shapes::ShapeRef.new(shape: ResourceMetadata, location_name: "metadata"))
    VirtualNodeData.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualNodeSpec, location_name: "spec"))
    VirtualNodeData.add_member(:status, Shapes::ShapeRef.new(shape: VirtualNodeStatus, location_name: "status"))
    VirtualNodeData.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualNodeName"))
    VirtualNodeData.struct_class = Types::VirtualNodeData

    VirtualNodeList.member = Shapes::ShapeRef.new(shape: VirtualNodeRef)

    VirtualNodeRef.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    VirtualNodeRef.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "meshName"))
    VirtualNodeRef.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "virtualNodeName"))
    VirtualNodeRef.struct_class = Types::VirtualNodeRef

    VirtualNodeSpec.add_member(:backends, Shapes::ShapeRef.new(shape: Backends, location_name: "backends"))
    VirtualNodeSpec.add_member(:listeners, Shapes::ShapeRef.new(shape: Listeners, location_name: "listeners"))
    VirtualNodeSpec.add_member(:service_discovery, Shapes::ShapeRef.new(shape: ServiceDiscovery, location_name: "serviceDiscovery"))
    VirtualNodeSpec.struct_class = Types::VirtualNodeSpec

    VirtualNodeStatus.add_member(:status, Shapes::ShapeRef.new(shape: VirtualNodeStatusCode, location_name: "status"))
    VirtualNodeStatus.struct_class = Types::VirtualNodeStatus

    VirtualRouterData.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    VirtualRouterData.add_member(:metadata, Shapes::ShapeRef.new(shape: ResourceMetadata, location_name: "metadata"))
    VirtualRouterData.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualRouterSpec, location_name: "spec"))
    VirtualRouterData.add_member(:status, Shapes::ShapeRef.new(shape: VirtualRouterStatus, location_name: "status"))
    VirtualRouterData.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualRouterName"))
    VirtualRouterData.struct_class = Types::VirtualRouterData

    VirtualRouterList.member = Shapes::ShapeRef.new(shape: VirtualRouterRef)

    VirtualRouterRef.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    VirtualRouterRef.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "meshName"))
    VirtualRouterRef.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "virtualRouterName"))
    VirtualRouterRef.struct_class = Types::VirtualRouterRef

    VirtualRouterSpec.add_member(:service_names, Shapes::ShapeRef.new(shape: ServiceNames, location_name: "serviceNames"))
    VirtualRouterSpec.struct_class = Types::VirtualRouterSpec

    VirtualRouterStatus.add_member(:status, Shapes::ShapeRef.new(shape: VirtualRouterStatusCode, location_name: "status"))
    VirtualRouterStatus.struct_class = Types::VirtualRouterStatus

    WeightedTarget.add_member(:virtual_node, Shapes::ShapeRef.new(shape: ResourceName, location_name: "virtualNode"))
    WeightedTarget.add_member(:weight, Shapes::ShapeRef.new(shape: PercentInt, location_name: "weight"))
    WeightedTarget.struct_class = Types::WeightedTarget

    WeightedTargets.member = Shapes::ShapeRef.new(shape: WeightedTarget)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-10-01"

      api.metadata = {
        "apiVersion" => "2018-10-01",
        "endpointPrefix" => "appmesh",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS App Mesh",
        "serviceId" => "App Mesh",
        "signatureVersion" => "v4",
        "signingName" => "appmesh",
        "uid" => "appmesh-2018-10-01",
      }

      api.add_operation(:create_mesh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMesh"
        o.http_method = "PUT"
        o.http_request_uri = "/meshes"
        o.input = Shapes::ShapeRef.new(shape: CreateMeshInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMeshOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRoute"
        o.http_method = "PUT"
        o.http_request_uri = "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes"
        o.input = Shapes::ShapeRef.new(shape: CreateRouteInput)
        o.output = Shapes::ShapeRef.new(shape: CreateRouteOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_virtual_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVirtualNode"
        o.http_method = "PUT"
        o.http_request_uri = "/meshes/{meshName}/virtualNodes"
        o.input = Shapes::ShapeRef.new(shape: CreateVirtualNodeInput)
        o.output = Shapes::ShapeRef.new(shape: CreateVirtualNodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_virtual_router, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVirtualRouter"
        o.http_method = "PUT"
        o.http_request_uri = "/meshes/{meshName}/virtualRouters"
        o.input = Shapes::ShapeRef.new(shape: CreateVirtualRouterInput)
        o.output = Shapes::ShapeRef.new(shape: CreateVirtualRouterOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_mesh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMesh"
        o.http_method = "DELETE"
        o.http_request_uri = "/meshes/{meshName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMeshInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMeshOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoute"
        o.http_method = "DELETE"
        o.http_request_uri = "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRouteInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteRouteOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_virtual_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVirtualNode"
        o.http_method = "DELETE"
        o.http_request_uri = "/meshes/{meshName}/virtualNodes/{virtualNodeName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVirtualNodeInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteVirtualNodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_virtual_router, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVirtualRouter"
        o.http_method = "DELETE"
        o.http_request_uri = "/meshes/{meshName}/virtualRouters/{virtualRouterName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVirtualRouterInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteVirtualRouterOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_mesh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMesh"
        o.http_method = "GET"
        o.http_request_uri = "/meshes/{meshName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeMeshInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeMeshOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRoute"
        o.http_method = "GET"
        o.http_request_uri = "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRouteInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeRouteOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_virtual_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVirtualNode"
        o.http_method = "GET"
        o.http_request_uri = "/meshes/{meshName}/virtualNodes/{virtualNodeName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeVirtualNodeInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeVirtualNodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_virtual_router, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVirtualRouter"
        o.http_method = "GET"
        o.http_request_uri = "/meshes/{meshName}/virtualRouters/{virtualRouterName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeVirtualRouterInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeVirtualRouterOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_meshes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMeshes"
        o.http_method = "GET"
        o.http_request_uri = "/meshes"
        o.input = Shapes::ShapeRef.new(shape: ListMeshesInput)
        o.output = Shapes::ShapeRef.new(shape: ListMeshesOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_routes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRoutes"
        o.http_method = "GET"
        o.http_request_uri = "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes"
        o.input = Shapes::ShapeRef.new(shape: ListRoutesInput)
        o.output = Shapes::ShapeRef.new(shape: ListRoutesOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_virtual_nodes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVirtualNodes"
        o.http_method = "GET"
        o.http_request_uri = "/meshes/{meshName}/virtualNodes"
        o.input = Shapes::ShapeRef.new(shape: ListVirtualNodesInput)
        o.output = Shapes::ShapeRef.new(shape: ListVirtualNodesOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_virtual_routers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVirtualRouters"
        o.http_method = "GET"
        o.http_request_uri = "/meshes/{meshName}/virtualRouters"
        o.input = Shapes::ShapeRef.new(shape: ListVirtualRoutersInput)
        o.output = Shapes::ShapeRef.new(shape: ListVirtualRoutersOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoute"
        o.http_method = "PUT"
        o.http_request_uri = "/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRouteInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateRouteOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_virtual_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVirtualNode"
        o.http_method = "PUT"
        o.http_request_uri = "/meshes/{meshName}/virtualNodes/{virtualNodeName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateVirtualNodeInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateVirtualNodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_virtual_router, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVirtualRouter"
        o.http_method = "PUT"
        o.http_request_uri = "/meshes/{meshName}/virtualRouters/{virtualRouterName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateVirtualRouterInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateVirtualRouterOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end
