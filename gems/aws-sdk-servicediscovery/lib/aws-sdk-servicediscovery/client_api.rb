# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ServiceDiscovery
  # @api private
  module ClientApi

    include Seahorse::Model

    Arn = Shapes::StringShape.new(name: 'Arn')
    AttrKey = Shapes::StringShape.new(name: 'AttrKey')
    AttrValue = Shapes::StringShape.new(name: 'AttrValue')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    Code = Shapes::StringShape.new(name: 'Code')
    CreatePrivateDnsNamespaceRequest = Shapes::StructureShape.new(name: 'CreatePrivateDnsNamespaceRequest')
    CreatePrivateDnsNamespaceResponse = Shapes::StructureShape.new(name: 'CreatePrivateDnsNamespaceResponse')
    CreatePublicDnsNamespaceRequest = Shapes::StructureShape.new(name: 'CreatePublicDnsNamespaceRequest')
    CreatePublicDnsNamespaceResponse = Shapes::StructureShape.new(name: 'CreatePublicDnsNamespaceResponse')
    CreateServiceRequest = Shapes::StructureShape.new(name: 'CreateServiceRequest')
    CreateServiceResponse = Shapes::StructureShape.new(name: 'CreateServiceResponse')
    CustomHealthNotFound = Shapes::StructureShape.new(name: 'CustomHealthNotFound')
    CustomHealthStatus = Shapes::StringShape.new(name: 'CustomHealthStatus')
    DeleteNamespaceRequest = Shapes::StructureShape.new(name: 'DeleteNamespaceRequest')
    DeleteNamespaceResponse = Shapes::StructureShape.new(name: 'DeleteNamespaceResponse')
    DeleteServiceRequest = Shapes::StructureShape.new(name: 'DeleteServiceRequest')
    DeleteServiceResponse = Shapes::StructureShape.new(name: 'DeleteServiceResponse')
    DeregisterInstanceRequest = Shapes::StructureShape.new(name: 'DeregisterInstanceRequest')
    DeregisterInstanceResponse = Shapes::StructureShape.new(name: 'DeregisterInstanceResponse')
    DnsConfig = Shapes::StructureShape.new(name: 'DnsConfig')
    DnsConfigChange = Shapes::StructureShape.new(name: 'DnsConfigChange')
    DnsProperties = Shapes::StructureShape.new(name: 'DnsProperties')
    DnsRecord = Shapes::StructureShape.new(name: 'DnsRecord')
    DnsRecordList = Shapes::ListShape.new(name: 'DnsRecordList')
    DuplicateRequest = Shapes::StructureShape.new(name: 'DuplicateRequest')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FailureThreshold = Shapes::IntegerShape.new(name: 'FailureThreshold')
    FilterCondition = Shapes::StringShape.new(name: 'FilterCondition')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    GetInstanceRequest = Shapes::StructureShape.new(name: 'GetInstanceRequest')
    GetInstanceResponse = Shapes::StructureShape.new(name: 'GetInstanceResponse')
    GetInstancesHealthStatusRequest = Shapes::StructureShape.new(name: 'GetInstancesHealthStatusRequest')
    GetInstancesHealthStatusResponse = Shapes::StructureShape.new(name: 'GetInstancesHealthStatusResponse')
    GetNamespaceRequest = Shapes::StructureShape.new(name: 'GetNamespaceRequest')
    GetNamespaceResponse = Shapes::StructureShape.new(name: 'GetNamespaceResponse')
    GetOperationRequest = Shapes::StructureShape.new(name: 'GetOperationRequest')
    GetOperationResponse = Shapes::StructureShape.new(name: 'GetOperationResponse')
    GetServiceRequest = Shapes::StructureShape.new(name: 'GetServiceRequest')
    GetServiceResponse = Shapes::StructureShape.new(name: 'GetServiceResponse')
    HealthCheckConfig = Shapes::StructureShape.new(name: 'HealthCheckConfig')
    HealthCheckCustomConfig = Shapes::StructureShape.new(name: 'HealthCheckCustomConfig')
    HealthCheckType = Shapes::StringShape.new(name: 'HealthCheckType')
    HealthStatus = Shapes::StringShape.new(name: 'HealthStatus')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceHealthStatusMap = Shapes::MapShape.new(name: 'InstanceHealthStatusMap')
    InstanceIdList = Shapes::ListShape.new(name: 'InstanceIdList')
    InstanceNotFound = Shapes::StructureShape.new(name: 'InstanceNotFound')
    InstanceSummary = Shapes::StructureShape.new(name: 'InstanceSummary')
    InstanceSummaryList = Shapes::ListShape.new(name: 'InstanceSummaryList')
    InvalidInput = Shapes::StructureShape.new(name: 'InvalidInput')
    ListInstancesRequest = Shapes::StructureShape.new(name: 'ListInstancesRequest')
    ListInstancesResponse = Shapes::StructureShape.new(name: 'ListInstancesResponse')
    ListNamespacesRequest = Shapes::StructureShape.new(name: 'ListNamespacesRequest')
    ListNamespacesResponse = Shapes::StructureShape.new(name: 'ListNamespacesResponse')
    ListOperationsRequest = Shapes::StructureShape.new(name: 'ListOperationsRequest')
    ListOperationsResponse = Shapes::StructureShape.new(name: 'ListOperationsResponse')
    ListServicesRequest = Shapes::StructureShape.new(name: 'ListServicesRequest')
    ListServicesResponse = Shapes::StructureShape.new(name: 'ListServicesResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    Namespace = Shapes::StructureShape.new(name: 'Namespace')
    NamespaceAlreadyExists = Shapes::StructureShape.new(name: 'NamespaceAlreadyExists')
    NamespaceFilter = Shapes::StructureShape.new(name: 'NamespaceFilter')
    NamespaceFilterName = Shapes::StringShape.new(name: 'NamespaceFilterName')
    NamespaceFilters = Shapes::ListShape.new(name: 'NamespaceFilters')
    NamespaceName = Shapes::StringShape.new(name: 'NamespaceName')
    NamespaceNotFound = Shapes::StructureShape.new(name: 'NamespaceNotFound')
    NamespaceProperties = Shapes::StructureShape.new(name: 'NamespaceProperties')
    NamespaceSummariesList = Shapes::ListShape.new(name: 'NamespaceSummariesList')
    NamespaceSummary = Shapes::StructureShape.new(name: 'NamespaceSummary')
    NamespaceType = Shapes::StringShape.new(name: 'NamespaceType')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Operation = Shapes::StructureShape.new(name: 'Operation')
    OperationFilter = Shapes::StructureShape.new(name: 'OperationFilter')
    OperationFilterName = Shapes::StringShape.new(name: 'OperationFilterName')
    OperationFilters = Shapes::ListShape.new(name: 'OperationFilters')
    OperationId = Shapes::StringShape.new(name: 'OperationId')
    OperationNotFound = Shapes::StructureShape.new(name: 'OperationNotFound')
    OperationStatus = Shapes::StringShape.new(name: 'OperationStatus')
    OperationSummary = Shapes::StructureShape.new(name: 'OperationSummary')
    OperationSummaryList = Shapes::ListShape.new(name: 'OperationSummaryList')
    OperationTargetType = Shapes::StringShape.new(name: 'OperationTargetType')
    OperationTargetsMap = Shapes::MapShape.new(name: 'OperationTargetsMap')
    OperationType = Shapes::StringShape.new(name: 'OperationType')
    RecordTTL = Shapes::IntegerShape.new(name: 'RecordTTL')
    RecordType = Shapes::StringShape.new(name: 'RecordType')
    RegisterInstanceRequest = Shapes::StructureShape.new(name: 'RegisterInstanceRequest')
    RegisterInstanceResponse = Shapes::StructureShape.new(name: 'RegisterInstanceResponse')
    ResourceCount = Shapes::IntegerShape.new(name: 'ResourceCount')
    ResourceDescription = Shapes::StringShape.new(name: 'ResourceDescription')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceInUse = Shapes::StructureShape.new(name: 'ResourceInUse')
    ResourceLimitExceeded = Shapes::StructureShape.new(name: 'ResourceLimitExceeded')
    ResourcePath = Shapes::StringShape.new(name: 'ResourcePath')
    RoutingPolicy = Shapes::StringShape.new(name: 'RoutingPolicy')
    Service = Shapes::StructureShape.new(name: 'Service')
    ServiceAlreadyExists = Shapes::StructureShape.new(name: 'ServiceAlreadyExists')
    ServiceChange = Shapes::StructureShape.new(name: 'ServiceChange')
    ServiceFilter = Shapes::StructureShape.new(name: 'ServiceFilter')
    ServiceFilterName = Shapes::StringShape.new(name: 'ServiceFilterName')
    ServiceFilters = Shapes::ListShape.new(name: 'ServiceFilters')
    ServiceName = Shapes::StringShape.new(name: 'ServiceName')
    ServiceNotFound = Shapes::StructureShape.new(name: 'ServiceNotFound')
    ServiceSummariesList = Shapes::ListShape.new(name: 'ServiceSummariesList')
    ServiceSummary = Shapes::StructureShape.new(name: 'ServiceSummary')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UpdateInstanceCustomHealthStatusRequest = Shapes::StructureShape.new(name: 'UpdateInstanceCustomHealthStatusRequest')
    UpdateServiceRequest = Shapes::StructureShape.new(name: 'UpdateServiceRequest')
    UpdateServiceResponse = Shapes::StructureShape.new(name: 'UpdateServiceResponse')

    Attributes.key = Shapes::ShapeRef.new(shape: AttrKey)
    Attributes.value = Shapes::ShapeRef.new(shape: AttrValue)

    CreatePrivateDnsNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location_name: "Name"))
    CreatePrivateDnsNamespaceRequest.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CreatorRequestId", metadata: {"idempotencyToken"=>true}))
    CreatePrivateDnsNamespaceRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreatePrivateDnsNamespaceRequest.add_member(:vpc, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "Vpc"))
    CreatePrivateDnsNamespaceRequest.struct_class = Types::CreatePrivateDnsNamespaceRequest

    CreatePrivateDnsNamespaceResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    CreatePrivateDnsNamespaceResponse.struct_class = Types::CreatePrivateDnsNamespaceResponse

    CreatePublicDnsNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location_name: "Name"))
    CreatePublicDnsNamespaceRequest.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CreatorRequestId", metadata: {"idempotencyToken"=>true}))
    CreatePublicDnsNamespaceRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreatePublicDnsNamespaceRequest.struct_class = Types::CreatePublicDnsNamespaceRequest

    CreatePublicDnsNamespaceResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    CreatePublicDnsNamespaceResponse.struct_class = Types::CreatePublicDnsNamespaceResponse

    CreateServiceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, required: true, location_name: "Name"))
    CreateServiceRequest.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CreatorRequestId", metadata: {"idempotencyToken"=>true}))
    CreateServiceRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    CreateServiceRequest.add_member(:dns_config, Shapes::ShapeRef.new(shape: DnsConfig, required: true, location_name: "DnsConfig"))
    CreateServiceRequest.add_member(:health_check_config, Shapes::ShapeRef.new(shape: HealthCheckConfig, location_name: "HealthCheckConfig"))
    CreateServiceRequest.add_member(:health_check_custom_config, Shapes::ShapeRef.new(shape: HealthCheckCustomConfig, location_name: "HealthCheckCustomConfig"))
    CreateServiceRequest.struct_class = Types::CreateServiceRequest

    CreateServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "Service"))
    CreateServiceResponse.struct_class = Types::CreateServiceResponse

    DeleteNamespaceRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "Id"))
    DeleteNamespaceRequest.struct_class = Types::DeleteNamespaceRequest

    DeleteNamespaceResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    DeleteNamespaceResponse.struct_class = Types::DeleteNamespaceResponse

    DeleteServiceRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "Id"))
    DeleteServiceRequest.struct_class = Types::DeleteServiceRequest

    DeleteServiceResponse.struct_class = Types::DeleteServiceResponse

    DeregisterInstanceRequest.add_member(:service_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ServiceId"))
    DeregisterInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "InstanceId"))
    DeregisterInstanceRequest.struct_class = Types::DeregisterInstanceRequest

    DeregisterInstanceResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    DeregisterInstanceResponse.struct_class = Types::DeregisterInstanceResponse

    DnsConfig.add_member(:namespace_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "NamespaceId"))
    DnsConfig.add_member(:routing_policy, Shapes::ShapeRef.new(shape: RoutingPolicy, location_name: "RoutingPolicy"))
    DnsConfig.add_member(:dns_records, Shapes::ShapeRef.new(shape: DnsRecordList, required: true, location_name: "DnsRecords"))
    DnsConfig.struct_class = Types::DnsConfig

    DnsConfigChange.add_member(:dns_records, Shapes::ShapeRef.new(shape: DnsRecordList, required: true, location_name: "DnsRecords"))
    DnsConfigChange.struct_class = Types::DnsConfigChange

    DnsProperties.add_member(:hosted_zone_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "HostedZoneId"))
    DnsProperties.struct_class = Types::DnsProperties

    DnsRecord.add_member(:type, Shapes::ShapeRef.new(shape: RecordType, required: true, location_name: "Type"))
    DnsRecord.add_member(:ttl, Shapes::ShapeRef.new(shape: RecordTTL, required: true, location_name: "TTL"))
    DnsRecord.struct_class = Types::DnsRecord

    DnsRecordList.member = Shapes::ShapeRef.new(shape: DnsRecord)

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    GetInstanceRequest.add_member(:service_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ServiceId"))
    GetInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "InstanceId"))
    GetInstanceRequest.struct_class = Types::GetInstanceRequest

    GetInstanceResponse.add_member(:instance, Shapes::ShapeRef.new(shape: Instance, location_name: "Instance"))
    GetInstanceResponse.struct_class = Types::GetInstanceResponse

    GetInstancesHealthStatusRequest.add_member(:service_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ServiceId"))
    GetInstancesHealthStatusRequest.add_member(:instances, Shapes::ShapeRef.new(shape: InstanceIdList, location_name: "Instances"))
    GetInstancesHealthStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    GetInstancesHealthStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetInstancesHealthStatusRequest.struct_class = Types::GetInstancesHealthStatusRequest

    GetInstancesHealthStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: InstanceHealthStatusMap, location_name: "Status"))
    GetInstancesHealthStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetInstancesHealthStatusResponse.struct_class = Types::GetInstancesHealthStatusResponse

    GetNamespaceRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "Id"))
    GetNamespaceRequest.struct_class = Types::GetNamespaceRequest

    GetNamespaceResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    GetNamespaceResponse.struct_class = Types::GetNamespaceResponse

    GetOperationRequest.add_member(:operation_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "OperationId"))
    GetOperationRequest.struct_class = Types::GetOperationRequest

    GetOperationResponse.add_member(:operation, Shapes::ShapeRef.new(shape: Operation, location_name: "Operation"))
    GetOperationResponse.struct_class = Types::GetOperationResponse

    GetServiceRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "Id"))
    GetServiceRequest.struct_class = Types::GetServiceRequest

    GetServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, location_name: "Service"))
    GetServiceResponse.struct_class = Types::GetServiceResponse

    HealthCheckConfig.add_member(:type, Shapes::ShapeRef.new(shape: HealthCheckType, location_name: "Type"))
    HealthCheckConfig.add_member(:resource_path, Shapes::ShapeRef.new(shape: ResourcePath, location_name: "ResourcePath"))
    HealthCheckConfig.add_member(:failure_threshold, Shapes::ShapeRef.new(shape: FailureThreshold, location_name: "FailureThreshold"))
    HealthCheckConfig.struct_class = Types::HealthCheckConfig

    HealthCheckCustomConfig.add_member(:failure_threshold, Shapes::ShapeRef.new(shape: FailureThreshold, location_name: "FailureThreshold"))
    HealthCheckCustomConfig.struct_class = Types::HealthCheckCustomConfig

    Instance.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "Id"))
    Instance.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CreatorRequestId"))
    Instance.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    Instance.struct_class = Types::Instance

    InstanceHealthStatusMap.key = Shapes::ShapeRef.new(shape: ResourceId)
    InstanceHealthStatusMap.value = Shapes::ShapeRef.new(shape: HealthStatus)

    InstanceIdList.member = Shapes::ShapeRef.new(shape: ResourceId)

    InstanceSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    InstanceSummary.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    InstanceSummary.struct_class = Types::InstanceSummary

    InstanceSummaryList.member = Shapes::ShapeRef.new(shape: InstanceSummary)

    ListInstancesRequest.add_member(:service_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ServiceId"))
    ListInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListInstancesRequest.struct_class = Types::ListInstancesRequest

    ListInstancesResponse.add_member(:instances, Shapes::ShapeRef.new(shape: InstanceSummaryList, location_name: "Instances"))
    ListInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListInstancesResponse.struct_class = Types::ListInstancesResponse

    ListNamespacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNamespacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListNamespacesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: NamespaceFilters, location_name: "Filters"))
    ListNamespacesRequest.struct_class = Types::ListNamespacesRequest

    ListNamespacesResponse.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespaceSummariesList, location_name: "Namespaces"))
    ListNamespacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNamespacesResponse.struct_class = Types::ListNamespacesResponse

    ListOperationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOperationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListOperationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: OperationFilters, location_name: "Filters"))
    ListOperationsRequest.struct_class = Types::ListOperationsRequest

    ListOperationsResponse.add_member(:operations, Shapes::ShapeRef.new(shape: OperationSummaryList, location_name: "Operations"))
    ListOperationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListOperationsResponse.struct_class = Types::ListOperationsResponse

    ListServicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListServicesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ServiceFilters, location_name: "Filters"))
    ListServicesRequest.struct_class = Types::ListServicesRequest

    ListServicesResponse.add_member(:services, Shapes::ShapeRef.new(shape: ServiceSummariesList, location_name: "Services"))
    ListServicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListServicesResponse.struct_class = Types::ListServicesResponse

    Namespace.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    Namespace.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Namespace.add_member(:name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "Name"))
    Namespace.add_member(:type, Shapes::ShapeRef.new(shape: NamespaceType, location_name: "Type"))
    Namespace.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    Namespace.add_member(:service_count, Shapes::ShapeRef.new(shape: ResourceCount, location_name: "ServiceCount"))
    Namespace.add_member(:properties, Shapes::ShapeRef.new(shape: NamespaceProperties, location_name: "Properties"))
    Namespace.add_member(:create_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateDate"))
    Namespace.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CreatorRequestId"))
    Namespace.struct_class = Types::Namespace

    NamespaceFilter.add_member(:name, Shapes::ShapeRef.new(shape: NamespaceFilterName, required: true, location_name: "Name"))
    NamespaceFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "Values"))
    NamespaceFilter.add_member(:condition, Shapes::ShapeRef.new(shape: FilterCondition, location_name: "Condition"))
    NamespaceFilter.struct_class = Types::NamespaceFilter

    NamespaceFilters.member = Shapes::ShapeRef.new(shape: NamespaceFilter)

    NamespaceProperties.add_member(:dns_properties, Shapes::ShapeRef.new(shape: DnsProperties, location_name: "DnsProperties"))
    NamespaceProperties.struct_class = Types::NamespaceProperties

    NamespaceSummariesList.member = Shapes::ShapeRef.new(shape: NamespaceSummary)

    NamespaceSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    NamespaceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    NamespaceSummary.add_member(:name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "Name"))
    NamespaceSummary.add_member(:type, Shapes::ShapeRef.new(shape: NamespaceType, location_name: "Type"))
    NamespaceSummary.struct_class = Types::NamespaceSummary

    Operation.add_member(:id, Shapes::ShapeRef.new(shape: OperationId, location_name: "Id"))
    Operation.add_member(:type, Shapes::ShapeRef.new(shape: OperationType, location_name: "Type"))
    Operation.add_member(:status, Shapes::ShapeRef.new(shape: OperationStatus, location_name: "Status"))
    Operation.add_member(:error_message, Shapes::ShapeRef.new(shape: Message, location_name: "ErrorMessage"))
    Operation.add_member(:error_code, Shapes::ShapeRef.new(shape: Code, location_name: "ErrorCode"))
    Operation.add_member(:create_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateDate"))
    Operation.add_member(:update_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdateDate"))
    Operation.add_member(:targets, Shapes::ShapeRef.new(shape: OperationTargetsMap, location_name: "Targets"))
    Operation.struct_class = Types::Operation

    OperationFilter.add_member(:name, Shapes::ShapeRef.new(shape: OperationFilterName, required: true, location_name: "Name"))
    OperationFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "Values"))
    OperationFilter.add_member(:condition, Shapes::ShapeRef.new(shape: FilterCondition, location_name: "Condition"))
    OperationFilter.struct_class = Types::OperationFilter

    OperationFilters.member = Shapes::ShapeRef.new(shape: OperationFilter)

    OperationSummary.add_member(:id, Shapes::ShapeRef.new(shape: OperationId, location_name: "Id"))
    OperationSummary.add_member(:status, Shapes::ShapeRef.new(shape: OperationStatus, location_name: "Status"))
    OperationSummary.struct_class = Types::OperationSummary

    OperationSummaryList.member = Shapes::ShapeRef.new(shape: OperationSummary)

    OperationTargetsMap.key = Shapes::ShapeRef.new(shape: OperationTargetType)
    OperationTargetsMap.value = Shapes::ShapeRef.new(shape: ResourceId)

    RegisterInstanceRequest.add_member(:service_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ServiceId"))
    RegisterInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "InstanceId"))
    RegisterInstanceRequest.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CreatorRequestId", metadata: {"idempotencyToken"=>true}))
    RegisterInstanceRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, required: true, location_name: "Attributes"))
    RegisterInstanceRequest.struct_class = Types::RegisterInstanceRequest

    RegisterInstanceResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    RegisterInstanceResponse.struct_class = Types::RegisterInstanceResponse

    Service.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    Service.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Service.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "Name"))
    Service.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    Service.add_member(:instance_count, Shapes::ShapeRef.new(shape: ResourceCount, location_name: "InstanceCount"))
    Service.add_member(:dns_config, Shapes::ShapeRef.new(shape: DnsConfig, location_name: "DnsConfig"))
    Service.add_member(:health_check_config, Shapes::ShapeRef.new(shape: HealthCheckConfig, location_name: "HealthCheckConfig"))
    Service.add_member(:health_check_custom_config, Shapes::ShapeRef.new(shape: HealthCheckCustomConfig, location_name: "HealthCheckCustomConfig"))
    Service.add_member(:create_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreateDate"))
    Service.add_member(:creator_request_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "CreatorRequestId"))
    Service.struct_class = Types::Service

    ServiceChange.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    ServiceChange.add_member(:dns_config, Shapes::ShapeRef.new(shape: DnsConfigChange, required: true, location_name: "DnsConfig"))
    ServiceChange.add_member(:health_check_config, Shapes::ShapeRef.new(shape: HealthCheckConfig, location_name: "HealthCheckConfig"))
    ServiceChange.struct_class = Types::ServiceChange

    ServiceFilter.add_member(:name, Shapes::ShapeRef.new(shape: ServiceFilterName, required: true, location_name: "Name"))
    ServiceFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "Values"))
    ServiceFilter.add_member(:condition, Shapes::ShapeRef.new(shape: FilterCondition, location_name: "Condition"))
    ServiceFilter.struct_class = Types::ServiceFilter

    ServiceFilters.member = Shapes::ShapeRef.new(shape: ServiceFilter)

    ServiceSummariesList.member = Shapes::ShapeRef.new(shape: ServiceSummary)

    ServiceSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    ServiceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ServiceSummary.add_member(:name, Shapes::ShapeRef.new(shape: ServiceName, location_name: "Name"))
    ServiceSummary.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "Description"))
    ServiceSummary.add_member(:instance_count, Shapes::ShapeRef.new(shape: ResourceCount, location_name: "InstanceCount"))
    ServiceSummary.struct_class = Types::ServiceSummary

    UpdateInstanceCustomHealthStatusRequest.add_member(:service_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ServiceId"))
    UpdateInstanceCustomHealthStatusRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "InstanceId"))
    UpdateInstanceCustomHealthStatusRequest.add_member(:status, Shapes::ShapeRef.new(shape: CustomHealthStatus, required: true, location_name: "Status"))
    UpdateInstanceCustomHealthStatusRequest.struct_class = Types::UpdateInstanceCustomHealthStatusRequest

    UpdateServiceRequest.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "Id"))
    UpdateServiceRequest.add_member(:service, Shapes::ShapeRef.new(shape: ServiceChange, required: true, location_name: "Service"))
    UpdateServiceRequest.struct_class = Types::UpdateServiceRequest

    UpdateServiceResponse.add_member(:operation_id, Shapes::ShapeRef.new(shape: OperationId, location_name: "OperationId"))
    UpdateServiceResponse.struct_class = Types::UpdateServiceResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-03-14"

      api.metadata = {
        "apiVersion" => "2017-03-14",
        "endpointPrefix" => "servicediscovery",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "ServiceDiscovery",
        "serviceFullName" => "Amazon Route 53 Auto Naming",
        "serviceId" => "ServiceDiscovery",
        "signatureVersion" => "v4",
        "targetPrefix" => "Route53AutoNaming_v20170314",
        "uid" => "servicediscovery-2017-03-14",
      }

      api.add_operation(:create_private_dns_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePrivateDnsNamespace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePrivateDnsNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePrivateDnsNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: NamespaceAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
      end)

      api.add_operation(:create_public_dns_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePublicDnsNamespace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePublicDnsNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePublicDnsNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: NamespaceAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
      end)

      api.add_operation(:create_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: NamespaceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ServiceAlreadyExists)
      end)

      api.add_operation(:delete_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNamespace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: NamespaceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
      end)

      api.add_operation(:delete_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
      end)

      api.add_operation(:deregister_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: InstanceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFound)
      end)

      api.add_operation(:get_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InstanceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFound)
      end)

      api.add_operation(:get_instances_health_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstancesHealthStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInstancesHealthStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInstancesHealthStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InstanceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFound)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNamespace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: NamespaceNotFound)
      end)

      api.add_operation(:get_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOperation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOperationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOperationResponse)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotFound)
      end)

      api.add_operation(:get_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFound)
      end)

      api.add_operation(:list_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_namespaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNamespaces"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListNamespacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNamespacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOperations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOperationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOperationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServices"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListServicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:register_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterInstanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceeded)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFound)
      end)

      api.add_operation(:update_instance_custom_health_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInstanceCustomHealthStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateInstanceCustomHealthStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InstanceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFound)
        o.errors << Shapes::ShapeRef.new(shape: CustomHealthNotFound)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
      end)

      api.add_operation(:update_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateService"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateRequest)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceNotFound)
      end)
    end

  end
end
