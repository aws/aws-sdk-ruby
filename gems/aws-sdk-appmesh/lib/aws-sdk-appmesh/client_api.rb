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

    AccessLog = Shapes::StructureShape.new(name: 'AccessLog')
    Arn = Shapes::StringShape.new(name: 'Arn')
    Backend = Shapes::StructureShape.new(name: 'Backend')
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
    CreateVirtualServiceInput = Shapes::StructureShape.new(name: 'CreateVirtualServiceInput')
    CreateVirtualServiceOutput = Shapes::StructureShape.new(name: 'CreateVirtualServiceOutput')
    DeleteMeshInput = Shapes::StructureShape.new(name: 'DeleteMeshInput')
    DeleteMeshOutput = Shapes::StructureShape.new(name: 'DeleteMeshOutput')
    DeleteRouteInput = Shapes::StructureShape.new(name: 'DeleteRouteInput')
    DeleteRouteOutput = Shapes::StructureShape.new(name: 'DeleteRouteOutput')
    DeleteVirtualNodeInput = Shapes::StructureShape.new(name: 'DeleteVirtualNodeInput')
    DeleteVirtualNodeOutput = Shapes::StructureShape.new(name: 'DeleteVirtualNodeOutput')
    DeleteVirtualRouterInput = Shapes::StructureShape.new(name: 'DeleteVirtualRouterInput')
    DeleteVirtualRouterOutput = Shapes::StructureShape.new(name: 'DeleteVirtualRouterOutput')
    DeleteVirtualServiceInput = Shapes::StructureShape.new(name: 'DeleteVirtualServiceInput')
    DeleteVirtualServiceOutput = Shapes::StructureShape.new(name: 'DeleteVirtualServiceOutput')
    DescribeMeshInput = Shapes::StructureShape.new(name: 'DescribeMeshInput')
    DescribeMeshOutput = Shapes::StructureShape.new(name: 'DescribeMeshOutput')
    DescribeRouteInput = Shapes::StructureShape.new(name: 'DescribeRouteInput')
    DescribeRouteOutput = Shapes::StructureShape.new(name: 'DescribeRouteOutput')
    DescribeVirtualNodeInput = Shapes::StructureShape.new(name: 'DescribeVirtualNodeInput')
    DescribeVirtualNodeOutput = Shapes::StructureShape.new(name: 'DescribeVirtualNodeOutput')
    DescribeVirtualRouterInput = Shapes::StructureShape.new(name: 'DescribeVirtualRouterInput')
    DescribeVirtualRouterOutput = Shapes::StructureShape.new(name: 'DescribeVirtualRouterOutput')
    DescribeVirtualServiceInput = Shapes::StructureShape.new(name: 'DescribeVirtualServiceInput')
    DescribeVirtualServiceOutput = Shapes::StructureShape.new(name: 'DescribeVirtualServiceOutput')
    DnsServiceDiscovery = Shapes::StructureShape.new(name: 'DnsServiceDiscovery')
    EgressFilter = Shapes::StructureShape.new(name: 'EgressFilter')
    EgressFilterType = Shapes::StringShape.new(name: 'EgressFilterType')
    FileAccessLog = Shapes::StructureShape.new(name: 'FileAccessLog')
    FilePath = Shapes::StringShape.new(name: 'FilePath')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    HealthCheckIntervalMillis = Shapes::IntegerShape.new(name: 'HealthCheckIntervalMillis')
    HealthCheckPolicy = Shapes::StructureShape.new(name: 'HealthCheckPolicy')
    HealthCheckThreshold = Shapes::IntegerShape.new(name: 'HealthCheckThreshold')
    HealthCheckTimeoutMillis = Shapes::IntegerShape.new(name: 'HealthCheckTimeoutMillis')
    Hostname = Shapes::StringShape.new(name: 'Hostname')
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
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListVirtualNodesInput = Shapes::StructureShape.new(name: 'ListVirtualNodesInput')
    ListVirtualNodesLimit = Shapes::IntegerShape.new(name: 'ListVirtualNodesLimit')
    ListVirtualNodesOutput = Shapes::StructureShape.new(name: 'ListVirtualNodesOutput')
    ListVirtualRoutersInput = Shapes::StructureShape.new(name: 'ListVirtualRoutersInput')
    ListVirtualRoutersLimit = Shapes::IntegerShape.new(name: 'ListVirtualRoutersLimit')
    ListVirtualRoutersOutput = Shapes::StructureShape.new(name: 'ListVirtualRoutersOutput')
    ListVirtualServicesInput = Shapes::StructureShape.new(name: 'ListVirtualServicesInput')
    ListVirtualServicesLimit = Shapes::IntegerShape.new(name: 'ListVirtualServicesLimit')
    ListVirtualServicesOutput = Shapes::StructureShape.new(name: 'ListVirtualServicesOutput')
    Listener = Shapes::StructureShape.new(name: 'Listener')
    Listeners = Shapes::ListShape.new(name: 'Listeners')
    Logging = Shapes::StructureShape.new(name: 'Logging')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MeshData = Shapes::StructureShape.new(name: 'MeshData')
    MeshList = Shapes::ListShape.new(name: 'MeshList')
    MeshRef = Shapes::StructureShape.new(name: 'MeshRef')
    MeshSpec = Shapes::StructureShape.new(name: 'MeshSpec')
    MeshStatus = Shapes::StructureShape.new(name: 'MeshStatus')
    MeshStatusCode = Shapes::StringShape.new(name: 'MeshStatusCode')
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
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagRef = Shapes::StructureShape.new(name: 'TagRef')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsLimit = Shapes::IntegerShape.new(name: 'TagsLimit')
    TcpRoute = Shapes::StructureShape.new(name: 'TcpRoute')
    TcpRouteAction = Shapes::StructureShape.new(name: 'TcpRouteAction')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateMeshInput = Shapes::StructureShape.new(name: 'UpdateMeshInput')
    UpdateMeshOutput = Shapes::StructureShape.new(name: 'UpdateMeshOutput')
    UpdateRouteInput = Shapes::StructureShape.new(name: 'UpdateRouteInput')
    UpdateRouteOutput = Shapes::StructureShape.new(name: 'UpdateRouteOutput')
    UpdateVirtualNodeInput = Shapes::StructureShape.new(name: 'UpdateVirtualNodeInput')
    UpdateVirtualNodeOutput = Shapes::StructureShape.new(name: 'UpdateVirtualNodeOutput')
    UpdateVirtualRouterInput = Shapes::StructureShape.new(name: 'UpdateVirtualRouterInput')
    UpdateVirtualRouterOutput = Shapes::StructureShape.new(name: 'UpdateVirtualRouterOutput')
    UpdateVirtualServiceInput = Shapes::StructureShape.new(name: 'UpdateVirtualServiceInput')
    UpdateVirtualServiceOutput = Shapes::StructureShape.new(name: 'UpdateVirtualServiceOutput')
    VirtualNodeData = Shapes::StructureShape.new(name: 'VirtualNodeData')
    VirtualNodeList = Shapes::ListShape.new(name: 'VirtualNodeList')
    VirtualNodeRef = Shapes::StructureShape.new(name: 'VirtualNodeRef')
    VirtualNodeServiceProvider = Shapes::StructureShape.new(name: 'VirtualNodeServiceProvider')
    VirtualNodeSpec = Shapes::StructureShape.new(name: 'VirtualNodeSpec')
    VirtualNodeStatus = Shapes::StructureShape.new(name: 'VirtualNodeStatus')
    VirtualNodeStatusCode = Shapes::StringShape.new(name: 'VirtualNodeStatusCode')
    VirtualRouterData = Shapes::StructureShape.new(name: 'VirtualRouterData')
    VirtualRouterList = Shapes::ListShape.new(name: 'VirtualRouterList')
    VirtualRouterListener = Shapes::StructureShape.new(name: 'VirtualRouterListener')
    VirtualRouterListeners = Shapes::ListShape.new(name: 'VirtualRouterListeners')
    VirtualRouterRef = Shapes::StructureShape.new(name: 'VirtualRouterRef')
    VirtualRouterServiceProvider = Shapes::StructureShape.new(name: 'VirtualRouterServiceProvider')
    VirtualRouterSpec = Shapes::StructureShape.new(name: 'VirtualRouterSpec')
    VirtualRouterStatus = Shapes::StructureShape.new(name: 'VirtualRouterStatus')
    VirtualRouterStatusCode = Shapes::StringShape.new(name: 'VirtualRouterStatusCode')
    VirtualServiceBackend = Shapes::StructureShape.new(name: 'VirtualServiceBackend')
    VirtualServiceData = Shapes::StructureShape.new(name: 'VirtualServiceData')
    VirtualServiceList = Shapes::ListShape.new(name: 'VirtualServiceList')
    VirtualServiceProvider = Shapes::StructureShape.new(name: 'VirtualServiceProvider')
    VirtualServiceRef = Shapes::StructureShape.new(name: 'VirtualServiceRef')
    VirtualServiceSpec = Shapes::StructureShape.new(name: 'VirtualServiceSpec')
    VirtualServiceStatus = Shapes::StructureShape.new(name: 'VirtualServiceStatus')
    VirtualServiceStatusCode = Shapes::StringShape.new(name: 'VirtualServiceStatusCode')
    WeightedTarget = Shapes::StructureShape.new(name: 'WeightedTarget')
    WeightedTargets = Shapes::ListShape.new(name: 'WeightedTargets')

    AccessLog.add_member(:file, Shapes::ShapeRef.new(shape: FileAccessLog, location_name: "file"))
    AccessLog.struct_class = Types::AccessLog

    Backend.add_member(:virtual_service, Shapes::ShapeRef.new(shape: VirtualServiceBackend, location_name: "virtualService"))
    Backend.struct_class = Types::Backend

    Backends.member = Shapes::ShapeRef.new(shape: Backend)

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateMeshInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateMeshInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    CreateMeshInput.add_member(:spec, Shapes::ShapeRef.new(shape: MeshSpec, location_name: "spec"))
    CreateMeshInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateMeshInput.struct_class = Types::CreateMeshInput

    CreateMeshOutput.add_member(:mesh, Shapes::ShapeRef.new(shape: MeshData, required: true, location_name: "mesh"))
    CreateMeshOutput.struct_class = Types::CreateMeshOutput
    CreateMeshOutput[:payload] = :mesh
    CreateMeshOutput[:payload_member] = CreateMeshOutput.member(:mesh)

    CreateRouteInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateRouteInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    CreateRouteInput.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "routeName"))
    CreateRouteInput.add_member(:spec, Shapes::ShapeRef.new(shape: RouteSpec, required: true, location_name: "spec"))
    CreateRouteInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateRouteInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    CreateRouteInput.struct_class = Types::CreateRouteInput

    CreateRouteOutput.add_member(:route, Shapes::ShapeRef.new(shape: RouteData, required: true, location_name: "route"))
    CreateRouteOutput.struct_class = Types::CreateRouteOutput
    CreateRouteOutput[:payload] = :route
    CreateRouteOutput[:payload_member] = CreateRouteOutput.member(:route)

    CreateVirtualNodeInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateVirtualNodeInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    CreateVirtualNodeInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualNodeSpec, required: true, location_name: "spec"))
    CreateVirtualNodeInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateVirtualNodeInput.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualNodeName"))
    CreateVirtualNodeInput.struct_class = Types::CreateVirtualNodeInput

    CreateVirtualNodeOutput.add_member(:virtual_node, Shapes::ShapeRef.new(shape: VirtualNodeData, required: true, location_name: "virtualNode"))
    CreateVirtualNodeOutput.struct_class = Types::CreateVirtualNodeOutput
    CreateVirtualNodeOutput[:payload] = :virtual_node
    CreateVirtualNodeOutput[:payload_member] = CreateVirtualNodeOutput.member(:virtual_node)

    CreateVirtualRouterInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateVirtualRouterInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    CreateVirtualRouterInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualRouterSpec, required: true, location_name: "spec"))
    CreateVirtualRouterInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateVirtualRouterInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualRouterName"))
    CreateVirtualRouterInput.struct_class = Types::CreateVirtualRouterInput

    CreateVirtualRouterOutput.add_member(:virtual_router, Shapes::ShapeRef.new(shape: VirtualRouterData, required: true, location_name: "virtualRouter"))
    CreateVirtualRouterOutput.struct_class = Types::CreateVirtualRouterOutput
    CreateVirtualRouterOutput[:payload] = :virtual_router
    CreateVirtualRouterOutput[:payload_member] = CreateVirtualRouterOutput.member(:virtual_router)

    CreateVirtualServiceInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateVirtualServiceInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    CreateVirtualServiceInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualServiceSpec, required: true, location_name: "spec"))
    CreateVirtualServiceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateVirtualServiceInput.add_member(:virtual_service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "virtualServiceName"))
    CreateVirtualServiceInput.struct_class = Types::CreateVirtualServiceInput

    CreateVirtualServiceOutput.add_member(:virtual_service, Shapes::ShapeRef.new(shape: VirtualServiceData, required: true, location_name: "virtualService"))
    CreateVirtualServiceOutput.struct_class = Types::CreateVirtualServiceOutput
    CreateVirtualServiceOutput[:payload] = :virtual_service
    CreateVirtualServiceOutput[:payload_member] = CreateVirtualServiceOutput.member(:virtual_service)

    DeleteMeshInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DeleteMeshInput.struct_class = Types::DeleteMeshInput

    DeleteMeshOutput.add_member(:mesh, Shapes::ShapeRef.new(shape: MeshData, required: true, location_name: "mesh"))
    DeleteMeshOutput.struct_class = Types::DeleteMeshOutput
    DeleteMeshOutput[:payload] = :mesh
    DeleteMeshOutput[:payload_member] = DeleteMeshOutput.member(:mesh)

    DeleteRouteInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DeleteRouteInput.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "routeName"))
    DeleteRouteInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    DeleteRouteInput.struct_class = Types::DeleteRouteInput

    DeleteRouteOutput.add_member(:route, Shapes::ShapeRef.new(shape: RouteData, required: true, location_name: "route"))
    DeleteRouteOutput.struct_class = Types::DeleteRouteOutput
    DeleteRouteOutput[:payload] = :route
    DeleteRouteOutput[:payload_member] = DeleteRouteOutput.member(:route)

    DeleteVirtualNodeInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DeleteVirtualNodeInput.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualNodeName"))
    DeleteVirtualNodeInput.struct_class = Types::DeleteVirtualNodeInput

    DeleteVirtualNodeOutput.add_member(:virtual_node, Shapes::ShapeRef.new(shape: VirtualNodeData, required: true, location_name: "virtualNode"))
    DeleteVirtualNodeOutput.struct_class = Types::DeleteVirtualNodeOutput
    DeleteVirtualNodeOutput[:payload] = :virtual_node
    DeleteVirtualNodeOutput[:payload_member] = DeleteVirtualNodeOutput.member(:virtual_node)

    DeleteVirtualRouterInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DeleteVirtualRouterInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    DeleteVirtualRouterInput.struct_class = Types::DeleteVirtualRouterInput

    DeleteVirtualRouterOutput.add_member(:virtual_router, Shapes::ShapeRef.new(shape: VirtualRouterData, required: true, location_name: "virtualRouter"))
    DeleteVirtualRouterOutput.struct_class = Types::DeleteVirtualRouterOutput
    DeleteVirtualRouterOutput[:payload] = :virtual_router
    DeleteVirtualRouterOutput[:payload_member] = DeleteVirtualRouterOutput.member(:virtual_router)

    DeleteVirtualServiceInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DeleteVirtualServiceInput.add_member(:virtual_service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location: "uri", location_name: "virtualServiceName"))
    DeleteVirtualServiceInput.struct_class = Types::DeleteVirtualServiceInput

    DeleteVirtualServiceOutput.add_member(:virtual_service, Shapes::ShapeRef.new(shape: VirtualServiceData, required: true, location_name: "virtualService"))
    DeleteVirtualServiceOutput.struct_class = Types::DeleteVirtualServiceOutput
    DeleteVirtualServiceOutput[:payload] = :virtual_service
    DeleteVirtualServiceOutput[:payload_member] = DeleteVirtualServiceOutput.member(:virtual_service)

    DescribeMeshInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DescribeMeshInput.struct_class = Types::DescribeMeshInput

    DescribeMeshOutput.add_member(:mesh, Shapes::ShapeRef.new(shape: MeshData, required: true, location_name: "mesh"))
    DescribeMeshOutput.struct_class = Types::DescribeMeshOutput
    DescribeMeshOutput[:payload] = :mesh
    DescribeMeshOutput[:payload_member] = DescribeMeshOutput.member(:mesh)

    DescribeRouteInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DescribeRouteInput.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "routeName"))
    DescribeRouteInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    DescribeRouteInput.struct_class = Types::DescribeRouteInput

    DescribeRouteOutput.add_member(:route, Shapes::ShapeRef.new(shape: RouteData, required: true, location_name: "route"))
    DescribeRouteOutput.struct_class = Types::DescribeRouteOutput
    DescribeRouteOutput[:payload] = :route
    DescribeRouteOutput[:payload_member] = DescribeRouteOutput.member(:route)

    DescribeVirtualNodeInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DescribeVirtualNodeInput.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualNodeName"))
    DescribeVirtualNodeInput.struct_class = Types::DescribeVirtualNodeInput

    DescribeVirtualNodeOutput.add_member(:virtual_node, Shapes::ShapeRef.new(shape: VirtualNodeData, required: true, location_name: "virtualNode"))
    DescribeVirtualNodeOutput.struct_class = Types::DescribeVirtualNodeOutput
    DescribeVirtualNodeOutput[:payload] = :virtual_node
    DescribeVirtualNodeOutput[:payload_member] = DescribeVirtualNodeOutput.member(:virtual_node)

    DescribeVirtualRouterInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DescribeVirtualRouterInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    DescribeVirtualRouterInput.struct_class = Types::DescribeVirtualRouterInput

    DescribeVirtualRouterOutput.add_member(:virtual_router, Shapes::ShapeRef.new(shape: VirtualRouterData, required: true, location_name: "virtualRouter"))
    DescribeVirtualRouterOutput.struct_class = Types::DescribeVirtualRouterOutput
    DescribeVirtualRouterOutput[:payload] = :virtual_router
    DescribeVirtualRouterOutput[:payload_member] = DescribeVirtualRouterOutput.member(:virtual_router)

    DescribeVirtualServiceInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DescribeVirtualServiceInput.add_member(:virtual_service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location: "uri", location_name: "virtualServiceName"))
    DescribeVirtualServiceInput.struct_class = Types::DescribeVirtualServiceInput

    DescribeVirtualServiceOutput.add_member(:virtual_service, Shapes::ShapeRef.new(shape: VirtualServiceData, required: true, location_name: "virtualService"))
    DescribeVirtualServiceOutput.struct_class = Types::DescribeVirtualServiceOutput
    DescribeVirtualServiceOutput[:payload] = :virtual_service
    DescribeVirtualServiceOutput[:payload_member] = DescribeVirtualServiceOutput.member(:virtual_service)

    DnsServiceDiscovery.add_member(:hostname, Shapes::ShapeRef.new(shape: Hostname, required: true, location_name: "hostname"))
    DnsServiceDiscovery.struct_class = Types::DnsServiceDiscovery

    EgressFilter.add_member(:type, Shapes::ShapeRef.new(shape: EgressFilterType, required: true, location_name: "type"))
    EgressFilter.struct_class = Types::EgressFilter

    FileAccessLog.add_member(:path, Shapes::ShapeRef.new(shape: FilePath, required: true, location_name: "path"))
    FileAccessLog.struct_class = Types::FileAccessLog

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    HealthCheckPolicy.add_member(:healthy_threshold, Shapes::ShapeRef.new(shape: HealthCheckThreshold, required: true, location_name: "healthyThreshold"))
    HealthCheckPolicy.add_member(:interval_millis, Shapes::ShapeRef.new(shape: HealthCheckIntervalMillis, required: true, location_name: "intervalMillis"))
    HealthCheckPolicy.add_member(:path, Shapes::ShapeRef.new(shape: String, location_name: "path"))
    HealthCheckPolicy.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "port"))
    HealthCheckPolicy.add_member(:protocol, Shapes::ShapeRef.new(shape: PortProtocol, required: true, location_name: "protocol"))
    HealthCheckPolicy.add_member(:timeout_millis, Shapes::ShapeRef.new(shape: HealthCheckTimeoutMillis, required: true, location_name: "timeoutMillis"))
    HealthCheckPolicy.add_member(:unhealthy_threshold, Shapes::ShapeRef.new(shape: HealthCheckThreshold, required: true, location_name: "unhealthyThreshold"))
    HealthCheckPolicy.struct_class = Types::HealthCheckPolicy

    HttpRoute.add_member(:action, Shapes::ShapeRef.new(shape: HttpRouteAction, required: true, location_name: "action"))
    HttpRoute.add_member(:match, Shapes::ShapeRef.new(shape: HttpRouteMatch, required: true, location_name: "match"))
    HttpRoute.struct_class = Types::HttpRoute

    HttpRouteAction.add_member(:weighted_targets, Shapes::ShapeRef.new(shape: WeightedTargets, required: true, location_name: "weightedTargets"))
    HttpRouteAction.struct_class = Types::HttpRouteAction

    HttpRouteMatch.add_member(:prefix, Shapes::ShapeRef.new(shape: String, required: true, location_name: "prefix"))
    HttpRouteMatch.struct_class = Types::HttpRouteMatch

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

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

    ListTagsForResourceInput.add_member(:limit, Shapes::ShapeRef.new(shape: TagsLimit, location: "querystring", location_name: "limit"))
    ListTagsForResourceInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

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

    ListVirtualServicesInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListVirtualServicesLimit, location: "querystring", location_name: "limit"))
    ListVirtualServicesInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    ListVirtualServicesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListVirtualServicesInput.struct_class = Types::ListVirtualServicesInput

    ListVirtualServicesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListVirtualServicesOutput.add_member(:virtual_services, Shapes::ShapeRef.new(shape: VirtualServiceList, required: true, location_name: "virtualServices"))
    ListVirtualServicesOutput.struct_class = Types::ListVirtualServicesOutput

    Listener.add_member(:health_check, Shapes::ShapeRef.new(shape: HealthCheckPolicy, location_name: "healthCheck"))
    Listener.add_member(:port_mapping, Shapes::ShapeRef.new(shape: PortMapping, required: true, location_name: "portMapping"))
    Listener.struct_class = Types::Listener

    Listeners.member = Shapes::ShapeRef.new(shape: Listener)

    Logging.add_member(:access_log, Shapes::ShapeRef.new(shape: AccessLog, location_name: "accessLog"))
    Logging.struct_class = Types::Logging

    MeshData.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    MeshData.add_member(:metadata, Shapes::ShapeRef.new(shape: ResourceMetadata, required: true, location_name: "metadata"))
    MeshData.add_member(:spec, Shapes::ShapeRef.new(shape: MeshSpec, required: true, location_name: "spec"))
    MeshData.add_member(:status, Shapes::ShapeRef.new(shape: MeshStatus, required: true, location_name: "status"))
    MeshData.struct_class = Types::MeshData

    MeshList.member = Shapes::ShapeRef.new(shape: MeshRef)

    MeshRef.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    MeshRef.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    MeshRef.struct_class = Types::MeshRef

    MeshSpec.add_member(:egress_filter, Shapes::ShapeRef.new(shape: EgressFilter, location_name: "egressFilter"))
    MeshSpec.struct_class = Types::MeshSpec

    MeshStatus.add_member(:status, Shapes::ShapeRef.new(shape: MeshStatusCode, location_name: "status"))
    MeshStatus.struct_class = Types::MeshStatus

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    PortMapping.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, required: true, location_name: "port"))
    PortMapping.add_member(:protocol, Shapes::ShapeRef.new(shape: PortProtocol, required: true, location_name: "protocol"))
    PortMapping.struct_class = Types::PortMapping

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    ResourceMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ResourceMetadata.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedAt"))
    ResourceMetadata.add_member(:uid, Shapes::ShapeRef.new(shape: String, required: true, location_name: "uid"))
    ResourceMetadata.add_member(:version, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "version"))
    ResourceMetadata.struct_class = Types::ResourceMetadata

    RouteData.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    RouteData.add_member(:metadata, Shapes::ShapeRef.new(shape: ResourceMetadata, required: true, location_name: "metadata"))
    RouteData.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "routeName"))
    RouteData.add_member(:spec, Shapes::ShapeRef.new(shape: RouteSpec, required: true, location_name: "spec"))
    RouteData.add_member(:status, Shapes::ShapeRef.new(shape: RouteStatus, required: true, location_name: "status"))
    RouteData.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualRouterName"))
    RouteData.struct_class = Types::RouteData

    RouteList.member = Shapes::ShapeRef.new(shape: RouteRef)

    RouteRef.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    RouteRef.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    RouteRef.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "routeName"))
    RouteRef.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualRouterName"))
    RouteRef.struct_class = Types::RouteRef

    RouteSpec.add_member(:http_route, Shapes::ShapeRef.new(shape: HttpRoute, location_name: "httpRoute"))
    RouteSpec.add_member(:tcp_route, Shapes::ShapeRef.new(shape: TcpRoute, location_name: "tcpRoute"))
    RouteSpec.struct_class = Types::RouteSpec

    RouteStatus.add_member(:status, Shapes::ShapeRef.new(shape: RouteStatusCode, required: true, location_name: "status"))
    RouteStatus.struct_class = Types::RouteStatus

    ServiceDiscovery.add_member(:dns, Shapes::ShapeRef.new(shape: DnsServiceDiscovery, location_name: "dns"))
    ServiceDiscovery.struct_class = Types::ServiceDiscovery

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: TagRef)

    TagRef.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    TagRef.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "value"))
    TagRef.struct_class = Types::TagRef

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TcpRoute.add_member(:action, Shapes::ShapeRef.new(shape: TcpRouteAction, required: true, location_name: "action"))
    TcpRoute.struct_class = Types::TcpRoute

    TcpRouteAction.add_member(:weighted_targets, Shapes::ShapeRef.new(shape: WeightedTargets, required: true, location_name: "weightedTargets"))
    TcpRouteAction.struct_class = Types::TcpRouteAction

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateMeshInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateMeshInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    UpdateMeshInput.add_member(:spec, Shapes::ShapeRef.new(shape: MeshSpec, location_name: "spec"))
    UpdateMeshInput.struct_class = Types::UpdateMeshInput

    UpdateMeshOutput.add_member(:mesh, Shapes::ShapeRef.new(shape: MeshData, required: true, location_name: "mesh"))
    UpdateMeshOutput.struct_class = Types::UpdateMeshOutput
    UpdateMeshOutput[:payload] = :mesh
    UpdateMeshOutput[:payload_member] = UpdateMeshOutput.member(:mesh)

    UpdateRouteInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateRouteInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    UpdateRouteInput.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "routeName"))
    UpdateRouteInput.add_member(:spec, Shapes::ShapeRef.new(shape: RouteSpec, required: true, location_name: "spec"))
    UpdateRouteInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    UpdateRouteInput.struct_class = Types::UpdateRouteInput

    UpdateRouteOutput.add_member(:route, Shapes::ShapeRef.new(shape: RouteData, required: true, location_name: "route"))
    UpdateRouteOutput.struct_class = Types::UpdateRouteOutput
    UpdateRouteOutput[:payload] = :route
    UpdateRouteOutput[:payload_member] = UpdateRouteOutput.member(:route)

    UpdateVirtualNodeInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateVirtualNodeInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    UpdateVirtualNodeInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualNodeSpec, required: true, location_name: "spec"))
    UpdateVirtualNodeInput.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualNodeName"))
    UpdateVirtualNodeInput.struct_class = Types::UpdateVirtualNodeInput

    UpdateVirtualNodeOutput.add_member(:virtual_node, Shapes::ShapeRef.new(shape: VirtualNodeData, required: true, location_name: "virtualNode"))
    UpdateVirtualNodeOutput.struct_class = Types::UpdateVirtualNodeOutput
    UpdateVirtualNodeOutput[:payload] = :virtual_node
    UpdateVirtualNodeOutput[:payload_member] = UpdateVirtualNodeOutput.member(:virtual_node)

    UpdateVirtualRouterInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateVirtualRouterInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    UpdateVirtualRouterInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualRouterSpec, required: true, location_name: "spec"))
    UpdateVirtualRouterInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    UpdateVirtualRouterInput.struct_class = Types::UpdateVirtualRouterInput

    UpdateVirtualRouterOutput.add_member(:virtual_router, Shapes::ShapeRef.new(shape: VirtualRouterData, required: true, location_name: "virtualRouter"))
    UpdateVirtualRouterOutput.struct_class = Types::UpdateVirtualRouterOutput
    UpdateVirtualRouterOutput[:payload] = :virtual_router
    UpdateVirtualRouterOutput[:payload_member] = UpdateVirtualRouterOutput.member(:virtual_router)

    UpdateVirtualServiceInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateVirtualServiceInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    UpdateVirtualServiceInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualServiceSpec, required: true, location_name: "spec"))
    UpdateVirtualServiceInput.add_member(:virtual_service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location: "uri", location_name: "virtualServiceName"))
    UpdateVirtualServiceInput.struct_class = Types::UpdateVirtualServiceInput

    UpdateVirtualServiceOutput.add_member(:virtual_service, Shapes::ShapeRef.new(shape: VirtualServiceData, required: true, location_name: "virtualService"))
    UpdateVirtualServiceOutput.struct_class = Types::UpdateVirtualServiceOutput
    UpdateVirtualServiceOutput[:payload] = :virtual_service
    UpdateVirtualServiceOutput[:payload_member] = UpdateVirtualServiceOutput.member(:virtual_service)

    VirtualNodeData.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    VirtualNodeData.add_member(:metadata, Shapes::ShapeRef.new(shape: ResourceMetadata, required: true, location_name: "metadata"))
    VirtualNodeData.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualNodeSpec, required: true, location_name: "spec"))
    VirtualNodeData.add_member(:status, Shapes::ShapeRef.new(shape: VirtualNodeStatus, required: true, location_name: "status"))
    VirtualNodeData.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualNodeName"))
    VirtualNodeData.struct_class = Types::VirtualNodeData

    VirtualNodeList.member = Shapes::ShapeRef.new(shape: VirtualNodeRef)

    VirtualNodeRef.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    VirtualNodeRef.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    VirtualNodeRef.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualNodeName"))
    VirtualNodeRef.struct_class = Types::VirtualNodeRef

    VirtualNodeServiceProvider.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualNodeName"))
    VirtualNodeServiceProvider.struct_class = Types::VirtualNodeServiceProvider

    VirtualNodeSpec.add_member(:backends, Shapes::ShapeRef.new(shape: Backends, location_name: "backends"))
    VirtualNodeSpec.add_member(:listeners, Shapes::ShapeRef.new(shape: Listeners, location_name: "listeners"))
    VirtualNodeSpec.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    VirtualNodeSpec.add_member(:service_discovery, Shapes::ShapeRef.new(shape: ServiceDiscovery, location_name: "serviceDiscovery"))
    VirtualNodeSpec.struct_class = Types::VirtualNodeSpec

    VirtualNodeStatus.add_member(:status, Shapes::ShapeRef.new(shape: VirtualNodeStatusCode, required: true, location_name: "status"))
    VirtualNodeStatus.struct_class = Types::VirtualNodeStatus

    VirtualRouterData.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    VirtualRouterData.add_member(:metadata, Shapes::ShapeRef.new(shape: ResourceMetadata, required: true, location_name: "metadata"))
    VirtualRouterData.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualRouterSpec, required: true, location_name: "spec"))
    VirtualRouterData.add_member(:status, Shapes::ShapeRef.new(shape: VirtualRouterStatus, required: true, location_name: "status"))
    VirtualRouterData.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualRouterName"))
    VirtualRouterData.struct_class = Types::VirtualRouterData

    VirtualRouterList.member = Shapes::ShapeRef.new(shape: VirtualRouterRef)

    VirtualRouterListener.add_member(:port_mapping, Shapes::ShapeRef.new(shape: PortMapping, required: true, location_name: "portMapping"))
    VirtualRouterListener.struct_class = Types::VirtualRouterListener

    VirtualRouterListeners.member = Shapes::ShapeRef.new(shape: VirtualRouterListener)

    VirtualRouterRef.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    VirtualRouterRef.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    VirtualRouterRef.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualRouterName"))
    VirtualRouterRef.struct_class = Types::VirtualRouterRef

    VirtualRouterServiceProvider.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualRouterName"))
    VirtualRouterServiceProvider.struct_class = Types::VirtualRouterServiceProvider

    VirtualRouterSpec.add_member(:listeners, Shapes::ShapeRef.new(shape: VirtualRouterListeners, required: true, location_name: "listeners"))
    VirtualRouterSpec.struct_class = Types::VirtualRouterSpec

    VirtualRouterStatus.add_member(:status, Shapes::ShapeRef.new(shape: VirtualRouterStatusCode, required: true, location_name: "status"))
    VirtualRouterStatus.struct_class = Types::VirtualRouterStatus

    VirtualServiceBackend.add_member(:virtual_service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "virtualServiceName"))
    VirtualServiceBackend.struct_class = Types::VirtualServiceBackend

    VirtualServiceData.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    VirtualServiceData.add_member(:metadata, Shapes::ShapeRef.new(shape: ResourceMetadata, required: true, location_name: "metadata"))
    VirtualServiceData.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualServiceSpec, required: true, location_name: "spec"))
    VirtualServiceData.add_member(:status, Shapes::ShapeRef.new(shape: VirtualServiceStatus, required: true, location_name: "status"))
    VirtualServiceData.add_member(:virtual_service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "virtualServiceName"))
    VirtualServiceData.struct_class = Types::VirtualServiceData

    VirtualServiceList.member = Shapes::ShapeRef.new(shape: VirtualServiceRef)

    VirtualServiceProvider.add_member(:virtual_node, Shapes::ShapeRef.new(shape: VirtualNodeServiceProvider, location_name: "virtualNode"))
    VirtualServiceProvider.add_member(:virtual_router, Shapes::ShapeRef.new(shape: VirtualRouterServiceProvider, location_name: "virtualRouter"))
    VirtualServiceProvider.struct_class = Types::VirtualServiceProvider

    VirtualServiceRef.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    VirtualServiceRef.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    VirtualServiceRef.add_member(:virtual_service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "virtualServiceName"))
    VirtualServiceRef.struct_class = Types::VirtualServiceRef

    VirtualServiceSpec.add_member(:provider, Shapes::ShapeRef.new(shape: VirtualServiceProvider, location_name: "provider"))
    VirtualServiceSpec.struct_class = Types::VirtualServiceSpec

    VirtualServiceStatus.add_member(:status, Shapes::ShapeRef.new(shape: VirtualServiceStatusCode, required: true, location_name: "status"))
    VirtualServiceStatus.struct_class = Types::VirtualServiceStatus

    WeightedTarget.add_member(:virtual_node, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualNode"))
    WeightedTarget.add_member(:weight, Shapes::ShapeRef.new(shape: PercentInt, required: true, location_name: "weight"))
    WeightedTarget.struct_class = Types::WeightedTarget

    WeightedTargets.member = Shapes::ShapeRef.new(shape: WeightedTarget)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-01-25"

      api.metadata = {
        "apiVersion" => "2019-01-25",
        "endpointPrefix" => "appmesh",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS App Mesh",
        "serviceId" => "App Mesh",
        "signatureVersion" => "v4",
        "signingName" => "appmesh",
        "uid" => "appmesh-2019-01-25",
      }

      api.add_operation(:create_mesh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMesh"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes"
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
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes"
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
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualNodes"
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
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouters"
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

      api.add_operation(:create_virtual_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVirtualService"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualServices"
        o.input = Shapes::ShapeRef.new(shape: CreateVirtualServiceInput)
        o.output = Shapes::ShapeRef.new(shape: CreateVirtualServiceOutput)
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
        o.http_request_uri = "/v20190125/meshes/{meshName}"
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
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}"
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
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}"
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
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}"
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

      api.add_operation(:delete_virtual_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVirtualService"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVirtualServiceInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteVirtualServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_mesh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMesh"
        o.http_method = "GET"
        o.http_request_uri = "/v20190125/meshes/{meshName}"
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
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}"
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
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}"
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
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeVirtualRouterInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeVirtualRouterOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_virtual_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVirtualService"
        o.http_method = "GET"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeVirtualServiceInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeVirtualServiceOutput)
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
        o.http_request_uri = "/v20190125/meshes"
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
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes"
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

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/v20190125/tags"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
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
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualNodes"
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
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouters"
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

      api.add_operation(:list_virtual_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVirtualServices"
        o.http_method = "GET"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualServices"
        o.input = Shapes::ShapeRef.new(shape: ListVirtualServicesInput)
        o.output = Shapes::ShapeRef.new(shape: ListVirtualServicesOutput)
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

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/tag"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/untag"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:update_mesh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMesh"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMeshInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMeshOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoute"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}"
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
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}"
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
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}"
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

      api.add_operation(:update_virtual_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVirtualService"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateVirtualServiceInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateVirtualServiceOutput)
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
