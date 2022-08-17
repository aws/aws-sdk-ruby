# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppMesh
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessLog = Shapes::UnionShape.new(name: 'AccessLog')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AwsCloudMapInstanceAttribute = Shapes::StructureShape.new(name: 'AwsCloudMapInstanceAttribute')
    AwsCloudMapInstanceAttributeKey = Shapes::StringShape.new(name: 'AwsCloudMapInstanceAttributeKey')
    AwsCloudMapInstanceAttributeValue = Shapes::StringShape.new(name: 'AwsCloudMapInstanceAttributeValue')
    AwsCloudMapInstanceAttributes = Shapes::ListShape.new(name: 'AwsCloudMapInstanceAttributes')
    AwsCloudMapName = Shapes::StringShape.new(name: 'AwsCloudMapName')
    AwsCloudMapServiceDiscovery = Shapes::StructureShape.new(name: 'AwsCloudMapServiceDiscovery')
    Backend = Shapes::UnionShape.new(name: 'Backend')
    BackendDefaults = Shapes::StructureShape.new(name: 'BackendDefaults')
    Backends = Shapes::ListShape.new(name: 'Backends')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CertificateAuthorityArns = Shapes::ListShape.new(name: 'CertificateAuthorityArns')
    ClientPolicy = Shapes::StructureShape.new(name: 'ClientPolicy')
    ClientPolicyTls = Shapes::StructureShape.new(name: 'ClientPolicyTls')
    ClientTlsCertificate = Shapes::UnionShape.new(name: 'ClientTlsCertificate')
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
    DefaultGatewayRouteRewrite = Shapes::StringShape.new(name: 'DefaultGatewayRouteRewrite')
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
    DnsResponseType = Shapes::StringShape.new(name: 'DnsResponseType')
    DnsServiceDiscovery = Shapes::StructureShape.new(name: 'DnsServiceDiscovery')
    Duration = Shapes::StructureShape.new(name: 'Duration')
    DurationUnit = Shapes::StringShape.new(name: 'DurationUnit')
    DurationValue = Shapes::IntegerShape.new(name: 'DurationValue')
    EgressFilter = Shapes::StructureShape.new(name: 'EgressFilter')
    EgressFilterType = Shapes::StringShape.new(name: 'EgressFilterType')
    ExactHostName = Shapes::StringShape.new(name: 'ExactHostName')
    FileAccessLog = Shapes::StructureShape.new(name: 'FileAccessLog')
    FilePath = Shapes::StringShape.new(name: 'FilePath')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GatewayRouteData = Shapes::StructureShape.new(name: 'GatewayRouteData')
    GatewayRouteHostnameMatch = Shapes::StructureShape.new(name: 'GatewayRouteHostnameMatch')
    GatewayRouteHostnameRewrite = Shapes::StructureShape.new(name: 'GatewayRouteHostnameRewrite')
    GatewayRouteList = Shapes::ListShape.new(name: 'GatewayRouteList')
    GatewayRoutePriority = Shapes::IntegerShape.new(name: 'GatewayRoutePriority')
    GatewayRouteRef = Shapes::StructureShape.new(name: 'GatewayRouteRef')
    GatewayRouteSpec = Shapes::StructureShape.new(name: 'GatewayRouteSpec')
    GatewayRouteStatus = Shapes::StructureShape.new(name: 'GatewayRouteStatus')
    GatewayRouteStatusCode = Shapes::StringShape.new(name: 'GatewayRouteStatusCode')
    GatewayRouteTarget = Shapes::StructureShape.new(name: 'GatewayRouteTarget')
    GatewayRouteVirtualService = Shapes::StructureShape.new(name: 'GatewayRouteVirtualService')
    GrpcGatewayRoute = Shapes::StructureShape.new(name: 'GrpcGatewayRoute')
    GrpcGatewayRouteAction = Shapes::StructureShape.new(name: 'GrpcGatewayRouteAction')
    GrpcGatewayRouteMatch = Shapes::StructureShape.new(name: 'GrpcGatewayRouteMatch')
    GrpcGatewayRouteMetadata = Shapes::StructureShape.new(name: 'GrpcGatewayRouteMetadata')
    GrpcGatewayRouteMetadataList = Shapes::ListShape.new(name: 'GrpcGatewayRouteMetadataList')
    GrpcGatewayRouteRewrite = Shapes::StructureShape.new(name: 'GrpcGatewayRouteRewrite')
    GrpcMetadataMatchMethod = Shapes::UnionShape.new(name: 'GrpcMetadataMatchMethod')
    GrpcRetryPolicy = Shapes::StructureShape.new(name: 'GrpcRetryPolicy')
    GrpcRetryPolicyEvent = Shapes::StringShape.new(name: 'GrpcRetryPolicyEvent')
    GrpcRetryPolicyEvents = Shapes::ListShape.new(name: 'GrpcRetryPolicyEvents')
    GrpcRoute = Shapes::StructureShape.new(name: 'GrpcRoute')
    GrpcRouteAction = Shapes::StructureShape.new(name: 'GrpcRouteAction')
    GrpcRouteMatch = Shapes::StructureShape.new(name: 'GrpcRouteMatch')
    GrpcRouteMetadata = Shapes::StructureShape.new(name: 'GrpcRouteMetadata')
    GrpcRouteMetadataList = Shapes::ListShape.new(name: 'GrpcRouteMetadataList')
    GrpcRouteMetadataMatchMethod = Shapes::UnionShape.new(name: 'GrpcRouteMetadataMatchMethod')
    GrpcTimeout = Shapes::StructureShape.new(name: 'GrpcTimeout')
    HeaderMatch = Shapes::StringShape.new(name: 'HeaderMatch')
    HeaderMatchMethod = Shapes::UnionShape.new(name: 'HeaderMatchMethod')
    HeaderName = Shapes::StringShape.new(name: 'HeaderName')
    HealthCheckIntervalMillis = Shapes::IntegerShape.new(name: 'HealthCheckIntervalMillis')
    HealthCheckPolicy = Shapes::StructureShape.new(name: 'HealthCheckPolicy')
    HealthCheckThreshold = Shapes::IntegerShape.new(name: 'HealthCheckThreshold')
    HealthCheckTimeoutMillis = Shapes::IntegerShape.new(name: 'HealthCheckTimeoutMillis')
    Hostname = Shapes::StringShape.new(name: 'Hostname')
    HttpGatewayRoute = Shapes::StructureShape.new(name: 'HttpGatewayRoute')
    HttpGatewayRouteAction = Shapes::StructureShape.new(name: 'HttpGatewayRouteAction')
    HttpGatewayRouteHeader = Shapes::StructureShape.new(name: 'HttpGatewayRouteHeader')
    HttpGatewayRouteHeaders = Shapes::ListShape.new(name: 'HttpGatewayRouteHeaders')
    HttpGatewayRouteMatch = Shapes::StructureShape.new(name: 'HttpGatewayRouteMatch')
    HttpGatewayRoutePathRewrite = Shapes::StructureShape.new(name: 'HttpGatewayRoutePathRewrite')
    HttpGatewayRoutePrefix = Shapes::StringShape.new(name: 'HttpGatewayRoutePrefix')
    HttpGatewayRoutePrefixRewrite = Shapes::StructureShape.new(name: 'HttpGatewayRoutePrefixRewrite')
    HttpGatewayRouteRewrite = Shapes::StructureShape.new(name: 'HttpGatewayRouteRewrite')
    HttpMethod = Shapes::StringShape.new(name: 'HttpMethod')
    HttpPathExact = Shapes::StringShape.new(name: 'HttpPathExact')
    HttpPathMatch = Shapes::StructureShape.new(name: 'HttpPathMatch')
    HttpPathRegex = Shapes::StringShape.new(name: 'HttpPathRegex')
    HttpQueryParameter = Shapes::StructureShape.new(name: 'HttpQueryParameter')
    HttpQueryParameters = Shapes::ListShape.new(name: 'HttpQueryParameters')
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
    IpPreference = Shapes::StringShape.new(name: 'IpPreference')
    JsonFormat = Shapes::ListShape.new(name: 'JsonFormat')
    JsonFormatRef = Shapes::StructureShape.new(name: 'JsonFormatRef')
    JsonKey = Shapes::StringShape.new(name: 'JsonKey')
    JsonValue = Shapes::StringShape.new(name: 'JsonValue')
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
    ListenerPort = Shapes::IntegerShape.new(name: 'ListenerPort')
    ListenerTimeout = Shapes::UnionShape.new(name: 'ListenerTimeout')
    ListenerTls = Shapes::StructureShape.new(name: 'ListenerTls')
    ListenerTlsAcmCertificate = Shapes::StructureShape.new(name: 'ListenerTlsAcmCertificate')
    ListenerTlsCertificate = Shapes::UnionShape.new(name: 'ListenerTlsCertificate')
    ListenerTlsFileCertificate = Shapes::StructureShape.new(name: 'ListenerTlsFileCertificate')
    ListenerTlsMode = Shapes::StringShape.new(name: 'ListenerTlsMode')
    ListenerTlsSdsCertificate = Shapes::StructureShape.new(name: 'ListenerTlsSdsCertificate')
    ListenerTlsValidationContext = Shapes::StructureShape.new(name: 'ListenerTlsValidationContext')
    ListenerTlsValidationContextTrust = Shapes::UnionShape.new(name: 'ListenerTlsValidationContextTrust')
    Listeners = Shapes::ListShape.new(name: 'Listeners')
    Logging = Shapes::StructureShape.new(name: 'Logging')
    LoggingFormat = Shapes::UnionShape.new(name: 'LoggingFormat')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MatchRange = Shapes::StructureShape.new(name: 'MatchRange')
    MaxConnections = Shapes::IntegerShape.new(name: 'MaxConnections')
    MaxPendingRequests = Shapes::IntegerShape.new(name: 'MaxPendingRequests')
    MaxRequests = Shapes::IntegerShape.new(name: 'MaxRequests')
    MaxRetries = Shapes::IntegerShape.new(name: 'MaxRetries')
    MeshData = Shapes::StructureShape.new(name: 'MeshData')
    MeshList = Shapes::ListShape.new(name: 'MeshList')
    MeshRef = Shapes::StructureShape.new(name: 'MeshRef')
    MeshServiceDiscovery = Shapes::StructureShape.new(name: 'MeshServiceDiscovery')
    MeshSpec = Shapes::StructureShape.new(name: 'MeshSpec')
    MeshStatus = Shapes::StructureShape.new(name: 'MeshStatus')
    MeshStatusCode = Shapes::StringShape.new(name: 'MeshStatusCode')
    MethodName = Shapes::StringShape.new(name: 'MethodName')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OutlierDetection = Shapes::StructureShape.new(name: 'OutlierDetection')
    OutlierDetectionMaxEjectionPercent = Shapes::IntegerShape.new(name: 'OutlierDetectionMaxEjectionPercent')
    OutlierDetectionMaxServerErrors = Shapes::IntegerShape.new(name: 'OutlierDetectionMaxServerErrors')
    PercentInt = Shapes::IntegerShape.new(name: 'PercentInt')
    PortMapping = Shapes::StructureShape.new(name: 'PortMapping')
    PortNumber = Shapes::IntegerShape.new(name: 'PortNumber')
    PortProtocol = Shapes::StringShape.new(name: 'PortProtocol')
    PortSet = Shapes::ListShape.new(name: 'PortSet')
    QueryParameterMatch = Shapes::StructureShape.new(name: 'QueryParameterMatch')
    QueryParameterName = Shapes::StringShape.new(name: 'QueryParameterName')
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
    SdsSecretName = Shapes::StringShape.new(name: 'SdsSecretName')
    ServiceDiscovery = Shapes::UnionShape.new(name: 'ServiceDiscovery')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
    SubjectAlternativeName = Shapes::StringShape.new(name: 'SubjectAlternativeName')
    SubjectAlternativeNameList = Shapes::ListShape.new(name: 'SubjectAlternativeNameList')
    SubjectAlternativeNameMatchers = Shapes::StructureShape.new(name: 'SubjectAlternativeNameMatchers')
    SubjectAlternativeNames = Shapes::StructureShape.new(name: 'SubjectAlternativeNames')
    SuffixHostname = Shapes::StringShape.new(name: 'SuffixHostname')
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
    TcpRouteMatch = Shapes::StructureShape.new(name: 'TcpRouteMatch')
    TcpTimeout = Shapes::StructureShape.new(name: 'TcpTimeout')
    TextFormat = Shapes::StringShape.new(name: 'TextFormat')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TlsValidationContext = Shapes::StructureShape.new(name: 'TlsValidationContext')
    TlsValidationContextAcmTrust = Shapes::StructureShape.new(name: 'TlsValidationContextAcmTrust')
    TlsValidationContextFileTrust = Shapes::StructureShape.new(name: 'TlsValidationContextFileTrust')
    TlsValidationContextSdsTrust = Shapes::StructureShape.new(name: 'TlsValidationContextSdsTrust')
    TlsValidationContextTrust = Shapes::UnionShape.new(name: 'TlsValidationContextTrust')
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
    VirtualGatewayAccessLog = Shapes::UnionShape.new(name: 'VirtualGatewayAccessLog')
    VirtualGatewayBackendDefaults = Shapes::StructureShape.new(name: 'VirtualGatewayBackendDefaults')
    VirtualGatewayCertificateAuthorityArns = Shapes::ListShape.new(name: 'VirtualGatewayCertificateAuthorityArns')
    VirtualGatewayClientPolicy = Shapes::StructureShape.new(name: 'VirtualGatewayClientPolicy')
    VirtualGatewayClientPolicyTls = Shapes::StructureShape.new(name: 'VirtualGatewayClientPolicyTls')
    VirtualGatewayClientTlsCertificate = Shapes::UnionShape.new(name: 'VirtualGatewayClientTlsCertificate')
    VirtualGatewayConnectionPool = Shapes::UnionShape.new(name: 'VirtualGatewayConnectionPool')
    VirtualGatewayData = Shapes::StructureShape.new(name: 'VirtualGatewayData')
    VirtualGatewayFileAccessLog = Shapes::StructureShape.new(name: 'VirtualGatewayFileAccessLog')
    VirtualGatewayGrpcConnectionPool = Shapes::StructureShape.new(name: 'VirtualGatewayGrpcConnectionPool')
    VirtualGatewayHealthCheckIntervalMillis = Shapes::IntegerShape.new(name: 'VirtualGatewayHealthCheckIntervalMillis')
    VirtualGatewayHealthCheckPolicy = Shapes::StructureShape.new(name: 'VirtualGatewayHealthCheckPolicy')
    VirtualGatewayHealthCheckThreshold = Shapes::IntegerShape.new(name: 'VirtualGatewayHealthCheckThreshold')
    VirtualGatewayHealthCheckTimeoutMillis = Shapes::IntegerShape.new(name: 'VirtualGatewayHealthCheckTimeoutMillis')
    VirtualGatewayHttp2ConnectionPool = Shapes::StructureShape.new(name: 'VirtualGatewayHttp2ConnectionPool')
    VirtualGatewayHttpConnectionPool = Shapes::StructureShape.new(name: 'VirtualGatewayHttpConnectionPool')
    VirtualGatewayList = Shapes::ListShape.new(name: 'VirtualGatewayList')
    VirtualGatewayListener = Shapes::StructureShape.new(name: 'VirtualGatewayListener')
    VirtualGatewayListenerTls = Shapes::StructureShape.new(name: 'VirtualGatewayListenerTls')
    VirtualGatewayListenerTlsAcmCertificate = Shapes::StructureShape.new(name: 'VirtualGatewayListenerTlsAcmCertificate')
    VirtualGatewayListenerTlsCertificate = Shapes::UnionShape.new(name: 'VirtualGatewayListenerTlsCertificate')
    VirtualGatewayListenerTlsFileCertificate = Shapes::StructureShape.new(name: 'VirtualGatewayListenerTlsFileCertificate')
    VirtualGatewayListenerTlsMode = Shapes::StringShape.new(name: 'VirtualGatewayListenerTlsMode')
    VirtualGatewayListenerTlsSdsCertificate = Shapes::StructureShape.new(name: 'VirtualGatewayListenerTlsSdsCertificate')
    VirtualGatewayListenerTlsValidationContext = Shapes::StructureShape.new(name: 'VirtualGatewayListenerTlsValidationContext')
    VirtualGatewayListenerTlsValidationContextTrust = Shapes::UnionShape.new(name: 'VirtualGatewayListenerTlsValidationContextTrust')
    VirtualGatewayListeners = Shapes::ListShape.new(name: 'VirtualGatewayListeners')
    VirtualGatewayLogging = Shapes::StructureShape.new(name: 'VirtualGatewayLogging')
    VirtualGatewayPortMapping = Shapes::StructureShape.new(name: 'VirtualGatewayPortMapping')
    VirtualGatewayPortProtocol = Shapes::StringShape.new(name: 'VirtualGatewayPortProtocol')
    VirtualGatewayRef = Shapes::StructureShape.new(name: 'VirtualGatewayRef')
    VirtualGatewaySdsSecretName = Shapes::StringShape.new(name: 'VirtualGatewaySdsSecretName')
    VirtualGatewaySpec = Shapes::StructureShape.new(name: 'VirtualGatewaySpec')
    VirtualGatewayStatus = Shapes::StructureShape.new(name: 'VirtualGatewayStatus')
    VirtualGatewayStatusCode = Shapes::StringShape.new(name: 'VirtualGatewayStatusCode')
    VirtualGatewayTlsValidationContext = Shapes::StructureShape.new(name: 'VirtualGatewayTlsValidationContext')
    VirtualGatewayTlsValidationContextAcmTrust = Shapes::StructureShape.new(name: 'VirtualGatewayTlsValidationContextAcmTrust')
    VirtualGatewayTlsValidationContextFileTrust = Shapes::StructureShape.new(name: 'VirtualGatewayTlsValidationContextFileTrust')
    VirtualGatewayTlsValidationContextSdsTrust = Shapes::StructureShape.new(name: 'VirtualGatewayTlsValidationContextSdsTrust')
    VirtualGatewayTlsValidationContextTrust = Shapes::UnionShape.new(name: 'VirtualGatewayTlsValidationContextTrust')
    VirtualNodeConnectionPool = Shapes::UnionShape.new(name: 'VirtualNodeConnectionPool')
    VirtualNodeData = Shapes::StructureShape.new(name: 'VirtualNodeData')
    VirtualNodeGrpcConnectionPool = Shapes::StructureShape.new(name: 'VirtualNodeGrpcConnectionPool')
    VirtualNodeHttp2ConnectionPool = Shapes::StructureShape.new(name: 'VirtualNodeHttp2ConnectionPool')
    VirtualNodeHttpConnectionPool = Shapes::StructureShape.new(name: 'VirtualNodeHttpConnectionPool')
    VirtualNodeList = Shapes::ListShape.new(name: 'VirtualNodeList')
    VirtualNodeRef = Shapes::StructureShape.new(name: 'VirtualNodeRef')
    VirtualNodeServiceProvider = Shapes::StructureShape.new(name: 'VirtualNodeServiceProvider')
    VirtualNodeSpec = Shapes::StructureShape.new(name: 'VirtualNodeSpec')
    VirtualNodeStatus = Shapes::StructureShape.new(name: 'VirtualNodeStatus')
    VirtualNodeStatusCode = Shapes::StringShape.new(name: 'VirtualNodeStatusCode')
    VirtualNodeTcpConnectionPool = Shapes::StructureShape.new(name: 'VirtualNodeTcpConnectionPool')
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
    VirtualServiceProvider = Shapes::UnionShape.new(name: 'VirtualServiceProvider')
    VirtualServiceRef = Shapes::StructureShape.new(name: 'VirtualServiceRef')
    VirtualServiceSpec = Shapes::StructureShape.new(name: 'VirtualServiceSpec')
    VirtualServiceStatus = Shapes::StructureShape.new(name: 'VirtualServiceStatus')
    VirtualServiceStatusCode = Shapes::StringShape.new(name: 'VirtualServiceStatusCode')
    WeightedTarget = Shapes::StructureShape.new(name: 'WeightedTarget')
    WeightedTargets = Shapes::ListShape.new(name: 'WeightedTargets')

    AccessLog.add_member(:file, Shapes::ShapeRef.new(shape: FileAccessLog, location_name: "file"))
    AccessLog.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AccessLog.add_member_subclass(:file, Types::AccessLog::File)
    AccessLog.add_member_subclass(:unknown, Types::AccessLog::Unknown)
    AccessLog.struct_class = Types::AccessLog

    AwsCloudMapInstanceAttribute.add_member(:key, Shapes::ShapeRef.new(shape: AwsCloudMapInstanceAttributeKey, required: true, location_name: "key"))
    AwsCloudMapInstanceAttribute.add_member(:value, Shapes::ShapeRef.new(shape: AwsCloudMapInstanceAttributeValue, required: true, location_name: "value"))
    AwsCloudMapInstanceAttribute.struct_class = Types::AwsCloudMapInstanceAttribute

    AwsCloudMapInstanceAttributes.member = Shapes::ShapeRef.new(shape: AwsCloudMapInstanceAttribute)

    AwsCloudMapServiceDiscovery.add_member(:attributes, Shapes::ShapeRef.new(shape: AwsCloudMapInstanceAttributes, location_name: "attributes"))
    AwsCloudMapServiceDiscovery.add_member(:ip_preference, Shapes::ShapeRef.new(shape: IpPreference, location_name: "ipPreference"))
    AwsCloudMapServiceDiscovery.add_member(:namespace_name, Shapes::ShapeRef.new(shape: AwsCloudMapName, required: true, location_name: "namespaceName"))
    AwsCloudMapServiceDiscovery.add_member(:service_name, Shapes::ShapeRef.new(shape: AwsCloudMapName, required: true, location_name: "serviceName"))
    AwsCloudMapServiceDiscovery.struct_class = Types::AwsCloudMapServiceDiscovery

    Backend.add_member(:virtual_service, Shapes::ShapeRef.new(shape: VirtualServiceBackend, location_name: "virtualService"))
    Backend.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Backend.add_member_subclass(:virtual_service, Types::Backend::VirtualService)
    Backend.add_member_subclass(:unknown, Types::Backend::Unknown)
    Backend.struct_class = Types::Backend

    BackendDefaults.add_member(:client_policy, Shapes::ShapeRef.new(shape: ClientPolicy, location_name: "clientPolicy"))
    BackendDefaults.struct_class = Types::BackendDefaults

    Backends.member = Shapes::ShapeRef.new(shape: Backend)

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    CertificateAuthorityArns.member = Shapes::ShapeRef.new(shape: Arn)

    ClientPolicy.add_member(:tls, Shapes::ShapeRef.new(shape: ClientPolicyTls, location_name: "tls"))
    ClientPolicy.struct_class = Types::ClientPolicy

    ClientPolicyTls.add_member(:certificate, Shapes::ShapeRef.new(shape: ClientTlsCertificate, location_name: "certificate"))
    ClientPolicyTls.add_member(:enforce, Shapes::ShapeRef.new(shape: Boolean, location_name: "enforce", metadata: {"box"=>true}))
    ClientPolicyTls.add_member(:ports, Shapes::ShapeRef.new(shape: PortSet, location_name: "ports"))
    ClientPolicyTls.add_member(:validation, Shapes::ShapeRef.new(shape: TlsValidationContext, required: true, location_name: "validation"))
    ClientPolicyTls.struct_class = Types::ClientPolicyTls

    ClientTlsCertificate.add_member(:file, Shapes::ShapeRef.new(shape: ListenerTlsFileCertificate, location_name: "file"))
    ClientTlsCertificate.add_member(:sds, Shapes::ShapeRef.new(shape: ListenerTlsSdsCertificate, location_name: "sds"))
    ClientTlsCertificate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ClientTlsCertificate.add_member_subclass(:file, Types::ClientTlsCertificate::File)
    ClientTlsCertificate.add_member_subclass(:sds, Types::ClientTlsCertificate::Sds)
    ClientTlsCertificate.add_member_subclass(:unknown, Types::ClientTlsCertificate::Unknown)
    ClientTlsCertificate.struct_class = Types::ClientTlsCertificate

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
    CreateMeshInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
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
    CreateRouteInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
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
    CreateVirtualNodeInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
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
    CreateVirtualRouterInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
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
    CreateVirtualServiceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
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
    DnsServiceDiscovery.add_member(:ip_preference, Shapes::ShapeRef.new(shape: IpPreference, location_name: "ipPreference"))
    DnsServiceDiscovery.add_member(:response_type, Shapes::ShapeRef.new(shape: DnsResponseType, location_name: "responseType"))
    DnsServiceDiscovery.struct_class = Types::DnsServiceDiscovery

    Duration.add_member(:unit, Shapes::ShapeRef.new(shape: DurationUnit, location_name: "unit"))
    Duration.add_member(:value, Shapes::ShapeRef.new(shape: DurationValue, location_name: "value"))
    Duration.struct_class = Types::Duration

    EgressFilter.add_member(:type, Shapes::ShapeRef.new(shape: EgressFilterType, required: true, location_name: "type"))
    EgressFilter.struct_class = Types::EgressFilter

    FileAccessLog.add_member(:format, Shapes::ShapeRef.new(shape: LoggingFormat, location_name: "format"))
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

    GatewayRouteHostnameMatch.add_member(:exact, Shapes::ShapeRef.new(shape: ExactHostName, location_name: "exact"))
    GatewayRouteHostnameMatch.add_member(:suffix, Shapes::ShapeRef.new(shape: SuffixHostname, location_name: "suffix"))
    GatewayRouteHostnameMatch.struct_class = Types::GatewayRouteHostnameMatch

    GatewayRouteHostnameRewrite.add_member(:default_target_hostname, Shapes::ShapeRef.new(shape: DefaultGatewayRouteRewrite, location_name: "defaultTargetHostname"))
    GatewayRouteHostnameRewrite.struct_class = Types::GatewayRouteHostnameRewrite

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
    GatewayRouteSpec.add_member(:priority, Shapes::ShapeRef.new(shape: GatewayRoutePriority, location_name: "priority"))
    GatewayRouteSpec.struct_class = Types::GatewayRouteSpec

    GatewayRouteStatus.add_member(:status, Shapes::ShapeRef.new(shape: GatewayRouteStatusCode, required: true, location_name: "status"))
    GatewayRouteStatus.struct_class = Types::GatewayRouteStatus

    GatewayRouteTarget.add_member(:port, Shapes::ShapeRef.new(shape: ListenerPort, location_name: "port"))
    GatewayRouteTarget.add_member(:virtual_service, Shapes::ShapeRef.new(shape: GatewayRouteVirtualService, required: true, location_name: "virtualService"))
    GatewayRouteTarget.struct_class = Types::GatewayRouteTarget

    GatewayRouteVirtualService.add_member(:virtual_service_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualServiceName"))
    GatewayRouteVirtualService.struct_class = Types::GatewayRouteVirtualService

    GrpcGatewayRoute.add_member(:action, Shapes::ShapeRef.new(shape: GrpcGatewayRouteAction, required: true, location_name: "action"))
    GrpcGatewayRoute.add_member(:match, Shapes::ShapeRef.new(shape: GrpcGatewayRouteMatch, required: true, location_name: "match"))
    GrpcGatewayRoute.struct_class = Types::GrpcGatewayRoute

    GrpcGatewayRouteAction.add_member(:rewrite, Shapes::ShapeRef.new(shape: GrpcGatewayRouteRewrite, location_name: "rewrite"))
    GrpcGatewayRouteAction.add_member(:target, Shapes::ShapeRef.new(shape: GatewayRouteTarget, required: true, location_name: "target"))
    GrpcGatewayRouteAction.struct_class = Types::GrpcGatewayRouteAction

    GrpcGatewayRouteMatch.add_member(:hostname, Shapes::ShapeRef.new(shape: GatewayRouteHostnameMatch, location_name: "hostname"))
    GrpcGatewayRouteMatch.add_member(:metadata, Shapes::ShapeRef.new(shape: GrpcGatewayRouteMetadataList, location_name: "metadata"))
    GrpcGatewayRouteMatch.add_member(:port, Shapes::ShapeRef.new(shape: ListenerPort, location_name: "port"))
    GrpcGatewayRouteMatch.add_member(:service_name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "serviceName"))
    GrpcGatewayRouteMatch.struct_class = Types::GrpcGatewayRouteMatch

    GrpcGatewayRouteMetadata.add_member(:invert, Shapes::ShapeRef.new(shape: Boolean, location_name: "invert"))
    GrpcGatewayRouteMetadata.add_member(:match, Shapes::ShapeRef.new(shape: GrpcMetadataMatchMethod, location_name: "match"))
    GrpcGatewayRouteMetadata.add_member(:name, Shapes::ShapeRef.new(shape: HeaderName, required: true, location_name: "name"))
    GrpcGatewayRouteMetadata.struct_class = Types::GrpcGatewayRouteMetadata

    GrpcGatewayRouteMetadataList.member = Shapes::ShapeRef.new(shape: GrpcGatewayRouteMetadata)

    GrpcGatewayRouteRewrite.add_member(:hostname, Shapes::ShapeRef.new(shape: GatewayRouteHostnameRewrite, location_name: "hostname"))
    GrpcGatewayRouteRewrite.struct_class = Types::GrpcGatewayRouteRewrite

    GrpcMetadataMatchMethod.add_member(:exact, Shapes::ShapeRef.new(shape: HeaderMatch, location_name: "exact"))
    GrpcMetadataMatchMethod.add_member(:prefix, Shapes::ShapeRef.new(shape: HeaderMatch, location_name: "prefix"))
    GrpcMetadataMatchMethod.add_member(:range, Shapes::ShapeRef.new(shape: MatchRange, location_name: "range"))
    GrpcMetadataMatchMethod.add_member(:regex, Shapes::ShapeRef.new(shape: HeaderMatch, location_name: "regex"))
    GrpcMetadataMatchMethod.add_member(:suffix, Shapes::ShapeRef.new(shape: HeaderMatch, location_name: "suffix"))
    GrpcMetadataMatchMethod.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    GrpcMetadataMatchMethod.add_member_subclass(:exact, Types::GrpcMetadataMatchMethod::Exact)
    GrpcMetadataMatchMethod.add_member_subclass(:prefix, Types::GrpcMetadataMatchMethod::Prefix)
    GrpcMetadataMatchMethod.add_member_subclass(:range, Types::GrpcMetadataMatchMethod::Range)
    GrpcMetadataMatchMethod.add_member_subclass(:regex, Types::GrpcMetadataMatchMethod::Regex)
    GrpcMetadataMatchMethod.add_member_subclass(:suffix, Types::GrpcMetadataMatchMethod::Suffix)
    GrpcMetadataMatchMethod.add_member_subclass(:unknown, Types::GrpcMetadataMatchMethod::Unknown)
    GrpcMetadataMatchMethod.struct_class = Types::GrpcMetadataMatchMethod

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
    GrpcRouteMatch.add_member(:port, Shapes::ShapeRef.new(shape: ListenerPort, location_name: "port"))
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
    GrpcRouteMetadataMatchMethod.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    GrpcRouteMetadataMatchMethod.add_member_subclass(:exact, Types::GrpcRouteMetadataMatchMethod::Exact)
    GrpcRouteMetadataMatchMethod.add_member_subclass(:prefix, Types::GrpcRouteMetadataMatchMethod::Prefix)
    GrpcRouteMetadataMatchMethod.add_member_subclass(:range, Types::GrpcRouteMetadataMatchMethod::Range)
    GrpcRouteMetadataMatchMethod.add_member_subclass(:regex, Types::GrpcRouteMetadataMatchMethod::Regex)
    GrpcRouteMetadataMatchMethod.add_member_subclass(:suffix, Types::GrpcRouteMetadataMatchMethod::Suffix)
    GrpcRouteMetadataMatchMethod.add_member_subclass(:unknown, Types::GrpcRouteMetadataMatchMethod::Unknown)
    GrpcRouteMetadataMatchMethod.struct_class = Types::GrpcRouteMetadataMatchMethod

    GrpcTimeout.add_member(:idle, Shapes::ShapeRef.new(shape: Duration, location_name: "idle"))
    GrpcTimeout.add_member(:per_request, Shapes::ShapeRef.new(shape: Duration, location_name: "perRequest"))
    GrpcTimeout.struct_class = Types::GrpcTimeout

    HeaderMatchMethod.add_member(:exact, Shapes::ShapeRef.new(shape: HeaderMatch, location_name: "exact"))
    HeaderMatchMethod.add_member(:prefix, Shapes::ShapeRef.new(shape: HeaderMatch, location_name: "prefix"))
    HeaderMatchMethod.add_member(:range, Shapes::ShapeRef.new(shape: MatchRange, location_name: "range"))
    HeaderMatchMethod.add_member(:regex, Shapes::ShapeRef.new(shape: HeaderMatch, location_name: "regex"))
    HeaderMatchMethod.add_member(:suffix, Shapes::ShapeRef.new(shape: HeaderMatch, location_name: "suffix"))
    HeaderMatchMethod.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    HeaderMatchMethod.add_member_subclass(:exact, Types::HeaderMatchMethod::Exact)
    HeaderMatchMethod.add_member_subclass(:prefix, Types::HeaderMatchMethod::Prefix)
    HeaderMatchMethod.add_member_subclass(:range, Types::HeaderMatchMethod::Range)
    HeaderMatchMethod.add_member_subclass(:regex, Types::HeaderMatchMethod::Regex)
    HeaderMatchMethod.add_member_subclass(:suffix, Types::HeaderMatchMethod::Suffix)
    HeaderMatchMethod.add_member_subclass(:unknown, Types::HeaderMatchMethod::Unknown)
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

    HttpGatewayRouteAction.add_member(:rewrite, Shapes::ShapeRef.new(shape: HttpGatewayRouteRewrite, location_name: "rewrite"))
    HttpGatewayRouteAction.add_member(:target, Shapes::ShapeRef.new(shape: GatewayRouteTarget, required: true, location_name: "target"))
    HttpGatewayRouteAction.struct_class = Types::HttpGatewayRouteAction

    HttpGatewayRouteHeader.add_member(:invert, Shapes::ShapeRef.new(shape: Boolean, location_name: "invert"))
    HttpGatewayRouteHeader.add_member(:match, Shapes::ShapeRef.new(shape: HeaderMatchMethod, location_name: "match"))
    HttpGatewayRouteHeader.add_member(:name, Shapes::ShapeRef.new(shape: HeaderName, required: true, location_name: "name"))
    HttpGatewayRouteHeader.struct_class = Types::HttpGatewayRouteHeader

    HttpGatewayRouteHeaders.member = Shapes::ShapeRef.new(shape: HttpGatewayRouteHeader)

    HttpGatewayRouteMatch.add_member(:headers, Shapes::ShapeRef.new(shape: HttpGatewayRouteHeaders, location_name: "headers"))
    HttpGatewayRouteMatch.add_member(:hostname, Shapes::ShapeRef.new(shape: GatewayRouteHostnameMatch, location_name: "hostname"))
    HttpGatewayRouteMatch.add_member(:method, Shapes::ShapeRef.new(shape: HttpMethod, location_name: "method"))
    HttpGatewayRouteMatch.add_member(:path, Shapes::ShapeRef.new(shape: HttpPathMatch, location_name: "path"))
    HttpGatewayRouteMatch.add_member(:port, Shapes::ShapeRef.new(shape: ListenerPort, location_name: "port"))
    HttpGatewayRouteMatch.add_member(:prefix, Shapes::ShapeRef.new(shape: String, location_name: "prefix"))
    HttpGatewayRouteMatch.add_member(:query_parameters, Shapes::ShapeRef.new(shape: HttpQueryParameters, location_name: "queryParameters"))
    HttpGatewayRouteMatch.struct_class = Types::HttpGatewayRouteMatch

    HttpGatewayRoutePathRewrite.add_member(:exact, Shapes::ShapeRef.new(shape: HttpPathExact, location_name: "exact"))
    HttpGatewayRoutePathRewrite.struct_class = Types::HttpGatewayRoutePathRewrite

    HttpGatewayRoutePrefixRewrite.add_member(:default_prefix, Shapes::ShapeRef.new(shape: DefaultGatewayRouteRewrite, location_name: "defaultPrefix"))
    HttpGatewayRoutePrefixRewrite.add_member(:value, Shapes::ShapeRef.new(shape: HttpGatewayRoutePrefix, location_name: "value"))
    HttpGatewayRoutePrefixRewrite.struct_class = Types::HttpGatewayRoutePrefixRewrite

    HttpGatewayRouteRewrite.add_member(:hostname, Shapes::ShapeRef.new(shape: GatewayRouteHostnameRewrite, location_name: "hostname"))
    HttpGatewayRouteRewrite.add_member(:path, Shapes::ShapeRef.new(shape: HttpGatewayRoutePathRewrite, location_name: "path"))
    HttpGatewayRouteRewrite.add_member(:prefix, Shapes::ShapeRef.new(shape: HttpGatewayRoutePrefixRewrite, location_name: "prefix"))
    HttpGatewayRouteRewrite.struct_class = Types::HttpGatewayRouteRewrite

    HttpPathMatch.add_member(:exact, Shapes::ShapeRef.new(shape: HttpPathExact, location_name: "exact"))
    HttpPathMatch.add_member(:regex, Shapes::ShapeRef.new(shape: HttpPathRegex, location_name: "regex"))
    HttpPathMatch.struct_class = Types::HttpPathMatch

    HttpQueryParameter.add_member(:match, Shapes::ShapeRef.new(shape: QueryParameterMatch, location_name: "match"))
    HttpQueryParameter.add_member(:name, Shapes::ShapeRef.new(shape: QueryParameterName, required: true, location_name: "name"))
    HttpQueryParameter.struct_class = Types::HttpQueryParameter

    HttpQueryParameters.member = Shapes::ShapeRef.new(shape: HttpQueryParameter)

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
    HttpRouteMatch.add_member(:path, Shapes::ShapeRef.new(shape: HttpPathMatch, location_name: "path"))
    HttpRouteMatch.add_member(:port, Shapes::ShapeRef.new(shape: ListenerPort, location_name: "port"))
    HttpRouteMatch.add_member(:prefix, Shapes::ShapeRef.new(shape: String, location_name: "prefix"))
    HttpRouteMatch.add_member(:query_parameters, Shapes::ShapeRef.new(shape: HttpQueryParameters, location_name: "queryParameters"))
    HttpRouteMatch.add_member(:scheme, Shapes::ShapeRef.new(shape: HttpScheme, location_name: "scheme"))
    HttpRouteMatch.struct_class = Types::HttpRouteMatch

    HttpTimeout.add_member(:idle, Shapes::ShapeRef.new(shape: Duration, location_name: "idle"))
    HttpTimeout.add_member(:per_request, Shapes::ShapeRef.new(shape: Duration, location_name: "perRequest"))
    HttpTimeout.struct_class = Types::HttpTimeout

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    JsonFormat.member = Shapes::ShapeRef.new(shape: JsonFormatRef)

    JsonFormatRef.add_member(:key, Shapes::ShapeRef.new(shape: JsonKey, required: true, location_name: "key"))
    JsonFormatRef.add_member(:value, Shapes::ShapeRef.new(shape: JsonValue, required: true, location_name: "value"))
    JsonFormatRef.struct_class = Types::JsonFormatRef

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

    Listener.add_member(:connection_pool, Shapes::ShapeRef.new(shape: VirtualNodeConnectionPool, location_name: "connectionPool"))
    Listener.add_member(:health_check, Shapes::ShapeRef.new(shape: HealthCheckPolicy, location_name: "healthCheck"))
    Listener.add_member(:outlier_detection, Shapes::ShapeRef.new(shape: OutlierDetection, location_name: "outlierDetection"))
    Listener.add_member(:port_mapping, Shapes::ShapeRef.new(shape: PortMapping, required: true, location_name: "portMapping"))
    Listener.add_member(:timeout, Shapes::ShapeRef.new(shape: ListenerTimeout, location_name: "timeout"))
    Listener.add_member(:tls, Shapes::ShapeRef.new(shape: ListenerTls, location_name: "tls"))
    Listener.struct_class = Types::Listener

    ListenerTimeout.add_member(:grpc, Shapes::ShapeRef.new(shape: GrpcTimeout, location_name: "grpc"))
    ListenerTimeout.add_member(:http, Shapes::ShapeRef.new(shape: HttpTimeout, location_name: "http"))
    ListenerTimeout.add_member(:http2, Shapes::ShapeRef.new(shape: HttpTimeout, location_name: "http2"))
    ListenerTimeout.add_member(:tcp, Shapes::ShapeRef.new(shape: TcpTimeout, location_name: "tcp"))
    ListenerTimeout.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ListenerTimeout.add_member_subclass(:grpc, Types::ListenerTimeout::Grpc)
    ListenerTimeout.add_member_subclass(:http, Types::ListenerTimeout::Http)
    ListenerTimeout.add_member_subclass(:http2, Types::ListenerTimeout::Http2)
    ListenerTimeout.add_member_subclass(:tcp, Types::ListenerTimeout::Tcp)
    ListenerTimeout.add_member_subclass(:unknown, Types::ListenerTimeout::Unknown)
    ListenerTimeout.struct_class = Types::ListenerTimeout

    ListenerTls.add_member(:certificate, Shapes::ShapeRef.new(shape: ListenerTlsCertificate, required: true, location_name: "certificate"))
    ListenerTls.add_member(:mode, Shapes::ShapeRef.new(shape: ListenerTlsMode, required: true, location_name: "mode"))
    ListenerTls.add_member(:validation, Shapes::ShapeRef.new(shape: ListenerTlsValidationContext, location_name: "validation"))
    ListenerTls.struct_class = Types::ListenerTls

    ListenerTlsAcmCertificate.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "certificateArn"))
    ListenerTlsAcmCertificate.struct_class = Types::ListenerTlsAcmCertificate

    ListenerTlsCertificate.add_member(:acm, Shapes::ShapeRef.new(shape: ListenerTlsAcmCertificate, location_name: "acm"))
    ListenerTlsCertificate.add_member(:file, Shapes::ShapeRef.new(shape: ListenerTlsFileCertificate, location_name: "file"))
    ListenerTlsCertificate.add_member(:sds, Shapes::ShapeRef.new(shape: ListenerTlsSdsCertificate, location_name: "sds"))
    ListenerTlsCertificate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ListenerTlsCertificate.add_member_subclass(:acm, Types::ListenerTlsCertificate::Acm)
    ListenerTlsCertificate.add_member_subclass(:file, Types::ListenerTlsCertificate::File)
    ListenerTlsCertificate.add_member_subclass(:sds, Types::ListenerTlsCertificate::Sds)
    ListenerTlsCertificate.add_member_subclass(:unknown, Types::ListenerTlsCertificate::Unknown)
    ListenerTlsCertificate.struct_class = Types::ListenerTlsCertificate

    ListenerTlsFileCertificate.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: FilePath, required: true, location_name: "certificateChain"))
    ListenerTlsFileCertificate.add_member(:private_key, Shapes::ShapeRef.new(shape: FilePath, required: true, location_name: "privateKey"))
    ListenerTlsFileCertificate.struct_class = Types::ListenerTlsFileCertificate

    ListenerTlsSdsCertificate.add_member(:secret_name, Shapes::ShapeRef.new(shape: SdsSecretName, required: true, location_name: "secretName"))
    ListenerTlsSdsCertificate.struct_class = Types::ListenerTlsSdsCertificate

    ListenerTlsValidationContext.add_member(:subject_alternative_names, Shapes::ShapeRef.new(shape: SubjectAlternativeNames, location_name: "subjectAlternativeNames"))
    ListenerTlsValidationContext.add_member(:trust, Shapes::ShapeRef.new(shape: ListenerTlsValidationContextTrust, required: true, location_name: "trust"))
    ListenerTlsValidationContext.struct_class = Types::ListenerTlsValidationContext

    ListenerTlsValidationContextTrust.add_member(:file, Shapes::ShapeRef.new(shape: TlsValidationContextFileTrust, location_name: "file"))
    ListenerTlsValidationContextTrust.add_member(:sds, Shapes::ShapeRef.new(shape: TlsValidationContextSdsTrust, location_name: "sds"))
    ListenerTlsValidationContextTrust.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ListenerTlsValidationContextTrust.add_member_subclass(:file, Types::ListenerTlsValidationContextTrust::File)
    ListenerTlsValidationContextTrust.add_member_subclass(:sds, Types::ListenerTlsValidationContextTrust::Sds)
    ListenerTlsValidationContextTrust.add_member_subclass(:unknown, Types::ListenerTlsValidationContextTrust::Unknown)
    ListenerTlsValidationContextTrust.struct_class = Types::ListenerTlsValidationContextTrust

    Listeners.member = Shapes::ShapeRef.new(shape: Listener)

    Logging.add_member(:access_log, Shapes::ShapeRef.new(shape: AccessLog, location_name: "accessLog"))
    Logging.struct_class = Types::Logging

    LoggingFormat.add_member(:json, Shapes::ShapeRef.new(shape: JsonFormat, location_name: "json"))
    LoggingFormat.add_member(:text, Shapes::ShapeRef.new(shape: TextFormat, location_name: "text"))
    LoggingFormat.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    LoggingFormat.add_member_subclass(:json, Types::LoggingFormat::Json)
    LoggingFormat.add_member_subclass(:text, Types::LoggingFormat::Text)
    LoggingFormat.add_member_subclass(:unknown, Types::LoggingFormat::Unknown)
    LoggingFormat.struct_class = Types::LoggingFormat

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

    MeshServiceDiscovery.add_member(:ip_preference, Shapes::ShapeRef.new(shape: IpPreference, location_name: "ipPreference"))
    MeshServiceDiscovery.struct_class = Types::MeshServiceDiscovery

    MeshSpec.add_member(:egress_filter, Shapes::ShapeRef.new(shape: EgressFilter, location_name: "egressFilter"))
    MeshSpec.add_member(:service_discovery, Shapes::ShapeRef.new(shape: MeshServiceDiscovery, location_name: "serviceDiscovery"))
    MeshSpec.struct_class = Types::MeshSpec

    MeshStatus.add_member(:status, Shapes::ShapeRef.new(shape: MeshStatusCode, location_name: "status"))
    MeshStatus.struct_class = Types::MeshStatus

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    OutlierDetection.add_member(:base_ejection_duration, Shapes::ShapeRef.new(shape: Duration, required: true, location_name: "baseEjectionDuration"))
    OutlierDetection.add_member(:interval, Shapes::ShapeRef.new(shape: Duration, required: true, location_name: "interval"))
    OutlierDetection.add_member(:max_ejection_percent, Shapes::ShapeRef.new(shape: OutlierDetectionMaxEjectionPercent, required: true, location_name: "maxEjectionPercent"))
    OutlierDetection.add_member(:max_server_errors, Shapes::ShapeRef.new(shape: OutlierDetectionMaxServerErrors, required: true, location_name: "maxServerErrors"))
    OutlierDetection.struct_class = Types::OutlierDetection

    PortMapping.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, required: true, location_name: "port"))
    PortMapping.add_member(:protocol, Shapes::ShapeRef.new(shape: PortProtocol, required: true, location_name: "protocol"))
    PortMapping.struct_class = Types::PortMapping

    PortSet.member = Shapes::ShapeRef.new(shape: PortNumber)

    QueryParameterMatch.add_member(:exact, Shapes::ShapeRef.new(shape: String, location_name: "exact"))
    QueryParameterMatch.struct_class = Types::QueryParameterMatch

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
    ServiceDiscovery.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ServiceDiscovery.add_member_subclass(:aws_cloud_map, Types::ServiceDiscovery::AwsCloudMap)
    ServiceDiscovery.add_member_subclass(:dns, Types::ServiceDiscovery::Dns)
    ServiceDiscovery.add_member_subclass(:unknown, Types::ServiceDiscovery::Unknown)
    ServiceDiscovery.struct_class = Types::ServiceDiscovery

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SubjectAlternativeNameList.member = Shapes::ShapeRef.new(shape: SubjectAlternativeName)

    SubjectAlternativeNameMatchers.add_member(:exact, Shapes::ShapeRef.new(shape: SubjectAlternativeNameList, required: true, location_name: "exact"))
    SubjectAlternativeNameMatchers.struct_class = Types::SubjectAlternativeNameMatchers

    SubjectAlternativeNames.add_member(:match, Shapes::ShapeRef.new(shape: SubjectAlternativeNameMatchers, required: true, location_name: "match"))
    SubjectAlternativeNames.struct_class = Types::SubjectAlternativeNames

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: TagRef)

    TagRef.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    TagRef.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    TagRef.struct_class = Types::TagRef

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TcpRetryPolicyEvents.member = Shapes::ShapeRef.new(shape: TcpRetryPolicyEvent)

    TcpRoute.add_member(:action, Shapes::ShapeRef.new(shape: TcpRouteAction, required: true, location_name: "action"))
    TcpRoute.add_member(:match, Shapes::ShapeRef.new(shape: TcpRouteMatch, location_name: "match"))
    TcpRoute.add_member(:timeout, Shapes::ShapeRef.new(shape: TcpTimeout, location_name: "timeout"))
    TcpRoute.struct_class = Types::TcpRoute

    TcpRouteAction.add_member(:weighted_targets, Shapes::ShapeRef.new(shape: WeightedTargets, required: true, location_name: "weightedTargets"))
    TcpRouteAction.struct_class = Types::TcpRouteAction

    TcpRouteMatch.add_member(:port, Shapes::ShapeRef.new(shape: ListenerPort, location_name: "port"))
    TcpRouteMatch.struct_class = Types::TcpRouteMatch

    TcpTimeout.add_member(:idle, Shapes::ShapeRef.new(shape: Duration, location_name: "idle"))
    TcpTimeout.struct_class = Types::TcpTimeout

    TlsValidationContext.add_member(:subject_alternative_names, Shapes::ShapeRef.new(shape: SubjectAlternativeNames, location_name: "subjectAlternativeNames"))
    TlsValidationContext.add_member(:trust, Shapes::ShapeRef.new(shape: TlsValidationContextTrust, required: true, location_name: "trust"))
    TlsValidationContext.struct_class = Types::TlsValidationContext

    TlsValidationContextAcmTrust.add_member(:certificate_authority_arns, Shapes::ShapeRef.new(shape: CertificateAuthorityArns, required: true, location_name: "certificateAuthorityArns"))
    TlsValidationContextAcmTrust.struct_class = Types::TlsValidationContextAcmTrust

    TlsValidationContextFileTrust.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: FilePath, required: true, location_name: "certificateChain"))
    TlsValidationContextFileTrust.struct_class = Types::TlsValidationContextFileTrust

    TlsValidationContextSdsTrust.add_member(:secret_name, Shapes::ShapeRef.new(shape: SdsSecretName, required: true, location_name: "secretName"))
    TlsValidationContextSdsTrust.struct_class = Types::TlsValidationContextSdsTrust

    TlsValidationContextTrust.add_member(:acm, Shapes::ShapeRef.new(shape: TlsValidationContextAcmTrust, location_name: "acm"))
    TlsValidationContextTrust.add_member(:file, Shapes::ShapeRef.new(shape: TlsValidationContextFileTrust, location_name: "file"))
    TlsValidationContextTrust.add_member(:sds, Shapes::ShapeRef.new(shape: TlsValidationContextSdsTrust, location_name: "sds"))
    TlsValidationContextTrust.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TlsValidationContextTrust.add_member_subclass(:acm, Types::TlsValidationContextTrust::Acm)
    TlsValidationContextTrust.add_member_subclass(:file, Types::TlsValidationContextTrust::File)
    TlsValidationContextTrust.add_member_subclass(:sds, Types::TlsValidationContextTrust::Sds)
    TlsValidationContextTrust.add_member_subclass(:unknown, Types::TlsValidationContextTrust::Unknown)
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
    VirtualGatewayAccessLog.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VirtualGatewayAccessLog.add_member_subclass(:file, Types::VirtualGatewayAccessLog::File)
    VirtualGatewayAccessLog.add_member_subclass(:unknown, Types::VirtualGatewayAccessLog::Unknown)
    VirtualGatewayAccessLog.struct_class = Types::VirtualGatewayAccessLog

    VirtualGatewayBackendDefaults.add_member(:client_policy, Shapes::ShapeRef.new(shape: VirtualGatewayClientPolicy, location_name: "clientPolicy"))
    VirtualGatewayBackendDefaults.struct_class = Types::VirtualGatewayBackendDefaults

    VirtualGatewayCertificateAuthorityArns.member = Shapes::ShapeRef.new(shape: Arn)

    VirtualGatewayClientPolicy.add_member(:tls, Shapes::ShapeRef.new(shape: VirtualGatewayClientPolicyTls, location_name: "tls"))
    VirtualGatewayClientPolicy.struct_class = Types::VirtualGatewayClientPolicy

    VirtualGatewayClientPolicyTls.add_member(:certificate, Shapes::ShapeRef.new(shape: VirtualGatewayClientTlsCertificate, location_name: "certificate"))
    VirtualGatewayClientPolicyTls.add_member(:enforce, Shapes::ShapeRef.new(shape: Boolean, location_name: "enforce", metadata: {"box"=>true}))
    VirtualGatewayClientPolicyTls.add_member(:ports, Shapes::ShapeRef.new(shape: PortSet, location_name: "ports"))
    VirtualGatewayClientPolicyTls.add_member(:validation, Shapes::ShapeRef.new(shape: VirtualGatewayTlsValidationContext, required: true, location_name: "validation"))
    VirtualGatewayClientPolicyTls.struct_class = Types::VirtualGatewayClientPolicyTls

    VirtualGatewayClientTlsCertificate.add_member(:file, Shapes::ShapeRef.new(shape: VirtualGatewayListenerTlsFileCertificate, location_name: "file"))
    VirtualGatewayClientTlsCertificate.add_member(:sds, Shapes::ShapeRef.new(shape: VirtualGatewayListenerTlsSdsCertificate, location_name: "sds"))
    VirtualGatewayClientTlsCertificate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VirtualGatewayClientTlsCertificate.add_member_subclass(:file, Types::VirtualGatewayClientTlsCertificate::File)
    VirtualGatewayClientTlsCertificate.add_member_subclass(:sds, Types::VirtualGatewayClientTlsCertificate::Sds)
    VirtualGatewayClientTlsCertificate.add_member_subclass(:unknown, Types::VirtualGatewayClientTlsCertificate::Unknown)
    VirtualGatewayClientTlsCertificate.struct_class = Types::VirtualGatewayClientTlsCertificate

    VirtualGatewayConnectionPool.add_member(:grpc, Shapes::ShapeRef.new(shape: VirtualGatewayGrpcConnectionPool, location_name: "grpc"))
    VirtualGatewayConnectionPool.add_member(:http, Shapes::ShapeRef.new(shape: VirtualGatewayHttpConnectionPool, location_name: "http"))
    VirtualGatewayConnectionPool.add_member(:http2, Shapes::ShapeRef.new(shape: VirtualGatewayHttp2ConnectionPool, location_name: "http2"))
    VirtualGatewayConnectionPool.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VirtualGatewayConnectionPool.add_member_subclass(:grpc, Types::VirtualGatewayConnectionPool::Grpc)
    VirtualGatewayConnectionPool.add_member_subclass(:http, Types::VirtualGatewayConnectionPool::Http)
    VirtualGatewayConnectionPool.add_member_subclass(:http2, Types::VirtualGatewayConnectionPool::Http2)
    VirtualGatewayConnectionPool.add_member_subclass(:unknown, Types::VirtualGatewayConnectionPool::Unknown)
    VirtualGatewayConnectionPool.struct_class = Types::VirtualGatewayConnectionPool

    VirtualGatewayData.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    VirtualGatewayData.add_member(:metadata, Shapes::ShapeRef.new(shape: ResourceMetadata, required: true, location_name: "metadata"))
    VirtualGatewayData.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualGatewaySpec, required: true, location_name: "spec"))
    VirtualGatewayData.add_member(:status, Shapes::ShapeRef.new(shape: VirtualGatewayStatus, required: true, location_name: "status"))
    VirtualGatewayData.add_member(:virtual_gateway_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualGatewayName"))
    VirtualGatewayData.struct_class = Types::VirtualGatewayData

    VirtualGatewayFileAccessLog.add_member(:format, Shapes::ShapeRef.new(shape: LoggingFormat, location_name: "format"))
    VirtualGatewayFileAccessLog.add_member(:path, Shapes::ShapeRef.new(shape: FilePath, required: true, location_name: "path"))
    VirtualGatewayFileAccessLog.struct_class = Types::VirtualGatewayFileAccessLog

    VirtualGatewayGrpcConnectionPool.add_member(:max_requests, Shapes::ShapeRef.new(shape: MaxRequests, required: true, location_name: "maxRequests"))
    VirtualGatewayGrpcConnectionPool.struct_class = Types::VirtualGatewayGrpcConnectionPool

    VirtualGatewayHealthCheckPolicy.add_member(:healthy_threshold, Shapes::ShapeRef.new(shape: VirtualGatewayHealthCheckThreshold, required: true, location_name: "healthyThreshold"))
    VirtualGatewayHealthCheckPolicy.add_member(:interval_millis, Shapes::ShapeRef.new(shape: VirtualGatewayHealthCheckIntervalMillis, required: true, location_name: "intervalMillis"))
    VirtualGatewayHealthCheckPolicy.add_member(:path, Shapes::ShapeRef.new(shape: String, location_name: "path"))
    VirtualGatewayHealthCheckPolicy.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "port"))
    VirtualGatewayHealthCheckPolicy.add_member(:protocol, Shapes::ShapeRef.new(shape: VirtualGatewayPortProtocol, required: true, location_name: "protocol"))
    VirtualGatewayHealthCheckPolicy.add_member(:timeout_millis, Shapes::ShapeRef.new(shape: VirtualGatewayHealthCheckTimeoutMillis, required: true, location_name: "timeoutMillis"))
    VirtualGatewayHealthCheckPolicy.add_member(:unhealthy_threshold, Shapes::ShapeRef.new(shape: VirtualGatewayHealthCheckThreshold, required: true, location_name: "unhealthyThreshold"))
    VirtualGatewayHealthCheckPolicy.struct_class = Types::VirtualGatewayHealthCheckPolicy

    VirtualGatewayHttp2ConnectionPool.add_member(:max_requests, Shapes::ShapeRef.new(shape: MaxRequests, required: true, location_name: "maxRequests"))
    VirtualGatewayHttp2ConnectionPool.struct_class = Types::VirtualGatewayHttp2ConnectionPool

    VirtualGatewayHttpConnectionPool.add_member(:max_connections, Shapes::ShapeRef.new(shape: MaxConnections, required: true, location_name: "maxConnections"))
    VirtualGatewayHttpConnectionPool.add_member(:max_pending_requests, Shapes::ShapeRef.new(shape: MaxPendingRequests, location_name: "maxPendingRequests", metadata: {"box"=>true}))
    VirtualGatewayHttpConnectionPool.struct_class = Types::VirtualGatewayHttpConnectionPool

    VirtualGatewayList.member = Shapes::ShapeRef.new(shape: VirtualGatewayRef)

    VirtualGatewayListener.add_member(:connection_pool, Shapes::ShapeRef.new(shape: VirtualGatewayConnectionPool, location_name: "connectionPool"))
    VirtualGatewayListener.add_member(:health_check, Shapes::ShapeRef.new(shape: VirtualGatewayHealthCheckPolicy, location_name: "healthCheck"))
    VirtualGatewayListener.add_member(:port_mapping, Shapes::ShapeRef.new(shape: VirtualGatewayPortMapping, required: true, location_name: "portMapping"))
    VirtualGatewayListener.add_member(:tls, Shapes::ShapeRef.new(shape: VirtualGatewayListenerTls, location_name: "tls"))
    VirtualGatewayListener.struct_class = Types::VirtualGatewayListener

    VirtualGatewayListenerTls.add_member(:certificate, Shapes::ShapeRef.new(shape: VirtualGatewayListenerTlsCertificate, required: true, location_name: "certificate"))
    VirtualGatewayListenerTls.add_member(:mode, Shapes::ShapeRef.new(shape: VirtualGatewayListenerTlsMode, required: true, location_name: "mode"))
    VirtualGatewayListenerTls.add_member(:validation, Shapes::ShapeRef.new(shape: VirtualGatewayListenerTlsValidationContext, location_name: "validation"))
    VirtualGatewayListenerTls.struct_class = Types::VirtualGatewayListenerTls

    VirtualGatewayListenerTlsAcmCertificate.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "certificateArn"))
    VirtualGatewayListenerTlsAcmCertificate.struct_class = Types::VirtualGatewayListenerTlsAcmCertificate

    VirtualGatewayListenerTlsCertificate.add_member(:acm, Shapes::ShapeRef.new(shape: VirtualGatewayListenerTlsAcmCertificate, location_name: "acm"))
    VirtualGatewayListenerTlsCertificate.add_member(:file, Shapes::ShapeRef.new(shape: VirtualGatewayListenerTlsFileCertificate, location_name: "file"))
    VirtualGatewayListenerTlsCertificate.add_member(:sds, Shapes::ShapeRef.new(shape: VirtualGatewayListenerTlsSdsCertificate, location_name: "sds"))
    VirtualGatewayListenerTlsCertificate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VirtualGatewayListenerTlsCertificate.add_member_subclass(:acm, Types::VirtualGatewayListenerTlsCertificate::Acm)
    VirtualGatewayListenerTlsCertificate.add_member_subclass(:file, Types::VirtualGatewayListenerTlsCertificate::File)
    VirtualGatewayListenerTlsCertificate.add_member_subclass(:sds, Types::VirtualGatewayListenerTlsCertificate::Sds)
    VirtualGatewayListenerTlsCertificate.add_member_subclass(:unknown, Types::VirtualGatewayListenerTlsCertificate::Unknown)
    VirtualGatewayListenerTlsCertificate.struct_class = Types::VirtualGatewayListenerTlsCertificate

    VirtualGatewayListenerTlsFileCertificate.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: FilePath, required: true, location_name: "certificateChain"))
    VirtualGatewayListenerTlsFileCertificate.add_member(:private_key, Shapes::ShapeRef.new(shape: FilePath, required: true, location_name: "privateKey"))
    VirtualGatewayListenerTlsFileCertificate.struct_class = Types::VirtualGatewayListenerTlsFileCertificate

    VirtualGatewayListenerTlsSdsCertificate.add_member(:secret_name, Shapes::ShapeRef.new(shape: VirtualGatewaySdsSecretName, required: true, location_name: "secretName"))
    VirtualGatewayListenerTlsSdsCertificate.struct_class = Types::VirtualGatewayListenerTlsSdsCertificate

    VirtualGatewayListenerTlsValidationContext.add_member(:subject_alternative_names, Shapes::ShapeRef.new(shape: SubjectAlternativeNames, location_name: "subjectAlternativeNames"))
    VirtualGatewayListenerTlsValidationContext.add_member(:trust, Shapes::ShapeRef.new(shape: VirtualGatewayListenerTlsValidationContextTrust, required: true, location_name: "trust"))
    VirtualGatewayListenerTlsValidationContext.struct_class = Types::VirtualGatewayListenerTlsValidationContext

    VirtualGatewayListenerTlsValidationContextTrust.add_member(:file, Shapes::ShapeRef.new(shape: VirtualGatewayTlsValidationContextFileTrust, location_name: "file"))
    VirtualGatewayListenerTlsValidationContextTrust.add_member(:sds, Shapes::ShapeRef.new(shape: VirtualGatewayTlsValidationContextSdsTrust, location_name: "sds"))
    VirtualGatewayListenerTlsValidationContextTrust.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VirtualGatewayListenerTlsValidationContextTrust.add_member_subclass(:file, Types::VirtualGatewayListenerTlsValidationContextTrust::File)
    VirtualGatewayListenerTlsValidationContextTrust.add_member_subclass(:sds, Types::VirtualGatewayListenerTlsValidationContextTrust::Sds)
    VirtualGatewayListenerTlsValidationContextTrust.add_member_subclass(:unknown, Types::VirtualGatewayListenerTlsValidationContextTrust::Unknown)
    VirtualGatewayListenerTlsValidationContextTrust.struct_class = Types::VirtualGatewayListenerTlsValidationContextTrust

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

    VirtualGatewayTlsValidationContext.add_member(:subject_alternative_names, Shapes::ShapeRef.new(shape: SubjectAlternativeNames, location_name: "subjectAlternativeNames"))
    VirtualGatewayTlsValidationContext.add_member(:trust, Shapes::ShapeRef.new(shape: VirtualGatewayTlsValidationContextTrust, required: true, location_name: "trust"))
    VirtualGatewayTlsValidationContext.struct_class = Types::VirtualGatewayTlsValidationContext

    VirtualGatewayTlsValidationContextAcmTrust.add_member(:certificate_authority_arns, Shapes::ShapeRef.new(shape: VirtualGatewayCertificateAuthorityArns, required: true, location_name: "certificateAuthorityArns"))
    VirtualGatewayTlsValidationContextAcmTrust.struct_class = Types::VirtualGatewayTlsValidationContextAcmTrust

    VirtualGatewayTlsValidationContextFileTrust.add_member(:certificate_chain, Shapes::ShapeRef.new(shape: FilePath, required: true, location_name: "certificateChain"))
    VirtualGatewayTlsValidationContextFileTrust.struct_class = Types::VirtualGatewayTlsValidationContextFileTrust

    VirtualGatewayTlsValidationContextSdsTrust.add_member(:secret_name, Shapes::ShapeRef.new(shape: VirtualGatewaySdsSecretName, required: true, location_name: "secretName"))
    VirtualGatewayTlsValidationContextSdsTrust.struct_class = Types::VirtualGatewayTlsValidationContextSdsTrust

    VirtualGatewayTlsValidationContextTrust.add_member(:acm, Shapes::ShapeRef.new(shape: VirtualGatewayTlsValidationContextAcmTrust, location_name: "acm"))
    VirtualGatewayTlsValidationContextTrust.add_member(:file, Shapes::ShapeRef.new(shape: VirtualGatewayTlsValidationContextFileTrust, location_name: "file"))
    VirtualGatewayTlsValidationContextTrust.add_member(:sds, Shapes::ShapeRef.new(shape: VirtualGatewayTlsValidationContextSdsTrust, location_name: "sds"))
    VirtualGatewayTlsValidationContextTrust.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VirtualGatewayTlsValidationContextTrust.add_member_subclass(:acm, Types::VirtualGatewayTlsValidationContextTrust::Acm)
    VirtualGatewayTlsValidationContextTrust.add_member_subclass(:file, Types::VirtualGatewayTlsValidationContextTrust::File)
    VirtualGatewayTlsValidationContextTrust.add_member_subclass(:sds, Types::VirtualGatewayTlsValidationContextTrust::Sds)
    VirtualGatewayTlsValidationContextTrust.add_member_subclass(:unknown, Types::VirtualGatewayTlsValidationContextTrust::Unknown)
    VirtualGatewayTlsValidationContextTrust.struct_class = Types::VirtualGatewayTlsValidationContextTrust

    VirtualNodeConnectionPool.add_member(:grpc, Shapes::ShapeRef.new(shape: VirtualNodeGrpcConnectionPool, location_name: "grpc"))
    VirtualNodeConnectionPool.add_member(:http, Shapes::ShapeRef.new(shape: VirtualNodeHttpConnectionPool, location_name: "http"))
    VirtualNodeConnectionPool.add_member(:http2, Shapes::ShapeRef.new(shape: VirtualNodeHttp2ConnectionPool, location_name: "http2"))
    VirtualNodeConnectionPool.add_member(:tcp, Shapes::ShapeRef.new(shape: VirtualNodeTcpConnectionPool, location_name: "tcp"))
    VirtualNodeConnectionPool.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VirtualNodeConnectionPool.add_member_subclass(:grpc, Types::VirtualNodeConnectionPool::Grpc)
    VirtualNodeConnectionPool.add_member_subclass(:http, Types::VirtualNodeConnectionPool::Http)
    VirtualNodeConnectionPool.add_member_subclass(:http2, Types::VirtualNodeConnectionPool::Http2)
    VirtualNodeConnectionPool.add_member_subclass(:tcp, Types::VirtualNodeConnectionPool::Tcp)
    VirtualNodeConnectionPool.add_member_subclass(:unknown, Types::VirtualNodeConnectionPool::Unknown)
    VirtualNodeConnectionPool.struct_class = Types::VirtualNodeConnectionPool

    VirtualNodeData.add_member(:mesh_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "meshName"))
    VirtualNodeData.add_member(:metadata, Shapes::ShapeRef.new(shape: ResourceMetadata, required: true, location_name: "metadata"))
    VirtualNodeData.add_member(:spec, Shapes::ShapeRef.new(shape: VirtualNodeSpec, required: true, location_name: "spec"))
    VirtualNodeData.add_member(:status, Shapes::ShapeRef.new(shape: VirtualNodeStatus, required: true, location_name: "status"))
    VirtualNodeData.add_member(:virtual_node_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "virtualNodeName"))
    VirtualNodeData.struct_class = Types::VirtualNodeData

    VirtualNodeGrpcConnectionPool.add_member(:max_requests, Shapes::ShapeRef.new(shape: MaxRequests, required: true, location_name: "maxRequests"))
    VirtualNodeGrpcConnectionPool.struct_class = Types::VirtualNodeGrpcConnectionPool

    VirtualNodeHttp2ConnectionPool.add_member(:max_requests, Shapes::ShapeRef.new(shape: MaxRequests, required: true, location_name: "maxRequests"))
    VirtualNodeHttp2ConnectionPool.struct_class = Types::VirtualNodeHttp2ConnectionPool

    VirtualNodeHttpConnectionPool.add_member(:max_connections, Shapes::ShapeRef.new(shape: MaxConnections, required: true, location_name: "maxConnections"))
    VirtualNodeHttpConnectionPool.add_member(:max_pending_requests, Shapes::ShapeRef.new(shape: MaxPendingRequests, location_name: "maxPendingRequests", metadata: {"box"=>true}))
    VirtualNodeHttpConnectionPool.struct_class = Types::VirtualNodeHttpConnectionPool

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

    VirtualNodeTcpConnectionPool.add_member(:max_connections, Shapes::ShapeRef.new(shape: MaxConnections, required: true, location_name: "maxConnections"))
    VirtualNodeTcpConnectionPool.struct_class = Types::VirtualNodeTcpConnectionPool

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
    VirtualServiceProvider.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VirtualServiceProvider.add_member_subclass(:virtual_node, Types::VirtualServiceProvider::VirtualNode)
    VirtualServiceProvider.add_member_subclass(:virtual_router, Types::VirtualServiceProvider::VirtualRouter)
    VirtualServiceProvider.add_member_subclass(:unknown, Types::VirtualServiceProvider::Unknown)
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

    WeightedTarget.add_member(:port, Shapes::ShapeRef.new(shape: ListenerPort, location_name: "port"))
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
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_mesh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMesh"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes"
        o.input = Shapes::ShapeRef.new(shape: CreateMeshInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMeshOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRoute"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes"
        o.input = Shapes::ShapeRef.new(shape: CreateRouteInput)
        o.output = Shapes::ShapeRef.new(shape: CreateRouteOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_virtual_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVirtualGateway"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateways"
        o.input = Shapes::ShapeRef.new(shape: CreateVirtualGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: CreateVirtualGatewayOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_virtual_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVirtualNode"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualNodes"
        o.input = Shapes::ShapeRef.new(shape: CreateVirtualNodeInput)
        o.output = Shapes::ShapeRef.new(shape: CreateVirtualNodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_virtual_router, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVirtualRouter"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouters"
        o.input = Shapes::ShapeRef.new(shape: CreateVirtualRouterInput)
        o.output = Shapes::ShapeRef.new(shape: CreateVirtualRouterOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_virtual_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVirtualService"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualServices"
        o.input = Shapes::ShapeRef.new(shape: CreateVirtualServiceInput)
        o.output = Shapes::ShapeRef.new(shape: CreateVirtualServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_gateway_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGatewayRoute"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGatewayRouteInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteGatewayRouteOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_mesh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMesh"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20190125/meshes/{meshName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMeshInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMeshOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRoute"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRouteInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteRouteOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_virtual_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVirtualGateway"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVirtualGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteVirtualGatewayOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_virtual_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVirtualNode"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVirtualNodeInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteVirtualNodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_virtual_router, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVirtualRouter"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVirtualRouterInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteVirtualRouterOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_virtual_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVirtualService"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVirtualServiceInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteVirtualServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:describe_gateway_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGatewayRoute"
        o.http_method = "GET"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeGatewayRouteInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeGatewayRouteOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:describe_mesh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMesh"
        o.http_method = "GET"
        o.http_request_uri = "/v20190125/meshes/{meshName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeMeshInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeMeshOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:describe_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRoute"
        o.http_method = "GET"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRouteInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeRouteOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:describe_virtual_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVirtualGateway"
        o.http_method = "GET"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeVirtualGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeVirtualGatewayOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:describe_virtual_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVirtualNode"
        o.http_method = "GET"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeVirtualNodeInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeVirtualNodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:describe_virtual_router, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVirtualRouter"
        o.http_method = "GET"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeVirtualRouterInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeVirtualRouterOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:describe_virtual_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVirtualService"
        o.http_method = "GET"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeVirtualServiceInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeVirtualServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:list_gateway_routes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGatewayRoutes"
        o.http_method = "GET"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes"
        o.input = Shapes::ShapeRef.new(shape: ListGatewayRoutesInput)
        o.output = Shapes::ShapeRef.new(shape: ListGatewayRoutesOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
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
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
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
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
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
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
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
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
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
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
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
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
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
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
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
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/untag"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_gateway_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGatewayRoute"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGatewayRouteInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGatewayRouteOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_mesh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMesh"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMeshInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMeshOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_route, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRoute"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRouteInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateRouteOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_virtual_gateway, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVirtualGateway"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateVirtualGatewayInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateVirtualGatewayOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_virtual_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVirtualNode"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateVirtualNodeInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateVirtualNodeOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_virtual_router, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVirtualRouter"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateVirtualRouterInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateVirtualRouterOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:update_virtual_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVirtualService"
        o.http_method = "PUT"
        o.http_request_uri = "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateVirtualServiceInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateVirtualServiceOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)
    end

  end
end
