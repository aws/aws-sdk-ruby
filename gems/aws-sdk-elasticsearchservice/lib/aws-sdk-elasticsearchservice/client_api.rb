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
    AccessPoliciesStatus = Shapes::StructureShape.new(name: 'AccessPoliciesStatus')
    AddTagsRequest = Shapes::StructureShape.new(name: 'AddTagsRequest')
    AdditionalLimit = Shapes::StructureShape.new(name: 'AdditionalLimit')
    AdditionalLimitList = Shapes::ListShape.new(name: 'AdditionalLimitList')
    AdvancedOptions = Shapes::MapShape.new(name: 'AdvancedOptions')
    AdvancedOptionsStatus = Shapes::StructureShape.new(name: 'AdvancedOptionsStatus')
    BaseException = Shapes::StructureShape.new(name: 'BaseException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CloudWatchLogsLogGroupArn = Shapes::StringShape.new(name: 'CloudWatchLogsLogGroupArn')
    CreateElasticsearchDomainRequest = Shapes::StructureShape.new(name: 'CreateElasticsearchDomainRequest')
    CreateElasticsearchDomainResponse = Shapes::StructureShape.new(name: 'CreateElasticsearchDomainResponse')
    DeleteElasticsearchDomainRequest = Shapes::StructureShape.new(name: 'DeleteElasticsearchDomainRequest')
    DeleteElasticsearchDomainResponse = Shapes::StructureShape.new(name: 'DeleteElasticsearchDomainResponse')
    DescribeElasticsearchDomainConfigRequest = Shapes::StructureShape.new(name: 'DescribeElasticsearchDomainConfigRequest')
    DescribeElasticsearchDomainConfigResponse = Shapes::StructureShape.new(name: 'DescribeElasticsearchDomainConfigResponse')
    DescribeElasticsearchDomainRequest = Shapes::StructureShape.new(name: 'DescribeElasticsearchDomainRequest')
    DescribeElasticsearchDomainResponse = Shapes::StructureShape.new(name: 'DescribeElasticsearchDomainResponse')
    DescribeElasticsearchDomainsRequest = Shapes::StructureShape.new(name: 'DescribeElasticsearchDomainsRequest')
    DescribeElasticsearchDomainsResponse = Shapes::StructureShape.new(name: 'DescribeElasticsearchDomainsResponse')
    DescribeElasticsearchInstanceTypeLimitsRequest = Shapes::StructureShape.new(name: 'DescribeElasticsearchInstanceTypeLimitsRequest')
    DescribeElasticsearchInstanceTypeLimitsResponse = Shapes::StructureShape.new(name: 'DescribeElasticsearchInstanceTypeLimitsResponse')
    DisabledOperationException = Shapes::StructureShape.new(name: 'DisabledOperationException')
    DomainId = Shapes::StringShape.new(name: 'DomainId')
    DomainInfo = Shapes::StructureShape.new(name: 'DomainInfo')
    DomainInfoList = Shapes::ListShape.new(name: 'DomainInfoList')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainNameList = Shapes::ListShape.new(name: 'DomainNameList')
    EBSOptions = Shapes::StructureShape.new(name: 'EBSOptions')
    EBSOptionsStatus = Shapes::StructureShape.new(name: 'EBSOptionsStatus')
    ESPartitionInstanceType = Shapes::StringShape.new(name: 'ESPartitionInstanceType')
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
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    InstanceCountLimits = Shapes::StructureShape.new(name: 'InstanceCountLimits')
    InstanceLimits = Shapes::StructureShape.new(name: 'InstanceLimits')
    InstanceRole = Shapes::StringShape.new(name: 'InstanceRole')
    IntegerClass = Shapes::IntegerShape.new(name: 'IntegerClass')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InvalidTypeException = Shapes::StructureShape.new(name: 'InvalidTypeException')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LimitName = Shapes::StringShape.new(name: 'LimitName')
    LimitValue = Shapes::StringShape.new(name: 'LimitValue')
    LimitValueList = Shapes::ListShape.new(name: 'LimitValueList')
    Limits = Shapes::StructureShape.new(name: 'Limits')
    LimitsByRole = Shapes::MapShape.new(name: 'LimitsByRole')
    ListDomainNamesResponse = Shapes::StructureShape.new(name: 'ListDomainNamesResponse')
    ListElasticsearchInstanceTypesRequest = Shapes::StructureShape.new(name: 'ListElasticsearchInstanceTypesRequest')
    ListElasticsearchInstanceTypesResponse = Shapes::StructureShape.new(name: 'ListElasticsearchInstanceTypesResponse')
    ListElasticsearchVersionsRequest = Shapes::StructureShape.new(name: 'ListElasticsearchVersionsRequest')
    ListElasticsearchVersionsResponse = Shapes::StructureShape.new(name: 'ListElasticsearchVersionsResponse')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResponse = Shapes::StructureShape.new(name: 'ListTagsResponse')
    LogPublishingOption = Shapes::StructureShape.new(name: 'LogPublishingOption')
    LogPublishingOptions = Shapes::MapShape.new(name: 'LogPublishingOptions')
    LogPublishingOptionsStatus = Shapes::StructureShape.new(name: 'LogPublishingOptionsStatus')
    LogType = Shapes::StringShape.new(name: 'LogType')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumInstanceCount = Shapes::IntegerShape.new(name: 'MaximumInstanceCount')
    MinimumInstanceCount = Shapes::IntegerShape.new(name: 'MinimumInstanceCount')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OptionState = Shapes::StringShape.new(name: 'OptionState')
    OptionStatus = Shapes::StructureShape.new(name: 'OptionStatus')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    RemoveTagsRequest = Shapes::StructureShape.new(name: 'RemoveTagsRequest')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceUrl = Shapes::StringShape.new(name: 'ServiceUrl')
    SnapshotOptions = Shapes::StructureShape.new(name: 'SnapshotOptions')
    SnapshotOptionsStatus = Shapes::StructureShape.new(name: 'SnapshotOptionsStatus')
    StorageSubTypeName = Shapes::StringShape.new(name: 'StorageSubTypeName')
    StorageType = Shapes::StructureShape.new(name: 'StorageType')
    StorageTypeLimit = Shapes::StructureShape.new(name: 'StorageTypeLimit')
    StorageTypeLimitList = Shapes::ListShape.new(name: 'StorageTypeLimitList')
    StorageTypeList = Shapes::ListShape.new(name: 'StorageTypeList')
    StorageTypeName = Shapes::StringShape.new(name: 'StorageTypeName')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    UIntValue = Shapes::IntegerShape.new(name: 'UIntValue')
    UpdateElasticsearchDomainConfigRequest = Shapes::StructureShape.new(name: 'UpdateElasticsearchDomainConfigRequest')
    UpdateElasticsearchDomainConfigResponse = Shapes::StructureShape.new(name: 'UpdateElasticsearchDomainConfigResponse')
    UpdateTimestamp = Shapes::TimestampShape.new(name: 'UpdateTimestamp')
    VPCDerivedInfo = Shapes::StructureShape.new(name: 'VPCDerivedInfo')
    VPCDerivedInfoStatus = Shapes::StructureShape.new(name: 'VPCDerivedInfoStatus')
    VPCOptions = Shapes::StructureShape.new(name: 'VPCOptions')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VolumeType = Shapes::StringShape.new(name: 'VolumeType')

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

    CreateElasticsearchDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CreateElasticsearchDomainRequest.add_member(:elasticsearch_version, Shapes::ShapeRef.new(shape: ElasticsearchVersionString, location_name: "ElasticsearchVersion"))
    CreateElasticsearchDomainRequest.add_member(:elasticsearch_cluster_config, Shapes::ShapeRef.new(shape: ElasticsearchClusterConfig, location_name: "ElasticsearchClusterConfig"))
    CreateElasticsearchDomainRequest.add_member(:ebs_options, Shapes::ShapeRef.new(shape: EBSOptions, location_name: "EBSOptions"))
    CreateElasticsearchDomainRequest.add_member(:access_policies, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "AccessPolicies"))
    CreateElasticsearchDomainRequest.add_member(:snapshot_options, Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: "SnapshotOptions"))
    CreateElasticsearchDomainRequest.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VPCOptions, location_name: "VPCOptions"))
    CreateElasticsearchDomainRequest.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    CreateElasticsearchDomainRequest.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "AdvancedOptions"))
    CreateElasticsearchDomainRequest.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    CreateElasticsearchDomainRequest.struct_class = Types::CreateElasticsearchDomainRequest

    CreateElasticsearchDomainResponse.add_member(:domain_status, Shapes::ShapeRef.new(shape: ElasticsearchDomainStatus, location_name: "DomainStatus"))
    CreateElasticsearchDomainResponse.struct_class = Types::CreateElasticsearchDomainResponse

    DeleteElasticsearchDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "DomainName"))
    DeleteElasticsearchDomainRequest.struct_class = Types::DeleteElasticsearchDomainRequest

    DeleteElasticsearchDomainResponse.add_member(:domain_status, Shapes::ShapeRef.new(shape: ElasticsearchDomainStatus, location_name: "DomainStatus"))
    DeleteElasticsearchDomainResponse.struct_class = Types::DeleteElasticsearchDomainResponse

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

    DomainInfo.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "DomainName"))
    DomainInfo.struct_class = Types::DomainInfo

    DomainInfoList.member = Shapes::ShapeRef.new(shape: DomainInfo)

    DomainNameList.member = Shapes::ShapeRef.new(shape: DomainName)

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
    ElasticsearchClusterConfig.add_member(:dedicated_master_type, Shapes::ShapeRef.new(shape: ESPartitionInstanceType, location_name: "DedicatedMasterType"))
    ElasticsearchClusterConfig.add_member(:dedicated_master_count, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "DedicatedMasterCount"))
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
    ElasticsearchDomainConfig.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptionsStatus, location_name: "EncryptionAtRestOptions"))
    ElasticsearchDomainConfig.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptionsStatus, location_name: "AdvancedOptions"))
    ElasticsearchDomainConfig.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptionsStatus, location_name: "LogPublishingOptions"))
    ElasticsearchDomainConfig.struct_class = Types::ElasticsearchDomainConfig

    ElasticsearchDomainStatus.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    ElasticsearchDomainStatus.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    ElasticsearchDomainStatus.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ARN"))
    ElasticsearchDomainStatus.add_member(:created, Shapes::ShapeRef.new(shape: Boolean, location_name: "Created"))
    ElasticsearchDomainStatus.add_member(:deleted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Deleted"))
    ElasticsearchDomainStatus.add_member(:endpoint, Shapes::ShapeRef.new(shape: ServiceUrl, location_name: "Endpoint"))
    ElasticsearchDomainStatus.add_member(:endpoints, Shapes::ShapeRef.new(shape: EndpointsMap, location_name: "Endpoints"))
    ElasticsearchDomainStatus.add_member(:processing, Shapes::ShapeRef.new(shape: Boolean, location_name: "Processing"))
    ElasticsearchDomainStatus.add_member(:elasticsearch_version, Shapes::ShapeRef.new(shape: ElasticsearchVersionString, location_name: "ElasticsearchVersion"))
    ElasticsearchDomainStatus.add_member(:elasticsearch_cluster_config, Shapes::ShapeRef.new(shape: ElasticsearchClusterConfig, required: true, location_name: "ElasticsearchClusterConfig"))
    ElasticsearchDomainStatus.add_member(:ebs_options, Shapes::ShapeRef.new(shape: EBSOptions, location_name: "EBSOptions"))
    ElasticsearchDomainStatus.add_member(:access_policies, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "AccessPolicies"))
    ElasticsearchDomainStatus.add_member(:snapshot_options, Shapes::ShapeRef.new(shape: SnapshotOptions, location_name: "SnapshotOptions"))
    ElasticsearchDomainStatus.add_member(:vpc_options, Shapes::ShapeRef.new(shape: VPCDerivedInfo, location_name: "VPCOptions"))
    ElasticsearchDomainStatus.add_member(:encryption_at_rest_options, Shapes::ShapeRef.new(shape: EncryptionAtRestOptions, location_name: "EncryptionAtRestOptions"))
    ElasticsearchDomainStatus.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "AdvancedOptions"))
    ElasticsearchDomainStatus.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
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

    InstanceCountLimits.add_member(:minimum_instance_count, Shapes::ShapeRef.new(shape: MinimumInstanceCount, location_name: "MinimumInstanceCount"))
    InstanceCountLimits.add_member(:maximum_instance_count, Shapes::ShapeRef.new(shape: MaximumInstanceCount, location_name: "MaximumInstanceCount"))
    InstanceCountLimits.struct_class = Types::InstanceCountLimits

    InstanceLimits.add_member(:instance_count_limits, Shapes::ShapeRef.new(shape: InstanceCountLimits, location_name: "InstanceCountLimits"))
    InstanceLimits.struct_class = Types::InstanceLimits

    LimitValueList.member = Shapes::ShapeRef.new(shape: LimitValue)

    Limits.add_member(:storage_types, Shapes::ShapeRef.new(shape: StorageTypeList, location_name: "StorageTypes"))
    Limits.add_member(:instance_limits, Shapes::ShapeRef.new(shape: InstanceLimits, location_name: "InstanceLimits"))
    Limits.add_member(:additional_limits, Shapes::ShapeRef.new(shape: AdditionalLimitList, location_name: "AdditionalLimits"))
    Limits.struct_class = Types::Limits

    LimitsByRole.key = Shapes::ShapeRef.new(shape: InstanceRole)
    LimitsByRole.value = Shapes::ShapeRef.new(shape: Limits)

    ListDomainNamesResponse.add_member(:domain_names, Shapes::ShapeRef.new(shape: DomainInfoList, location_name: "DomainNames"))
    ListDomainNamesResponse.struct_class = Types::ListDomainNamesResponse

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

    OptionStatus.add_member(:creation_date, Shapes::ShapeRef.new(shape: UpdateTimestamp, required: true, location_name: "CreationDate"))
    OptionStatus.add_member(:update_date, Shapes::ShapeRef.new(shape: UpdateTimestamp, required: true, location_name: "UpdateDate"))
    OptionStatus.add_member(:update_version, Shapes::ShapeRef.new(shape: UIntValue, location_name: "UpdateVersion"))
    OptionStatus.add_member(:state, Shapes::ShapeRef.new(shape: OptionState, required: true, location_name: "State"))
    OptionStatus.add_member(:pending_deletion, Shapes::ShapeRef.new(shape: Boolean, location_name: "PendingDeletion"))
    OptionStatus.struct_class = Types::OptionStatus

    RemoveTagsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, required: true, location_name: "ARN"))
    RemoveTagsRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "TagKeys"))
    RemoveTagsRequest.struct_class = Types::RemoveTagsRequest

    SnapshotOptions.add_member(:automated_snapshot_start_hour, Shapes::ShapeRef.new(shape: IntegerClass, location_name: "AutomatedSnapshotStartHour"))
    SnapshotOptions.struct_class = Types::SnapshotOptions

    SnapshotOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: SnapshotOptions, required: true, location_name: "Options"))
    SnapshotOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    SnapshotOptionsStatus.struct_class = Types::SnapshotOptionsStatus

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
    UpdateElasticsearchDomainConfigRequest.add_member(:advanced_options, Shapes::ShapeRef.new(shape: AdvancedOptions, location_name: "AdvancedOptions"))
    UpdateElasticsearchDomainConfigRequest.add_member(:access_policies, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "AccessPolicies"))
    UpdateElasticsearchDomainConfigRequest.add_member(:log_publishing_options, Shapes::ShapeRef.new(shape: LogPublishingOptions, location_name: "LogPublishingOptions"))
    UpdateElasticsearchDomainConfigRequest.struct_class = Types::UpdateElasticsearchDomainConfigRequest

    UpdateElasticsearchDomainConfigResponse.add_member(:domain_config, Shapes::ShapeRef.new(shape: ElasticsearchDomainConfig, required: true, location_name: "DomainConfig"))
    UpdateElasticsearchDomainConfigResponse.struct_class = Types::UpdateElasticsearchDomainConfigResponse

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


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-01-01"

      api.metadata = {
        "endpointPrefix" => "es",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Elasticsearch Service",
        "signatureVersion" => "v4",
      }

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

      api.add_operation(:list_domain_names, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomainNames"
        o.http_method = "GET"
        o.http_request_uri = "/2015-01-01/domain"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: ListDomainNamesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
    end

  end
end
