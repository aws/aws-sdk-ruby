# frozen_string_literal: true

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
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AwsCloudMapInstanceAttribute = Shapes::StructureShape.new(name: 'AwsCloudMapInstanceAttribute')
    AwsCloudMapInstanceAttributeKey = Shapes::StringShape.new(name: 'AwsCloudMapInstanceAttributeKey')
    AwsCloudMapInstanceAttributeValue = Shapes::StringShape.new(name: 'AwsCloudMapInstanceAttributeValue')
    AwsCloudMapInstanceAttributes = Shapes::ListShape.new(name: 'AwsCloudMapInstanceAttributes')
    AwsCloudMapName = Shapes::StringShape.new(name: 'AwsCloudMapName')
    AwsCloudMapServiceDiscovery = Shapes::StructureShape.new(name: 'AwsCloudMapServiceDiscovery')
    Backend = Shapes::StructureShape.new(name: 'Backend')
    BackendDefaults = Shapes::StructureShape.new(name: 'BackendDefaults')
    Backends = Shapes::ListShape.new(name: 'Backends')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CertificateAuthorityArns = Shapes::ListShape.new(name: 'CertificateAuthorityArns')
    ClientPolicy = Shapes::StructureShape.new(name: 'ClientPolicy')
    ClientPolicyTls = Shapes::StructureShape.new(name: 'ClientPolicyTls')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateGatewayRouteInput = Shapes::StructureShape.new(name: 'CreateGatewayRouteInput')
    CreateGatewayRouteOutput = Shapes::StructureShape.new(name: 'CreateGatewayRouteOutput')
    CreateMeshInput = Shapes::StructureShape.new(name: 'CreateMeshInput')
    CreateMeshOutput = Shapes::StructureShape.new(name: 'CreateMeshOutput')
    CreateRouteInput = Shapes::StructureShape.new(name: 'CreateRouteInput')
    CreateRouteOutput = Shapes::StructureShape.new(name: 'CreateRouteOutput')
    CreateVirtualGatewayInput = Shapes::StructureShape.new(name: 'CreateVirtualGatewayInput')
    CreateVirtualGatewayOutput = Shapes::StructureShape.new(name: 'CreateVirtualGatewayOutput')
    CreateVirtualNodeInput = Shapes::StructureShape.new(name: 'CreateVirtualNodeInput')
    CreateVirtualNodeOutput = Shapes::StructureShape.new(name: 'CreateVirtualNodeOutput')
    CreateVirtualRouterInput = Shapes::StructureShape.new(name: 'CreateVirtualRouterInput')
    CreateVirtualRouterOutput = Shapes::StructureShape.new(name: 'CreateVirtualRouterOutput')
    CreateVirtualServiceInput = Shapes::StructureShape.new(name: 'CreateVirtualServiceInput')
    CreateVirtualServiceOutput = Shapes::StructureShape.new(name: 'CreateVirtualServiceOutput')
    DeleteGatewayRouteInput = Shapes::StructureShape.new(name: 'DeleteGatewayRouteInput')
    DeleteGatewayRouteOutput = Shapes::StructureShape.new(name: 'DeleteGatewayRouteOutput')
    DeleteMeshInput = Shapes::StructureShape.new(name: 'DeleteMeshInput')
    DeleteMeshOutput = Shapes::StructureShape.new(name: 'DeleteMeshOutput')
    DeleteRouteInput = Shapes::StructureShape.new(name: 'DeleteRouteInput')
    DeleteRouteOutput = Shapes::StructureShape.new(name: 'DeleteRouteOutput')
    DeleteVirtualGatewayInput = Shapes::StructureShape.new(name: 'DeleteVirtualGatewayInput')
    DeleteVirtualGatewayOutput = Shapes::StructureShape.new(name: 'DeleteVirtualGatewayOutput')
    DeleteVirtualNodeInput = Shapes::StructureShape.new(name: 'DeleteVirtualNodeInput')
    DeleteVirtualNodeOutput = Shapes::StructureShape.new(name: 'DeleteVirtualNodeOutput')
    DeleteVirtualRouterInput = Shapes::StructureShape.new(name: 'DeleteVirtualRouterInput')
    DeleteVirtualRouterOutput = Shapes::StructureShape.new(name: 'DeleteVirtualRouterOutput')
    DeleteVirtualServiceInput = Shapes::StructureShape.new(name: 'DeleteVirtualServiceInput')
    DeleteVirtualServiceOutput = Shapes::StructureShape.new(name: 'DeleteVirtualServiceOutput')
    DescribeGatewayRouteInput = Shapes::StructureShape.new(name: 'DescribeGatewayRouteInput')
    DescribeGatewayRouteOutput = Shapes::StructureShape.new(name: 'DescribeGatewayRouteOutput')
    DescribeMeshInput = Shapes::StructureShape.new(name: 'DescribeMeshInput')
    DescribeMeshOutput = Shapes::StructureShape.new(name: 'DescribeMeshOutput')
    DescribeRouteInput = Shapes::StructureShape.new(name: 'DescribeRouteInput')
    DescribeRouteOutput = Shapes::StructureShape.new(name: 'DescribeRouteOutput')
    DescribeVirtualGatewayInput = Shapes::StructureShape.new(name: 'DescribeVirtualGatewayInput')
    DescribeVirtualGatewayOutput = Shapes::StructureShape.new(name: 'DescribeVirtualGatewayOutput')
    DescribeVirtualNodeInput = Shapes::StructureShape.new(name: 'DescribeVirtualNodeInput')
    DescribeVirtualNodeOutput = Shapes::StructureShape.new(name: 'DescribeVirtualNodeOutput')
    DescribeVirtualRouterInput = Shapes::StructureShape.new(name: 'DescribeVirtualRouterInput')
    DescribeVirtualRouterOutput = Shapes::StructureShape.new(name: 'DescribeVirtualRouterOutput')
    DescribeVirtualServiceInput = Shapes::StructureShape.new(name: 'DescribeVirtualServiceInput')
    DescribeVirtualServiceOutput = Shapes::StructureShape.new(name: 'DescribeVirtualServiceOutput')
    DnsServiceDiscovery = Shapes::StructureShape.new(name: 'DnsServiceDiscovery')
    Duration = Shapes::StructureShape.new(name: 'Duration')
    DurationUnit = Shapes::StringShape.new(name: 'DurationUnit')
    DurationValue = Shapes::IntegerShape.new(name: 'DurationValue')
    EgressFilter = Shapes::StructureShape.new(name: 'EgressFilter')
    EgressFilterType = Shapes::StringShape.new(name: 'EgressFilterType')
    FileAccessLog = Shapes::StructureShape.new(name: 'FileAccessLog')
    FilePath = Shapes::StringShape.new(name: 'FilePath')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GatewayRouteData = Shapes::StructureShape.new(name: 'GatewayRouteData')
    GatewayRouteList = Shapes::ListShape.new(name: 'GatewayRouteList')
    GatewayRouteRef = Shapes::StructureShape.new(name: 'GatewayRouteRef')
    GatewayRouteSpec = Shapes::StructureShape.new(name: 'GatewayRouteSpec')
    GatewayRouteStatus = Shapes::StructureShape.new(name: 'GatewayRouteStatus')
    GatewayRouteStatusCode = Shapes::StringShape.new(name: 'GatewayRouteStatusCode')
    GatewayRouteTarget = Shapes::StructureShape.new(name: 'GatewayRouteTarget')
    GatewayRouteVirtualService = Shapes::StructureShape.new(name: 'GatewayRouteVirtualService')
    GrpcGatewayRoute = Shapes::StructureShape.new(name: 'GrpcGatewayRoute')
    GrpcGatewayRouteAction = Shapes::StructureShape.new(name: 'GrpcGatewayRouteAction')
    GrpcGatewayRouteMatch = Shapes::StructureShape.new(name: 'GrpcGatewayRouteMatch')
    GrpcRetryPolicy = Shapes::StructureShape.new(name: 'GrpcRetryPolicy')
    GrpcRetryPolicyEvent = Shapes::StringShape.new(name: 'GrpcRetryPolicyEvent')
    GrpcRetryPolicyEvents = Shapes::ListShape.new(name: 'GrpcRetryPolicyEvents')
    GrpcRoute = Shapes::StructureShape.new(name: 'GrpcRoute')
    GrpcRouteAction = Shapes::StructureShape.new(name: 'GrpcRouteAction')
    GrpcRouteMatch = Shapes::StructureShape.new(name: 'GrpcRouteMatch')
    GrpcRouteMetadata = Shapes::StructureShape.new(name: 'GrpcRouteMetadata')
    GrpcRouteMetadataList = Shapes::ListShape.new(name: 'GrpcRouteMetadataList')
    GrpcRouteMetadataMatchMethod = Shapes::StructureShape.new(name: 'GrpcRouteMetadataMatchMethod')
    GrpcTimeout = Shapes::StructureShape.new(name: 'GrpcTimeout')
    HeaderMatch = Shapes::StringShape.new(name: 'HeaderMatch')
    HeaderMatchMethod = Shapes::StructureShape.new(name: 'HeaderMatchMethod')
    HeaderName = Shapes::StringShape.new(name: 'HeaderName')
    HealthCheckIntervalMillis = Shapes::IntegerShape.new(name: 'HealthCheckIntervalMillis')
    HealthCheckPolicy = Shapes::StructureShape.new(name: 'HealthCheckPolicy')
    HealthCheckThreshold = Shapes::IntegerShape.new(name: 'HealthCheckThreshold')
    HealthCheckTimeoutMillis = Shapes::IntegerShape.new(name: 'HealthCheckTimeoutMillis')
    Hostname = Shapes::StringShape.new(name: 'Hostname')
    HttpGatewayRoute = Shapes::StructureShape.new(name: 'HttpGatewayRoute')
    HttpGatewayRouteAction = Shapes::StructureShape.new(name: 'HttpGatewayRouteAction')
    HttpGatewayRouteMatch = Shapes::StructureShape.new(name: 'HttpGatewayRouteMatch')
    HttpMethod = Shapes::StringShape.new(name: 'HttpMethod')
    HttpRetryPolicy = Shapes::StructureShape.new(name: 'HttpRetryPolicy')
    HttpRetryPolicyEvent = Shapes::StringShape.new(name: 'HttpRetryPolicyEvent')
    HttpRetryPolicyEvents = Shapes::ListShape.new(name: 'HttpRetryPolicyEvents')
    HttpRoute = Shapes::StructureShape.new(name: 'HttpRoute')
    HttpRouteAction = Shapes::StructureShape.new(name: 'HttpRouteAction')
    HttpRouteHeader = Shapes::StructureShape.new(name: 'HttpRouteHeader')
    HttpRouteHeaders = Shapes::ListShape.new(name: 'HttpRouteHeaders')
    HttpRouteMatch = Shapes::StructureShape.new(name: 'HttpRouteMatch')
    HttpScheme = Shapes::StringShape.new(name: 'HttpScheme')
    HttpTimeout = Shapes::StructureShape.new(name: 'HttpTimeout')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListGatewayRoutesInput = Shapes::StructureShape.new(name: 'ListGatewayRoutesInput')
    ListGatewayRoutesLimit = Shapes::IntegerShape.new(name: 'ListGatewayRoutesLimit')
    ListGatewayRoutesOutput = Shapes::StructureShape.new(name: 'ListGatewayRoutesOutput')
    ListMeshesInput = Shapes::StructureShape.new(name: 'ListMeshesInput')
    ListMeshesLimit = Shapes::IntegerShape.new(name: 'ListMeshesLimit')
    ListMeshesOutput = Shapes::StructureShape.new(name: 'ListMeshesOutput')
    ListRoutesInput = Shapes::StructureShape.new(name: 'ListRoutesInput')
    ListRoutesLimit = Shapes::IntegerShape.new(name: 'ListRoutesLimit')
    ListRoutesOutput = Shapes::StructureShape.new(name: 'ListRoutesOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListVirtualGatewaysInput = Shapes::StructureShape.new(name: 'ListVirtualGatewaysInput')
    ListVirtualGatewaysLimit = Shapes::IntegerShape.new(name: 'ListVirtualGatewaysLimit')
    ListVirtualGatewaysOutput = Shapes::StructureShape.new(name: 'ListVirtualGatewaysOutput')
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
    ListenerTimeout = Shapes::StructureShape.new(name: 'ListenerTimeout')
    ListenerTls = Shapes::StructureShape.new(name: 'ListenerTls')
    ListenerTlsAcmCertificate = Shapes::StructureShape.new(name: 'ListenerTlsAcmCertificate')
    ListenerTlsCertificate = Shapes::StructureShape.new(name: 'ListenerTlsCertificate')
    ListenerTlsFileCertificate = Shapes::StructureShape.new(name: 'ListenerTlsFileCertificate')
    ListenerTlsMode = Shapes::StringShape.new(name: 'ListenerTlsMode')
    Listeners = Shapes::ListShape.new(name: 'Listeners')
    Logging = Shapes::StructureShape.new(name: 'Logging')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MatchRange = Shapes::StructureShape.new(name: 'MatchRange')
    MaxRetries = Shapes::IntegerShape.new(name: 'MaxRetries')
    MeshData = Shapes::StructureShape.new(name: 'MeshData')
    MeshList = Shapes::ListShape.new(name: 'MeshList')
    MeshRef = Shapes::StructureShape.new(name: 'MeshRef')
    MeshSpec = Shapes::StructureShape.new(name: 'MeshSpec')
    MeshStatus = Shapes::StructureShape.new(name: 'MeshStatus')
    MeshStatusCode = Shapes::StringShape.new(name: 'MeshStatusCode')
    MethodName = Shapes::StringShape.new(name: 'MethodName')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    PercentInt = Shapes::IntegerShape.new(name: 'PercentInt')
    PortMapping = Shapes::StructureShape.new(name: 'PortMapping')
    PortNumber = Shapes::IntegerShape.new(name: 'PortNumber')
    PortProtocol = Shapes::StringShape.new(name: 'PortProtocol')
    PortSet = Shapes::ListShape.new(name: 'PortSet')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceMetadata = Shapes::StructureShape.new(name: 'ResourceMetadata')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    RouteData = Shapes::StructureShape.new(name: 'RouteData')
    RouteList = Shapes::ListShape.new(name: 'RouteList')
    RoutePriority = Shapes::IntegerShape.new(name: 'RoutePriority')
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
    TcpRetryPolicyEvent = Shapes::StringShape.new(name: 'TcpRetryPolicyEvent')
    TcpRetryPolicyEvents = Shapes::ListShape.new(name: 'TcpRetryPolicyEvents')
    TcpRoute = Shapes::StructureShape.new(name: 'TcpRoute')
    TcpRouteAction = Shapes::StructureShape.new(name: 'TcpRouteAction')
    TcpTimeout = Shapes::StructureShape.new(name: 'TcpTimeout')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TlsValidationContext = Shapes::StructureShape.new(name: 'TlsValidationContext')
    TlsValidationContextAcmTrust = Shapes::StructureShape.new(name: 'TlsValidationContextAcmTrust')
    TlsValidationContextFileTrust = Shapes::StructureShape.new(name: 'TlsValidationContextFileTrust')
    TlsValidationContextTrust = Shapes::StructureShape.new(name: 'TlsValidationContextTrust')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateGatewayRouteInput = Shapes::StructureShape.new(name: 'UpdateGatewayRouteInput')
    UpdateGatewayRouteOutput = Shapes::StructureShape.new(name: 'UpdateGatewayRouteOutput')
    UpdateMeshInput = Shapes::StructureShape.new(name: 'UpdateMeshInput')
    UpdateMeshOutput = Shapes::StructureShape.new(name: 'UpdateMeshOutput')
    UpdateRouteInput = Shapes::StructureShape.new(name: 'UpdateRouteInput')
    UpdateRouteOutput = Shapes::StructureShape.new(name: 'UpdateRouteOutput')
    UpdateVirtualGatewayInput = Shapes::StructureShape.new(name: 'UpdateVirtualGatewayInput')
    UpdateVirtualGatewayOutput = Shapes::StructureShape.new(name: 'UpdateVirtualGatewayOutput')
    UpdateVirtualNodeInput = Shapes::StructureShape.new(name: 'UpdateVirtualNodeInput')
    UpdateVirtualNodeOutput = Shapes::StructureShape.new(name: 'UpdateVirtualNodeOutput')
    UpdateVirtualRouterInput = Shapes::StructureShape.new(name: 'UpdateVirtualRouterInput')
    UpdateVirtualRouterOutput = Shapes::StructureShape.new(name: 'UpdateVirtualRouterOutput')
    UpdateVirtualServiceInput = Shapes::StructureShape.new(name: 'UpdateVirtualServiceInput')
    UpdateVirtualServiceOutput = Shapes::StructureShape.new(name: 'UpdateVirtualServiceOutput')
    VirtualGatewayAccessLog = Shapes::StructureShape.new(name: 'VirtualGatewayAccessLog')
    VirtualGatewayBackendDefaults = Shapes::StructureShape.new(name: 'VirtualGatewayBackendDefaults')
    VirtualGatewayCertificateAuthorityArns = Shapes::ListShape.new(name: 'VirtualGatewayCertificateAuthorityArns')
    VirtualGatewayClientPolicy = Shapes::StructureShape.new(name: 'VirtualGatewayClientPolicy')
    VirtualGatewayClientPolicyTls = Shapes::StructureShape.new(name: 'VirtualGatewayClientPolicyTls')
    VirtualGatewayData = Shapes::StructureShape.new(name: 'VirtualGatewayData')
    VirtualGatewayFileAccessLog = Shapes::StructureShape.new(name: 'VirtualGatewayFileAccessLog')
    VirtualGatewayHealthCheckIntervalMillis = Shapes::IntegerShape.new(name: 'VirtualGatewayHealthCheckIntervalMillis')
    VirtualGatewayHealthCheckPolicy = Shapes::StructureShape.new(name: 'VirtualGatewayHealthCheckPolicy')
    VirtualGatewayHealthCheckThreshold = Shapes::IntegerShape.new(name: 'VirtualGatewayHealthCheckThreshold')
    VirtualGatewayHealthCheckTimeoutMillis = Shapes::IntegerShape.new(name: 'VirtualGatewayHealthCheckTimeoutMillis')
    VirtualGatewayList = Shapes::ListShape.new(name: 'VirtualGatewayList')
    VirtualGatewayListener = Shapes::StructureShape.new(name: 'VirtualGatewayListener')
    VirtualGatewayListenerTls = Shapes::StructureShape.new(name: 'VirtualGatewayListenerTls')
    VirtualGatewayListenerTlsAcmCertificate = Shapes::StructureShape.new(name: 'VirtualGatewayListenerTlsAcmCertificate')
    VirtualGatewayListenerTlsCertificate = Shapes::StructureShape.new(name: 'VirtualGatewayListenerTlsCertificate')
    VirtualGatewayListenerTlsFileCertificate = Shapes::StructureShape.new(name: 'VirtualGatewayListenerTlsFileCertificate')
    VirtualGatewayListenerTlsMode = Shapes::StringShape.new(name: 'VirtualGatewayListenerTlsMode')
    VirtualGatewayListeners = Shapes::ListShape.new(name: 'VirtualGatewayListeners')
    VirtualGatewayLogging = Shapes::StructureShape.new(name: 'VirtualGatewayLogging')
    VirtualGatewayPortMapping = Shapes::StructureShape.new(name: 'VirtualGatewayPortMapping')
    VirtualGatewayPortProtocol = Shapes::StringShape.new(name: 'VirtualGatewayPortProtocol')
    VirtualGatewayRef = Shapes::StructureShape.new(name: 'VirtualGatewayRef')
    VirtualGatewaySpec = Shapes::StructureShape.new(name: 'VirtualGatewaySpec')
    VirtualGatewayStatus = Shapes::StructureShape.new(name: 'VirtualGatewayStatus')
    VirtualGatewayStatusCode = Shapes::StringShape.new(name: 'VirtualGatewayStatusCode')
    VirtualGatewayTlsValidationContext = Shapes::StructureShape.new(name: 'VirtualGatewayTlsValidationContext')
    VirtualGatewayTlsValidationContextAcmTrust = Shapes::StructureShape.new(name: 'VirtualGatewayTlsValidationContextAcmTrust')
    VirtualGatewayTlsValidationContextFileTrust = Shapes::StructureShape.new(name: 'VirtualGatewayTlsValidationContextFileTrust')
    VirtualGatewayTlsValidationContextTrust = Shapes::StructureShape.new(name: 'VirtualGatewayTlsValidationContextTrust')
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

    AwsCloudMapInstanceAttribute.add_member(:key, Shapes::ShapeRef.new(shape: AwsCloudMapInstanceAttributeKey, required: true, location_name: "key"))
    AwsCloudMapInstanceAttribute.add_member(:value, Shapes::ShapeRef.new(shape: AwsCloudMapInstanceAttributeValue, required: true, location_name: "value"))
    AwsCloudMapInstanceAttribute.struct_class = Types::AwsCloudMapInstanceAttribute

    AwsCloudMapInstanceAttributes.member = Shapes::ShapeRef.new(shape: AwsCloudMapInstanceAttribute)

    AwsCloudMapServiceDiscovery.add_member(:attributes, Shapes::ShapeRef.new(shape: AwsCloudMapInstanceAttributes, location_name: "attributes"))
    AwsCloudMapServiceDiscovery.add_member(:namespace_name, Shapes::ShapeRef.new(shape: AwsCloudMapName, required: true, location_name: "namespaceName"))
    AwsCloudMapServiceDiscovery.add_member(:service_name, Shapes::ShapeRef.new(shape: AwsCloudMapName, required: true, location_name: "serviceName"))
    AwsCloudMapServiceDiscovery.struct_class = Types::AwsCloudMapServiceDiscovery

    Backend.add_member(:virtual_service, Shapes::ShapeRef.new(shape: VirtualServiceBackend, location_name: "virtualService"))
    Backend.struct_class = Types::Backend

    BackendDefaults.add_member(:client_policy, Shapes::ShapeRef.new(shape: ClientPolicy, location_name: "clientPolicy"))
    BackendDefaults.struct_class = Types::BackendDefaults

    Backends.member = Shapes::ShapeRef.new(shape: Backend)

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    CertificateAuthorityArns.member = Shapes::ShapeRef.new(shape: Arn)

    ClientPolicy.add_member(:tls, Shapes::ShapeRef.new(shape: ClientPolicyTls, location_name: "tls"))
    ClientPolicy.struct_class = Types::ClientPolicy

    ClientPolicyTls.add_member(:enforce, Shapes::ShapeRef.new(shape: Boolean, location_name: "enforce", metadata: {"box"=>true}))
    ClientPolicyTls.add_member(:ports, Shapes::ShapeRef.new(shape: PortSet, location_name: "ports"))
    ClientPolicyTls.add_member(:validation, Shapes::ShapeRef.new(shape: TlsValidationContext, required: true, location_name: "validation"))
    ClientPolicyTls.struct_class = Types::ClientPolicyTls

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateGatewayRouteInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateGatewayRouteInput.add_member(:gateway_route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "gatewayRouteName"))
    CreateGatewayRouteInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    CreateGatewayRouteInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    CreateGatewayRouteInput.add_member(:spec, Shapes::ShapeRef.new(shape: GatewayRouteSpec, required: true, location_name: "spec"))
    CreateGatewayRouteInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateGatewayRouteInput.add_member(:virtual_gateway_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualGatewayName"))
    CreateGatewayRouteInput.struct_class = Types::CreateGatewayRouteInput

    CreateGatewayRouteOutput.add_member(:gateway_route, Shapes::ShapeRef.new(shape: GatewayRouteData, required: true, location_name: "gatewayRoute"))
    CreateGatewayRouteOutput.struct_class = Types::CreateGatewayRouteOutput
    CreateGatewayRouteOutput[:payload] = :gateway_route
    CreateGatewayRouteOutput[:payload_member] = CreateGatewayRouteOutput.member(:gateway_route)

    CreateMeshInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateMeshInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    CreateMeshInput.add_member(:spec, Shapes::ShapeRef.new(shape: MeshSpec, location_name: "spec"))
    CreateMeshInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags", metadata: {"tags"=>["not-preview"]}))
    CreateMeshInput.struct_class = Types::CreateMeshInput

    CreateMeshOutput.add_member(:mesh, Shapes::ShapeRef.new(shape: MeshData, required: true, location_name: "mesh"))
    CreateMeshOutput.struct_class = Types::CreateMeshOutput
    CreateMeshOutput[:payload] = :mesh
    CreateMeshOutput[:payload_member] = CreateMeshOutput.member(:mesh)

    CreateRouteInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateRouteInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    CreateRouteInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    CreateRouteInput.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "routeName"))
    CreateRouteInput.add_member(:spec, Shapes::ShapeRef.new(shape: RouteSpec, required: true, location_name: "spec"))
    CreateRouteInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags", metadata: {"tags"=>["not-preview"]}))
    CreateRouteInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    CreateRouteInput.struct_class = Types::CreateRouteInput

    CreateRouteOutput.add_member(:route, Shapes::ShapeRef.new(shape: RouteData, required: true, location_name: "route"))
    CreateRouteOutput.struct_class = Types::CreateRouteOutput
    CreateRouteOutput[:payload] = :route
    CreateRouteOutput[:payload_member] = CreateRouteOutput.member(:route)

    CreateVirtualGatewayInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateVirtualGatewayInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    CreateVirtualGatewayInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    CreateVirtualGatewayInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualGatewaySpec, required: true, location_name: "spec"))
    CreateVirtualGatewayInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateVirtualGatewayInput.add_member(:virtual_gateway_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualGatewayName"))
    CreateVirtualGatewayInput.struct_class = Types::CreateVirtualGatewayInput

    CreateVirtualGatewayOutput.add_member(:virtual_gateway, Shapes::ShapeRef.new(shape: VirtualGatewayData, required: true, location_name: "virtualGateway"))
    CreateVirtualGatewayOutput.struct_class = Types::CreateVirtualGatewayOutput
    CreateVirtualGatewayOutput[:payload] = :virtual_gateway
    CreateVirtualGatewayOutput[:payload_member] = CreateVirtualGatewayOutput.member(:virtual_gateway)

    CreateVirtualNodeInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateVirtualNodeInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    CreateVirtualNodeInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    CreateVirtualNodeInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualNodeSpec, required: true, location_name: "spec"))
    CreateVirtualNodeInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags", metadata: {"tags"=>["not-preview"]}))
    CreateVirtualNodeInput.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualNodeName"))
    CreateVirtualNodeInput.struct_class = Types::CreateVirtualNodeInput

    CreateVirtualNodeOutput.add_member(:virtual_node, Shapes::ShapeRef.new(shape: VirtualNodeData, required: true, location_name: "virtualNode"))
    CreateVirtualNodeOutput.struct_class = Types::CreateVirtualNodeOutput
    CreateVirtualNodeOutput[:payload] = :virtual_node
    CreateVirtualNodeOutput[:payload_member] = CreateVirtualNodeOutput.member(:virtual_node)

    CreateVirtualRouterInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateVirtualRouterInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    CreateVirtualRouterInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    CreateVirtualRouterInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualRouterSpec, required: true, location_name: "spec"))
    CreateVirtualRouterInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags", metadata: {"tags"=>["not-preview"]}))
    CreateVirtualRouterInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualRouterName"))
    CreateVirtualRouterInput.struct_class = Types::CreateVirtualRouterInput

    CreateVirtualRouterOutput.add_member(:virtual_router, Shapes::ShapeRef.new(shape: VirtualRouterData, required: true, location_name: "virtualRouter"))
    CreateVirtualRouterOutput.struct_class = Types::CreateVirtualRouterOutput
    CreateVirtualRouterOutput[:payload] = :virtual_router
    CreateVirtualRouterOutput[:payload_member] = CreateVirtualRouterOutput.member(:virtual_router)

    CreateVirtualServiceInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateVirtualServiceInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    CreateVirtualServiceInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    CreateVirtualServiceInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualServiceSpec, required: true, location_name: "spec"))
    CreateVirtualServiceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags", metadata: {"tags"=>["not-preview"]}))
    CreateVirtualServiceInput.add_member(:virtual_service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "virtualServiceName"))
    CreateVirtualServiceInput.struct_class = Types::CreateVirtualServiceInput

    CreateVirtualServiceOutput.add_member(:virtual_service, Shapes::ShapeRef.new(shape: VirtualServiceData, required: true, location_name: "virtualService"))
    CreateVirtualServiceOutput.struct_class = Types::CreateVirtualServiceOutput
    CreateVirtualServiceOutput[:payload] = :virtual_service
    CreateVirtualServiceOutput[:payload_member] = CreateVirtualServiceOutput.member(:virtual_service)

    DeleteGatewayRouteInput.add_member(:gateway_route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "gatewayRouteName"))
    DeleteGatewayRouteInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DeleteGatewayRouteInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    DeleteGatewayRouteInput.add_member(:virtual_gateway_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualGatewayName"))
    DeleteGatewayRouteInput.struct_class = Types::DeleteGatewayRouteInput

    DeleteGatewayRouteOutput.add_member(:gateway_route, Shapes::ShapeRef.new(shape: GatewayRouteData, required: true, location_name: "gatewayRoute"))
    DeleteGatewayRouteOutput.struct_class = Types::DeleteGatewayRouteOutput
    DeleteGatewayRouteOutput[:payload] = :gateway_route
    DeleteGatewayRouteOutput[:payload_member] = DeleteGatewayRouteOutput.member(:gateway_route)

    DeleteMeshInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DeleteMeshInput.struct_class = Types::DeleteMeshInput

    DeleteMeshOutput.add_member(:mesh, Shapes::ShapeRef.new(shape: MeshData, required: true, location_name: "mesh"))
    DeleteMeshOutput.struct_class = Types::DeleteMeshOutput
    DeleteMeshOutput[:payload] = :mesh
    DeleteMeshOutput[:payload_member] = DeleteMeshOutput.member(:mesh)

    DeleteRouteInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DeleteRouteInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    DeleteRouteInput.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "routeName"))
    DeleteRouteInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    DeleteRouteInput.struct_class = Types::DeleteRouteInput

    DeleteRouteOutput.add_member(:route, Shapes::ShapeRef.new(shape: RouteData, required: true, location_name: "route"))
    DeleteRouteOutput.struct_class = Types::DeleteRouteOutput
    DeleteRouteOutput[:payload] = :route
    DeleteRouteOutput[:payload_member] = DeleteRouteOutput.member(:route)

    DeleteVirtualGatewayInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DeleteVirtualGatewayInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    DeleteVirtualGatewayInput.add_member(:virtual_gateway_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualGatewayName"))
    DeleteVirtualGatewayInput.struct_class = Types::DeleteVirtualGatewayInput

    DeleteVirtualGatewayOutput.add_member(:virtual_gateway, Shapes::ShapeRef.new(shape: VirtualGatewayData, required: true, location_name: "virtualGateway"))
    DeleteVirtualGatewayOutput.struct_class = Types::DeleteVirtualGatewayOutput
    DeleteVirtualGatewayOutput[:payload] = :virtual_gateway
    DeleteVirtualGatewayOutput[:payload_member] = DeleteVirtualGatewayOutput.member(:virtual_gateway)

    DeleteVirtualNodeInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DeleteVirtualNodeInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    DeleteVirtualNodeInput.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualNodeName"))
    DeleteVirtualNodeInput.struct_class = Types::DeleteVirtualNodeInput

    DeleteVirtualNodeOutput.add_member(:virtual_node, Shapes::ShapeRef.new(shape: VirtualNodeData, required: true, location_name: "virtualNode"))
    DeleteVirtualNodeOutput.struct_class = Types::DeleteVirtualNodeOutput
    DeleteVirtualNodeOutput[:payload] = :virtual_node
    DeleteVirtualNodeOutput[:payload_member] = DeleteVirtualNodeOutput.member(:virtual_node)

    DeleteVirtualRouterInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DeleteVirtualRouterInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    DeleteVirtualRouterInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    DeleteVirtualRouterInput.struct_class = Types::DeleteVirtualRouterInput

    DeleteVirtualRouterOutput.add_member(:virtual_router, Shapes::ShapeRef.new(shape: VirtualRouterData, required: true, location_name: "virtualRouter"))
    DeleteVirtualRouterOutput.struct_class = Types::DeleteVirtualRouterOutput
    DeleteVirtualRouterOutput[:payload] = :virtual_router
    DeleteVirtualRouterOutput[:payload_member] = DeleteVirtualRouterOutput.member(:virtual_router)

    DeleteVirtualServiceInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DeleteVirtualServiceInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    DeleteVirtualServiceInput.add_member(:virtual_service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location: "uri", location_name: "virtualServiceName"))
    DeleteVirtualServiceInput.struct_class = Types::DeleteVirtualServiceInput

    DeleteVirtualServiceOutput.add_member(:virtual_service, Shapes::ShapeRef.new(shape: VirtualServiceData, required: true, location_name: "virtualService"))
    DeleteVirtualServiceOutput.struct_class = Types::DeleteVirtualServiceOutput
    DeleteVirtualServiceOutput[:payload] = :virtual_service
    DeleteVirtualServiceOutput[:payload_member] = DeleteVirtualServiceOutput.member(:virtual_service)

    DescribeGatewayRouteInput.add_member(:gateway_route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "gatewayRouteName"))
    DescribeGatewayRouteInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DescribeGatewayRouteInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    DescribeGatewayRouteInput.add_member(:virtual_gateway_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualGatewayName"))
    DescribeGatewayRouteInput.struct_class = Types::DescribeGatewayRouteInput

    DescribeGatewayRouteOutput.add_member(:gateway_route, Shapes::ShapeRef.new(shape: GatewayRouteData, required: true, location_name: "gatewayRoute"))
    DescribeGatewayRouteOutput.struct_class = Types::DescribeGatewayRouteOutput
    DescribeGatewayRouteOutput[:payload] = :gateway_route
    DescribeGatewayRouteOutput[:payload_member] = DescribeGatewayRouteOutput.member(:gateway_route)

    DescribeMeshInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DescribeMeshInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    DescribeMeshInput.struct_class = Types::DescribeMeshInput

    DescribeMeshOutput.add_member(:mesh, Shapes::ShapeRef.new(shape: MeshData, required: true, location_name: "mesh"))
    DescribeMeshOutput.struct_class = Types::DescribeMeshOutput
    DescribeMeshOutput[:payload] = :mesh
    DescribeMeshOutput[:payload_member] = DescribeMeshOutput.member(:mesh)

    DescribeRouteInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DescribeRouteInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    DescribeRouteInput.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "routeName"))
    DescribeRouteInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    DescribeRouteInput.struct_class = Types::DescribeRouteInput

    DescribeRouteOutput.add_member(:route, Shapes::ShapeRef.new(shape: RouteData, required: true, location_name: "route"))
    DescribeRouteOutput.struct_class = Types::DescribeRouteOutput
    DescribeRouteOutput[:payload] = :route
    DescribeRouteOutput[:payload_member] = DescribeRouteOutput.member(:route)

    DescribeVirtualGatewayInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DescribeVirtualGatewayInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    DescribeVirtualGatewayInput.add_member(:virtual_gateway_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualGatewayName"))
    DescribeVirtualGatewayInput.struct_class = Types::DescribeVirtualGatewayInput

    DescribeVirtualGatewayOutput.add_member(:virtual_gateway, Shapes::ShapeRef.new(shape: VirtualGatewayData, required: true, location_name: "virtualGateway"))
    DescribeVirtualGatewayOutput.struct_class = Types::DescribeVirtualGatewayOutput
    DescribeVirtualGatewayOutput[:payload] = :virtual_gateway
    DescribeVirtualGatewayOutput[:payload_member] = DescribeVirtualGatewayOutput.member(:virtual_gateway)

    DescribeVirtualNodeInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DescribeVirtualNodeInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    DescribeVirtualNodeInput.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualNodeName"))
    DescribeVirtualNodeInput.struct_class = Types::DescribeVirtualNodeInput

    DescribeVirtualNodeOutput.add_member(:virtual_node, Shapes::ShapeRef.new(shape: VirtualNodeData, required: true, location_name: "virtualNode"))
    DescribeVirtualNodeOutput.struct_class = Types::DescribeVirtualNodeOutput
    DescribeVirtualNodeOutput[:payload] = :virtual_node
    DescribeVirtualNodeOutput[:payload_member] = DescribeVirtualNodeOutput.member(:virtual_node)

    DescribeVirtualRouterInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DescribeVirtualRouterInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    DescribeVirtualRouterInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    DescribeVirtualRouterInput.struct_class = Types::DescribeVirtualRouterInput

    DescribeVirtualRouterOutput.add_member(:virtual_router, Shapes::ShapeRef.new(shape: VirtualRouterData, required: true, location_name: "virtualRouter"))
    DescribeVirtualRouterOutput.struct_class = Types::DescribeVirtualRouterOutput
    DescribeVirtualRouterOutput[:payload] = :virtual_router
    DescribeVirtualRouterOutput[:payload_member] = DescribeVirtualRouterOutput.member(:virtual_router)

    DescribeVirtualServiceInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    DescribeVirtualServiceInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    DescribeVirtualServiceInput.add_member(:virtual_service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location: "uri", location_name: "virtualServiceName"))
    DescribeVirtualServiceInput.struct_class = Types::DescribeVirtualServiceInput

    DescribeVirtualServiceOutput.add_member(:virtual_service, Shapes::ShapeRef.new(shape: VirtualServiceData, required: true, location_name: "virtualService"))
    DescribeVirtualServiceOutput.struct_class = Types::DescribeVirtualServiceOutput
    DescribeVirtualServiceOutput[:payload] = :virtual_service
    DescribeVirtualServiceOutput[:payload_member] = DescribeVirtualServiceOutput.member(:virtual_service)

    DnsServiceDiscovery.add_member(:hostname, Shapes::ShapeRef.new(shape: Hostname, required: true, location_name: "hostname"))
    DnsServiceDiscovery.struct_class = Types::DnsServiceDiscovery

    Duration.add_member(:unit, Shapes::ShapeRef.new(shape: DurationUnit, location_name: "unit"))
    Duration.add_member(:value, Shapes::ShapeRef.new(shape: DurationValue, location_name: "value"))
    Duration.struct_class = Types::Duration

    EgressFilter.add_member(:type, Shapes::ShapeRef.new(shape: EgressFilterType, required: true, location_name: "type"))
    EgressFilter.struct_class = Types::EgressFilter

    FileAccessLog.add_member(:path, Shapes::ShapeRef.new(shape: FilePath, required: true, location_name: "path"))
    FileAccessLog.struct_class = Types::FileAccessLog

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GatewayRouteData.add_member(:gateway_route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "gatewayRouteName"))
    GatewayRouteData.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    GatewayRouteData.add_member(:metadata, Shapes::ShapeRef.new(shape: ResourceMetadata, required: true, location_name: "metadata"))
    GatewayRouteData.add_member(:spec, Shapes::ShapeRef.new(shape: GatewayRouteSpec, required: true, location_name: "spec"))
    GatewayRouteData.add_member(:status, Shapes::ShapeRef.new(shape: GatewayRouteStatus, required: true, location_name: "status"))
    GatewayRouteData.add_member(:virtual_gateway_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualGatewayName"))
    GatewayRouteData.struct_class = Types::GatewayRouteData

    GatewayRouteList.member = Shapes::ShapeRef.new(shape: GatewayRouteRef)

    GatewayRouteRef.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    GatewayRouteRef.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GatewayRouteRef.add_member(:gateway_route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "gatewayRouteName"))
    GatewayRouteRef.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedAt"))
    GatewayRouteRef.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    GatewayRouteRef.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "meshOwner"))
    GatewayRouteRef.add_member(:resource_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "resourceOwner"))
    GatewayRouteRef.add_member(:version, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "version"))
    GatewayRouteRef.add_member(:virtual_gateway_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualGatewayName"))
    GatewayRouteRef.struct_class = Types::GatewayRouteRef

    GatewayRouteSpec.add_member(:grpc_route, Shapes::ShapeRef.new(shape: GrpcGatewayRoute, location_name: "grpcRoute"))
    GatewayRouteSpec.add_member(:http2_route, Shapes::ShapeRef.new(shape: HttpGatewayRoute, location_name: "http2Route"))
    GatewayRouteSpec.add_member(:http_route, Shapes::ShapeRef.new(shape: HttpGatewayRoute, location_name: "httpRoute"))
    GatewayRouteSpec.struct_class = Types::GatewayRouteSpec

    GatewayRouteStatus.add_member(:status, Shapes::ShapeRef.new(shape: GatewayRouteStatusCode, required: true, location_name: "status"))
    GatewayRouteStatus.struct_class = Types::GatewayRouteStatus

    GatewayRouteTarget.add_member(:virtual_service, Shapes::ShapeRef.new(shape: GatewayRouteVirtualService, required: true, location_name: "virtualService"))
    GatewayRouteTarget.struct_class = Types::GatewayRouteTarget

    GatewayRouteVirtualService.add_member(:virtual_service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualServiceName"))
    GatewayRouteVirtualService.struct_class = Types::GatewayRouteVirtualService

    GrpcGatewayRoute.add_member(:action, Shapes::ShapeRef.new(shape: GrpcGatewayRouteAction, required: true, location_name: "action"))
    GrpcGatewayRoute.add_member(:match, Shapes::ShapeRef.new(shape: GrpcGatewayRouteMatch, required: true, location_name: "match"))
    GrpcGatewayRoute.struct_class = Types::GrpcGatewayRoute

    GrpcGatewayRouteAction.add_member(:target, Shapes::ShapeRef.new(shape: GatewayRouteTarget, required: true, location_name: "target"))
    GrpcGatewayRouteAction.struct_class = Types::GrpcGatewayRouteAction

    GrpcGatewayRouteMatch.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "serviceName"))
    GrpcGatewayRouteMatch.struct_class = Types::GrpcGatewayRouteMatch

    GrpcRetryPolicy.add_member(:grpc_retry_events, Shapes::ShapeRef.new(shape: GrpcRetryPolicyEvents, location_name: "grpcRetryEvents"))
    GrpcRetryPolicy.add_member(:http_retry_events, Shapes::ShapeRef.new(shape: HttpRetryPolicyEvents, location_name: "httpRetryEvents"))
    GrpcRetryPolicy.add_member(:max_retries, Shapes::ShapeRef.new(shape: MaxRetries, required: true, location_name: "maxRetries"))
    GrpcRetryPolicy.add_member(:per_retry_timeout, Shapes::ShapeRef.new(shape: Duration, required: true, location_name: "perRetryTimeout"))
    GrpcRetryPolicy.add_member(:tcp_retry_events, Shapes::ShapeRef.new(shape: TcpRetryPolicyEvents, location_name: "tcpRetryEvents"))
    GrpcRetryPolicy.struct_class = Types::GrpcRetryPolicy

    GrpcRetryPolicyEvents.member = Shapes::ShapeRef.new(shape: GrpcRetryPolicyEvent)

    GrpcRoute.add_member(:action, Shapes::ShapeRef.new(shape: GrpcRouteAction, required: true, location_name: "action"))
    GrpcRoute.add_member(:match, Shapes::ShapeRef.new(shape: GrpcRouteMatch, required: true, location_name: "match"))
    GrpcRoute.add_member(:retry_policy, Shapes::ShapeRef.new(shape: GrpcRetryPolicy, location_name: "retryPolicy"))
    GrpcRoute.add_member(:timeout, Shapes::ShapeRef.new(shape: GrpcTimeout, location_name: "timeout"))
    GrpcRoute.struct_class = Types::GrpcRoute

    GrpcRouteAction.add_member(:weighted_targets, Shapes::ShapeRef.new(shape: WeightedTargets, required: true, location_name: "weightedTargets"))
    GrpcRouteAction.struct_class = Types::GrpcRouteAction

    GrpcRouteMatch.add_member(:metadata, Shapes::ShapeRef.new(shape: GrpcRouteMetadataList, location_name: "metadata"))
    GrpcRouteMatch.add_member(:method_name, Shapes::ShapeRef.new(shape: MethodName, location_name: "methodName"))
    GrpcRouteMatch.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "serviceName"))
    GrpcRouteMatch.struct_class = Types::GrpcRouteMatch

    GrpcRouteMetadata.add_member(:invert, Shapes::ShapeRef.new(shape: Boolean, location_name: "invert"))
    GrpcRouteMetadata.add_member(:match, Shapes::ShapeRef.new(shape: GrpcRouteMetadataMatchMethod, location_name: "match"))
    GrpcRouteMetadata.add_member(:name, Shapes::ShapeRef.new(shape: HeaderName, required: true, location_name: "name"))
    GrpcRouteMetadata.struct_class = Types::GrpcRouteMetadata

    GrpcRouteMetadataList.member = Shapes::ShapeRef.new(shape: GrpcRouteMetadata)

    GrpcRouteMetadataMatchMethod.add_member(:exact, Shapes::ShapeRef.new(shape: HeaderMatch, location_name: "exact"))
    GrpcRouteMetadataMatchMethod.add_member(:prefix, Shapes::ShapeRef.new(shape: HeaderMatch, location_name: "prefix"))
    GrpcRouteMetadataMatchMethod.add_member(:range, Shapes::ShapeRef.new(shape: MatchRange, location_name: "range"))
    GrpcRouteMetadataMatchMethod.add_member(:regex, Shapes::ShapeRef.new(shape: HeaderMatch, location_name: "regex"))
    GrpcRouteMetadataMatchMethod.add_member(:suffix, Shapes::ShapeRef.new(shape: HeaderMatch, location_name: "suffix"))
    GrpcRouteMetadataMatchMethod.struct_class = Types::GrpcRouteMetadataMatchMethod

    GrpcTimeout.add_member(:idle, Shapes::ShapeRef.new(shape: Duration, location_name: "idle"))
    GrpcTimeout.add_member(:per_request, Shapes::ShapeRef.new(shape: Duration, location_name: "perRequest"))
    GrpcTimeout.struct_class = Types::GrpcTimeout

    HeaderMatchMethod.add_member(:exact, Shapes::ShapeRef.new(shape: HeaderMatch, location_name: "exact"))
    HeaderMatchMethod.add_member(:prefix, Shapes::ShapeRef.new(shape: HeaderMatch, location_name: "prefix"))
    HeaderMatchMethod.add_member(:range, Shapes::ShapeRef.new(shape: MatchRange, location_name: "range"))
    HeaderMatchMethod.add_member(:regex, Shapes::ShapeRef.new(shape: HeaderMatch, location_name: "regex"))
    HeaderMatchMethod.add_member(:suffix, Shapes::ShapeRef.new(shape: HeaderMatch, location_name: "suffix"))
    HeaderMatchMethod.struct_class = Types::HeaderMatchMethod

    HealthCheckPolicy.add_member(:healthy_threshold, Shapes::ShapeRef.new(shape: HealthCheckThreshold, required: true, location_name: "healthyThreshold"))
    HealthCheckPolicy.add_member(:interval_millis, Shapes::ShapeRef.new(shape: HealthCheckIntervalMillis, required: true, location_name: "intervalMillis"))
    HealthCheckPolicy.add_member(:path, Shapes::ShapeRef.new(shape: String, location_name: "path"))
    HealthCheckPolicy.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "port"))
    HealthCheckPolicy.add_member(:protocol, Shapes::ShapeRef.new(shape: PortProtocol, required: true, location_name: "protocol"))
    HealthCheckPolicy.add_member(:timeout_millis, Shapes::ShapeRef.new(shape: HealthCheckTimeoutMillis, required: true, location_name: "timeoutMillis"))
    HealthCheckPolicy.add_member(:unhealthy_threshold, Shapes::ShapeRef.new(shape: HealthCheckThreshold, required: true, location_name: "unhealthyThreshold"))
    HealthCheckPolicy.struct_class = Types::HealthCheckPolicy

    HttpGatewayRoute.add_member(:action, Shapes::ShapeRef.new(shape: HttpGatewayRouteAction, required: true, location_name: "action"))
    HttpGatewayRoute.add_member(:match, Shapes::ShapeRef.new(shape: HttpGatewayRouteMatch, required: true, location_name: "match"))
    HttpGatewayRoute.struct_class = Types::HttpGatewayRoute

    HttpGatewayRouteAction.add_member(:target, Shapes::ShapeRef.new(shape: GatewayRouteTarget, required: true, location_name: "target"))
    HttpGatewayRouteAction.struct_class = Types::HttpGatewayRouteAction

    HttpGatewayRouteMatch.add_member(:prefix, Shapes::ShapeRef.new(shape: String, required: true, location_name: "prefix"))
    HttpGatewayRouteMatch.struct_class = Types::HttpGatewayRouteMatch

    HttpRetryPolicy.add_member(:http_retry_events, Shapes::ShapeRef.new(shape: HttpRetryPolicyEvents, location_name: "httpRetryEvents"))
    HttpRetryPolicy.add_member(:max_retries, Shapes::ShapeRef.new(shape: MaxRetries, required: true, location_name: "maxRetries"))
    HttpRetryPolicy.add_member(:per_retry_timeout, Shapes::ShapeRef.new(shape: Duration, required: true, location_name: "perRetryTimeout"))
    HttpRetryPolicy.add_member(:tcp_retry_events, Shapes::ShapeRef.new(shape: TcpRetryPolicyEvents, location_name: "tcpRetryEvents"))
    HttpRetryPolicy.struct_class = Types::HttpRetryPolicy

    HttpRetryPolicyEvents.member = Shapes::ShapeRef.new(shape: HttpRetryPolicyEvent)

    HttpRoute.add_member(:action, Shapes::ShapeRef.new(shape: HttpRouteAction, required: true, location_name: "action"))
    HttpRoute.add_member(:match, Shapes::ShapeRef.new(shape: HttpRouteMatch, required: true, location_name: "match"))
    HttpRoute.add_member(:retry_policy, Shapes::ShapeRef.new(shape: HttpRetryPolicy, location_name: "retryPolicy"))
    HttpRoute.add_member(:timeout, Shapes::ShapeRef.new(shape: HttpTimeout, location_name: "timeout"))
    HttpRoute.struct_class = Types::HttpRoute

    HttpRouteAction.add_member(:weighted_targets, Shapes::ShapeRef.new(shape: WeightedTargets, required: true, location_name: "weightedTargets"))
    HttpRouteAction.struct_class = Types::HttpRouteAction

    HttpRouteHeader.add_member(:invert, Shapes::ShapeRef.new(shape: Boolean, location_name: "invert"))
    HttpRouteHeader.add_member(:match, Shapes::ShapeRef.new(shape: HeaderMatchMethod, location_name: "match"))
    HttpRouteHeader.add_member(:name, Shapes::ShapeRef.new(shape: HeaderName, required: true, location_name: "name"))
    HttpRouteHeader.struct_class = Types::HttpRouteHeader

    HttpRouteHeaders.member = Shapes::ShapeRef.new(shape: HttpRouteHeader)

    HttpRouteMatch.add_member(:headers, Shapes::ShapeRef.new(shape: HttpRouteHeaders, location_name: "headers"))
    HttpRouteMatch.add_member(:method, Shapes::ShapeRef.new(shape: HttpMethod, location_name: "method"))
    HttpRouteMatch.add_member(:prefix, Shapes::ShapeRef.new(shape: String, required: true, location_name: "prefix"))
    HttpRouteMatch.add_member(:scheme, Shapes::ShapeRef.new(shape: HttpScheme, location_name: "scheme"))
    HttpRouteMatch.struct_class = Types::HttpRouteMatch

    HttpTimeout.add_member(:idle, Shapes::ShapeRef.new(shape: Duration, location_name: "idle"))
    HttpTimeout.add_member(:per_request, Shapes::ShapeRef.new(shape: Duration, location_name: "perRequest"))
    HttpTimeout.struct_class = Types::HttpTimeout

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListGatewayRoutesInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListGatewayRoutesLimit, location: "querystring", location_name: "limit"))
    ListGatewayRoutesInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    ListGatewayRoutesInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    ListGatewayRoutesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListGatewayRoutesInput.add_member(:virtual_gateway_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualGatewayName"))
    ListGatewayRoutesInput.struct_class = Types::ListGatewayRoutesInput

    ListGatewayRoutesOutput.add_member(:gateway_routes, Shapes::ShapeRef.new(shape: GatewayRouteList, required: true, location_name: "gatewayRoutes"))
    ListGatewayRoutesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListGatewayRoutesOutput.struct_class = Types::ListGatewayRoutesOutput

    ListMeshesInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListMeshesLimit, location: "querystring", location_name: "limit"))
    ListMeshesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListMeshesInput.struct_class = Types::ListMeshesInput

    ListMeshesOutput.add_member(:meshes, Shapes::ShapeRef.new(shape: MeshList, required: true, location_name: "meshes"))
    ListMeshesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListMeshesOutput.struct_class = Types::ListMeshesOutput

    ListRoutesInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListRoutesLimit, location: "querystring", location_name: "limit"))
    ListRoutesInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    ListRoutesInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
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

    ListVirtualGatewaysInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListVirtualGatewaysLimit, location: "querystring", location_name: "limit"))
    ListVirtualGatewaysInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    ListVirtualGatewaysInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    ListVirtualGatewaysInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListVirtualGatewaysInput.struct_class = Types::ListVirtualGatewaysInput

    ListVirtualGatewaysOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListVirtualGatewaysOutput.add_member(:virtual_gateways, Shapes::ShapeRef.new(shape: VirtualGatewayList, required: true, location_name: "virtualGateways"))
    ListVirtualGatewaysOutput.struct_class = Types::ListVirtualGatewaysOutput

    ListVirtualNodesInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListVirtualNodesLimit, location: "querystring", location_name: "limit"))
    ListVirtualNodesInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    ListVirtualNodesInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    ListVirtualNodesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListVirtualNodesInput.struct_class = Types::ListVirtualNodesInput

    ListVirtualNodesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListVirtualNodesOutput.add_member(:virtual_nodes, Shapes::ShapeRef.new(shape: VirtualNodeList, required: true, location_name: "virtualNodes"))
    ListVirtualNodesOutput.struct_class = Types::ListVirtualNodesOutput

    ListVirtualRoutersInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListVirtualRoutersLimit, location: "querystring", location_name: "limit"))
    ListVirtualRoutersInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    ListVirtualRoutersInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    ListVirtualRoutersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListVirtualRoutersInput.struct_class = Types::ListVirtualRoutersInput

    ListVirtualRoutersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListVirtualRoutersOutput.add_member(:virtual_routers, Shapes::ShapeRef.new(shape: VirtualRouterList, required: true, location_name: "virtualRouters"))
    ListVirtualRoutersOutput.struct_class = Types::ListVirtualRoutersOutput

    ListVirtualServicesInput.add_member(:limit, Shapes::ShapeRef.new(shape: ListVirtualServicesLimit, location: "querystring", location_name: "limit"))
    ListVirtualServicesInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    ListVirtualServicesInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    ListVirtualServicesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListVirtualServicesInput.struct_class = Types::ListVirtualServicesInput

    ListVirtualServicesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListVirtualServicesOutput.add_member(:virtual_services, Shapes::ShapeRef.new(shape: VirtualServiceList, required: true, location_name: "virtualServices"))
    ListVirtualServicesOutput.struct_class = Types::ListVirtualServicesOutput

    Listener.add_member(:health_check, Shapes::ShapeRef.new(shape: HealthCheckPolicy, location_name: "healthCheck"))
    Listener.add_member(:port_mapping, Shapes::ShapeRef.new(shape: PortMapping, required: true, location_name: "portMapping"))
    Listener.add_member(:timeout, Shapes::ShapeRef.new(shape: ListenerTimeout, location_name: "timeout"))
    Listener.add_member(:tls, Shapes::ShapeRef.new(shape: ListenerTls, location_name: "tls"))
    Listener.struct_class = Types::Listener

    ListenerTimeout.add_member(:grpc, Shapes::ShapeRef.new(shape: GrpcTimeout, location_name: "grpc"))
    ListenerTimeout.add_member(:http, Shapes::ShapeRef.new(shape: HttpTimeout, location_name: "http"))
    ListenerTimeout.add_member(:http2, Shapes::ShapeRef.new(shape: HttpTimeout, location_name: "http2"))
    ListenerTimeout.add_member(:tcp, Shapes::ShapeRef.new(shape: TcpTimeout, location_name: "tcp"))
    ListenerTimeout.struct_class = Types::ListenerTimeout

    ListenerTls.add_member(:certificate, Shapes::ShapeRef.new(shape: ListenerTlsCertificate, required: true, location_name: "certificate"))
    ListenerTls.add_member(:mode, Shapes::ShapeRef.new(shape: ListenerTlsMode, required: true, location_name: "mode"))
    ListenerTls.struct_class = Types::ListenerTls

    ListenerTlsAcmCertificate.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "certificateArn"))
    ListenerTlsAcmCertificate.struct_class = Types::ListenerTlsAcmCertificate

    ListenerTlsCertificate.add_member(:acm, Shapes::ShapeRef.new(shape: ListenerTlsAcmCertificate, location_name: "acm"))
    ListenerTlsCertificate.add_member(:file, Shapes::ShapeRef.new(shape: ListenerTlsFileCertificate, location_name: "file"))
    ListenerTlsCertificate.struct_class = Types::ListenerTlsCertificate

    ListenerTlsFileCertificate.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: FilePath, required: true, location_name: "certificateChain"))
    ListenerTlsFileCertificate.add_member(:private_key, Shapes::ShapeRef.new(shape: FilePath, required: true, location_name: "privateKey"))
    ListenerTlsFileCertificate.struct_class = Types::ListenerTlsFileCertificate

    Listeners.member = Shapes::ShapeRef.new(shape: Listener)

    Logging.add_member(:access_log, Shapes::ShapeRef.new(shape: AccessLog, location_name: "accessLog"))
    Logging.struct_class = Types::Logging

    MatchRange.add_member(:end, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "end"))
    MatchRange.add_member(:start, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "start"))
    MatchRange.struct_class = Types::MatchRange

    MeshData.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    MeshData.add_member(:metadata, Shapes::ShapeRef.new(shape: ResourceMetadata, required: true, location_name: "metadata"))
    MeshData.add_member(:spec, Shapes::ShapeRef.new(shape: MeshSpec, required: true, location_name: "spec"))
    MeshData.add_member(:status, Shapes::ShapeRef.new(shape: MeshStatus, required: true, location_name: "status"))
    MeshData.struct_class = Types::MeshData

    MeshList.member = Shapes::ShapeRef.new(shape: MeshRef)

    MeshRef.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    MeshRef.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    MeshRef.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedAt"))
    MeshRef.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    MeshRef.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "meshOwner"))
    MeshRef.add_member(:resource_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "resourceOwner"))
    MeshRef.add_member(:version, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "version"))
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

    PortSet.member = Shapes::ShapeRef.new(shape: PortNumber)

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    ResourceMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ResourceMetadata.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedAt"))
    ResourceMetadata.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "meshOwner"))
    ResourceMetadata.add_member(:resource_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "resourceOwner"))
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
    RouteRef.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    RouteRef.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedAt"))
    RouteRef.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    RouteRef.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "meshOwner"))
    RouteRef.add_member(:resource_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "resourceOwner"))
    RouteRef.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "routeName"))
    RouteRef.add_member(:version, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "version"))
    RouteRef.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualRouterName"))
    RouteRef.struct_class = Types::RouteRef

    RouteSpec.add_member(:grpc_route, Shapes::ShapeRef.new(shape: GrpcRoute, location_name: "grpcRoute"))
    RouteSpec.add_member(:http2_route, Shapes::ShapeRef.new(shape: HttpRoute, location_name: "http2Route"))
    RouteSpec.add_member(:http_route, Shapes::ShapeRef.new(shape: HttpRoute, location_name: "httpRoute"))
    RouteSpec.add_member(:priority, Shapes::ShapeRef.new(shape: RoutePriority, location_name: "priority"))
    RouteSpec.add_member(:tcp_route, Shapes::ShapeRef.new(shape: TcpRoute, location_name: "tcpRoute"))
    RouteSpec.struct_class = Types::RouteSpec

    RouteStatus.add_member(:status, Shapes::ShapeRef.new(shape: RouteStatusCode, required: true, location_name: "status"))
    RouteStatus.struct_class = Types::RouteStatus

    ServiceDiscovery.add_member(:aws_cloud_map, Shapes::ShapeRef.new(shape: AwsCloudMapServiceDiscovery, location_name: "awsCloudMap"))
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

    TcpRetryPolicyEvents.member = Shapes::ShapeRef.new(shape: TcpRetryPolicyEvent)

    TcpRoute.add_member(:action, Shapes::ShapeRef.new(shape: TcpRouteAction, required: true, location_name: "action"))
    TcpRoute.add_member(:timeout, Shapes::ShapeRef.new(shape: TcpTimeout, location_name: "timeout"))
    TcpRoute.struct_class = Types::TcpRoute

    TcpRouteAction.add_member(:weighted_targets, Shapes::ShapeRef.new(shape: WeightedTargets, required: true, location_name: "weightedTargets"))
    TcpRouteAction.struct_class = Types::TcpRouteAction

    TcpTimeout.add_member(:idle, Shapes::ShapeRef.new(shape: Duration, location_name: "idle"))
    TcpTimeout.struct_class = Types::TcpTimeout

    TlsValidationContext.add_member(:trust, Shapes::ShapeRef.new(shape: TlsValidationContextTrust, required: true, location_name: "trust"))
    TlsValidationContext.struct_class = Types::TlsValidationContext

    TlsValidationContextAcmTrust.add_member(:certificate_authority_arns, Shapes::ShapeRef.new(shape: CertificateAuthorityArns, required: true, location_name: "certificateAuthorityArns"))
    TlsValidationContextAcmTrust.struct_class = Types::TlsValidationContextAcmTrust

    TlsValidationContextFileTrust.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: FilePath, required: true, location_name: "certificateChain"))
    TlsValidationContextFileTrust.struct_class = Types::TlsValidationContextFileTrust

    TlsValidationContextTrust.add_member(:acm, Shapes::ShapeRef.new(shape: TlsValidationContextAcmTrust, location_name: "acm"))
    TlsValidationContextTrust.add_member(:file, Shapes::ShapeRef.new(shape: TlsValidationContextFileTrust, location_name: "file"))
    TlsValidationContextTrust.struct_class = Types::TlsValidationContextTrust

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateGatewayRouteInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateGatewayRouteInput.add_member(:gateway_route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "gatewayRouteName"))
    UpdateGatewayRouteInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    UpdateGatewayRouteInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    UpdateGatewayRouteInput.add_member(:spec, Shapes::ShapeRef.new(shape: GatewayRouteSpec, required: true, location_name: "spec"))
    UpdateGatewayRouteInput.add_member(:virtual_gateway_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualGatewayName"))
    UpdateGatewayRouteInput.struct_class = Types::UpdateGatewayRouteInput

    UpdateGatewayRouteOutput.add_member(:gateway_route, Shapes::ShapeRef.new(shape: GatewayRouteData, required: true, location_name: "gatewayRoute"))
    UpdateGatewayRouteOutput.struct_class = Types::UpdateGatewayRouteOutput
    UpdateGatewayRouteOutput[:payload] = :gateway_route
    UpdateGatewayRouteOutput[:payload_member] = UpdateGatewayRouteOutput.member(:gateway_route)

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
    UpdateRouteInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    UpdateRouteInput.add_member(:route_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "routeName"))
    UpdateRouteInput.add_member(:spec, Shapes::ShapeRef.new(shape: RouteSpec, required: true, location_name: "spec"))
    UpdateRouteInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    UpdateRouteInput.struct_class = Types::UpdateRouteInput

    UpdateRouteOutput.add_member(:route, Shapes::ShapeRef.new(shape: RouteData, required: true, location_name: "route"))
    UpdateRouteOutput.struct_class = Types::UpdateRouteOutput
    UpdateRouteOutput[:payload] = :route
    UpdateRouteOutput[:payload_member] = UpdateRouteOutput.member(:route)

    UpdateVirtualGatewayInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateVirtualGatewayInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    UpdateVirtualGatewayInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    UpdateVirtualGatewayInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualGatewaySpec, required: true, location_name: "spec"))
    UpdateVirtualGatewayInput.add_member(:virtual_gateway_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualGatewayName"))
    UpdateVirtualGatewayInput.struct_class = Types::UpdateVirtualGatewayInput

    UpdateVirtualGatewayOutput.add_member(:virtual_gateway, Shapes::ShapeRef.new(shape: VirtualGatewayData, required: true, location_name: "virtualGateway"))
    UpdateVirtualGatewayOutput.struct_class = Types::UpdateVirtualGatewayOutput
    UpdateVirtualGatewayOutput[:payload] = :virtual_gateway
    UpdateVirtualGatewayOutput[:payload_member] = UpdateVirtualGatewayOutput.member(:virtual_gateway)

    UpdateVirtualNodeInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateVirtualNodeInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    UpdateVirtualNodeInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    UpdateVirtualNodeInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualNodeSpec, required: true, location_name: "spec"))
    UpdateVirtualNodeInput.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualNodeName"))
    UpdateVirtualNodeInput.struct_class = Types::UpdateVirtualNodeInput

    UpdateVirtualNodeOutput.add_member(:virtual_node, Shapes::ShapeRef.new(shape: VirtualNodeData, required: true, location_name: "virtualNode"))
    UpdateVirtualNodeOutput.struct_class = Types::UpdateVirtualNodeOutput
    UpdateVirtualNodeOutput[:payload] = :virtual_node
    UpdateVirtualNodeOutput[:payload_member] = UpdateVirtualNodeOutput.member(:virtual_node)

    UpdateVirtualRouterInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateVirtualRouterInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    UpdateVirtualRouterInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    UpdateVirtualRouterInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualRouterSpec, required: true, location_name: "spec"))
    UpdateVirtualRouterInput.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "virtualRouterName"))
    UpdateVirtualRouterInput.struct_class = Types::UpdateVirtualRouterInput

    UpdateVirtualRouterOutput.add_member(:virtual_router, Shapes::ShapeRef.new(shape: VirtualRouterData, required: true, location_name: "virtualRouter"))
    UpdateVirtualRouterOutput.struct_class = Types::UpdateVirtualRouterOutput
    UpdateVirtualRouterOutput[:payload] = :virtual_router
    UpdateVirtualRouterOutput[:payload_member] = UpdateVirtualRouterOutput.member(:virtual_router)

    UpdateVirtualServiceInput.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateVirtualServiceInput.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "meshName"))
    UpdateVirtualServiceInput.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "meshOwner"))
    UpdateVirtualServiceInput.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualServiceSpec, required: true, location_name: "spec"))
    UpdateVirtualServiceInput.add_member(:virtual_service_name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location: "uri", location_name: "virtualServiceName"))
    UpdateVirtualServiceInput.struct_class = Types::UpdateVirtualServiceInput

    UpdateVirtualServiceOutput.add_member(:virtual_service, Shapes::ShapeRef.new(shape: VirtualServiceData, required: true, location_name: "virtualService"))
    UpdateVirtualServiceOutput.struct_class = Types::UpdateVirtualServiceOutput
    UpdateVirtualServiceOutput[:payload] = :virtual_service
    UpdateVirtualServiceOutput[:payload_member] = UpdateVirtualServiceOutput.member(:virtual_service)

    VirtualGatewayAccessLog.add_member(:file, Shapes::ShapeRef.new(shape: VirtualGatewayFileAccessLog, location_name: "file"))
    VirtualGatewayAccessLog.struct_class = Types::VirtualGatewayAccessLog

    VirtualGatewayBackendDefaults.add_member(:client_policy, Shapes::ShapeRef.new(shape: VirtualGatewayClientPolicy, location_name: "clientPolicy"))
    VirtualGatewayBackendDefaults.struct_class = Types::VirtualGatewayBackendDefaults

    VirtualGatewayCertificateAuthorityArns.member = Shapes::ShapeRef.new(shape: Arn)

    VirtualGatewayClientPolicy.add_member(:tls, Shapes::ShapeRef.new(shape: VirtualGatewayClientPolicyTls, location_name: "tls"))
    VirtualGatewayClientPolicy.struct_class = Types::VirtualGatewayClientPolicy

    VirtualGatewayClientPolicyTls.add_member(:enforce, Shapes::ShapeRef.new(shape: Boolean, location_name: "enforce", metadata: {"box"=>true}))
    VirtualGatewayClientPolicyTls.add_member(:ports, Shapes::ShapeRef.new(shape: PortSet, location_name: "ports"))
    VirtualGatewayClientPolicyTls.add_member(:validation, Shapes::ShapeRef.new(shape: VirtualGatewayTlsValidationContext, required: true, location_name: "validation"))
    VirtualGatewayClientPolicyTls.struct_class = Types::VirtualGatewayClientPolicyTls

    VirtualGatewayData.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    VirtualGatewayData.add_member(:metadata, Shapes::ShapeRef.new(shape: ResourceMetadata, required: true, location_name: "metadata"))
    VirtualGatewayData.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualGatewaySpec, required: true, location_name: "spec"))
    VirtualGatewayData.add_member(:status, Shapes::ShapeRef.new(shape: VirtualGatewayStatus, required: true, location_name: "status"))
    VirtualGatewayData.add_member(:virtual_gateway_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualGatewayName"))
    VirtualGatewayData.struct_class = Types::VirtualGatewayData

    VirtualGatewayFileAccessLog.add_member(:path, Shapes::ShapeRef.new(shape: FilePath, required: true, location_name: "path"))
    VirtualGatewayFileAccessLog.struct_class = Types::VirtualGatewayFileAccessLog

    VirtualGatewayHealthCheckPolicy.add_member(:healthy_threshold, Shapes::ShapeRef.new(shape: VirtualGatewayHealthCheckThreshold, required: true, location_name: "healthyThreshold"))
    VirtualGatewayHealthCheckPolicy.add_member(:interval_millis, Shapes::ShapeRef.new(shape: VirtualGatewayHealthCheckIntervalMillis, required: true, location_name: "intervalMillis"))
    VirtualGatewayHealthCheckPolicy.add_member(:path, Shapes::ShapeRef.new(shape: String, location_name: "path"))
    VirtualGatewayHealthCheckPolicy.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "port"))
    VirtualGatewayHealthCheckPolicy.add_member(:protocol, Shapes::ShapeRef.new(shape: VirtualGatewayPortProtocol, required: true, location_name: "protocol"))
    VirtualGatewayHealthCheckPolicy.add_member(:timeout_millis, Shapes::ShapeRef.new(shape: VirtualGatewayHealthCheckTimeoutMillis, required: true, location_name: "timeoutMillis"))
    VirtualGatewayHealthCheckPolicy.add_member(:unhealthy_threshold, Shapes::ShapeRef.new(shape: VirtualGatewayHealthCheckThreshold, required: true, location_name: "unhealthyThreshold"))
    VirtualGatewayHealthCheckPolicy.struct_class = Types::VirtualGatewayHealthCheckPolicy

    VirtualGatewayList.member = Shapes::ShapeRef.new(shape: VirtualGatewayRef)

    VirtualGatewayListener.add_member(:health_check, Shapes::ShapeRef.new(shape: VirtualGatewayHealthCheckPolicy, location_name: "healthCheck"))
    VirtualGatewayListener.add_member(:port_mapping, Shapes::ShapeRef.new(shape: VirtualGatewayPortMapping, required: true, location_name: "portMapping"))
    VirtualGatewayListener.add_member(:tls, Shapes::ShapeRef.new(shape: VirtualGatewayListenerTls, location_name: "tls"))
    VirtualGatewayListener.struct_class = Types::VirtualGatewayListener

    VirtualGatewayListenerTls.add_member(:certificate, Shapes::ShapeRef.new(shape: VirtualGatewayListenerTlsCertificate, required: true, location_name: "certificate"))
    VirtualGatewayListenerTls.add_member(:mode, Shapes::ShapeRef.new(shape: VirtualGatewayListenerTlsMode, required: true, location_name: "mode"))
    VirtualGatewayListenerTls.struct_class = Types::VirtualGatewayListenerTls

    VirtualGatewayListenerTlsAcmCertificate.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "certificateArn"))
    VirtualGatewayListenerTlsAcmCertificate.struct_class = Types::VirtualGatewayListenerTlsAcmCertificate

    VirtualGatewayListenerTlsCertificate.add_member(:acm, Shapes::ShapeRef.new(shape: VirtualGatewayListenerTlsAcmCertificate, location_name: "acm"))
    VirtualGatewayListenerTlsCertificate.add_member(:file, Shapes::ShapeRef.new(shape: VirtualGatewayListenerTlsFileCertificate, location_name: "file"))
    VirtualGatewayListenerTlsCertificate.struct_class = Types::VirtualGatewayListenerTlsCertificate

    VirtualGatewayListenerTlsFileCertificate.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: FilePath, required: true, location_name: "certificateChain"))
    VirtualGatewayListenerTlsFileCertificate.add_member(:private_key, Shapes::ShapeRef.new(shape: FilePath, required: true, location_name: "privateKey"))
    VirtualGatewayListenerTlsFileCertificate.struct_class = Types::VirtualGatewayListenerTlsFileCertificate

    VirtualGatewayListeners.member = Shapes::ShapeRef.new(shape: VirtualGatewayListener)

    VirtualGatewayLogging.add_member(:access_log, Shapes::ShapeRef.new(shape: VirtualGatewayAccessLog, location_name: "accessLog"))
    VirtualGatewayLogging.struct_class = Types::VirtualGatewayLogging

    VirtualGatewayPortMapping.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, required: true, location_name: "port"))
    VirtualGatewayPortMapping.add_member(:protocol, Shapes::ShapeRef.new(shape: VirtualGatewayPortProtocol, required: true, location_name: "protocol"))
    VirtualGatewayPortMapping.struct_class = Types::VirtualGatewayPortMapping

    VirtualGatewayRef.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    VirtualGatewayRef.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    VirtualGatewayRef.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedAt"))
    VirtualGatewayRef.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    VirtualGatewayRef.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "meshOwner"))
    VirtualGatewayRef.add_member(:resource_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "resourceOwner"))
    VirtualGatewayRef.add_member(:version, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "version"))
    VirtualGatewayRef.add_member(:virtual_gateway_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualGatewayName"))
    VirtualGatewayRef.struct_class = Types::VirtualGatewayRef

    VirtualGatewaySpec.add_member(:backend_defaults, Shapes::ShapeRef.new(shape: VirtualGatewayBackendDefaults, location_name: "backendDefaults"))
    VirtualGatewaySpec.add_member(:listeners, Shapes::ShapeRef.new(shape: VirtualGatewayListeners, required: true, location_name: "listeners"))
    VirtualGatewaySpec.add_member(:logging, Shapes::ShapeRef.new(shape: VirtualGatewayLogging, location_name: "logging"))
    VirtualGatewaySpec.struct_class = Types::VirtualGatewaySpec

    VirtualGatewayStatus.add_member(:status, Shapes::ShapeRef.new(shape: VirtualGatewayStatusCode, required: true, location_name: "status"))
    VirtualGatewayStatus.struct_class = Types::VirtualGatewayStatus

    VirtualGatewayTlsValidationContext.add_member(:trust, Shapes::ShapeRef.new(shape: VirtualGatewayTlsValidationContextTrust, required: true, location_name: "trust"))
    VirtualGatewayTlsValidationContext.struct_class = Types::VirtualGatewayTlsValidationContext

    VirtualGatewayTlsValidationContextAcmTrust.add_member(:certificate_authority_arns, Shapes::ShapeRef.new(shape: VirtualGatewayCertificateAuthorityArns, required: true, location_name: "certificateAuthorityArns"))
    VirtualGatewayTlsValidationContextAcmTrust.struct_class = Types::VirtualGatewayTlsValidationContextAcmTrust

    VirtualGatewayTlsValidationContextFileTrust.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: FilePath, required: true, location_name: "certificateChain"))
    VirtualGatewayTlsValidationContextFileTrust.struct_class = Types::VirtualGatewayTlsValidationContextFileTrust

    VirtualGatewayTlsValidationContextTrust.add_member(:acm, Shapes::ShapeRef.new(shape: VirtualGatewayTlsValidationContextAcmTrust, location_name: "acm"))
    VirtualGatewayTlsValidationContextTrust.add_member(:file, Shapes::ShapeRef.new(shape: VirtualGatewayTlsValidationContextFileTrust, location_name: "file"))
    VirtualGatewayTlsValidationContextTrust.struct_class = Types::VirtualGatewayTlsValidationContextTrust

    VirtualNodeData.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    VirtualNodeData.add_member(:metadata, Shapes::ShapeRef.new(shape: ResourceMetadata, required: true, location_name: "metadata"))
    VirtualNodeData.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualNodeSpec, required: true, location_name: "spec"))
    VirtualNodeData.add_member(:status, Shapes::ShapeRef.new(shape: VirtualNodeStatus, required: true, location_name: "status"))
    VirtualNodeData.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualNodeName"))
    VirtualNodeData.struct_class = Types::VirtualNodeData

    VirtualNodeList.member = Shapes::ShapeRef.new(shape: VirtualNodeRef)

    VirtualNodeRef.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "arn"))
    VirtualNodeRef.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    VirtualNodeRef.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedAt"))
    VirtualNodeRef.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    VirtualNodeRef.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "meshOwner"))
    VirtualNodeRef.add_member(:resource_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "resourceOwner"))
    VirtualNodeRef.add_member(:version, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "version"))
    VirtualNodeRef.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualNodeName"))
    VirtualNodeRef.struct_class = Types::VirtualNodeRef

    VirtualNodeServiceProvider.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualNodeName"))
    VirtualNodeServiceProvider.struct_class = Types::VirtualNodeServiceProvider

    VirtualNodeSpec.add_member(:backend_defaults, Shapes::ShapeRef.new(shape: BackendDefaults, location_name: "backendDefaults"))
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
    VirtualRouterRef.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    VirtualRouterRef.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedAt"))
    VirtualRouterRef.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    VirtualRouterRef.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "meshOwner"))
    VirtualRouterRef.add_member(:resource_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "resourceOwner"))
    VirtualRouterRef.add_member(:version, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "version"))
    VirtualRouterRef.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualRouterName"))
    VirtualRouterRef.struct_class = Types::VirtualRouterRef

    VirtualRouterServiceProvider.add_member(:virtual_router_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualRouterName"))
    VirtualRouterServiceProvider.struct_class = Types::VirtualRouterServiceProvider

    VirtualRouterSpec.add_member(:listeners, Shapes::ShapeRef.new(shape: VirtualRouterListeners, location_name: "listeners"))
    VirtualRouterSpec.struct_class = Types::VirtualRouterSpec

    VirtualRouterStatus.add_member(:status, Shapes::ShapeRef.new(shape: VirtualRouterStatusCode, required: true, location_name: "status"))
    VirtualRouterStatus.struct_class = Types::VirtualRouterStatus

    VirtualServiceBackend.add_member(:client_policy, Shapes::ShapeRef.new(shape: ClientPolicy, location_name: "clientPolicy"))
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
    VirtualServiceRef.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    VirtualServiceRef.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedAt"))
    VirtualServiceRef.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    VirtualServiceRef.add_member(:mesh_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "meshOwner"))
    VirtualServiceRef.add_member(:resource_owner, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "resourceOwner"))
    VirtualServiceRef.add_member(:version, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "version"))
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

      api.add_operation(:create_gateway_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGatewayRoute"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes"
        o.input = Shapes::ShapeRef.new(shape: CreateGatewayRouteInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGatewayRouteOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

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

      api.add_operation(:create_virtual_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVirtualGateway"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateways"
        o.input = Shapes::ShapeRef.new(shape: CreateVirtualGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: CreateVirtualGatewayOutput)
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

      api.add_operation(:delete_gateway_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGatewayRoute"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGatewayRouteInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteGatewayRouteOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
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

      api.add_operation(:delete_virtual_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVirtualGateway"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVirtualGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteVirtualGatewayOutput)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_gateway_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGatewayRoute"
        o.http_method = "GET"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeGatewayRouteInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeGatewayRouteOutput)
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

      api.add_operation(:describe_virtual_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVirtualGateway"
        o.http_method = "GET"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeVirtualGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeVirtualGatewayOutput)
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

      api.add_operation(:list_gateway_routes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGatewayRoutes"
        o.http_method = "GET"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes"
        o.input = Shapes::ShapeRef.new(shape: ListGatewayRoutesInput)
        o.output = Shapes::ShapeRef.new(shape: ListGatewayRoutesOutput)
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

      api.add_operation(:list_virtual_gateways, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVirtualGateways"
        o.http_method = "GET"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateways"
        o.input = Shapes::ShapeRef.new(shape: ListVirtualGatewaysInput)
        o.output = Shapes::ShapeRef.new(shape: ListVirtualGatewaysOutput)
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
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/untag"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_gateway_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGatewayRoute"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewayRouteInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGatewayRouteOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
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

      api.add_operation(:update_virtual_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVirtualGateway"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateVirtualGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateVirtualGatewayOutput)
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
