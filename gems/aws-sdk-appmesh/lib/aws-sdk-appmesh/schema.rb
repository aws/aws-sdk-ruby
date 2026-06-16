# frozen_string_literal: true

# This is generated code!

module Aws::AppMesh
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessLog = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#AccessLog", name: "AccessLog")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#Arn", name: "Arn")
    AwsCloudMapInstanceAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#AwsCloudMapInstanceAttribute", name: "AwsCloudMapInstanceAttribute")
    AwsCloudMapInstanceAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#AwsCloudMapInstanceAttributeKey", name: "AwsCloudMapInstanceAttributeKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9!-~]+$"})
    AwsCloudMapInstanceAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#AwsCloudMapInstanceAttributeValue", name: "AwsCloudMapInstanceAttributeValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([a-zA-Z0-9!-~][ \ta-zA-Z0-9!-~]*){0,1}[a-zA-Z0-9!-~]{0,1}$"})
    AwsCloudMapInstanceAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#AwsCloudMapInstanceAttributes", name: "AwsCloudMapInstanceAttributes")
    AwsCloudMapName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#AwsCloudMapName", name: "AwsCloudMapName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    AwsCloudMapServiceDiscovery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#AwsCloudMapServiceDiscovery", name: "AwsCloudMapServiceDiscovery")
    Backend = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#Backend", name: "Backend")
    BackendDefaults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#BackendDefaults", name: "BackendDefaults")
    Backends = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#Backends", name: "Backends")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CertificateAuthorityArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#CertificateAuthorityArns", name: "CertificateAuthorityArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    ClientPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ClientPolicy", name: "ClientPolicy")
    ClientPolicyTls = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ClientPolicyTls", name: "ClientPolicyTls")
    ClientTlsCertificate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#ClientTlsCertificate", name: "ClientTlsCertificate")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateGatewayRouteOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#CreateGatewayRouteOperationInput", name: "CreateGatewayRouteOperationInput")
    CreateGatewayRouteOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#CreateGatewayRouteOperationOutput", name: "CreateGatewayRouteOperationOutput")
    CreateMeshOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#CreateMeshOperationInput", name: "CreateMeshOperationInput")
    CreateMeshOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#CreateMeshOperationOutput", name: "CreateMeshOperationOutput")
    CreateRouteOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#CreateRouteOperationInput", name: "CreateRouteOperationInput")
    CreateRouteOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#CreateRouteOperationOutput", name: "CreateRouteOperationOutput")
    CreateVirtualGatewayOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#CreateVirtualGatewayOperationInput", name: "CreateVirtualGatewayOperationInput")
    CreateVirtualGatewayOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#CreateVirtualGatewayOperationOutput", name: "CreateVirtualGatewayOperationOutput")
    CreateVirtualNodeOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#CreateVirtualNodeOperationInput", name: "CreateVirtualNodeOperationInput")
    CreateVirtualNodeOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#CreateVirtualNodeOperationOutput", name: "CreateVirtualNodeOperationOutput")
    CreateVirtualRouterOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#CreateVirtualRouterOperationInput", name: "CreateVirtualRouterOperationInput")
    CreateVirtualRouterOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#CreateVirtualRouterOperationOutput", name: "CreateVirtualRouterOperationOutput")
    CreateVirtualServiceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#CreateVirtualServiceOperationInput", name: "CreateVirtualServiceOperationInput")
    CreateVirtualServiceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#CreateVirtualServiceOperationOutput", name: "CreateVirtualServiceOperationOutput")
    DefaultGatewayRouteRewrite = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#DefaultGatewayRouteRewrite", name: "DefaultGatewayRouteRewrite", traits: {"smithy.api#enum" => [{"value" => "ENABLED", "name" => "ENABLED"}, {"value" => "DISABLED", "name" => "DISABLED"}]})
    DeleteGatewayRouteOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DeleteGatewayRouteOperationInput", name: "DeleteGatewayRouteOperationInput")
    DeleteGatewayRouteOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DeleteGatewayRouteOperationOutput", name: "DeleteGatewayRouteOperationOutput")
    DeleteMeshOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DeleteMeshOperationInput", name: "DeleteMeshOperationInput")
    DeleteMeshOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DeleteMeshOperationOutput", name: "DeleteMeshOperationOutput")
    DeleteRouteOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DeleteRouteOperationInput", name: "DeleteRouteOperationInput")
    DeleteRouteOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DeleteRouteOperationOutput", name: "DeleteRouteOperationOutput")
    DeleteVirtualGatewayOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DeleteVirtualGatewayOperationInput", name: "DeleteVirtualGatewayOperationInput")
    DeleteVirtualGatewayOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DeleteVirtualGatewayOperationOutput", name: "DeleteVirtualGatewayOperationOutput")
    DeleteVirtualNodeOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DeleteVirtualNodeOperationInput", name: "DeleteVirtualNodeOperationInput")
    DeleteVirtualNodeOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DeleteVirtualNodeOperationOutput", name: "DeleteVirtualNodeOperationOutput")
    DeleteVirtualRouterOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DeleteVirtualRouterOperationInput", name: "DeleteVirtualRouterOperationInput")
    DeleteVirtualRouterOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DeleteVirtualRouterOperationOutput", name: "DeleteVirtualRouterOperationOutput")
    DeleteVirtualServiceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DeleteVirtualServiceOperationInput", name: "DeleteVirtualServiceOperationInput")
    DeleteVirtualServiceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DeleteVirtualServiceOperationOutput", name: "DeleteVirtualServiceOperationOutput")
    DescribeGatewayRouteOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DescribeGatewayRouteOperationInput", name: "DescribeGatewayRouteOperationInput")
    DescribeGatewayRouteOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DescribeGatewayRouteOperationOutput", name: "DescribeGatewayRouteOperationOutput")
    DescribeMeshOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DescribeMeshOperationInput", name: "DescribeMeshOperationInput")
    DescribeMeshOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DescribeMeshOperationOutput", name: "DescribeMeshOperationOutput")
    DescribeRouteOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DescribeRouteOperationInput", name: "DescribeRouteOperationInput")
    DescribeRouteOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DescribeRouteOperationOutput", name: "DescribeRouteOperationOutput")
    DescribeVirtualGatewayOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DescribeVirtualGatewayOperationInput", name: "DescribeVirtualGatewayOperationInput")
    DescribeVirtualGatewayOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DescribeVirtualGatewayOperationOutput", name: "DescribeVirtualGatewayOperationOutput")
    DescribeVirtualNodeOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DescribeVirtualNodeOperationInput", name: "DescribeVirtualNodeOperationInput")
    DescribeVirtualNodeOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DescribeVirtualNodeOperationOutput", name: "DescribeVirtualNodeOperationOutput")
    DescribeVirtualRouterOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DescribeVirtualRouterOperationInput", name: "DescribeVirtualRouterOperationInput")
    DescribeVirtualRouterOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DescribeVirtualRouterOperationOutput", name: "DescribeVirtualRouterOperationOutput")
    DescribeVirtualServiceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DescribeVirtualServiceOperationInput", name: "DescribeVirtualServiceOperationInput")
    DescribeVirtualServiceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DescribeVirtualServiceOperationOutput", name: "DescribeVirtualServiceOperationOutput")
    DnsResponseType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#DnsResponseType", name: "DnsResponseType", traits: {"smithy.api#enum" => [{"value" => "LOADBALANCER", "name" => "LOADBALANCER"}, {"value" => "ENDPOINTS", "name" => "ENDPOINTS"}]})
    DnsServiceDiscovery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#DnsServiceDiscovery", name: "DnsServiceDiscovery")
    Duration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#Duration", name: "Duration")
    DurationUnit = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#DurationUnit", name: "DurationUnit", traits: {"smithy.api#enum" => [{"value" => "s", "name" => "S"}, {"value" => "ms", "name" => "MS"}]})
    DurationValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#DurationValue", name: "DurationValue", traits: {"smithy.api#range" => {"min" => 0}})
    EgressFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#EgressFilter", name: "EgressFilter")
    EgressFilterType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#EgressFilterType", name: "EgressFilterType", traits: {"smithy.api#enum" => [{"value" => "ALLOW_ALL", "name" => "ALLOW_ALL"}, {"value" => "DROP_ALL", "name" => "DROP_ALL"}]})
    ExactHostName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#ExactHostName", name: "ExactHostName", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}})
    FileAccessLog = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#FileAccessLog", name: "FileAccessLog")
    FilePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#FilePath", name: "FilePath", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GatewayRouteData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GatewayRouteData", name: "GatewayRouteData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.appmesh#GatewayRoute"}]})
    GatewayRouteHostnameMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GatewayRouteHostnameMatch", name: "GatewayRouteHostnameMatch")
    GatewayRouteHostnameRewrite = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GatewayRouteHostnameRewrite", name: "GatewayRouteHostnameRewrite")
    GatewayRouteList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#GatewayRouteList", name: "GatewayRouteList")
    GatewayRoutePriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#GatewayRoutePriority", name: "GatewayRoutePriority", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000}})
    GatewayRouteRef = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GatewayRouteRef", name: "GatewayRouteRef")
    GatewayRouteSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GatewayRouteSpec", name: "GatewayRouteSpec")
    GatewayRouteStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GatewayRouteStatus", name: "GatewayRouteStatus")
    GatewayRouteStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#GatewayRouteStatusCode", name: "GatewayRouteStatusCode", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "INACTIVE", "name" => "INACTIVE"}, {"value" => "DELETED", "name" => "DELETED"}]})
    GatewayRouteTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GatewayRouteTarget", name: "GatewayRouteTarget")
    GatewayRouteVirtualService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GatewayRouteVirtualService", name: "GatewayRouteVirtualService")
    GrpcGatewayRoute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GrpcGatewayRoute", name: "GrpcGatewayRoute")
    GrpcGatewayRouteAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GrpcGatewayRouteAction", name: "GrpcGatewayRouteAction")
    GrpcGatewayRouteMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GrpcGatewayRouteMatch", name: "GrpcGatewayRouteMatch")
    GrpcGatewayRouteMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GrpcGatewayRouteMetadata", name: "GrpcGatewayRouteMetadata")
    GrpcGatewayRouteMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#GrpcGatewayRouteMetadataList", name: "GrpcGatewayRouteMetadataList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    GrpcGatewayRouteRewrite = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GrpcGatewayRouteRewrite", name: "GrpcGatewayRouteRewrite")
    GrpcMetadataMatchMethod = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#GrpcMetadataMatchMethod", name: "GrpcMetadataMatchMethod")
    GrpcRetryPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GrpcRetryPolicy", name: "GrpcRetryPolicy")
    GrpcRetryPolicyEvent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#GrpcRetryPolicyEvent", name: "GrpcRetryPolicyEvent", traits: {"smithy.api#enum" => [{"value" => "cancelled", "name" => "CANCELLED"}, {"value" => "deadline-exceeded", "name" => "DEADLINE_EXCEEDED"}, {"value" => "internal", "name" => "INTERNAL"}, {"value" => "resource-exhausted", "name" => "RESOURCE_EXHAUSTED"}, {"value" => "unavailable", "name" => "UNAVAILABLE"}]})
    GrpcRetryPolicyEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#GrpcRetryPolicyEvents", name: "GrpcRetryPolicyEvents", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    GrpcRoute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GrpcRoute", name: "GrpcRoute")
    GrpcRouteAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GrpcRouteAction", name: "GrpcRouteAction")
    GrpcRouteMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GrpcRouteMatch", name: "GrpcRouteMatch")
    GrpcRouteMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GrpcRouteMetadata", name: "GrpcRouteMetadata")
    GrpcRouteMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#GrpcRouteMetadataList", name: "GrpcRouteMetadataList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    GrpcRouteMetadataMatchMethod = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#GrpcRouteMetadataMatchMethod", name: "GrpcRouteMetadataMatchMethod")
    GrpcTimeout = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#GrpcTimeout", name: "GrpcTimeout")
    HeaderMatch = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#HeaderMatch", name: "HeaderMatch", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    HeaderMatchMethod = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#HeaderMatchMethod", name: "HeaderMatchMethod")
    HeaderName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#HeaderName", name: "HeaderName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    HealthCheckIntervalMillis = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#HealthCheckIntervalMillis", name: "HealthCheckIntervalMillis", traits: {"smithy.api#range" => {"min" => 5000, "max" => 300000}})
    HealthCheckPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#HealthCheckPolicy", name: "HealthCheckPolicy")
    HealthCheckThreshold = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#HealthCheckThreshold", name: "HealthCheckThreshold", traits: {"smithy.api#range" => {"min" => 2, "max" => 10}})
    HealthCheckTimeoutMillis = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#HealthCheckTimeoutMillis", name: "HealthCheckTimeoutMillis", traits: {"smithy.api#range" => {"min" => 2000, "max" => 60000}})
    Hostname = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#Hostname", name: "Hostname")
    HttpGatewayRoute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#HttpGatewayRoute", name: "HttpGatewayRoute")
    HttpGatewayRouteAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#HttpGatewayRouteAction", name: "HttpGatewayRouteAction")
    HttpGatewayRouteHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#HttpGatewayRouteHeader", name: "HttpGatewayRouteHeader")
    HttpGatewayRouteHeaders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#HttpGatewayRouteHeaders", name: "HttpGatewayRouteHeaders", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    HttpGatewayRouteMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#HttpGatewayRouteMatch", name: "HttpGatewayRouteMatch")
    HttpGatewayRoutePathRewrite = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#HttpGatewayRoutePathRewrite", name: "HttpGatewayRoutePathRewrite")
    HttpGatewayRoutePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#HttpGatewayRoutePrefix", name: "HttpGatewayRoutePrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    HttpGatewayRoutePrefixRewrite = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#HttpGatewayRoutePrefixRewrite", name: "HttpGatewayRoutePrefixRewrite")
    HttpGatewayRouteRewrite = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#HttpGatewayRouteRewrite", name: "HttpGatewayRouteRewrite")
    HttpMethod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#HttpMethod", name: "HttpMethod", traits: {"smithy.api#enum" => [{"value" => "GET", "name" => "GET"}, {"value" => "HEAD", "name" => "HEAD"}, {"value" => "POST", "name" => "POST"}, {"value" => "PUT", "name" => "PUT"}, {"value" => "DELETE", "name" => "DELETE"}, {"value" => "CONNECT", "name" => "CONNECT"}, {"value" => "OPTIONS", "name" => "OPTIONS"}, {"value" => "TRACE", "name" => "TRACE"}, {"value" => "PATCH", "name" => "PATCH"}]})
    HttpPathExact = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#HttpPathExact", name: "HttpPathExact", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    HttpPathMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#HttpPathMatch", name: "HttpPathMatch")
    HttpPathRegex = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#HttpPathRegex", name: "HttpPathRegex", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    HttpQueryParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#HttpQueryParameter", name: "HttpQueryParameter")
    HttpQueryParameters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#HttpQueryParameters", name: "HttpQueryParameters", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    HttpRetryPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#HttpRetryPolicy", name: "HttpRetryPolicy")
    HttpRetryPolicyEvent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#HttpRetryPolicyEvent", name: "HttpRetryPolicyEvent", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    HttpRetryPolicyEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#HttpRetryPolicyEvents", name: "HttpRetryPolicyEvents", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    HttpRoute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#HttpRoute", name: "HttpRoute")
    HttpRouteAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#HttpRouteAction", name: "HttpRouteAction")
    HttpRouteHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#HttpRouteHeader", name: "HttpRouteHeader")
    HttpRouteHeaders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#HttpRouteHeaders", name: "HttpRouteHeaders", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    HttpRouteMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#HttpRouteMatch", name: "HttpRouteMatch")
    HttpScheme = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#HttpScheme", name: "HttpScheme", traits: {"smithy.api#enum" => [{"value" => "http", "name" => "HTTP"}, {"value" => "https", "name" => "HTTPS"}]})
    HttpTimeout = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#HttpTimeout", name: "HttpTimeout")
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#InternalServerErrorException", name: "InternalServerErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    IpPreference = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#IpPreference", name: "IpPreference", traits: {"smithy.api#enum" => [{"value" => "IPv6_PREFERRED", "name" => "IPv6_PREFERRED"}, {"value" => "IPv4_PREFERRED", "name" => "IPv4_PREFERRED"}, {"value" => "IPv4_ONLY", "name" => "IPv4_ONLY"}, {"value" => "IPv6_ONLY", "name" => "IPv6_ONLY"}]})
    JsonFormat = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#JsonFormat", name: "JsonFormat")
    JsonFormatRef = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#JsonFormatRef", name: "JsonFormatRef")
    JsonKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#JsonKey", name: "JsonKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    JsonValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#JsonValue", name: "JsonValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListGatewayRoutesLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#ListGatewayRoutesLimit", name: "ListGatewayRoutesLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListGatewayRoutesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListGatewayRoutesOperationInput", name: "ListGatewayRoutesOperationInput")
    ListGatewayRoutesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListGatewayRoutesOperationOutput", name: "ListGatewayRoutesOperationOutput")
    ListMeshesLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#ListMeshesLimit", name: "ListMeshesLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListMeshesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListMeshesOperationInput", name: "ListMeshesOperationInput")
    ListMeshesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListMeshesOperationOutput", name: "ListMeshesOperationOutput")
    ListRoutesLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#ListRoutesLimit", name: "ListRoutesLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListRoutesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListRoutesOperationInput", name: "ListRoutesOperationInput")
    ListRoutesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListRoutesOperationOutput", name: "ListRoutesOperationOutput")
    ListTagsForResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListTagsForResourceOperationInput", name: "ListTagsForResourceOperationInput")
    ListTagsForResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListTagsForResourceOperationOutput", name: "ListTagsForResourceOperationOutput")
    ListVirtualGatewaysLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#ListVirtualGatewaysLimit", name: "ListVirtualGatewaysLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListVirtualGatewaysOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListVirtualGatewaysOperationInput", name: "ListVirtualGatewaysOperationInput")
    ListVirtualGatewaysOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListVirtualGatewaysOperationOutput", name: "ListVirtualGatewaysOperationOutput")
    ListVirtualNodesLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#ListVirtualNodesLimit", name: "ListVirtualNodesLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListVirtualNodesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListVirtualNodesOperationInput", name: "ListVirtualNodesOperationInput")
    ListVirtualNodesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListVirtualNodesOperationOutput", name: "ListVirtualNodesOperationOutput")
    ListVirtualRoutersLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#ListVirtualRoutersLimit", name: "ListVirtualRoutersLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListVirtualRoutersOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListVirtualRoutersOperationInput", name: "ListVirtualRoutersOperationInput")
    ListVirtualRoutersOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListVirtualRoutersOperationOutput", name: "ListVirtualRoutersOperationOutput")
    ListVirtualServicesLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#ListVirtualServicesLimit", name: "ListVirtualServicesLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListVirtualServicesOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListVirtualServicesOperationInput", name: "ListVirtualServicesOperationInput")
    ListVirtualServicesOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListVirtualServicesOperationOutput", name: "ListVirtualServicesOperationOutput")
    Listener = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#Listener", name: "Listener")
    ListenerPort = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#ListenerPort", name: "ListenerPort", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    ListenerTimeout = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#ListenerTimeout", name: "ListenerTimeout")
    ListenerTls = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListenerTls", name: "ListenerTls")
    ListenerTlsAcmCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListenerTlsAcmCertificate", name: "ListenerTlsAcmCertificate")
    ListenerTlsCertificate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#ListenerTlsCertificate", name: "ListenerTlsCertificate")
    ListenerTlsFileCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListenerTlsFileCertificate", name: "ListenerTlsFileCertificate")
    ListenerTlsMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#ListenerTlsMode", name: "ListenerTlsMode", traits: {"smithy.api#enum" => [{"value" => "STRICT", "name" => "STRICT"}, {"value" => "PERMISSIVE", "name" => "PERMISSIVE"}, {"value" => "DISABLED", "name" => "DISABLED"}]})
    ListenerTlsSdsCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListenerTlsSdsCertificate", name: "ListenerTlsSdsCertificate")
    ListenerTlsValidationContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ListenerTlsValidationContext", name: "ListenerTlsValidationContext")
    ListenerTlsValidationContextTrust = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#ListenerTlsValidationContextTrust", name: "ListenerTlsValidationContextTrust")
    Listeners = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#Listeners", name: "Listeners")
    Logging = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#Logging", name: "Logging")
    LoggingFormat = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#LoggingFormat", name: "LoggingFormat")
    MatchRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#MatchRange", name: "MatchRange")
    MaxConnections = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#MaxConnections", name: "MaxConnections", traits: {"smithy.api#range" => {"min" => 1}})
    MaxPendingRequests = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#MaxPendingRequests", name: "MaxPendingRequests", traits: {"smithy.api#range" => {"min" => 1}})
    MaxRequests = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#MaxRequests", name: "MaxRequests", traits: {"smithy.api#range" => {"min" => 1}})
    MaxRetries = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#MaxRetries", name: "MaxRetries", traits: {"smithy.api#range" => {"min" => 0}})
    MeshData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#MeshData", name: "MeshData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.appmesh#Mesh"}]})
    MeshList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#MeshList", name: "MeshList")
    MeshRef = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#MeshRef", name: "MeshRef")
    MeshServiceDiscovery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#MeshServiceDiscovery", name: "MeshServiceDiscovery")
    MeshSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#MeshSpec", name: "MeshSpec")
    MeshStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#MeshStatus", name: "MeshStatus")
    MeshStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#MeshStatusCode", name: "MeshStatusCode", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "INACTIVE", "name" => "INACTIVE"}, {"value" => "DELETED", "name" => "DELETED"}]})
    MethodName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#MethodName", name: "MethodName", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OutlierDetection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#OutlierDetection", name: "OutlierDetection")
    OutlierDetectionMaxEjectionPercent = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#OutlierDetectionMaxEjectionPercent", name: "OutlierDetectionMaxEjectionPercent", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    OutlierDetectionMaxServerErrors = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#OutlierDetectionMaxServerErrors", name: "OutlierDetectionMaxServerErrors", traits: {"smithy.api#range" => {"min" => 1}})
    PercentInt = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#PercentInt", name: "PercentInt", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    PortMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#PortMapping", name: "PortMapping")
    PortNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#PortNumber", name: "PortNumber", traits: {"smithy.api#range" => {"min" => 1, "max" => 65535}})
    PortProtocol = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#PortProtocol", name: "PortProtocol", traits: {"smithy.api#enum" => [{"value" => "http", "name" => "HTTP"}, {"value" => "tcp", "name" => "TCP"}, {"value" => "http2", "name" => "HTTP2"}, {"value" => "grpc", "name" => "GRPC"}]})
    PortSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#PortSet", name: "PortSet", traits: {"smithy.api#uniqueItems" => {}})
    QueryParameterMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#QueryParameterMatch", name: "QueryParameterMatch")
    QueryParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#QueryParameterName", name: "QueryParameterName")
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ResourceMetadata", name: "ResourceMetadata")
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#ResourceName", name: "ResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    RouteData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#RouteData", name: "RouteData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.appmesh#Route"}]})
    RouteList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#RouteList", name: "RouteList")
    RoutePriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#RoutePriority", name: "RoutePriority", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000}})
    RouteRef = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#RouteRef", name: "RouteRef")
    RouteSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#RouteSpec", name: "RouteSpec")
    RouteStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#RouteStatus", name: "RouteStatus")
    RouteStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#RouteStatusCode", name: "RouteStatusCode", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "INACTIVE", "name" => "INACTIVE"}, {"value" => "DELETED", "name" => "DELETED"}]})
    SdsSecretName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#SdsSecretName", name: "SdsSecretName")
    ServiceDiscovery = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#ServiceDiscovery", name: "ServiceDiscovery")
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#ServiceName", name: "ServiceName")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503, "smithy.api#retryable" => {}})
    SubjectAlternativeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#SubjectAlternativeName", name: "SubjectAlternativeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 254}})
    SubjectAlternativeNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#SubjectAlternativeNameList", name: "SubjectAlternativeNameList")
    SubjectAlternativeNameMatchers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#SubjectAlternativeNameMatchers", name: "SubjectAlternativeNameMatchers")
    SubjectAlternativeNames = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#SubjectAlternativeNames", name: "SubjectAlternativeNames")
    SuffixHostname = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#SuffixHostname", name: "SuffixHostname", traits: {"smithy.api#length" => {"min" => 1, "max" => 253}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagRef = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#TagRef", name: "TagRef")
    TagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#TagResourceOperationInput", name: "TagResourceOperationInput")
    TagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#TagResourceOperationOutput", name: "TagResourceOperationOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#TagsLimit", name: "TagsLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    TcpRetryPolicyEvent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#TcpRetryPolicyEvent", name: "TcpRetryPolicyEvent", traits: {"smithy.api#enum" => [{"value" => "connection-error", "name" => "CONNECTION_ERROR"}]})
    TcpRetryPolicyEvents = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#TcpRetryPolicyEvents", name: "TcpRetryPolicyEvents", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    TcpRoute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#TcpRoute", name: "TcpRoute")
    TcpRouteAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#TcpRouteAction", name: "TcpRouteAction")
    TcpRouteMatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#TcpRouteMatch", name: "TcpRouteMatch")
    TcpTimeout = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#TcpTimeout", name: "TcpTimeout")
    TextFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#TextFormat", name: "TextFormat", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    TlsValidationContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#TlsValidationContext", name: "TlsValidationContext")
    TlsValidationContextAcmTrust = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#TlsValidationContextAcmTrust", name: "TlsValidationContextAcmTrust")
    TlsValidationContextFileTrust = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#TlsValidationContextFileTrust", name: "TlsValidationContextFileTrust")
    TlsValidationContextSdsTrust = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#TlsValidationContextSdsTrust", name: "TlsValidationContextSdsTrust")
    TlsValidationContextTrust = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#TlsValidationContextTrust", name: "TlsValidationContextTrust")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#UntagResourceOperationInput", name: "UntagResourceOperationInput")
    UntagResourceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#UntagResourceOperationOutput", name: "UntagResourceOperationOutput")
    UpdateGatewayRouteOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#UpdateGatewayRouteOperationInput", name: "UpdateGatewayRouteOperationInput")
    UpdateGatewayRouteOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#UpdateGatewayRouteOperationOutput", name: "UpdateGatewayRouteOperationOutput")
    UpdateMeshOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#UpdateMeshOperationInput", name: "UpdateMeshOperationInput")
    UpdateMeshOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#UpdateMeshOperationOutput", name: "UpdateMeshOperationOutput")
    UpdateRouteOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#UpdateRouteOperationInput", name: "UpdateRouteOperationInput")
    UpdateRouteOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#UpdateRouteOperationOutput", name: "UpdateRouteOperationOutput")
    UpdateVirtualGatewayOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#UpdateVirtualGatewayOperationInput", name: "UpdateVirtualGatewayOperationInput")
    UpdateVirtualGatewayOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#UpdateVirtualGatewayOperationOutput", name: "UpdateVirtualGatewayOperationOutput")
    UpdateVirtualNodeOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#UpdateVirtualNodeOperationInput", name: "UpdateVirtualNodeOperationInput")
    UpdateVirtualNodeOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#UpdateVirtualNodeOperationOutput", name: "UpdateVirtualNodeOperationOutput")
    UpdateVirtualRouterOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#UpdateVirtualRouterOperationInput", name: "UpdateVirtualRouterOperationInput")
    UpdateVirtualRouterOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#UpdateVirtualRouterOperationOutput", name: "UpdateVirtualRouterOperationOutput")
    UpdateVirtualServiceOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#UpdateVirtualServiceOperationInput", name: "UpdateVirtualServiceOperationInput")
    UpdateVirtualServiceOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#UpdateVirtualServiceOperationOutput", name: "UpdateVirtualServiceOperationOutput")
    VirtualGatewayAccessLog = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#VirtualGatewayAccessLog", name: "VirtualGatewayAccessLog")
    VirtualGatewayBackendDefaults = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayBackendDefaults", name: "VirtualGatewayBackendDefaults")
    VirtualGatewayCertificateAuthorityArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#VirtualGatewayCertificateAuthorityArns", name: "VirtualGatewayCertificateAuthorityArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    VirtualGatewayClientPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayClientPolicy", name: "VirtualGatewayClientPolicy")
    VirtualGatewayClientPolicyTls = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayClientPolicyTls", name: "VirtualGatewayClientPolicyTls")
    VirtualGatewayClientTlsCertificate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#VirtualGatewayClientTlsCertificate", name: "VirtualGatewayClientTlsCertificate")
    VirtualGatewayConnectionPool = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#VirtualGatewayConnectionPool", name: "VirtualGatewayConnectionPool")
    VirtualGatewayData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayData", name: "VirtualGatewayData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.appmesh#VirtualGateway"}]})
    VirtualGatewayFileAccessLog = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayFileAccessLog", name: "VirtualGatewayFileAccessLog")
    VirtualGatewayGrpcConnectionPool = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayGrpcConnectionPool", name: "VirtualGatewayGrpcConnectionPool")
    VirtualGatewayHealthCheckIntervalMillis = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#VirtualGatewayHealthCheckIntervalMillis", name: "VirtualGatewayHealthCheckIntervalMillis", traits: {"smithy.api#range" => {"min" => 5000, "max" => 300000}})
    VirtualGatewayHealthCheckPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayHealthCheckPolicy", name: "VirtualGatewayHealthCheckPolicy")
    VirtualGatewayHealthCheckThreshold = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#VirtualGatewayHealthCheckThreshold", name: "VirtualGatewayHealthCheckThreshold", traits: {"smithy.api#range" => {"min" => 2, "max" => 10}})
    VirtualGatewayHealthCheckTimeoutMillis = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appmesh#VirtualGatewayHealthCheckTimeoutMillis", name: "VirtualGatewayHealthCheckTimeoutMillis", traits: {"smithy.api#range" => {"min" => 2000, "max" => 60000}})
    VirtualGatewayHttp2ConnectionPool = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayHttp2ConnectionPool", name: "VirtualGatewayHttp2ConnectionPool")
    VirtualGatewayHttpConnectionPool = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayHttpConnectionPool", name: "VirtualGatewayHttpConnectionPool")
    VirtualGatewayList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#VirtualGatewayList", name: "VirtualGatewayList")
    VirtualGatewayListener = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayListener", name: "VirtualGatewayListener")
    VirtualGatewayListenerTls = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayListenerTls", name: "VirtualGatewayListenerTls")
    VirtualGatewayListenerTlsAcmCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayListenerTlsAcmCertificate", name: "VirtualGatewayListenerTlsAcmCertificate")
    VirtualGatewayListenerTlsCertificate = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#VirtualGatewayListenerTlsCertificate", name: "VirtualGatewayListenerTlsCertificate")
    VirtualGatewayListenerTlsFileCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayListenerTlsFileCertificate", name: "VirtualGatewayListenerTlsFileCertificate")
    VirtualGatewayListenerTlsMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#VirtualGatewayListenerTlsMode", name: "VirtualGatewayListenerTlsMode", traits: {"smithy.api#enum" => [{"value" => "STRICT", "name" => "STRICT"}, {"value" => "PERMISSIVE", "name" => "PERMISSIVE"}, {"value" => "DISABLED", "name" => "DISABLED"}]})
    VirtualGatewayListenerTlsSdsCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayListenerTlsSdsCertificate", name: "VirtualGatewayListenerTlsSdsCertificate")
    VirtualGatewayListenerTlsValidationContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayListenerTlsValidationContext", name: "VirtualGatewayListenerTlsValidationContext")
    VirtualGatewayListenerTlsValidationContextTrust = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#VirtualGatewayListenerTlsValidationContextTrust", name: "VirtualGatewayListenerTlsValidationContextTrust")
    VirtualGatewayListeners = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#VirtualGatewayListeners", name: "VirtualGatewayListeners")
    VirtualGatewayLogging = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayLogging", name: "VirtualGatewayLogging")
    VirtualGatewayPortMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayPortMapping", name: "VirtualGatewayPortMapping")
    VirtualGatewayPortProtocol = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#VirtualGatewayPortProtocol", name: "VirtualGatewayPortProtocol", traits: {"smithy.api#enum" => [{"value" => "http", "name" => "HTTP"}, {"value" => "http2", "name" => "HTTP2"}, {"value" => "grpc", "name" => "GRPC"}]})
    VirtualGatewayRef = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayRef", name: "VirtualGatewayRef")
    VirtualGatewaySdsSecretName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#VirtualGatewaySdsSecretName", name: "VirtualGatewaySdsSecretName")
    VirtualGatewaySpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewaySpec", name: "VirtualGatewaySpec")
    VirtualGatewayStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayStatus", name: "VirtualGatewayStatus")
    VirtualGatewayStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#VirtualGatewayStatusCode", name: "VirtualGatewayStatusCode", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "INACTIVE", "name" => "INACTIVE"}, {"value" => "DELETED", "name" => "DELETED"}]})
    VirtualGatewayTlsValidationContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayTlsValidationContext", name: "VirtualGatewayTlsValidationContext")
    VirtualGatewayTlsValidationContextAcmTrust = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayTlsValidationContextAcmTrust", name: "VirtualGatewayTlsValidationContextAcmTrust")
    VirtualGatewayTlsValidationContextFileTrust = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayTlsValidationContextFileTrust", name: "VirtualGatewayTlsValidationContextFileTrust")
    VirtualGatewayTlsValidationContextSdsTrust = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualGatewayTlsValidationContextSdsTrust", name: "VirtualGatewayTlsValidationContextSdsTrust")
    VirtualGatewayTlsValidationContextTrust = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#VirtualGatewayTlsValidationContextTrust", name: "VirtualGatewayTlsValidationContextTrust")
    VirtualNodeConnectionPool = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#VirtualNodeConnectionPool", name: "VirtualNodeConnectionPool")
    VirtualNodeData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualNodeData", name: "VirtualNodeData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.appmesh#VirtualNode"}]})
    VirtualNodeGrpcConnectionPool = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualNodeGrpcConnectionPool", name: "VirtualNodeGrpcConnectionPool")
    VirtualNodeHttp2ConnectionPool = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualNodeHttp2ConnectionPool", name: "VirtualNodeHttp2ConnectionPool")
    VirtualNodeHttpConnectionPool = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualNodeHttpConnectionPool", name: "VirtualNodeHttpConnectionPool")
    VirtualNodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#VirtualNodeList", name: "VirtualNodeList")
    VirtualNodeRef = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualNodeRef", name: "VirtualNodeRef")
    VirtualNodeServiceProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualNodeServiceProvider", name: "VirtualNodeServiceProvider")
    VirtualNodeSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualNodeSpec", name: "VirtualNodeSpec")
    VirtualNodeStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualNodeStatus", name: "VirtualNodeStatus")
    VirtualNodeStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#VirtualNodeStatusCode", name: "VirtualNodeStatusCode", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "INACTIVE", "name" => "INACTIVE"}, {"value" => "DELETED", "name" => "DELETED"}]})
    VirtualNodeTcpConnectionPool = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualNodeTcpConnectionPool", name: "VirtualNodeTcpConnectionPool")
    VirtualRouterData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualRouterData", name: "VirtualRouterData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.appmesh#VirtualRouter"}]})
    VirtualRouterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#VirtualRouterList", name: "VirtualRouterList")
    VirtualRouterListener = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualRouterListener", name: "VirtualRouterListener")
    VirtualRouterListeners = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#VirtualRouterListeners", name: "VirtualRouterListeners")
    VirtualRouterRef = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualRouterRef", name: "VirtualRouterRef")
    VirtualRouterServiceProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualRouterServiceProvider", name: "VirtualRouterServiceProvider")
    VirtualRouterSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualRouterSpec", name: "VirtualRouterSpec")
    VirtualRouterStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualRouterStatus", name: "VirtualRouterStatus")
    VirtualRouterStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#VirtualRouterStatusCode", name: "VirtualRouterStatusCode", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "INACTIVE", "name" => "INACTIVE"}, {"value" => "DELETED", "name" => "DELETED"}]})
    VirtualServiceBackend = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualServiceBackend", name: "VirtualServiceBackend")
    VirtualServiceData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualServiceData", name: "VirtualServiceData", traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.appmesh#VirtualService"}]})
    VirtualServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#VirtualServiceList", name: "VirtualServiceList")
    VirtualServiceProvider = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.appmesh#VirtualServiceProvider", name: "VirtualServiceProvider")
    VirtualServiceRef = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualServiceRef", name: "VirtualServiceRef")
    VirtualServiceSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualServiceSpec", name: "VirtualServiceSpec")
    VirtualServiceStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#VirtualServiceStatus", name: "VirtualServiceStatus")
    VirtualServiceStatusCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appmesh#VirtualServiceStatusCode", name: "VirtualServiceStatusCode", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "INACTIVE", "name" => "INACTIVE"}, {"value" => "DELETED", "name" => "DELETED"}]})
    WeightedTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appmesh#WeightedTarget", name: "WeightedTarget")
    WeightedTargets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appmesh#WeightedTargets", name: "WeightedTargets", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})

    AccessLog.add_member(:file, Types::AccessLog::File, ::Smithy::Schema::Shapes::MemberShape.new(target: FileAccessLog, location_name: "file"))
    AccessLog.add_member(:unknown, Types::AccessLog::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AccessLog.type = Types::AccessLog
    AwsCloudMapInstanceAttribute.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCloudMapInstanceAttributeKey, location_name: "key", traits: {"smithy.api#required" => {}}))
    AwsCloudMapInstanceAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCloudMapInstanceAttributeValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    AwsCloudMapInstanceAttribute.type = Types::AwsCloudMapInstanceAttribute
    AwsCloudMapInstanceAttributes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCloudMapInstanceAttribute)
    AwsCloudMapServiceDiscovery.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCloudMapName, location_name: "namespaceName", traits: {"smithy.api#required" => {}}))
    AwsCloudMapServiceDiscovery.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCloudMapName, location_name: "serviceName", traits: {"smithy.api#required" => {}}))
    AwsCloudMapServiceDiscovery.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCloudMapInstanceAttributes, location_name: "attributes"))
    AwsCloudMapServiceDiscovery.add_member(:ip_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: IpPreference, location_name: "ipPreference"))
    AwsCloudMapServiceDiscovery.type = Types::AwsCloudMapServiceDiscovery
    Backend.add_member(:virtual_service, Types::Backend::VirtualService, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualServiceBackend, location_name: "virtualService"))
    Backend.add_member(:unknown, Types::Backend::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Backend.type = Types::Backend
    BackendDefaults.add_member(:client_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientPolicy, location_name: "clientPolicy"))
    BackendDefaults.type = Types::BackendDefaults
    Backends.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Backend)
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    BadRequestException.type = Types::BadRequestException
    CertificateAuthorityArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Arn)
    ClientPolicy.add_member(:tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientPolicyTls, location_name: "tls"))
    ClientPolicy.type = Types::ClientPolicy
    ClientPolicyTls.add_member(:enforce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "enforce", traits: {"smithy.api#default" => nil}))
    ClientPolicyTls.add_member(:ports, ::Smithy::Schema::Shapes::MemberShape.new(target: PortSet, location_name: "ports"))
    ClientPolicyTls.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientTlsCertificate, location_name: "certificate"))
    ClientPolicyTls.add_member(:validation, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsValidationContext, location_name: "validation", traits: {"smithy.api#required" => {}}))
    ClientPolicyTls.type = Types::ClientPolicyTls
    ClientTlsCertificate.add_member(:file, Types::ClientTlsCertificate::File, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerTlsFileCertificate, location_name: "file"))
    ClientTlsCertificate.add_member(:sds, Types::ClientTlsCertificate::Sds, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerTlsSdsCertificate, location_name: "sds"))
    ClientTlsCertificate.add_member(:unknown, Types::ClientTlsCertificate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ClientTlsCertificate.type = Types::ClientTlsCertificate
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ConflictException.type = Types::ConflictException
    CreateGatewayRouteOperationInput.add_member(:gateway_route_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "gatewayRouteName", traits: {"smithy.api#required" => {}}))
    CreateGatewayRouteOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateGatewayRouteOperationInput.add_member(:virtual_gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualGatewayName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateGatewayRouteOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteSpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    CreateGatewayRouteOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags"))
    CreateGatewayRouteOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateGatewayRouteOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    CreateGatewayRouteOperationInput.type = Types::CreateGatewayRouteOperationInput
    CreateGatewayRouteOperationOutput.add_member(:gateway_route, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteData, location_name: "gatewayRoute", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateGatewayRouteOperationOutput[:http_payload] = :gateway_route
    CreateGatewayRouteOperationOutput[:http_payload_member] = CreateGatewayRouteOperationOutput.member(:gateway_route)
    CreateGatewayRouteOperationOutput.type = Types::CreateGatewayRouteOperationOutput
    CreateMeshOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#required" => {}}))
    CreateMeshOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: MeshSpec, location_name: "spec"))
    CreateMeshOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags", traits: {"smithy.api#tags" => ["not-preview"]}))
    CreateMeshOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateMeshOperationInput.type = Types::CreateMeshOperationInput
    CreateMeshOperationOutput.add_member(:mesh, ::Smithy::Schema::Shapes::MemberShape.new(target: MeshData, location_name: "mesh", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateMeshOperationOutput[:http_payload] = :mesh
    CreateMeshOperationOutput[:http_payload_member] = CreateMeshOperationOutput.member(:mesh)
    CreateMeshOperationOutput.type = Types::CreateMeshOperationOutput
    CreateRouteOperationInput.add_member(:route_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "routeName", traits: {"smithy.api#required" => {}}))
    CreateRouteOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRouteOperationInput.add_member(:virtual_router_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualRouterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRouteOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    CreateRouteOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags", traits: {"smithy.api#tags" => ["not-preview"]}))
    CreateRouteOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateRouteOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    CreateRouteOperationInput.type = Types::CreateRouteOperationInput
    CreateRouteOperationOutput.add_member(:route, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteData, location_name: "route", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateRouteOperationOutput[:http_payload] = :route
    CreateRouteOperationOutput[:http_payload_member] = CreateRouteOperationOutput.member(:route)
    CreateRouteOperationOutput.type = Types::CreateRouteOperationOutput
    CreateVirtualGatewayOperationInput.add_member(:virtual_gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualGatewayName", traits: {"smithy.api#required" => {}}))
    CreateVirtualGatewayOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVirtualGatewayOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewaySpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    CreateVirtualGatewayOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags"))
    CreateVirtualGatewayOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateVirtualGatewayOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    CreateVirtualGatewayOperationInput.type = Types::CreateVirtualGatewayOperationInput
    CreateVirtualGatewayOperationOutput.add_member(:virtual_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayData, location_name: "virtualGateway", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateVirtualGatewayOperationOutput[:http_payload] = :virtual_gateway
    CreateVirtualGatewayOperationOutput[:http_payload_member] = CreateVirtualGatewayOperationOutput.member(:virtual_gateway)
    CreateVirtualGatewayOperationOutput.type = Types::CreateVirtualGatewayOperationOutput
    CreateVirtualNodeOperationInput.add_member(:virtual_node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualNodeName", traits: {"smithy.api#required" => {}}))
    CreateVirtualNodeOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVirtualNodeOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeSpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    CreateVirtualNodeOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags", traits: {"smithy.api#tags" => ["not-preview"]}))
    CreateVirtualNodeOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateVirtualNodeOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    CreateVirtualNodeOperationInput.type = Types::CreateVirtualNodeOperationInput
    CreateVirtualNodeOperationOutput.add_member(:virtual_node, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeData, location_name: "virtualNode", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateVirtualNodeOperationOutput[:http_payload] = :virtual_node
    CreateVirtualNodeOperationOutput[:http_payload_member] = CreateVirtualNodeOperationOutput.member(:virtual_node)
    CreateVirtualNodeOperationOutput.type = Types::CreateVirtualNodeOperationOutput
    CreateVirtualRouterOperationInput.add_member(:virtual_router_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualRouterName", traits: {"smithy.api#required" => {}}))
    CreateVirtualRouterOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVirtualRouterOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualRouterSpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    CreateVirtualRouterOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags", traits: {"smithy.api#tags" => ["not-preview"]}))
    CreateVirtualRouterOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateVirtualRouterOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    CreateVirtualRouterOperationInput.type = Types::CreateVirtualRouterOperationInput
    CreateVirtualRouterOperationOutput.add_member(:virtual_router, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualRouterData, location_name: "virtualRouter", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateVirtualRouterOperationOutput[:http_payload] = :virtual_router
    CreateVirtualRouterOperationOutput[:http_payload_member] = CreateVirtualRouterOperationOutput.member(:virtual_router)
    CreateVirtualRouterOperationOutput.type = Types::CreateVirtualRouterOperationOutput
    CreateVirtualServiceOperationInput.add_member(:virtual_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, location_name: "virtualServiceName", traits: {"smithy.api#required" => {}}))
    CreateVirtualServiceOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVirtualServiceOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualServiceSpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    CreateVirtualServiceOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags", traits: {"smithy.api#tags" => ["not-preview"]}))
    CreateVirtualServiceOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateVirtualServiceOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    CreateVirtualServiceOperationInput.type = Types::CreateVirtualServiceOperationInput
    CreateVirtualServiceOperationOutput.add_member(:virtual_service, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualServiceData, location_name: "virtualService", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateVirtualServiceOperationOutput[:http_payload] = :virtual_service
    CreateVirtualServiceOperationOutput[:http_payload_member] = CreateVirtualServiceOperationOutput.member(:virtual_service)
    CreateVirtualServiceOperationOutput.type = Types::CreateVirtualServiceOperationOutput
    DeleteGatewayRouteOperationInput.add_member(:gateway_route_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "gatewayRouteName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGatewayRouteOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGatewayRouteOperationInput.add_member(:virtual_gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualGatewayName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGatewayRouteOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    DeleteGatewayRouteOperationInput.type = Types::DeleteGatewayRouteOperationInput
    DeleteGatewayRouteOperationOutput.add_member(:gateway_route, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteData, location_name: "gatewayRoute", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteGatewayRouteOperationOutput[:http_payload] = :gateway_route
    DeleteGatewayRouteOperationOutput[:http_payload_member] = DeleteGatewayRouteOperationOutput.member(:gateway_route)
    DeleteGatewayRouteOperationOutput.type = Types::DeleteGatewayRouteOperationOutput
    DeleteMeshOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMeshOperationInput.type = Types::DeleteMeshOperationInput
    DeleteMeshOperationOutput.add_member(:mesh, ::Smithy::Schema::Shapes::MemberShape.new(target: MeshData, location_name: "mesh", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteMeshOperationOutput[:http_payload] = :mesh
    DeleteMeshOperationOutput[:http_payload_member] = DeleteMeshOperationOutput.member(:mesh)
    DeleteMeshOperationOutput.type = Types::DeleteMeshOperationOutput
    DeleteRouteOperationInput.add_member(:route_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "routeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteOperationInput.add_member(:virtual_router_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualRouterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRouteOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    DeleteRouteOperationInput.type = Types::DeleteRouteOperationInput
    DeleteRouteOperationOutput.add_member(:route, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteData, location_name: "route", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteRouteOperationOutput[:http_payload] = :route
    DeleteRouteOperationOutput[:http_payload_member] = DeleteRouteOperationOutput.member(:route)
    DeleteRouteOperationOutput.type = Types::DeleteRouteOperationOutput
    DeleteVirtualGatewayOperationInput.add_member(:virtual_gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualGatewayName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVirtualGatewayOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVirtualGatewayOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    DeleteVirtualGatewayOperationInput.type = Types::DeleteVirtualGatewayOperationInput
    DeleteVirtualGatewayOperationOutput.add_member(:virtual_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayData, location_name: "virtualGateway", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteVirtualGatewayOperationOutput[:http_payload] = :virtual_gateway
    DeleteVirtualGatewayOperationOutput[:http_payload_member] = DeleteVirtualGatewayOperationOutput.member(:virtual_gateway)
    DeleteVirtualGatewayOperationOutput.type = Types::DeleteVirtualGatewayOperationOutput
    DeleteVirtualNodeOperationInput.add_member(:virtual_node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualNodeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVirtualNodeOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVirtualNodeOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    DeleteVirtualNodeOperationInput.type = Types::DeleteVirtualNodeOperationInput
    DeleteVirtualNodeOperationOutput.add_member(:virtual_node, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeData, location_name: "virtualNode", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteVirtualNodeOperationOutput[:http_payload] = :virtual_node
    DeleteVirtualNodeOperationOutput[:http_payload_member] = DeleteVirtualNodeOperationOutput.member(:virtual_node)
    DeleteVirtualNodeOperationOutput.type = Types::DeleteVirtualNodeOperationOutput
    DeleteVirtualRouterOperationInput.add_member(:virtual_router_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualRouterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVirtualRouterOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVirtualRouterOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    DeleteVirtualRouterOperationInput.type = Types::DeleteVirtualRouterOperationInput
    DeleteVirtualRouterOperationOutput.add_member(:virtual_router, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualRouterData, location_name: "virtualRouter", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteVirtualRouterOperationOutput[:http_payload] = :virtual_router
    DeleteVirtualRouterOperationOutput[:http_payload_member] = DeleteVirtualRouterOperationOutput.member(:virtual_router)
    DeleteVirtualRouterOperationOutput.type = Types::DeleteVirtualRouterOperationOutput
    DeleteVirtualServiceOperationInput.add_member(:virtual_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, location_name: "virtualServiceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVirtualServiceOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVirtualServiceOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    DeleteVirtualServiceOperationInput.type = Types::DeleteVirtualServiceOperationInput
    DeleteVirtualServiceOperationOutput.add_member(:virtual_service, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualServiceData, location_name: "virtualService", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DeleteVirtualServiceOperationOutput[:http_payload] = :virtual_service
    DeleteVirtualServiceOperationOutput[:http_payload_member] = DeleteVirtualServiceOperationOutput.member(:virtual_service)
    DeleteVirtualServiceOperationOutput.type = Types::DeleteVirtualServiceOperationOutput
    DescribeGatewayRouteOperationInput.add_member(:gateway_route_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "gatewayRouteName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeGatewayRouteOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeGatewayRouteOperationInput.add_member(:virtual_gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualGatewayName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeGatewayRouteOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    DescribeGatewayRouteOperationInput.type = Types::DescribeGatewayRouteOperationInput
    DescribeGatewayRouteOperationOutput.add_member(:gateway_route, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteData, location_name: "gatewayRoute", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DescribeGatewayRouteOperationOutput[:http_payload] = :gateway_route
    DescribeGatewayRouteOperationOutput[:http_payload_member] = DescribeGatewayRouteOperationOutput.member(:gateway_route)
    DescribeGatewayRouteOperationOutput.type = Types::DescribeGatewayRouteOperationOutput
    DescribeMeshOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeMeshOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    DescribeMeshOperationInput.type = Types::DescribeMeshOperationInput
    DescribeMeshOperationOutput.add_member(:mesh, ::Smithy::Schema::Shapes::MemberShape.new(target: MeshData, location_name: "mesh", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DescribeMeshOperationOutput[:http_payload] = :mesh
    DescribeMeshOperationOutput[:http_payload_member] = DescribeMeshOperationOutput.member(:mesh)
    DescribeMeshOperationOutput.type = Types::DescribeMeshOperationOutput
    DescribeRouteOperationInput.add_member(:route_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "routeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRouteOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRouteOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    DescribeRouteOperationInput.add_member(:virtual_router_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualRouterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRouteOperationInput.type = Types::DescribeRouteOperationInput
    DescribeRouteOperationOutput.add_member(:route, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteData, location_name: "route", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DescribeRouteOperationOutput[:http_payload] = :route
    DescribeRouteOperationOutput[:http_payload_member] = DescribeRouteOperationOutput.member(:route)
    DescribeRouteOperationOutput.type = Types::DescribeRouteOperationOutput
    DescribeVirtualGatewayOperationInput.add_member(:virtual_gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualGatewayName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVirtualGatewayOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVirtualGatewayOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    DescribeVirtualGatewayOperationInput.type = Types::DescribeVirtualGatewayOperationInput
    DescribeVirtualGatewayOperationOutput.add_member(:virtual_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayData, location_name: "virtualGateway", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DescribeVirtualGatewayOperationOutput[:http_payload] = :virtual_gateway
    DescribeVirtualGatewayOperationOutput[:http_payload_member] = DescribeVirtualGatewayOperationOutput.member(:virtual_gateway)
    DescribeVirtualGatewayOperationOutput.type = Types::DescribeVirtualGatewayOperationOutput
    DescribeVirtualNodeOperationInput.add_member(:virtual_node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualNodeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVirtualNodeOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVirtualNodeOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    DescribeVirtualNodeOperationInput.type = Types::DescribeVirtualNodeOperationInput
    DescribeVirtualNodeOperationOutput.add_member(:virtual_node, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeData, location_name: "virtualNode", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DescribeVirtualNodeOperationOutput[:http_payload] = :virtual_node
    DescribeVirtualNodeOperationOutput[:http_payload_member] = DescribeVirtualNodeOperationOutput.member(:virtual_node)
    DescribeVirtualNodeOperationOutput.type = Types::DescribeVirtualNodeOperationOutput
    DescribeVirtualRouterOperationInput.add_member(:virtual_router_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualRouterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVirtualRouterOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVirtualRouterOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    DescribeVirtualRouterOperationInput.type = Types::DescribeVirtualRouterOperationInput
    DescribeVirtualRouterOperationOutput.add_member(:virtual_router, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualRouterData, location_name: "virtualRouter", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DescribeVirtualRouterOperationOutput[:http_payload] = :virtual_router
    DescribeVirtualRouterOperationOutput[:http_payload_member] = DescribeVirtualRouterOperationOutput.member(:virtual_router)
    DescribeVirtualRouterOperationOutput.type = Types::DescribeVirtualRouterOperationOutput
    DescribeVirtualServiceOperationInput.add_member(:virtual_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, location_name: "virtualServiceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVirtualServiceOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVirtualServiceOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    DescribeVirtualServiceOperationInput.type = Types::DescribeVirtualServiceOperationInput
    DescribeVirtualServiceOperationOutput.add_member(:virtual_service, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualServiceData, location_name: "virtualService", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DescribeVirtualServiceOperationOutput[:http_payload] = :virtual_service
    DescribeVirtualServiceOperationOutput[:http_payload_member] = DescribeVirtualServiceOperationOutput.member(:virtual_service)
    DescribeVirtualServiceOperationOutput.type = Types::DescribeVirtualServiceOperationOutput
    DnsServiceDiscovery.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: Hostname, location_name: "hostname", traits: {"smithy.api#required" => {}}))
    DnsServiceDiscovery.add_member(:response_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsResponseType, location_name: "responseType"))
    DnsServiceDiscovery.add_member(:ip_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: IpPreference, location_name: "ipPreference"))
    DnsServiceDiscovery.type = Types::DnsServiceDiscovery
    Duration.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationValue, location_name: "value"))
    Duration.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationUnit, location_name: "unit"))
    Duration.type = Types::Duration
    EgressFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EgressFilterType, location_name: "type", traits: {"smithy.api#required" => {}}))
    EgressFilter.type = Types::EgressFilter
    FileAccessLog.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePath, location_name: "path", traits: {"smithy.api#required" => {}}))
    FileAccessLog.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingFormat, location_name: "format"))
    FileAccessLog.type = Types::FileAccessLog
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ForbiddenException.type = Types::ForbiddenException
    GatewayRouteData.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#required" => {}}))
    GatewayRouteData.add_member(:gateway_route_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "gatewayRouteName", traits: {"smithy.api#required" => {}}))
    GatewayRouteData.add_member(:virtual_gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualGatewayName", traits: {"smithy.api#required" => {}}))
    GatewayRouteData.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteSpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    GatewayRouteData.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    GatewayRouteData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GatewayRouteData.type = Types::GatewayRouteData
    GatewayRouteHostnameMatch.add_member(:exact, ::Smithy::Schema::Shapes::MemberShape.new(target: ExactHostName, location_name: "exact"))
    GatewayRouteHostnameMatch.add_member(:suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: SuffixHostname, location_name: "suffix"))
    GatewayRouteHostnameMatch.type = Types::GatewayRouteHostnameMatch
    GatewayRouteHostnameRewrite.add_member(:default_target_hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultGatewayRouteRewrite, location_name: "defaultTargetHostname"))
    GatewayRouteHostnameRewrite.type = Types::GatewayRouteHostnameRewrite
    GatewayRouteList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteRef)
    GatewayRouteRef.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#required" => {}}))
    GatewayRouteRef.add_member(:gateway_route_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "gatewayRouteName", traits: {"smithy.api#required" => {}}))
    GatewayRouteRef.add_member(:virtual_gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualGatewayName", traits: {"smithy.api#required" => {}}))
    GatewayRouteRef.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#required" => {}}))
    GatewayRouteRef.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "resourceOwner", traits: {"smithy.api#required" => {}}))
    GatewayRouteRef.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GatewayRouteRef.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "version", traits: {"smithy.api#required" => {}}))
    GatewayRouteRef.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    GatewayRouteRef.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    GatewayRouteRef.type = Types::GatewayRouteRef
    GatewayRouteSpec.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRoutePriority, location_name: "priority"))
    GatewayRouteSpec.add_member(:http_route, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpGatewayRoute, location_name: "httpRoute"))
    GatewayRouteSpec.add_member(:http2_route, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpGatewayRoute, location_name: "http2Route"))
    GatewayRouteSpec.add_member(:grpc_route, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcGatewayRoute, location_name: "grpcRoute"))
    GatewayRouteSpec.type = Types::GatewayRouteSpec
    GatewayRouteStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteStatusCode, location_name: "status", traits: {"smithy.api#required" => {}}))
    GatewayRouteStatus.type = Types::GatewayRouteStatus
    GatewayRouteTarget.add_member(:virtual_service, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteVirtualService, location_name: "virtualService", traits: {"smithy.api#required" => {}}))
    GatewayRouteTarget.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerPort, location_name: "port"))
    GatewayRouteTarget.type = Types::GatewayRouteTarget
    GatewayRouteVirtualService.add_member(:virtual_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualServiceName", traits: {"smithy.api#required" => {}}))
    GatewayRouteVirtualService.type = Types::GatewayRouteVirtualService
    GrpcGatewayRoute.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcGatewayRouteMatch, location_name: "match", traits: {"smithy.api#required" => {}}))
    GrpcGatewayRoute.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcGatewayRouteAction, location_name: "action", traits: {"smithy.api#required" => {}}))
    GrpcGatewayRoute.type = Types::GrpcGatewayRoute
    GrpcGatewayRouteAction.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteTarget, location_name: "target", traits: {"smithy.api#required" => {}}))
    GrpcGatewayRouteAction.add_member(:rewrite, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcGatewayRouteRewrite, location_name: "rewrite"))
    GrpcGatewayRouteAction.type = Types::GrpcGatewayRouteAction
    GrpcGatewayRouteMatch.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, location_name: "serviceName"))
    GrpcGatewayRouteMatch.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteHostnameMatch, location_name: "hostname"))
    GrpcGatewayRouteMatch.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcGatewayRouteMetadataList, location_name: "metadata"))
    GrpcGatewayRouteMatch.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerPort, location_name: "port"))
    GrpcGatewayRouteMatch.type = Types::GrpcGatewayRouteMatch
    GrpcGatewayRouteMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GrpcGatewayRouteMetadata.add_member(:invert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "invert"))
    GrpcGatewayRouteMetadata.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcMetadataMatchMethod, location_name: "match"))
    GrpcGatewayRouteMetadata.type = Types::GrpcGatewayRouteMetadata
    GrpcGatewayRouteMetadataList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcGatewayRouteMetadata)
    GrpcGatewayRouteRewrite.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteHostnameRewrite, location_name: "hostname"))
    GrpcGatewayRouteRewrite.type = Types::GrpcGatewayRouteRewrite
    GrpcMetadataMatchMethod.add_member(:exact, Types::GrpcMetadataMatchMethod::Exact, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatch, location_name: "exact"))
    GrpcMetadataMatchMethod.add_member(:regex, Types::GrpcMetadataMatchMethod::Regex, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatch, location_name: "regex"))
    GrpcMetadataMatchMethod.add_member(:range, Types::GrpcMetadataMatchMethod::Range, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchRange, location_name: "range"))
    GrpcMetadataMatchMethod.add_member(:prefix, Types::GrpcMetadataMatchMethod::Prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatch, location_name: "prefix"))
    GrpcMetadataMatchMethod.add_member(:suffix, Types::GrpcMetadataMatchMethod::Suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatch, location_name: "suffix"))
    GrpcMetadataMatchMethod.add_member(:unknown, Types::GrpcMetadataMatchMethod::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    GrpcMetadataMatchMethod.type = Types::GrpcMetadataMatchMethod
    GrpcRetryPolicy.add_member(:per_retry_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "perRetryTimeout", traits: {"smithy.api#required" => {}}))
    GrpcRetryPolicy.add_member(:max_retries, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRetries, location_name: "maxRetries", traits: {"smithy.api#required" => {}}))
    GrpcRetryPolicy.add_member(:http_retry_events, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRetryPolicyEvents, location_name: "httpRetryEvents"))
    GrpcRetryPolicy.add_member(:tcp_retry_events, ::Smithy::Schema::Shapes::MemberShape.new(target: TcpRetryPolicyEvents, location_name: "tcpRetryEvents"))
    GrpcRetryPolicy.add_member(:grpc_retry_events, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcRetryPolicyEvents, location_name: "grpcRetryEvents"))
    GrpcRetryPolicy.type = Types::GrpcRetryPolicy
    GrpcRetryPolicyEvents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcRetryPolicyEvent)
    GrpcRoute.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcRouteAction, location_name: "action", traits: {"smithy.api#required" => {}}))
    GrpcRoute.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcRouteMatch, location_name: "match", traits: {"smithy.api#required" => {}}))
    GrpcRoute.add_member(:retry_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcRetryPolicy, location_name: "retryPolicy"))
    GrpcRoute.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcTimeout, location_name: "timeout"))
    GrpcRoute.type = Types::GrpcRoute
    GrpcRouteAction.add_member(:weighted_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: WeightedTargets, location_name: "weightedTargets", traits: {"smithy.api#required" => {}}))
    GrpcRouteAction.type = Types::GrpcRouteAction
    GrpcRouteMatch.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, location_name: "serviceName"))
    GrpcRouteMatch.add_member(:method_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MethodName, location_name: "methodName"))
    GrpcRouteMatch.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcRouteMetadataList, location_name: "metadata"))
    GrpcRouteMatch.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerPort, location_name: "port"))
    GrpcRouteMatch.type = Types::GrpcRouteMatch
    GrpcRouteMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GrpcRouteMetadata.add_member(:invert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "invert"))
    GrpcRouteMetadata.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcRouteMetadataMatchMethod, location_name: "match"))
    GrpcRouteMetadata.type = Types::GrpcRouteMetadata
    GrpcRouteMetadataList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcRouteMetadata)
    GrpcRouteMetadataMatchMethod.add_member(:exact, Types::GrpcRouteMetadataMatchMethod::Exact, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatch, location_name: "exact"))
    GrpcRouteMetadataMatchMethod.add_member(:regex, Types::GrpcRouteMetadataMatchMethod::Regex, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatch, location_name: "regex"))
    GrpcRouteMetadataMatchMethod.add_member(:range, Types::GrpcRouteMetadataMatchMethod::Range, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchRange, location_name: "range"))
    GrpcRouteMetadataMatchMethod.add_member(:prefix, Types::GrpcRouteMetadataMatchMethod::Prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatch, location_name: "prefix"))
    GrpcRouteMetadataMatchMethod.add_member(:suffix, Types::GrpcRouteMetadataMatchMethod::Suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatch, location_name: "suffix"))
    GrpcRouteMetadataMatchMethod.add_member(:unknown, Types::GrpcRouteMetadataMatchMethod::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    GrpcRouteMetadataMatchMethod.type = Types::GrpcRouteMetadataMatchMethod
    GrpcTimeout.add_member(:per_request, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "perRequest"))
    GrpcTimeout.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "idle"))
    GrpcTimeout.type = Types::GrpcTimeout
    HeaderMatchMethod.add_member(:exact, Types::HeaderMatchMethod::Exact, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatch, location_name: "exact"))
    HeaderMatchMethod.add_member(:regex, Types::HeaderMatchMethod::Regex, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatch, location_name: "regex"))
    HeaderMatchMethod.add_member(:range, Types::HeaderMatchMethod::Range, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchRange, location_name: "range"))
    HeaderMatchMethod.add_member(:prefix, Types::HeaderMatchMethod::Prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatch, location_name: "prefix"))
    HeaderMatchMethod.add_member(:suffix, Types::HeaderMatchMethod::Suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatch, location_name: "suffix"))
    HeaderMatchMethod.add_member(:unknown, Types::HeaderMatchMethod::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    HeaderMatchMethod.type = Types::HeaderMatchMethod
    HealthCheckPolicy.add_member(:timeout_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckTimeoutMillis, location_name: "timeoutMillis", traits: {"smithy.api#required" => {}}))
    HealthCheckPolicy.add_member(:interval_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckIntervalMillis, location_name: "intervalMillis", traits: {"smithy.api#required" => {}}))
    HealthCheckPolicy.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: PortProtocol, location_name: "protocol", traits: {"smithy.api#required" => {}}))
    HealthCheckPolicy.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, location_name: "port"))
    HealthCheckPolicy.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "path"))
    HealthCheckPolicy.add_member(:healthy_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckThreshold, location_name: "healthyThreshold", traits: {"smithy.api#required" => {}}))
    HealthCheckPolicy.add_member(:unhealthy_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckThreshold, location_name: "unhealthyThreshold", traits: {"smithy.api#required" => {}}))
    HealthCheckPolicy.type = Types::HealthCheckPolicy
    HttpGatewayRoute.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpGatewayRouteMatch, location_name: "match", traits: {"smithy.api#required" => {}}))
    HttpGatewayRoute.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpGatewayRouteAction, location_name: "action", traits: {"smithy.api#required" => {}}))
    HttpGatewayRoute.type = Types::HttpGatewayRoute
    HttpGatewayRouteAction.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteTarget, location_name: "target", traits: {"smithy.api#required" => {}}))
    HttpGatewayRouteAction.add_member(:rewrite, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpGatewayRouteRewrite, location_name: "rewrite"))
    HttpGatewayRouteAction.type = Types::HttpGatewayRouteAction
    HttpGatewayRouteHeader.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderName, location_name: "name", traits: {"smithy.api#required" => {}}))
    HttpGatewayRouteHeader.add_member(:invert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "invert"))
    HttpGatewayRouteHeader.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatchMethod, location_name: "match"))
    HttpGatewayRouteHeader.type = Types::HttpGatewayRouteHeader
    HttpGatewayRouteHeaders.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HttpGatewayRouteHeader)
    HttpGatewayRouteMatch.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "prefix"))
    HttpGatewayRouteMatch.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPathMatch, location_name: "path"))
    HttpGatewayRouteMatch.add_member(:query_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpQueryParameters, location_name: "queryParameters"))
    HttpGatewayRouteMatch.add_member(:method, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpMethod, location_name: "method"))
    HttpGatewayRouteMatch.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteHostnameMatch, location_name: "hostname"))
    HttpGatewayRouteMatch.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpGatewayRouteHeaders, location_name: "headers"))
    HttpGatewayRouteMatch.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerPort, location_name: "port"))
    HttpGatewayRouteMatch.type = Types::HttpGatewayRouteMatch
    HttpGatewayRoutePathRewrite.add_member(:exact, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPathExact, location_name: "exact"))
    HttpGatewayRoutePathRewrite.type = Types::HttpGatewayRoutePathRewrite
    HttpGatewayRoutePrefixRewrite.add_member(:default_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultGatewayRouteRewrite, location_name: "defaultPrefix"))
    HttpGatewayRoutePrefixRewrite.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpGatewayRoutePrefix, location_name: "value"))
    HttpGatewayRoutePrefixRewrite.type = Types::HttpGatewayRoutePrefixRewrite
    HttpGatewayRouteRewrite.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpGatewayRoutePrefixRewrite, location_name: "prefix"))
    HttpGatewayRouteRewrite.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpGatewayRoutePathRewrite, location_name: "path"))
    HttpGatewayRouteRewrite.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteHostnameRewrite, location_name: "hostname"))
    HttpGatewayRouteRewrite.type = Types::HttpGatewayRouteRewrite
    HttpPathMatch.add_member(:exact, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPathExact, location_name: "exact"))
    HttpPathMatch.add_member(:regex, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPathRegex, location_name: "regex"))
    HttpPathMatch.type = Types::HttpPathMatch
    HttpQueryParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryParameterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    HttpQueryParameter.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryParameterMatch, location_name: "match"))
    HttpQueryParameter.type = Types::HttpQueryParameter
    HttpQueryParameters.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HttpQueryParameter)
    HttpRetryPolicy.add_member(:per_retry_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "perRetryTimeout", traits: {"smithy.api#required" => {}}))
    HttpRetryPolicy.add_member(:max_retries, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRetries, location_name: "maxRetries", traits: {"smithy.api#required" => {}}))
    HttpRetryPolicy.add_member(:http_retry_events, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRetryPolicyEvents, location_name: "httpRetryEvents"))
    HttpRetryPolicy.add_member(:tcp_retry_events, ::Smithy::Schema::Shapes::MemberShape.new(target: TcpRetryPolicyEvents, location_name: "tcpRetryEvents"))
    HttpRetryPolicy.type = Types::HttpRetryPolicy
    HttpRetryPolicyEvents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRetryPolicyEvent)
    HttpRoute.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRouteMatch, location_name: "match", traits: {"smithy.api#required" => {}}))
    HttpRoute.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRouteAction, location_name: "action", traits: {"smithy.api#required" => {}}))
    HttpRoute.add_member(:retry_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRetryPolicy, location_name: "retryPolicy"))
    HttpRoute.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpTimeout, location_name: "timeout"))
    HttpRoute.type = Types::HttpRoute
    HttpRouteAction.add_member(:weighted_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: WeightedTargets, location_name: "weightedTargets", traits: {"smithy.api#required" => {}}))
    HttpRouteAction.type = Types::HttpRouteAction
    HttpRouteHeader.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderName, location_name: "name", traits: {"smithy.api#required" => {}}))
    HttpRouteHeader.add_member(:invert, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "invert"))
    HttpRouteHeader.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: HeaderMatchMethod, location_name: "match"))
    HttpRouteHeader.type = Types::HttpRouteHeader
    HttpRouteHeaders.member = ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRouteHeader)
    HttpRouteMatch.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "prefix"))
    HttpRouteMatch.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPathMatch, location_name: "path"))
    HttpRouteMatch.add_member(:query_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpQueryParameters, location_name: "queryParameters"))
    HttpRouteMatch.add_member(:method, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpMethod, location_name: "method"))
    HttpRouteMatch.add_member(:scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpScheme, location_name: "scheme"))
    HttpRouteMatch.add_member(:headers, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRouteHeaders, location_name: "headers"))
    HttpRouteMatch.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerPort, location_name: "port"))
    HttpRouteMatch.type = Types::HttpRouteMatch
    HttpTimeout.add_member(:per_request, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "perRequest"))
    HttpTimeout.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "idle"))
    HttpTimeout.type = Types::HttpTimeout
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    InternalServerErrorException.type = Types::InternalServerErrorException
    JsonFormat.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JsonFormatRef)
    JsonFormatRef.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonKey, location_name: "key", traits: {"smithy.api#required" => {}}))
    JsonFormatRef.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    JsonFormatRef.type = Types::JsonFormatRef
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListGatewayRoutesOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGatewayRoutesOperationInput.add_member(:virtual_gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualGatewayName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGatewayRoutesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGatewayRoutesOperationInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListGatewayRoutesLimit, location_name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    ListGatewayRoutesOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    ListGatewayRoutesOperationInput.type = Types::ListGatewayRoutesOperationInput
    ListGatewayRoutesOperationOutput.add_member(:gateway_routes, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteList, location_name: "gatewayRoutes", traits: {"smithy.api#required" => {}}))
    ListGatewayRoutesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListGatewayRoutesOperationOutput.type = Types::ListGatewayRoutesOperationOutput
    ListMeshesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMeshesOperationInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListMeshesLimit, location_name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    ListMeshesOperationInput.type = Types::ListMeshesOperationInput
    ListMeshesOperationOutput.add_member(:meshes, ::Smithy::Schema::Shapes::MemberShape.new(target: MeshList, location_name: "meshes", traits: {"smithy.api#required" => {}}))
    ListMeshesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListMeshesOperationOutput.type = Types::ListMeshesOperationOutput
    ListRoutesOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRoutesOperationInput.add_member(:virtual_router_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualRouterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRoutesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRoutesOperationInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRoutesLimit, location_name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    ListRoutesOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    ListRoutesOperationInput.type = Types::ListRoutesOperationInput
    ListRoutesOperationOutput.add_member(:routes, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteList, location_name: "routes", traits: {"smithy.api#required" => {}}))
    ListRoutesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListRoutesOperationOutput.type = Types::ListRoutesOperationOutput
    ListTagsForResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTagsForResourceOperationInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsLimit, location_name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    ListTagsForResourceOperationInput.type = Types::ListTagsForResourceOperationInput
    ListTagsForResourceOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListTagsForResourceOperationOutput.type = Types::ListTagsForResourceOperationOutput
    ListVirtualGatewaysOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVirtualGatewaysOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListVirtualGatewaysOperationInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListVirtualGatewaysLimit, location_name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    ListVirtualGatewaysOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    ListVirtualGatewaysOperationInput.type = Types::ListVirtualGatewaysOperationInput
    ListVirtualGatewaysOperationOutput.add_member(:virtual_gateways, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayList, location_name: "virtualGateways", traits: {"smithy.api#required" => {}}))
    ListVirtualGatewaysOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListVirtualGatewaysOperationOutput.type = Types::ListVirtualGatewaysOperationOutput
    ListVirtualNodesOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVirtualNodesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListVirtualNodesOperationInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListVirtualNodesLimit, location_name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    ListVirtualNodesOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    ListVirtualNodesOperationInput.type = Types::ListVirtualNodesOperationInput
    ListVirtualNodesOperationOutput.add_member(:virtual_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeList, location_name: "virtualNodes", traits: {"smithy.api#required" => {}}))
    ListVirtualNodesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListVirtualNodesOperationOutput.type = Types::ListVirtualNodesOperationOutput
    ListVirtualRoutersOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVirtualRoutersOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListVirtualRoutersOperationInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListVirtualRoutersLimit, location_name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    ListVirtualRoutersOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    ListVirtualRoutersOperationInput.type = Types::ListVirtualRoutersOperationInput
    ListVirtualRoutersOperationOutput.add_member(:virtual_routers, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualRouterList, location_name: "virtualRouters", traits: {"smithy.api#required" => {}}))
    ListVirtualRoutersOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListVirtualRoutersOperationOutput.type = Types::ListVirtualRoutersOperationOutput
    ListVirtualServicesOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVirtualServicesOperationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListVirtualServicesOperationInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListVirtualServicesLimit, location_name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    ListVirtualServicesOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    ListVirtualServicesOperationInput.type = Types::ListVirtualServicesOperationInput
    ListVirtualServicesOperationOutput.add_member(:virtual_services, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualServiceList, location_name: "virtualServices", traits: {"smithy.api#required" => {}}))
    ListVirtualServicesOperationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListVirtualServicesOperationOutput.type = Types::ListVirtualServicesOperationOutput
    Listener.add_member(:port_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: PortMapping, location_name: "portMapping", traits: {"smithy.api#required" => {}}))
    Listener.add_member(:tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerTls, location_name: "tls"))
    Listener.add_member(:health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckPolicy, location_name: "healthCheck"))
    Listener.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerTimeout, location_name: "timeout"))
    Listener.add_member(:outlier_detection, ::Smithy::Schema::Shapes::MemberShape.new(target: OutlierDetection, location_name: "outlierDetection"))
    Listener.add_member(:connection_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeConnectionPool, location_name: "connectionPool"))
    Listener.type = Types::Listener
    ListenerTimeout.add_member(:tcp, Types::ListenerTimeout::Tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: TcpTimeout, location_name: "tcp"))
    ListenerTimeout.add_member(:http, Types::ListenerTimeout::Http, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpTimeout, location_name: "http"))
    ListenerTimeout.add_member(:http2, Types::ListenerTimeout::Http2, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpTimeout, location_name: "http2"))
    ListenerTimeout.add_member(:grpc, Types::ListenerTimeout::Grpc, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcTimeout, location_name: "grpc"))
    ListenerTimeout.add_member(:unknown, Types::ListenerTimeout::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ListenerTimeout.type = Types::ListenerTimeout
    ListenerTls.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerTlsMode, location_name: "mode", traits: {"smithy.api#required" => {}}))
    ListenerTls.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerTlsCertificate, location_name: "certificate", traits: {"smithy.api#required" => {}}))
    ListenerTls.add_member(:validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerTlsValidationContext, location_name: "validation"))
    ListenerTls.type = Types::ListenerTls
    ListenerTlsAcmCertificate.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "certificateArn", traits: {"smithy.api#required" => {}}))
    ListenerTlsAcmCertificate.type = Types::ListenerTlsAcmCertificate
    ListenerTlsCertificate.add_member(:acm, Types::ListenerTlsCertificate::Acm, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerTlsAcmCertificate, location_name: "acm"))
    ListenerTlsCertificate.add_member(:file, Types::ListenerTlsCertificate::File, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerTlsFileCertificate, location_name: "file"))
    ListenerTlsCertificate.add_member(:sds, Types::ListenerTlsCertificate::Sds, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerTlsSdsCertificate, location_name: "sds"))
    ListenerTlsCertificate.add_member(:unknown, Types::ListenerTlsCertificate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ListenerTlsCertificate.type = Types::ListenerTlsCertificate
    ListenerTlsFileCertificate.add_member(:certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePath, location_name: "certificateChain", traits: {"smithy.api#required" => {}}))
    ListenerTlsFileCertificate.add_member(:private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePath, location_name: "privateKey", traits: {"smithy.api#required" => {}}))
    ListenerTlsFileCertificate.type = Types::ListenerTlsFileCertificate
    ListenerTlsSdsCertificate.add_member(:secret_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SdsSecretName, location_name: "secretName", traits: {"smithy.api#required" => {}}))
    ListenerTlsSdsCertificate.type = Types::ListenerTlsSdsCertificate
    ListenerTlsValidationContext.add_member(:trust, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerTlsValidationContextTrust, location_name: "trust", traits: {"smithy.api#required" => {}}))
    ListenerTlsValidationContext.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectAlternativeNames, location_name: "subjectAlternativeNames"))
    ListenerTlsValidationContext.type = Types::ListenerTlsValidationContext
    ListenerTlsValidationContextTrust.add_member(:file, Types::ListenerTlsValidationContextTrust::File, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsValidationContextFileTrust, location_name: "file"))
    ListenerTlsValidationContextTrust.add_member(:sds, Types::ListenerTlsValidationContextTrust::Sds, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsValidationContextSdsTrust, location_name: "sds"))
    ListenerTlsValidationContextTrust.add_member(:unknown, Types::ListenerTlsValidationContextTrust::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ListenerTlsValidationContextTrust.type = Types::ListenerTlsValidationContextTrust
    Listeners.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Listener)
    Logging.add_member(:access_log, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLog, location_name: "accessLog"))
    Logging.type = Types::Logging
    LoggingFormat.add_member(:text, Types::LoggingFormat::Text, ::Smithy::Schema::Shapes::MemberShape.new(target: TextFormat, location_name: "text"))
    LoggingFormat.add_member(:json, Types::LoggingFormat::Json, ::Smithy::Schema::Shapes::MemberShape.new(target: JsonFormat, location_name: "json"))
    LoggingFormat.add_member(:unknown, Types::LoggingFormat::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    LoggingFormat.type = Types::LoggingFormat
    MatchRange.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "start", traits: {"smithy.api#required" => {}}))
    MatchRange.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "end", traits: {"smithy.api#required" => {}}))
    MatchRange.type = Types::MatchRange
    MeshData.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#required" => {}}))
    MeshData.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: MeshSpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    MeshData.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    MeshData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MeshStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    MeshData.type = Types::MeshData
    MeshList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MeshRef)
    MeshRef.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#required" => {}}))
    MeshRef.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#required" => {}}))
    MeshRef.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "resourceOwner", traits: {"smithy.api#required" => {}}))
    MeshRef.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    MeshRef.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "version", traits: {"smithy.api#required" => {}}))
    MeshRef.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    MeshRef.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    MeshRef.type = Types::MeshRef
    MeshServiceDiscovery.add_member(:ip_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: IpPreference, location_name: "ipPreference"))
    MeshServiceDiscovery.type = Types::MeshServiceDiscovery
    MeshSpec.add_member(:egress_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: EgressFilter, location_name: "egressFilter"))
    MeshSpec.add_member(:service_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: MeshServiceDiscovery, location_name: "serviceDiscovery"))
    MeshSpec.type = Types::MeshSpec
    MeshStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MeshStatusCode, location_name: "status"))
    MeshStatus.type = Types::MeshStatus
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    NotFoundException.type = Types::NotFoundException
    OutlierDetection.add_member(:max_server_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: OutlierDetectionMaxServerErrors, location_name: "maxServerErrors", traits: {"smithy.api#required" => {}}))
    OutlierDetection.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "interval", traits: {"smithy.api#required" => {}}))
    OutlierDetection.add_member(:base_ejection_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "baseEjectionDuration", traits: {"smithy.api#required" => {}}))
    OutlierDetection.add_member(:max_ejection_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: OutlierDetectionMaxEjectionPercent, location_name: "maxEjectionPercent", traits: {"smithy.api#required" => {}}))
    OutlierDetection.type = Types::OutlierDetection
    PortMapping.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, location_name: "port", traits: {"smithy.api#required" => {}}))
    PortMapping.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: PortProtocol, location_name: "protocol", traits: {"smithy.api#required" => {}}))
    PortMapping.type = Types::PortMapping
    PortSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber)
    QueryParameterMatch.add_member(:exact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "exact"))
    QueryParameterMatch.type = Types::QueryParameterMatch
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceMetadata.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    ResourceMetadata.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "version", traits: {"smithy.api#required" => {}}))
    ResourceMetadata.add_member(:uid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "uid", traits: {"smithy.api#required" => {}}))
    ResourceMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    ResourceMetadata.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    ResourceMetadata.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#required" => {}}))
    ResourceMetadata.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "resourceOwner", traits: {"smithy.api#required" => {}}))
    ResourceMetadata.type = Types::ResourceMetadata
    RouteData.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#required" => {}}))
    RouteData.add_member(:virtual_router_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualRouterName", traits: {"smithy.api#required" => {}}))
    RouteData.add_member(:route_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "routeName", traits: {"smithy.api#required" => {}}))
    RouteData.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    RouteData.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    RouteData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    RouteData.type = Types::RouteData
    RouteList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RouteRef)
    RouteRef.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#required" => {}}))
    RouteRef.add_member(:virtual_router_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualRouterName", traits: {"smithy.api#required" => {}}))
    RouteRef.add_member(:route_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "routeName", traits: {"smithy.api#required" => {}}))
    RouteRef.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#required" => {}}))
    RouteRef.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "resourceOwner", traits: {"smithy.api#required" => {}}))
    RouteRef.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    RouteRef.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "version", traits: {"smithy.api#required" => {}}))
    RouteRef.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    RouteRef.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    RouteRef.type = Types::RouteRef
    RouteSpec.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutePriority, location_name: "priority"))
    RouteSpec.add_member(:http_route, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRoute, location_name: "httpRoute"))
    RouteSpec.add_member(:tcp_route, ::Smithy::Schema::Shapes::MemberShape.new(target: TcpRoute, location_name: "tcpRoute"))
    RouteSpec.add_member(:http2_route, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRoute, location_name: "http2Route"))
    RouteSpec.add_member(:grpc_route, ::Smithy::Schema::Shapes::MemberShape.new(target: GrpcRoute, location_name: "grpcRoute"))
    RouteSpec.type = Types::RouteSpec
    RouteStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteStatusCode, location_name: "status", traits: {"smithy.api#required" => {}}))
    RouteStatus.type = Types::RouteStatus
    ServiceDiscovery.add_member(:dns, Types::ServiceDiscovery::Dns, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsServiceDiscovery, location_name: "dns"))
    ServiceDiscovery.add_member(:aws_cloud_map, Types::ServiceDiscovery::AwsCloudMap, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCloudMapServiceDiscovery, location_name: "awsCloudMap"))
    ServiceDiscovery.add_member(:unknown, Types::ServiceDiscovery::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ServiceDiscovery.type = Types::ServiceDiscovery
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SubjectAlternativeNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectAlternativeName)
    SubjectAlternativeNameMatchers.add_member(:exact, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectAlternativeNameList, location_name: "exact", traits: {"smithy.api#required" => {}}))
    SubjectAlternativeNameMatchers.type = Types::SubjectAlternativeNameMatchers
    SubjectAlternativeNames.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectAlternativeNameMatchers, location_name: "match", traits: {"smithy.api#required" => {}}))
    SubjectAlternativeNames.type = Types::SubjectAlternativeNames
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagRef)
    TagRef.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "key", traits: {"smithy.api#required" => {}}))
    TagRef.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    TagRef.type = Types::TagRef
    TagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    TagResourceOperationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceOperationInput.type = Types::TagResourceOperationInput
    TagResourceOperationOutput.type = Types::TagResourceOperationOutput
    TcpRetryPolicyEvents.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TcpRetryPolicyEvent)
    TcpRoute.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: TcpRouteAction, location_name: "action", traits: {"smithy.api#required" => {}}))
    TcpRoute.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: TcpTimeout, location_name: "timeout"))
    TcpRoute.add_member(:match, ::Smithy::Schema::Shapes::MemberShape.new(target: TcpRouteMatch, location_name: "match"))
    TcpRoute.type = Types::TcpRoute
    TcpRouteAction.add_member(:weighted_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: WeightedTargets, location_name: "weightedTargets", traits: {"smithy.api#required" => {}}))
    TcpRouteAction.type = Types::TcpRouteAction
    TcpRouteMatch.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerPort, location_name: "port"))
    TcpRouteMatch.type = Types::TcpRouteMatch
    TcpTimeout.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, location_name: "idle"))
    TcpTimeout.type = Types::TcpTimeout
    TlsValidationContext.add_member(:trust, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsValidationContextTrust, location_name: "trust", traits: {"smithy.api#required" => {}}))
    TlsValidationContext.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectAlternativeNames, location_name: "subjectAlternativeNames"))
    TlsValidationContext.type = Types::TlsValidationContext
    TlsValidationContextAcmTrust.add_member(:certificate_authority_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateAuthorityArns, location_name: "certificateAuthorityArns", traits: {"smithy.api#required" => {}}))
    TlsValidationContextAcmTrust.type = Types::TlsValidationContextAcmTrust
    TlsValidationContextFileTrust.add_member(:certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePath, location_name: "certificateChain", traits: {"smithy.api#required" => {}}))
    TlsValidationContextFileTrust.type = Types::TlsValidationContextFileTrust
    TlsValidationContextSdsTrust.add_member(:secret_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SdsSecretName, location_name: "secretName", traits: {"smithy.api#required" => {}}))
    TlsValidationContextSdsTrust.type = Types::TlsValidationContextSdsTrust
    TlsValidationContextTrust.add_member(:acm, Types::TlsValidationContextTrust::Acm, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsValidationContextAcmTrust, location_name: "acm"))
    TlsValidationContextTrust.add_member(:file, Types::TlsValidationContextTrust::File, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsValidationContextFileTrust, location_name: "file"))
    TlsValidationContextTrust.add_member(:sds, Types::TlsValidationContextTrust::Sds, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsValidationContextSdsTrust, location_name: "sds"))
    TlsValidationContextTrust.add_member(:unknown, Types::TlsValidationContextTrust::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    TlsValidationContextTrust.type = Types::TlsValidationContextTrust
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message"))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceOperationInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UntagResourceOperationInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceOperationInput.type = Types::UntagResourceOperationInput
    UntagResourceOperationOutput.type = Types::UntagResourceOperationOutput
    UpdateGatewayRouteOperationInput.add_member(:gateway_route_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "gatewayRouteName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGatewayRouteOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGatewayRouteOperationInput.add_member(:virtual_gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualGatewayName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateGatewayRouteOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteSpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    UpdateGatewayRouteOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateGatewayRouteOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    UpdateGatewayRouteOperationInput.type = Types::UpdateGatewayRouteOperationInput
    UpdateGatewayRouteOperationOutput.add_member(:gateway_route, ::Smithy::Schema::Shapes::MemberShape.new(target: GatewayRouteData, location_name: "gatewayRoute", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateGatewayRouteOperationOutput[:http_payload] = :gateway_route
    UpdateGatewayRouteOperationOutput[:http_payload_member] = UpdateGatewayRouteOperationOutput.member(:gateway_route)
    UpdateGatewayRouteOperationOutput.type = Types::UpdateGatewayRouteOperationOutput
    UpdateMeshOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMeshOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: MeshSpec, location_name: "spec"))
    UpdateMeshOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateMeshOperationInput.type = Types::UpdateMeshOperationInput
    UpdateMeshOperationOutput.add_member(:mesh, ::Smithy::Schema::Shapes::MemberShape.new(target: MeshData, location_name: "mesh", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateMeshOperationOutput[:http_payload] = :mesh
    UpdateMeshOperationOutput[:http_payload_member] = UpdateMeshOperationOutput.member(:mesh)
    UpdateMeshOperationOutput.type = Types::UpdateMeshOperationOutput
    UpdateRouteOperationInput.add_member(:route_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "routeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouteOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouteOperationInput.add_member(:virtual_router_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualRouterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRouteOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteSpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    UpdateRouteOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateRouteOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    UpdateRouteOperationInput.type = Types::UpdateRouteOperationInput
    UpdateRouteOperationOutput.add_member(:route, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteData, location_name: "route", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateRouteOperationOutput[:http_payload] = :route
    UpdateRouteOperationOutput[:http_payload_member] = UpdateRouteOperationOutput.member(:route)
    UpdateRouteOperationOutput.type = Types::UpdateRouteOperationOutput
    UpdateVirtualGatewayOperationInput.add_member(:virtual_gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualGatewayName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVirtualGatewayOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVirtualGatewayOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewaySpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    UpdateVirtualGatewayOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateVirtualGatewayOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    UpdateVirtualGatewayOperationInput.type = Types::UpdateVirtualGatewayOperationInput
    UpdateVirtualGatewayOperationOutput.add_member(:virtual_gateway, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayData, location_name: "virtualGateway", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateVirtualGatewayOperationOutput[:http_payload] = :virtual_gateway
    UpdateVirtualGatewayOperationOutput[:http_payload_member] = UpdateVirtualGatewayOperationOutput.member(:virtual_gateway)
    UpdateVirtualGatewayOperationOutput.type = Types::UpdateVirtualGatewayOperationOutput
    UpdateVirtualNodeOperationInput.add_member(:virtual_node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualNodeName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVirtualNodeOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVirtualNodeOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeSpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    UpdateVirtualNodeOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateVirtualNodeOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    UpdateVirtualNodeOperationInput.type = Types::UpdateVirtualNodeOperationInput
    UpdateVirtualNodeOperationOutput.add_member(:virtual_node, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeData, location_name: "virtualNode", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateVirtualNodeOperationOutput[:http_payload] = :virtual_node
    UpdateVirtualNodeOperationOutput[:http_payload_member] = UpdateVirtualNodeOperationOutput.member(:virtual_node)
    UpdateVirtualNodeOperationOutput.type = Types::UpdateVirtualNodeOperationOutput
    UpdateVirtualRouterOperationInput.add_member(:virtual_router_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualRouterName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVirtualRouterOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVirtualRouterOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualRouterSpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    UpdateVirtualRouterOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateVirtualRouterOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    UpdateVirtualRouterOperationInput.type = Types::UpdateVirtualRouterOperationInput
    UpdateVirtualRouterOperationOutput.add_member(:virtual_router, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualRouterData, location_name: "virtualRouter", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateVirtualRouterOperationOutput[:http_payload] = :virtual_router
    UpdateVirtualRouterOperationOutput[:http_payload_member] = UpdateVirtualRouterOperationOutput.member(:virtual_router)
    UpdateVirtualRouterOperationOutput.type = Types::UpdateVirtualRouterOperationOutput
    UpdateVirtualServiceOperationInput.add_member(:virtual_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, location_name: "virtualServiceName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVirtualServiceOperationInput.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVirtualServiceOperationInput.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualServiceSpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    UpdateVirtualServiceOperationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateVirtualServiceOperationInput.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#httpQuery" => "meshOwner"}))
    UpdateVirtualServiceOperationInput.type = Types::UpdateVirtualServiceOperationInput
    UpdateVirtualServiceOperationOutput.add_member(:virtual_service, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualServiceData, location_name: "virtualService", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateVirtualServiceOperationOutput[:http_payload] = :virtual_service
    UpdateVirtualServiceOperationOutput[:http_payload_member] = UpdateVirtualServiceOperationOutput.member(:virtual_service)
    UpdateVirtualServiceOperationOutput.type = Types::UpdateVirtualServiceOperationOutput
    VirtualGatewayAccessLog.add_member(:file, Types::VirtualGatewayAccessLog::File, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayFileAccessLog, location_name: "file"))
    VirtualGatewayAccessLog.add_member(:unknown, Types::VirtualGatewayAccessLog::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    VirtualGatewayAccessLog.type = Types::VirtualGatewayAccessLog
    VirtualGatewayBackendDefaults.add_member(:client_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayClientPolicy, location_name: "clientPolicy"))
    VirtualGatewayBackendDefaults.type = Types::VirtualGatewayBackendDefaults
    VirtualGatewayCertificateAuthorityArns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Arn)
    VirtualGatewayClientPolicy.add_member(:tls, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayClientPolicyTls, location_name: "tls"))
    VirtualGatewayClientPolicy.type = Types::VirtualGatewayClientPolicy
    VirtualGatewayClientPolicyTls.add_member(:enforce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "enforce", traits: {"smithy.api#default" => nil}))
    VirtualGatewayClientPolicyTls.add_member(:ports, ::Smithy::Schema::Shapes::MemberShape.new(target: PortSet, location_name: "ports"))
    VirtualGatewayClientPolicyTls.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayClientTlsCertificate, location_name: "certificate"))
    VirtualGatewayClientPolicyTls.add_member(:validation, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayTlsValidationContext, location_name: "validation", traits: {"smithy.api#required" => {}}))
    VirtualGatewayClientPolicyTls.type = Types::VirtualGatewayClientPolicyTls
    VirtualGatewayClientTlsCertificate.add_member(:file, Types::VirtualGatewayClientTlsCertificate::File, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayListenerTlsFileCertificate, location_name: "file"))
    VirtualGatewayClientTlsCertificate.add_member(:sds, Types::VirtualGatewayClientTlsCertificate::Sds, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayListenerTlsSdsCertificate, location_name: "sds"))
    VirtualGatewayClientTlsCertificate.add_member(:unknown, Types::VirtualGatewayClientTlsCertificate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    VirtualGatewayClientTlsCertificate.type = Types::VirtualGatewayClientTlsCertificate
    VirtualGatewayConnectionPool.add_member(:http, Types::VirtualGatewayConnectionPool::Http, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayHttpConnectionPool, location_name: "http"))
    VirtualGatewayConnectionPool.add_member(:http2, Types::VirtualGatewayConnectionPool::Http2, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayHttp2ConnectionPool, location_name: "http2"))
    VirtualGatewayConnectionPool.add_member(:grpc, Types::VirtualGatewayConnectionPool::Grpc, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayGrpcConnectionPool, location_name: "grpc"))
    VirtualGatewayConnectionPool.add_member(:unknown, Types::VirtualGatewayConnectionPool::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    VirtualGatewayConnectionPool.type = Types::VirtualGatewayConnectionPool
    VirtualGatewayData.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#required" => {}}))
    VirtualGatewayData.add_member(:virtual_gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualGatewayName", traits: {"smithy.api#required" => {}}))
    VirtualGatewayData.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewaySpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    VirtualGatewayData.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    VirtualGatewayData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    VirtualGatewayData.type = Types::VirtualGatewayData
    VirtualGatewayFileAccessLog.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePath, location_name: "path", traits: {"smithy.api#required" => {}}))
    VirtualGatewayFileAccessLog.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingFormat, location_name: "format"))
    VirtualGatewayFileAccessLog.type = Types::VirtualGatewayFileAccessLog
    VirtualGatewayGrpcConnectionPool.add_member(:max_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRequests, location_name: "maxRequests", traits: {"smithy.api#required" => {}}))
    VirtualGatewayGrpcConnectionPool.type = Types::VirtualGatewayGrpcConnectionPool
    VirtualGatewayHealthCheckPolicy.add_member(:timeout_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayHealthCheckTimeoutMillis, location_name: "timeoutMillis", traits: {"smithy.api#required" => {}}))
    VirtualGatewayHealthCheckPolicy.add_member(:interval_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayHealthCheckIntervalMillis, location_name: "intervalMillis", traits: {"smithy.api#required" => {}}))
    VirtualGatewayHealthCheckPolicy.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayPortProtocol, location_name: "protocol", traits: {"smithy.api#required" => {}}))
    VirtualGatewayHealthCheckPolicy.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, location_name: "port"))
    VirtualGatewayHealthCheckPolicy.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "path"))
    VirtualGatewayHealthCheckPolicy.add_member(:healthy_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayHealthCheckThreshold, location_name: "healthyThreshold", traits: {"smithy.api#required" => {}}))
    VirtualGatewayHealthCheckPolicy.add_member(:unhealthy_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayHealthCheckThreshold, location_name: "unhealthyThreshold", traits: {"smithy.api#required" => {}}))
    VirtualGatewayHealthCheckPolicy.type = Types::VirtualGatewayHealthCheckPolicy
    VirtualGatewayHttp2ConnectionPool.add_member(:max_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRequests, location_name: "maxRequests", traits: {"smithy.api#required" => {}}))
    VirtualGatewayHttp2ConnectionPool.type = Types::VirtualGatewayHttp2ConnectionPool
    VirtualGatewayHttpConnectionPool.add_member(:max_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConnections, location_name: "maxConnections", traits: {"smithy.api#required" => {}}))
    VirtualGatewayHttpConnectionPool.add_member(:max_pending_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxPendingRequests, location_name: "maxPendingRequests", traits: {"smithy.api#default" => nil}))
    VirtualGatewayHttpConnectionPool.type = Types::VirtualGatewayHttpConnectionPool
    VirtualGatewayList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayRef)
    VirtualGatewayListener.add_member(:health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayHealthCheckPolicy, location_name: "healthCheck"))
    VirtualGatewayListener.add_member(:port_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayPortMapping, location_name: "portMapping", traits: {"smithy.api#required" => {}}))
    VirtualGatewayListener.add_member(:tls, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayListenerTls, location_name: "tls"))
    VirtualGatewayListener.add_member(:connection_pool, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayConnectionPool, location_name: "connectionPool"))
    VirtualGatewayListener.type = Types::VirtualGatewayListener
    VirtualGatewayListenerTls.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayListenerTlsMode, location_name: "mode", traits: {"smithy.api#required" => {}}))
    VirtualGatewayListenerTls.add_member(:validation, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayListenerTlsValidationContext, location_name: "validation"))
    VirtualGatewayListenerTls.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayListenerTlsCertificate, location_name: "certificate", traits: {"smithy.api#required" => {}}))
    VirtualGatewayListenerTls.type = Types::VirtualGatewayListenerTls
    VirtualGatewayListenerTlsAcmCertificate.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "certificateArn", traits: {"smithy.api#required" => {}}))
    VirtualGatewayListenerTlsAcmCertificate.type = Types::VirtualGatewayListenerTlsAcmCertificate
    VirtualGatewayListenerTlsCertificate.add_member(:acm, Types::VirtualGatewayListenerTlsCertificate::Acm, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayListenerTlsAcmCertificate, location_name: "acm"))
    VirtualGatewayListenerTlsCertificate.add_member(:file, Types::VirtualGatewayListenerTlsCertificate::File, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayListenerTlsFileCertificate, location_name: "file"))
    VirtualGatewayListenerTlsCertificate.add_member(:sds, Types::VirtualGatewayListenerTlsCertificate::Sds, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayListenerTlsSdsCertificate, location_name: "sds"))
    VirtualGatewayListenerTlsCertificate.add_member(:unknown, Types::VirtualGatewayListenerTlsCertificate::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    VirtualGatewayListenerTlsCertificate.type = Types::VirtualGatewayListenerTlsCertificate
    VirtualGatewayListenerTlsFileCertificate.add_member(:certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePath, location_name: "certificateChain", traits: {"smithy.api#required" => {}}))
    VirtualGatewayListenerTlsFileCertificate.add_member(:private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePath, location_name: "privateKey", traits: {"smithy.api#required" => {}}))
    VirtualGatewayListenerTlsFileCertificate.type = Types::VirtualGatewayListenerTlsFileCertificate
    VirtualGatewayListenerTlsSdsCertificate.add_member(:secret_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewaySdsSecretName, location_name: "secretName", traits: {"smithy.api#required" => {}}))
    VirtualGatewayListenerTlsSdsCertificate.type = Types::VirtualGatewayListenerTlsSdsCertificate
    VirtualGatewayListenerTlsValidationContext.add_member(:trust, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayListenerTlsValidationContextTrust, location_name: "trust", traits: {"smithy.api#required" => {}}))
    VirtualGatewayListenerTlsValidationContext.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectAlternativeNames, location_name: "subjectAlternativeNames"))
    VirtualGatewayListenerTlsValidationContext.type = Types::VirtualGatewayListenerTlsValidationContext
    VirtualGatewayListenerTlsValidationContextTrust.add_member(:file, Types::VirtualGatewayListenerTlsValidationContextTrust::File, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayTlsValidationContextFileTrust, location_name: "file"))
    VirtualGatewayListenerTlsValidationContextTrust.add_member(:sds, Types::VirtualGatewayListenerTlsValidationContextTrust::Sds, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayTlsValidationContextSdsTrust, location_name: "sds"))
    VirtualGatewayListenerTlsValidationContextTrust.add_member(:unknown, Types::VirtualGatewayListenerTlsValidationContextTrust::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    VirtualGatewayListenerTlsValidationContextTrust.type = Types::VirtualGatewayListenerTlsValidationContextTrust
    VirtualGatewayListeners.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayListener)
    VirtualGatewayLogging.add_member(:access_log, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayAccessLog, location_name: "accessLog"))
    VirtualGatewayLogging.type = Types::VirtualGatewayLogging
    VirtualGatewayPortMapping.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, location_name: "port", traits: {"smithy.api#required" => {}}))
    VirtualGatewayPortMapping.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayPortProtocol, location_name: "protocol", traits: {"smithy.api#required" => {}}))
    VirtualGatewayPortMapping.type = Types::VirtualGatewayPortMapping
    VirtualGatewayRef.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#required" => {}}))
    VirtualGatewayRef.add_member(:virtual_gateway_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualGatewayName", traits: {"smithy.api#required" => {}}))
    VirtualGatewayRef.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#required" => {}}))
    VirtualGatewayRef.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "resourceOwner", traits: {"smithy.api#required" => {}}))
    VirtualGatewayRef.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    VirtualGatewayRef.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "version", traits: {"smithy.api#required" => {}}))
    VirtualGatewayRef.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    VirtualGatewayRef.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    VirtualGatewayRef.type = Types::VirtualGatewayRef
    VirtualGatewaySpec.add_member(:backend_defaults, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayBackendDefaults, location_name: "backendDefaults"))
    VirtualGatewaySpec.add_member(:listeners, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayListeners, location_name: "listeners", traits: {"smithy.api#required" => {}}))
    VirtualGatewaySpec.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayLogging, location_name: "logging"))
    VirtualGatewaySpec.type = Types::VirtualGatewaySpec
    VirtualGatewayStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayStatusCode, location_name: "status", traits: {"smithy.api#required" => {}}))
    VirtualGatewayStatus.type = Types::VirtualGatewayStatus
    VirtualGatewayTlsValidationContext.add_member(:trust, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayTlsValidationContextTrust, location_name: "trust", traits: {"smithy.api#required" => {}}))
    VirtualGatewayTlsValidationContext.add_member(:subject_alternative_names, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectAlternativeNames, location_name: "subjectAlternativeNames"))
    VirtualGatewayTlsValidationContext.type = Types::VirtualGatewayTlsValidationContext
    VirtualGatewayTlsValidationContextAcmTrust.add_member(:certificate_authority_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayCertificateAuthorityArns, location_name: "certificateAuthorityArns", traits: {"smithy.api#required" => {}}))
    VirtualGatewayTlsValidationContextAcmTrust.type = Types::VirtualGatewayTlsValidationContextAcmTrust
    VirtualGatewayTlsValidationContextFileTrust.add_member(:certificate_chain, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePath, location_name: "certificateChain", traits: {"smithy.api#required" => {}}))
    VirtualGatewayTlsValidationContextFileTrust.type = Types::VirtualGatewayTlsValidationContextFileTrust
    VirtualGatewayTlsValidationContextSdsTrust.add_member(:secret_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewaySdsSecretName, location_name: "secretName", traits: {"smithy.api#required" => {}}))
    VirtualGatewayTlsValidationContextSdsTrust.type = Types::VirtualGatewayTlsValidationContextSdsTrust
    VirtualGatewayTlsValidationContextTrust.add_member(:acm, Types::VirtualGatewayTlsValidationContextTrust::Acm, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayTlsValidationContextAcmTrust, location_name: "acm"))
    VirtualGatewayTlsValidationContextTrust.add_member(:file, Types::VirtualGatewayTlsValidationContextTrust::File, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayTlsValidationContextFileTrust, location_name: "file"))
    VirtualGatewayTlsValidationContextTrust.add_member(:sds, Types::VirtualGatewayTlsValidationContextTrust::Sds, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualGatewayTlsValidationContextSdsTrust, location_name: "sds"))
    VirtualGatewayTlsValidationContextTrust.add_member(:unknown, Types::VirtualGatewayTlsValidationContextTrust::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    VirtualGatewayTlsValidationContextTrust.type = Types::VirtualGatewayTlsValidationContextTrust
    VirtualNodeConnectionPool.add_member(:tcp, Types::VirtualNodeConnectionPool::Tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeTcpConnectionPool, location_name: "tcp"))
    VirtualNodeConnectionPool.add_member(:http, Types::VirtualNodeConnectionPool::Http, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeHttpConnectionPool, location_name: "http"))
    VirtualNodeConnectionPool.add_member(:http2, Types::VirtualNodeConnectionPool::Http2, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeHttp2ConnectionPool, location_name: "http2"))
    VirtualNodeConnectionPool.add_member(:grpc, Types::VirtualNodeConnectionPool::Grpc, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeGrpcConnectionPool, location_name: "grpc"))
    VirtualNodeConnectionPool.add_member(:unknown, Types::VirtualNodeConnectionPool::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    VirtualNodeConnectionPool.type = Types::VirtualNodeConnectionPool
    VirtualNodeData.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#required" => {}}))
    VirtualNodeData.add_member(:virtual_node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualNodeName", traits: {"smithy.api#required" => {}}))
    VirtualNodeData.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeSpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    VirtualNodeData.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    VirtualNodeData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    VirtualNodeData.type = Types::VirtualNodeData
    VirtualNodeGrpcConnectionPool.add_member(:max_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRequests, location_name: "maxRequests", traits: {"smithy.api#required" => {}}))
    VirtualNodeGrpcConnectionPool.type = Types::VirtualNodeGrpcConnectionPool
    VirtualNodeHttp2ConnectionPool.add_member(:max_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxRequests, location_name: "maxRequests", traits: {"smithy.api#required" => {}}))
    VirtualNodeHttp2ConnectionPool.type = Types::VirtualNodeHttp2ConnectionPool
    VirtualNodeHttpConnectionPool.add_member(:max_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConnections, location_name: "maxConnections", traits: {"smithy.api#required" => {}}))
    VirtualNodeHttpConnectionPool.add_member(:max_pending_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxPendingRequests, location_name: "maxPendingRequests", traits: {"smithy.api#default" => nil}))
    VirtualNodeHttpConnectionPool.type = Types::VirtualNodeHttpConnectionPool
    VirtualNodeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeRef)
    VirtualNodeRef.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#required" => {}}))
    VirtualNodeRef.add_member(:virtual_node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualNodeName", traits: {"smithy.api#required" => {}}))
    VirtualNodeRef.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#required" => {}}))
    VirtualNodeRef.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "resourceOwner", traits: {"smithy.api#required" => {}}))
    VirtualNodeRef.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    VirtualNodeRef.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "version", traits: {"smithy.api#required" => {}}))
    VirtualNodeRef.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    VirtualNodeRef.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    VirtualNodeRef.type = Types::VirtualNodeRef
    VirtualNodeServiceProvider.add_member(:virtual_node_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualNodeName", traits: {"smithy.api#required" => {}}))
    VirtualNodeServiceProvider.type = Types::VirtualNodeServiceProvider
    VirtualNodeSpec.add_member(:service_discovery, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDiscovery, location_name: "serviceDiscovery"))
    VirtualNodeSpec.add_member(:listeners, ::Smithy::Schema::Shapes::MemberShape.new(target: Listeners, location_name: "listeners"))
    VirtualNodeSpec.add_member(:backends, ::Smithy::Schema::Shapes::MemberShape.new(target: Backends, location_name: "backends"))
    VirtualNodeSpec.add_member(:backend_defaults, ::Smithy::Schema::Shapes::MemberShape.new(target: BackendDefaults, location_name: "backendDefaults"))
    VirtualNodeSpec.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, location_name: "logging"))
    VirtualNodeSpec.type = Types::VirtualNodeSpec
    VirtualNodeStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeStatusCode, location_name: "status", traits: {"smithy.api#required" => {}}))
    VirtualNodeStatus.type = Types::VirtualNodeStatus
    VirtualNodeTcpConnectionPool.add_member(:max_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConnections, location_name: "maxConnections", traits: {"smithy.api#required" => {}}))
    VirtualNodeTcpConnectionPool.type = Types::VirtualNodeTcpConnectionPool
    VirtualRouterData.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#required" => {}}))
    VirtualRouterData.add_member(:virtual_router_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualRouterName", traits: {"smithy.api#required" => {}}))
    VirtualRouterData.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualRouterSpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    VirtualRouterData.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    VirtualRouterData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualRouterStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    VirtualRouterData.type = Types::VirtualRouterData
    VirtualRouterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualRouterRef)
    VirtualRouterListener.add_member(:port_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: PortMapping, location_name: "portMapping", traits: {"smithy.api#required" => {}}))
    VirtualRouterListener.type = Types::VirtualRouterListener
    VirtualRouterListeners.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualRouterListener)
    VirtualRouterRef.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#required" => {}}))
    VirtualRouterRef.add_member(:virtual_router_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualRouterName", traits: {"smithy.api#required" => {}}))
    VirtualRouterRef.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#required" => {}}))
    VirtualRouterRef.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "resourceOwner", traits: {"smithy.api#required" => {}}))
    VirtualRouterRef.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    VirtualRouterRef.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "version", traits: {"smithy.api#required" => {}}))
    VirtualRouterRef.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    VirtualRouterRef.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    VirtualRouterRef.type = Types::VirtualRouterRef
    VirtualRouterServiceProvider.add_member(:virtual_router_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualRouterName", traits: {"smithy.api#required" => {}}))
    VirtualRouterServiceProvider.type = Types::VirtualRouterServiceProvider
    VirtualRouterSpec.add_member(:listeners, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualRouterListeners, location_name: "listeners"))
    VirtualRouterSpec.type = Types::VirtualRouterSpec
    VirtualRouterStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualRouterStatusCode, location_name: "status", traits: {"smithy.api#required" => {}}))
    VirtualRouterStatus.type = Types::VirtualRouterStatus
    VirtualServiceBackend.add_member(:virtual_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, location_name: "virtualServiceName", traits: {"smithy.api#required" => {}}))
    VirtualServiceBackend.add_member(:client_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientPolicy, location_name: "clientPolicy"))
    VirtualServiceBackend.type = Types::VirtualServiceBackend
    VirtualServiceData.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#required" => {}}))
    VirtualServiceData.add_member(:virtual_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, location_name: "virtualServiceName", traits: {"smithy.api#required" => {}}))
    VirtualServiceData.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualServiceSpec, location_name: "spec", traits: {"smithy.api#required" => {}}))
    VirtualServiceData.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    VirtualServiceData.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualServiceStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    VirtualServiceData.type = Types::VirtualServiceData
    VirtualServiceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualServiceRef)
    VirtualServiceProvider.add_member(:virtual_node, Types::VirtualServiceProvider::VirtualNode, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualNodeServiceProvider, location_name: "virtualNode"))
    VirtualServiceProvider.add_member(:virtual_router, Types::VirtualServiceProvider::VirtualRouter, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualRouterServiceProvider, location_name: "virtualRouter"))
    VirtualServiceProvider.add_member(:unknown, Types::VirtualServiceProvider::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    VirtualServiceProvider.type = Types::VirtualServiceProvider
    VirtualServiceRef.add_member(:mesh_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "meshName", traits: {"smithy.api#required" => {}}))
    VirtualServiceRef.add_member(:virtual_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, location_name: "virtualServiceName", traits: {"smithy.api#required" => {}}))
    VirtualServiceRef.add_member(:mesh_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "meshOwner", traits: {"smithy.api#required" => {}}))
    VirtualServiceRef.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "resourceOwner", traits: {"smithy.api#required" => {}}))
    VirtualServiceRef.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    VirtualServiceRef.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "version", traits: {"smithy.api#required" => {}}))
    VirtualServiceRef.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}}))
    VirtualServiceRef.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    VirtualServiceRef.type = Types::VirtualServiceRef
    VirtualServiceSpec.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualServiceProvider, location_name: "provider"))
    VirtualServiceSpec.type = Types::VirtualServiceSpec
    VirtualServiceStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VirtualServiceStatusCode, location_name: "status", traits: {"smithy.api#required" => {}}))
    VirtualServiceStatus.type = Types::VirtualServiceStatus
    WeightedTarget.add_member(:virtual_node, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "virtualNode", traits: {"smithy.api#required" => {}}))
    WeightedTarget.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: PercentInt, location_name: "weight", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    WeightedTarget.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: ListenerPort, location_name: "port"))
    WeightedTarget.type = Types::WeightedTarget
    WeightedTargets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WeightedTarget)

    AppMesh = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.appmesh#AppMesh"
      service.name = "AppMesh"
      service.version = "2019-01-25"
      service.traits = {"aws.api#service" => {"sdkId" => "App Mesh", "arnNamespace" => "appmesh", "cloudFormationName" => "AppMesh", "cloudTrailEventSource" => "appmesh.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "appmesh"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "AWS App Mesh"}
      service.add_operation(:create_gateway_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#CreateGatewayRoute"
        operation.name = "CreateGatewayRoute"
        operation.input = CreateGatewayRouteOperationInput
        operation.output = CreateGatewayRouteOperationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_mesh, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#CreateMesh"
        operation.name = "CreateMesh"
        operation.input = CreateMeshOperationInput
        operation.output = CreateMeshOperationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#CreateRoute"
        operation.name = "CreateRoute"
        operation.input = CreateRouteOperationInput
        operation.output = CreateRouteOperationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_virtual_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#CreateVirtualGateway"
        operation.name = "CreateVirtualGateway"
        operation.input = CreateVirtualGatewayOperationInput
        operation.output = CreateVirtualGatewayOperationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualGateways", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_virtual_node, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#CreateVirtualNode"
        operation.name = "CreateVirtualNode"
        operation.input = CreateVirtualNodeOperationInput
        operation.output = CreateVirtualNodeOperationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualNodes", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_virtual_router, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#CreateVirtualRouter"
        operation.name = "CreateVirtualRouter"
        operation.input = CreateVirtualRouterOperationInput
        operation.output = CreateVirtualRouterOperationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualRouters", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_virtual_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#CreateVirtualService"
        operation.name = "CreateVirtualService"
        operation.input = CreateVirtualServiceOperationInput
        operation.output = CreateVirtualServiceOperationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualServices", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_gateway_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#DeleteGatewayRoute"
        operation.name = "DeleteGatewayRoute"
        operation.input = DeleteGatewayRouteOperationInput
        operation.output = DeleteGatewayRouteOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ResourceInUseException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_mesh, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#DeleteMesh"
        operation.name = "DeleteMesh"
        operation.input = DeleteMeshOperationInput
        operation.output = DeleteMeshOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ResourceInUseException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#DeleteRoute"
        operation.name = "DeleteRoute"
        operation.input = DeleteRouteOperationInput
        operation.output = DeleteRouteOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ResourceInUseException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_virtual_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#DeleteVirtualGateway"
        operation.name = "DeleteVirtualGateway"
        operation.input = DeleteVirtualGatewayOperationInput
        operation.output = DeleteVirtualGatewayOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ResourceInUseException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_virtual_node, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#DeleteVirtualNode"
        operation.name = "DeleteVirtualNode"
        operation.input = DeleteVirtualNodeOperationInput
        operation.output = DeleteVirtualNodeOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ResourceInUseException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_virtual_router, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#DeleteVirtualRouter"
        operation.name = "DeleteVirtualRouter"
        operation.input = DeleteVirtualRouterOperationInput
        operation.output = DeleteVirtualRouterOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ResourceInUseException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_virtual_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#DeleteVirtualService"
        operation.name = "DeleteVirtualService"
        operation.input = DeleteVirtualServiceOperationInput
        operation.output = DeleteVirtualServiceOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ResourceInUseException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_gateway_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#DescribeGatewayRoute"
        operation.name = "DescribeGatewayRoute"
        operation.input = DescribeGatewayRouteOperationInput
        operation.output = DescribeGatewayRouteOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_mesh, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#DescribeMesh"
        operation.name = "DescribeMesh"
        operation.input = DescribeMeshOperationInput
        operation.output = DescribeMeshOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#DescribeRoute"
        operation.name = "DescribeRoute"
        operation.input = DescribeRouteOperationInput
        operation.output = DescribeRouteOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_virtual_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#DescribeVirtualGateway"
        operation.name = "DescribeVirtualGateway"
        operation.input = DescribeVirtualGatewayOperationInput
        operation.output = DescribeVirtualGatewayOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_virtual_node, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#DescribeVirtualNode"
        operation.name = "DescribeVirtualNode"
        operation.input = DescribeVirtualNodeOperationInput
        operation.output = DescribeVirtualNodeOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_virtual_router, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#DescribeVirtualRouter"
        operation.name = "DescribeVirtualRouter"
        operation.input = DescribeVirtualRouterOperationInput
        operation.output = DescribeVirtualRouterOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_virtual_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#DescribeVirtualService"
        operation.name = "DescribeVirtualService"
        operation.input = DescribeVirtualServiceOperationInput
        operation.output = DescribeVirtualServiceOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_gateway_routes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#ListGatewayRoutes"
        operation.name = "ListGatewayRoutes"
        operation.input = ListGatewayRoutesOperationInput
        operation.output = ListGatewayRoutesOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListGatewayRoutes.new
      end)
      service.add_operation(:list_meshes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#ListMeshes"
        operation.name = "ListMeshes"
        operation.input = ListMeshesOperationInput
        operation.output = ListMeshesOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMeshes.new
      end)
      service.add_operation(:list_routes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#ListRoutes"
        operation.name = "ListRoutes"
        operation.input = ListRoutesOperationInput
        operation.output = ListRoutesOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRoutes.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceOperationInput
        operation.output = ListTagsForResourceOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/tags", "method" => "GET"}, "smithy.api#readonly" => {}, "smithy.api#tags" => ["not-preview"]}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:list_virtual_gateways, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#ListVirtualGateways"
        operation.name = "ListVirtualGateways"
        operation.input = ListVirtualGatewaysOperationInput
        operation.output = ListVirtualGatewaysOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualGateways", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVirtualGateways.new
      end)
      service.add_operation(:list_virtual_nodes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#ListVirtualNodes"
        operation.name = "ListVirtualNodes"
        operation.input = ListVirtualNodesOperationInput
        operation.output = ListVirtualNodesOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualNodes", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVirtualNodes.new
      end)
      service.add_operation(:list_virtual_routers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#ListVirtualRouters"
        operation.name = "ListVirtualRouters"
        operation.input = ListVirtualRoutersOperationInput
        operation.output = ListVirtualRoutersOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualRouters", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVirtualRouters.new
      end)
      service.add_operation(:list_virtual_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#ListVirtualServices"
        operation.name = "ListVirtualServices"
        operation.input = ListVirtualServicesOperationInput
        operation.output = ListVirtualServicesOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualServices", "method" => "GET"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVirtualServices.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceOperationInput
        operation.output = TagResourceOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/tag", "method" => "PUT"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["not-preview"]}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceOperationInput
        operation.output = UntagResourceOperationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/untag", "method" => "PUT"}, "smithy.api#idempotent" => {}, "smithy.api#tags" => ["not-preview"]}
      end)
      service.add_operation(:update_gateway_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#UpdateGatewayRoute"
        operation.name = "UpdateGatewayRoute"
        operation.input = UpdateGatewayRouteOperationInput
        operation.output = UpdateGatewayRouteOperationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_mesh, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#UpdateMesh"
        operation.name = "UpdateMesh"
        operation.input = UpdateMeshOperationInput
        operation.output = UpdateMeshOperationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_route, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#UpdateRoute"
        operation.name = "UpdateRoute"
        operation.input = UpdateRouteOperationInput
        operation.output = UpdateRouteOperationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_virtual_gateway, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#UpdateVirtualGateway"
        operation.name = "UpdateVirtualGateway"
        operation.input = UpdateVirtualGatewayOperationInput
        operation.output = UpdateVirtualGatewayOperationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_virtual_node, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#UpdateVirtualNode"
        operation.name = "UpdateVirtualNode"
        operation.input = UpdateVirtualNodeOperationInput
        operation.output = UpdateVirtualNodeOperationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_virtual_router, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#UpdateVirtualRouter"
        operation.name = "UpdateVirtualRouter"
        operation.input = UpdateVirtualRouterOperationInput
        operation.output = UpdateVirtualRouterOperationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_virtual_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appmesh#UpdateVirtualService"
        operation.name = "UpdateVirtualService"
        operation.input = UpdateVirtualServiceOperationInput
        operation.output = UpdateVirtualServiceOperationOutput
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"uri" => "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}", "method" => "PUT"}, "smithy.api#idempotent" => {}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
