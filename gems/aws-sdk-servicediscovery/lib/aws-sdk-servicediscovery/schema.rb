# frozen_string_literal: true

# This is generated code!

module Aws::ServiceDiscovery
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#AWSAccountId", name: "AWSAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    AttrKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#AttrKey", name: "AttrKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9!-~]+$"})
    AttrValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#AttrValue", name: "AttrValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^([a-zA-Z0-9!-~][ \\ta-zA-Z0-9!-~]*){0,1}[a-zA-Z0-9!-~]{0,1}$"})
    Attributes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.servicediscovery#Attributes", name: "Attributes")
    Code = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#Code", name: "Code")
    CreateHttpNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#CreateHttpNamespaceRequest", name: "CreateHttpNamespaceRequest")
    CreateHttpNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#CreateHttpNamespaceResponse", name: "CreateHttpNamespaceResponse")
    CreatePrivateDnsNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#CreatePrivateDnsNamespaceRequest", name: "CreatePrivateDnsNamespaceRequest")
    CreatePrivateDnsNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#CreatePrivateDnsNamespaceResponse", name: "CreatePrivateDnsNamespaceResponse")
    CreatePublicDnsNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#CreatePublicDnsNamespaceRequest", name: "CreatePublicDnsNamespaceRequest")
    CreatePublicDnsNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#CreatePublicDnsNamespaceResponse", name: "CreatePublicDnsNamespaceResponse")
    CreateServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#CreateServiceRequest", name: "CreateServiceRequest")
    CreateServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#CreateServiceResponse", name: "CreateServiceResponse")
    CustomHealthNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#CustomHealthNotFound", name: "CustomHealthNotFound", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    CustomHealthStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicediscovery#CustomHealthStatus", name: "CustomHealthStatus")
    DeleteNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DeleteNamespaceRequest", name: "DeleteNamespaceRequest")
    DeleteNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DeleteNamespaceResponse", name: "DeleteNamespaceResponse")
    DeleteServiceAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DeleteServiceAttributesRequest", name: "DeleteServiceAttributesRequest")
    DeleteServiceAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DeleteServiceAttributesResponse", name: "DeleteServiceAttributesResponse")
    DeleteServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DeleteServiceRequest", name: "DeleteServiceRequest")
    DeleteServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DeleteServiceResponse", name: "DeleteServiceResponse")
    DeregisterInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DeregisterInstanceRequest", name: "DeregisterInstanceRequest")
    DeregisterInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DeregisterInstanceResponse", name: "DeregisterInstanceResponse")
    DiscoverInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DiscoverInstancesRequest", name: "DiscoverInstancesRequest")
    DiscoverInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DiscoverInstancesResponse", name: "DiscoverInstancesResponse")
    DiscoverInstancesRevisionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DiscoverInstancesRevisionRequest", name: "DiscoverInstancesRevisionRequest")
    DiscoverInstancesRevisionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DiscoverInstancesRevisionResponse", name: "DiscoverInstancesRevisionResponse")
    DiscoverMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicediscovery#DiscoverMaxResults", name: "DiscoverMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    DnsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DnsConfig", name: "DnsConfig")
    DnsConfigChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DnsConfigChange", name: "DnsConfigChange")
    DnsProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DnsProperties", name: "DnsProperties")
    DnsRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DnsRecord", name: "DnsRecord")
    DnsRecordList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicediscovery#DnsRecordList", name: "DnsRecordList")
    DuplicateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#DuplicateRequest", name: "DuplicateRequest", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#ErrorMessage", name: "ErrorMessage")
    FailureThreshold = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicediscovery#FailureThreshold", name: "FailureThreshold", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    FilterCondition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicediscovery#FilterCondition", name: "FilterCondition")
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#FilterValue", name: "FilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicediscovery#FilterValues", name: "FilterValues")
    GetInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#GetInstanceRequest", name: "GetInstanceRequest")
    GetInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#GetInstanceResponse", name: "GetInstanceResponse")
    GetInstancesHealthStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#GetInstancesHealthStatusRequest", name: "GetInstancesHealthStatusRequest")
    GetInstancesHealthStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#GetInstancesHealthStatusResponse", name: "GetInstancesHealthStatusResponse")
    GetNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#GetNamespaceRequest", name: "GetNamespaceRequest")
    GetNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#GetNamespaceResponse", name: "GetNamespaceResponse")
    GetOperationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#GetOperationRequest", name: "GetOperationRequest")
    GetOperationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#GetOperationResponse", name: "GetOperationResponse")
    GetServiceAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#GetServiceAttributesRequest", name: "GetServiceAttributesRequest")
    GetServiceAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#GetServiceAttributesResponse", name: "GetServiceAttributesResponse")
    GetServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#GetServiceRequest", name: "GetServiceRequest")
    GetServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#GetServiceResponse", name: "GetServiceResponse")
    HealthCheckConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#HealthCheckConfig", name: "HealthCheckConfig")
    HealthCheckCustomConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#HealthCheckCustomConfig", name: "HealthCheckCustomConfig")
    HealthCheckType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicediscovery#HealthCheckType", name: "HealthCheckType")
    HealthStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicediscovery#HealthStatus", name: "HealthStatus")
    HealthStatusFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicediscovery#HealthStatusFilter", name: "HealthStatusFilter")
    HttpInstanceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#HttpInstanceSummary", name: "HttpInstanceSummary")
    HttpInstanceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicediscovery#HttpInstanceSummaryList", name: "HttpInstanceSummaryList")
    HttpNamespaceChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#HttpNamespaceChange", name: "HttpNamespaceChange")
    HttpProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#HttpProperties", name: "HttpProperties")
    Instance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#Instance", name: "Instance")
    InstanceHealthStatusMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.servicediscovery#InstanceHealthStatusMap", name: "InstanceHealthStatusMap")
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#InstanceId", name: "InstanceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[0-9a-zA-Z_/:.@-]+$"})
    InstanceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicediscovery#InstanceIdList", name: "InstanceIdList", traits: {"smithy.api#length" => {"min" => 1}})
    InstanceNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#InstanceNotFound", name: "InstanceNotFound", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    InstanceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#InstanceSummary", name: "InstanceSummary")
    InstanceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicediscovery#InstanceSummaryList", name: "InstanceSummaryList")
    InvalidInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#InvalidInput", name: "InvalidInput", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ListInstancesRequest", name: "ListInstancesRequest")
    ListInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ListInstancesResponse", name: "ListInstancesResponse")
    ListNamespacesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ListNamespacesRequest", name: "ListNamespacesRequest")
    ListNamespacesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ListNamespacesResponse", name: "ListNamespacesResponse")
    ListOperationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ListOperationsRequest", name: "ListOperationsRequest")
    ListOperationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ListOperationsResponse", name: "ListOperationsResponse")
    ListServicesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ListServicesRequest", name: "ListServicesRequest")
    ListServicesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ListServicesResponse", name: "ListServicesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicediscovery#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#Message", name: "Message")
    Namespace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#Namespace", name: "Namespace")
    NamespaceAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#NamespaceAlreadyExists", name: "NamespaceAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NamespaceFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#NamespaceFilter", name: "NamespaceFilter")
    NamespaceFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicediscovery#NamespaceFilterName", name: "NamespaceFilterName")
    NamespaceFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicediscovery#NamespaceFilters", name: "NamespaceFilters")
    NamespaceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#NamespaceName", name: "NamespaceName", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[!-~]{1,1024}$"})
    NamespaceNameHttp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#NamespaceNameHttp", name: "NamespaceNameHttp", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^(?!arn:)[!-~]{1,1024}$"})
    NamespaceNamePrivate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#NamespaceNamePrivate", name: "NamespaceNamePrivate", traits: {"smithy.api#length" => {"min" => 0, "max" => 253}, "smithy.api#pattern" => "^(?!arn:)[!-~]{1,253}$"})
    NamespaceNamePublic = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#NamespaceNamePublic", name: "NamespaceNamePublic", traits: {"smithy.api#length" => {"min" => 0, "max" => 253}, "smithy.api#pattern" => "^([a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?\\.)+[a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?$"})
    NamespaceNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#NamespaceNotFound", name: "NamespaceNotFound", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NamespaceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#NamespaceProperties", name: "NamespaceProperties")
    NamespaceSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicediscovery#NamespaceSummariesList", name: "NamespaceSummariesList")
    NamespaceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#NamespaceSummary", name: "NamespaceSummary")
    NamespaceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicediscovery#NamespaceType", name: "NamespaceType")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    Operation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#Operation", name: "Operation")
    OperationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#OperationFilter", name: "OperationFilter")
    OperationFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicediscovery#OperationFilterName", name: "OperationFilterName")
    OperationFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicediscovery#OperationFilters", name: "OperationFilters")
    OperationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#OperationId", name: "OperationId", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    OperationNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#OperationNotFound", name: "OperationNotFound", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OperationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicediscovery#OperationStatus", name: "OperationStatus")
    OperationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#OperationSummary", name: "OperationSummary")
    OperationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicediscovery#OperationSummaryList", name: "OperationSummaryList")
    OperationTargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicediscovery#OperationTargetType", name: "OperationTargetType")
    OperationTargetsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.servicediscovery#OperationTargetsMap", name: "OperationTargetsMap")
    OperationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicediscovery#OperationType", name: "OperationType")
    PrivateDnsNamespaceChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#PrivateDnsNamespaceChange", name: "PrivateDnsNamespaceChange")
    PrivateDnsNamespaceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#PrivateDnsNamespaceProperties", name: "PrivateDnsNamespaceProperties")
    PrivateDnsNamespacePropertiesChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#PrivateDnsNamespacePropertiesChange", name: "PrivateDnsNamespacePropertiesChange")
    PrivateDnsPropertiesMutable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#PrivateDnsPropertiesMutable", name: "PrivateDnsPropertiesMutable")
    PrivateDnsPropertiesMutableChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#PrivateDnsPropertiesMutableChange", name: "PrivateDnsPropertiesMutableChange")
    PublicDnsNamespaceChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#PublicDnsNamespaceChange", name: "PublicDnsNamespaceChange")
    PublicDnsNamespaceProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#PublicDnsNamespaceProperties", name: "PublicDnsNamespaceProperties")
    PublicDnsNamespacePropertiesChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#PublicDnsNamespacePropertiesChange", name: "PublicDnsNamespacePropertiesChange")
    PublicDnsPropertiesMutable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#PublicDnsPropertiesMutable", name: "PublicDnsPropertiesMutable")
    PublicDnsPropertiesMutableChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#PublicDnsPropertiesMutableChange", name: "PublicDnsPropertiesMutableChange")
    RecordTTL = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicediscovery#RecordTTL", name: "RecordTTL", traits: {"smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    RecordType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicediscovery#RecordType", name: "RecordType")
    RegisterInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#RegisterInstanceRequest", name: "RegisterInstanceRequest")
    RegisterInstanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#RegisterInstanceResponse", name: "RegisterInstanceResponse")
    RequestLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#RequestLimitExceeded", name: "RequestLimitExceeded", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ResourceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicediscovery#ResourceCount", name: "ResourceCount")
    ResourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#ResourceDescription", name: "ResourceDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    ResourceInUse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ResourceInUse", name: "ResourceInUse", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceLimitExceeded = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ResourceLimitExceeded", name: "ResourceLimitExceeded", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#ResourcePath", name: "ResourcePath", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    Revision = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.servicediscovery#Revision", name: "Revision")
    RoutingPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicediscovery#RoutingPolicy", name: "RoutingPolicy")
    SOA = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#SOA", name: "SOA")
    SOAChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#SOAChange", name: "SOAChange")
    Service = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#Service", name: "Service")
    ServiceAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ServiceAlreadyExists", name: "ServiceAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceAttributeKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#ServiceAttributeKey", name: "ServiceAttributeKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    ServiceAttributeKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicediscovery#ServiceAttributeKeyList", name: "ServiceAttributeKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    ServiceAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#ServiceAttributeValue", name: "ServiceAttributeValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    ServiceAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ServiceAttributes", name: "ServiceAttributes")
    ServiceAttributesLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ServiceAttributesLimitExceededException", name: "ServiceAttributesLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceAttributesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.servicediscovery#ServiceAttributesMap", name: "ServiceAttributesMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    ServiceChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ServiceChange", name: "ServiceChange")
    ServiceFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ServiceFilter", name: "ServiceFilter")
    ServiceFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicediscovery#ServiceFilterName", name: "ServiceFilterName")
    ServiceFilters = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicediscovery#ServiceFilters", name: "ServiceFilters")
    ServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#ServiceName", name: "ServiceName", traits: {"smithy.api#pattern" => "^((?=^.{1,127}$)^([a-zA-Z0-9_][a-zA-Z0-9-_]{0,61}[a-zA-Z0-9_]|[a-zA-Z0-9])(\\.([a-zA-Z0-9_][a-zA-Z0-9-_]{0,61}[a-zA-Z0-9_]|[a-zA-Z0-9]))*$)|(^\\.$)$"})
    ServiceNotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ServiceNotFound", name: "ServiceNotFound", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicediscovery#ServiceSummariesList", name: "ServiceSummariesList")
    ServiceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#ServiceSummary", name: "ServiceSummary")
    ServiceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicediscovery#ServiceType", name: "ServiceType")
    ServiceTypeOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.servicediscovery#ServiceTypeOption", name: "ServiceTypeOption")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicediscovery#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.servicediscovery#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.servicediscovery#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.servicediscovery#Timestamp", name: "Timestamp")
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateHttpNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#UpdateHttpNamespaceRequest", name: "UpdateHttpNamespaceRequest")
    UpdateHttpNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#UpdateHttpNamespaceResponse", name: "UpdateHttpNamespaceResponse")
    UpdateInstanceCustomHealthStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#UpdateInstanceCustomHealthStatusRequest", name: "UpdateInstanceCustomHealthStatusRequest")
    UpdatePrivateDnsNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#UpdatePrivateDnsNamespaceRequest", name: "UpdatePrivateDnsNamespaceRequest")
    UpdatePrivateDnsNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#UpdatePrivateDnsNamespaceResponse", name: "UpdatePrivateDnsNamespaceResponse")
    UpdatePublicDnsNamespaceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#UpdatePublicDnsNamespaceRequest", name: "UpdatePublicDnsNamespaceRequest")
    UpdatePublicDnsNamespaceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#UpdatePublicDnsNamespaceResponse", name: "UpdatePublicDnsNamespaceResponse")
    UpdateServiceAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#UpdateServiceAttributesRequest", name: "UpdateServiceAttributesRequest")
    UpdateServiceAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#UpdateServiceAttributesResponse", name: "UpdateServiceAttributesResponse")
    UpdateServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#UpdateServiceRequest", name: "UpdateServiceRequest")
    UpdateServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.servicediscovery#UpdateServiceResponse", name: "UpdateServiceResponse")

    Attributes.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AttrKey, name: "key"))
    Attributes.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: AttrValue, name: "value"))
    CreateHttpNamespaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceNameHttp, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateHttpNamespaceRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateHttpNamespaceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    CreateHttpNamespaceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateHttpNamespaceRequest.type = Types::CreateHttpNamespaceRequest
    CreateHttpNamespaceResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    CreateHttpNamespaceResponse.type = Types::CreateHttpNamespaceResponse
    CreatePrivateDnsNamespaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceNamePrivate, name: "Name", traits: {"smithy.api#required" => {}}))
    CreatePrivateDnsNamespaceRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePrivateDnsNamespaceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    CreatePrivateDnsNamespaceRequest.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Vpc", traits: {"smithy.api#required" => {}}))
    CreatePrivateDnsNamespaceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreatePrivateDnsNamespaceRequest.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateDnsNamespaceProperties, name: "Properties"))
    CreatePrivateDnsNamespaceRequest.type = Types::CreatePrivateDnsNamespaceRequest
    CreatePrivateDnsNamespaceResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    CreatePrivateDnsNamespaceResponse.type = Types::CreatePrivateDnsNamespaceResponse
    CreatePublicDnsNamespaceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceNamePublic, name: "Name", traits: {"smithy.api#required" => {}}))
    CreatePublicDnsNamespaceRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePublicDnsNamespaceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    CreatePublicDnsNamespaceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreatePublicDnsNamespaceRequest.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicDnsNamespaceProperties, name: "Properties"))
    CreatePublicDnsNamespaceRequest.type = Types::CreatePublicDnsNamespaceRequest
    CreatePublicDnsNamespaceResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    CreatePublicDnsNamespaceResponse.type = Types::CreatePublicDnsNamespaceResponse
    CreateServiceRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateServiceRequest.add_member(:namespace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "NamespaceId"))
    CreateServiceRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateServiceRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    CreateServiceRequest.add_member(:dns_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsConfig, name: "DnsConfig"))
    CreateServiceRequest.add_member(:health_check_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckConfig, name: "HealthCheckConfig"))
    CreateServiceRequest.add_member(:health_check_custom_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckCustomConfig, name: "HealthCheckCustomConfig"))
    CreateServiceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateServiceRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceTypeOption, name: "Type"))
    CreateServiceRequest.type = Types::CreateServiceRequest
    CreateServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "Service"))
    CreateServiceResponse.type = Types::CreateServiceResponse
    CustomHealthNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    CustomHealthNotFound.type = Types::CustomHealthNotFound
    CustomHealthStatus.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    CustomHealthStatus.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    DeleteNamespaceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteNamespaceRequest.type = Types::DeleteNamespaceRequest
    DeleteNamespaceResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    DeleteNamespaceResponse.type = Types::DeleteNamespaceResponse
    DeleteServiceAttributesRequest.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ServiceId", traits: {"smithy.api#required" => {}}))
    DeleteServiceAttributesRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAttributeKeyList, name: "Attributes", traits: {"smithy.api#required" => {}}))
    DeleteServiceAttributesRequest.type = Types::DeleteServiceAttributesRequest
    DeleteServiceAttributesResponse.type = Types::DeleteServiceAttributesResponse
    DeleteServiceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Id", traits: {"smithy.api#required" => {}}))
    DeleteServiceRequest.type = Types::DeleteServiceRequest
    DeleteServiceResponse.type = Types::DeleteServiceResponse
    DeregisterInstanceRequest.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ServiceId", traits: {"smithy.api#required" => {}}))
    DeregisterInstanceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    DeregisterInstanceRequest.type = Types::DeregisterInstanceRequest
    DeregisterInstanceResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    DeregisterInstanceResponse.type = Types::DeregisterInstanceResponse
    DiscoverInstancesRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "NamespaceName", traits: {"smithy.api#required" => {}}))
    DiscoverInstancesRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "ServiceName", traits: {"smithy.api#required" => {}}))
    DiscoverInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoverMaxResults, name: "MaxResults"))
    DiscoverInstancesRequest.add_member(:query_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "QueryParameters"))
    DiscoverInstancesRequest.add_member(:optional_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "OptionalParameters"))
    DiscoverInstancesRequest.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthStatusFilter, name: "HealthStatus"))
    DiscoverInstancesRequest.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "OwnerAccount"))
    DiscoverInstancesRequest.type = Types::DiscoverInstancesRequest
    DiscoverInstancesResponse.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpInstanceSummaryList, name: "Instances"))
    DiscoverInstancesResponse.add_member(:instances_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "InstancesRevision"))
    DiscoverInstancesResponse.type = Types::DiscoverInstancesResponse
    DiscoverInstancesRevisionRequest.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "NamespaceName", traits: {"smithy.api#required" => {}}))
    DiscoverInstancesRevisionRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "ServiceName", traits: {"smithy.api#required" => {}}))
    DiscoverInstancesRevisionRequest.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "OwnerAccount"))
    DiscoverInstancesRevisionRequest.type = Types::DiscoverInstancesRevisionRequest
    DiscoverInstancesRevisionResponse.add_member(:instances_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Revision, name: "InstancesRevision"))
    DiscoverInstancesRevisionResponse.type = Types::DiscoverInstancesRevisionResponse
    DnsConfig.add_member(:namespace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "NamespaceId", traits: {"smithy.api#deprecated" => {"message" => "Top level attribute in request should be used to reference namespace-id"}}))
    DnsConfig.add_member(:routing_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingPolicy, name: "RoutingPolicy"))
    DnsConfig.add_member(:dns_records, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsRecordList, name: "DnsRecords", traits: {"smithy.api#required" => {}}))
    DnsConfig.type = Types::DnsConfig
    DnsConfigChange.add_member(:dns_records, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsRecordList, name: "DnsRecords", traits: {"smithy.api#required" => {}}))
    DnsConfigChange.type = Types::DnsConfigChange
    DnsProperties.add_member(:hosted_zone_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "HostedZoneId"))
    DnsProperties.add_member(:soa, ::Smithy::Schema::Shapes::MemberShape.new(target: SOA, name: "SOA"))
    DnsProperties.type = Types::DnsProperties
    DnsRecord.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordType, name: "Type", traits: {"smithy.api#required" => {}}))
    DnsRecord.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordTTL, name: "TTL", traits: {"smithy.api#required" => {}}))
    DnsRecord.type = Types::DnsRecord
    DnsRecordList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsRecord, name: "member"))
    DuplicateRequest.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    DuplicateRequest.add_member(:duplicate_operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "DuplicateOperationId"))
    DuplicateRequest.type = Types::DuplicateRequest
    FilterCondition.add_member(:eq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EQ", traits: {"smithy.api#enumValue" => "EQ"}))
    FilterCondition.add_member(:in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN", traits: {"smithy.api#enumValue" => "IN"}))
    FilterCondition.add_member(:between, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BETWEEN", traits: {"smithy.api#enumValue" => "BETWEEN"}))
    FilterCondition.add_member(:begins_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEGINS_WITH", traits: {"smithy.api#enumValue" => "BEGINS_WITH"}))
    FilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member", traits: {"smithy.api#xmlName" => "item"}))
    GetInstanceRequest.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ServiceId", traits: {"smithy.api#required" => {}}))
    GetInstanceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    GetInstanceRequest.type = Types::GetInstanceRequest
    GetInstanceResponse.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "ResourceOwner"))
    GetInstanceResponse.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: Instance, name: "Instance"))
    GetInstanceResponse.type = Types::GetInstanceResponse
    GetInstancesHealthStatusRequest.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ServiceId", traits: {"smithy.api#required" => {}}))
    GetInstancesHealthStatusRequest.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceIdList, name: "Instances"))
    GetInstancesHealthStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    GetInstancesHealthStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetInstancesHealthStatusRequest.type = Types::GetInstancesHealthStatusRequest
    GetInstancesHealthStatusResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceHealthStatusMap, name: "Status"))
    GetInstancesHealthStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetInstancesHealthStatusResponse.type = Types::GetInstancesHealthStatusResponse
    GetNamespaceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Id", traits: {"smithy.api#required" => {}}))
    GetNamespaceRequest.type = Types::GetNamespaceRequest
    GetNamespaceResponse.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: Namespace, name: "Namespace"))
    GetNamespaceResponse.type = Types::GetNamespaceResponse
    GetOperationRequest.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId", traits: {"smithy.api#required" => {}}))
    GetOperationRequest.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "OwnerAccount"))
    GetOperationRequest.type = Types::GetOperationRequest
    GetOperationResponse.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: Operation, name: "Operation"))
    GetOperationResponse.type = Types::GetOperationResponse
    GetServiceAttributesRequest.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ServiceId", traits: {"smithy.api#required" => {}}))
    GetServiceAttributesRequest.type = Types::GetServiceAttributesRequest
    GetServiceAttributesResponse.add_member(:service_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAttributes, name: "ServiceAttributes"))
    GetServiceAttributesResponse.type = Types::GetServiceAttributesResponse
    GetServiceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Id", traits: {"smithy.api#required" => {}}))
    GetServiceRequest.type = Types::GetServiceRequest
    GetServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "Service"))
    GetServiceResponse.type = Types::GetServiceResponse
    HealthCheckConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckType, name: "Type", traits: {"smithy.api#required" => {}}))
    HealthCheckConfig.add_member(:resource_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePath, name: "ResourcePath"))
    HealthCheckConfig.add_member(:failure_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureThreshold, name: "FailureThreshold"))
    HealthCheckConfig.type = Types::HealthCheckConfig
    HealthCheckCustomConfig.add_member(:failure_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureThreshold, name: "FailureThreshold", traits: {"smithy.api#deprecated" => {"message" => "Configurable FailureThreshold of HealthCheckCustomConfig is deprecated.  It will always have value 1."}}))
    HealthCheckCustomConfig.type = Types::HealthCheckCustomConfig
    HealthCheckType.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    HealthCheckType.add_member(:https, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTPS", traits: {"smithy.api#enumValue" => "HTTPS"}))
    HealthCheckType.add_member(:tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TCP", traits: {"smithy.api#enumValue" => "TCP"}))
    HealthStatus.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    HealthStatus.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    HealthStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    HealthStatusFilter.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    HealthStatusFilter.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    HealthStatusFilter.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    HealthStatusFilter.add_member(:healthy_or_else_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY_OR_ELSE_ALL", traits: {"smithy.api#enumValue" => "HEALTHY_OR_ELSE_ALL"}))
    HttpInstanceSummary.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "InstanceId"))
    HttpInstanceSummary.add_member(:namespace_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceNameHttp, name: "NamespaceName"))
    HttpInstanceSummary.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "ServiceName"))
    HttpInstanceSummary.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthStatus, name: "HealthStatus"))
    HttpInstanceSummary.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "Attributes"))
    HttpInstanceSummary.type = Types::HttpInstanceSummary
    HttpInstanceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpInstanceSummary, name: "member"))
    HttpNamespaceChange.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description", traits: {"smithy.api#required" => {}}))
    HttpNamespaceChange.type = Types::HttpNamespaceChange
    HttpProperties.add_member(:http_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "HttpName"))
    HttpProperties.type = Types::HttpProperties
    Instance.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id", traits: {"smithy.api#required" => {}}))
    Instance.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CreatorRequestId"))
    Instance.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "Attributes"))
    Instance.add_member(:created_by_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "CreatedByAccount"))
    Instance.type = Types::Instance
    InstanceHealthStatusMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "key"))
    InstanceHealthStatusMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthStatus, name: "value"))
    InstanceIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "member", traits: {"smithy.api#xmlName" => "InstanceId"}))
    InstanceNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InstanceNotFound.type = Types::InstanceNotFound
    InstanceSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    InstanceSummary.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "Attributes"))
    InstanceSummary.add_member(:created_by_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "CreatedByAccount"))
    InstanceSummary.type = Types::InstanceSummary
    InstanceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSummary, name: "member", traits: {"smithy.api#xmlName" => "InstanceSummary"}))
    InvalidInput.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidInput.type = Types::InvalidInput
    ListInstancesRequest.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ServiceId", traits: {"smithy.api#required" => {}}))
    ListInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListInstancesRequest.type = Types::ListInstancesRequest
    ListInstancesResponse.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "ResourceOwner"))
    ListInstancesResponse.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceSummaryList, name: "Instances"))
    ListInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListInstancesResponse.type = Types::ListInstancesResponse
    ListNamespacesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListNamespacesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListNamespacesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceFilters, name: "Filters"))
    ListNamespacesRequest.type = Types::ListNamespacesRequest
    ListNamespacesResponse.add_member(:namespaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceSummariesList, name: "Namespaces"))
    ListNamespacesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListNamespacesResponse.type = Types::ListNamespacesResponse
    ListOperationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOperationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListOperationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationFilters, name: "Filters"))
    ListOperationsRequest.type = Types::ListOperationsRequest
    ListOperationsResponse.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationSummaryList, name: "Operations"))
    ListOperationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListOperationsResponse.type = Types::ListOperationsResponse
    ListServicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListServicesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    ListServicesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFilters, name: "Filters"))
    ListServicesRequest.type = Types::ListServicesRequest
    ListServicesResponse.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSummariesList, name: "Services"))
    ListServicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListServicesResponse.type = Types::ListServicesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Namespace.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    Namespace.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    Namespace.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "ResourceOwner"))
    Namespace.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "Name"))
    Namespace.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceType, name: "Type"))
    Namespace.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    Namespace.add_member(:service_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCount, name: "ServiceCount"))
    Namespace.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceProperties, name: "Properties"))
    Namespace.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreateDate"))
    Namespace.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CreatorRequestId"))
    Namespace.type = Types::Namespace
    NamespaceAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    NamespaceAlreadyExists.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CreatorRequestId"))
    NamespaceAlreadyExists.add_member(:namespace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "NamespaceId"))
    NamespaceAlreadyExists.type = Types::NamespaceAlreadyExists
    NamespaceFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    NamespaceFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "Values", traits: {"smithy.api#required" => {}}))
    NamespaceFilter.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCondition, name: "Condition"))
    NamespaceFilter.type = Types::NamespaceFilter
    NamespaceFilterName.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TYPE", traits: {"smithy.api#enumValue" => "TYPE"}))
    NamespaceFilterName.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    NamespaceFilterName.add_member(:http_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP_NAME", traits: {"smithy.api#enumValue" => "HTTP_NAME"}))
    NamespaceFilterName.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_OWNER", traits: {"smithy.api#enumValue" => "RESOURCE_OWNER"}))
    NamespaceFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceFilter, name: "member", traits: {"smithy.api#xmlName" => "item"}))
    NamespaceNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    NamespaceNotFound.type = Types::NamespaceNotFound
    NamespaceProperties.add_member(:dns_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsProperties, name: "DnsProperties"))
    NamespaceProperties.add_member(:http_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpProperties, name: "HttpProperties"))
    NamespaceProperties.type = Types::NamespaceProperties
    NamespaceSummariesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceSummary, name: "member"))
    NamespaceSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    NamespaceSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    NamespaceSummary.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "ResourceOwner"))
    NamespaceSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceName, name: "Name"))
    NamespaceSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceType, name: "Type"))
    NamespaceSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    NamespaceSummary.add_member(:service_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCount, name: "ServiceCount"))
    NamespaceSummary.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: NamespaceProperties, name: "Properties"))
    NamespaceSummary.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreateDate"))
    NamespaceSummary.type = Types::NamespaceSummary
    NamespaceType.add_member(:dns_public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS_PUBLIC", traits: {"smithy.api#enumValue" => "DNS_PUBLIC"}))
    NamespaceType.add_member(:dns_private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS_PRIVATE", traits: {"smithy.api#enumValue" => "DNS_PRIVATE"}))
    NamespaceType.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    Operation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "Id"))
    Operation.add_member(:owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "OwnerAccount"))
    Operation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationType, name: "Type"))
    Operation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, name: "Status"))
    Operation.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "ErrorMessage"))
    Operation.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "ErrorCode"))
    Operation.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreateDate"))
    Operation.add_member(:update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdateDate"))
    Operation.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationTargetsMap, name: "Targets"))
    Operation.type = Types::Operation
    OperationFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    OperationFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "Values", traits: {"smithy.api#required" => {}}))
    OperationFilter.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCondition, name: "Condition"))
    OperationFilter.type = Types::OperationFilter
    OperationFilterName.add_member(:namespace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAMESPACE_ID", traits: {"smithy.api#enumValue" => "NAMESPACE_ID"}))
    OperationFilterName.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_ID", traits: {"smithy.api#enumValue" => "SERVICE_ID"}))
    OperationFilterName.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "STATUS"}))
    OperationFilterName.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TYPE", traits: {"smithy.api#enumValue" => "TYPE"}))
    OperationFilterName.add_member(:update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_DATE", traits: {"smithy.api#enumValue" => "UPDATE_DATE"}))
    OperationFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationFilter, name: "member", traits: {"smithy.api#xmlName" => "item"}))
    OperationNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    OperationNotFound.type = Types::OperationNotFound
    OperationStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    OperationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    OperationStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    OperationStatus.add_member(:fail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAIL", traits: {"smithy.api#enumValue" => "FAIL"}))
    OperationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "Id"))
    OperationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationStatus, name: "Status"))
    OperationSummary.type = Types::OperationSummary
    OperationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationSummary, name: "member", traits: {"smithy.api#xmlName" => "OperationSummary"}))
    OperationTargetType.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAMESPACE", traits: {"smithy.api#enumValue" => "NAMESPACE"}))
    OperationTargetType.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    OperationTargetType.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE", traits: {"smithy.api#enumValue" => "INSTANCE"}))
    OperationTargetsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationTargetType, name: "key"))
    OperationTargetsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "value"))
    OperationType.add_member(:create_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_NAMESPACE", traits: {"smithy.api#enumValue" => "CREATE_NAMESPACE"}))
    OperationType.add_member(:delete_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_NAMESPACE", traits: {"smithy.api#enumValue" => "DELETE_NAMESPACE"}))
    OperationType.add_member(:update_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_NAMESPACE", traits: {"smithy.api#enumValue" => "UPDATE_NAMESPACE"}))
    OperationType.add_member(:update_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_SERVICE", traits: {"smithy.api#enumValue" => "UPDATE_SERVICE"}))
    OperationType.add_member(:register_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTER_INSTANCE", traits: {"smithy.api#enumValue" => "REGISTER_INSTANCE"}))
    OperationType.add_member(:deregister_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEREGISTER_INSTANCE", traits: {"smithy.api#enumValue" => "DEREGISTER_INSTANCE"}))
    PrivateDnsNamespaceChange.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    PrivateDnsNamespaceChange.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateDnsNamespacePropertiesChange, name: "Properties"))
    PrivateDnsNamespaceChange.type = Types::PrivateDnsNamespaceChange
    PrivateDnsNamespaceProperties.add_member(:dns_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateDnsPropertiesMutable, name: "DnsProperties", traits: {"smithy.api#required" => {}}))
    PrivateDnsNamespaceProperties.type = Types::PrivateDnsNamespaceProperties
    PrivateDnsNamespacePropertiesChange.add_member(:dns_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateDnsPropertiesMutableChange, name: "DnsProperties", traits: {"smithy.api#required" => {}}))
    PrivateDnsNamespacePropertiesChange.type = Types::PrivateDnsNamespacePropertiesChange
    PrivateDnsPropertiesMutable.add_member(:soa, ::Smithy::Schema::Shapes::MemberShape.new(target: SOA, name: "SOA", traits: {"smithy.api#required" => {}}))
    PrivateDnsPropertiesMutable.type = Types::PrivateDnsPropertiesMutable
    PrivateDnsPropertiesMutableChange.add_member(:soa, ::Smithy::Schema::Shapes::MemberShape.new(target: SOAChange, name: "SOA", traits: {"smithy.api#required" => {}}))
    PrivateDnsPropertiesMutableChange.type = Types::PrivateDnsPropertiesMutableChange
    PublicDnsNamespaceChange.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    PublicDnsNamespaceChange.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicDnsNamespacePropertiesChange, name: "Properties"))
    PublicDnsNamespaceChange.type = Types::PublicDnsNamespaceChange
    PublicDnsNamespaceProperties.add_member(:dns_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicDnsPropertiesMutable, name: "DnsProperties", traits: {"smithy.api#required" => {}}))
    PublicDnsNamespaceProperties.type = Types::PublicDnsNamespaceProperties
    PublicDnsNamespacePropertiesChange.add_member(:dns_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicDnsPropertiesMutableChange, name: "DnsProperties", traits: {"smithy.api#required" => {}}))
    PublicDnsNamespacePropertiesChange.type = Types::PublicDnsNamespacePropertiesChange
    PublicDnsPropertiesMutable.add_member(:soa, ::Smithy::Schema::Shapes::MemberShape.new(target: SOA, name: "SOA", traits: {"smithy.api#required" => {}}))
    PublicDnsPropertiesMutable.type = Types::PublicDnsPropertiesMutable
    PublicDnsPropertiesMutableChange.add_member(:soa, ::Smithy::Schema::Shapes::MemberShape.new(target: SOAChange, name: "SOA", traits: {"smithy.api#required" => {}}))
    PublicDnsPropertiesMutableChange.type = Types::PublicDnsPropertiesMutableChange
    RecordType.add_member(:srv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SRV", traits: {"smithy.api#enumValue" => "SRV"}))
    RecordType.add_member(:a, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "A", traits: {"smithy.api#enumValue" => "A"}))
    RecordType.add_member(:aaaa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AAAA", traits: {"smithy.api#enumValue" => "AAAA"}))
    RecordType.add_member(:cname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CNAME", traits: {"smithy.api#enumValue" => "CNAME"}))
    RegisterInstanceRequest.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ServiceId", traits: {"smithy.api#required" => {}}))
    RegisterInstanceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    RegisterInstanceRequest.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CreatorRequestId", traits: {"smithy.api#idempotencyToken" => {}}))
    RegisterInstanceRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "Attributes", traits: {"smithy.api#required" => {}}))
    RegisterInstanceRequest.type = Types::RegisterInstanceRequest
    RegisterInstanceResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    RegisterInstanceResponse.type = Types::RegisterInstanceResponse
    RequestLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    RequestLimitExceeded.type = Types::RequestLimitExceeded
    ResourceInUse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceInUse.type = Types::ResourceInUse
    ResourceLimitExceeded.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceLimitExceeded.type = Types::ResourceLimitExceeded
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RoutingPolicy.add_member(:multivalue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTIVALUE", traits: {"smithy.api#enumValue" => "MULTIVALUE"}))
    RoutingPolicy.add_member(:weighted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEIGHTED", traits: {"smithy.api#enumValue" => "WEIGHTED"}))
    SOA.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordTTL, name: "TTL", traits: {"smithy.api#required" => {}}))
    SOA.type = Types::SOA
    SOAChange.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordTTL, name: "TTL", traits: {"smithy.api#required" => {}}))
    SOAChange.type = Types::SOAChange
    Service.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    Service.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    Service.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "ResourceOwner"))
    Service.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "Name"))
    Service.add_member(:namespace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "NamespaceId"))
    Service.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    Service.add_member(:instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCount, name: "InstanceCount"))
    Service.add_member(:dns_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsConfig, name: "DnsConfig"))
    Service.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, name: "Type"))
    Service.add_member(:health_check_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckConfig, name: "HealthCheckConfig"))
    Service.add_member(:health_check_custom_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckCustomConfig, name: "HealthCheckCustomConfig"))
    Service.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreateDate"))
    Service.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CreatorRequestId"))
    Service.add_member(:created_by_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "CreatedByAccount"))
    Service.type = Types::Service
    ServiceAlreadyExists.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ServiceAlreadyExists.add_member(:creator_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "CreatorRequestId"))
    ServiceAlreadyExists.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ServiceId"))
    ServiceAlreadyExists.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ServiceArn"))
    ServiceAlreadyExists.type = Types::ServiceAlreadyExists
    ServiceAttributeKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAttributeKey, name: "member"))
    ServiceAttributes.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ServiceArn"))
    ServiceAttributes.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "ResourceOwner"))
    ServiceAttributes.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAttributesMap, name: "Attributes"))
    ServiceAttributes.type = Types::ServiceAttributes
    ServiceAttributesLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ServiceAttributesLimitExceededException.type = Types::ServiceAttributesLimitExceededException
    ServiceAttributesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAttributeKey, name: "key"))
    ServiceAttributesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAttributeValue, name: "value"))
    ServiceChange.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    ServiceChange.add_member(:dns_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsConfigChange, name: "DnsConfig"))
    ServiceChange.add_member(:health_check_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckConfig, name: "HealthCheckConfig"))
    ServiceChange.type = Types::ServiceChange
    ServiceFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFilterName, name: "Name", traits: {"smithy.api#required" => {}}))
    ServiceFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "Values", traits: {"smithy.api#required" => {}}))
    ServiceFilter.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCondition, name: "Condition"))
    ServiceFilter.type = Types::ServiceFilter
    ServiceFilterName.add_member(:namespace_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAMESPACE_ID", traits: {"smithy.api#enumValue" => "NAMESPACE_ID"}))
    ServiceFilterName.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_OWNER", traits: {"smithy.api#enumValue" => "RESOURCE_OWNER"}))
    ServiceFilters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFilter, name: "member", traits: {"smithy.api#xmlName" => "item"}))
    ServiceNotFound.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ServiceNotFound.type = Types::ServiceNotFound
    ServiceSummariesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceSummary, name: "member"))
    ServiceSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "Id"))
    ServiceSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    ServiceSummary.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "ResourceOwner"))
    ServiceSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceName, name: "Name"))
    ServiceSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceType, name: "Type"))
    ServiceSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceDescription, name: "Description"))
    ServiceSummary.add_member(:instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCount, name: "InstanceCount"))
    ServiceSummary.add_member(:dns_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsConfig, name: "DnsConfig"))
    ServiceSummary.add_member(:health_check_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckConfig, name: "HealthCheckConfig"))
    ServiceSummary.add_member(:health_check_custom_config, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheckCustomConfig, name: "HealthCheckCustomConfig"))
    ServiceSummary.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreateDate"))
    ServiceSummary.add_member(:created_by_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSAccountId, name: "CreatedByAccount"))
    ServiceSummary.type = Types::ServiceSummary
    ServiceType.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    ServiceType.add_member(:dns_http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS_HTTP", traits: {"smithy.api#enumValue" => "DNS_HTTP"}))
    ServiceType.add_member(:dns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS", traits: {"smithy.api#enumValue" => "DNS"}))
    ServiceTypeOption.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP", traits: {"smithy.api#enumValue" => "HTTP"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceName"))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateHttpNamespaceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateHttpNamespaceRequest.add_member(:updater_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "UpdaterRequestId", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateHttpNamespaceRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpNamespaceChange, name: "Namespace", traits: {"smithy.api#required" => {}}))
    UpdateHttpNamespaceRequest.type = Types::UpdateHttpNamespaceRequest
    UpdateHttpNamespaceResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    UpdateHttpNamespaceResponse.type = Types::UpdateHttpNamespaceResponse
    UpdateInstanceCustomHealthStatusRequest.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ServiceId", traits: {"smithy.api#required" => {}}))
    UpdateInstanceCustomHealthStatusRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "InstanceId", traits: {"smithy.api#required" => {}}))
    UpdateInstanceCustomHealthStatusRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHealthStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    UpdateInstanceCustomHealthStatusRequest.type = Types::UpdateInstanceCustomHealthStatusRequest
    UpdatePrivateDnsNamespaceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdatePrivateDnsNamespaceRequest.add_member(:updater_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "UpdaterRequestId", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdatePrivateDnsNamespaceRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateDnsNamespaceChange, name: "Namespace", traits: {"smithy.api#required" => {}}))
    UpdatePrivateDnsNamespaceRequest.type = Types::UpdatePrivateDnsNamespaceRequest
    UpdatePrivateDnsNamespaceResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    UpdatePrivateDnsNamespaceResponse.type = Types::UpdatePrivateDnsNamespaceResponse
    UpdatePublicDnsNamespaceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdatePublicDnsNamespaceRequest.add_member(:updater_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "UpdaterRequestId", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdatePublicDnsNamespaceRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicDnsNamespaceChange, name: "Namespace", traits: {"smithy.api#required" => {}}))
    UpdatePublicDnsNamespaceRequest.type = Types::UpdatePublicDnsNamespaceRequest
    UpdatePublicDnsNamespaceResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    UpdatePublicDnsNamespaceResponse.type = Types::UpdatePublicDnsNamespaceResponse
    UpdateServiceAttributesRequest.add_member(:service_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ServiceId", traits: {"smithy.api#required" => {}}))
    UpdateServiceAttributesRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAttributesMap, name: "Attributes", traits: {"smithy.api#required" => {}}))
    UpdateServiceAttributesRequest.type = Types::UpdateServiceAttributesRequest
    UpdateServiceAttributesResponse.type = Types::UpdateServiceAttributesResponse
    UpdateServiceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateServiceRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceChange, name: "Service", traits: {"smithy.api#required" => {}}))
    UpdateServiceRequest.type = Types::UpdateServiceRequest
    UpdateServiceResponse.add_member(:operation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationId, name: "OperationId"))
    UpdateServiceResponse.type = Types::UpdateServiceResponse

    Route53AutoNamingV20170314 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.servicediscovery#Route53AutoNaming_v20170314"
      service.name = "Route53AutoNamingV20170314"
      service.version = "2017-03-14"
      service.traits = {"aws.api#service" => {"sdkId" => "ServiceDiscovery", "arnNamespace" => "servicediscovery", "cloudFormationName" => "ServiceDiscovery", "cloudTrailEventSource" => "servicediscovery.amazonaws.com", "endpointPrefix" => "servicediscovery"}, "aws.auth#sigv4" => {"name" => "servicediscovery"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Cloud Map", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://servicediscovery-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://servicediscovery-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://servicediscovery.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://servicediscovery.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_http_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#CreateHttpNamespace"
        operation.name = "CreateHttpNamespace"
        operation.input = CreateHttpNamespaceRequest
        operation.output = CreateHttpNamespaceResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << NamespaceAlreadyExists
        operation.errors << ResourceLimitExceeded
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:create_private_dns_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#CreatePrivateDnsNamespace"
        operation.name = "CreatePrivateDnsNamespace"
        operation.input = CreatePrivateDnsNamespaceRequest
        operation.output = CreatePrivateDnsNamespaceResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << NamespaceAlreadyExists
        operation.errors << ResourceLimitExceeded
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:create_public_dns_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#CreatePublicDnsNamespace"
        operation.name = "CreatePublicDnsNamespace"
        operation.input = CreatePublicDnsNamespaceRequest
        operation.output = CreatePublicDnsNamespaceResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << NamespaceAlreadyExists
        operation.errors << ResourceLimitExceeded
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:create_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#CreateService"
        operation.name = "CreateService"
        operation.input = CreateServiceRequest
        operation.output = CreateServiceResponse
        operation.errors << InvalidInput
        operation.errors << NamespaceNotFound
        operation.errors << ResourceLimitExceeded
        operation.errors << ServiceAlreadyExists
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:delete_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#DeleteNamespace"
        operation.name = "DeleteNamespace"
        operation.input = DeleteNamespaceRequest
        operation.output = DeleteNamespaceResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << NamespaceNotFound
        operation.errors << ResourceInUse
        operation.traits = {}
      end)
      service.add_operation(:delete_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#DeleteService"
        operation.name = "DeleteService"
        operation.input = DeleteServiceRequest
        operation.output = DeleteServiceResponse
        operation.errors << InvalidInput
        operation.errors << ResourceInUse
        operation.errors << ServiceNotFound
        operation.traits = {}
      end)
      service.add_operation(:delete_service_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#DeleteServiceAttributes"
        operation.name = "DeleteServiceAttributes"
        operation.input = DeleteServiceAttributesRequest
        operation.output = DeleteServiceAttributesResponse
        operation.errors << InvalidInput
        operation.errors << ServiceNotFound
        operation.traits = {}
      end)
      service.add_operation(:deregister_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#DeregisterInstance"
        operation.name = "DeregisterInstance"
        operation.input = DeregisterInstanceRequest
        operation.output = DeregisterInstanceResponse
        operation.errors << DuplicateRequest
        operation.errors << InstanceNotFound
        operation.errors << InvalidInput
        operation.errors << ResourceInUse
        operation.errors << ServiceNotFound
        operation.traits = {}
      end)
      service.add_operation(:discover_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#DiscoverInstances"
        operation.name = "DiscoverInstances"
        operation.input = DiscoverInstancesRequest
        operation.output = DiscoverInstancesResponse
        operation.errors << InvalidInput
        operation.errors << NamespaceNotFound
        operation.errors << RequestLimitExceeded
        operation.errors << ServiceNotFound
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data-"}}
      end)
      service.add_operation(:discover_instances_revision, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#DiscoverInstancesRevision"
        operation.name = "DiscoverInstancesRevision"
        operation.input = DiscoverInstancesRevisionRequest
        operation.output = DiscoverInstancesRevisionResponse
        operation.errors << InvalidInput
        operation.errors << NamespaceNotFound
        operation.errors << RequestLimitExceeded
        operation.errors << ServiceNotFound
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "data-"}}
      end)
      service.add_operation(:get_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#GetInstance"
        operation.name = "GetInstance"
        operation.input = GetInstanceRequest
        operation.output = GetInstanceResponse
        operation.errors << InstanceNotFound
        operation.errors << InvalidInput
        operation.errors << ServiceNotFound
        operation.traits = {}
      end)
      service.add_operation(:get_instances_health_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#GetInstancesHealthStatus"
        operation.name = "GetInstancesHealthStatus"
        operation.input = GetInstancesHealthStatusRequest
        operation.output = GetInstancesHealthStatusResponse
        operation.errors << InstanceNotFound
        operation.errors << InvalidInput
        operation.errors << ServiceNotFound
        operation.traits = {}
        operation[:paginator] = Paginators::GetInstancesHealthStatus.new
      end)
      service.add_operation(:get_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#GetNamespace"
        operation.name = "GetNamespace"
        operation.input = GetNamespaceRequest
        operation.output = GetNamespaceResponse
        operation.errors << InvalidInput
        operation.errors << NamespaceNotFound
        operation.traits = {}
      end)
      service.add_operation(:get_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#GetOperation"
        operation.name = "GetOperation"
        operation.input = GetOperationRequest
        operation.output = GetOperationResponse
        operation.errors << InvalidInput
        operation.errors << OperationNotFound
        operation.traits = {}
      end)
      service.add_operation(:get_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#GetService"
        operation.name = "GetService"
        operation.input = GetServiceRequest
        operation.output = GetServiceResponse
        operation.errors << InvalidInput
        operation.errors << ServiceNotFound
        operation.traits = {}
      end)
      service.add_operation(:get_service_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#GetServiceAttributes"
        operation.name = "GetServiceAttributes"
        operation.input = GetServiceAttributesRequest
        operation.output = GetServiceAttributesResponse
        operation.errors << InvalidInput
        operation.errors << ServiceNotFound
        operation.traits = {}
      end)
      service.add_operation(:list_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#ListInstances"
        operation.name = "ListInstances"
        operation.input = ListInstancesRequest
        operation.output = ListInstancesResponse
        operation.errors << InvalidInput
        operation.errors << ServiceNotFound
        operation.traits = {}
        operation[:paginator] = Paginators::ListInstances.new
      end)
      service.add_operation(:list_namespaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#ListNamespaces"
        operation.name = "ListNamespaces"
        operation.input = ListNamespacesRequest
        operation.output = ListNamespacesResponse
        operation.errors << InvalidInput
        operation.traits = {}
        operation[:paginator] = Paginators::ListNamespaces.new
      end)
      service.add_operation(:list_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#ListOperations"
        operation.name = "ListOperations"
        operation.input = ListOperationsRequest
        operation.output = ListOperationsResponse
        operation.errors << InvalidInput
        operation.traits = {}
        operation[:paginator] = Paginators::ListOperations.new
      end)
      service.add_operation(:list_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#ListServices"
        operation.name = "ListServices"
        operation.input = ListServicesRequest
        operation.output = ListServicesResponse
        operation.errors << InvalidInput
        operation.traits = {}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InvalidInput
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:register_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#RegisterInstance"
        operation.name = "RegisterInstance"
        operation.input = RegisterInstanceRequest
        operation.output = RegisterInstanceResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << ResourceInUse
        operation.errors << ResourceLimitExceeded
        operation.errors << ServiceNotFound
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InvalidInput
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InvalidInput
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_http_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#UpdateHttpNamespace"
        operation.name = "UpdateHttpNamespace"
        operation.input = UpdateHttpNamespaceRequest
        operation.output = UpdateHttpNamespaceResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << NamespaceNotFound
        operation.errors << ResourceInUse
        operation.traits = {}
      end)
      service.add_operation(:update_instance_custom_health_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#UpdateInstanceCustomHealthStatus"
        operation.name = "UpdateInstanceCustomHealthStatus"
        operation.input = UpdateInstanceCustomHealthStatusRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << CustomHealthNotFound
        operation.errors << InstanceNotFound
        operation.errors << InvalidInput
        operation.errors << ServiceNotFound
        operation.traits = {}
      end)
      service.add_operation(:update_private_dns_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#UpdatePrivateDnsNamespace"
        operation.name = "UpdatePrivateDnsNamespace"
        operation.input = UpdatePrivateDnsNamespaceRequest
        operation.output = UpdatePrivateDnsNamespaceResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << NamespaceNotFound
        operation.errors << ResourceInUse
        operation.traits = {}
      end)
      service.add_operation(:update_public_dns_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#UpdatePublicDnsNamespace"
        operation.name = "UpdatePublicDnsNamespace"
        operation.input = UpdatePublicDnsNamespaceRequest
        operation.output = UpdatePublicDnsNamespaceResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << NamespaceNotFound
        operation.errors << ResourceInUse
        operation.traits = {}
      end)
      service.add_operation(:update_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#UpdateService"
        operation.name = "UpdateService"
        operation.input = UpdateServiceRequest
        operation.output = UpdateServiceResponse
        operation.errors << DuplicateRequest
        operation.errors << InvalidInput
        operation.errors << ServiceNotFound
        operation.traits = {}
      end)
      service.add_operation(:update_service_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.servicediscovery#UpdateServiceAttributes"
        operation.name = "UpdateServiceAttributes"
        operation.input = UpdateServiceAttributesRequest
        operation.output = UpdateServiceAttributesResponse
        operation.errors << InvalidInput
        operation.errors << ServiceAttributesLimitExceededException
        operation.errors << ServiceNotFound
        operation.traits = {}
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
