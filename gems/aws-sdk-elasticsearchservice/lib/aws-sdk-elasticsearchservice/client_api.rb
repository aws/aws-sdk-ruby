# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElasticsearchService
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AcceptInboundCrossClusterSearchConnectionRequest = Shapes::StructureShape.new(name: 'AcceptInboundCrossClusterSearchConnectionRequest')
    AcceptInboundCrossClusterSearchConnectionResponse = Shapes::StructureShape.new(name: 'AcceptInboundCrossClusterSearchConnectionResponse')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessPoliciesStatus = Shapes::StructureShape.new(name: 'AccessPoliciesStatus')
    AddTagsRequest = Shapes::StructureShape.new(name: 'AddTagsRequest')
    AdditionalLimit = Shapes::StructureShape.new(name: 'AdditionalLimit')
    AdditionalLimitList = Shapes::ListShape.new(name: 'AdditionalLimitList')
    AdvancedOptions = Shapes::MapShape.new(name: 'AdvancedOptions')
    AdvancedOptionsStatus = Shapes::StructureShape.new(name: 'AdvancedOptionsStatus')
    AdvancedSecurityOptions = Shapes::StructureShape.new(name: 'AdvancedSecurityOptions')
    AdvancedSecurityOptionsInput = Shapes::StructureShape.new(name: 'AdvancedSecurityOptionsInput')
    AdvancedSecurityOptionsStatus = Shapes::StructureShape.new(name: 'AdvancedSecurityOptionsStatus')
    AssociatePackageRequest = Shapes::StructureShape.new(name: 'AssociatePackageRequest')
    AssociatePackageResponse = Shapes::StructureShape.new(name: 'AssociatePackageResponse')
    BaseException = Shapes::StructureShape.new(name: 'BaseException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelElasticsearchServiceSoftwareUpdateRequest = Shapes::StructureShape.new(name: 'CancelElasticsearchServiceSoftwareUpdateRequest')
    CancelElasticsearchServiceSoftwareUpdateResponse = Shapes::StructureShape.new(name: 'CancelElasticsearchServiceSoftwareUpdateResponse')
    CloudWatchLogsLogGroupArn = Shapes::StringShape.new(name: 'CloudWatchLogsLogGroupArn')
    CognitoOptions = Shapes::StructureShape.new(name: 'CognitoOptions')
    CognitoOptionsStatus = Shapes::StructureShape.new(name: 'CognitoOptionsStatus')
    CompatibleElasticsearchVersionsList = Shapes::ListShape.new(name: 'CompatibleElasticsearchVersionsList')
    CompatibleVersionsMap = Shapes::StructureShape.new(name: 'CompatibleVersionsMap')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionAlias = Shapes::StringShape.new(name: 'ConnectionAlias')
    CreateElasticsearchDomainRequest = Shapes::StructureShape.new(name: 'CreateElasticsearchDomainRequest')
    CreateElasticsearchDomainResponse = Shapes::StructureShape.new(name: 'CreateElasticsearchDomainResponse')
    CreateOutboundCrossClusterSearchConnectionRequest = Shapes::StructureShape.new(name: 'CreateOutboundCrossClusterSearchConnectionRequest')
    CreateOutboundCrossClusterSearchConnectionResponse = Shapes::StructureShape.new(name: 'CreateOutboundCrossClusterSearchConnectionResponse')
    CreatePackageRequest = Shapes::StructureShape.new(name: 'CreatePackageRequest')
    CreatePackageResponse = Shapes::StructureShape.new(name: 'CreatePackageResponse')
    CreatedAt = Shapes::TimestampShape.new(name: 'CreatedAt')
    CrossClusterSearchConnectionId = Shapes::StringShape.new(name: 'CrossClusterSearchConnectionId')
    CrossClusterSearchConnectionStatusMessage = Shapes::StringShape.new(name: 'CrossClusterSearchConnectionStatusMessage')
    DeleteElasticsearchDomainRequest = Shapes::StructureShape.new(name: 'DeleteElasticsearchDomainRequest')
    DeleteElasticsearchDomainResponse = Shapes::StructureShape.new(name: 'DeleteElasticsearchDomainResponse')
    DeleteInboundCrossClusterSearchConnectionRequest = Shapes::StructureShape.new(name: 'DeleteInboundCrossClusterSearchConnectionRequest')
    DeleteInboundCrossClusterSearchConnectionResponse = Shapes::StructureShape.new(name: 'DeleteInboundCrossClusterSearchConnectionResponse')
    DeleteOutboundCrossClusterSearchConnectionRequest = Shapes::StructureShape.new(name: 'DeleteOutboundCrossClusterSearchConnectionRequest')
    DeleteOutboundCrossClusterSearchConnectionResponse = Shapes::StructureShape.new(name: 'DeleteOutboundCrossClusterSearchConnectionResponse')
    DeletePackageRequest = Shapes::StructureShape.new(name: 'DeletePackageRequest')
    DeletePackageResponse = Shapes::StructureShape.new(name: 'DeletePackageResponse')
    DeploymentCloseDateTimeStamp = Shapes::TimestampShape.new(name: 'DeploymentCloseDateTimeStamp')
    DeploymentStatus = Shapes::StringShape.new(name: 'DeploymentStatus')
    DescribeElasticsearchDomainConfigRequest = Shapes::StructureShape.new(name: 'DescribeElasticsearchDomainConfigRequest')
    DescribeElasticsearchDomainConfigResponse = Shapes::StructureShape.new(name: 'DescribeElasticsearchDomainConfigResponse')
    DescribeElasticsearchDomainRequest = Shapes::StructureShape.new(name: 'DescribeElasticsearchDomainRequest')
    DescribeElasticsearchDomainResponse = Shapes::StructureShape.new(name: 'DescribeElasticsearchDomainResponse')
    DescribeElasticsearchDomainsRequest = Shapes::StructureShape.new(name: 'DescribeElasticsearchDomainsRequest')
    DescribeElasticsearchDomainsResponse = Shapes::StructureShape.new(name: 'DescribeElasticsearchDomainsResponse')
    DescribeElasticsearchInstanceTypeLimitsRequest = Shapes::StructureShape.new(name: 'DescribeElasticsearchInstanceTypeLimitsRequest')
    DescribeElasticsearchInstanceTypeLimitsResponse = Shapes::StructureShape.new(name: 'DescribeElasticsearchInstanceTypeLimitsResponse')
    DescribeInboundCrossClusterSearchConnectionsRequest = Shapes::StructureShape.new(name: 'DescribeInboundCrossClusterSearchConnectionsRequest')
    DescribeInboundCrossClusterSearchConnectionsResponse = Shapes::StructureShape.new(name: 'DescribeInboundCrossClusterSearchConnectionsResponse')
    DescribeOutboundCrossClusterSearchConnectionsRequest = Shapes::StructureShape.new(name: 'DescribeOutboundCrossClusterSearchConnectionsRequest')
    DescribeOutboundCrossClusterSearchConnectionsResponse = Shapes::StructureShape.new(name: 'DescribeOutboundCrossClusterSearchConnectionsResponse')
    DescribePackagesFilter = Shapes::StructureShape.new(name: 'DescribePackagesFilter')
    DescribePackagesFilterList = Shapes::ListShape.new(name: 'DescribePackagesFilterList')
    DescribePackagesFilterName = Shapes::StringShape.new(name: 'DescribePackagesFilterName')
    DescribePackagesFilterValue = Shapes::StringShape.new(name: 'DescribePackagesFilterValue')
    DescribePackagesFilterValues = Shapes::ListShape.new(name: 'DescribePackagesFilterValues')
    DescribePackagesRequest = Shapes::StructureShape.new(name: 'DescribePackagesRequest')
    DescribePackagesResponse = Shapes::StructureShape.new(name: 'DescribePackagesResponse')
    DescribeReservedElasticsearchInstanceOfferingsRequest = Shapes::StructureShape.new(name: 'DescribeReservedElasticsearchInstanceOfferingsRequest')
    DescribeReservedElasticsearchInstanceOfferingsResponse = Shapes::StructureShape.new(name: 'DescribeReservedElasticsearchInstanceOfferingsResponse')
    DescribeReservedElasticsearchInstancesRequest = Shapes::StructureShape.new(name: 'DescribeReservedElasticsearchInstancesRequest')
    DescribeReservedElasticsearchInstancesResponse = Shapes::StructureShape.new(name: 'DescribeReservedElasticsearchInstancesResponse')
    DisabledOperationException = Shapes::StructureShape.new(name: 'DisabledOperationException')
    DissociatePackageRequest = Shapes::StructureShape.new(name: 'DissociatePackageRequest')
    DissociatePackageResponse = Shapes::StructureShape.new(name: 'DissociatePackageResponse')
    DomainEndpointOptions = Shapes::StructureShape.new(name: 'DomainEndpointOptions')
    DomainEndpointOptionsStatus = Shapes::StructureShape.new(name: 'DomainEndpointOptionsStatus')
    DomainId = Shapes::StringShape.new(name: 'DomainId')
    DomainInfo = Shapes::StructureShape.new(name: 'DomainInfo')
    DomainInfoList = Shapes::ListShape.new(name: 'DomainInfoList')
    DomainInformation = Shapes::StructureShape.new(name: 'DomainInformation')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainNameList = Shapes::ListShape.new(name: 'DomainNameList')
    DomainPackageDetails = Shapes::StructureShape.new(name: 'DomainPackageDetails')
    DomainPackageDetailsList = Shapes::ListShape.new(name: 'DomainPackageDetailsList')
    DomainPackageStatus = Shapes::StringShape.new(name: 'DomainPackageStatus')
    Double = Shapes::FloatShape.new(name: 'Double')
    EBSOptions = Shapes::StructureShape.new(name: 'EBSOptions')
    EBSOptionsStatus = Shapes::StructureShape.new(name: 'EBSOptionsStatus')
    ESPartitionInstanceType = Shapes::StringShape.new(name: 'ESPartitionInstanceType')
    ESWarmPartitionInstanceType = Shapes::StringShape.new(name: 'ESWarmPartitionInstanceType')
    ElasticsearchClusterConfig = Shapes::StructureShape.new(name: 'ElasticsearchClusterConfig')
    ElasticsearchClusterConfigStatus = Shapes::StructureShape.new(name: 'ElasticsearchClusterConfigStatus')
    ElasticsearchDomainConfig = Shapes::StructureShape.new(name: 'ElasticsearchDomainConfig')
    ElasticsearchDomainStatus = Shapes::StructureShape.new(name: 'ElasticsearchDomainStatus')
    ElasticsearchDomainStatusList = Shapes::ListShape.new(name: 'ElasticsearchDomainStatusList')
    ElasticsearchInstanceTypeList = Shapes::ListShape.new(name: 'ElasticsearchInstanceTypeList')
    ElasticsearchVersionList = Shapes::ListShape.new(name: 'ElasticsearchVersionList')
    ElasticsearchVersionStatus = Shapes::StructureShape.new(name: 'ElasticsearchVersionStatus')
    ElasticsearchVersionString = Shapes::StringShape.new(name: 'ElasticsearchVersionString')
    EncryptionAtRestOptions = Shapes::StructureShape.new(name: 'EncryptionAtRestOptions')
    EncryptionAtRestOptionsStatus = Shapes::StructureShape.new(name: 'EncryptionAtRestOptionsStatus')
    EndpointsMap = Shapes::MapShape.new(name: 'EndpointsMap')
    ErrorDetails = Shapes::StructureShape.new(name: 'ErrorDetails')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ErrorType = Shapes::StringShape.new(name: 'ErrorType')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    GUID = Shapes::StringShape.new(name: 'GUID')
    GetCompatibleElasticsearchVersionsRequest = Shapes::StructureShape.new(name: 'GetCompatibleElasticsearchVersionsRequest')
    GetCompatibleElasticsearchVersionsResponse = Shapes::StructureShape.new(name: 'GetCompatibleElasticsearchVersionsResponse')
    GetUpgradeHistoryRequest = Shapes::StructureShape.new(name: 'GetUpgradeHistoryRequest')
    GetUpgradeHistoryResponse = Shapes::StructureShape.new(name: 'GetUpgradeHistoryResponse')
    GetUpgradeStatusRequest = Shapes::StructureShape.new(name: 'GetUpgradeStatusRequest')
    GetUpgradeStatusResponse = Shapes::StructureShape.new(name: 'GetUpgradeStatusResponse')
    IdentityPoolId = Shapes::StringShape.new(name: 'IdentityPoolId')
    InboundCrossClusterSearchConnection = Shapes::StructureShape.new(name: 'InboundCrossClusterSearchConnection')
    InboundCrossClusterSearchConnectionStatus = Shapes::StructureShape.new(name: 'InboundCrossClusterSearchConnectionStatus')
    InboundCrossClusterSearchConnectionStatusCode = Shapes::StringShape.new(name: 'InboundCrossClusterSearchConnectionStatusCode')
    InboundCrossClusterSearchConnections = Shapes::ListShape.new(name: 'InboundCrossClusterSearchConnections')
    InstanceCount = Shapes::IntegerShape.new(name: 'InstanceCount')
    InstanceCountLimits = Shapes::StructureShape.new(name: 'InstanceCountLimits')
    InstanceLimits = Shapes::StructureShape.new(name: 'InstanceLimits')
    InstanceRole = Shapes::StringShape.new(name: 'InstanceRole')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerClass = Shapes::IntegerShape.new(name: 'IntegerClass')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InvalidPaginationTokenException = Shapes::StructureShape.new(name: 'InvalidPaginationTokenException')
    InvalidTypeException = Shapes::StructureShape.new(name: 'InvalidTypeException')
    Issue = Shapes::StringShape.new(name: 'Issue')
    Issues = Shapes::ListShape.new(name: 'Issues')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LastUpdated = Shapes::TimestampShape.new(name: 'LastUpdated')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LimitName = Shapes::StringShape.new(name: 'LimitName')
    LimitValue = Shapes::StringShape.new(name: 'LimitValue')
    LimitValueList = Shapes::ListShape.new(name: 'LimitValueList')
    Limits = Shapes::StructureShape.new(name: 'Limits')
    LimitsByRole = Shapes::MapShape.new(name: 'LimitsByRole')
    ListDomainNamesResponse = Shapes::StructureShape.new(name: 'ListDomainNamesResponse')
    ListDomainsForPackageRequest = Shapes::StructureShape.new(name: 'ListDomainsForPackageRequest')
    ListDomainsForPackageResponse = Shapes::StructureShape.new(name: 'ListDomainsForPackageResponse')
    ListElasticsearchInstanceTypesRequest = Shapes::StructureShape.new(name: 'ListElasticsearchInstanceTypesRequest')
    ListElasticsearchInstanceTypesResponse = Shapes::StructureShape.new(name: 'ListElasticsearchInstanceTypesResponse')
    ListElasticsearchVersionsRequest = Shapes::StructureShape.new(name: 'ListElasticsearchVersionsRequest')
    ListElasticsearchVersionsResponse = Shapes::StructureShape.new(name: 'ListElasticsearchVersionsResponse')
    ListPackagesForDomainRequest = Shapes::StructureShape.new(name: 'ListPackagesForDomainRequest')
    ListPackagesForDomainResponse = Shapes::StructureShape.new(name: 'ListPackagesForDomainResponse')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    LogPublishingOption = Shapes::StructureShape.new(name: 'LogPublishingOption')
    LogPublishingOptions = Shapes::MapShape.new(name: 'LogPublishingOptions')
    LogPublishingOptionsStatus = Shapes::StructureShape.new(name: 'LogPublishingOptionsStatus')
    LogType = Shapes::StringShape.new(name: 'LogType')
    MasterUserOptions = Shapes::StructureShape.new(name: 'MasterUserOptions')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumInstanceCount = Shapes::IntegerShape.new(name: 'MaximumInstanceCount')
    MinimumInstanceCount = Shapes::IntegerShape.new(name: 'MinimumInstanceCount')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NodeToNodeEncryptionOptions = Shapes::StructureShape.new(name: 'NodeToNodeEncryptionOptions')
    NodeToNodeEncryptionOptionsStatus = Shapes::StructureShape.new(name: 'NodeToNodeEncryptionOptionsStatus')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    OptionState = Shapes::StringShape.new(name: 'OptionState')
    OptionStatus = Shapes::StructureShape.new(name: 'OptionStatus')
    OutboundCrossClusterSearchConnection = Shapes::StructureShape.new(name: 'OutboundCrossClusterSearchConnection')
    OutboundCrossClusterSearchConnectionStatus = Shapes::StructureShape.new(name: 'OutboundCrossClusterSearchConnectionStatus')
    OutboundCrossClusterSearchConnectionStatusCode = Shapes::StringShape.new(name: 'OutboundCrossClusterSearchConnectionStatusCode')
    OutboundCrossClusterSearchConnections = Shapes::ListShape.new(name: 'OutboundCrossClusterSearchConnections')
    OwnerId = Shapes::StringShape.new(name: 'OwnerId')
    PackageDescription = Shapes::StringShape.new(name: 'PackageDescription')
    PackageDetails = Shapes::StructureShape.new(name: 'PackageDetails')
    PackageDetailsList = Shapes::ListShape.new(name: 'PackageDetailsList')
    PackageID = Shapes::StringShape.new(name: 'PackageID')
    PackageName = Shapes::StringShape.new(name: 'PackageName')
    PackageSource = Shapes::StructureShape.new(name: 'PackageSource')
    PackageStatus = Shapes::StringShape.new(name: 'PackageStatus')
    PackageType = Shapes::StringShape.new(name: 'PackageType')
    Password = Shapes::StringShape.new(name: 'Password')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PurchaseReservedElasticsearchInstanceOfferingRequest = Shapes::StructureShape.new(name: 'PurchaseReservedElasticsearchInstanceOfferingRequest')
    PurchaseReservedElasticsearchInstanceOfferingResponse = Shapes::StructureShape.new(name: 'PurchaseReservedElasticsearchInstanceOfferingResponse')
    RecurringCharge = Shapes::StructureShape.new(name: 'RecurringCharge')
    RecurringChargeList = Shapes::ListShape.new(name: 'RecurringChargeList')
    ReferencePath = Shapes::StringShape.new(name: 'ReferencePath')
    Region = Shapes::StringShape.new(name: 'Region')
    RejectInboundCrossClusterSearchConnectionRequest = Shapes::StructureShape.new(name: 'RejectInboundCrossClusterSearchConnectionRequest')
    RejectInboundCrossClusterSearchConnectionResponse = Shapes::StructureShape.new(name: 'RejectInboundCrossClusterSearchConnectionResponse')
    RemoveTagsRequest = Shapes::StructureShape.new(name: 'RemoveTagsRequest')
    ReservationToken = Shapes::StringShape.new(name: 'ReservationToken')
    ReservedElasticsearchInstance = Shapes::StructureShape.new(name: 'ReservedElasticsearchInstance')
    ReservedElasticsearchInstanceList = Shapes::ListShape.new(name: 'ReservedElasticsearchInstanceList')
    ReservedElasticsearchInstanceOffering = Shapes::StructureShape.new(name: 'ReservedElasticsearchInstanceOffering')
    ReservedElasticsearchInstanceOfferingList = Shapes::ListShape.new(name: 'ReservedElasticsearchInstanceOfferingList')
    ReservedElasticsearchInstancePaymentOption = Shapes::StringShape.new(name: 'ReservedElasticsearchInstancePaymentOption')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    ServiceSoftwareOptions = Shapes::StructureShape.new(name: 'ServiceSoftwareOptions')
    ServiceUrl = Shapes::StringShape.new(name: 'ServiceUrl')
    SnapshotOptions = Shapes::StructureShape.new(name: 'SnapshotOptions')
    SnapshotOptionsStatus = Shapes::StructureShape.new(name: 'SnapshotOptionsStatus')
    StartElasticsearchServiceSoftwareUpdateRequest = Shapes::StructureShape.new(name: 'StartElasticsearchServiceSoftwareUpdateRequest')
    StartElasticsearchServiceSoftwareUpdateResponse = Shapes::StructureShape.new(name: 'StartElasticsearchServiceSoftwareUpdateResponse')
    StartTimestamp = Shapes::TimestampShape.new(name: 'StartTimestamp')
    StorageSubTypeName = Shapes::StringShape.new(name: 'StorageSubTypeName')
    StorageType = Shapes::StructureShape.new(name: 'StorageType')
    StorageTypeLimit = Shapes::StructureShape.new(name: 'StorageTypeLimit')
    StorageTypeLimitList = Shapes::ListShape.new(name: 'StorageTypeLimitList')
    StorageTypeList = Shapes::ListShape.new(name: 'StorageTypeList')
    StorageTypeName = Shapes::StringShape.new(name: 'StorageTypeName')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    TLSSecurityPolicy = Shapes::StringShape.new(name: 'TLSSecurityPolicy')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    UIntValue = Shapes::IntegerShape.new(name: 'UIntValue')
    UpdateElasticsearchDomainConfigRequest = Shapes::StructureShape.new(name: 'UpdateElasticsearchDomainConfigRequest')
    UpdateElasticsearchDomainConfigResponse = Shapes::StructureShape.new(name: 'UpdateElasticsearchDomainConfigResponse')
    UpdateTimestamp = Shapes::TimestampShape.new(name: 'UpdateTimestamp')
    UpgradeElasticsearchDomainRequest = Shapes::StructureShape.new(name: 'UpgradeElasticsearchDomainRequest')
    UpgradeElasticsearchDomainResponse = Shapes::StructureShape.new(name: 'UpgradeElasticsearchDomainResponse')
    UpgradeHistory = Shapes::StructureShape.new(name: 'UpgradeHistory')
    UpgradeHistoryList = Shapes::ListShape.new(name: 'UpgradeHistoryList')
    UpgradeName = Shapes::StringShape.new(name: 'UpgradeName')
    UpgradeStatus = Shapes::StringShape.new(name: 'UpgradeStatus')
    UpgradeStep = Shapes::StringShape.new(name: 'UpgradeStep')
    UpgradeStepItem = Shapes::StructureShape.new(name: 'UpgradeStepItem')
    UpgradeStepsList = Shapes::ListShape.new(name: 'UpgradeStepsList')
    UserPoolId = Shapes::StringShape.new(name: 'UserPoolId')
    Username = Shapes::StringShape.new(name: 'Username')
    VPCDerivedInfo = Shapes::StructureShape.new(name: 'VPCDerivedInfo')
    VPCDerivedInfoStatus = Shapes::StructureShape.new(name: 'VPCDerivedInfoStatus')
    VPCOptions = Shapes::StructureShape.new(name: 'VPCOptions')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValueStringList = Shapes::ListShape.new(name: 'ValueStringList')
    VolumeType = Shapes::StringShape.new(name: 'VolumeType')
    ZoneAwarenessConfig = Shapes::StructureShape.new(name: 'ZoneAwarenessConfig')

    AcceptInboundCrossClusterSearchConnectionRequest.add_member(:cross_cluster_search_connection_id, Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionId, required: true, location: "uri", location_name: "ConnectionId"))
    AcceptInboundCrossClusterSearchConnectionRequest.struct_class = Types::AcceptInboundCrossClusterSearchConnectionRequest

    AcceptInboundCrossClusterSearchConnectionResponse.add_member(:cross_cluster_search_connection, Shapes::ShapeRef.new(shape: InboundCrossClusterSearchConnection, location_name: "CrossClusterSearchConnection"))
    AcceptInboundCrossClusterSearchConnectionResponse.struct_class = Types::AcceptInboundCrossClusterSearchConnectionResponse

    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessPoliciesStatus.add_member(:options, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "Options"))
    AccessPoliciesStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    AccessPoliciesStatus.struct_class = Types::AccessPoliciesStatus

    AddTagsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ARN"))
    AddTagsRequest.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "TagList"))
    AddTagsRequest.struct_class = Types::AddTagsRequest

    AdditionalLimit.add_member(:limit_name, Shapes::ShapeRef.new(shape: LimitName, location_name: "LimitName"))
    AdditionalLimit.add_member(:limit_values, Shapes::ShapeRef.new(shape: LimitValueList, location_name: "LimitValues"))
    AdditionalLimit.struct_class = Types::AdditionalLimit

    AdditionalLimitList.member = Shapes::ShapeRef.new(shape: AdditionalLimit)

    AdvancedOptions.key = Shapes::ShapeRef.new(shape: String)
    AdvancedOptions.value = Shapes::ShapeRef.new(shape: String)

    AdvancedOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: AdvancedOptions, required: true, location_name: "Options"))
    AdvancedOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    AdvancedOptionsStatus.struct_class = Types::AdvancedOptionsStatus

    AdvancedSecurityOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AdvancedSecurityOptions.add_member(:internal_user_database_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "InternalUserDatabaseEnabled"))
    AdvancedSecurityOptions.struct_class = Types::AdvancedSecurityOptions

    AdvancedSecurityOptionsInput.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    AdvancedSecurityOptionsInput.add_member(:internal_user_database_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "InternalUserDatabaseEnabled"))
    AdvancedSecurityOptionsInput.add_member(:master_user_options, Shapes::ShapeRef.new(shape: MasterUserOptions, location_name: "MasterUserOptions"))
    AdvancedSecurityOptionsInput.struct_class = Types::AdvancedSecurityOptionsInput

    AdvancedSecurityOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: AdvancedSecurityOptions, required: true, location_name: "Options"))
    AdvancedSecurityOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    AdvancedSecurityOptionsStatus.struct_class = Types::AdvancedSecurityOptionsStatus

    AssociatePackageRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, required: true, location: "uri", location_name: "PackageID"))
    AssociatePackageRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    AssociatePackageRequest.struct_class = Types::AssociatePackageRequest

    AssociatePackageResponse.add_member(:domain_package_details, Shapes::ShapeRef.new(shape: DomainPackageDetails, location_name: "DomainPackageDetails"))
    AssociatePackageResponse.struct_class = Types::AssociatePackageResponse

    BaseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BaseException.struct_class = Types::BaseException

    CancelElasticsearchServiceSoftwareUpdateRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CancelElasticsearchServiceSoftwareUpdateRequest.struct_class = Types::CancelElasticsearchServiceSoftwareUpdateRequest

    CancelElasticsearchServiceSoftwareUpdateResponse.add_member(:service_software_options, Shapes::ShapeRef.new(shape: ServiceSoftwareOptions, location_name: "ServiceSoftwareOptions"))
    CancelElasticsearchServiceSoftwareUpdateResponse.struct_class = Types::CancelElasticsearchServiceSoftwareUpdateResponse

    CognitoOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    CognitoOptions.add_member(:user_pool_id, Shapes::ShapeRef.new(shape: UserPoolId, location_name: "UserPoolId"))
    CognitoOptions.add_member(:identity_pool_id, Shapes::ShapeRef.new(shape: IdentityPoolId, location_name: "IdentityPoolId"))
    CognitoOptions.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    CognitoOptions.struct_class = Types::CognitoOptions

    CognitoOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: CognitoOptions, required: true, location_name: "Options"))
    CognitoOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    CognitoOptionsStatus.struct_class = Types::CognitoOptionsStatus

    CompatibleElasticsearchVersionsList.member = Shapes::ShapeRef.new(shape: CompatibleVersionsMap)

    CompatibleVersionsMap.add_member(:source_version, Shapes::ShapeRef.new(shape: ElasticsearchVersionString, location_name: "SourceVersion"))
    CompatibleVersionsMap.add_member(:target_versions, Shapes::ShapeRef.new(shape: ElasticsearchVersionList, location_name: "TargetVersions"))
    CompatibleVersionsMap.struct_class = Types::CompatibleVersionsMap

    ConflictException.struct_class = Types::ConflictException

    CreateElasticsearchDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CreateElasticsearchDomainRequest.add_member(:elasticsearch_version, Shapes::ShapeRef.new(shape: ElasticsearchVersionString, location_name: "ElasticsearchVersion"))
    CreateElasticsearchDomainRequest.add_member(:elasticsearch_cluster_config, Shapes::ShapeRef.new(shape: ElasticsearchClusterConfig, location_name: "ElasticsearchClusterConfig"))
    CreateElasticsearchDomainRequest.add_member(:ebs_options, Shapes::ShapeRef.new(shape: EBSOptions, location_name: "EBSOptions"))
    CreateElasticsearchDomainRequest.add_member(:access_policies, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "AccessPolicies"))
    CreateElasticsearchDomainRequest.add_member(:snapshot_options, Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: "SnapshotOptions"))
    CreateElasticsearchDomainRequest.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VPCOptions, location_name: "VPCOptions"))
    CreateElasticsearchDomainRequest.add_member(:cognito_options, Shapes::ShapeRef.new(shape: CognitoOptions, location_name: "CognitoOptions"))
    CreateElasticsearchDomainRequest.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    CreateElasticsearchDomainRequest.add_member(:node_to_node_encryption_options, Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: "NodeToNodeEncryptionOptions"))
    CreateElasticsearchDomainRequest.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "AdvancedOptions"))
    CreateElasticsearchDomainRequest.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    CreateElasticsearchDomainRequest.add_member(:domain_endpoint_options, Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: "DomainEndpointOptions"))
    CreateElasticsearchDomainRequest.add_member(:advanced_security_options, Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsInput, location_name: "AdvancedSecurityOptions"))
    CreateElasticsearchDomainRequest.struct_class = Types::CreateElasticsearchDomainRequest

    CreateElasticsearchDomainResponse.add_member(:domain_status, Shapes::ShapeRef.new(shape: ElasticsearchDomainStatus, location_name: "DomainStatus"))
    CreateElasticsearchDomainResponse.struct_class = Types::CreateElasticsearchDomainResponse

    CreateOutboundCrossClusterSearchConnectionRequest.add_member(:source_domain_info, Shapes::ShapeRef.new(shape: DomainInformation, required: true, location_name: "SourceDomainInfo"))
    CreateOutboundCrossClusterSearchConnectionRequest.add_member(:destination_domain_info, Shapes::ShapeRef.new(shape: DomainInformation, required: true, location_name: "DestinationDomainInfo"))
    CreateOutboundCrossClusterSearchConnectionRequest.add_member(:connection_alias, Shapes::ShapeRef.new(shape: ConnectionAlias, required: true, location_name: "ConnectionAlias"))
    CreateOutboundCrossClusterSearchConnectionRequest.struct_class = Types::CreateOutboundCrossClusterSearchConnectionRequest

    CreateOutboundCrossClusterSearchConnectionResponse.add_member(:source_domain_info, Shapes::ShapeRef.new(shape: DomainInformation, location_name: "SourceDomainInfo"))
    CreateOutboundCrossClusterSearchConnectionResponse.add_member(:destination_domain_info, Shapes::ShapeRef.new(shape: DomainInformation, location_name: "DestinationDomainInfo"))
    CreateOutboundCrossClusterSearchConnectionResponse.add_member(:connection_alias, Shapes::ShapeRef.new(shape: ConnectionAlias, location_name: "ConnectionAlias"))
    CreateOutboundCrossClusterSearchConnectionResponse.add_member(:connection_status, Shapes::ShapeRef.new(shape: OutboundCrossClusterSearchConnectionStatus, location_name: "ConnectionStatus"))
    CreateOutboundCrossClusterSearchConnectionResponse.add_member(:cross_cluster_search_connection_id, Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionId, location_name: "CrossClusterSearchConnectionId"))
    CreateOutboundCrossClusterSearchConnectionResponse.struct_class = Types::CreateOutboundCrossClusterSearchConnectionResponse

    CreatePackageRequest.add_member(:package_name, Shapes::ShapeRef.new(shape: PackageName, required: true, location_name: "PackageName"))
    CreatePackageRequest.add_member(:package_type, Shapes::ShapeRef.new(shape: PackageType, required: true, location_name: "PackageType"))
    CreatePackageRequest.add_member(:package_description, Shapes::ShapeRef.new(shape: PackageDescription, location_name: "PackageDescription"))
    CreatePackageRequest.add_member(:package_source, Shapes::ShapeRef.new(shape: PackageSource, required: true, location_name: "PackageSource"))
    CreatePackageRequest.struct_class = Types::CreatePackageRequest

    CreatePackageResponse.add_member(:package_details, Shapes::ShapeRef.new(shape: PackageDetails, location_name: "PackageDetails"))
    CreatePackageResponse.struct_class = Types::CreatePackageResponse

    DeleteElasticsearchDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DeleteElasticsearchDomainRequest.struct_class = Types::DeleteElasticsearchDomainRequest

    DeleteElasticsearchDomainResponse.add_member(:domain_status, Shapes::ShapeRef.new(shape: ElasticsearchDomainStatus, location_name: "DomainStatus"))
    DeleteElasticsearchDomainResponse.struct_class = Types::DeleteElasticsearchDomainResponse

    DeleteInboundCrossClusterSearchConnectionRequest.add_member(:cross_cluster_search_connection_id, Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionId, required: true, location: "uri", location_name: "ConnectionId"))
    DeleteInboundCrossClusterSearchConnectionRequest.struct_class = Types::DeleteInboundCrossClusterSearchConnectionRequest

    DeleteInboundCrossClusterSearchConnectionResponse.add_member(:cross_cluster_search_connection, Shapes::ShapeRef.new(shape: InboundCrossClusterSearchConnection, location_name: "CrossClusterSearchConnection"))
    DeleteInboundCrossClusterSearchConnectionResponse.struct_class = Types::DeleteInboundCrossClusterSearchConnectionResponse

    DeleteOutboundCrossClusterSearchConnectionRequest.add_member(:cross_cluster_search_connection_id, Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionId, required: true, location: "uri", location_name: "ConnectionId"))
    DeleteOutboundCrossClusterSearchConnectionRequest.struct_class = Types::DeleteOutboundCrossClusterSearchConnectionRequest

    DeleteOutboundCrossClusterSearchConnectionResponse.add_member(:cross_cluster_search_connection, Shapes::ShapeRef.new(shape: OutboundCrossClusterSearchConnection, location_name: "CrossClusterSearchConnection"))
    DeleteOutboundCrossClusterSearchConnectionResponse.struct_class = Types::DeleteOutboundCrossClusterSearchConnectionResponse

    DeletePackageRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, required: true, location: "uri", location_name: "PackageID"))
    DeletePackageRequest.struct_class = Types::DeletePackageRequest

    DeletePackageResponse.add_member(:package_details, Shapes::ShapeRef.new(shape: PackageDetails, location_name: "PackageDetails"))
    DeletePackageResponse.struct_class = Types::DeletePackageResponse

    DescribeElasticsearchDomainConfigRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DescribeElasticsearchDomainConfigRequest.struct_class = Types::DescribeElasticsearchDomainConfigRequest

    DescribeElasticsearchDomainConfigResponse.add_member(:domain_config, Shapes::ShapeRef.new(shape: ElasticsearchDomainConfig, required: true, location_name: "DomainConfig"))
    DescribeElasticsearchDomainConfigResponse.struct_class = Types::DescribeElasticsearchDomainConfigResponse

    DescribeElasticsearchDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DescribeElasticsearchDomainRequest.struct_class = Types::DescribeElasticsearchDomainRequest

    DescribeElasticsearchDomainResponse.add_member(:domain_status, Shapes::ShapeRef.new(shape: ElasticsearchDomainStatus, required: true, location_name: "DomainStatus"))
    DescribeElasticsearchDomainResponse.struct_class = Types::DescribeElasticsearchDomainResponse

    DescribeElasticsearchDomainsRequest.add_member(:domain_names, Shapes::ShapeRef.new(shape: DomainNameList, required: true, location_name: "DomainNames"))
    DescribeElasticsearchDomainsRequest.struct_class = Types::DescribeElasticsearchDomainsRequest

    DescribeElasticsearchDomainsResponse.add_member(:domain_status_list, Shapes::ShapeRef.new(shape: ElasticsearchDomainStatusList, required: true, location_name: "DomainStatusList"))
    DescribeElasticsearchDomainsResponse.struct_class = Types::DescribeElasticsearchDomainsResponse

    DescribeElasticsearchInstanceTypeLimitsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location: "querystring", location_name: "domainName"))
    DescribeElasticsearchInstanceTypeLimitsRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: ESPartitionInstanceType, required: true, location: "uri", location_name: "InstanceType"))
    DescribeElasticsearchInstanceTypeLimitsRequest.add_member(:elasticsearch_version, Shapes::ShapeRef.new(shape: ElasticsearchVersionString, required: true, location: "uri", location_name: "ElasticsearchVersion"))
    DescribeElasticsearchInstanceTypeLimitsRequest.struct_class = Types::DescribeElasticsearchInstanceTypeLimitsRequest

    DescribeElasticsearchInstanceTypeLimitsResponse.add_member(:limits_by_role, Shapes::ShapeRef.new(shape: LimitsByRole, location_name: "LimitsByRole"))
    DescribeElasticsearchInstanceTypeLimitsResponse.struct_class = Types::DescribeElasticsearchInstanceTypeLimitsResponse

    DescribeInboundCrossClusterSearchConnectionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeInboundCrossClusterSearchConnectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeInboundCrossClusterSearchConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInboundCrossClusterSearchConnectionsRequest.struct_class = Types::DescribeInboundCrossClusterSearchConnectionsRequest

    DescribeInboundCrossClusterSearchConnectionsResponse.add_member(:cross_cluster_search_connections, Shapes::ShapeRef.new(shape: InboundCrossClusterSearchConnections, location_name: "CrossClusterSearchConnections"))
    DescribeInboundCrossClusterSearchConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInboundCrossClusterSearchConnectionsResponse.struct_class = Types::DescribeInboundCrossClusterSearchConnectionsResponse

    DescribeOutboundCrossClusterSearchConnectionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "Filters"))
    DescribeOutboundCrossClusterSearchConnectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeOutboundCrossClusterSearchConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeOutboundCrossClusterSearchConnectionsRequest.struct_class = Types::DescribeOutboundCrossClusterSearchConnectionsRequest

    DescribeOutboundCrossClusterSearchConnectionsResponse.add_member(:cross_cluster_search_connections, Shapes::ShapeRef.new(shape: OutboundCrossClusterSearchConnections, location_name: "CrossClusterSearchConnections"))
    DescribeOutboundCrossClusterSearchConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeOutboundCrossClusterSearchConnectionsResponse.struct_class = Types::DescribeOutboundCrossClusterSearchConnectionsResponse

    DescribePackagesFilter.add_member(:name, Shapes::ShapeRef.new(shape: DescribePackagesFilterName, location_name: "Name"))
    DescribePackagesFilter.add_member(:value, Shapes::ShapeRef.new(shape: DescribePackagesFilterValues, location_name: "Value"))
    DescribePackagesFilter.struct_class = Types::DescribePackagesFilter

    DescribePackagesFilterList.member = Shapes::ShapeRef.new(shape: DescribePackagesFilter)

    DescribePackagesFilterValues.member = Shapes::ShapeRef.new(shape: DescribePackagesFilterValue)

    DescribePackagesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribePackagesFilterList, location_name: "Filters"))
    DescribePackagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribePackagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribePackagesRequest.struct_class = Types::DescribePackagesRequest

    DescribePackagesResponse.add_member(:package_details_list, Shapes::ShapeRef.new(shape: PackageDetailsList, location_name: "PackageDetailsList"))
    DescribePackagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribePackagesResponse.struct_class = Types::DescribePackagesResponse

    DescribeReservedElasticsearchInstanceOfferingsRequest.add_member(:reserved_elasticsearch_instance_offering_id, Shapes::ShapeRef.new(shape: GUID, location: "querystring", location_name: "offeringId"))
    DescribeReservedElasticsearchInstanceOfferingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    DescribeReservedElasticsearchInstanceOfferingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    DescribeReservedElasticsearchInstanceOfferingsRequest.struct_class = Types::DescribeReservedElasticsearchInstanceOfferingsRequest

    DescribeReservedElasticsearchInstanceOfferingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeReservedElasticsearchInstanceOfferingsResponse.add_member(:reserved_elasticsearch_instance_offerings, Shapes::ShapeRef.new(shape: ReservedElasticsearchInstanceOfferingList, location_name: "ReservedElasticsearchInstanceOfferings"))
    DescribeReservedElasticsearchInstanceOfferingsResponse.struct_class = Types::DescribeReservedElasticsearchInstanceOfferingsResponse

    DescribeReservedElasticsearchInstancesRequest.add_member(:reserved_elasticsearch_instance_id, Shapes::ShapeRef.new(shape: GUID, location: "querystring", location_name: "reservationId"))
    DescribeReservedElasticsearchInstancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    DescribeReservedElasticsearchInstancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    DescribeReservedElasticsearchInstancesRequest.struct_class = Types::DescribeReservedElasticsearchInstancesRequest

    DescribeReservedElasticsearchInstancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeReservedElasticsearchInstancesResponse.add_member(:reserved_elasticsearch_instances, Shapes::ShapeRef.new(shape: ReservedElasticsearchInstanceList, location_name: "ReservedElasticsearchInstances"))
    DescribeReservedElasticsearchInstancesResponse.struct_class = Types::DescribeReservedElasticsearchInstancesResponse

    DisabledOperationException.struct_class = Types::DisabledOperationException

    DissociatePackageRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, required: true, location: "uri", location_name: "PackageID"))
    DissociatePackageRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DissociatePackageRequest.struct_class = Types::DissociatePackageRequest

    DissociatePackageResponse.add_member(:domain_package_details, Shapes::ShapeRef.new(shape: DomainPackageDetails, location_name: "DomainPackageDetails"))
    DissociatePackageResponse.struct_class = Types::DissociatePackageResponse

    DomainEndpointOptions.add_member(:enforce_https, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnforceHTTPS"))
    DomainEndpointOptions.add_member(:tls_security_policy, Shapes::ShapeRef.new(shape: TLSSecurityPolicy, location_name: "TLSSecurityPolicy"))
    DomainEndpointOptions.struct_class = Types::DomainEndpointOptions

    DomainEndpointOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: DomainEndpointOptions, required: true, location_name: "Options"))
    DomainEndpointOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    DomainEndpointOptionsStatus.struct_class = Types::DomainEndpointOptionsStatus

    DomainInfo.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    DomainInfo.struct_class = Types::DomainInfo

    DomainInfoList.member = Shapes::ShapeRef.new(shape: DomainInfo)

    DomainInformation.add_member(:owner_id, Shapes::ShapeRef.new(shape: OwnerId, location_name: "OwnerId"))
    DomainInformation.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DomainInformation.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    DomainInformation.struct_class = Types::DomainInformation

    DomainNameList.member = Shapes::ShapeRef.new(shape: DomainName)

    DomainPackageDetails.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, location_name: "PackageID"))
    DomainPackageDetails.add_member(:package_name, Shapes::ShapeRef.new(shape: PackageName, location_name: "PackageName"))
    DomainPackageDetails.add_member(:package_type, Shapes::ShapeRef.new(shape: PackageType, location_name: "PackageType"))
    DomainPackageDetails.add_member(:last_updated, Shapes::ShapeRef.new(shape: LastUpdated, location_name: "LastUpdated"))
    DomainPackageDetails.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    DomainPackageDetails.add_member(:domain_package_status, Shapes::ShapeRef.new(shape: DomainPackageStatus, location_name: "DomainPackageStatus"))
    DomainPackageDetails.add_member(:reference_path, Shapes::ShapeRef.new(shape: ReferencePath, location_name: "ReferencePath"))
    DomainPackageDetails.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "ErrorDetails"))
    DomainPackageDetails.struct_class = Types::DomainPackageDetails

    DomainPackageDetailsList.member = Shapes::ShapeRef.new(shape: DomainPackageDetails)

    EBSOptions.add_member(:ebs_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "EBSEnabled"))
    EBSOptions.add_member(:volume_type, Shapes::ShapeRef.new(shape: VolumeType, location_name: "VolumeType"))
    EBSOptions.add_member(:volume_size, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "VolumeSize"))
    EBSOptions.add_member(:iops, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "Iops"))
    EBSOptions.struct_class = Types::EBSOptions

    EBSOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: EBSOptions, required: true, location_name: "Options"))
    EBSOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    EBSOptionsStatus.struct_class = Types::EBSOptionsStatus

    ElasticsearchClusterConfig.add_member(:instance_type, Shapes::ShapeRef.new(shape: ESPartitionInstanceType, location_name: "InstanceType"))
    ElasticsearchClusterConfig.add_member(:instance_count, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "InstanceCount"))
    ElasticsearchClusterConfig.add_member(:dedicated_master_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "DedicatedMasterEnabled"))
    ElasticsearchClusterConfig.add_member(:zone_awareness_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ZoneAwarenessEnabled"))
    ElasticsearchClusterConfig.add_member(:zone_awareness_config, Shapes::ShapeRef.new(shape: ZoneAwarenessConfig, location_name: "ZoneAwarenessConfig"))
    ElasticsearchClusterConfig.add_member(:dedicated_master_type, Shapes::ShapeRef.new(shape: ESPartitionInstanceType, location_name: "DedicatedMasterType"))
    ElasticsearchClusterConfig.add_member(:dedicated_master_count, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "DedicatedMasterCount"))
    ElasticsearchClusterConfig.add_member(:warm_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "WarmEnabled"))
    ElasticsearchClusterConfig.add_member(:warm_type, Shapes::ShapeRef.new(shape: ESWarmPartitionInstanceType, location_name: "WarmType"))
    ElasticsearchClusterConfig.add_member(:warm_count, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "WarmCount"))
    ElasticsearchClusterConfig.struct_class = Types::ElasticsearchClusterConfig

    ElasticsearchClusterConfigStatus.add_member(:options, Shapes::ShapeRef.new(shape: ElasticsearchClusterConfig, required: true, location_name: "Options"))
    ElasticsearchClusterConfigStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    ElasticsearchClusterConfigStatus.struct_class = Types::ElasticsearchClusterConfigStatus

    ElasticsearchDomainConfig.add_member(:elasticsearch_version, Shapes::ShapeRef.new(shape: ElasticsearchVersionStatus, location_name: "ElasticsearchVersion"))
    ElasticsearchDomainConfig.add_member(:elasticsearch_cluster_config, Shapes::ShapeRef.new(shape: ElasticsearchClusterConfigStatus, location_name: "ElasticsearchClusterConfig"))
    ElasticsearchDomainConfig.add_member(:ebs_options, Shapes::ShapeRef.new(shape: EBSOptionsStatus, location_name: "EBSOptions"))
    ElasticsearchDomainConfig.add_member(:access_policies, Shapes::ShapeRef.new(shape: AccessPoliciesStatus, location_name: "AccessPolicies"))
    ElasticsearchDomainConfig.add_member(:snapshot_options, Shapes::ShapeRef.new(shape: SnapshotOptionsStatus, location_name: "SnapshotOptions"))
    ElasticsearchDomainConfig.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VPCDerivedInfoStatus, location_name: "VPCOptions"))
    ElasticsearchDomainConfig.add_member(:cognito_options, Shapes::ShapeRef.new(shape: CognitoOptionsStatus, location_name: "CognitoOptions"))
    ElasticsearchDomainConfig.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptionsStatus, location_name: "EncryptionAtRestOptions"))
    ElasticsearchDomainConfig.add_member(:node_to_node_encryption_options, Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptionsStatus, location_name: "NodeToNodeEncryptionOptions"))
    ElasticsearchDomainConfig.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptionsStatus, location_name: "AdvancedOptions"))
    ElasticsearchDomainConfig.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptionsStatus, location_name: "LogPublishingOptions"))
    ElasticsearchDomainConfig.add_member(:domain_endpoint_options, Shapes::ShapeRef.new(shape: DomainEndpointOptionsStatus, location_name: "DomainEndpointOptions"))
    ElasticsearchDomainConfig.add_member(:advanced_security_options, Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsStatus, location_name: "AdvancedSecurityOptions"))
    ElasticsearchDomainConfig.struct_class = Types::ElasticsearchDomainConfig

    ElasticsearchDomainStatus.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    ElasticsearchDomainStatus.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    ElasticsearchDomainStatus.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ARN"))
    ElasticsearchDomainStatus.add_member(:created, Shapes::ShapeRef.new(shape: Boolean, location_name: "Created"))
    ElasticsearchDomainStatus.add_member(:deleted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Deleted"))
    ElasticsearchDomainStatus.add_member(:endpoint, Shapes::ShapeRef.new(shape: ServiceUrl, location_name: "Endpoint"))
    ElasticsearchDomainStatus.add_member(:endpoints, Shapes::ShapeRef.new(shape: EndpointsMap, location_name: "Endpoints"))
    ElasticsearchDomainStatus.add_member(:processing, Shapes::ShapeRef.new(shape: Boolean, location_name: "Processing"))
    ElasticsearchDomainStatus.add_member(:upgrade_processing, Shapes::ShapeRef.new(shape: Boolean, location_name: "UpgradeProcessing"))
    ElasticsearchDomainStatus.add_member(:elasticsearch_version, Shapes::ShapeRef.new(shape: ElasticsearchVersionString, location_name: "ElasticsearchVersion"))
    ElasticsearchDomainStatus.add_member(:elasticsearch_cluster_config, Shapes::ShapeRef.new(shape: ElasticsearchClusterConfig, required: true, location_name: "ElasticsearchClusterConfig"))
    ElasticsearchDomainStatus.add_member(:ebs_options, Shapes::ShapeRef.new(shape: EBSOptions, location_name: "EBSOptions"))
    ElasticsearchDomainStatus.add_member(:access_policies, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "AccessPolicies"))
    ElasticsearchDomainStatus.add_member(:snapshot_options, Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: "SnapshotOptions"))
    ElasticsearchDomainStatus.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VPCDerivedInfo, location_name: "VPCOptions"))
    ElasticsearchDomainStatus.add_member(:cognito_options, Shapes::ShapeRef.new(shape: CognitoOptions, location_name: "CognitoOptions"))
    ElasticsearchDomainStatus.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    ElasticsearchDomainStatus.add_member(:node_to_node_encryption_options, Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, location_name: "NodeToNodeEncryptionOptions"))
    ElasticsearchDomainStatus.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "AdvancedOptions"))
    ElasticsearchDomainStatus.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    ElasticsearchDomainStatus.add_member(:service_software_options, Shapes::ShapeRef.new(shape: ServiceSoftwareOptions, location_name: "ServiceSoftwareOptions"))
    ElasticsearchDomainStatus.add_member(:domain_endpoint_options, Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: "DomainEndpointOptions"))
    ElasticsearchDomainStatus.add_member(:advanced_security_options, Shapes::ShapeRef.new(shape: AdvancedSecurityOptions, location_name: "AdvancedSecurityOptions"))
    ElasticsearchDomainStatus.struct_class = Types::ElasticsearchDomainStatus

    ElasticsearchDomainStatusList.member = Shapes::ShapeRef.new(shape: ElasticsearchDomainStatus)

    ElasticsearchInstanceTypeList.member = Shapes::ShapeRef.new(shape: ESPartitionInstanceType)

    ElasticsearchVersionList.member = Shapes::ShapeRef.new(shape: ElasticsearchVersionString)

    ElasticsearchVersionStatus.add_member(:options, Shapes::ShapeRef.new(shape: ElasticsearchVersionString, required: true, location_name: "Options"))
    ElasticsearchVersionStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    ElasticsearchVersionStatus.struct_class = Types::ElasticsearchVersionStatus

    EncryptionAtRestOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    EncryptionAtRestOptions.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    EncryptionAtRestOptions.struct_class = Types::EncryptionAtRestOptions

    EncryptionAtRestOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, required: true, location_name: "Options"))
    EncryptionAtRestOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    EncryptionAtRestOptionsStatus.struct_class = Types::EncryptionAtRestOptionsStatus

    EndpointsMap.key = Shapes::ShapeRef.new(shape: String)
    EndpointsMap.value = Shapes::ShapeRef.new(shape: ServiceUrl)

    ErrorDetails.add_member(:error_type, Shapes::ShapeRef.new(shape: ErrorType, location_name: "ErrorType"))
    ErrorDetails.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    ErrorDetails.struct_class = Types::ErrorDetails

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: ValueStringList, location_name: "Values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    GetCompatibleElasticsearchVersionsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location: "querystring", location_name: "domainName"))
    GetCompatibleElasticsearchVersionsRequest.struct_class = Types::GetCompatibleElasticsearchVersionsRequest

    GetCompatibleElasticsearchVersionsResponse.add_member(:compatible_elasticsearch_versions, Shapes::ShapeRef.new(shape: CompatibleElasticsearchVersionsList, location_name: "CompatibleElasticsearchVersions"))
    GetCompatibleElasticsearchVersionsResponse.struct_class = Types::GetCompatibleElasticsearchVersionsResponse

    GetUpgradeHistoryRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    GetUpgradeHistoryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetUpgradeHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetUpgradeHistoryRequest.struct_class = Types::GetUpgradeHistoryRequest

    GetUpgradeHistoryResponse.add_member(:upgrade_histories, Shapes::ShapeRef.new(shape: UpgradeHistoryList, location_name: "UpgradeHistories"))
    GetUpgradeHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetUpgradeHistoryResponse.struct_class = Types::GetUpgradeHistoryResponse

    GetUpgradeStatusRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    GetUpgradeStatusRequest.struct_class = Types::GetUpgradeStatusRequest

    GetUpgradeStatusResponse.add_member(:upgrade_step, Shapes::ShapeRef.new(shape: UpgradeStep, location_name: "UpgradeStep"))
    GetUpgradeStatusResponse.add_member(:step_status, Shapes::ShapeRef.new(shape: UpgradeStatus, location_name: "StepStatus"))
    GetUpgradeStatusResponse.add_member(:upgrade_name, Shapes::ShapeRef.new(shape: UpgradeName, location_name: "UpgradeName"))
    GetUpgradeStatusResponse.struct_class = Types::GetUpgradeStatusResponse

    InboundCrossClusterSearchConnection.add_member(:source_domain_info, Shapes::ShapeRef.new(shape: DomainInformation, location_name: "SourceDomainInfo"))
    InboundCrossClusterSearchConnection.add_member(:destination_domain_info, Shapes::ShapeRef.new(shape: DomainInformation, location_name: "DestinationDomainInfo"))
    InboundCrossClusterSearchConnection.add_member(:cross_cluster_search_connection_id, Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionId, location_name: "CrossClusterSearchConnectionId"))
    InboundCrossClusterSearchConnection.add_member(:connection_status, Shapes::ShapeRef.new(shape: InboundCrossClusterSearchConnectionStatus, location_name: "ConnectionStatus"))
    InboundCrossClusterSearchConnection.struct_class = Types::InboundCrossClusterSearchConnection

    InboundCrossClusterSearchConnectionStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: InboundCrossClusterSearchConnectionStatusCode, location_name: "StatusCode"))
    InboundCrossClusterSearchConnectionStatus.add_member(:message, Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionStatusMessage, location_name: "Message"))
    InboundCrossClusterSearchConnectionStatus.struct_class = Types::InboundCrossClusterSearchConnectionStatus

    InboundCrossClusterSearchConnections.member = Shapes::ShapeRef.new(shape: InboundCrossClusterSearchConnection)

    InstanceCountLimits.add_member(:minimum_instance_count, Shapes::ShapeRef.new(shape: MinimumInstanceCount, location_name: "MinimumInstanceCount"))
    InstanceCountLimits.add_member(:maximum_instance_count, Shapes::ShapeRef.new(shape: MaximumInstanceCount, location_name: "MaximumInstanceCount"))
    InstanceCountLimits.struct_class = Types::InstanceCountLimits

    InstanceLimits.add_member(:instance_count_limits, Shapes::ShapeRef.new(shape: InstanceCountLimits, location_name: "InstanceCountLimits"))
    InstanceLimits.struct_class = Types::InstanceLimits

    InternalException.struct_class = Types::InternalException

    InvalidPaginationTokenException.struct_class = Types::InvalidPaginationTokenException

    InvalidTypeException.struct_class = Types::InvalidTypeException

    Issues.member = Shapes::ShapeRef.new(shape: Issue)

    LimitExceededException.struct_class = Types::LimitExceededException

    LimitValueList.member = Shapes::ShapeRef.new(shape: LimitValue)

    Limits.add_member(:storage_types, Shapes::ShapeRef.new(shape: StorageTypeList, location_name: "StorageTypes"))
    Limits.add_member(:instance_limits, Shapes::ShapeRef.new(shape: InstanceLimits, location_name: "InstanceLimits"))
    Limits.add_member(:additional_limits, Shapes::ShapeRef.new(shape: AdditionalLimitList, location_name: "AdditionalLimits"))
    Limits.struct_class = Types::Limits

    LimitsByRole.key = Shapes::ShapeRef.new(shape: InstanceRole)
    LimitsByRole.value = Shapes::ShapeRef.new(shape: Limits)

    ListDomainNamesResponse.add_member(:domain_names, Shapes::ShapeRef.new(shape: DomainInfoList, location_name: "DomainNames"))
    ListDomainNamesResponse.struct_class = Types::ListDomainNamesResponse

    ListDomainsForPackageRequest.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, required: true, location: "uri", location_name: "PackageID"))
    ListDomainsForPackageRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDomainsForPackageRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDomainsForPackageRequest.struct_class = Types::ListDomainsForPackageRequest

    ListDomainsForPackageResponse.add_member(:domain_package_details_list, Shapes::ShapeRef.new(shape: DomainPackageDetailsList, location_name: "DomainPackageDetailsList"))
    ListDomainsForPackageResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDomainsForPackageResponse.struct_class = Types::ListDomainsForPackageResponse

    ListElasticsearchInstanceTypesRequest.add_member(:elasticsearch_version, Shapes::ShapeRef.new(shape: ElasticsearchVersionString, required: true, location: "uri", location_name: "ElasticsearchVersion"))
    ListElasticsearchInstanceTypesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location: "querystring", location_name: "domainName"))
    ListElasticsearchInstanceTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListElasticsearchInstanceTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListElasticsearchInstanceTypesRequest.struct_class = Types::ListElasticsearchInstanceTypesRequest

    ListElasticsearchInstanceTypesResponse.add_member(:elasticsearch_instance_types, Shapes::ShapeRef.new(shape: ElasticsearchInstanceTypeList, location_name: "ElasticsearchInstanceTypes"))
    ListElasticsearchInstanceTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListElasticsearchInstanceTypesResponse.struct_class = Types::ListElasticsearchInstanceTypesResponse

    ListElasticsearchVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListElasticsearchVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListElasticsearchVersionsRequest.struct_class = Types::ListElasticsearchVersionsRequest

    ListElasticsearchVersionsResponse.add_member(:elasticsearch_versions, Shapes::ShapeRef.new(shape: ElasticsearchVersionList, location_name: "ElasticsearchVersions"))
    ListElasticsearchVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListElasticsearchVersionsResponse.struct_class = Types::ListElasticsearchVersionsResponse

    ListPackagesForDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    ListPackagesForDomainRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPackagesForDomainRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPackagesForDomainRequest.struct_class = Types::ListPackagesForDomainRequest

    ListPackagesForDomainResponse.add_member(:domain_package_details_list, Shapes::ShapeRef.new(shape: DomainPackageDetailsList, location_name: "DomainPackageDetailsList"))
    ListPackagesForDomainResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListPackagesForDomainResponse.struct_class = Types::ListPackagesForDomainResponse

    ListTagsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location: "querystring", location_name: "arn"))
    ListTagsRequest.struct_class = Types::ListTagsRequest

    ListTagsResponse.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
    ListTagsResponse.struct_class = Types::ListTagsResponse

    LogPublishingOption.add_member(:cloud_watch_logs_log_group_arn, Shapes::ShapeRef.new(shape: CloudWatchLogsLogGroupArn, location_name: "CloudWatchLogsLogGroupArn"))
    LogPublishingOption.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    LogPublishingOption.struct_class = Types::LogPublishingOption

    LogPublishingOptions.key = Shapes::ShapeRef.new(shape: LogType)
    LogPublishingOptions.value = Shapes::ShapeRef.new(shape: LogPublishingOption)

    LogPublishingOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "Options"))
    LogPublishingOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, location_name: "Status"))
    LogPublishingOptionsStatus.struct_class = Types::LogPublishingOptionsStatus

    MasterUserOptions.add_member(:master_user_arn, Shapes::ShapeRef.new(shape: ARN, location_name: "MasterUserARN"))
    MasterUserOptions.add_member(:master_user_name, Shapes::ShapeRef.new(shape: Username, location_name: "MasterUserName"))
    MasterUserOptions.add_member(:master_user_password, Shapes::ShapeRef.new(shape: Password, location_name: "MasterUserPassword"))
    MasterUserOptions.struct_class = Types::MasterUserOptions

    NodeToNodeEncryptionOptions.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    NodeToNodeEncryptionOptions.struct_class = Types::NodeToNodeEncryptionOptions

    NodeToNodeEncryptionOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: NodeToNodeEncryptionOptions, required: true, location_name: "Options"))
    NodeToNodeEncryptionOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    NodeToNodeEncryptionOptionsStatus.struct_class = Types::NodeToNodeEncryptionOptionsStatus

    OptionStatus.add_member(:creation_date, Shapes::ShapeRef.new(shape: UpdateTimestamp, required: true, location_name: "CreationDate"))
    OptionStatus.add_member(:update_date, Shapes::ShapeRef.new(shape: UpdateTimestamp, required: true, location_name: "UpdateDate"))
    OptionStatus.add_member(:update_version, Shapes::ShapeRef.new(shape: UIntValue, location_name: "UpdateVersion"))
    OptionStatus.add_member(:state, Shapes::ShapeRef.new(shape: OptionState, required: true, location_name: "State"))
    OptionStatus.add_member(:pending_deletion, Shapes::ShapeRef.new(shape: Boolean, location_name: "PendingDeletion"))
    OptionStatus.struct_class = Types::OptionStatus

    OutboundCrossClusterSearchConnection.add_member(:source_domain_info, Shapes::ShapeRef.new(shape: DomainInformation, location_name: "SourceDomainInfo"))
    OutboundCrossClusterSearchConnection.add_member(:destination_domain_info, Shapes::ShapeRef.new(shape: DomainInformation, location_name: "DestinationDomainInfo"))
    OutboundCrossClusterSearchConnection.add_member(:cross_cluster_search_connection_id, Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionId, location_name: "CrossClusterSearchConnectionId"))
    OutboundCrossClusterSearchConnection.add_member(:connection_alias, Shapes::ShapeRef.new(shape: ConnectionAlias, location_name: "ConnectionAlias"))
    OutboundCrossClusterSearchConnection.add_member(:connection_status, Shapes::ShapeRef.new(shape: OutboundCrossClusterSearchConnectionStatus, location_name: "ConnectionStatus"))
    OutboundCrossClusterSearchConnection.struct_class = Types::OutboundCrossClusterSearchConnection

    OutboundCrossClusterSearchConnectionStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: OutboundCrossClusterSearchConnectionStatusCode, location_name: "StatusCode"))
    OutboundCrossClusterSearchConnectionStatus.add_member(:message, Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionStatusMessage, location_name: "Message"))
    OutboundCrossClusterSearchConnectionStatus.struct_class = Types::OutboundCrossClusterSearchConnectionStatus

    OutboundCrossClusterSearchConnections.member = Shapes::ShapeRef.new(shape: OutboundCrossClusterSearchConnection)

    PackageDetails.add_member(:package_id, Shapes::ShapeRef.new(shape: PackageID, location_name: "PackageID"))
    PackageDetails.add_member(:package_name, Shapes::ShapeRef.new(shape: PackageName, location_name: "PackageName"))
    PackageDetails.add_member(:package_type, Shapes::ShapeRef.new(shape: PackageType, location_name: "PackageType"))
    PackageDetails.add_member(:package_description, Shapes::ShapeRef.new(shape: PackageDescription, location_name: "PackageDescription"))
    PackageDetails.add_member(:package_status, Shapes::ShapeRef.new(shape: PackageStatus, location_name: "PackageStatus"))
    PackageDetails.add_member(:created_at, Shapes::ShapeRef.new(shape: CreatedAt, location_name: "CreatedAt"))
    PackageDetails.add_member(:error_details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "ErrorDetails"))
    PackageDetails.struct_class = Types::PackageDetails

    PackageDetailsList.member = Shapes::ShapeRef.new(shape: PackageDetails)

    PackageSource.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "S3BucketName"))
    PackageSource.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    PackageSource.struct_class = Types::PackageSource

    PurchaseReservedElasticsearchInstanceOfferingRequest.add_member(:reserved_elasticsearch_instance_offering_id, Shapes::ShapeRef.new(shape: GUID, required: true, location_name: "ReservedElasticsearchInstanceOfferingId"))
    PurchaseReservedElasticsearchInstanceOfferingRequest.add_member(:reservation_name, Shapes::ShapeRef.new(shape: ReservationToken, required: true, location_name: "ReservationName"))
    PurchaseReservedElasticsearchInstanceOfferingRequest.add_member(:instance_count, Shapes::ShapeRef.new(shape: InstanceCount, location_name: "InstanceCount"))
    PurchaseReservedElasticsearchInstanceOfferingRequest.struct_class = Types::PurchaseReservedElasticsearchInstanceOfferingRequest

    PurchaseReservedElasticsearchInstanceOfferingResponse.add_member(:reserved_elasticsearch_instance_id, Shapes::ShapeRef.new(shape: GUID, location_name: "ReservedElasticsearchInstanceId"))
    PurchaseReservedElasticsearchInstanceOfferingResponse.add_member(:reservation_name, Shapes::ShapeRef.new(shape: ReservationToken, location_name: "ReservationName"))
    PurchaseReservedElasticsearchInstanceOfferingResponse.struct_class = Types::PurchaseReservedElasticsearchInstanceOfferingResponse

    RecurringCharge.add_member(:recurring_charge_amount, Shapes::ShapeRef.new(shape: Double, location_name: "RecurringChargeAmount"))
    RecurringCharge.add_member(:recurring_charge_frequency, Shapes::ShapeRef.new(shape: String, location_name: "RecurringChargeFrequency"))
    RecurringCharge.struct_class = Types::RecurringCharge

    RecurringChargeList.member = Shapes::ShapeRef.new(shape: RecurringCharge)

    RejectInboundCrossClusterSearchConnectionRequest.add_member(:cross_cluster_search_connection_id, Shapes::ShapeRef.new(shape: CrossClusterSearchConnectionId, required: true, location: "uri", location_name: "ConnectionId"))
    RejectInboundCrossClusterSearchConnectionRequest.struct_class = Types::RejectInboundCrossClusterSearchConnectionRequest

    RejectInboundCrossClusterSearchConnectionResponse.add_member(:cross_cluster_search_connection, Shapes::ShapeRef.new(shape: InboundCrossClusterSearchConnection, location_name: "CrossClusterSearchConnection"))
    RejectInboundCrossClusterSearchConnectionResponse.struct_class = Types::RejectInboundCrossClusterSearchConnectionResponse

    RemoveTagsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ARN"))
    RemoveTagsRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "TagKeys"))
    RemoveTagsRequest.struct_class = Types::RemoveTagsRequest

    ReservedElasticsearchInstance.add_member(:reservation_name, Shapes::ShapeRef.new(shape: ReservationToken, location_name: "ReservationName"))
    ReservedElasticsearchInstance.add_member(:reserved_elasticsearch_instance_id, Shapes::ShapeRef.new(shape: GUID, location_name: "ReservedElasticsearchInstanceId"))
    ReservedElasticsearchInstance.add_member(:reserved_elasticsearch_instance_offering_id, Shapes::ShapeRef.new(shape: String, location_name: "ReservedElasticsearchInstanceOfferingId"))
    ReservedElasticsearchInstance.add_member(:elasticsearch_instance_type, Shapes::ShapeRef.new(shape: ESPartitionInstanceType, location_name: "ElasticsearchInstanceType"))
    ReservedElasticsearchInstance.add_member(:start_time, Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: "StartTime"))
    ReservedElasticsearchInstance.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, location_name: "Duration"))
    ReservedElasticsearchInstance.add_member(:fixed_price, Shapes::ShapeRef.new(shape: Double, location_name: "FixedPrice"))
    ReservedElasticsearchInstance.add_member(:usage_price, Shapes::ShapeRef.new(shape: Double, location_name: "UsagePrice"))
    ReservedElasticsearchInstance.add_member(:currency_code, Shapes::ShapeRef.new(shape: String, location_name: "CurrencyCode"))
    ReservedElasticsearchInstance.add_member(:elasticsearch_instance_count, Shapes::ShapeRef.new(shape: Integer, location_name: "ElasticsearchInstanceCount"))
    ReservedElasticsearchInstance.add_member(:state, Shapes::ShapeRef.new(shape: String, location_name: "State"))
    ReservedElasticsearchInstance.add_member(:payment_option, Shapes::ShapeRef.new(shape: ReservedElasticsearchInstancePaymentOption, location_name: "PaymentOption"))
    ReservedElasticsearchInstance.add_member(:recurring_charges, Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: "RecurringCharges"))
    ReservedElasticsearchInstance.struct_class = Types::ReservedElasticsearchInstance

    ReservedElasticsearchInstanceList.member = Shapes::ShapeRef.new(shape: ReservedElasticsearchInstance)

    ReservedElasticsearchInstanceOffering.add_member(:reserved_elasticsearch_instance_offering_id, Shapes::ShapeRef.new(shape: GUID, location_name: "ReservedElasticsearchInstanceOfferingId"))
    ReservedElasticsearchInstanceOffering.add_member(:elasticsearch_instance_type, Shapes::ShapeRef.new(shape: ESPartitionInstanceType, location_name: "ElasticsearchInstanceType"))
    ReservedElasticsearchInstanceOffering.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, location_name: "Duration"))
    ReservedElasticsearchInstanceOffering.add_member(:fixed_price, Shapes::ShapeRef.new(shape: Double, location_name: "FixedPrice"))
    ReservedElasticsearchInstanceOffering.add_member(:usage_price, Shapes::ShapeRef.new(shape: Double, location_name: "UsagePrice"))
    ReservedElasticsearchInstanceOffering.add_member(:currency_code, Shapes::ShapeRef.new(shape: String, location_name: "CurrencyCode"))
    ReservedElasticsearchInstanceOffering.add_member(:payment_option, Shapes::ShapeRef.new(shape: ReservedElasticsearchInstancePaymentOption, location_name: "PaymentOption"))
    ReservedElasticsearchInstanceOffering.add_member(:recurring_charges, Shapes::ShapeRef.new(shape: RecurringChargeList, location_name: "RecurringCharges"))
    ReservedElasticsearchInstanceOffering.struct_class = Types::ReservedElasticsearchInstanceOffering

    ReservedElasticsearchInstanceOfferingList.member = Shapes::ShapeRef.new(shape: ReservedElasticsearchInstanceOffering)

    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceSoftwareOptions.add_member(:current_version, Shapes::ShapeRef.new(shape: String, location_name: "CurrentVersion"))
    ServiceSoftwareOptions.add_member(:new_version, Shapes::ShapeRef.new(shape: String, location_name: "NewVersion"))
    ServiceSoftwareOptions.add_member(:update_available, Shapes::ShapeRef.new(shape: Boolean, location_name: "UpdateAvailable"))
    ServiceSoftwareOptions.add_member(:cancellable, Shapes::ShapeRef.new(shape: Boolean, location_name: "Cancellable"))
    ServiceSoftwareOptions.add_member(:update_status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "UpdateStatus"))
    ServiceSoftwareOptions.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    ServiceSoftwareOptions.add_member(:automated_update_date, Shapes::ShapeRef.new(shape: DeploymentCloseDateTimeStamp, location_name: "AutomatedUpdateDate"))
    ServiceSoftwareOptions.add_member(:optional_deployment, Shapes::ShapeRef.new(shape: Boolean, location_name: "OptionalDeployment"))
    ServiceSoftwareOptions.struct_class = Types::ServiceSoftwareOptions

    SnapshotOptions.add_member(:automated_snapshot_start_hour, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "AutomatedSnapshotStartHour"))
    SnapshotOptions.struct_class = Types::SnapshotOptions

    SnapshotOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: SnapshotOptions, required: true, location_name: "Options"))
    SnapshotOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    SnapshotOptionsStatus.struct_class = Types::SnapshotOptionsStatus

    StartElasticsearchServiceSoftwareUpdateRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    StartElasticsearchServiceSoftwareUpdateRequest.struct_class = Types::StartElasticsearchServiceSoftwareUpdateRequest

    StartElasticsearchServiceSoftwareUpdateResponse.add_member(:service_software_options, Shapes::ShapeRef.new(shape: ServiceSoftwareOptions, location_name: "ServiceSoftwareOptions"))
    StartElasticsearchServiceSoftwareUpdateResponse.struct_class = Types::StartElasticsearchServiceSoftwareUpdateResponse

    StorageType.add_member(:storage_type_name, Shapes::ShapeRef.new(shape: StorageTypeName, location_name: "StorageTypeName"))
    StorageType.add_member(:storage_sub_type_name, Shapes::ShapeRef.new(shape: StorageSubTypeName, location_name: "StorageSubTypeName"))
    StorageType.add_member(:storage_type_limits, Shapes::ShapeRef.new(shape: StorageTypeLimitList, location_name: "StorageTypeLimits"))
    StorageType.struct_class = Types::StorageType

    StorageTypeLimit.add_member(:limit_name, Shapes::ShapeRef.new(shape: LimitName, location_name: "LimitName"))
    StorageTypeLimit.add_member(:limit_values, Shapes::ShapeRef.new(shape: LimitValueList, location_name: "LimitValues"))
    StorageTypeLimit.struct_class = Types::StorageTypeLimit

    StorageTypeLimitList.member = Shapes::ShapeRef.new(shape: StorageTypeLimit)

    StorageTypeList.member = Shapes::ShapeRef.new(shape: StorageType)

    StringList.member = Shapes::ShapeRef.new(shape: String)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    UpdateElasticsearchDomainConfigRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    UpdateElasticsearchDomainConfigRequest.add_member(:elasticsearch_cluster_config, Shapes::ShapeRef.new(shape: ElasticsearchClusterConfig, location_name: "ElasticsearchClusterConfig"))
    UpdateElasticsearchDomainConfigRequest.add_member(:ebs_options, Shapes::ShapeRef.new(shape: EBSOptions, location_name: "EBSOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:snapshot_options, Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: "SnapshotOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VPCOptions, location_name: "VPCOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:cognito_options, Shapes::ShapeRef.new(shape: CognitoOptions, location_name: "CognitoOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "AdvancedOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:access_policies, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "AccessPolicies"))
    UpdateElasticsearchDomainConfigRequest.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:domain_endpoint_options, Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: "DomainEndpointOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:advanced_security_options, Shapes::ShapeRef.new(shape: AdvancedSecurityOptionsInput, location_name: "AdvancedSecurityOptions"))
    UpdateElasticsearchDomainConfigRequest.struct_class = Types::UpdateElasticsearchDomainConfigRequest

    UpdateElasticsearchDomainConfigResponse.add_member(:domain_config, Shapes::ShapeRef.new(shape: ElasticsearchDomainConfig, required: true, location_name: "DomainConfig"))
    UpdateElasticsearchDomainConfigResponse.struct_class = Types::UpdateElasticsearchDomainConfigResponse

    UpgradeElasticsearchDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    UpgradeElasticsearchDomainRequest.add_member(:target_version, Shapes::ShapeRef.new(shape: ElasticsearchVersionString, required: true, location_name: "TargetVersion"))
    UpgradeElasticsearchDomainRequest.add_member(:perform_check_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "PerformCheckOnly"))
    UpgradeElasticsearchDomainRequest.struct_class = Types::UpgradeElasticsearchDomainRequest

    UpgradeElasticsearchDomainResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    UpgradeElasticsearchDomainResponse.add_member(:target_version, Shapes::ShapeRef.new(shape: ElasticsearchVersionString, location_name: "TargetVersion"))
    UpgradeElasticsearchDomainResponse.add_member(:perform_check_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "PerformCheckOnly"))
    UpgradeElasticsearchDomainResponse.struct_class = Types::UpgradeElasticsearchDomainResponse

    UpgradeHistory.add_member(:upgrade_name, Shapes::ShapeRef.new(shape: UpgradeName, location_name: "UpgradeName"))
    UpgradeHistory.add_member(:start_timestamp, Shapes::ShapeRef.new(shape: StartTimestamp, location_name: "StartTimestamp"))
    UpgradeHistory.add_member(:upgrade_status, Shapes::ShapeRef.new(shape: UpgradeStatus, location_name: "UpgradeStatus"))
    UpgradeHistory.add_member(:steps_list, Shapes::ShapeRef.new(shape: UpgradeStepsList, location_name: "StepsList"))
    UpgradeHistory.struct_class = Types::UpgradeHistory

    UpgradeHistoryList.member = Shapes::ShapeRef.new(shape: UpgradeHistory)

    UpgradeStepItem.add_member(:upgrade_step, Shapes::ShapeRef.new(shape: UpgradeStep, location_name: "UpgradeStep"))
    UpgradeStepItem.add_member(:upgrade_step_status, Shapes::ShapeRef.new(shape: UpgradeStatus, location_name: "UpgradeStepStatus"))
    UpgradeStepItem.add_member(:issues, Shapes::ShapeRef.new(shape: Issues, location_name: "Issues"))
    UpgradeStepItem.add_member(:progress_percent, Shapes::ShapeRef.new(shape: Double, location_name: "ProgressPercent"))
    UpgradeStepItem.struct_class = Types::UpgradeStepItem

    UpgradeStepsList.member = Shapes::ShapeRef.new(shape: UpgradeStepItem)

    VPCDerivedInfo.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VPCId"))
    VPCDerivedInfo.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "SubnetIds"))
    VPCDerivedInfo.add_member(:availability_zones, Shapes::ShapeRef.new(shape: StringList, location_name: "AvailabilityZones"))
    VPCDerivedInfo.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroupIds"))
    VPCDerivedInfo.struct_class = Types::VPCDerivedInfo

    VPCDerivedInfoStatus.add_member(:options, Shapes::ShapeRef.new(shape: VPCDerivedInfo, required: true, location_name: "Options"))
    VPCDerivedInfoStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    VPCDerivedInfoStatus.struct_class = Types::VPCDerivedInfoStatus

    VPCOptions.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "SubnetIds"))
    VPCOptions.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "SecurityGroupIds"))
    VPCOptions.struct_class = Types::VPCOptions

    ValidationException.struct_class = Types::ValidationException

    ValueStringList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    ZoneAwarenessConfig.add_member(:availability_zone_count, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "AvailabilityZoneCount"))
    ZoneAwarenessConfig.struct_class = Types::ZoneAwarenessConfig


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-01-01"

      api.metadata = {
        "apiVersion" => "2015-01-01",
        "endpointPrefix" => "es",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Elasticsearch Service",
        "serviceId" => "Elasticsearch Service",
        "signatureVersion" => "v4",
        "uid" => "es-2015-01-01",
      }

      api.add_operation(:accept_inbound_cross_cluster_search_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptInboundCrossClusterSearchConnection"
        o.http_method = "PUT"
        o.http_request_uri = "/2015-01-01/es/ccs/inboundConnection/{ConnectionId}/accept"
        o.input = Shapes::ShapeRef.new(shape: AcceptInboundCrossClusterSearchConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptInboundCrossClusterSearchConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:add_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddTags"
        o.http_method = "POST"
        o.http_request_uri = "/2015-01-01/tags"
        o.input = Shapes::ShapeRef.new(shape: AddTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:associate_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePackage"
        o.http_method = "POST"
        o.http_request_uri = "/2015-01-01/packages/associate/{PackageID}/{DomainName}"
        o.input = Shapes::ShapeRef.new(shape: AssociatePackageRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociatePackageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:cancel_elasticsearch_service_software_update, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelElasticsearchServiceSoftwareUpdate"
        o.http_method = "POST"
        o.http_request_uri = "/2015-01-01/es/serviceSoftwareUpdate/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelElasticsearchServiceSoftwareUpdateRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelElasticsearchServiceSoftwareUpdateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_elasticsearch_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateElasticsearchDomain"
        o.http_method = "POST"
        o.http_request_uri = "/2015-01-01/es/domain"
        o.input = Shapes::ShapeRef.new(shape: CreateElasticsearchDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateElasticsearchDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_outbound_cross_cluster_search_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOutboundCrossClusterSearchConnection"
        o.http_method = "POST"
        o.http_request_uri = "/2015-01-01/es/ccs/outboundConnection"
        o.input = Shapes::ShapeRef.new(shape: CreateOutboundCrossClusterSearchConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOutboundCrossClusterSearchConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:create_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePackage"
        o.http_method = "POST"
        o.http_request_uri = "/2015-01-01/packages"
        o.input = Shapes::ShapeRef.new(shape: CreatePackageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePackageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_elasticsearch_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteElasticsearchDomain"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-01-01/es/domain/{DomainName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteElasticsearchDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteElasticsearchDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_elasticsearch_service_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteElasticsearchServiceRole"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-01-01/es/role"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_inbound_cross_cluster_search_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInboundCrossClusterSearchConnection"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-01-01/es/ccs/inboundConnection/{ConnectionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteInboundCrossClusterSearchConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInboundCrossClusterSearchConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:delete_outbound_cross_cluster_search_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOutboundCrossClusterSearchConnection"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-01-01/es/ccs/outboundConnection/{ConnectionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteOutboundCrossClusterSearchConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteOutboundCrossClusterSearchConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:delete_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePackage"
        o.http_method = "DELETE"
        o.http_request_uri = "/2015-01-01/packages/{PackageID}"
        o.input = Shapes::ShapeRef.new(shape: DeletePackageRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePackageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_elasticsearch_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeElasticsearchDomain"
        o.http_method = "GET"
        o.http_request_uri = "/2015-01-01/es/domain/{DomainName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeElasticsearchDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeElasticsearchDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_elasticsearch_domain_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeElasticsearchDomainConfig"
        o.http_method = "GET"
        o.http_request_uri = "/2015-01-01/es/domain/{DomainName}/config"
        o.input = Shapes::ShapeRef.new(shape: DescribeElasticsearchDomainConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeElasticsearchDomainConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_elasticsearch_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeElasticsearchDomains"
        o.http_method = "POST"
        o.http_request_uri = "/2015-01-01/es/domain-info"
        o.input = Shapes::ShapeRef.new(shape: DescribeElasticsearchDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeElasticsearchDomainsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_elasticsearch_instance_type_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeElasticsearchInstanceTypeLimits"
        o.http_method = "GET"
        o.http_request_uri = "/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}"
        o.input = Shapes::ShapeRef.new(shape: DescribeElasticsearchInstanceTypeLimitsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeElasticsearchInstanceTypeLimitsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_inbound_cross_cluster_search_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInboundCrossClusterSearchConnections"
        o.http_method = "POST"
        o.http_request_uri = "/2015-01-01/es/ccs/inboundConnection/search"
        o.input = Shapes::ShapeRef.new(shape: DescribeInboundCrossClusterSearchConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInboundCrossClusterSearchConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_outbound_cross_cluster_search_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOutboundCrossClusterSearchConnections"
        o.http_method = "POST"
        o.http_request_uri = "/2015-01-01/es/ccs/outboundConnection/search"
        o.input = Shapes::ShapeRef.new(shape: DescribeOutboundCrossClusterSearchConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOutboundCrossClusterSearchConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_packages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePackages"
        o.http_method = "POST"
        o.http_request_uri = "/2015-01-01/packages/describe"
        o.input = Shapes::ShapeRef.new(shape: DescribePackagesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePackagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_reserved_elasticsearch_instance_offerings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservedElasticsearchInstanceOfferings"
        o.http_method = "GET"
        o.http_request_uri = "/2015-01-01/es/reservedInstanceOfferings"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservedElasticsearchInstanceOfferingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeReservedElasticsearchInstanceOfferingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_reserved_elasticsearch_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReservedElasticsearchInstances"
        o.http_method = "GET"
        o.http_request_uri = "/2015-01-01/es/reservedInstances"
        o.input = Shapes::ShapeRef.new(shape: DescribeReservedElasticsearchInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeReservedElasticsearchInstancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:dissociate_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DissociatePackage"
        o.http_method = "POST"
        o.http_request_uri = "/2015-01-01/packages/dissociate/{PackageID}/{DomainName}"
        o.input = Shapes::ShapeRef.new(shape: DissociatePackageRequest)
        o.output = Shapes::ShapeRef.new(shape: DissociatePackageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_compatible_elasticsearch_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCompatibleElasticsearchVersions"
        o.http_method = "GET"
        o.http_request_uri = "/2015-01-01/es/compatibleVersions"
        o.input = Shapes::ShapeRef.new(shape: GetCompatibleElasticsearchVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCompatibleElasticsearchVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:get_upgrade_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUpgradeHistory"
        o.http_method = "GET"
        o.http_request_uri = "/2015-01-01/es/upgradeDomain/{DomainName}/history"
        o.input = Shapes::ShapeRef.new(shape: GetUpgradeHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUpgradeHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_upgrade_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUpgradeStatus"
        o.http_method = "GET"
        o.http_request_uri = "/2015-01-01/es/upgradeDomain/{DomainName}/status"
        o.input = Shapes::ShapeRef.new(shape: GetUpgradeStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUpgradeStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:list_domain_names, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomainNames"
        o.http_method = "GET"
        o.http_request_uri = "/2015-01-01/domain"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: ListDomainNamesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_domains_for_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomainsForPackage"
        o.http_method = "GET"
        o.http_request_uri = "/2015-01-01/packages/{PackageID}/domains"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsForPackageRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainsForPackageResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_elasticsearch_instance_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListElasticsearchInstanceTypes"
        o.http_method = "GET"
        o.http_request_uri = "/2015-01-01/es/instanceTypes/{ElasticsearchVersion}"
        o.input = Shapes::ShapeRef.new(shape: ListElasticsearchInstanceTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListElasticsearchInstanceTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_elasticsearch_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListElasticsearchVersions"
        o.http_method = "GET"
        o.http_request_uri = "/2015-01-01/es/versions"
        o.input = Shapes::ShapeRef.new(shape: ListElasticsearchVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListElasticsearchVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_packages_for_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPackagesForDomain"
        o.http_method = "GET"
        o.http_request_uri = "/2015-01-01/domain/{DomainName}/packages"
        o.input = Shapes::ShapeRef.new(shape: ListPackagesForDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPackagesForDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "GET"
        o.http_request_uri = "/2015-01-01/tags/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:purchase_reserved_elasticsearch_instance_offering, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PurchaseReservedElasticsearchInstanceOffering"
        o.http_method = "POST"
        o.http_request_uri = "/2015-01-01/es/purchaseReservedInstanceOffering"
        o.input = Shapes::ShapeRef.new(shape: PurchaseReservedElasticsearchInstanceOfferingRequest)
        o.output = Shapes::ShapeRef.new(shape: PurchaseReservedElasticsearchInstanceOfferingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:reject_inbound_cross_cluster_search_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectInboundCrossClusterSearchConnection"
        o.http_method = "PUT"
        o.http_request_uri = "/2015-01-01/es/ccs/inboundConnection/{ConnectionId}/reject"
        o.input = Shapes::ShapeRef.new(shape: RejectInboundCrossClusterSearchConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: RejectInboundCrossClusterSearchConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:remove_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveTags"
        o.http_method = "POST"
        o.http_request_uri = "/2015-01-01/tags-removal"
        o.input = Shapes::ShapeRef.new(shape: RemoveTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:start_elasticsearch_service_software_update, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartElasticsearchServiceSoftwareUpdate"
        o.http_method = "POST"
        o.http_request_uri = "/2015-01-01/es/serviceSoftwareUpdate/start"
        o.input = Shapes::ShapeRef.new(shape: StartElasticsearchServiceSoftwareUpdateRequest)
        o.output = Shapes::ShapeRef.new(shape: StartElasticsearchServiceSoftwareUpdateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_elasticsearch_domain_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateElasticsearchDomainConfig"
        o.http_method = "POST"
        o.http_request_uri = "/2015-01-01/es/domain/{DomainName}/config"
        o.input = Shapes::ShapeRef.new(shape: UpdateElasticsearchDomainConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateElasticsearchDomainConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:upgrade_elasticsearch_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpgradeElasticsearchDomain"
        o.http_method = "POST"
        o.http_request_uri = "/2015-01-01/es/upgradeDomain"
        o.input = Shapes::ShapeRef.new(shape: UpgradeElasticsearchDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: UpgradeElasticsearchDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)
    end

  end
end
