# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ConfigService
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AllSupported = Shapes::BooleanShape.new(name: 'AllSupported')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    AwsRegion = Shapes::StringShape.new(name: 'AwsRegion')
    BaseResourceId = Shapes::StringShape.new(name: 'BaseResourceId')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChannelName = Shapes::StringShape.new(name: 'ChannelName')
    ChronologicalOrder = Shapes::StringShape.new(name: 'ChronologicalOrder')
    Compliance = Shapes::StructureShape.new(name: 'Compliance')
    ComplianceByConfigRule = Shapes::StructureShape.new(name: 'ComplianceByConfigRule')
    ComplianceByConfigRules = Shapes::ListShape.new(name: 'ComplianceByConfigRules')
    ComplianceByResource = Shapes::StructureShape.new(name: 'ComplianceByResource')
    ComplianceByResources = Shapes::ListShape.new(name: 'ComplianceByResources')
    ComplianceContributorCount = Shapes::StructureShape.new(name: 'ComplianceContributorCount')
    ComplianceResourceTypes = Shapes::ListShape.new(name: 'ComplianceResourceTypes')
    ComplianceSummariesByResourceType = Shapes::ListShape.new(name: 'ComplianceSummariesByResourceType')
    ComplianceSummary = Shapes::StructureShape.new(name: 'ComplianceSummary')
    ComplianceSummaryByResourceType = Shapes::StructureShape.new(name: 'ComplianceSummaryByResourceType')
    ComplianceType = Shapes::StringShape.new(name: 'ComplianceType')
    ComplianceTypes = Shapes::ListShape.new(name: 'ComplianceTypes')
    ConfigExportDeliveryInfo = Shapes::StructureShape.new(name: 'ConfigExportDeliveryInfo')
    ConfigRule = Shapes::StructureShape.new(name: 'ConfigRule')
    ConfigRuleEvaluationStatus = Shapes::StructureShape.new(name: 'ConfigRuleEvaluationStatus')
    ConfigRuleEvaluationStatusList = Shapes::ListShape.new(name: 'ConfigRuleEvaluationStatusList')
    ConfigRuleNames = Shapes::ListShape.new(name: 'ConfigRuleNames')
    ConfigRuleState = Shapes::StringShape.new(name: 'ConfigRuleState')
    ConfigRules = Shapes::ListShape.new(name: 'ConfigRules')
    ConfigSnapshotDeliveryProperties = Shapes::StructureShape.new(name: 'ConfigSnapshotDeliveryProperties')
    ConfigStreamDeliveryInfo = Shapes::StructureShape.new(name: 'ConfigStreamDeliveryInfo')
    Configuration = Shapes::StringShape.new(name: 'Configuration')
    ConfigurationItem = Shapes::StructureShape.new(name: 'ConfigurationItem')
    ConfigurationItemCaptureTime = Shapes::TimestampShape.new(name: 'ConfigurationItemCaptureTime')
    ConfigurationItemList = Shapes::ListShape.new(name: 'ConfigurationItemList')
    ConfigurationItemMD5Hash = Shapes::StringShape.new(name: 'ConfigurationItemMD5Hash')
    ConfigurationItemStatus = Shapes::StringShape.new(name: 'ConfigurationItemStatus')
    ConfigurationRecorder = Shapes::StructureShape.new(name: 'ConfigurationRecorder')
    ConfigurationRecorderList = Shapes::ListShape.new(name: 'ConfigurationRecorderList')
    ConfigurationRecorderNameList = Shapes::ListShape.new(name: 'ConfigurationRecorderNameList')
    ConfigurationRecorderStatus = Shapes::StructureShape.new(name: 'ConfigurationRecorderStatus')
    ConfigurationRecorderStatusList = Shapes::ListShape.new(name: 'ConfigurationRecorderStatusList')
    ConfigurationStateId = Shapes::StringShape.new(name: 'ConfigurationStateId')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeleteConfigRuleRequest = Shapes::StructureShape.new(name: 'DeleteConfigRuleRequest')
    DeleteConfigurationRecorderRequest = Shapes::StructureShape.new(name: 'DeleteConfigurationRecorderRequest')
    DeleteDeliveryChannelRequest = Shapes::StructureShape.new(name: 'DeleteDeliveryChannelRequest')
    DeleteEvaluationResultsRequest = Shapes::StructureShape.new(name: 'DeleteEvaluationResultsRequest')
    DeleteEvaluationResultsResponse = Shapes::StructureShape.new(name: 'DeleteEvaluationResultsResponse')
    DeliverConfigSnapshotRequest = Shapes::StructureShape.new(name: 'DeliverConfigSnapshotRequest')
    DeliverConfigSnapshotResponse = Shapes::StructureShape.new(name: 'DeliverConfigSnapshotResponse')
    DeliveryChannel = Shapes::StructureShape.new(name: 'DeliveryChannel')
    DeliveryChannelList = Shapes::ListShape.new(name: 'DeliveryChannelList')
    DeliveryChannelNameList = Shapes::ListShape.new(name: 'DeliveryChannelNameList')
    DeliveryChannelStatus = Shapes::StructureShape.new(name: 'DeliveryChannelStatus')
    DeliveryChannelStatusList = Shapes::ListShape.new(name: 'DeliveryChannelStatusList')
    DeliveryStatus = Shapes::StringShape.new(name: 'DeliveryStatus')
    DescribeComplianceByConfigRuleRequest = Shapes::StructureShape.new(name: 'DescribeComplianceByConfigRuleRequest')
    DescribeComplianceByConfigRuleResponse = Shapes::StructureShape.new(name: 'DescribeComplianceByConfigRuleResponse')
    DescribeComplianceByResourceRequest = Shapes::StructureShape.new(name: 'DescribeComplianceByResourceRequest')
    DescribeComplianceByResourceResponse = Shapes::StructureShape.new(name: 'DescribeComplianceByResourceResponse')
    DescribeConfigRuleEvaluationStatusRequest = Shapes::StructureShape.new(name: 'DescribeConfigRuleEvaluationStatusRequest')
    DescribeConfigRuleEvaluationStatusResponse = Shapes::StructureShape.new(name: 'DescribeConfigRuleEvaluationStatusResponse')
    DescribeConfigRulesRequest = Shapes::StructureShape.new(name: 'DescribeConfigRulesRequest')
    DescribeConfigRulesResponse = Shapes::StructureShape.new(name: 'DescribeConfigRulesResponse')
    DescribeConfigurationRecorderStatusRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationRecorderStatusRequest')
    DescribeConfigurationRecorderStatusResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationRecorderStatusResponse')
    DescribeConfigurationRecordersRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationRecordersRequest')
    DescribeConfigurationRecordersResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationRecordersResponse')
    DescribeDeliveryChannelStatusRequest = Shapes::StructureShape.new(name: 'DescribeDeliveryChannelStatusRequest')
    DescribeDeliveryChannelStatusResponse = Shapes::StructureShape.new(name: 'DescribeDeliveryChannelStatusResponse')
    DescribeDeliveryChannelsRequest = Shapes::StructureShape.new(name: 'DescribeDeliveryChannelsRequest')
    DescribeDeliveryChannelsResponse = Shapes::StructureShape.new(name: 'DescribeDeliveryChannelsResponse')
    EarlierTime = Shapes::TimestampShape.new(name: 'EarlierTime')
    EmptiableStringWithCharLimit256 = Shapes::StringShape.new(name: 'EmptiableStringWithCharLimit256')
    Evaluation = Shapes::StructureShape.new(name: 'Evaluation')
    EvaluationResult = Shapes::StructureShape.new(name: 'EvaluationResult')
    EvaluationResultIdentifier = Shapes::StructureShape.new(name: 'EvaluationResultIdentifier')
    EvaluationResultQualifier = Shapes::StructureShape.new(name: 'EvaluationResultQualifier')
    EvaluationResults = Shapes::ListShape.new(name: 'EvaluationResults')
    Evaluations = Shapes::ListShape.new(name: 'Evaluations')
    EventSource = Shapes::StringShape.new(name: 'EventSource')
    GetComplianceDetailsByConfigRuleRequest = Shapes::StructureShape.new(name: 'GetComplianceDetailsByConfigRuleRequest')
    GetComplianceDetailsByConfigRuleResponse = Shapes::StructureShape.new(name: 'GetComplianceDetailsByConfigRuleResponse')
    GetComplianceDetailsByResourceRequest = Shapes::StructureShape.new(name: 'GetComplianceDetailsByResourceRequest')
    GetComplianceDetailsByResourceResponse = Shapes::StructureShape.new(name: 'GetComplianceDetailsByResourceResponse')
    GetComplianceSummaryByConfigRuleResponse = Shapes::StructureShape.new(name: 'GetComplianceSummaryByConfigRuleResponse')
    GetComplianceSummaryByResourceTypeRequest = Shapes::StructureShape.new(name: 'GetComplianceSummaryByResourceTypeRequest')
    GetComplianceSummaryByResourceTypeResponse = Shapes::StructureShape.new(name: 'GetComplianceSummaryByResourceTypeResponse')
    GetDiscoveredResourceCountsRequest = Shapes::StructureShape.new(name: 'GetDiscoveredResourceCountsRequest')
    GetDiscoveredResourceCountsResponse = Shapes::StructureShape.new(name: 'GetDiscoveredResourceCountsResponse')
    GetResourceConfigHistoryRequest = Shapes::StructureShape.new(name: 'GetResourceConfigHistoryRequest')
    GetResourceConfigHistoryResponse = Shapes::StructureShape.new(name: 'GetResourceConfigHistoryResponse')
    IncludeGlobalResourceTypes = Shapes::BooleanShape.new(name: 'IncludeGlobalResourceTypes')
    InsufficientDeliveryPolicyException = Shapes::StructureShape.new(name: 'InsufficientDeliveryPolicyException')
    InsufficientPermissionsException = Shapes::StructureShape.new(name: 'InsufficientPermissionsException')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidConfigurationRecorderNameException = Shapes::StructureShape.new(name: 'InvalidConfigurationRecorderNameException')
    InvalidDeliveryChannelNameException = Shapes::StructureShape.new(name: 'InvalidDeliveryChannelNameException')
    InvalidLimitException = Shapes::StructureShape.new(name: 'InvalidLimitException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    InvalidRecordingGroupException = Shapes::StructureShape.new(name: 'InvalidRecordingGroupException')
    InvalidResultTokenException = Shapes::StructureShape.new(name: 'InvalidResultTokenException')
    InvalidRoleException = Shapes::StructureShape.new(name: 'InvalidRoleException')
    InvalidS3KeyPrefixException = Shapes::StructureShape.new(name: 'InvalidS3KeyPrefixException')
    InvalidSNSTopicARNException = Shapes::StructureShape.new(name: 'InvalidSNSTopicARNException')
    InvalidTimeRangeException = Shapes::StructureShape.new(name: 'InvalidTimeRangeException')
    LastDeliveryChannelDeleteFailedException = Shapes::StructureShape.new(name: 'LastDeliveryChannelDeleteFailedException')
    LaterTime = Shapes::TimestampShape.new(name: 'LaterTime')
    Limit = Shapes::IntegerShape.new(name: 'Limit')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListDiscoveredResourcesRequest = Shapes::StructureShape.new(name: 'ListDiscoveredResourcesRequest')
    ListDiscoveredResourcesResponse = Shapes::StructureShape.new(name: 'ListDiscoveredResourcesResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxNumberOfConfigRulesExceededException = Shapes::StructureShape.new(name: 'MaxNumberOfConfigRulesExceededException')
    MaxNumberOfConfigurationRecordersExceededException = Shapes::StructureShape.new(name: 'MaxNumberOfConfigurationRecordersExceededException')
    MaxNumberOfDeliveryChannelsExceededException = Shapes::StructureShape.new(name: 'MaxNumberOfDeliveryChannelsExceededException')
    MaximumExecutionFrequency = Shapes::StringShape.new(name: 'MaximumExecutionFrequency')
    MessageType = Shapes::StringShape.new(name: 'MessageType')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NoAvailableConfigurationRecorderException = Shapes::StructureShape.new(name: 'NoAvailableConfigurationRecorderException')
    NoAvailableDeliveryChannelException = Shapes::StructureShape.new(name: 'NoAvailableDeliveryChannelException')
    NoRunningConfigurationRecorderException = Shapes::StructureShape.new(name: 'NoRunningConfigurationRecorderException')
    NoSuchBucketException = Shapes::StructureShape.new(name: 'NoSuchBucketException')
    NoSuchConfigRuleException = Shapes::StructureShape.new(name: 'NoSuchConfigRuleException')
    NoSuchConfigurationRecorderException = Shapes::StructureShape.new(name: 'NoSuchConfigurationRecorderException')
    NoSuchDeliveryChannelException = Shapes::StructureShape.new(name: 'NoSuchDeliveryChannelException')
    OrderingTimestamp = Shapes::TimestampShape.new(name: 'OrderingTimestamp')
    Owner = Shapes::StringShape.new(name: 'Owner')
    PutConfigRuleRequest = Shapes::StructureShape.new(name: 'PutConfigRuleRequest')
    PutConfigurationRecorderRequest = Shapes::StructureShape.new(name: 'PutConfigurationRecorderRequest')
    PutDeliveryChannelRequest = Shapes::StructureShape.new(name: 'PutDeliveryChannelRequest')
    PutEvaluationsRequest = Shapes::StructureShape.new(name: 'PutEvaluationsRequest')
    PutEvaluationsResponse = Shapes::StructureShape.new(name: 'PutEvaluationsResponse')
    RecorderName = Shapes::StringShape.new(name: 'RecorderName')
    RecorderStatus = Shapes::StringShape.new(name: 'RecorderStatus')
    RecordingGroup = Shapes::StructureShape.new(name: 'RecordingGroup')
    ReevaluateConfigRuleNames = Shapes::ListShape.new(name: 'ReevaluateConfigRuleNames')
    RelatedEvent = Shapes::StringShape.new(name: 'RelatedEvent')
    RelatedEventList = Shapes::ListShape.new(name: 'RelatedEventList')
    Relationship = Shapes::StructureShape.new(name: 'Relationship')
    RelationshipList = Shapes::ListShape.new(name: 'RelationshipList')
    RelationshipName = Shapes::StringShape.new(name: 'RelationshipName')
    ResourceCount = Shapes::StructureShape.new(name: 'ResourceCount')
    ResourceCounts = Shapes::ListShape.new(name: 'ResourceCounts')
    ResourceCreationTime = Shapes::TimestampShape.new(name: 'ResourceCreationTime')
    ResourceDeletionTime = Shapes::TimestampShape.new(name: 'ResourceDeletionTime')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceIdList = Shapes::ListShape.new(name: 'ResourceIdList')
    ResourceIdentifier = Shapes::StructureShape.new(name: 'ResourceIdentifier')
    ResourceIdentifierList = Shapes::ListShape.new(name: 'ResourceIdentifierList')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotDiscoveredException = Shapes::StructureShape.new(name: 'ResourceNotDiscoveredException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypeList = Shapes::ListShape.new(name: 'ResourceTypeList')
    ResourceTypes = Shapes::ListShape.new(name: 'ResourceTypes')
    RuleLimit = Shapes::IntegerShape.new(name: 'RuleLimit')
    Scope = Shapes::StructureShape.new(name: 'Scope')
    Source = Shapes::StructureShape.new(name: 'Source')
    SourceDetail = Shapes::StructureShape.new(name: 'SourceDetail')
    SourceDetails = Shapes::ListShape.new(name: 'SourceDetails')
    StartConfigRulesEvaluationRequest = Shapes::StructureShape.new(name: 'StartConfigRulesEvaluationRequest')
    StartConfigRulesEvaluationResponse = Shapes::StructureShape.new(name: 'StartConfigRulesEvaluationResponse')
    StartConfigurationRecorderRequest = Shapes::StructureShape.new(name: 'StartConfigurationRecorderRequest')
    StopConfigurationRecorderRequest = Shapes::StructureShape.new(name: 'StopConfigurationRecorderRequest')
    String = Shapes::StringShape.new(name: 'String')
    StringWithCharLimit1024 = Shapes::StringShape.new(name: 'StringWithCharLimit1024')
    StringWithCharLimit128 = Shapes::StringShape.new(name: 'StringWithCharLimit128')
    StringWithCharLimit256 = Shapes::StringShape.new(name: 'StringWithCharLimit256')
    StringWithCharLimit64 = Shapes::StringShape.new(name: 'StringWithCharLimit64')
    SupplementaryConfiguration = Shapes::MapShape.new(name: 'SupplementaryConfiguration')
    SupplementaryConfigurationName = Shapes::StringShape.new(name: 'SupplementaryConfigurationName')
    SupplementaryConfigurationValue = Shapes::StringShape.new(name: 'SupplementaryConfigurationValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Value = Shapes::StringShape.new(name: 'Value')
    Version = Shapes::StringShape.new(name: 'Version')

    Compliance.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceType, location_name: "ComplianceType"))
    Compliance.add_member(:compliance_contributor_count, Shapes::ShapeRef.new(shape: ComplianceContributorCount, location_name: "ComplianceContributorCount"))
    Compliance.struct_class = Types::Compliance

    ComplianceByConfigRule.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: StringWithCharLimit64, location_name: "ConfigRuleName"))
    ComplianceByConfigRule.add_member(:compliance, Shapes::ShapeRef.new(shape: Compliance, location_name: "Compliance"))
    ComplianceByConfigRule.struct_class = Types::ComplianceByConfigRule

    ComplianceByConfigRules.member = Shapes::ShapeRef.new(shape: ComplianceByConfigRule)

    ComplianceByResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "ResourceType"))
    ComplianceByResource.add_member(:resource_id, Shapes::ShapeRef.new(shape: BaseResourceId, location_name: "ResourceId"))
    ComplianceByResource.add_member(:compliance, Shapes::ShapeRef.new(shape: Compliance, location_name: "Compliance"))
    ComplianceByResource.struct_class = Types::ComplianceByResource

    ComplianceByResources.member = Shapes::ShapeRef.new(shape: ComplianceByResource)

    ComplianceContributorCount.add_member(:capped_count, Shapes::ShapeRef.new(shape: Integer, location_name: "CappedCount"))
    ComplianceContributorCount.add_member(:cap_exceeded, Shapes::ShapeRef.new(shape: Boolean, location_name: "CapExceeded"))
    ComplianceContributorCount.struct_class = Types::ComplianceContributorCount

    ComplianceResourceTypes.member = Shapes::ShapeRef.new(shape: StringWithCharLimit256)

    ComplianceSummariesByResourceType.member = Shapes::ShapeRef.new(shape: ComplianceSummaryByResourceType)

    ComplianceSummary.add_member(:compliant_resource_count, Shapes::ShapeRef.new(shape: ComplianceContributorCount, location_name: "CompliantResourceCount"))
    ComplianceSummary.add_member(:non_compliant_resource_count, Shapes::ShapeRef.new(shape: ComplianceContributorCount, location_name: "NonCompliantResourceCount"))
    ComplianceSummary.add_member(:compliance_summary_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "ComplianceSummaryTimestamp"))
    ComplianceSummary.struct_class = Types::ComplianceSummary

    ComplianceSummaryByResourceType.add_member(:resource_type, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "ResourceType"))
    ComplianceSummaryByResourceType.add_member(:compliance_summary, Shapes::ShapeRef.new(shape: ComplianceSummary, location_name: "ComplianceSummary"))
    ComplianceSummaryByResourceType.struct_class = Types::ComplianceSummaryByResourceType

    ComplianceTypes.member = Shapes::ShapeRef.new(shape: ComplianceType)

    ConfigExportDeliveryInfo.add_member(:last_status, Shapes::ShapeRef.new(shape: DeliveryStatus, location_name: "lastStatus"))
    ConfigExportDeliveryInfo.add_member(:last_error_code, Shapes::ShapeRef.new(shape: String, location_name: "lastErrorCode"))
    ConfigExportDeliveryInfo.add_member(:last_error_message, Shapes::ShapeRef.new(shape: String, location_name: "lastErrorMessage"))
    ConfigExportDeliveryInfo.add_member(:last_attempt_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastAttemptTime"))
    ConfigExportDeliveryInfo.add_member(:last_successful_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastSuccessfulTime"))
    ConfigExportDeliveryInfo.add_member(:next_delivery_time, Shapes::ShapeRef.new(shape: Date, location_name: "nextDeliveryTime"))
    ConfigExportDeliveryInfo.struct_class = Types::ConfigExportDeliveryInfo

    ConfigRule.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: StringWithCharLimit64, location_name: "ConfigRuleName"))
    ConfigRule.add_member(:config_rule_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConfigRuleArn"))
    ConfigRule.add_member(:config_rule_id, Shapes::ShapeRef.new(shape: String, location_name: "ConfigRuleId"))
    ConfigRule.add_member(:description, Shapes::ShapeRef.new(shape: EmptiableStringWithCharLimit256, location_name: "Description"))
    ConfigRule.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, location_name: "Scope"))
    ConfigRule.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "Source"))
    ConfigRule.add_member(:input_parameters, Shapes::ShapeRef.new(shape: StringWithCharLimit1024, location_name: "InputParameters"))
    ConfigRule.add_member(:maximum_execution_frequency, Shapes::ShapeRef.new(shape: MaximumExecutionFrequency, location_name: "MaximumExecutionFrequency"))
    ConfigRule.add_member(:config_rule_state, Shapes::ShapeRef.new(shape: ConfigRuleState, location_name: "ConfigRuleState"))
    ConfigRule.struct_class = Types::ConfigRule

    ConfigRuleEvaluationStatus.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: StringWithCharLimit64, location_name: "ConfigRuleName"))
    ConfigRuleEvaluationStatus.add_member(:config_rule_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConfigRuleArn"))
    ConfigRuleEvaluationStatus.add_member(:config_rule_id, Shapes::ShapeRef.new(shape: String, location_name: "ConfigRuleId"))
    ConfigRuleEvaluationStatus.add_member(:last_successful_invocation_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastSuccessfulInvocationTime"))
    ConfigRuleEvaluationStatus.add_member(:last_failed_invocation_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastFailedInvocationTime"))
    ConfigRuleEvaluationStatus.add_member(:last_successful_evaluation_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastSuccessfulEvaluationTime"))
    ConfigRuleEvaluationStatus.add_member(:last_failed_evaluation_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastFailedEvaluationTime"))
    ConfigRuleEvaluationStatus.add_member(:first_activated_time, Shapes::ShapeRef.new(shape: Date, location_name: "FirstActivatedTime"))
    ConfigRuleEvaluationStatus.add_member(:last_error_code, Shapes::ShapeRef.new(shape: String, location_name: "LastErrorCode"))
    ConfigRuleEvaluationStatus.add_member(:last_error_message, Shapes::ShapeRef.new(shape: String, location_name: "LastErrorMessage"))
    ConfigRuleEvaluationStatus.add_member(:first_evaluation_started, Shapes::ShapeRef.new(shape: Boolean, location_name: "FirstEvaluationStarted"))
    ConfigRuleEvaluationStatus.struct_class = Types::ConfigRuleEvaluationStatus

    ConfigRuleEvaluationStatusList.member = Shapes::ShapeRef.new(shape: ConfigRuleEvaluationStatus)

    ConfigRuleNames.member = Shapes::ShapeRef.new(shape: StringWithCharLimit64)

    ConfigRules.member = Shapes::ShapeRef.new(shape: ConfigRule)

    ConfigSnapshotDeliveryProperties.add_member(:delivery_frequency, Shapes::ShapeRef.new(shape: MaximumExecutionFrequency, location_name: "deliveryFrequency"))
    ConfigSnapshotDeliveryProperties.struct_class = Types::ConfigSnapshotDeliveryProperties

    ConfigStreamDeliveryInfo.add_member(:last_status, Shapes::ShapeRef.new(shape: DeliveryStatus, location_name: "lastStatus"))
    ConfigStreamDeliveryInfo.add_member(:last_error_code, Shapes::ShapeRef.new(shape: String, location_name: "lastErrorCode"))
    ConfigStreamDeliveryInfo.add_member(:last_error_message, Shapes::ShapeRef.new(shape: String, location_name: "lastErrorMessage"))
    ConfigStreamDeliveryInfo.add_member(:last_status_change_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastStatusChangeTime"))
    ConfigStreamDeliveryInfo.struct_class = Types::ConfigStreamDeliveryInfo

    ConfigurationItem.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    ConfigurationItem.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    ConfigurationItem.add_member(:configuration_item_capture_time, Shapes::ShapeRef.new(shape: ConfigurationItemCaptureTime, location_name: "configurationItemCaptureTime"))
    ConfigurationItem.add_member(:configuration_item_status, Shapes::ShapeRef.new(shape: ConfigurationItemStatus, location_name: "configurationItemStatus"))
    ConfigurationItem.add_member(:configuration_state_id, Shapes::ShapeRef.new(shape: ConfigurationStateId, location_name: "configurationStateId"))
    ConfigurationItem.add_member(:configuration_item_md5_hash, Shapes::ShapeRef.new(shape: ConfigurationItemMD5Hash, location_name: "configurationItemMD5Hash"))
    ConfigurationItem.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    ConfigurationItem.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ConfigurationItem.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ConfigurationItem.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName"))
    ConfigurationItem.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsRegion"))
    ConfigurationItem.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "availabilityZone"))
    ConfigurationItem.add_member(:resource_creation_time, Shapes::ShapeRef.new(shape: ResourceCreationTime, location_name: "resourceCreationTime"))
    ConfigurationItem.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ConfigurationItem.add_member(:related_events, Shapes::ShapeRef.new(shape: RelatedEventList, location_name: "relatedEvents"))
    ConfigurationItem.add_member(:relationships, Shapes::ShapeRef.new(shape: RelationshipList, location_name: "relationships"))
    ConfigurationItem.add_member(:configuration, Shapes::ShapeRef.new(shape: Configuration, location_name: "configuration"))
    ConfigurationItem.add_member(:supplementary_configuration, Shapes::ShapeRef.new(shape: SupplementaryConfiguration, location_name: "supplementaryConfiguration"))
    ConfigurationItem.struct_class = Types::ConfigurationItem

    ConfigurationItemList.member = Shapes::ShapeRef.new(shape: ConfigurationItem)

    ConfigurationRecorder.add_member(:name, Shapes::ShapeRef.new(shape: RecorderName, location_name: "name"))
    ConfigurationRecorder.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "roleARN"))
    ConfigurationRecorder.add_member(:recording_group, Shapes::ShapeRef.new(shape: RecordingGroup, location_name: "recordingGroup"))
    ConfigurationRecorder.struct_class = Types::ConfigurationRecorder

    ConfigurationRecorderList.member = Shapes::ShapeRef.new(shape: ConfigurationRecorder)

    ConfigurationRecorderNameList.member = Shapes::ShapeRef.new(shape: RecorderName)

    ConfigurationRecorderStatus.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ConfigurationRecorderStatus.add_member(:last_start_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastStartTime"))
    ConfigurationRecorderStatus.add_member(:last_stop_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastStopTime"))
    ConfigurationRecorderStatus.add_member(:recording, Shapes::ShapeRef.new(shape: Boolean, location_name: "recording"))
    ConfigurationRecorderStatus.add_member(:last_status, Shapes::ShapeRef.new(shape: RecorderStatus, location_name: "lastStatus"))
    ConfigurationRecorderStatus.add_member(:last_error_code, Shapes::ShapeRef.new(shape: String, location_name: "lastErrorCode"))
    ConfigurationRecorderStatus.add_member(:last_error_message, Shapes::ShapeRef.new(shape: String, location_name: "lastErrorMessage"))
    ConfigurationRecorderStatus.add_member(:last_status_change_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastStatusChangeTime"))
    ConfigurationRecorderStatus.struct_class = Types::ConfigurationRecorderStatus

    ConfigurationRecorderStatusList.member = Shapes::ShapeRef.new(shape: ConfigurationRecorderStatus)

    DeleteConfigRuleRequest.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: StringWithCharLimit64, required: true, location_name: "ConfigRuleName"))
    DeleteConfigRuleRequest.struct_class = Types::DeleteConfigRuleRequest

    DeleteConfigurationRecorderRequest.add_member(:configuration_recorder_name, Shapes::ShapeRef.new(shape: RecorderName, required: true, location_name: "ConfigurationRecorderName"))
    DeleteConfigurationRecorderRequest.struct_class = Types::DeleteConfigurationRecorderRequest

    DeleteDeliveryChannelRequest.add_member(:delivery_channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "DeliveryChannelName"))
    DeleteDeliveryChannelRequest.struct_class = Types::DeleteDeliveryChannelRequest

    DeleteEvaluationResultsRequest.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: StringWithCharLimit64, required: true, location_name: "ConfigRuleName"))
    DeleteEvaluationResultsRequest.struct_class = Types::DeleteEvaluationResultsRequest

    DeleteEvaluationResultsResponse.struct_class = Types::DeleteEvaluationResultsResponse

    DeliverConfigSnapshotRequest.add_member(:delivery_channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "deliveryChannelName"))
    DeliverConfigSnapshotRequest.struct_class = Types::DeliverConfigSnapshotRequest

    DeliverConfigSnapshotResponse.add_member(:config_snapshot_id, Shapes::ShapeRef.new(shape: String, location_name: "configSnapshotId"))
    DeliverConfigSnapshotResponse.struct_class = Types::DeliverConfigSnapshotResponse

    DeliveryChannel.add_member(:name, Shapes::ShapeRef.new(shape: ChannelName, location_name: "name"))
    DeliveryChannel.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "s3BucketName"))
    DeliveryChannel.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: String, location_name: "s3KeyPrefix"))
    DeliveryChannel.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "snsTopicARN"))
    DeliveryChannel.add_member(:config_snapshot_delivery_properties, Shapes::ShapeRef.new(shape: ConfigSnapshotDeliveryProperties, location_name: "configSnapshotDeliveryProperties"))
    DeliveryChannel.struct_class = Types::DeliveryChannel

    DeliveryChannelList.member = Shapes::ShapeRef.new(shape: DeliveryChannel)

    DeliveryChannelNameList.member = Shapes::ShapeRef.new(shape: ChannelName)

    DeliveryChannelStatus.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    DeliveryChannelStatus.add_member(:config_snapshot_delivery_info, Shapes::ShapeRef.new(shape: ConfigExportDeliveryInfo, location_name: "configSnapshotDeliveryInfo"))
    DeliveryChannelStatus.add_member(:config_history_delivery_info, Shapes::ShapeRef.new(shape: ConfigExportDeliveryInfo, location_name: "configHistoryDeliveryInfo"))
    DeliveryChannelStatus.add_member(:config_stream_delivery_info, Shapes::ShapeRef.new(shape: ConfigStreamDeliveryInfo, location_name: "configStreamDeliveryInfo"))
    DeliveryChannelStatus.struct_class = Types::DeliveryChannelStatus

    DeliveryChannelStatusList.member = Shapes::ShapeRef.new(shape: DeliveryChannelStatus)

    DescribeComplianceByConfigRuleRequest.add_member(:config_rule_names, Shapes::ShapeRef.new(shape: ConfigRuleNames, location_name: "ConfigRuleNames"))
    DescribeComplianceByConfigRuleRequest.add_member(:compliance_types, Shapes::ShapeRef.new(shape: ComplianceTypes, location_name: "ComplianceTypes"))
    DescribeComplianceByConfigRuleRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeComplianceByConfigRuleRequest.struct_class = Types::DescribeComplianceByConfigRuleRequest

    DescribeComplianceByConfigRuleResponse.add_member(:compliance_by_config_rules, Shapes::ShapeRef.new(shape: ComplianceByConfigRules, location_name: "ComplianceByConfigRules"))
    DescribeComplianceByConfigRuleResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeComplianceByConfigRuleResponse.struct_class = Types::DescribeComplianceByConfigRuleResponse

    DescribeComplianceByResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "ResourceType"))
    DescribeComplianceByResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: BaseResourceId, location_name: "ResourceId"))
    DescribeComplianceByResourceRequest.add_member(:compliance_types, Shapes::ShapeRef.new(shape: ComplianceTypes, location_name: "ComplianceTypes"))
    DescribeComplianceByResourceRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DescribeComplianceByResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeComplianceByResourceRequest.struct_class = Types::DescribeComplianceByResourceRequest

    DescribeComplianceByResourceResponse.add_member(:compliance_by_resources, Shapes::ShapeRef.new(shape: ComplianceByResources, location_name: "ComplianceByResources"))
    DescribeComplianceByResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeComplianceByResourceResponse.struct_class = Types::DescribeComplianceByResourceResponse

    DescribeConfigRuleEvaluationStatusRequest.add_member(:config_rule_names, Shapes::ShapeRef.new(shape: ConfigRuleNames, location_name: "ConfigRuleNames"))
    DescribeConfigRuleEvaluationStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeConfigRuleEvaluationStatusRequest.add_member(:limit, Shapes::ShapeRef.new(shape: RuleLimit, location_name: "Limit"))
    DescribeConfigRuleEvaluationStatusRequest.struct_class = Types::DescribeConfigRuleEvaluationStatusRequest

    DescribeConfigRuleEvaluationStatusResponse.add_member(:config_rules_evaluation_status, Shapes::ShapeRef.new(shape: ConfigRuleEvaluationStatusList, location_name: "ConfigRulesEvaluationStatus"))
    DescribeConfigRuleEvaluationStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeConfigRuleEvaluationStatusResponse.struct_class = Types::DescribeConfigRuleEvaluationStatusResponse

    DescribeConfigRulesRequest.add_member(:config_rule_names, Shapes::ShapeRef.new(shape: ConfigRuleNames, location_name: "ConfigRuleNames"))
    DescribeConfigRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeConfigRulesRequest.struct_class = Types::DescribeConfigRulesRequest

    DescribeConfigRulesResponse.add_member(:config_rules, Shapes::ShapeRef.new(shape: ConfigRules, location_name: "ConfigRules"))
    DescribeConfigRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeConfigRulesResponse.struct_class = Types::DescribeConfigRulesResponse

    DescribeConfigurationRecorderStatusRequest.add_member(:configuration_recorder_names, Shapes::ShapeRef.new(shape: ConfigurationRecorderNameList, location_name: "ConfigurationRecorderNames"))
    DescribeConfigurationRecorderStatusRequest.struct_class = Types::DescribeConfigurationRecorderStatusRequest

    DescribeConfigurationRecorderStatusResponse.add_member(:configuration_recorders_status, Shapes::ShapeRef.new(shape: ConfigurationRecorderStatusList, location_name: "ConfigurationRecordersStatus"))
    DescribeConfigurationRecorderStatusResponse.struct_class = Types::DescribeConfigurationRecorderStatusResponse

    DescribeConfigurationRecordersRequest.add_member(:configuration_recorder_names, Shapes::ShapeRef.new(shape: ConfigurationRecorderNameList, location_name: "ConfigurationRecorderNames"))
    DescribeConfigurationRecordersRequest.struct_class = Types::DescribeConfigurationRecordersRequest

    DescribeConfigurationRecordersResponse.add_member(:configuration_recorders, Shapes::ShapeRef.new(shape: ConfigurationRecorderList, location_name: "ConfigurationRecorders"))
    DescribeConfigurationRecordersResponse.struct_class = Types::DescribeConfigurationRecordersResponse

    DescribeDeliveryChannelStatusRequest.add_member(:delivery_channel_names, Shapes::ShapeRef.new(shape: DeliveryChannelNameList, location_name: "DeliveryChannelNames"))
    DescribeDeliveryChannelStatusRequest.struct_class = Types::DescribeDeliveryChannelStatusRequest

    DescribeDeliveryChannelStatusResponse.add_member(:delivery_channels_status, Shapes::ShapeRef.new(shape: DeliveryChannelStatusList, location_name: "DeliveryChannelsStatus"))
    DescribeDeliveryChannelStatusResponse.struct_class = Types::DescribeDeliveryChannelStatusResponse

    DescribeDeliveryChannelsRequest.add_member(:delivery_channel_names, Shapes::ShapeRef.new(shape: DeliveryChannelNameList, location_name: "DeliveryChannelNames"))
    DescribeDeliveryChannelsRequest.struct_class = Types::DescribeDeliveryChannelsRequest

    DescribeDeliveryChannelsResponse.add_member(:delivery_channels, Shapes::ShapeRef.new(shape: DeliveryChannelList, location_name: "DeliveryChannels"))
    DescribeDeliveryChannelsResponse.struct_class = Types::DescribeDeliveryChannelsResponse

    Evaluation.add_member(:compliance_resource_type, Shapes::ShapeRef.new(shape: StringWithCharLimit256, required: true, location_name: "ComplianceResourceType"))
    Evaluation.add_member(:compliance_resource_id, Shapes::ShapeRef.new(shape: BaseResourceId, required: true, location_name: "ComplianceResourceId"))
    Evaluation.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceType, required: true, location_name: "ComplianceType"))
    Evaluation.add_member(:annotation, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "Annotation"))
    Evaluation.add_member(:ordering_timestamp, Shapes::ShapeRef.new(shape: OrderingTimestamp, required: true, location_name: "OrderingTimestamp"))
    Evaluation.struct_class = Types::Evaluation

    EvaluationResult.add_member(:evaluation_result_identifier, Shapes::ShapeRef.new(shape: EvaluationResultIdentifier, location_name: "EvaluationResultIdentifier"))
    EvaluationResult.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceType, location_name: "ComplianceType"))
    EvaluationResult.add_member(:result_recorded_time, Shapes::ShapeRef.new(shape: Date, location_name: "ResultRecordedTime"))
    EvaluationResult.add_member(:config_rule_invoked_time, Shapes::ShapeRef.new(shape: Date, location_name: "ConfigRuleInvokedTime"))
    EvaluationResult.add_member(:annotation, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "Annotation"))
    EvaluationResult.add_member(:result_token, Shapes::ShapeRef.new(shape: String, location_name: "ResultToken"))
    EvaluationResult.struct_class = Types::EvaluationResult

    EvaluationResultIdentifier.add_member(:evaluation_result_qualifier, Shapes::ShapeRef.new(shape: EvaluationResultQualifier, location_name: "EvaluationResultQualifier"))
    EvaluationResultIdentifier.add_member(:ordering_timestamp, Shapes::ShapeRef.new(shape: Date, location_name: "OrderingTimestamp"))
    EvaluationResultIdentifier.struct_class = Types::EvaluationResultIdentifier

    EvaluationResultQualifier.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: StringWithCharLimit64, location_name: "ConfigRuleName"))
    EvaluationResultQualifier.add_member(:resource_type, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "ResourceType"))
    EvaluationResultQualifier.add_member(:resource_id, Shapes::ShapeRef.new(shape: BaseResourceId, location_name: "ResourceId"))
    EvaluationResultQualifier.struct_class = Types::EvaluationResultQualifier

    EvaluationResults.member = Shapes::ShapeRef.new(shape: EvaluationResult)

    Evaluations.member = Shapes::ShapeRef.new(shape: Evaluation)

    GetComplianceDetailsByConfigRuleRequest.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: StringWithCharLimit64, required: true, location_name: "ConfigRuleName"))
    GetComplianceDetailsByConfigRuleRequest.add_member(:compliance_types, Shapes::ShapeRef.new(shape: ComplianceTypes, location_name: "ComplianceTypes"))
    GetComplianceDetailsByConfigRuleRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    GetComplianceDetailsByConfigRuleRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetComplianceDetailsByConfigRuleRequest.struct_class = Types::GetComplianceDetailsByConfigRuleRequest

    GetComplianceDetailsByConfigRuleResponse.add_member(:evaluation_results, Shapes::ShapeRef.new(shape: EvaluationResults, location_name: "EvaluationResults"))
    GetComplianceDetailsByConfigRuleResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetComplianceDetailsByConfigRuleResponse.struct_class = Types::GetComplianceDetailsByConfigRuleResponse

    GetComplianceDetailsByResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: StringWithCharLimit256, required: true, location_name: "ResourceType"))
    GetComplianceDetailsByResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: BaseResourceId, required: true, location_name: "ResourceId"))
    GetComplianceDetailsByResourceRequest.add_member(:compliance_types, Shapes::ShapeRef.new(shape: ComplianceTypes, location_name: "ComplianceTypes"))
    GetComplianceDetailsByResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetComplianceDetailsByResourceRequest.struct_class = Types::GetComplianceDetailsByResourceRequest

    GetComplianceDetailsByResourceResponse.add_member(:evaluation_results, Shapes::ShapeRef.new(shape: EvaluationResults, location_name: "EvaluationResults"))
    GetComplianceDetailsByResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetComplianceDetailsByResourceResponse.struct_class = Types::GetComplianceDetailsByResourceResponse

    GetComplianceSummaryByConfigRuleResponse.add_member(:compliance_summary, Shapes::ShapeRef.new(shape: ComplianceSummary, location_name: "ComplianceSummary"))
    GetComplianceSummaryByConfigRuleResponse.struct_class = Types::GetComplianceSummaryByConfigRuleResponse

    GetComplianceSummaryByResourceTypeRequest.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "ResourceTypes"))
    GetComplianceSummaryByResourceTypeRequest.struct_class = Types::GetComplianceSummaryByResourceTypeRequest

    GetComplianceSummaryByResourceTypeResponse.add_member(:compliance_summaries_by_resource_type, Shapes::ShapeRef.new(shape: ComplianceSummariesByResourceType, location_name: "ComplianceSummariesByResourceType"))
    GetComplianceSummaryByResourceTypeResponse.struct_class = Types::GetComplianceSummaryByResourceTypeResponse

    GetDiscoveredResourceCountsRequest.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "resourceTypes"))
    GetDiscoveredResourceCountsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "limit"))
    GetDiscoveredResourceCountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetDiscoveredResourceCountsRequest.struct_class = Types::GetDiscoveredResourceCountsRequest

    GetDiscoveredResourceCountsResponse.add_member(:total_discovered_resources, Shapes::ShapeRef.new(shape: Long, location_name: "totalDiscoveredResources"))
    GetDiscoveredResourceCountsResponse.add_member(:resource_counts, Shapes::ShapeRef.new(shape: ResourceCounts, location_name: "resourceCounts"))
    GetDiscoveredResourceCountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetDiscoveredResourceCountsResponse.struct_class = Types::GetDiscoveredResourceCountsResponse

    GetResourceConfigHistoryRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    GetResourceConfigHistoryRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    GetResourceConfigHistoryRequest.add_member(:later_time, Shapes::ShapeRef.new(shape: LaterTime, location_name: "laterTime"))
    GetResourceConfigHistoryRequest.add_member(:earlier_time, Shapes::ShapeRef.new(shape: EarlierTime, location_name: "earlierTime"))
    GetResourceConfigHistoryRequest.add_member(:chronological_order, Shapes::ShapeRef.new(shape: ChronologicalOrder, location_name: "chronologicalOrder"))
    GetResourceConfigHistoryRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "limit"))
    GetResourceConfigHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetResourceConfigHistoryRequest.struct_class = Types::GetResourceConfigHistoryRequest

    GetResourceConfigHistoryResponse.add_member(:configuration_items, Shapes::ShapeRef.new(shape: ConfigurationItemList, location_name: "configurationItems"))
    GetResourceConfigHistoryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetResourceConfigHistoryResponse.struct_class = Types::GetResourceConfigHistoryResponse

    ListDiscoveredResourcesRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ListDiscoveredResourcesRequest.add_member(:resource_ids, Shapes::ShapeRef.new(shape: ResourceIdList, location_name: "resourceIds"))
    ListDiscoveredResourcesRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName"))
    ListDiscoveredResourcesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "limit"))
    ListDiscoveredResourcesRequest.add_member(:include_deleted_resources, Shapes::ShapeRef.new(shape: Boolean, location_name: "includeDeletedResources"))
    ListDiscoveredResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDiscoveredResourcesRequest.struct_class = Types::ListDiscoveredResourcesRequest

    ListDiscoveredResourcesResponse.add_member(:resource_identifiers, Shapes::ShapeRef.new(shape: ResourceIdentifierList, location_name: "resourceIdentifiers"))
    ListDiscoveredResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDiscoveredResourcesResponse.struct_class = Types::ListDiscoveredResourcesResponse

    PutConfigRuleRequest.add_member(:config_rule, Shapes::ShapeRef.new(shape: ConfigRule, required: true, location_name: "ConfigRule"))
    PutConfigRuleRequest.struct_class = Types::PutConfigRuleRequest

    PutConfigurationRecorderRequest.add_member(:configuration_recorder, Shapes::ShapeRef.new(shape: ConfigurationRecorder, required: true, location_name: "ConfigurationRecorder"))
    PutConfigurationRecorderRequest.struct_class = Types::PutConfigurationRecorderRequest

    PutDeliveryChannelRequest.add_member(:delivery_channel, Shapes::ShapeRef.new(shape: DeliveryChannel, required: true, location_name: "DeliveryChannel"))
    PutDeliveryChannelRequest.struct_class = Types::PutDeliveryChannelRequest

    PutEvaluationsRequest.add_member(:evaluations, Shapes::ShapeRef.new(shape: Evaluations, location_name: "Evaluations"))
    PutEvaluationsRequest.add_member(:result_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResultToken"))
    PutEvaluationsRequest.add_member(:test_mode, Shapes::ShapeRef.new(shape: Boolean, location_name: "TestMode"))
    PutEvaluationsRequest.struct_class = Types::PutEvaluationsRequest

    PutEvaluationsResponse.add_member(:failed_evaluations, Shapes::ShapeRef.new(shape: Evaluations, location_name: "FailedEvaluations"))
    PutEvaluationsResponse.struct_class = Types::PutEvaluationsResponse

    RecordingGroup.add_member(:all_supported, Shapes::ShapeRef.new(shape: AllSupported, location_name: "allSupported"))
    RecordingGroup.add_member(:include_global_resource_types, Shapes::ShapeRef.new(shape: IncludeGlobalResourceTypes, location_name: "includeGlobalResourceTypes"))
    RecordingGroup.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: "resourceTypes"))
    RecordingGroup.struct_class = Types::RecordingGroup

    ReevaluateConfigRuleNames.member = Shapes::ShapeRef.new(shape: StringWithCharLimit64)

    RelatedEventList.member = Shapes::ShapeRef.new(shape: RelatedEvent)

    Relationship.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Relationship.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    Relationship.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName"))
    Relationship.add_member(:relationship_name, Shapes::ShapeRef.new(shape: RelationshipName, location_name: "relationshipName"))
    Relationship.struct_class = Types::Relationship

    RelationshipList.member = Shapes::ShapeRef.new(shape: Relationship)

    ResourceCount.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ResourceCount.add_member(:count, Shapes::ShapeRef.new(shape: Long, location_name: "count"))
    ResourceCount.struct_class = Types::ResourceCount

    ResourceCounts.member = Shapes::ShapeRef.new(shape: ResourceCount)

    ResourceIdList.member = Shapes::ShapeRef.new(shape: ResourceId)

    ResourceIdentifier.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ResourceIdentifier.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ResourceIdentifier.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName"))
    ResourceIdentifier.add_member(:resource_deletion_time, Shapes::ShapeRef.new(shape: ResourceDeletionTime, location_name: "resourceDeletionTime"))
    ResourceIdentifier.struct_class = Types::ResourceIdentifier

    ResourceIdentifierList.member = Shapes::ShapeRef.new(shape: ResourceIdentifier)

    ResourceTypeList.member = Shapes::ShapeRef.new(shape: ResourceType)

    ResourceTypes.member = Shapes::ShapeRef.new(shape: StringWithCharLimit256)

    Scope.add_member(:compliance_resource_types, Shapes::ShapeRef.new(shape: ComplianceResourceTypes, location_name: "ComplianceResourceTypes"))
    Scope.add_member(:tag_key, Shapes::ShapeRef.new(shape: StringWithCharLimit128, location_name: "TagKey"))
    Scope.add_member(:tag_value, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "TagValue"))
    Scope.add_member(:compliance_resource_id, Shapes::ShapeRef.new(shape: BaseResourceId, location_name: "ComplianceResourceId"))
    Scope.struct_class = Types::Scope

    Source.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, required: true, location_name: "Owner"))
    Source.add_member(:source_identifier, Shapes::ShapeRef.new(shape: StringWithCharLimit256, required: true, location_name: "SourceIdentifier"))
    Source.add_member(:source_details, Shapes::ShapeRef.new(shape: SourceDetails, location_name: "SourceDetails"))
    Source.struct_class = Types::Source

    SourceDetail.add_member(:event_source, Shapes::ShapeRef.new(shape: EventSource, location_name: "EventSource"))
    SourceDetail.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "MessageType"))
    SourceDetail.add_member(:maximum_execution_frequency, Shapes::ShapeRef.new(shape: MaximumExecutionFrequency, location_name: "MaximumExecutionFrequency"))
    SourceDetail.struct_class = Types::SourceDetail

    SourceDetails.member = Shapes::ShapeRef.new(shape: SourceDetail)

    StartConfigRulesEvaluationRequest.add_member(:config_rule_names, Shapes::ShapeRef.new(shape: ReevaluateConfigRuleNames, location_name: "ConfigRuleNames"))
    StartConfigRulesEvaluationRequest.struct_class = Types::StartConfigRulesEvaluationRequest

    StartConfigRulesEvaluationResponse.struct_class = Types::StartConfigRulesEvaluationResponse

    StartConfigurationRecorderRequest.add_member(:configuration_recorder_name, Shapes::ShapeRef.new(shape: RecorderName, required: true, location_name: "ConfigurationRecorderName"))
    StartConfigurationRecorderRequest.struct_class = Types::StartConfigurationRecorderRequest

    StopConfigurationRecorderRequest.add_member(:configuration_recorder_name, Shapes::ShapeRef.new(shape: RecorderName, required: true, location_name: "ConfigurationRecorderName"))
    StopConfigurationRecorderRequest.struct_class = Types::StopConfigurationRecorderRequest

    SupplementaryConfiguration.key = Shapes::ShapeRef.new(shape: SupplementaryConfigurationName)
    SupplementaryConfiguration.value = Shapes::ShapeRef.new(shape: SupplementaryConfigurationValue)

    Tags.key = Shapes::ShapeRef.new(shape: Name)
    Tags.value = Shapes::ShapeRef.new(shape: Value)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-11-12"

      api.metadata = {
        "endpointPrefix" => "config",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Config",
        "signatureVersion" => "v4",
        "targetPrefix" => "StarlingDoveService",
      }

      api.add_operation(:delete_config_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfigRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfigRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigRuleException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_configuration_recorder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfigurationRecorder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfigurationRecorderRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationRecorderException)
      end)

      api.add_operation(:delete_delivery_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeliveryChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeliveryChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDeliveryChannelException)
        o.errors << Shapes::ShapeRef.new(shape: LastDeliveryChannelDeleteFailedException)
      end)

      api.add_operation(:delete_evaluation_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEvaluationResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEvaluationResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEvaluationResultsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigRuleException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:deliver_config_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeliverConfigSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeliverConfigSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: DeliverConfigSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDeliveryChannelException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableConfigurationRecorderException)
        o.errors << Shapes::ShapeRef.new(shape: NoRunningConfigurationRecorderException)
      end)

      api.add_operation(:describe_compliance_by_config_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeComplianceByConfigRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeComplianceByConfigRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeComplianceByConfigRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigRuleException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:describe_compliance_by_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeComplianceByResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeComplianceByResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeComplianceByResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:describe_config_rule_evaluation_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConfigRuleEvaluationStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConfigRuleEvaluationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConfigRuleEvaluationStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigRuleException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:describe_config_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConfigRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConfigRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConfigRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigRuleException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:describe_configuration_recorder_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConfigurationRecorderStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConfigurationRecorderStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConfigurationRecorderStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationRecorderException)
      end)

      api.add_operation(:describe_configuration_recorders, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConfigurationRecorders"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConfigurationRecordersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConfigurationRecordersResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationRecorderException)
      end)

      api.add_operation(:describe_delivery_channel_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDeliveryChannelStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDeliveryChannelStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDeliveryChannelStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDeliveryChannelException)
      end)

      api.add_operation(:describe_delivery_channels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDeliveryChannels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDeliveryChannelsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDeliveryChannelsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchDeliveryChannelException)
      end)

      api.add_operation(:get_compliance_details_by_config_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComplianceDetailsByConfigRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetComplianceDetailsByConfigRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetComplianceDetailsByConfigRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigRuleException)
      end)

      api.add_operation(:get_compliance_details_by_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComplianceDetailsByResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetComplianceDetailsByResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetComplianceDetailsByResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:get_compliance_summary_by_config_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComplianceSummaryByConfigRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetComplianceSummaryByConfigRuleResponse)
      end)

      api.add_operation(:get_compliance_summary_by_resource_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComplianceSummaryByResourceType"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetComplianceSummaryByResourceTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetComplianceSummaryByResourceTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:get_discovered_resource_counts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDiscoveredResourceCounts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDiscoveredResourceCountsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDiscoveredResourceCountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:get_resource_config_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceConfigHistory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourceConfigHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceConfigHistoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTimeRangeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableConfigurationRecorderException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotDiscoveredException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_discovered_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDiscoveredResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDiscoveredResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDiscoveredResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableConfigurationRecorderException)
      end)

      api.add_operation(:put_config_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConfigRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutConfigRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MaxNumberOfConfigRulesExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPermissionsException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableConfigurationRecorderException)
      end)

      api.add_operation(:put_configuration_recorder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConfigurationRecorder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutConfigurationRecorderRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: MaxNumberOfConfigurationRecordersExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConfigurationRecorderNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRecordingGroupException)
      end)

      api.add_operation(:put_delivery_channel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDeliveryChannel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutDeliveryChannelRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: MaxNumberOfDeliveryChannelsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableConfigurationRecorderException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeliveryChannelNameException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchBucketException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidS3KeyPrefixException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSNSTopicARNException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientDeliveryPolicyException)
      end)

      api.add_operation(:put_evaluations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutEvaluations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutEvaluationsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutEvaluationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResultTokenException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigRuleException)
      end)

      api.add_operation(:start_config_rules_evaluation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartConfigRulesEvaluation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartConfigRulesEvaluationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartConfigRulesEvaluationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigRuleException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:start_configuration_recorder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartConfigurationRecorder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartConfigurationRecorderRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationRecorderException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableDeliveryChannelException)
      end)

      api.add_operation(:stop_configuration_recorder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopConfigurationRecorder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopConfigurationRecorderRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationRecorderException)
      end)
    end

  end
end
