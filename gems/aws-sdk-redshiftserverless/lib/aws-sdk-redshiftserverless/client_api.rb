# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::RedshiftServerless
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    Association = Shapes::StructureShape.new(name: 'Association')
    AssociationList = Shapes::ListShape.new(name: 'AssociationList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ConfigParameter = Shapes::StructureShape.new(name: 'ConfigParameter')
    ConfigParameterList = Shapes::ListShape.new(name: 'ConfigParameterList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConvertRecoveryPointToSnapshotRequest = Shapes::StructureShape.new(name: 'ConvertRecoveryPointToSnapshotRequest')
    ConvertRecoveryPointToSnapshotResponse = Shapes::StructureShape.new(name: 'ConvertRecoveryPointToSnapshotResponse')
    CreateCustomDomainAssociationRequest = Shapes::StructureShape.new(name: 'CreateCustomDomainAssociationRequest')
    CreateCustomDomainAssociationResponse = Shapes::StructureShape.new(name: 'CreateCustomDomainAssociationResponse')
    CreateEndpointAccessRequest = Shapes::StructureShape.new(name: 'CreateEndpointAccessRequest')
    CreateEndpointAccessResponse = Shapes::StructureShape.new(name: 'CreateEndpointAccessResponse')
    CreateNamespaceRequest = Shapes::StructureShape.new(name: 'CreateNamespaceRequest')
    CreateNamespaceResponse = Shapes::StructureShape.new(name: 'CreateNamespaceResponse')
    CreateScheduledActionRequest = Shapes::StructureShape.new(name: 'CreateScheduledActionRequest')
    CreateScheduledActionResponse = Shapes::StructureShape.new(name: 'CreateScheduledActionResponse')
    CreateSnapshotCopyConfigurationRequest = Shapes::StructureShape.new(name: 'CreateSnapshotCopyConfigurationRequest')
    CreateSnapshotCopyConfigurationResponse = Shapes::StructureShape.new(name: 'CreateSnapshotCopyConfigurationResponse')
    CreateSnapshotRequest = Shapes::StructureShape.new(name: 'CreateSnapshotRequest')
    CreateSnapshotResponse = Shapes::StructureShape.new(name: 'CreateSnapshotResponse')
    CreateSnapshotScheduleActionParameters = Shapes::StructureShape.new(name: 'CreateSnapshotScheduleActionParameters')
    CreateUsageLimitRequest = Shapes::StructureShape.new(name: 'CreateUsageLimitRequest')
    CreateUsageLimitResponse = Shapes::StructureShape.new(name: 'CreateUsageLimitResponse')
    CreateWorkgroupRequest = Shapes::StructureShape.new(name: 'CreateWorkgroupRequest')
    CreateWorkgroupResponse = Shapes::StructureShape.new(name: 'CreateWorkgroupResponse')
    CustomDomainCertificateArnString = Shapes::StringShape.new(name: 'CustomDomainCertificateArnString')
    CustomDomainName = Shapes::StringShape.new(name: 'CustomDomainName')
    DbName = Shapes::StringShape.new(name: 'DbName')
    DbPassword = Shapes::StringShape.new(name: 'DbPassword')
    DbUser = Shapes::StringShape.new(name: 'DbUser')
    DeleteCustomDomainAssociationRequest = Shapes::StructureShape.new(name: 'DeleteCustomDomainAssociationRequest')
    DeleteCustomDomainAssociationResponse = Shapes::StructureShape.new(name: 'DeleteCustomDomainAssociationResponse')
    DeleteEndpointAccessRequest = Shapes::StructureShape.new(name: 'DeleteEndpointAccessRequest')
    DeleteEndpointAccessResponse = Shapes::StructureShape.new(name: 'DeleteEndpointAccessResponse')
    DeleteNamespaceRequest = Shapes::StructureShape.new(name: 'DeleteNamespaceRequest')
    DeleteNamespaceResponse = Shapes::StructureShape.new(name: 'DeleteNamespaceResponse')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteResourcePolicyResponse = Shapes::StructureShape.new(name: 'DeleteResourcePolicyResponse')
    DeleteScheduledActionRequest = Shapes::StructureShape.new(name: 'DeleteScheduledActionRequest')
    DeleteScheduledActionResponse = Shapes::StructureShape.new(name: 'DeleteScheduledActionResponse')
    DeleteSnapshotCopyConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteSnapshotCopyConfigurationRequest')
    DeleteSnapshotCopyConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteSnapshotCopyConfigurationResponse')
    DeleteSnapshotRequest = Shapes::StructureShape.new(name: 'DeleteSnapshotRequest')
    DeleteSnapshotResponse = Shapes::StructureShape.new(name: 'DeleteSnapshotResponse')
    DeleteUsageLimitRequest = Shapes::StructureShape.new(name: 'DeleteUsageLimitRequest')
    DeleteUsageLimitResponse = Shapes::StructureShape.new(name: 'DeleteUsageLimitResponse')
    DeleteWorkgroupRequest = Shapes::StructureShape.new(name: 'DeleteWorkgroupRequest')
    DeleteWorkgroupResponse = Shapes::StructureShape.new(name: 'DeleteWorkgroupResponse')
    Double = Shapes::FloatShape.new(name: 'Double')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EndpointAccess = Shapes::StructureShape.new(name: 'EndpointAccess')
    EndpointAccessList = Shapes::ListShape.new(name: 'EndpointAccessList')
    GetCredentialsRequest = Shapes::StructureShape.new(name: 'GetCredentialsRequest')
    GetCredentialsResponse = Shapes::StructureShape.new(name: 'GetCredentialsResponse')
    GetCustomDomainAssociationRequest = Shapes::StructureShape.new(name: 'GetCustomDomainAssociationRequest')
    GetCustomDomainAssociationResponse = Shapes::StructureShape.new(name: 'GetCustomDomainAssociationResponse')
    GetEndpointAccessRequest = Shapes::StructureShape.new(name: 'GetEndpointAccessRequest')
    GetEndpointAccessResponse = Shapes::StructureShape.new(name: 'GetEndpointAccessResponse')
    GetNamespaceRequest = Shapes::StructureShape.new(name: 'GetNamespaceRequest')
    GetNamespaceResponse = Shapes::StructureShape.new(name: 'GetNamespaceResponse')
    GetRecoveryPointRequest = Shapes::StructureShape.new(name: 'GetRecoveryPointRequest')
    GetRecoveryPointResponse = Shapes::StructureShape.new(name: 'GetRecoveryPointResponse')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    GetScheduledActionRequest = Shapes::StructureShape.new(name: 'GetScheduledActionRequest')
    GetScheduledActionResponse = Shapes::StructureShape.new(name: 'GetScheduledActionResponse')
    GetSnapshotRequest = Shapes::StructureShape.new(name: 'GetSnapshotRequest')
    GetSnapshotResponse = Shapes::StructureShape.new(name: 'GetSnapshotResponse')
    GetTableRestoreStatusRequest = Shapes::StructureShape.new(name: 'GetTableRestoreStatusRequest')
    GetTableRestoreStatusResponse = Shapes::StructureShape.new(name: 'GetTableRestoreStatusResponse')
    GetTrackRequest = Shapes::StructureShape.new(name: 'GetTrackRequest')
    GetTrackResponse = Shapes::StructureShape.new(name: 'GetTrackResponse')
    GetUsageLimitRequest = Shapes::StructureShape.new(name: 'GetUsageLimitRequest')
    GetUsageLimitResponse = Shapes::StructureShape.new(name: 'GetUsageLimitResponse')
    GetWorkgroupRequest = Shapes::StructureShape.new(name: 'GetWorkgroupRequest')
    GetWorkgroupResponse = Shapes::StructureShape.new(name: 'GetWorkgroupResponse')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IamRoleArnList = Shapes::ListShape.new(name: 'IamRoleArnList')
    InsufficientCapacityException = Shapes::StructureShape.new(name: 'InsufficientCapacityException')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidPaginationException = Shapes::StructureShape.new(name: 'InvalidPaginationException')
    IpAddressType = Shapes::StringShape.new(name: 'IpAddressType')
    Ipv6CidrBlockNotFoundException = Shapes::StructureShape.new(name: 'Ipv6CidrBlockNotFoundException')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    ListCustomDomainAssociationsRequest = Shapes::StructureShape.new(name: 'ListCustomDomainAssociationsRequest')
    ListCustomDomainAssociationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListCustomDomainAssociationsRequestMaxResultsInteger')
    ListCustomDomainAssociationsResponse = Shapes::StructureShape.new(name: 'ListCustomDomainAssociationsResponse')
    ListEndpointAccessRequest = Shapes::StructureShape.new(name: 'ListEndpointAccessRequest')
    ListEndpointAccessRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListEndpointAccessRequestMaxResultsInteger')
    ListEndpointAccessResponse = Shapes::StructureShape.new(name: 'ListEndpointAccessResponse')
    ListManagedWorkgroupsRequest = Shapes::StructureShape.new(name: 'ListManagedWorkgroupsRequest')
    ListManagedWorkgroupsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListManagedWorkgroupsRequestMaxResultsInteger')
    ListManagedWorkgroupsResponse = Shapes::StructureShape.new(name: 'ListManagedWorkgroupsResponse')
    ListNamespacesRequest = Shapes::StructureShape.new(name: 'ListNamespacesRequest')
    ListNamespacesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListNamespacesRequestMaxResultsInteger')
    ListNamespacesResponse = Shapes::StructureShape.new(name: 'ListNamespacesResponse')
    ListRecoveryPointsRequest = Shapes::StructureShape.new(name: 'ListRecoveryPointsRequest')
    ListRecoveryPointsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRecoveryPointsRequestMaxResultsInteger')
    ListRecoveryPointsResponse = Shapes::StructureShape.new(name: 'ListRecoveryPointsResponse')
    ListScheduledActionsRequest = Shapes::StructureShape.new(name: 'ListScheduledActionsRequest')
    ListScheduledActionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListScheduledActionsRequestMaxResultsInteger')
    ListScheduledActionsResponse = Shapes::StructureShape.new(name: 'ListScheduledActionsResponse')
    ListSnapshotCopyConfigurationsRequest = Shapes::StructureShape.new(name: 'ListSnapshotCopyConfigurationsRequest')
    ListSnapshotCopyConfigurationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSnapshotCopyConfigurationsRequestMaxResultsInteger')
    ListSnapshotCopyConfigurationsResponse = Shapes::StructureShape.new(name: 'ListSnapshotCopyConfigurationsResponse')
    ListSnapshotsRequest = Shapes::StructureShape.new(name: 'ListSnapshotsRequest')
    ListSnapshotsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSnapshotsRequestMaxResultsInteger')
    ListSnapshotsResponse = Shapes::StructureShape.new(name: 'ListSnapshotsResponse')
    ListTableRestoreStatusRequest = Shapes::StructureShape.new(name: 'ListTableRestoreStatusRequest')
    ListTableRestoreStatusRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListTableRestoreStatusRequestMaxResultsInteger')
    ListTableRestoreStatusResponse = Shapes::StructureShape.new(name: 'ListTableRestoreStatusResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTracksRequest = Shapes::StructureShape.new(name: 'ListTracksRequest')
    ListTracksRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListTracksRequestMaxResultsInteger')
    ListTracksResponse = Shapes::StructureShape.new(name: 'ListTracksResponse')
    ListUsageLimitsRequest = Shapes::StructureShape.new(name: 'ListUsageLimitsRequest')
    ListUsageLimitsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListUsageLimitsRequestMaxResultsInteger')
    ListUsageLimitsResponse = Shapes::StructureShape.new(name: 'ListUsageLimitsResponse')
    ListWorkgroupsRequest = Shapes::StructureShape.new(name: 'ListWorkgroupsRequest')
    ListWorkgroupsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListWorkgroupsRequestMaxResultsInteger')
    ListWorkgroupsResponse = Shapes::StructureShape.new(name: 'ListWorkgroupsResponse')
    LogExport = Shapes::StringShape.new(name: 'LogExport')
    LogExportList = Shapes::ListShape.new(name: 'LogExportList')
    Long = Shapes::IntegerShape.new(name: 'Long')
    ManagedWorkgroupListItem = Shapes::StructureShape.new(name: 'ManagedWorkgroupListItem')
    ManagedWorkgroupName = Shapes::StringShape.new(name: 'ManagedWorkgroupName')
    ManagedWorkgroupStatus = Shapes::StringShape.new(name: 'ManagedWorkgroupStatus')
    ManagedWorkgroups = Shapes::ListShape.new(name: 'ManagedWorkgroups')
    Namespace = Shapes::StructureShape.new(name: 'Namespace')
    NamespaceList = Shapes::ListShape.new(name: 'NamespaceList')
    NamespaceName = Shapes::StringShape.new(name: 'NamespaceName')
    NamespaceStatus = Shapes::StringShape.new(name: 'NamespaceStatus')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaceList = Shapes::ListShape.new(name: 'NetworkInterfaceList')
    NextInvocationsList = Shapes::ListShape.new(name: 'NextInvocationsList')
    OwnerAccount = Shapes::StringShape.new(name: 'OwnerAccount')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParameterKey = Shapes::StringShape.new(name: 'ParameterKey')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    PerformanceTarget = Shapes::StructureShape.new(name: 'PerformanceTarget')
    PerformanceTargetLevelInteger = Shapes::IntegerShape.new(name: 'PerformanceTargetLevelInteger')
    PerformanceTargetStatus = Shapes::StringShape.new(name: 'PerformanceTargetStatus')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    RecoveryPoint = Shapes::StructureShape.new(name: 'RecoveryPoint')
    RecoveryPointList = Shapes::ListShape.new(name: 'RecoveryPointList')
    RedshiftIdcApplicationArn = Shapes::StringShape.new(name: 'RedshiftIdcApplicationArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicy = Shapes::StructureShape.new(name: 'ResourcePolicy')
    RestoreFromRecoveryPointRequest = Shapes::StructureShape.new(name: 'RestoreFromRecoveryPointRequest')
    RestoreFromRecoveryPointResponse = Shapes::StructureShape.new(name: 'RestoreFromRecoveryPointResponse')
    RestoreFromSnapshotRequest = Shapes::StructureShape.new(name: 'RestoreFromSnapshotRequest')
    RestoreFromSnapshotResponse = Shapes::StructureShape.new(name: 'RestoreFromSnapshotResponse')
    RestoreTableFromRecoveryPointRequest = Shapes::StructureShape.new(name: 'RestoreTableFromRecoveryPointRequest')
    RestoreTableFromRecoveryPointResponse = Shapes::StructureShape.new(name: 'RestoreTableFromRecoveryPointResponse')
    RestoreTableFromSnapshotRequest = Shapes::StructureShape.new(name: 'RestoreTableFromSnapshotRequest')
    RestoreTableFromSnapshotResponse = Shapes::StructureShape.new(name: 'RestoreTableFromSnapshotResponse')
    Schedule = Shapes::UnionShape.new(name: 'Schedule')
    ScheduledActionAssociation = Shapes::StructureShape.new(name: 'ScheduledActionAssociation')
    ScheduledActionName = Shapes::StringShape.new(name: 'ScheduledActionName')
    ScheduledActionResponse = Shapes::StructureShape.new(name: 'ScheduledActionResponse')
    ScheduledActionsList = Shapes::ListShape.new(name: 'ScheduledActionsList')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    ServerlessTrack = Shapes::StructureShape.new(name: 'ServerlessTrack')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Snapshot = Shapes::StructureShape.new(name: 'Snapshot')
    SnapshotCopyConfiguration = Shapes::StructureShape.new(name: 'SnapshotCopyConfiguration')
    SnapshotCopyConfigurations = Shapes::ListShape.new(name: 'SnapshotCopyConfigurations')
    SnapshotList = Shapes::ListShape.new(name: 'SnapshotList')
    SnapshotNamePrefix = Shapes::StringShape.new(name: 'SnapshotNamePrefix')
    SnapshotStatus = Shapes::StringShape.new(name: 'SnapshotStatus')
    SourceArn = Shapes::StringShape.new(name: 'SourceArn')
    State = Shapes::StringShape.new(name: 'State')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TableRestoreStatus = Shapes::StructureShape.new(name: 'TableRestoreStatus')
    TableRestoreStatusList = Shapes::ListShape.new(name: 'TableRestoreStatusList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetAction = Shapes::UnionShape.new(name: 'TargetAction')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    TrackList = Shapes::ListShape.new(name: 'TrackList')
    TrackName = Shapes::StringShape.new(name: 'TrackName')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateCustomDomainAssociationRequest = Shapes::StructureShape.new(name: 'UpdateCustomDomainAssociationRequest')
    UpdateCustomDomainAssociationResponse = Shapes::StructureShape.new(name: 'UpdateCustomDomainAssociationResponse')
    UpdateEndpointAccessRequest = Shapes::StructureShape.new(name: 'UpdateEndpointAccessRequest')
    UpdateEndpointAccessResponse = Shapes::StructureShape.new(name: 'UpdateEndpointAccessResponse')
    UpdateNamespaceRequest = Shapes::StructureShape.new(name: 'UpdateNamespaceRequest')
    UpdateNamespaceResponse = Shapes::StructureShape.new(name: 'UpdateNamespaceResponse')
    UpdateScheduledActionRequest = Shapes::StructureShape.new(name: 'UpdateScheduledActionRequest')
    UpdateScheduledActionResponse = Shapes::StructureShape.new(name: 'UpdateScheduledActionResponse')
    UpdateSnapshotCopyConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateSnapshotCopyConfigurationRequest')
    UpdateSnapshotCopyConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateSnapshotCopyConfigurationResponse')
    UpdateSnapshotRequest = Shapes::StructureShape.new(name: 'UpdateSnapshotRequest')
    UpdateSnapshotResponse = Shapes::StructureShape.new(name: 'UpdateSnapshotResponse')
    UpdateTarget = Shapes::StructureShape.new(name: 'UpdateTarget')
    UpdateTargetsList = Shapes::ListShape.new(name: 'UpdateTargetsList')
    UpdateUsageLimitRequest = Shapes::StructureShape.new(name: 'UpdateUsageLimitRequest')
    UpdateUsageLimitResponse = Shapes::StructureShape.new(name: 'UpdateUsageLimitResponse')
    UpdateWorkgroupRequest = Shapes::StructureShape.new(name: 'UpdateWorkgroupRequest')
    UpdateWorkgroupResponse = Shapes::StructureShape.new(name: 'UpdateWorkgroupResponse')
    UsageLimit = Shapes::StructureShape.new(name: 'UsageLimit')
    UsageLimitBreachAction = Shapes::StringShape.new(name: 'UsageLimitBreachAction')
    UsageLimitPeriod = Shapes::StringShape.new(name: 'UsageLimitPeriod')
    UsageLimitUsageType = Shapes::StringShape.new(name: 'UsageLimitUsageType')
    UsageLimits = Shapes::ListShape.new(name: 'UsageLimits')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VpcEndpoint = Shapes::StructureShape.new(name: 'VpcEndpoint')
    VpcEndpointList = Shapes::ListShape.new(name: 'VpcEndpointList')
    VpcIds = Shapes::ListShape.new(name: 'VpcIds')
    VpcSecurityGroupId = Shapes::StringShape.new(name: 'VpcSecurityGroupId')
    VpcSecurityGroupIdList = Shapes::ListShape.new(name: 'VpcSecurityGroupIdList')
    VpcSecurityGroupMembership = Shapes::StructureShape.new(name: 'VpcSecurityGroupMembership')
    VpcSecurityGroupMembershipList = Shapes::ListShape.new(name: 'VpcSecurityGroupMembershipList')
    Workgroup = Shapes::StructureShape.new(name: 'Workgroup')
    WorkgroupList = Shapes::ListShape.new(name: 'WorkgroupList')
    WorkgroupName = Shapes::StringShape.new(name: 'WorkgroupName')
    WorkgroupStatus = Shapes::StringShape.new(name: 'WorkgroupStatus')

    AccessDeniedException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountIdList.member = Shapes::ShapeRef.new(shape: String)

    Association.add_member(:custom_domain_certificate_arn, Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: "customDomainCertificateArn"))
    Association.add_member(:custom_domain_certificate_expiry_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "customDomainCertificateExpiryTime"))
    Association.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CustomDomainName, location_name: "customDomainName"))
    Association.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, location_name: "workgroupName"))
    Association.struct_class = Types::Association

    AssociationList.member = Shapes::ShapeRef.new(shape: Association)

    ConfigParameter.add_member(:parameter_key, Shapes::ShapeRef.new(shape: ParameterKey, location_name: "parameterKey"))
    ConfigParameter.add_member(:parameter_value, Shapes::ShapeRef.new(shape: ParameterValue, location_name: "parameterValue"))
    ConfigParameter.struct_class = Types::ConfigParameter

    ConfigParameterList.member = Shapes::ShapeRef.new(shape: ConfigParameter)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ConvertRecoveryPointToSnapshotRequest.add_member(:recovery_point_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "recoveryPointId"))
    ConvertRecoveryPointToSnapshotRequest.add_member(:retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "retentionPeriod"))
    ConvertRecoveryPointToSnapshotRequest.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "snapshotName"))
    ConvertRecoveryPointToSnapshotRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ConvertRecoveryPointToSnapshotRequest.struct_class = Types::ConvertRecoveryPointToSnapshotRequest

    ConvertRecoveryPointToSnapshotResponse.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "snapshot"))
    ConvertRecoveryPointToSnapshotResponse.struct_class = Types::ConvertRecoveryPointToSnapshotResponse

    CreateCustomDomainAssociationRequest.add_member(:custom_domain_certificate_arn, Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, required: true, location_name: "customDomainCertificateArn"))
    CreateCustomDomainAssociationRequest.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CustomDomainName, required: true, location_name: "customDomainName"))
    CreateCustomDomainAssociationRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, required: true, location_name: "workgroupName"))
    CreateCustomDomainAssociationRequest.struct_class = Types::CreateCustomDomainAssociationRequest

    CreateCustomDomainAssociationResponse.add_member(:custom_domain_certificate_arn, Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: "customDomainCertificateArn"))
    CreateCustomDomainAssociationResponse.add_member(:custom_domain_certificate_expiry_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "customDomainCertificateExpiryTime"))
    CreateCustomDomainAssociationResponse.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CustomDomainName, location_name: "customDomainName"))
    CreateCustomDomainAssociationResponse.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, location_name: "workgroupName"))
    CreateCustomDomainAssociationResponse.struct_class = Types::CreateCustomDomainAssociationResponse

    CreateEndpointAccessRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "endpointName"))
    CreateEndpointAccessRequest.add_member(:owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, location_name: "ownerAccount"))
    CreateEndpointAccessRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, required: true, location_name: "subnetIds"))
    CreateEndpointAccessRequest.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "vpcSecurityGroupIds"))
    CreateEndpointAccessRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "workgroupName"))
    CreateEndpointAccessRequest.struct_class = Types::CreateEndpointAccessRequest

    CreateEndpointAccessResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: EndpointAccess, location_name: "endpoint"))
    CreateEndpointAccessResponse.struct_class = Types::CreateEndpointAccessResponse

    CreateNamespaceRequest.add_member(:admin_password_secret_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "adminPasswordSecretKmsKeyId"))
    CreateNamespaceRequest.add_member(:admin_user_password, Shapes::ShapeRef.new(shape: DbPassword, location_name: "adminUserPassword"))
    CreateNamespaceRequest.add_member(:admin_username, Shapes::ShapeRef.new(shape: DbUser, location_name: "adminUsername"))
    CreateNamespaceRequest.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "dbName"))
    CreateNamespaceRequest.add_member(:default_iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "defaultIamRoleArn"))
    CreateNamespaceRequest.add_member(:iam_roles, Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: "iamRoles"))
    CreateNamespaceRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    CreateNamespaceRequest.add_member(:log_exports, Shapes::ShapeRef.new(shape: LogExportList, location_name: "logExports"))
    CreateNamespaceRequest.add_member(:manage_admin_password, Shapes::ShapeRef.new(shape: Boolean, location_name: "manageAdminPassword"))
    CreateNamespaceRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location_name: "namespaceName"))
    CreateNamespaceRequest.add_member(:redshift_idc_application_arn, Shapes::ShapeRef.new(shape: RedshiftIdcApplicationArn, location_name: "redshiftIdcApplicationArn"))
    CreateNamespaceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateNamespaceRequest.struct_class = Types::CreateNamespaceRequest

    CreateNamespaceResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "namespace"))
    CreateNamespaceResponse.struct_class = Types::CreateNamespaceResponse

    CreateScheduledActionRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    CreateScheduledActionRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    CreateScheduledActionRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location_name: "namespaceName"))
    CreateScheduledActionRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    CreateScheduledActionRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, required: true, location_name: "schedule"))
    CreateScheduledActionRequest.add_member(:scheduled_action_description, Shapes::ShapeRef.new(shape: String, location_name: "scheduledActionDescription"))
    CreateScheduledActionRequest.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: ScheduledActionName, required: true, location_name: "scheduledActionName"))
    CreateScheduledActionRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    CreateScheduledActionRequest.add_member(:target_action, Shapes::ShapeRef.new(shape: TargetAction, required: true, location_name: "targetAction"))
    CreateScheduledActionRequest.struct_class = Types::CreateScheduledActionRequest

    CreateScheduledActionResponse.add_member(:scheduled_action, Shapes::ShapeRef.new(shape: ScheduledActionResponse, location_name: "scheduledAction"))
    CreateScheduledActionResponse.struct_class = Types::CreateScheduledActionResponse

    CreateSnapshotCopyConfigurationRequest.add_member(:destination_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "destinationKmsKeyId"))
    CreateSnapshotCopyConfigurationRequest.add_member(:destination_region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationRegion"))
    CreateSnapshotCopyConfigurationRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location_name: "namespaceName"))
    CreateSnapshotCopyConfigurationRequest.add_member(:snapshot_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "snapshotRetentionPeriod"))
    CreateSnapshotCopyConfigurationRequest.struct_class = Types::CreateSnapshotCopyConfigurationRequest

    CreateSnapshotCopyConfigurationResponse.add_member(:snapshot_copy_configuration, Shapes::ShapeRef.new(shape: SnapshotCopyConfiguration, required: true, location_name: "snapshotCopyConfiguration"))
    CreateSnapshotCopyConfigurationResponse.struct_class = Types::CreateSnapshotCopyConfigurationResponse

    CreateSnapshotRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "namespaceName"))
    CreateSnapshotRequest.add_member(:retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "retentionPeriod"))
    CreateSnapshotRequest.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "snapshotName"))
    CreateSnapshotRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateSnapshotRequest.struct_class = Types::CreateSnapshotRequest

    CreateSnapshotResponse.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "snapshot"))
    CreateSnapshotResponse.struct_class = Types::CreateSnapshotResponse

    CreateSnapshotScheduleActionParameters.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location_name: "namespaceName"))
    CreateSnapshotScheduleActionParameters.add_member(:retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "retentionPeriod"))
    CreateSnapshotScheduleActionParameters.add_member(:snapshot_name_prefix, Shapes::ShapeRef.new(shape: SnapshotNamePrefix, required: true, location_name: "snapshotNamePrefix"))
    CreateSnapshotScheduleActionParameters.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateSnapshotScheduleActionParameters.struct_class = Types::CreateSnapshotScheduleActionParameters

    CreateUsageLimitRequest.add_member(:amount, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "amount"))
    CreateUsageLimitRequest.add_member(:breach_action, Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: "breachAction"))
    CreateUsageLimitRequest.add_member(:period, Shapes::ShapeRef.new(shape: UsageLimitPeriod, location_name: "period"))
    CreateUsageLimitRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceArn"))
    CreateUsageLimitRequest.add_member(:usage_type, Shapes::ShapeRef.new(shape: UsageLimitUsageType, required: true, location_name: "usageType"))
    CreateUsageLimitRequest.struct_class = Types::CreateUsageLimitRequest

    CreateUsageLimitResponse.add_member(:usage_limit, Shapes::ShapeRef.new(shape: UsageLimit, location_name: "usageLimit"))
    CreateUsageLimitResponse.struct_class = Types::CreateUsageLimitResponse

    CreateWorkgroupRequest.add_member(:base_capacity, Shapes::ShapeRef.new(shape: Integer, location_name: "baseCapacity"))
    CreateWorkgroupRequest.add_member(:config_parameters, Shapes::ShapeRef.new(shape: ConfigParameterList, location_name: "configParameters"))
    CreateWorkgroupRequest.add_member(:enhanced_vpc_routing, Shapes::ShapeRef.new(shape: Boolean, location_name: "enhancedVpcRouting"))
    CreateWorkgroupRequest.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    CreateWorkgroupRequest.add_member(:max_capacity, Shapes::ShapeRef.new(shape: Integer, location_name: "maxCapacity"))
    CreateWorkgroupRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location_name: "namespaceName"))
    CreateWorkgroupRequest.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "port"))
    CreateWorkgroupRequest.add_member(:price_performance_target, Shapes::ShapeRef.new(shape: PerformanceTarget, location_name: "pricePerformanceTarget"))
    CreateWorkgroupRequest.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "publiclyAccessible"))
    CreateWorkgroupRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    CreateWorkgroupRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "subnetIds"))
    CreateWorkgroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateWorkgroupRequest.add_member(:track_name, Shapes::ShapeRef.new(shape: TrackName, location_name: "trackName"))
    CreateWorkgroupRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, required: true, location_name: "workgroupName"))
    CreateWorkgroupRequest.struct_class = Types::CreateWorkgroupRequest

    CreateWorkgroupResponse.add_member(:workgroup, Shapes::ShapeRef.new(shape: Workgroup, location_name: "workgroup"))
    CreateWorkgroupResponse.struct_class = Types::CreateWorkgroupResponse

    DeleteCustomDomainAssociationRequest.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CustomDomainName, required: true, location_name: "customDomainName"))
    DeleteCustomDomainAssociationRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, required: true, location_name: "workgroupName"))
    DeleteCustomDomainAssociationRequest.struct_class = Types::DeleteCustomDomainAssociationRequest

    DeleteCustomDomainAssociationResponse.struct_class = Types::DeleteCustomDomainAssociationResponse

    DeleteEndpointAccessRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "endpointName"))
    DeleteEndpointAccessRequest.struct_class = Types::DeleteEndpointAccessRequest

    DeleteEndpointAccessResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: EndpointAccess, location_name: "endpoint"))
    DeleteEndpointAccessResponse.struct_class = Types::DeleteEndpointAccessResponse

    DeleteNamespaceRequest.add_member(:final_snapshot_name, Shapes::ShapeRef.new(shape: String, location_name: "finalSnapshotName"))
    DeleteNamespaceRequest.add_member(:final_snapshot_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "finalSnapshotRetentionPeriod"))
    DeleteNamespaceRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location_name: "namespaceName"))
    DeleteNamespaceRequest.struct_class = Types::DeleteNamespaceRequest

    DeleteNamespaceResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "namespace"))
    DeleteNamespaceResponse.struct_class = Types::DeleteNamespaceResponse

    DeleteResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceArn"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteResourcePolicyResponse.struct_class = Types::DeleteResourcePolicyResponse

    DeleteScheduledActionRequest.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: ScheduledActionName, required: true, location_name: "scheduledActionName"))
    DeleteScheduledActionRequest.struct_class = Types::DeleteScheduledActionRequest

    DeleteScheduledActionResponse.add_member(:scheduled_action, Shapes::ShapeRef.new(shape: ScheduledActionResponse, location_name: "scheduledAction"))
    DeleteScheduledActionResponse.struct_class = Types::DeleteScheduledActionResponse

    DeleteSnapshotCopyConfigurationRequest.add_member(:snapshot_copy_configuration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "snapshotCopyConfigurationId"))
    DeleteSnapshotCopyConfigurationRequest.struct_class = Types::DeleteSnapshotCopyConfigurationRequest

    DeleteSnapshotCopyConfigurationResponse.add_member(:snapshot_copy_configuration, Shapes::ShapeRef.new(shape: SnapshotCopyConfiguration, required: true, location_name: "snapshotCopyConfiguration"))
    DeleteSnapshotCopyConfigurationResponse.struct_class = Types::DeleteSnapshotCopyConfigurationResponse

    DeleteSnapshotRequest.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "snapshotName"))
    DeleteSnapshotRequest.struct_class = Types::DeleteSnapshotRequest

    DeleteSnapshotResponse.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "snapshot"))
    DeleteSnapshotResponse.struct_class = Types::DeleteSnapshotResponse

    DeleteUsageLimitRequest.add_member(:usage_limit_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "usageLimitId"))
    DeleteUsageLimitRequest.struct_class = Types::DeleteUsageLimitRequest

    DeleteUsageLimitResponse.add_member(:usage_limit, Shapes::ShapeRef.new(shape: UsageLimit, location_name: "usageLimit"))
    DeleteUsageLimitResponse.struct_class = Types::DeleteUsageLimitResponse

    DeleteWorkgroupRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, required: true, location_name: "workgroupName"))
    DeleteWorkgroupRequest.struct_class = Types::DeleteWorkgroupRequest

    DeleteWorkgroupResponse.add_member(:workgroup, Shapes::ShapeRef.new(shape: Workgroup, required: true, location_name: "workgroup"))
    DeleteWorkgroupResponse.struct_class = Types::DeleteWorkgroupResponse

    Endpoint.add_member(:address, Shapes::ShapeRef.new(shape: String, location_name: "address"))
    Endpoint.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "port"))
    Endpoint.add_member(:vpc_endpoints, Shapes::ShapeRef.new(shape: VpcEndpointList, location_name: "vpcEndpoints"))
    Endpoint.struct_class = Types::Endpoint

    EndpointAccess.add_member(:address, Shapes::ShapeRef.new(shape: String, location_name: "address"))
    EndpointAccess.add_member(:endpoint_arn, Shapes::ShapeRef.new(shape: String, location_name: "endpointArn"))
    EndpointAccess.add_member(:endpoint_create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endpointCreateTime"))
    EndpointAccess.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: String, location_name: "endpointName"))
    EndpointAccess.add_member(:endpoint_status, Shapes::ShapeRef.new(shape: String, location_name: "endpointStatus"))
    EndpointAccess.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "port"))
    EndpointAccess.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "subnetIds"))
    EndpointAccess.add_member(:vpc_endpoint, Shapes::ShapeRef.new(shape: VpcEndpoint, location_name: "vpcEndpoint"))
    EndpointAccess.add_member(:vpc_security_groups, Shapes::ShapeRef.new(shape: VpcSecurityGroupMembershipList, location_name: "vpcSecurityGroups"))
    EndpointAccess.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: String, location_name: "workgroupName"))
    EndpointAccess.struct_class = Types::EndpointAccess

    EndpointAccessList.member = Shapes::ShapeRef.new(shape: EndpointAccess)

    GetCredentialsRequest.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CustomDomainName, location_name: "customDomainName"))
    GetCredentialsRequest.add_member(:db_name, Shapes::ShapeRef.new(shape: DbName, location_name: "dbName"))
    GetCredentialsRequest.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "durationSeconds"))
    GetCredentialsRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, location_name: "workgroupName"))
    GetCredentialsRequest.struct_class = Types::GetCredentialsRequest

    GetCredentialsResponse.add_member(:db_password, Shapes::ShapeRef.new(shape: DbPassword, location_name: "dbPassword"))
    GetCredentialsResponse.add_member(:db_user, Shapes::ShapeRef.new(shape: DbUser, location_name: "dbUser"))
    GetCredentialsResponse.add_member(:expiration, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiration"))
    GetCredentialsResponse.add_member(:next_refresh_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "nextRefreshTime"))
    GetCredentialsResponse.struct_class = Types::GetCredentialsResponse

    GetCustomDomainAssociationRequest.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CustomDomainName, required: true, location_name: "customDomainName"))
    GetCustomDomainAssociationRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, required: true, location_name: "workgroupName"))
    GetCustomDomainAssociationRequest.struct_class = Types::GetCustomDomainAssociationRequest

    GetCustomDomainAssociationResponse.add_member(:custom_domain_certificate_arn, Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: "customDomainCertificateArn"))
    GetCustomDomainAssociationResponse.add_member(:custom_domain_certificate_expiry_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "customDomainCertificateExpiryTime"))
    GetCustomDomainAssociationResponse.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CustomDomainName, location_name: "customDomainName"))
    GetCustomDomainAssociationResponse.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, location_name: "workgroupName"))
    GetCustomDomainAssociationResponse.struct_class = Types::GetCustomDomainAssociationResponse

    GetEndpointAccessRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "endpointName"))
    GetEndpointAccessRequest.struct_class = Types::GetEndpointAccessRequest

    GetEndpointAccessResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: EndpointAccess, location_name: "endpoint"))
    GetEndpointAccessResponse.struct_class = Types::GetEndpointAccessResponse

    GetNamespaceRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location_name: "namespaceName"))
    GetNamespaceRequest.struct_class = Types::GetNamespaceRequest

    GetNamespaceResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "namespace"))
    GetNamespaceResponse.struct_class = Types::GetNamespaceResponse

    GetRecoveryPointRequest.add_member(:recovery_point_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "recoveryPointId"))
    GetRecoveryPointRequest.struct_class = Types::GetRecoveryPointRequest

    GetRecoveryPointResponse.add_member(:recovery_point, Shapes::ShapeRef.new(shape: RecoveryPoint, location_name: "recoveryPoint"))
    GetRecoveryPointResponse.struct_class = Types::GetRecoveryPointResponse

    GetResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceArn"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:resource_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "resourcePolicy"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

    GetScheduledActionRequest.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: ScheduledActionName, required: true, location_name: "scheduledActionName"))
    GetScheduledActionRequest.struct_class = Types::GetScheduledActionRequest

    GetScheduledActionResponse.add_member(:scheduled_action, Shapes::ShapeRef.new(shape: ScheduledActionResponse, location_name: "scheduledAction"))
    GetScheduledActionResponse.struct_class = Types::GetScheduledActionResponse

    GetSnapshotRequest.add_member(:owner_account, Shapes::ShapeRef.new(shape: String, location_name: "ownerAccount"))
    GetSnapshotRequest.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "snapshotArn"))
    GetSnapshotRequest.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, location_name: "snapshotName"))
    GetSnapshotRequest.struct_class = Types::GetSnapshotRequest

    GetSnapshotResponse.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "snapshot"))
    GetSnapshotResponse.struct_class = Types::GetSnapshotResponse

    GetTableRestoreStatusRequest.add_member(:table_restore_request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "tableRestoreRequestId"))
    GetTableRestoreStatusRequest.struct_class = Types::GetTableRestoreStatusRequest

    GetTableRestoreStatusResponse.add_member(:table_restore_status, Shapes::ShapeRef.new(shape: TableRestoreStatus, location_name: "tableRestoreStatus"))
    GetTableRestoreStatusResponse.struct_class = Types::GetTableRestoreStatusResponse

    GetTrackRequest.add_member(:track_name, Shapes::ShapeRef.new(shape: TrackName, required: true, location_name: "trackName"))
    GetTrackRequest.struct_class = Types::GetTrackRequest

    GetTrackResponse.add_member(:track, Shapes::ShapeRef.new(shape: ServerlessTrack, location_name: "track"))
    GetTrackResponse.struct_class = Types::GetTrackResponse

    GetUsageLimitRequest.add_member(:usage_limit_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "usageLimitId"))
    GetUsageLimitRequest.struct_class = Types::GetUsageLimitRequest

    GetUsageLimitResponse.add_member(:usage_limit, Shapes::ShapeRef.new(shape: UsageLimit, location_name: "usageLimit"))
    GetUsageLimitResponse.struct_class = Types::GetUsageLimitResponse

    GetWorkgroupRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, required: true, location_name: "workgroupName"))
    GetWorkgroupRequest.struct_class = Types::GetWorkgroupRequest

    GetWorkgroupResponse.add_member(:workgroup, Shapes::ShapeRef.new(shape: Workgroup, required: true, location_name: "workgroup"))
    GetWorkgroupResponse.struct_class = Types::GetWorkgroupResponse

    IamRoleArnList.member = Shapes::ShapeRef.new(shape: IamRoleArn)

    InsufficientCapacityException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InsufficientCapacityException.struct_class = Types::InsufficientCapacityException

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidPaginationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidPaginationException.struct_class = Types::InvalidPaginationException

    Ipv6CidrBlockNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    Ipv6CidrBlockNotFoundException.struct_class = Types::Ipv6CidrBlockNotFoundException

    ListCustomDomainAssociationsRequest.add_member(:custom_domain_certificate_arn, Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: "customDomainCertificateArn"))
    ListCustomDomainAssociationsRequest.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CustomDomainName, location_name: "customDomainName"))
    ListCustomDomainAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCustomDomainAssociationsRequestMaxResultsInteger, location_name: "maxResults"))
    ListCustomDomainAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCustomDomainAssociationsRequest.struct_class = Types::ListCustomDomainAssociationsRequest

    ListCustomDomainAssociationsResponse.add_member(:associations, Shapes::ShapeRef.new(shape: AssociationList, location_name: "associations"))
    ListCustomDomainAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListCustomDomainAssociationsResponse.struct_class = Types::ListCustomDomainAssociationsResponse

    ListEndpointAccessRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEndpointAccessRequestMaxResultsInteger, location_name: "maxResults"))
    ListEndpointAccessRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEndpointAccessRequest.add_member(:owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, location_name: "ownerAccount"))
    ListEndpointAccessRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "vpcId"))
    ListEndpointAccessRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: String, location_name: "workgroupName"))
    ListEndpointAccessRequest.struct_class = Types::ListEndpointAccessRequest

    ListEndpointAccessResponse.add_member(:endpoints, Shapes::ShapeRef.new(shape: EndpointAccessList, required: true, location_name: "endpoints"))
    ListEndpointAccessResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEndpointAccessResponse.struct_class = Types::ListEndpointAccessResponse

    ListManagedWorkgroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListManagedWorkgroupsRequestMaxResultsInteger, location_name: "maxResults"))
    ListManagedWorkgroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListManagedWorkgroupsRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: SourceArn, location_name: "sourceArn"))
    ListManagedWorkgroupsRequest.struct_class = Types::ListManagedWorkgroupsRequest

    ListManagedWorkgroupsResponse.add_member(:managed_workgroups, Shapes::ShapeRef.new(shape: ManagedWorkgroups, location_name: "managedWorkgroups"))
    ListManagedWorkgroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListManagedWorkgroupsResponse.struct_class = Types::ListManagedWorkgroupsResponse

    ListNamespacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListNamespacesRequestMaxResultsInteger, location_name: "maxResults"))
    ListNamespacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListNamespacesRequest.struct_class = Types::ListNamespacesRequest

    ListNamespacesResponse.add_member(:namespaces, Shapes::ShapeRef.new(shape: NamespaceList, required: true, location_name: "namespaces"))
    ListNamespacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListNamespacesResponse.struct_class = Types::ListNamespacesResponse

    ListRecoveryPointsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    ListRecoveryPointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRecoveryPointsRequestMaxResultsInteger, location_name: "maxResults"))
    ListRecoveryPointsRequest.add_member(:namespace_arn, Shapes::ShapeRef.new(shape: String, location_name: "namespaceArn"))
    ListRecoveryPointsRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    ListRecoveryPointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListRecoveryPointsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    ListRecoveryPointsRequest.struct_class = Types::ListRecoveryPointsRequest

    ListRecoveryPointsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListRecoveryPointsResponse.add_member(:recovery_points, Shapes::ShapeRef.new(shape: RecoveryPointList, location_name: "recoveryPoints"))
    ListRecoveryPointsResponse.struct_class = Types::ListRecoveryPointsResponse

    ListScheduledActionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListScheduledActionsRequestMaxResultsInteger, location_name: "maxResults"))
    ListScheduledActionsRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    ListScheduledActionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListScheduledActionsRequest.struct_class = Types::ListScheduledActionsRequest

    ListScheduledActionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListScheduledActionsResponse.add_member(:scheduled_actions, Shapes::ShapeRef.new(shape: ScheduledActionsList, location_name: "scheduledActions"))
    ListScheduledActionsResponse.struct_class = Types::ListScheduledActionsResponse

    ListSnapshotCopyConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSnapshotCopyConfigurationsRequestMaxResultsInteger, location_name: "maxResults"))
    ListSnapshotCopyConfigurationsRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    ListSnapshotCopyConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSnapshotCopyConfigurationsRequest.struct_class = Types::ListSnapshotCopyConfigurationsRequest

    ListSnapshotCopyConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSnapshotCopyConfigurationsResponse.add_member(:snapshot_copy_configurations, Shapes::ShapeRef.new(shape: SnapshotCopyConfigurations, required: true, location_name: "snapshotCopyConfigurations"))
    ListSnapshotCopyConfigurationsResponse.struct_class = Types::ListSnapshotCopyConfigurationsResponse

    ListSnapshotsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    ListSnapshotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSnapshotsRequestMaxResultsInteger, location_name: "maxResults"))
    ListSnapshotsRequest.add_member(:namespace_arn, Shapes::ShapeRef.new(shape: String, location_name: "namespaceArn"))
    ListSnapshotsRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: String, location_name: "namespaceName"))
    ListSnapshotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSnapshotsRequest.add_member(:owner_account, Shapes::ShapeRef.new(shape: String, location_name: "ownerAccount"))
    ListSnapshotsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    ListSnapshotsRequest.struct_class = Types::ListSnapshotsRequest

    ListSnapshotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSnapshotsResponse.add_member(:snapshots, Shapes::ShapeRef.new(shape: SnapshotList, location_name: "snapshots"))
    ListSnapshotsResponse.struct_class = Types::ListSnapshotsResponse

    ListTableRestoreStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTableRestoreStatusRequestMaxResultsInteger, location_name: "maxResults"))
    ListTableRestoreStatusRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: String, location_name: "namespaceName"))
    ListTableRestoreStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTableRestoreStatusRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: String, location_name: "workgroupName"))
    ListTableRestoreStatusRequest.struct_class = Types::ListTableRestoreStatusRequest

    ListTableRestoreStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTableRestoreStatusResponse.add_member(:table_restore_statuses, Shapes::ShapeRef.new(shape: TableRestoreStatusList, location_name: "tableRestoreStatuses"))
    ListTableRestoreStatusResponse.struct_class = Types::ListTableRestoreStatusResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTracksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListTracksRequestMaxResultsInteger, location_name: "maxResults"))
    ListTracksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTracksRequest.struct_class = Types::ListTracksRequest

    ListTracksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListTracksResponse.add_member(:tracks, Shapes::ShapeRef.new(shape: TrackList, location_name: "tracks"))
    ListTracksResponse.struct_class = Types::ListTracksResponse

    ListUsageLimitsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListUsageLimitsRequestMaxResultsInteger, location_name: "maxResults"))
    ListUsageLimitsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListUsageLimitsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "resourceArn"))
    ListUsageLimitsRequest.add_member(:usage_type, Shapes::ShapeRef.new(shape: UsageLimitUsageType, location_name: "usageType"))
    ListUsageLimitsRequest.struct_class = Types::ListUsageLimitsRequest

    ListUsageLimitsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListUsageLimitsResponse.add_member(:usage_limits, Shapes::ShapeRef.new(shape: UsageLimits, location_name: "usageLimits"))
    ListUsageLimitsResponse.struct_class = Types::ListUsageLimitsResponse

    ListWorkgroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListWorkgroupsRequestMaxResultsInteger, location_name: "maxResults"))
    ListWorkgroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListWorkgroupsRequest.add_member(:owner_account, Shapes::ShapeRef.new(shape: OwnerAccount, location_name: "ownerAccount"))
    ListWorkgroupsRequest.struct_class = Types::ListWorkgroupsRequest

    ListWorkgroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListWorkgroupsResponse.add_member(:workgroups, Shapes::ShapeRef.new(shape: WorkgroupList, required: true, location_name: "workgroups"))
    ListWorkgroupsResponse.struct_class = Types::ListWorkgroupsResponse

    LogExportList.member = Shapes::ShapeRef.new(shape: LogExport)

    ManagedWorkgroupListItem.add_member(:creation_date, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "creationDate"))
    ManagedWorkgroupListItem.add_member(:managed_workgroup_id, Shapes::ShapeRef.new(shape: String, location_name: "managedWorkgroupId"))
    ManagedWorkgroupListItem.add_member(:managed_workgroup_name, Shapes::ShapeRef.new(shape: ManagedWorkgroupName, location_name: "managedWorkgroupName"))
    ManagedWorkgroupListItem.add_member(:source_arn, Shapes::ShapeRef.new(shape: SourceArn, location_name: "sourceArn"))
    ManagedWorkgroupListItem.add_member(:status, Shapes::ShapeRef.new(shape: ManagedWorkgroupStatus, location_name: "status"))
    ManagedWorkgroupListItem.struct_class = Types::ManagedWorkgroupListItem

    ManagedWorkgroups.member = Shapes::ShapeRef.new(shape: ManagedWorkgroupListItem)

    Namespace.add_member(:admin_password_secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "adminPasswordSecretArn"))
    Namespace.add_member(:admin_password_secret_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "adminPasswordSecretKmsKeyId"))
    Namespace.add_member(:admin_username, Shapes::ShapeRef.new(shape: DbUser, location_name: "adminUsername"))
    Namespace.add_member(:creation_date, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "creationDate"))
    Namespace.add_member(:db_name, Shapes::ShapeRef.new(shape: String, location_name: "dbName"))
    Namespace.add_member(:default_iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "defaultIamRoleArn"))
    Namespace.add_member(:iam_roles, Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: "iamRoles"))
    Namespace.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    Namespace.add_member(:log_exports, Shapes::ShapeRef.new(shape: LogExportList, location_name: "logExports"))
    Namespace.add_member(:namespace_arn, Shapes::ShapeRef.new(shape: String, location_name: "namespaceArn"))
    Namespace.add_member(:namespace_id, Shapes::ShapeRef.new(shape: String, location_name: "namespaceId"))
    Namespace.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    Namespace.add_member(:status, Shapes::ShapeRef.new(shape: NamespaceStatus, location_name: "status"))
    Namespace.struct_class = Types::Namespace

    NamespaceList.member = Shapes::ShapeRef.new(shape: Namespace)

    NetworkInterface.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "availabilityZone"))
    NetworkInterface.add_member(:ipv6_address, Shapes::ShapeRef.new(shape: String, location_name: "ipv6Address"))
    NetworkInterface.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: String, location_name: "networkInterfaceId"))
    NetworkInterface.add_member(:private_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "privateIpAddress"))
    NetworkInterface.add_member(:subnet_id, Shapes::ShapeRef.new(shape: String, location_name: "subnetId"))
    NetworkInterface.struct_class = Types::NetworkInterface

    NetworkInterfaceList.member = Shapes::ShapeRef.new(shape: NetworkInterface)

    NextInvocationsList.member = Shapes::ShapeRef.new(shape: Timestamp)

    PerformanceTarget.add_member(:level, Shapes::ShapeRef.new(shape: PerformanceTargetLevelInteger, location_name: "level"))
    PerformanceTarget.add_member(:status, Shapes::ShapeRef.new(shape: PerformanceTargetStatus, location_name: "status"))
    PerformanceTarget.struct_class = Types::PerformanceTarget

    PutResourcePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: String, required: true, location_name: "policy"))
    PutResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceArn"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.add_member(:resource_policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "resourcePolicy"))
    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    RecoveryPoint.add_member(:namespace_arn, Shapes::ShapeRef.new(shape: String, location_name: "namespaceArn"))
    RecoveryPoint.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    RecoveryPoint.add_member(:recovery_point_create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "recoveryPointCreateTime"))
    RecoveryPoint.add_member(:recovery_point_id, Shapes::ShapeRef.new(shape: String, location_name: "recoveryPointId"))
    RecoveryPoint.add_member(:total_size_in_mega_bytes, Shapes::ShapeRef.new(shape: Double, location_name: "totalSizeInMegaBytes"))
    RecoveryPoint.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, location_name: "workgroupName"))
    RecoveryPoint.struct_class = Types::RecoveryPoint

    RecoveryPointList.member = Shapes::ShapeRef.new(shape: RecoveryPoint)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_name, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceName"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcePolicy.add_member(:policy, Shapes::ShapeRef.new(shape: String, location_name: "policy"))
    ResourcePolicy.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "resourceArn"))
    ResourcePolicy.struct_class = Types::ResourcePolicy

    RestoreFromRecoveryPointRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location_name: "namespaceName"))
    RestoreFromRecoveryPointRequest.add_member(:recovery_point_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "recoveryPointId"))
    RestoreFromRecoveryPointRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, required: true, location_name: "workgroupName"))
    RestoreFromRecoveryPointRequest.struct_class = Types::RestoreFromRecoveryPointRequest

    RestoreFromRecoveryPointResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "namespace"))
    RestoreFromRecoveryPointResponse.add_member(:recovery_point_id, Shapes::ShapeRef.new(shape: String, location_name: "recoveryPointId"))
    RestoreFromRecoveryPointResponse.struct_class = Types::RestoreFromRecoveryPointResponse

    RestoreFromSnapshotRequest.add_member(:admin_password_secret_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "adminPasswordSecretKmsKeyId"))
    RestoreFromSnapshotRequest.add_member(:manage_admin_password, Shapes::ShapeRef.new(shape: Boolean, location_name: "manageAdminPassword"))
    RestoreFromSnapshotRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location_name: "namespaceName"))
    RestoreFromSnapshotRequest.add_member(:owner_account, Shapes::ShapeRef.new(shape: String, location_name: "ownerAccount"))
    RestoreFromSnapshotRequest.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "snapshotArn"))
    RestoreFromSnapshotRequest.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, location_name: "snapshotName"))
    RestoreFromSnapshotRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, required: true, location_name: "workgroupName"))
    RestoreFromSnapshotRequest.struct_class = Types::RestoreFromSnapshotRequest

    RestoreFromSnapshotResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "namespace"))
    RestoreFromSnapshotResponse.add_member(:owner_account, Shapes::ShapeRef.new(shape: String, location_name: "ownerAccount"))
    RestoreFromSnapshotResponse.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, location_name: "snapshotName"))
    RestoreFromSnapshotResponse.struct_class = Types::RestoreFromSnapshotResponse

    RestoreTableFromRecoveryPointRequest.add_member(:activate_case_sensitive_identifier, Shapes::ShapeRef.new(shape: Boolean, location_name: "activateCaseSensitiveIdentifier"))
    RestoreTableFromRecoveryPointRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "namespaceName"))
    RestoreTableFromRecoveryPointRequest.add_member(:new_table_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "newTableName"))
    RestoreTableFromRecoveryPointRequest.add_member(:recovery_point_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "recoveryPointId"))
    RestoreTableFromRecoveryPointRequest.add_member(:source_database_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceDatabaseName"))
    RestoreTableFromRecoveryPointRequest.add_member(:source_schema_name, Shapes::ShapeRef.new(shape: String, location_name: "sourceSchemaName"))
    RestoreTableFromRecoveryPointRequest.add_member(:source_table_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceTableName"))
    RestoreTableFromRecoveryPointRequest.add_member(:target_database_name, Shapes::ShapeRef.new(shape: String, location_name: "targetDatabaseName"))
    RestoreTableFromRecoveryPointRequest.add_member(:target_schema_name, Shapes::ShapeRef.new(shape: String, location_name: "targetSchemaName"))
    RestoreTableFromRecoveryPointRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "workgroupName"))
    RestoreTableFromRecoveryPointRequest.struct_class = Types::RestoreTableFromRecoveryPointRequest

    RestoreTableFromRecoveryPointResponse.add_member(:table_restore_status, Shapes::ShapeRef.new(shape: TableRestoreStatus, location_name: "tableRestoreStatus"))
    RestoreTableFromRecoveryPointResponse.struct_class = Types::RestoreTableFromRecoveryPointResponse

    RestoreTableFromSnapshotRequest.add_member(:activate_case_sensitive_identifier, Shapes::ShapeRef.new(shape: Boolean, location_name: "activateCaseSensitiveIdentifier"))
    RestoreTableFromSnapshotRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "namespaceName"))
    RestoreTableFromSnapshotRequest.add_member(:new_table_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "newTableName"))
    RestoreTableFromSnapshotRequest.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "snapshotName"))
    RestoreTableFromSnapshotRequest.add_member(:source_database_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceDatabaseName"))
    RestoreTableFromSnapshotRequest.add_member(:source_schema_name, Shapes::ShapeRef.new(shape: String, location_name: "sourceSchemaName"))
    RestoreTableFromSnapshotRequest.add_member(:source_table_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceTableName"))
    RestoreTableFromSnapshotRequest.add_member(:target_database_name, Shapes::ShapeRef.new(shape: String, location_name: "targetDatabaseName"))
    RestoreTableFromSnapshotRequest.add_member(:target_schema_name, Shapes::ShapeRef.new(shape: String, location_name: "targetSchemaName"))
    RestoreTableFromSnapshotRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "workgroupName"))
    RestoreTableFromSnapshotRequest.struct_class = Types::RestoreTableFromSnapshotRequest

    RestoreTableFromSnapshotResponse.add_member(:table_restore_status, Shapes::ShapeRef.new(shape: TableRestoreStatus, location_name: "tableRestoreStatus"))
    RestoreTableFromSnapshotResponse.struct_class = Types::RestoreTableFromSnapshotResponse

    Schedule.add_member(:at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "at"))
    Schedule.add_member(:cron, Shapes::ShapeRef.new(shape: String, location_name: "cron"))
    Schedule.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Schedule.add_member_subclass(:at, Types::Schedule::At)
    Schedule.add_member_subclass(:cron, Types::Schedule::Cron)
    Schedule.add_member_subclass(:unknown, Types::Schedule::Unknown)
    Schedule.struct_class = Types::Schedule

    ScheduledActionAssociation.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    ScheduledActionAssociation.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: ScheduledActionName, location_name: "scheduledActionName"))
    ScheduledActionAssociation.struct_class = Types::ScheduledActionAssociation

    ScheduledActionResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    ScheduledActionResponse.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    ScheduledActionResponse.add_member(:next_invocations, Shapes::ShapeRef.new(shape: NextInvocationsList, location_name: "nextInvocations"))
    ScheduledActionResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "roleArn"))
    ScheduledActionResponse.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    ScheduledActionResponse.add_member(:scheduled_action_description, Shapes::ShapeRef.new(shape: String, location_name: "scheduledActionDescription"))
    ScheduledActionResponse.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: ScheduledActionName, location_name: "scheduledActionName"))
    ScheduledActionResponse.add_member(:scheduled_action_uuid, Shapes::ShapeRef.new(shape: String, location_name: "scheduledActionUuid"))
    ScheduledActionResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    ScheduledActionResponse.add_member(:state, Shapes::ShapeRef.new(shape: State, location_name: "state"))
    ScheduledActionResponse.add_member(:target_action, Shapes::ShapeRef.new(shape: TargetAction, location_name: "targetAction"))
    ScheduledActionResponse.struct_class = Types::ScheduledActionResponse

    ScheduledActionsList.member = Shapes::ShapeRef.new(shape: ScheduledActionAssociation)

    SecurityGroupIdList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServerlessTrack.add_member(:track_name, Shapes::ShapeRef.new(shape: TrackName, location_name: "trackName"))
    ServerlessTrack.add_member(:update_targets, Shapes::ShapeRef.new(shape: UpdateTargetsList, location_name: "updateTargets"))
    ServerlessTrack.add_member(:workgroup_version, Shapes::ShapeRef.new(shape: String, location_name: "workgroupVersion"))
    ServerlessTrack.struct_class = Types::ServerlessTrack

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Snapshot.add_member(:accounts_with_provisioned_restore_access, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "accountsWithProvisionedRestoreAccess"))
    Snapshot.add_member(:accounts_with_restore_access, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "accountsWithRestoreAccess"))
    Snapshot.add_member(:actual_incremental_backup_size_in_mega_bytes, Shapes::ShapeRef.new(shape: Double, location_name: "actualIncrementalBackupSizeInMegaBytes"))
    Snapshot.add_member(:admin_password_secret_arn, Shapes::ShapeRef.new(shape: String, location_name: "adminPasswordSecretArn"))
    Snapshot.add_member(:admin_password_secret_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "adminPasswordSecretKmsKeyId"))
    Snapshot.add_member(:admin_username, Shapes::ShapeRef.new(shape: String, location_name: "adminUsername"))
    Snapshot.add_member(:backup_progress_in_mega_bytes, Shapes::ShapeRef.new(shape: Double, location_name: "backupProgressInMegaBytes"))
    Snapshot.add_member(:current_backup_rate_in_mega_bytes_per_second, Shapes::ShapeRef.new(shape: Double, location_name: "currentBackupRateInMegaBytesPerSecond"))
    Snapshot.add_member(:elapsed_time_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "elapsedTimeInSeconds"))
    Snapshot.add_member(:estimated_seconds_to_completion, Shapes::ShapeRef.new(shape: Long, location_name: "estimatedSecondsToCompletion"))
    Snapshot.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    Snapshot.add_member(:namespace_arn, Shapes::ShapeRef.new(shape: String, location_name: "namespaceArn"))
    Snapshot.add_member(:namespace_name, Shapes::ShapeRef.new(shape: String, location_name: "namespaceName"))
    Snapshot.add_member(:owner_account, Shapes::ShapeRef.new(shape: String, location_name: "ownerAccount"))
    Snapshot.add_member(:snapshot_arn, Shapes::ShapeRef.new(shape: String, location_name: "snapshotArn"))
    Snapshot.add_member(:snapshot_create_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "snapshotCreateTime"))
    Snapshot.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, location_name: "snapshotName"))
    Snapshot.add_member(:snapshot_remaining_days, Shapes::ShapeRef.new(shape: Integer, location_name: "snapshotRemainingDays"))
    Snapshot.add_member(:snapshot_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "snapshotRetentionPeriod"))
    Snapshot.add_member(:snapshot_retention_start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "snapshotRetentionStartTime"))
    Snapshot.add_member(:status, Shapes::ShapeRef.new(shape: SnapshotStatus, location_name: "status"))
    Snapshot.add_member(:total_backup_size_in_mega_bytes, Shapes::ShapeRef.new(shape: Double, location_name: "totalBackupSizeInMegaBytes"))
    Snapshot.struct_class = Types::Snapshot

    SnapshotCopyConfiguration.add_member(:destination_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "destinationKmsKeyId"))
    SnapshotCopyConfiguration.add_member(:destination_region, Shapes::ShapeRef.new(shape: String, location_name: "destinationRegion"))
    SnapshotCopyConfiguration.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, location_name: "namespaceName"))
    SnapshotCopyConfiguration.add_member(:snapshot_copy_configuration_arn, Shapes::ShapeRef.new(shape: String, location_name: "snapshotCopyConfigurationArn"))
    SnapshotCopyConfiguration.add_member(:snapshot_copy_configuration_id, Shapes::ShapeRef.new(shape: String, location_name: "snapshotCopyConfigurationId"))
    SnapshotCopyConfiguration.add_member(:snapshot_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "snapshotRetentionPeriod"))
    SnapshotCopyConfiguration.struct_class = Types::SnapshotCopyConfiguration

    SnapshotCopyConfigurations.member = Shapes::ShapeRef.new(shape: SnapshotCopyConfiguration)

    SnapshotList.member = Shapes::ShapeRef.new(shape: Snapshot)

    SubnetIdList.member = Shapes::ShapeRef.new(shape: SubnetId)

    TableRestoreStatus.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TableRestoreStatus.add_member(:namespace_name, Shapes::ShapeRef.new(shape: String, location_name: "namespaceName"))
    TableRestoreStatus.add_member(:new_table_name, Shapes::ShapeRef.new(shape: String, location_name: "newTableName"))
    TableRestoreStatus.add_member(:progress_in_mega_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "progressInMegaBytes"))
    TableRestoreStatus.add_member(:recovery_point_id, Shapes::ShapeRef.new(shape: String, location_name: "recoveryPointId"))
    TableRestoreStatus.add_member(:request_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "requestTime"))
    TableRestoreStatus.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, location_name: "snapshotName"))
    TableRestoreStatus.add_member(:source_database_name, Shapes::ShapeRef.new(shape: String, location_name: "sourceDatabaseName"))
    TableRestoreStatus.add_member(:source_schema_name, Shapes::ShapeRef.new(shape: String, location_name: "sourceSchemaName"))
    TableRestoreStatus.add_member(:source_table_name, Shapes::ShapeRef.new(shape: String, location_name: "sourceTableName"))
    TableRestoreStatus.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    TableRestoreStatus.add_member(:table_restore_request_id, Shapes::ShapeRef.new(shape: String, location_name: "tableRestoreRequestId"))
    TableRestoreStatus.add_member(:target_database_name, Shapes::ShapeRef.new(shape: String, location_name: "targetDatabaseName"))
    TableRestoreStatus.add_member(:target_schema_name, Shapes::ShapeRef.new(shape: String, location_name: "targetSchemaName"))
    TableRestoreStatus.add_member(:total_data_in_mega_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "totalDataInMegaBytes"))
    TableRestoreStatus.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: String, location_name: "workgroupName"))
    TableRestoreStatus.struct_class = Types::TableRestoreStatus

    TableRestoreStatusList.member = Shapes::ShapeRef.new(shape: TableRestoreStatus)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TargetAction.add_member(:create_snapshot, Shapes::ShapeRef.new(shape: CreateSnapshotScheduleActionParameters, location_name: "createSnapshot"))
    TargetAction.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TargetAction.add_member_subclass(:create_snapshot, Types::TargetAction::CreateSnapshot)
    TargetAction.add_member_subclass(:unknown, Types::TargetAction::Unknown)
    TargetAction.struct_class = Types::TargetAction

    ThrottlingException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TooManyTagsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "resourceName"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    TrackList.member = Shapes::ShapeRef.new(shape: ServerlessTrack)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateCustomDomainAssociationRequest.add_member(:custom_domain_certificate_arn, Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, required: true, location_name: "customDomainCertificateArn"))
    UpdateCustomDomainAssociationRequest.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CustomDomainName, required: true, location_name: "customDomainName"))
    UpdateCustomDomainAssociationRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, required: true, location_name: "workgroupName"))
    UpdateCustomDomainAssociationRequest.struct_class = Types::UpdateCustomDomainAssociationRequest

    UpdateCustomDomainAssociationResponse.add_member(:custom_domain_certificate_arn, Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: "customDomainCertificateArn"))
    UpdateCustomDomainAssociationResponse.add_member(:custom_domain_certificate_expiry_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "customDomainCertificateExpiryTime"))
    UpdateCustomDomainAssociationResponse.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CustomDomainName, location_name: "customDomainName"))
    UpdateCustomDomainAssociationResponse.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, location_name: "workgroupName"))
    UpdateCustomDomainAssociationResponse.struct_class = Types::UpdateCustomDomainAssociationResponse

    UpdateEndpointAccessRequest.add_member(:endpoint_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "endpointName"))
    UpdateEndpointAccessRequest.add_member(:vpc_security_group_ids, Shapes::ShapeRef.new(shape: VpcSecurityGroupIdList, location_name: "vpcSecurityGroupIds"))
    UpdateEndpointAccessRequest.struct_class = Types::UpdateEndpointAccessRequest

    UpdateEndpointAccessResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: EndpointAccess, location_name: "endpoint"))
    UpdateEndpointAccessResponse.struct_class = Types::UpdateEndpointAccessResponse

    UpdateNamespaceRequest.add_member(:admin_password_secret_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "adminPasswordSecretKmsKeyId"))
    UpdateNamespaceRequest.add_member(:admin_user_password, Shapes::ShapeRef.new(shape: DbPassword, location_name: "adminUserPassword"))
    UpdateNamespaceRequest.add_member(:admin_username, Shapes::ShapeRef.new(shape: DbUser, location_name: "adminUsername"))
    UpdateNamespaceRequest.add_member(:default_iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "defaultIamRoleArn"))
    UpdateNamespaceRequest.add_member(:iam_roles, Shapes::ShapeRef.new(shape: IamRoleArnList, location_name: "iamRoles"))
    UpdateNamespaceRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    UpdateNamespaceRequest.add_member(:log_exports, Shapes::ShapeRef.new(shape: LogExportList, location_name: "logExports"))
    UpdateNamespaceRequest.add_member(:manage_admin_password, Shapes::ShapeRef.new(shape: Boolean, location_name: "manageAdminPassword"))
    UpdateNamespaceRequest.add_member(:namespace_name, Shapes::ShapeRef.new(shape: NamespaceName, required: true, location_name: "namespaceName"))
    UpdateNamespaceRequest.struct_class = Types::UpdateNamespaceRequest

    UpdateNamespaceResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "namespace"))
    UpdateNamespaceResponse.struct_class = Types::UpdateNamespaceResponse

    UpdateScheduledActionRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "enabled"))
    UpdateScheduledActionRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    UpdateScheduledActionRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "roleArn"))
    UpdateScheduledActionRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    UpdateScheduledActionRequest.add_member(:scheduled_action_description, Shapes::ShapeRef.new(shape: String, location_name: "scheduledActionDescription"))
    UpdateScheduledActionRequest.add_member(:scheduled_action_name, Shapes::ShapeRef.new(shape: ScheduledActionName, required: true, location_name: "scheduledActionName"))
    UpdateScheduledActionRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    UpdateScheduledActionRequest.add_member(:target_action, Shapes::ShapeRef.new(shape: TargetAction, location_name: "targetAction"))
    UpdateScheduledActionRequest.struct_class = Types::UpdateScheduledActionRequest

    UpdateScheduledActionResponse.add_member(:scheduled_action, Shapes::ShapeRef.new(shape: ScheduledActionResponse, location_name: "scheduledAction"))
    UpdateScheduledActionResponse.struct_class = Types::UpdateScheduledActionResponse

    UpdateSnapshotCopyConfigurationRequest.add_member(:snapshot_copy_configuration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "snapshotCopyConfigurationId"))
    UpdateSnapshotCopyConfigurationRequest.add_member(:snapshot_retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "snapshotRetentionPeriod"))
    UpdateSnapshotCopyConfigurationRequest.struct_class = Types::UpdateSnapshotCopyConfigurationRequest

    UpdateSnapshotCopyConfigurationResponse.add_member(:snapshot_copy_configuration, Shapes::ShapeRef.new(shape: SnapshotCopyConfiguration, required: true, location_name: "snapshotCopyConfiguration"))
    UpdateSnapshotCopyConfigurationResponse.struct_class = Types::UpdateSnapshotCopyConfigurationResponse

    UpdateSnapshotRequest.add_member(:retention_period, Shapes::ShapeRef.new(shape: Integer, location_name: "retentionPeriod"))
    UpdateSnapshotRequest.add_member(:snapshot_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "snapshotName"))
    UpdateSnapshotRequest.struct_class = Types::UpdateSnapshotRequest

    UpdateSnapshotResponse.add_member(:snapshot, Shapes::ShapeRef.new(shape: Snapshot, location_name: "snapshot"))
    UpdateSnapshotResponse.struct_class = Types::UpdateSnapshotResponse

    UpdateTarget.add_member(:track_name, Shapes::ShapeRef.new(shape: TrackName, location_name: "trackName"))
    UpdateTarget.add_member(:workgroup_version, Shapes::ShapeRef.new(shape: String, location_name: "workgroupVersion"))
    UpdateTarget.struct_class = Types::UpdateTarget

    UpdateTargetsList.member = Shapes::ShapeRef.new(shape: UpdateTarget)

    UpdateUsageLimitRequest.add_member(:amount, Shapes::ShapeRef.new(shape: Long, location_name: "amount"))
    UpdateUsageLimitRequest.add_member(:breach_action, Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: "breachAction"))
    UpdateUsageLimitRequest.add_member(:usage_limit_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "usageLimitId"))
    UpdateUsageLimitRequest.struct_class = Types::UpdateUsageLimitRequest

    UpdateUsageLimitResponse.add_member(:usage_limit, Shapes::ShapeRef.new(shape: UsageLimit, location_name: "usageLimit"))
    UpdateUsageLimitResponse.struct_class = Types::UpdateUsageLimitResponse

    UpdateWorkgroupRequest.add_member(:base_capacity, Shapes::ShapeRef.new(shape: Integer, location_name: "baseCapacity"))
    UpdateWorkgroupRequest.add_member(:config_parameters, Shapes::ShapeRef.new(shape: ConfigParameterList, location_name: "configParameters"))
    UpdateWorkgroupRequest.add_member(:enhanced_vpc_routing, Shapes::ShapeRef.new(shape: Boolean, location_name: "enhancedVpcRouting"))
    UpdateWorkgroupRequest.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    UpdateWorkgroupRequest.add_member(:max_capacity, Shapes::ShapeRef.new(shape: Integer, location_name: "maxCapacity"))
    UpdateWorkgroupRequest.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "port"))
    UpdateWorkgroupRequest.add_member(:price_performance_target, Shapes::ShapeRef.new(shape: PerformanceTarget, location_name: "pricePerformanceTarget"))
    UpdateWorkgroupRequest.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "publiclyAccessible"))
    UpdateWorkgroupRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    UpdateWorkgroupRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "subnetIds"))
    UpdateWorkgroupRequest.add_member(:track_name, Shapes::ShapeRef.new(shape: TrackName, location_name: "trackName"))
    UpdateWorkgroupRequest.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, required: true, location_name: "workgroupName"))
    UpdateWorkgroupRequest.struct_class = Types::UpdateWorkgroupRequest

    UpdateWorkgroupResponse.add_member(:workgroup, Shapes::ShapeRef.new(shape: Workgroup, required: true, location_name: "workgroup"))
    UpdateWorkgroupResponse.struct_class = Types::UpdateWorkgroupResponse

    UsageLimit.add_member(:amount, Shapes::ShapeRef.new(shape: Long, location_name: "amount"))
    UsageLimit.add_member(:breach_action, Shapes::ShapeRef.new(shape: UsageLimitBreachAction, location_name: "breachAction"))
    UsageLimit.add_member(:period, Shapes::ShapeRef.new(shape: UsageLimitPeriod, location_name: "period"))
    UsageLimit.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "resourceArn"))
    UsageLimit.add_member(:usage_limit_arn, Shapes::ShapeRef.new(shape: String, location_name: "usageLimitArn"))
    UsageLimit.add_member(:usage_limit_id, Shapes::ShapeRef.new(shape: String, location_name: "usageLimitId"))
    UsageLimit.add_member(:usage_type, Shapes::ShapeRef.new(shape: UsageLimitUsageType, location_name: "usageType"))
    UsageLimit.struct_class = Types::UsageLimit

    UsageLimits.member = Shapes::ShapeRef.new(shape: UsageLimit)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    VpcEndpoint.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: "networkInterfaces"))
    VpcEndpoint.add_member(:vpc_endpoint_id, Shapes::ShapeRef.new(shape: String, location_name: "vpcEndpointId"))
    VpcEndpoint.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "vpcId"))
    VpcEndpoint.struct_class = Types::VpcEndpoint

    VpcEndpointList.member = Shapes::ShapeRef.new(shape: VpcEndpoint)

    VpcIds.member = Shapes::ShapeRef.new(shape: String)

    VpcSecurityGroupIdList.member = Shapes::ShapeRef.new(shape: VpcSecurityGroupId)

    VpcSecurityGroupMembership.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "status"))
    VpcSecurityGroupMembership.add_member(:vpc_security_group_id, Shapes::ShapeRef.new(shape: VpcSecurityGroupId, location_name: "vpcSecurityGroupId"))
    VpcSecurityGroupMembership.struct_class = Types::VpcSecurityGroupMembership

    VpcSecurityGroupMembershipList.member = Shapes::ShapeRef.new(shape: VpcSecurityGroupMembership)

    Workgroup.add_member(:base_capacity, Shapes::ShapeRef.new(shape: Integer, location_name: "baseCapacity"))
    Workgroup.add_member(:config_parameters, Shapes::ShapeRef.new(shape: ConfigParameterList, location_name: "configParameters"))
    Workgroup.add_member(:creation_date, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "creationDate"))
    Workgroup.add_member(:cross_account_vpcs, Shapes::ShapeRef.new(shape: VpcIds, location_name: "crossAccountVpcs"))
    Workgroup.add_member(:custom_domain_certificate_arn, Shapes::ShapeRef.new(shape: CustomDomainCertificateArnString, location_name: "customDomainCertificateArn"))
    Workgroup.add_member(:custom_domain_certificate_expiry_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "customDomainCertificateExpiryTime"))
    Workgroup.add_member(:custom_domain_name, Shapes::ShapeRef.new(shape: CustomDomainName, location_name: "customDomainName"))
    Workgroup.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "endpoint"))
    Workgroup.add_member(:enhanced_vpc_routing, Shapes::ShapeRef.new(shape: Boolean, location_name: "enhancedVpcRouting"))
    Workgroup.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    Workgroup.add_member(:max_capacity, Shapes::ShapeRef.new(shape: Integer, location_name: "maxCapacity"))
    Workgroup.add_member(:namespace_name, Shapes::ShapeRef.new(shape: String, location_name: "namespaceName"))
    Workgroup.add_member(:patch_version, Shapes::ShapeRef.new(shape: String, location_name: "patchVersion"))
    Workgroup.add_member(:pending_track_name, Shapes::ShapeRef.new(shape: TrackName, location_name: "pendingTrackName"))
    Workgroup.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "port"))
    Workgroup.add_member(:price_performance_target, Shapes::ShapeRef.new(shape: PerformanceTarget, location_name: "pricePerformanceTarget"))
    Workgroup.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: Boolean, location_name: "publiclyAccessible"))
    Workgroup.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "securityGroupIds"))
    Workgroup.add_member(:status, Shapes::ShapeRef.new(shape: WorkgroupStatus, location_name: "status"))
    Workgroup.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "subnetIds"))
    Workgroup.add_member(:track_name, Shapes::ShapeRef.new(shape: TrackName, location_name: "trackName"))
    Workgroup.add_member(:workgroup_arn, Shapes::ShapeRef.new(shape: String, location_name: "workgroupArn"))
    Workgroup.add_member(:workgroup_id, Shapes::ShapeRef.new(shape: String, location_name: "workgroupId"))
    Workgroup.add_member(:workgroup_name, Shapes::ShapeRef.new(shape: WorkgroupName, location_name: "workgroupName"))
    Workgroup.add_member(:workgroup_version, Shapes::ShapeRef.new(shape: String, location_name: "workgroupVersion"))
    Workgroup.struct_class = Types::Workgroup

    WorkgroupList.member = Shapes::ShapeRef.new(shape: Workgroup)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-04-21"

      api.metadata = {
        "apiVersion" => "2021-04-21",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "redshift-serverless",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Redshift Serverless",
        "serviceId" => "Redshift Serverless",
        "signatureVersion" => "v4",
        "signingName" => "redshift-serverless",
        "targetPrefix" => "RedshiftServerless",
        "uid" => "redshift-serverless-2021-04-21",
      }

      api.add_operation(:convert_recovery_point_to_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ConvertRecoveryPointToSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ConvertRecoveryPointToSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: ConvertRecoveryPointToSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_custom_domain_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomDomainAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomDomainAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomDomainAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_endpoint_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEndpointAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEndpointAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEndpointAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNamespace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:create_scheduled_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScheduledAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateScheduledActionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateScheduledActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_snapshot_copy_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSnapshotCopyConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateSnapshotCopyConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSnapshotCopyConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_usage_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUsageLimit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUsageLimitRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUsageLimitResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_workgroup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkgroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkgroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkgroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCapacityException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: Ipv6CidrBlockNotFoundException)
      end)

      api.add_operation(:delete_custom_domain_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomDomainAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomDomainAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCustomDomainAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_endpoint_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEndpointAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEndpointAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEndpointAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNamespace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_scheduled_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScheduledAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteScheduledActionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteScheduledActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_snapshot_copy_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSnapshotCopyConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSnapshotCopyConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSnapshotCopyConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_usage_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUsageLimit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUsageLimitRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUsageLimitResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_workgroup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkgroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkgroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkgroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCredentialsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCredentialsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_custom_domain_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCustomDomainAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCustomDomainAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCustomDomainAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_endpoint_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEndpointAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEndpointAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEndpointAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetNamespace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_recovery_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecoveryPoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRecoveryPointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRecoveryPointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_scheduled_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetScheduledAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetScheduledActionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetScheduledActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_table_restore_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTableRestoreStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTableRestoreStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTableRestoreStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_track, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTrack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTrackRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTrackResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_usage_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUsageLimit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetUsageLimitRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUsageLimitResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_workgroup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkgroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetWorkgroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkgroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_custom_domain_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomDomainAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCustomDomainAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomDomainAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_endpoint_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEndpointAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEndpointAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEndpointAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_workgroups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedWorkgroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListManagedWorkgroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedWorkgroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recovery_points, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecoveryPoints"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRecoveryPointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecoveryPointsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_scheduled_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListScheduledActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListScheduledActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListScheduledActionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_snapshot_copy_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSnapshotCopyConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSnapshotCopyConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSnapshotCopyConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSnapshotsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSnapshotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_table_restore_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTableRestoreStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTableRestoreStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTableRestoreStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_tracks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTracks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTracksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTracksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_usage_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsageLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListUsageLimitsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsageLimitsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workgroups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkgroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListWorkgroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkgroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:restore_from_recovery_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreFromRecoveryPoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreFromRecoveryPointRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreFromRecoveryPointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:restore_from_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreFromSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreFromSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreFromSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:restore_table_from_recovery_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreTableFromRecoveryPoint"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreTableFromRecoveryPointRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreTableFromRecoveryPointResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:restore_table_from_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreTableFromSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreTableFromSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreTableFromSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_custom_domain_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCustomDomainAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCustomDomainAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCustomDomainAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_endpoint_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEndpointAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEndpointAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEndpointAccessResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateNamespace"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_scheduled_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateScheduledAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateScheduledActionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateScheduledActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_snapshot_copy_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSnapshotCopyConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateSnapshotCopyConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSnapshotCopyConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_usage_limit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUsageLimit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateUsageLimitRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUsageLimitResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_workgroup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkgroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkgroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkgroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientCapacityException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: Ipv6CidrBlockNotFoundException)
      end)
    end

  end
end
