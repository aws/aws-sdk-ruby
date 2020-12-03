# frozen_string_literal: true

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
    AccountAggregationSource = Shapes::StructureShape.new(name: 'AccountAggregationSource')
    AccountAggregationSourceAccountList = Shapes::ListShape.new(name: 'AccountAggregationSourceAccountList')
    AccountAggregationSourceList = Shapes::ListShape.new(name: 'AccountAggregationSourceList')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AggregateComplianceByConfigRule = Shapes::StructureShape.new(name: 'AggregateComplianceByConfigRule')
    AggregateComplianceByConfigRuleList = Shapes::ListShape.new(name: 'AggregateComplianceByConfigRuleList')
    AggregateComplianceCount = Shapes::StructureShape.new(name: 'AggregateComplianceCount')
    AggregateComplianceCountList = Shapes::ListShape.new(name: 'AggregateComplianceCountList')
    AggregateEvaluationResult = Shapes::StructureShape.new(name: 'AggregateEvaluationResult')
    AggregateEvaluationResultList = Shapes::ListShape.new(name: 'AggregateEvaluationResultList')
    AggregateResourceIdentifier = Shapes::StructureShape.new(name: 'AggregateResourceIdentifier')
    AggregatedSourceStatus = Shapes::StructureShape.new(name: 'AggregatedSourceStatus')
    AggregatedSourceStatusList = Shapes::ListShape.new(name: 'AggregatedSourceStatusList')
    AggregatedSourceStatusType = Shapes::StringShape.new(name: 'AggregatedSourceStatusType')
    AggregatedSourceStatusTypeList = Shapes::ListShape.new(name: 'AggregatedSourceStatusTypeList')
    AggregatedSourceType = Shapes::StringShape.new(name: 'AggregatedSourceType')
    AggregationAuthorization = Shapes::StructureShape.new(name: 'AggregationAuthorization')
    AggregationAuthorizationList = Shapes::ListShape.new(name: 'AggregationAuthorizationList')
    AggregatorRegionList = Shapes::ListShape.new(name: 'AggregatorRegionList')
    AllSupported = Shapes::BooleanShape.new(name: 'AllSupported')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    Annotation = Shapes::StringShape.new(name: 'Annotation')
    AutoRemediationAttemptSeconds = Shapes::IntegerShape.new(name: 'AutoRemediationAttemptSeconds')
    AutoRemediationAttempts = Shapes::IntegerShape.new(name: 'AutoRemediationAttempts')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    AwsRegion = Shapes::StringShape.new(name: 'AwsRegion')
    BaseConfigurationItem = Shapes::StructureShape.new(name: 'BaseConfigurationItem')
    BaseConfigurationItems = Shapes::ListShape.new(name: 'BaseConfigurationItems')
    BaseResourceId = Shapes::StringShape.new(name: 'BaseResourceId')
    BatchGetAggregateResourceConfigRequest = Shapes::StructureShape.new(name: 'BatchGetAggregateResourceConfigRequest')
    BatchGetAggregateResourceConfigResponse = Shapes::StructureShape.new(name: 'BatchGetAggregateResourceConfigResponse')
    BatchGetResourceConfigRequest = Shapes::StructureShape.new(name: 'BatchGetResourceConfigRequest')
    BatchGetResourceConfigResponse = Shapes::StructureShape.new(name: 'BatchGetResourceConfigResponse')
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
    ConfigRuleComplianceFilters = Shapes::StructureShape.new(name: 'ConfigRuleComplianceFilters')
    ConfigRuleComplianceSummaryFilters = Shapes::StructureShape.new(name: 'ConfigRuleComplianceSummaryFilters')
    ConfigRuleComplianceSummaryGroupKey = Shapes::StringShape.new(name: 'ConfigRuleComplianceSummaryGroupKey')
    ConfigRuleEvaluationStatus = Shapes::StructureShape.new(name: 'ConfigRuleEvaluationStatus')
    ConfigRuleEvaluationStatusList = Shapes::ListShape.new(name: 'ConfigRuleEvaluationStatusList')
    ConfigRuleName = Shapes::StringShape.new(name: 'ConfigRuleName')
    ConfigRuleNames = Shapes::ListShape.new(name: 'ConfigRuleNames')
    ConfigRuleState = Shapes::StringShape.new(name: 'ConfigRuleState')
    ConfigRules = Shapes::ListShape.new(name: 'ConfigRules')
    ConfigSnapshotDeliveryProperties = Shapes::StructureShape.new(name: 'ConfigSnapshotDeliveryProperties')
    ConfigStreamDeliveryInfo = Shapes::StructureShape.new(name: 'ConfigStreamDeliveryInfo')
    Configuration = Shapes::StringShape.new(name: 'Configuration')
    ConfigurationAggregator = Shapes::StructureShape.new(name: 'ConfigurationAggregator')
    ConfigurationAggregatorArn = Shapes::StringShape.new(name: 'ConfigurationAggregatorArn')
    ConfigurationAggregatorList = Shapes::ListShape.new(name: 'ConfigurationAggregatorList')
    ConfigurationAggregatorName = Shapes::StringShape.new(name: 'ConfigurationAggregatorName')
    ConfigurationAggregatorNameList = Shapes::ListShape.new(name: 'ConfigurationAggregatorNameList')
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
    ConformancePackArn = Shapes::StringShape.new(name: 'ConformancePackArn')
    ConformancePackComplianceFilters = Shapes::StructureShape.new(name: 'ConformancePackComplianceFilters')
    ConformancePackComplianceResourceIds = Shapes::ListShape.new(name: 'ConformancePackComplianceResourceIds')
    ConformancePackComplianceSummary = Shapes::StructureShape.new(name: 'ConformancePackComplianceSummary')
    ConformancePackComplianceSummaryList = Shapes::ListShape.new(name: 'ConformancePackComplianceSummaryList')
    ConformancePackComplianceType = Shapes::StringShape.new(name: 'ConformancePackComplianceType')
    ConformancePackConfigRuleNames = Shapes::ListShape.new(name: 'ConformancePackConfigRuleNames')
    ConformancePackDetail = Shapes::StructureShape.new(name: 'ConformancePackDetail')
    ConformancePackDetailList = Shapes::ListShape.new(name: 'ConformancePackDetailList')
    ConformancePackEvaluationFilters = Shapes::StructureShape.new(name: 'ConformancePackEvaluationFilters')
    ConformancePackEvaluationResult = Shapes::StructureShape.new(name: 'ConformancePackEvaluationResult')
    ConformancePackId = Shapes::StringShape.new(name: 'ConformancePackId')
    ConformancePackInputParameter = Shapes::StructureShape.new(name: 'ConformancePackInputParameter')
    ConformancePackInputParameters = Shapes::ListShape.new(name: 'ConformancePackInputParameters')
    ConformancePackName = Shapes::StringShape.new(name: 'ConformancePackName')
    ConformancePackNamesList = Shapes::ListShape.new(name: 'ConformancePackNamesList')
    ConformancePackNamesToSummarizeList = Shapes::ListShape.new(name: 'ConformancePackNamesToSummarizeList')
    ConformancePackRuleCompliance = Shapes::StructureShape.new(name: 'ConformancePackRuleCompliance')
    ConformancePackRuleComplianceList = Shapes::ListShape.new(name: 'ConformancePackRuleComplianceList')
    ConformancePackRuleEvaluationResultsList = Shapes::ListShape.new(name: 'ConformancePackRuleEvaluationResultsList')
    ConformancePackState = Shapes::StringShape.new(name: 'ConformancePackState')
    ConformancePackStatusDetail = Shapes::StructureShape.new(name: 'ConformancePackStatusDetail')
    ConformancePackStatusDetailsList = Shapes::ListShape.new(name: 'ConformancePackStatusDetailsList')
    ConformancePackStatusReason = Shapes::StringShape.new(name: 'ConformancePackStatusReason')
    ConformancePackTemplateValidationException = Shapes::StructureShape.new(name: 'ConformancePackTemplateValidationException')
    CosmosPageLimit = Shapes::IntegerShape.new(name: 'CosmosPageLimit')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DeleteAggregationAuthorizationRequest = Shapes::StructureShape.new(name: 'DeleteAggregationAuthorizationRequest')
    DeleteConfigRuleRequest = Shapes::StructureShape.new(name: 'DeleteConfigRuleRequest')
    DeleteConfigurationAggregatorRequest = Shapes::StructureShape.new(name: 'DeleteConfigurationAggregatorRequest')
    DeleteConfigurationRecorderRequest = Shapes::StructureShape.new(name: 'DeleteConfigurationRecorderRequest')
    DeleteConformancePackRequest = Shapes::StructureShape.new(name: 'DeleteConformancePackRequest')
    DeleteDeliveryChannelRequest = Shapes::StructureShape.new(name: 'DeleteDeliveryChannelRequest')
    DeleteEvaluationResultsRequest = Shapes::StructureShape.new(name: 'DeleteEvaluationResultsRequest')
    DeleteEvaluationResultsResponse = Shapes::StructureShape.new(name: 'DeleteEvaluationResultsResponse')
    DeleteOrganizationConfigRuleRequest = Shapes::StructureShape.new(name: 'DeleteOrganizationConfigRuleRequest')
    DeleteOrganizationConformancePackRequest = Shapes::StructureShape.new(name: 'DeleteOrganizationConformancePackRequest')
    DeletePendingAggregationRequestRequest = Shapes::StructureShape.new(name: 'DeletePendingAggregationRequestRequest')
    DeleteRemediationConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteRemediationConfigurationRequest')
    DeleteRemediationConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteRemediationConfigurationResponse')
    DeleteRemediationExceptionsRequest = Shapes::StructureShape.new(name: 'DeleteRemediationExceptionsRequest')
    DeleteRemediationExceptionsResponse = Shapes::StructureShape.new(name: 'DeleteRemediationExceptionsResponse')
    DeleteResourceConfigRequest = Shapes::StructureShape.new(name: 'DeleteResourceConfigRequest')
    DeleteRetentionConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteRetentionConfigurationRequest')
    DeliverConfigSnapshotRequest = Shapes::StructureShape.new(name: 'DeliverConfigSnapshotRequest')
    DeliverConfigSnapshotResponse = Shapes::StructureShape.new(name: 'DeliverConfigSnapshotResponse')
    DeliveryChannel = Shapes::StructureShape.new(name: 'DeliveryChannel')
    DeliveryChannelList = Shapes::ListShape.new(name: 'DeliveryChannelList')
    DeliveryChannelNameList = Shapes::ListShape.new(name: 'DeliveryChannelNameList')
    DeliveryChannelStatus = Shapes::StructureShape.new(name: 'DeliveryChannelStatus')
    DeliveryChannelStatusList = Shapes::ListShape.new(name: 'DeliveryChannelStatusList')
    DeliveryS3Bucket = Shapes::StringShape.new(name: 'DeliveryS3Bucket')
    DeliveryS3KeyPrefix = Shapes::StringShape.new(name: 'DeliveryS3KeyPrefix')
    DeliveryStatus = Shapes::StringShape.new(name: 'DeliveryStatus')
    DescribeAggregateComplianceByConfigRulesRequest = Shapes::StructureShape.new(name: 'DescribeAggregateComplianceByConfigRulesRequest')
    DescribeAggregateComplianceByConfigRulesResponse = Shapes::StructureShape.new(name: 'DescribeAggregateComplianceByConfigRulesResponse')
    DescribeAggregationAuthorizationsRequest = Shapes::StructureShape.new(name: 'DescribeAggregationAuthorizationsRequest')
    DescribeAggregationAuthorizationsResponse = Shapes::StructureShape.new(name: 'DescribeAggregationAuthorizationsResponse')
    DescribeComplianceByConfigRuleRequest = Shapes::StructureShape.new(name: 'DescribeComplianceByConfigRuleRequest')
    DescribeComplianceByConfigRuleResponse = Shapes::StructureShape.new(name: 'DescribeComplianceByConfigRuleResponse')
    DescribeComplianceByResourceRequest = Shapes::StructureShape.new(name: 'DescribeComplianceByResourceRequest')
    DescribeComplianceByResourceResponse = Shapes::StructureShape.new(name: 'DescribeComplianceByResourceResponse')
    DescribeConfigRuleEvaluationStatusRequest = Shapes::StructureShape.new(name: 'DescribeConfigRuleEvaluationStatusRequest')
    DescribeConfigRuleEvaluationStatusResponse = Shapes::StructureShape.new(name: 'DescribeConfigRuleEvaluationStatusResponse')
    DescribeConfigRulesRequest = Shapes::StructureShape.new(name: 'DescribeConfigRulesRequest')
    DescribeConfigRulesResponse = Shapes::StructureShape.new(name: 'DescribeConfigRulesResponse')
    DescribeConfigurationAggregatorSourcesStatusRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationAggregatorSourcesStatusRequest')
    DescribeConfigurationAggregatorSourcesStatusResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationAggregatorSourcesStatusResponse')
    DescribeConfigurationAggregatorsRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationAggregatorsRequest')
    DescribeConfigurationAggregatorsResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationAggregatorsResponse')
    DescribeConfigurationRecorderStatusRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationRecorderStatusRequest')
    DescribeConfigurationRecorderStatusResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationRecorderStatusResponse')
    DescribeConfigurationRecordersRequest = Shapes::StructureShape.new(name: 'DescribeConfigurationRecordersRequest')
    DescribeConfigurationRecordersResponse = Shapes::StructureShape.new(name: 'DescribeConfigurationRecordersResponse')
    DescribeConformancePackComplianceLimit = Shapes::IntegerShape.new(name: 'DescribeConformancePackComplianceLimit')
    DescribeConformancePackComplianceRequest = Shapes::StructureShape.new(name: 'DescribeConformancePackComplianceRequest')
    DescribeConformancePackComplianceResponse = Shapes::StructureShape.new(name: 'DescribeConformancePackComplianceResponse')
    DescribeConformancePackStatusRequest = Shapes::StructureShape.new(name: 'DescribeConformancePackStatusRequest')
    DescribeConformancePackStatusResponse = Shapes::StructureShape.new(name: 'DescribeConformancePackStatusResponse')
    DescribeConformancePacksRequest = Shapes::StructureShape.new(name: 'DescribeConformancePacksRequest')
    DescribeConformancePacksResponse = Shapes::StructureShape.new(name: 'DescribeConformancePacksResponse')
    DescribeDeliveryChannelStatusRequest = Shapes::StructureShape.new(name: 'DescribeDeliveryChannelStatusRequest')
    DescribeDeliveryChannelStatusResponse = Shapes::StructureShape.new(name: 'DescribeDeliveryChannelStatusResponse')
    DescribeDeliveryChannelsRequest = Shapes::StructureShape.new(name: 'DescribeDeliveryChannelsRequest')
    DescribeDeliveryChannelsResponse = Shapes::StructureShape.new(name: 'DescribeDeliveryChannelsResponse')
    DescribeOrganizationConfigRuleStatusesRequest = Shapes::StructureShape.new(name: 'DescribeOrganizationConfigRuleStatusesRequest')
    DescribeOrganizationConfigRuleStatusesResponse = Shapes::StructureShape.new(name: 'DescribeOrganizationConfigRuleStatusesResponse')
    DescribeOrganizationConfigRulesRequest = Shapes::StructureShape.new(name: 'DescribeOrganizationConfigRulesRequest')
    DescribeOrganizationConfigRulesResponse = Shapes::StructureShape.new(name: 'DescribeOrganizationConfigRulesResponse')
    DescribeOrganizationConformancePackStatusesRequest = Shapes::StructureShape.new(name: 'DescribeOrganizationConformancePackStatusesRequest')
    DescribeOrganizationConformancePackStatusesResponse = Shapes::StructureShape.new(name: 'DescribeOrganizationConformancePackStatusesResponse')
    DescribeOrganizationConformancePacksRequest = Shapes::StructureShape.new(name: 'DescribeOrganizationConformancePacksRequest')
    DescribeOrganizationConformancePacksResponse = Shapes::StructureShape.new(name: 'DescribeOrganizationConformancePacksResponse')
    DescribePendingAggregationRequestsLimit = Shapes::IntegerShape.new(name: 'DescribePendingAggregationRequestsLimit')
    DescribePendingAggregationRequestsRequest = Shapes::StructureShape.new(name: 'DescribePendingAggregationRequestsRequest')
    DescribePendingAggregationRequestsResponse = Shapes::StructureShape.new(name: 'DescribePendingAggregationRequestsResponse')
    DescribeRemediationConfigurationsRequest = Shapes::StructureShape.new(name: 'DescribeRemediationConfigurationsRequest')
    DescribeRemediationConfigurationsResponse = Shapes::StructureShape.new(name: 'DescribeRemediationConfigurationsResponse')
    DescribeRemediationExceptionsRequest = Shapes::StructureShape.new(name: 'DescribeRemediationExceptionsRequest')
    DescribeRemediationExceptionsResponse = Shapes::StructureShape.new(name: 'DescribeRemediationExceptionsResponse')
    DescribeRemediationExecutionStatusRequest = Shapes::StructureShape.new(name: 'DescribeRemediationExecutionStatusRequest')
    DescribeRemediationExecutionStatusResponse = Shapes::StructureShape.new(name: 'DescribeRemediationExecutionStatusResponse')
    DescribeRetentionConfigurationsRequest = Shapes::StructureShape.new(name: 'DescribeRetentionConfigurationsRequest')
    DescribeRetentionConfigurationsResponse = Shapes::StructureShape.new(name: 'DescribeRetentionConfigurationsResponse')
    DiscoveredResourceIdentifierList = Shapes::ListShape.new(name: 'DiscoveredResourceIdentifierList')
    EarlierTime = Shapes::TimestampShape.new(name: 'EarlierTime')
    EmptiableStringWithCharLimit256 = Shapes::StringShape.new(name: 'EmptiableStringWithCharLimit256')
    Evaluation = Shapes::StructureShape.new(name: 'Evaluation')
    EvaluationResult = Shapes::StructureShape.new(name: 'EvaluationResult')
    EvaluationResultIdentifier = Shapes::StructureShape.new(name: 'EvaluationResultIdentifier')
    EvaluationResultQualifier = Shapes::StructureShape.new(name: 'EvaluationResultQualifier')
    EvaluationResults = Shapes::ListShape.new(name: 'EvaluationResults')
    Evaluations = Shapes::ListShape.new(name: 'Evaluations')
    EventSource = Shapes::StringShape.new(name: 'EventSource')
    ExcludedAccounts = Shapes::ListShape.new(name: 'ExcludedAccounts')
    ExecutionControls = Shapes::StructureShape.new(name: 'ExecutionControls')
    Expression = Shapes::StringShape.new(name: 'Expression')
    FailedDeleteRemediationExceptionsBatch = Shapes::StructureShape.new(name: 'FailedDeleteRemediationExceptionsBatch')
    FailedDeleteRemediationExceptionsBatches = Shapes::ListShape.new(name: 'FailedDeleteRemediationExceptionsBatches')
    FailedRemediationBatch = Shapes::StructureShape.new(name: 'FailedRemediationBatch')
    FailedRemediationBatches = Shapes::ListShape.new(name: 'FailedRemediationBatches')
    FailedRemediationExceptionBatch = Shapes::StructureShape.new(name: 'FailedRemediationExceptionBatch')
    FailedRemediationExceptionBatches = Shapes::ListShape.new(name: 'FailedRemediationExceptionBatches')
    FieldInfo = Shapes::StructureShape.new(name: 'FieldInfo')
    FieldInfoList = Shapes::ListShape.new(name: 'FieldInfoList')
    FieldName = Shapes::StringShape.new(name: 'FieldName')
    GetAggregateComplianceDetailsByConfigRuleRequest = Shapes::StructureShape.new(name: 'GetAggregateComplianceDetailsByConfigRuleRequest')
    GetAggregateComplianceDetailsByConfigRuleResponse = Shapes::StructureShape.new(name: 'GetAggregateComplianceDetailsByConfigRuleResponse')
    GetAggregateConfigRuleComplianceSummaryRequest = Shapes::StructureShape.new(name: 'GetAggregateConfigRuleComplianceSummaryRequest')
    GetAggregateConfigRuleComplianceSummaryResponse = Shapes::StructureShape.new(name: 'GetAggregateConfigRuleComplianceSummaryResponse')
    GetAggregateDiscoveredResourceCountsRequest = Shapes::StructureShape.new(name: 'GetAggregateDiscoveredResourceCountsRequest')
    GetAggregateDiscoveredResourceCountsResponse = Shapes::StructureShape.new(name: 'GetAggregateDiscoveredResourceCountsResponse')
    GetAggregateResourceConfigRequest = Shapes::StructureShape.new(name: 'GetAggregateResourceConfigRequest')
    GetAggregateResourceConfigResponse = Shapes::StructureShape.new(name: 'GetAggregateResourceConfigResponse')
    GetComplianceDetailsByConfigRuleRequest = Shapes::StructureShape.new(name: 'GetComplianceDetailsByConfigRuleRequest')
    GetComplianceDetailsByConfigRuleResponse = Shapes::StructureShape.new(name: 'GetComplianceDetailsByConfigRuleResponse')
    GetComplianceDetailsByResourceRequest = Shapes::StructureShape.new(name: 'GetComplianceDetailsByResourceRequest')
    GetComplianceDetailsByResourceResponse = Shapes::StructureShape.new(name: 'GetComplianceDetailsByResourceResponse')
    GetComplianceSummaryByConfigRuleResponse = Shapes::StructureShape.new(name: 'GetComplianceSummaryByConfigRuleResponse')
    GetComplianceSummaryByResourceTypeRequest = Shapes::StructureShape.new(name: 'GetComplianceSummaryByResourceTypeRequest')
    GetComplianceSummaryByResourceTypeResponse = Shapes::StructureShape.new(name: 'GetComplianceSummaryByResourceTypeResponse')
    GetConformancePackComplianceDetailsLimit = Shapes::IntegerShape.new(name: 'GetConformancePackComplianceDetailsLimit')
    GetConformancePackComplianceDetailsRequest = Shapes::StructureShape.new(name: 'GetConformancePackComplianceDetailsRequest')
    GetConformancePackComplianceDetailsResponse = Shapes::StructureShape.new(name: 'GetConformancePackComplianceDetailsResponse')
    GetConformancePackComplianceSummaryRequest = Shapes::StructureShape.new(name: 'GetConformancePackComplianceSummaryRequest')
    GetConformancePackComplianceSummaryResponse = Shapes::StructureShape.new(name: 'GetConformancePackComplianceSummaryResponse')
    GetDiscoveredResourceCountsRequest = Shapes::StructureShape.new(name: 'GetDiscoveredResourceCountsRequest')
    GetDiscoveredResourceCountsResponse = Shapes::StructureShape.new(name: 'GetDiscoveredResourceCountsResponse')
    GetOrganizationConfigRuleDetailedStatusRequest = Shapes::StructureShape.new(name: 'GetOrganizationConfigRuleDetailedStatusRequest')
    GetOrganizationConfigRuleDetailedStatusResponse = Shapes::StructureShape.new(name: 'GetOrganizationConfigRuleDetailedStatusResponse')
    GetOrganizationConformancePackDetailedStatusRequest = Shapes::StructureShape.new(name: 'GetOrganizationConformancePackDetailedStatusRequest')
    GetOrganizationConformancePackDetailedStatusResponse = Shapes::StructureShape.new(name: 'GetOrganizationConformancePackDetailedStatusResponse')
    GetResourceConfigHistoryRequest = Shapes::StructureShape.new(name: 'GetResourceConfigHistoryRequest')
    GetResourceConfigHistoryResponse = Shapes::StructureShape.new(name: 'GetResourceConfigHistoryResponse')
    GroupByAPILimit = Shapes::IntegerShape.new(name: 'GroupByAPILimit')
    GroupedResourceCount = Shapes::StructureShape.new(name: 'GroupedResourceCount')
    GroupedResourceCountList = Shapes::ListShape.new(name: 'GroupedResourceCountList')
    IncludeGlobalResourceTypes = Shapes::BooleanShape.new(name: 'IncludeGlobalResourceTypes')
    InsufficientDeliveryPolicyException = Shapes::StructureShape.new(name: 'InsufficientDeliveryPolicyException')
    InsufficientPermissionsException = Shapes::StructureShape.new(name: 'InsufficientPermissionsException')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidConfigurationRecorderNameException = Shapes::StructureShape.new(name: 'InvalidConfigurationRecorderNameException')
    InvalidDeliveryChannelNameException = Shapes::StructureShape.new(name: 'InvalidDeliveryChannelNameException')
    InvalidExpressionException = Shapes::StructureShape.new(name: 'InvalidExpressionException')
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
    ListAggregateDiscoveredResourcesRequest = Shapes::StructureShape.new(name: 'ListAggregateDiscoveredResourcesRequest')
    ListAggregateDiscoveredResourcesResponse = Shapes::StructureShape.new(name: 'ListAggregateDiscoveredResourcesResponse')
    ListDiscoveredResourcesRequest = Shapes::StructureShape.new(name: 'ListDiscoveredResourcesRequest')
    ListDiscoveredResourcesResponse = Shapes::StructureShape.new(name: 'ListDiscoveredResourcesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxActiveResourcesExceededException = Shapes::StructureShape.new(name: 'MaxActiveResourcesExceededException')
    MaxNumberOfConfigRulesExceededException = Shapes::StructureShape.new(name: 'MaxNumberOfConfigRulesExceededException')
    MaxNumberOfConfigurationRecordersExceededException = Shapes::StructureShape.new(name: 'MaxNumberOfConfigurationRecordersExceededException')
    MaxNumberOfConformancePacksExceededException = Shapes::StructureShape.new(name: 'MaxNumberOfConformancePacksExceededException')
    MaxNumberOfDeliveryChannelsExceededException = Shapes::StructureShape.new(name: 'MaxNumberOfDeliveryChannelsExceededException')
    MaxNumberOfOrganizationConfigRulesExceededException = Shapes::StructureShape.new(name: 'MaxNumberOfOrganizationConfigRulesExceededException')
    MaxNumberOfOrganizationConformancePacksExceededException = Shapes::StructureShape.new(name: 'MaxNumberOfOrganizationConformancePacksExceededException')
    MaxNumberOfRetentionConfigurationsExceededException = Shapes::StructureShape.new(name: 'MaxNumberOfRetentionConfigurationsExceededException')
    MaximumExecutionFrequency = Shapes::StringShape.new(name: 'MaximumExecutionFrequency')
    MemberAccountRuleStatus = Shapes::StringShape.new(name: 'MemberAccountRuleStatus')
    MemberAccountStatus = Shapes::StructureShape.new(name: 'MemberAccountStatus')
    MessageType = Shapes::StringShape.new(name: 'MessageType')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NoAvailableConfigurationRecorderException = Shapes::StructureShape.new(name: 'NoAvailableConfigurationRecorderException')
    NoAvailableDeliveryChannelException = Shapes::StructureShape.new(name: 'NoAvailableDeliveryChannelException')
    NoAvailableOrganizationException = Shapes::StructureShape.new(name: 'NoAvailableOrganizationException')
    NoRunningConfigurationRecorderException = Shapes::StructureShape.new(name: 'NoRunningConfigurationRecorderException')
    NoSuchBucketException = Shapes::StructureShape.new(name: 'NoSuchBucketException')
    NoSuchConfigRuleException = Shapes::StructureShape.new(name: 'NoSuchConfigRuleException')
    NoSuchConfigRuleInConformancePackException = Shapes::StructureShape.new(name: 'NoSuchConfigRuleInConformancePackException')
    NoSuchConfigurationAggregatorException = Shapes::StructureShape.new(name: 'NoSuchConfigurationAggregatorException')
    NoSuchConfigurationRecorderException = Shapes::StructureShape.new(name: 'NoSuchConfigurationRecorderException')
    NoSuchConformancePackException = Shapes::StructureShape.new(name: 'NoSuchConformancePackException')
    NoSuchDeliveryChannelException = Shapes::StructureShape.new(name: 'NoSuchDeliveryChannelException')
    NoSuchOrganizationConfigRuleException = Shapes::StructureShape.new(name: 'NoSuchOrganizationConfigRuleException')
    NoSuchOrganizationConformancePackException = Shapes::StructureShape.new(name: 'NoSuchOrganizationConformancePackException')
    NoSuchRemediationConfigurationException = Shapes::StructureShape.new(name: 'NoSuchRemediationConfigurationException')
    NoSuchRemediationExceptionException = Shapes::StructureShape.new(name: 'NoSuchRemediationExceptionException')
    NoSuchRetentionConfigurationException = Shapes::StructureShape.new(name: 'NoSuchRetentionConfigurationException')
    OrderingTimestamp = Shapes::TimestampShape.new(name: 'OrderingTimestamp')
    OrganizationAccessDeniedException = Shapes::StructureShape.new(name: 'OrganizationAccessDeniedException')
    OrganizationAggregationSource = Shapes::StructureShape.new(name: 'OrganizationAggregationSource')
    OrganizationAllFeaturesNotEnabledException = Shapes::StructureShape.new(name: 'OrganizationAllFeaturesNotEnabledException')
    OrganizationConfigRule = Shapes::StructureShape.new(name: 'OrganizationConfigRule')
    OrganizationConfigRuleDetailedStatus = Shapes::ListShape.new(name: 'OrganizationConfigRuleDetailedStatus')
    OrganizationConfigRuleName = Shapes::StringShape.new(name: 'OrganizationConfigRuleName')
    OrganizationConfigRuleNames = Shapes::ListShape.new(name: 'OrganizationConfigRuleNames')
    OrganizationConfigRuleStatus = Shapes::StructureShape.new(name: 'OrganizationConfigRuleStatus')
    OrganizationConfigRuleStatuses = Shapes::ListShape.new(name: 'OrganizationConfigRuleStatuses')
    OrganizationConfigRuleTriggerType = Shapes::StringShape.new(name: 'OrganizationConfigRuleTriggerType')
    OrganizationConfigRuleTriggerTypes = Shapes::ListShape.new(name: 'OrganizationConfigRuleTriggerTypes')
    OrganizationConfigRules = Shapes::ListShape.new(name: 'OrganizationConfigRules')
    OrganizationConformancePack = Shapes::StructureShape.new(name: 'OrganizationConformancePack')
    OrganizationConformancePackDetailedStatus = Shapes::StructureShape.new(name: 'OrganizationConformancePackDetailedStatus')
    OrganizationConformancePackDetailedStatuses = Shapes::ListShape.new(name: 'OrganizationConformancePackDetailedStatuses')
    OrganizationConformancePackName = Shapes::StringShape.new(name: 'OrganizationConformancePackName')
    OrganizationConformancePackNames = Shapes::ListShape.new(name: 'OrganizationConformancePackNames')
    OrganizationConformancePackStatus = Shapes::StructureShape.new(name: 'OrganizationConformancePackStatus')
    OrganizationConformancePackStatuses = Shapes::ListShape.new(name: 'OrganizationConformancePackStatuses')
    OrganizationConformancePackTemplateValidationException = Shapes::StructureShape.new(name: 'OrganizationConformancePackTemplateValidationException')
    OrganizationConformancePacks = Shapes::ListShape.new(name: 'OrganizationConformancePacks')
    OrganizationCustomRuleMetadata = Shapes::StructureShape.new(name: 'OrganizationCustomRuleMetadata')
    OrganizationManagedRuleMetadata = Shapes::StructureShape.new(name: 'OrganizationManagedRuleMetadata')
    OrganizationResourceDetailedStatus = Shapes::StringShape.new(name: 'OrganizationResourceDetailedStatus')
    OrganizationResourceDetailedStatusFilters = Shapes::StructureShape.new(name: 'OrganizationResourceDetailedStatusFilters')
    OrganizationResourceStatus = Shapes::StringShape.new(name: 'OrganizationResourceStatus')
    OrganizationRuleStatus = Shapes::StringShape.new(name: 'OrganizationRuleStatus')
    OversizedConfigurationItemException = Shapes::StructureShape.new(name: 'OversizedConfigurationItemException')
    Owner = Shapes::StringShape.new(name: 'Owner')
    PageSizeLimit = Shapes::IntegerShape.new(name: 'PageSizeLimit')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    PendingAggregationRequest = Shapes::StructureShape.new(name: 'PendingAggregationRequest')
    PendingAggregationRequestList = Shapes::ListShape.new(name: 'PendingAggregationRequestList')
    Percentage = Shapes::IntegerShape.new(name: 'Percentage')
    PutAggregationAuthorizationRequest = Shapes::StructureShape.new(name: 'PutAggregationAuthorizationRequest')
    PutAggregationAuthorizationResponse = Shapes::StructureShape.new(name: 'PutAggregationAuthorizationResponse')
    PutConfigRuleRequest = Shapes::StructureShape.new(name: 'PutConfigRuleRequest')
    PutConfigurationAggregatorRequest = Shapes::StructureShape.new(name: 'PutConfigurationAggregatorRequest')
    PutConfigurationAggregatorResponse = Shapes::StructureShape.new(name: 'PutConfigurationAggregatorResponse')
    PutConfigurationRecorderRequest = Shapes::StructureShape.new(name: 'PutConfigurationRecorderRequest')
    PutConformancePackRequest = Shapes::StructureShape.new(name: 'PutConformancePackRequest')
    PutConformancePackResponse = Shapes::StructureShape.new(name: 'PutConformancePackResponse')
    PutDeliveryChannelRequest = Shapes::StructureShape.new(name: 'PutDeliveryChannelRequest')
    PutEvaluationsRequest = Shapes::StructureShape.new(name: 'PutEvaluationsRequest')
    PutEvaluationsResponse = Shapes::StructureShape.new(name: 'PutEvaluationsResponse')
    PutOrganizationConfigRuleRequest = Shapes::StructureShape.new(name: 'PutOrganizationConfigRuleRequest')
    PutOrganizationConfigRuleResponse = Shapes::StructureShape.new(name: 'PutOrganizationConfigRuleResponse')
    PutOrganizationConformancePackRequest = Shapes::StructureShape.new(name: 'PutOrganizationConformancePackRequest')
    PutOrganizationConformancePackResponse = Shapes::StructureShape.new(name: 'PutOrganizationConformancePackResponse')
    PutRemediationConfigurationsRequest = Shapes::StructureShape.new(name: 'PutRemediationConfigurationsRequest')
    PutRemediationConfigurationsResponse = Shapes::StructureShape.new(name: 'PutRemediationConfigurationsResponse')
    PutRemediationExceptionsRequest = Shapes::StructureShape.new(name: 'PutRemediationExceptionsRequest')
    PutRemediationExceptionsResponse = Shapes::StructureShape.new(name: 'PutRemediationExceptionsResponse')
    PutResourceConfigRequest = Shapes::StructureShape.new(name: 'PutResourceConfigRequest')
    PutRetentionConfigurationRequest = Shapes::StructureShape.new(name: 'PutRetentionConfigurationRequest')
    PutRetentionConfigurationResponse = Shapes::StructureShape.new(name: 'PutRetentionConfigurationResponse')
    QueryInfo = Shapes::StructureShape.new(name: 'QueryInfo')
    RecorderName = Shapes::StringShape.new(name: 'RecorderName')
    RecorderStatus = Shapes::StringShape.new(name: 'RecorderStatus')
    RecordingGroup = Shapes::StructureShape.new(name: 'RecordingGroup')
    ReevaluateConfigRuleNames = Shapes::ListShape.new(name: 'ReevaluateConfigRuleNames')
    RelatedEvent = Shapes::StringShape.new(name: 'RelatedEvent')
    RelatedEventList = Shapes::ListShape.new(name: 'RelatedEventList')
    Relationship = Shapes::StructureShape.new(name: 'Relationship')
    RelationshipList = Shapes::ListShape.new(name: 'RelationshipList')
    RelationshipName = Shapes::StringShape.new(name: 'RelationshipName')
    RemediationConfiguration = Shapes::StructureShape.new(name: 'RemediationConfiguration')
    RemediationConfigurations = Shapes::ListShape.new(name: 'RemediationConfigurations')
    RemediationException = Shapes::StructureShape.new(name: 'RemediationException')
    RemediationExceptionResourceKey = Shapes::StructureShape.new(name: 'RemediationExceptionResourceKey')
    RemediationExceptionResourceKeys = Shapes::ListShape.new(name: 'RemediationExceptionResourceKeys')
    RemediationExceptions = Shapes::ListShape.new(name: 'RemediationExceptions')
    RemediationExecutionState = Shapes::StringShape.new(name: 'RemediationExecutionState')
    RemediationExecutionStatus = Shapes::StructureShape.new(name: 'RemediationExecutionStatus')
    RemediationExecutionStatuses = Shapes::ListShape.new(name: 'RemediationExecutionStatuses')
    RemediationExecutionStep = Shapes::StructureShape.new(name: 'RemediationExecutionStep')
    RemediationExecutionStepState = Shapes::StringShape.new(name: 'RemediationExecutionStepState')
    RemediationExecutionSteps = Shapes::ListShape.new(name: 'RemediationExecutionSteps')
    RemediationInProgressException = Shapes::StructureShape.new(name: 'RemediationInProgressException')
    RemediationParameterValue = Shapes::StructureShape.new(name: 'RemediationParameterValue')
    RemediationParameters = Shapes::MapShape.new(name: 'RemediationParameters')
    RemediationTargetType = Shapes::StringShape.new(name: 'RemediationTargetType')
    ResourceCount = Shapes::StructureShape.new(name: 'ResourceCount')
    ResourceCountFilters = Shapes::StructureShape.new(name: 'ResourceCountFilters')
    ResourceCountGroupKey = Shapes::StringShape.new(name: 'ResourceCountGroupKey')
    ResourceCounts = Shapes::ListShape.new(name: 'ResourceCounts')
    ResourceCreationTime = Shapes::TimestampShape.new(name: 'ResourceCreationTime')
    ResourceDeletionTime = Shapes::TimestampShape.new(name: 'ResourceDeletionTime')
    ResourceFilters = Shapes::StructureShape.new(name: 'ResourceFilters')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceIdList = Shapes::ListShape.new(name: 'ResourceIdList')
    ResourceIdentifier = Shapes::StructureShape.new(name: 'ResourceIdentifier')
    ResourceIdentifierList = Shapes::ListShape.new(name: 'ResourceIdentifierList')
    ResourceIdentifiersList = Shapes::ListShape.new(name: 'ResourceIdentifiersList')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceKey = Shapes::StructureShape.new(name: 'ResourceKey')
    ResourceKeys = Shapes::ListShape.new(name: 'ResourceKeys')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotDiscoveredException = Shapes::StructureShape.new(name: 'ResourceNotDiscoveredException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ResourceTypeList = Shapes::ListShape.new(name: 'ResourceTypeList')
    ResourceTypeString = Shapes::StringShape.new(name: 'ResourceTypeString')
    ResourceTypes = Shapes::ListShape.new(name: 'ResourceTypes')
    ResourceTypesScope = Shapes::ListShape.new(name: 'ResourceTypesScope')
    ResourceValue = Shapes::StructureShape.new(name: 'ResourceValue')
    ResourceValueType = Shapes::StringShape.new(name: 'ResourceValueType')
    Results = Shapes::ListShape.new(name: 'Results')
    RetentionConfiguration = Shapes::StructureShape.new(name: 'RetentionConfiguration')
    RetentionConfigurationList = Shapes::ListShape.new(name: 'RetentionConfigurationList')
    RetentionConfigurationName = Shapes::StringShape.new(name: 'RetentionConfigurationName')
    RetentionConfigurationNameList = Shapes::ListShape.new(name: 'RetentionConfigurationNameList')
    RetentionPeriodInDays = Shapes::IntegerShape.new(name: 'RetentionPeriodInDays')
    RuleLimit = Shapes::IntegerShape.new(name: 'RuleLimit')
    SchemaVersionId = Shapes::StringShape.new(name: 'SchemaVersionId')
    Scope = Shapes::StructureShape.new(name: 'Scope')
    SelectAggregateResourceConfigRequest = Shapes::StructureShape.new(name: 'SelectAggregateResourceConfigRequest')
    SelectAggregateResourceConfigResponse = Shapes::StructureShape.new(name: 'SelectAggregateResourceConfigResponse')
    SelectResourceConfigRequest = Shapes::StructureShape.new(name: 'SelectResourceConfigRequest')
    SelectResourceConfigResponse = Shapes::StructureShape.new(name: 'SelectResourceConfigResponse')
    Source = Shapes::StructureShape.new(name: 'Source')
    SourceDetail = Shapes::StructureShape.new(name: 'SourceDetail')
    SourceDetails = Shapes::ListShape.new(name: 'SourceDetails')
    SsmControls = Shapes::StructureShape.new(name: 'SsmControls')
    StackArn = Shapes::StringShape.new(name: 'StackArn')
    StartConfigRulesEvaluationRequest = Shapes::StructureShape.new(name: 'StartConfigRulesEvaluationRequest')
    StartConfigRulesEvaluationResponse = Shapes::StructureShape.new(name: 'StartConfigRulesEvaluationResponse')
    StartConfigurationRecorderRequest = Shapes::StructureShape.new(name: 'StartConfigurationRecorderRequest')
    StartRemediationExecutionRequest = Shapes::StructureShape.new(name: 'StartRemediationExecutionRequest')
    StartRemediationExecutionResponse = Shapes::StructureShape.new(name: 'StartRemediationExecutionResponse')
    StaticParameterValues = Shapes::ListShape.new(name: 'StaticParameterValues')
    StaticValue = Shapes::StructureShape.new(name: 'StaticValue')
    StatusDetailFilters = Shapes::StructureShape.new(name: 'StatusDetailFilters')
    StopConfigurationRecorderRequest = Shapes::StructureShape.new(name: 'StopConfigurationRecorderRequest')
    String = Shapes::StringShape.new(name: 'String')
    StringWithCharLimit1024 = Shapes::StringShape.new(name: 'StringWithCharLimit1024')
    StringWithCharLimit128 = Shapes::StringShape.new(name: 'StringWithCharLimit128')
    StringWithCharLimit2048 = Shapes::StringShape.new(name: 'StringWithCharLimit2048')
    StringWithCharLimit256 = Shapes::StringShape.new(name: 'StringWithCharLimit256')
    StringWithCharLimit256Min0 = Shapes::StringShape.new(name: 'StringWithCharLimit256Min0')
    StringWithCharLimit64 = Shapes::StringShape.new(name: 'StringWithCharLimit64')
    StringWithCharLimit768 = Shapes::StringShape.new(name: 'StringWithCharLimit768')
    SupplementaryConfiguration = Shapes::MapShape.new(name: 'SupplementaryConfiguration')
    SupplementaryConfigurationName = Shapes::StringShape.new(name: 'SupplementaryConfigurationName')
    SupplementaryConfigurationValue = Shapes::StringShape.new(name: 'SupplementaryConfigurationValue')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TagsList = Shapes::ListShape.new(name: 'TagsList')
    TemplateBody = Shapes::StringShape.new(name: 'TemplateBody')
    TemplateS3Uri = Shapes::StringShape.new(name: 'TemplateS3Uri')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UnprocessedResourceIdentifierList = Shapes::ListShape.new(name: 'UnprocessedResourceIdentifierList')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Value = Shapes::StringShape.new(name: 'Value')
    Version = Shapes::StringShape.new(name: 'Version')

    AccountAggregationSource.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountAggregationSourceAccountList, required: true, location_name: "AccountIds"))
    AccountAggregationSource.add_member(:all_aws_regions, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllAwsRegions"))
    AccountAggregationSource.add_member(:aws_regions, Shapes::ShapeRef.new(shape: AggregatorRegionList, location_name: "AwsRegions"))
    AccountAggregationSource.struct_class = Types::AccountAggregationSource

    AccountAggregationSourceAccountList.member = Shapes::ShapeRef.new(shape: AccountId)

    AccountAggregationSourceList.member = Shapes::ShapeRef.new(shape: AccountAggregationSource)

    AggregateComplianceByConfigRule.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: ConfigRuleName, location_name: "ConfigRuleName"))
    AggregateComplianceByConfigRule.add_member(:compliance, Shapes::ShapeRef.new(shape: Compliance, location_name: "Compliance"))
    AggregateComplianceByConfigRule.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    AggregateComplianceByConfigRule.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "AwsRegion"))
    AggregateComplianceByConfigRule.struct_class = Types::AggregateComplianceByConfigRule

    AggregateComplianceByConfigRuleList.member = Shapes::ShapeRef.new(shape: AggregateComplianceByConfigRule)

    AggregateComplianceCount.add_member(:group_name, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "GroupName"))
    AggregateComplianceCount.add_member(:compliance_summary, Shapes::ShapeRef.new(shape: ComplianceSummary, location_name: "ComplianceSummary"))
    AggregateComplianceCount.struct_class = Types::AggregateComplianceCount

    AggregateComplianceCountList.member = Shapes::ShapeRef.new(shape: AggregateComplianceCount)

    AggregateEvaluationResult.add_member(:evaluation_result_identifier, Shapes::ShapeRef.new(shape: EvaluationResultIdentifier, location_name: "EvaluationResultIdentifier"))
    AggregateEvaluationResult.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceType, location_name: "ComplianceType"))
    AggregateEvaluationResult.add_member(:result_recorded_time, Shapes::ShapeRef.new(shape: Date, location_name: "ResultRecordedTime"))
    AggregateEvaluationResult.add_member(:config_rule_invoked_time, Shapes::ShapeRef.new(shape: Date, location_name: "ConfigRuleInvokedTime"))
    AggregateEvaluationResult.add_member(:annotation, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "Annotation"))
    AggregateEvaluationResult.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    AggregateEvaluationResult.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "AwsRegion"))
    AggregateEvaluationResult.struct_class = Types::AggregateEvaluationResult

    AggregateEvaluationResultList.member = Shapes::ShapeRef.new(shape: AggregateEvaluationResult)

    AggregateResourceIdentifier.add_member(:source_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "SourceAccountId"))
    AggregateResourceIdentifier.add_member(:source_region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "SourceRegion"))
    AggregateResourceIdentifier.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    AggregateResourceIdentifier.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    AggregateResourceIdentifier.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName"))
    AggregateResourceIdentifier.struct_class = Types::AggregateResourceIdentifier

    AggregatedSourceStatus.add_member(:source_id, Shapes::ShapeRef.new(shape: String, location_name: "SourceId"))
    AggregatedSourceStatus.add_member(:source_type, Shapes::ShapeRef.new(shape: AggregatedSourceType, location_name: "SourceType"))
    AggregatedSourceStatus.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "AwsRegion"))
    AggregatedSourceStatus.add_member(:last_update_status, Shapes::ShapeRef.new(shape: AggregatedSourceStatusType, location_name: "LastUpdateStatus"))
    AggregatedSourceStatus.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdateTime"))
    AggregatedSourceStatus.add_member(:last_error_code, Shapes::ShapeRef.new(shape: String, location_name: "LastErrorCode"))
    AggregatedSourceStatus.add_member(:last_error_message, Shapes::ShapeRef.new(shape: String, location_name: "LastErrorMessage"))
    AggregatedSourceStatus.struct_class = Types::AggregatedSourceStatus

    AggregatedSourceStatusList.member = Shapes::ShapeRef.new(shape: AggregatedSourceStatus)

    AggregatedSourceStatusTypeList.member = Shapes::ShapeRef.new(shape: AggregatedSourceStatusType)

    AggregationAuthorization.add_member(:aggregation_authorization_arn, Shapes::ShapeRef.new(shape: String, location_name: "AggregationAuthorizationArn"))
    AggregationAuthorization.add_member(:authorized_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AuthorizedAccountId"))
    AggregationAuthorization.add_member(:authorized_aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "AuthorizedAwsRegion"))
    AggregationAuthorization.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    AggregationAuthorization.struct_class = Types::AggregationAuthorization

    AggregationAuthorizationList.member = Shapes::ShapeRef.new(shape: AggregationAuthorization)

    AggregatorRegionList.member = Shapes::ShapeRef.new(shape: String)

    BaseConfigurationItem.add_member(:version, Shapes::ShapeRef.new(shape: Version, location_name: "version"))
    BaseConfigurationItem.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    BaseConfigurationItem.add_member(:configuration_item_capture_time, Shapes::ShapeRef.new(shape: ConfigurationItemCaptureTime, location_name: "configurationItemCaptureTime"))
    BaseConfigurationItem.add_member(:configuration_item_status, Shapes::ShapeRef.new(shape: ConfigurationItemStatus, location_name: "configurationItemStatus"))
    BaseConfigurationItem.add_member(:configuration_state_id, Shapes::ShapeRef.new(shape: ConfigurationStateId, location_name: "configurationStateId"))
    BaseConfigurationItem.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "arn"))
    BaseConfigurationItem.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    BaseConfigurationItem.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    BaseConfigurationItem.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName"))
    BaseConfigurationItem.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsRegion"))
    BaseConfigurationItem.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "availabilityZone"))
    BaseConfigurationItem.add_member(:resource_creation_time, Shapes::ShapeRef.new(shape: ResourceCreationTime, location_name: "resourceCreationTime"))
    BaseConfigurationItem.add_member(:configuration, Shapes::ShapeRef.new(shape: Configuration, location_name: "configuration"))
    BaseConfigurationItem.add_member(:supplementary_configuration, Shapes::ShapeRef.new(shape: SupplementaryConfiguration, location_name: "supplementaryConfiguration"))
    BaseConfigurationItem.struct_class = Types::BaseConfigurationItem

    BaseConfigurationItems.member = Shapes::ShapeRef.new(shape: BaseConfigurationItem)

    BatchGetAggregateResourceConfigRequest.add_member(:configuration_aggregator_name, Shapes::ShapeRef.new(shape: ConfigurationAggregatorName, required: true, location_name: "ConfigurationAggregatorName"))
    BatchGetAggregateResourceConfigRequest.add_member(:resource_identifiers, Shapes::ShapeRef.new(shape: ResourceIdentifiersList, required: true, location_name: "ResourceIdentifiers"))
    BatchGetAggregateResourceConfigRequest.struct_class = Types::BatchGetAggregateResourceConfigRequest

    BatchGetAggregateResourceConfigResponse.add_member(:base_configuration_items, Shapes::ShapeRef.new(shape: BaseConfigurationItems, location_name: "BaseConfigurationItems"))
    BatchGetAggregateResourceConfigResponse.add_member(:unprocessed_resource_identifiers, Shapes::ShapeRef.new(shape: UnprocessedResourceIdentifierList, location_name: "UnprocessedResourceIdentifiers"))
    BatchGetAggregateResourceConfigResponse.struct_class = Types::BatchGetAggregateResourceConfigResponse

    BatchGetResourceConfigRequest.add_member(:resource_keys, Shapes::ShapeRef.new(shape: ResourceKeys, required: true, location_name: "resourceKeys"))
    BatchGetResourceConfigRequest.struct_class = Types::BatchGetResourceConfigRequest

    BatchGetResourceConfigResponse.add_member(:base_configuration_items, Shapes::ShapeRef.new(shape: BaseConfigurationItems, location_name: "baseConfigurationItems"))
    BatchGetResourceConfigResponse.add_member(:unprocessed_resource_keys, Shapes::ShapeRef.new(shape: ResourceKeys, location_name: "unprocessedResourceKeys"))
    BatchGetResourceConfigResponse.struct_class = Types::BatchGetResourceConfigResponse

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

    ConfigRule.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: ConfigRuleName, location_name: "ConfigRuleName"))
    ConfigRule.add_member(:config_rule_arn, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "ConfigRuleArn"))
    ConfigRule.add_member(:config_rule_id, Shapes::ShapeRef.new(shape: StringWithCharLimit64, location_name: "ConfigRuleId"))
    ConfigRule.add_member(:description, Shapes::ShapeRef.new(shape: EmptiableStringWithCharLimit256, location_name: "Description"))
    ConfigRule.add_member(:scope, Shapes::ShapeRef.new(shape: Scope, location_name: "Scope"))
    ConfigRule.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "Source"))
    ConfigRule.add_member(:input_parameters, Shapes::ShapeRef.new(shape: StringWithCharLimit1024, location_name: "InputParameters"))
    ConfigRule.add_member(:maximum_execution_frequency, Shapes::ShapeRef.new(shape: MaximumExecutionFrequency, location_name: "MaximumExecutionFrequency"))
    ConfigRule.add_member(:config_rule_state, Shapes::ShapeRef.new(shape: ConfigRuleState, location_name: "ConfigRuleState"))
    ConfigRule.add_member(:created_by, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "CreatedBy"))
    ConfigRule.struct_class = Types::ConfigRule

    ConfigRuleComplianceFilters.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: ConfigRuleName, location_name: "ConfigRuleName"))
    ConfigRuleComplianceFilters.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceType, location_name: "ComplianceType"))
    ConfigRuleComplianceFilters.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    ConfigRuleComplianceFilters.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "AwsRegion"))
    ConfigRuleComplianceFilters.struct_class = Types::ConfigRuleComplianceFilters

    ConfigRuleComplianceSummaryFilters.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    ConfigRuleComplianceSummaryFilters.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "AwsRegion"))
    ConfigRuleComplianceSummaryFilters.struct_class = Types::ConfigRuleComplianceSummaryFilters

    ConfigRuleEvaluationStatus.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: ConfigRuleName, location_name: "ConfigRuleName"))
    ConfigRuleEvaluationStatus.add_member(:config_rule_arn, Shapes::ShapeRef.new(shape: String, location_name: "ConfigRuleArn"))
    ConfigRuleEvaluationStatus.add_member(:config_rule_id, Shapes::ShapeRef.new(shape: String, location_name: "ConfigRuleId"))
    ConfigRuleEvaluationStatus.add_member(:last_successful_invocation_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastSuccessfulInvocationTime"))
    ConfigRuleEvaluationStatus.add_member(:last_failed_invocation_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastFailedInvocationTime"))
    ConfigRuleEvaluationStatus.add_member(:last_successful_evaluation_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastSuccessfulEvaluationTime"))
    ConfigRuleEvaluationStatus.add_member(:last_failed_evaluation_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastFailedEvaluationTime"))
    ConfigRuleEvaluationStatus.add_member(:first_activated_time, Shapes::ShapeRef.new(shape: Date, location_name: "FirstActivatedTime"))
    ConfigRuleEvaluationStatus.add_member(:last_deactivated_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastDeactivatedTime"))
    ConfigRuleEvaluationStatus.add_member(:last_error_code, Shapes::ShapeRef.new(shape: String, location_name: "LastErrorCode"))
    ConfigRuleEvaluationStatus.add_member(:last_error_message, Shapes::ShapeRef.new(shape: String, location_name: "LastErrorMessage"))
    ConfigRuleEvaluationStatus.add_member(:first_evaluation_started, Shapes::ShapeRef.new(shape: Boolean, location_name: "FirstEvaluationStarted"))
    ConfigRuleEvaluationStatus.struct_class = Types::ConfigRuleEvaluationStatus

    ConfigRuleEvaluationStatusList.member = Shapes::ShapeRef.new(shape: ConfigRuleEvaluationStatus)

    ConfigRuleNames.member = Shapes::ShapeRef.new(shape: ConfigRuleName)

    ConfigRules.member = Shapes::ShapeRef.new(shape: ConfigRule)

    ConfigSnapshotDeliveryProperties.add_member(:delivery_frequency, Shapes::ShapeRef.new(shape: MaximumExecutionFrequency, location_name: "deliveryFrequency"))
    ConfigSnapshotDeliveryProperties.struct_class = Types::ConfigSnapshotDeliveryProperties

    ConfigStreamDeliveryInfo.add_member(:last_status, Shapes::ShapeRef.new(shape: DeliveryStatus, location_name: "lastStatus"))
    ConfigStreamDeliveryInfo.add_member(:last_error_code, Shapes::ShapeRef.new(shape: String, location_name: "lastErrorCode"))
    ConfigStreamDeliveryInfo.add_member(:last_error_message, Shapes::ShapeRef.new(shape: String, location_name: "lastErrorMessage"))
    ConfigStreamDeliveryInfo.add_member(:last_status_change_time, Shapes::ShapeRef.new(shape: Date, location_name: "lastStatusChangeTime"))
    ConfigStreamDeliveryInfo.struct_class = Types::ConfigStreamDeliveryInfo

    ConfigurationAggregator.add_member(:configuration_aggregator_name, Shapes::ShapeRef.new(shape: ConfigurationAggregatorName, location_name: "ConfigurationAggregatorName"))
    ConfigurationAggregator.add_member(:configuration_aggregator_arn, Shapes::ShapeRef.new(shape: ConfigurationAggregatorArn, location_name: "ConfigurationAggregatorArn"))
    ConfigurationAggregator.add_member(:account_aggregation_sources, Shapes::ShapeRef.new(shape: AccountAggregationSourceList, location_name: "AccountAggregationSources"))
    ConfigurationAggregator.add_member(:organization_aggregation_source, Shapes::ShapeRef.new(shape: OrganizationAggregationSource, location_name: "OrganizationAggregationSource"))
    ConfigurationAggregator.add_member(:creation_time, Shapes::ShapeRef.new(shape: Date, location_name: "CreationTime"))
    ConfigurationAggregator.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdatedTime"))
    ConfigurationAggregator.add_member(:created_by, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "CreatedBy"))
    ConfigurationAggregator.struct_class = Types::ConfigurationAggregator

    ConfigurationAggregatorList.member = Shapes::ShapeRef.new(shape: ConfigurationAggregator)

    ConfigurationAggregatorNameList.member = Shapes::ShapeRef.new(shape: ConfigurationAggregatorName)

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

    ConformancePackComplianceFilters.add_member(:config_rule_names, Shapes::ShapeRef.new(shape: ConformancePackConfigRuleNames, location_name: "ConfigRuleNames"))
    ConformancePackComplianceFilters.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ConformancePackComplianceType, location_name: "ComplianceType"))
    ConformancePackComplianceFilters.struct_class = Types::ConformancePackComplianceFilters

    ConformancePackComplianceResourceIds.member = Shapes::ShapeRef.new(shape: StringWithCharLimit256)

    ConformancePackComplianceSummary.add_member(:conformance_pack_name, Shapes::ShapeRef.new(shape: ConformancePackName, required: true, location_name: "ConformancePackName"))
    ConformancePackComplianceSummary.add_member(:conformance_pack_compliance_status, Shapes::ShapeRef.new(shape: ConformancePackComplianceType, required: true, location_name: "ConformancePackComplianceStatus"))
    ConformancePackComplianceSummary.struct_class = Types::ConformancePackComplianceSummary

    ConformancePackComplianceSummaryList.member = Shapes::ShapeRef.new(shape: ConformancePackComplianceSummary)

    ConformancePackConfigRuleNames.member = Shapes::ShapeRef.new(shape: StringWithCharLimit64)

    ConformancePackDetail.add_member(:conformance_pack_name, Shapes::ShapeRef.new(shape: ConformancePackName, required: true, location_name: "ConformancePackName"))
    ConformancePackDetail.add_member(:conformance_pack_arn, Shapes::ShapeRef.new(shape: ConformancePackArn, required: true, location_name: "ConformancePackArn"))
    ConformancePackDetail.add_member(:conformance_pack_id, Shapes::ShapeRef.new(shape: ConformancePackId, required: true, location_name: "ConformancePackId"))
    ConformancePackDetail.add_member(:delivery_s3_bucket, Shapes::ShapeRef.new(shape: DeliveryS3Bucket, location_name: "DeliveryS3Bucket"))
    ConformancePackDetail.add_member(:delivery_s3_key_prefix, Shapes::ShapeRef.new(shape: DeliveryS3KeyPrefix, location_name: "DeliveryS3KeyPrefix"))
    ConformancePackDetail.add_member(:conformance_pack_input_parameters, Shapes::ShapeRef.new(shape: ConformancePackInputParameters, location_name: "ConformancePackInputParameters"))
    ConformancePackDetail.add_member(:last_update_requested_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdateRequestedTime"))
    ConformancePackDetail.add_member(:created_by, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "CreatedBy"))
    ConformancePackDetail.struct_class = Types::ConformancePackDetail

    ConformancePackDetailList.member = Shapes::ShapeRef.new(shape: ConformancePackDetail)

    ConformancePackEvaluationFilters.add_member(:config_rule_names, Shapes::ShapeRef.new(shape: ConformancePackConfigRuleNames, location_name: "ConfigRuleNames"))
    ConformancePackEvaluationFilters.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ConformancePackComplianceType, location_name: "ComplianceType"))
    ConformancePackEvaluationFilters.add_member(:resource_type, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "ResourceType"))
    ConformancePackEvaluationFilters.add_member(:resource_ids, Shapes::ShapeRef.new(shape: ConformancePackComplianceResourceIds, location_name: "ResourceIds"))
    ConformancePackEvaluationFilters.struct_class = Types::ConformancePackEvaluationFilters

    ConformancePackEvaluationResult.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ConformancePackComplianceType, required: true, location_name: "ComplianceType"))
    ConformancePackEvaluationResult.add_member(:evaluation_result_identifier, Shapes::ShapeRef.new(shape: EvaluationResultIdentifier, required: true, location_name: "EvaluationResultIdentifier"))
    ConformancePackEvaluationResult.add_member(:config_rule_invoked_time, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "ConfigRuleInvokedTime"))
    ConformancePackEvaluationResult.add_member(:result_recorded_time, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "ResultRecordedTime"))
    ConformancePackEvaluationResult.add_member(:annotation, Shapes::ShapeRef.new(shape: Annotation, location_name: "Annotation"))
    ConformancePackEvaluationResult.struct_class = Types::ConformancePackEvaluationResult

    ConformancePackInputParameter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "ParameterName"))
    ConformancePackInputParameter.add_member(:parameter_value, Shapes::ShapeRef.new(shape: ParameterValue, required: true, location_name: "ParameterValue"))
    ConformancePackInputParameter.struct_class = Types::ConformancePackInputParameter

    ConformancePackInputParameters.member = Shapes::ShapeRef.new(shape: ConformancePackInputParameter)

    ConformancePackNamesList.member = Shapes::ShapeRef.new(shape: ConformancePackName)

    ConformancePackNamesToSummarizeList.member = Shapes::ShapeRef.new(shape: ConformancePackName)

    ConformancePackRuleCompliance.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: ConfigRuleName, location_name: "ConfigRuleName"))
    ConformancePackRuleCompliance.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ConformancePackComplianceType, location_name: "ComplianceType"))
    ConformancePackRuleCompliance.struct_class = Types::ConformancePackRuleCompliance

    ConformancePackRuleComplianceList.member = Shapes::ShapeRef.new(shape: ConformancePackRuleCompliance)

    ConformancePackRuleEvaluationResultsList.member = Shapes::ShapeRef.new(shape: ConformancePackEvaluationResult)

    ConformancePackStatusDetail.add_member(:conformance_pack_name, Shapes::ShapeRef.new(shape: ConformancePackName, required: true, location_name: "ConformancePackName"))
    ConformancePackStatusDetail.add_member(:conformance_pack_id, Shapes::ShapeRef.new(shape: ConformancePackId, required: true, location_name: "ConformancePackId"))
    ConformancePackStatusDetail.add_member(:conformance_pack_arn, Shapes::ShapeRef.new(shape: ConformancePackArn, required: true, location_name: "ConformancePackArn"))
    ConformancePackStatusDetail.add_member(:conformance_pack_state, Shapes::ShapeRef.new(shape: ConformancePackState, required: true, location_name: "ConformancePackState"))
    ConformancePackStatusDetail.add_member(:stack_arn, Shapes::ShapeRef.new(shape: StackArn, required: true, location_name: "StackArn"))
    ConformancePackStatusDetail.add_member(:conformance_pack_status_reason, Shapes::ShapeRef.new(shape: ConformancePackStatusReason, location_name: "ConformancePackStatusReason"))
    ConformancePackStatusDetail.add_member(:last_update_requested_time, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "LastUpdateRequestedTime"))
    ConformancePackStatusDetail.add_member(:last_update_completed_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdateCompletedTime"))
    ConformancePackStatusDetail.struct_class = Types::ConformancePackStatusDetail

    ConformancePackStatusDetailsList.member = Shapes::ShapeRef.new(shape: ConformancePackStatusDetail)

    ConformancePackTemplateValidationException.struct_class = Types::ConformancePackTemplateValidationException

    DeleteAggregationAuthorizationRequest.add_member(:authorized_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AuthorizedAccountId"))
    DeleteAggregationAuthorizationRequest.add_member(:authorized_aws_region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "AuthorizedAwsRegion"))
    DeleteAggregationAuthorizationRequest.struct_class = Types::DeleteAggregationAuthorizationRequest

    DeleteConfigRuleRequest.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: ConfigRuleName, required: true, location_name: "ConfigRuleName"))
    DeleteConfigRuleRequest.struct_class = Types::DeleteConfigRuleRequest

    DeleteConfigurationAggregatorRequest.add_member(:configuration_aggregator_name, Shapes::ShapeRef.new(shape: ConfigurationAggregatorName, required: true, location_name: "ConfigurationAggregatorName"))
    DeleteConfigurationAggregatorRequest.struct_class = Types::DeleteConfigurationAggregatorRequest

    DeleteConfigurationRecorderRequest.add_member(:configuration_recorder_name, Shapes::ShapeRef.new(shape: RecorderName, required: true, location_name: "ConfigurationRecorderName"))
    DeleteConfigurationRecorderRequest.struct_class = Types::DeleteConfigurationRecorderRequest

    DeleteConformancePackRequest.add_member(:conformance_pack_name, Shapes::ShapeRef.new(shape: ConformancePackName, required: true, location_name: "ConformancePackName"))
    DeleteConformancePackRequest.struct_class = Types::DeleteConformancePackRequest

    DeleteDeliveryChannelRequest.add_member(:delivery_channel_name, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "DeliveryChannelName"))
    DeleteDeliveryChannelRequest.struct_class = Types::DeleteDeliveryChannelRequest

    DeleteEvaluationResultsRequest.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: StringWithCharLimit64, required: true, location_name: "ConfigRuleName"))
    DeleteEvaluationResultsRequest.struct_class = Types::DeleteEvaluationResultsRequest

    DeleteEvaluationResultsResponse.struct_class = Types::DeleteEvaluationResultsResponse

    DeleteOrganizationConfigRuleRequest.add_member(:organization_config_rule_name, Shapes::ShapeRef.new(shape: OrganizationConfigRuleName, required: true, location_name: "OrganizationConfigRuleName"))
    DeleteOrganizationConfigRuleRequest.struct_class = Types::DeleteOrganizationConfigRuleRequest

    DeleteOrganizationConformancePackRequest.add_member(:organization_conformance_pack_name, Shapes::ShapeRef.new(shape: OrganizationConformancePackName, required: true, location_name: "OrganizationConformancePackName"))
    DeleteOrganizationConformancePackRequest.struct_class = Types::DeleteOrganizationConformancePackRequest

    DeletePendingAggregationRequestRequest.add_member(:requester_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "RequesterAccountId"))
    DeletePendingAggregationRequestRequest.add_member(:requester_aws_region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "RequesterAwsRegion"))
    DeletePendingAggregationRequestRequest.struct_class = Types::DeletePendingAggregationRequestRequest

    DeleteRemediationConfigurationRequest.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: ConfigRuleName, required: true, location_name: "ConfigRuleName"))
    DeleteRemediationConfigurationRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    DeleteRemediationConfigurationRequest.struct_class = Types::DeleteRemediationConfigurationRequest

    DeleteRemediationConfigurationResponse.struct_class = Types::DeleteRemediationConfigurationResponse

    DeleteRemediationExceptionsRequest.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: ConfigRuleName, required: true, location_name: "ConfigRuleName"))
    DeleteRemediationExceptionsRequest.add_member(:resource_keys, Shapes::ShapeRef.new(shape: RemediationExceptionResourceKeys, required: true, location_name: "ResourceKeys"))
    DeleteRemediationExceptionsRequest.struct_class = Types::DeleteRemediationExceptionsRequest

    DeleteRemediationExceptionsResponse.add_member(:failed_batches, Shapes::ShapeRef.new(shape: FailedDeleteRemediationExceptionsBatches, location_name: "FailedBatches"))
    DeleteRemediationExceptionsResponse.struct_class = Types::DeleteRemediationExceptionsResponse

    DeleteResourceConfigRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceTypeString, required: true, location_name: "ResourceType"))
    DeleteResourceConfigRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    DeleteResourceConfigRequest.struct_class = Types::DeleteResourceConfigRequest

    DeleteRetentionConfigurationRequest.add_member(:retention_configuration_name, Shapes::ShapeRef.new(shape: RetentionConfigurationName, required: true, location_name: "RetentionConfigurationName"))
    DeleteRetentionConfigurationRequest.struct_class = Types::DeleteRetentionConfigurationRequest

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

    DescribeAggregateComplianceByConfigRulesRequest.add_member(:configuration_aggregator_name, Shapes::ShapeRef.new(shape: ConfigurationAggregatorName, required: true, location_name: "ConfigurationAggregatorName"))
    DescribeAggregateComplianceByConfigRulesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ConfigRuleComplianceFilters, location_name: "Filters"))
    DescribeAggregateComplianceByConfigRulesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: GroupByAPILimit, location_name: "Limit"))
    DescribeAggregateComplianceByConfigRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAggregateComplianceByConfigRulesRequest.struct_class = Types::DescribeAggregateComplianceByConfigRulesRequest

    DescribeAggregateComplianceByConfigRulesResponse.add_member(:aggregate_compliance_by_config_rules, Shapes::ShapeRef.new(shape: AggregateComplianceByConfigRuleList, location_name: "AggregateComplianceByConfigRules"))
    DescribeAggregateComplianceByConfigRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeAggregateComplianceByConfigRulesResponse.struct_class = Types::DescribeAggregateComplianceByConfigRulesResponse

    DescribeAggregationAuthorizationsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DescribeAggregationAuthorizationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeAggregationAuthorizationsRequest.struct_class = Types::DescribeAggregationAuthorizationsRequest

    DescribeAggregationAuthorizationsResponse.add_member(:aggregation_authorizations, Shapes::ShapeRef.new(shape: AggregationAuthorizationList, location_name: "AggregationAuthorizations"))
    DescribeAggregationAuthorizationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeAggregationAuthorizationsResponse.struct_class = Types::DescribeAggregationAuthorizationsResponse

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

    DescribeConfigurationAggregatorSourcesStatusRequest.add_member(:configuration_aggregator_name, Shapes::ShapeRef.new(shape: ConfigurationAggregatorName, required: true, location_name: "ConfigurationAggregatorName"))
    DescribeConfigurationAggregatorSourcesStatusRequest.add_member(:update_status, Shapes::ShapeRef.new(shape: AggregatedSourceStatusTypeList, location_name: "UpdateStatus"))
    DescribeConfigurationAggregatorSourcesStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeConfigurationAggregatorSourcesStatusRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DescribeConfigurationAggregatorSourcesStatusRequest.struct_class = Types::DescribeConfigurationAggregatorSourcesStatusRequest

    DescribeConfigurationAggregatorSourcesStatusResponse.add_member(:aggregated_source_status_list, Shapes::ShapeRef.new(shape: AggregatedSourceStatusList, location_name: "AggregatedSourceStatusList"))
    DescribeConfigurationAggregatorSourcesStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeConfigurationAggregatorSourcesStatusResponse.struct_class = Types::DescribeConfigurationAggregatorSourcesStatusResponse

    DescribeConfigurationAggregatorsRequest.add_member(:configuration_aggregator_names, Shapes::ShapeRef.new(shape: ConfigurationAggregatorNameList, location_name: "ConfigurationAggregatorNames"))
    DescribeConfigurationAggregatorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeConfigurationAggregatorsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DescribeConfigurationAggregatorsRequest.struct_class = Types::DescribeConfigurationAggregatorsRequest

    DescribeConfigurationAggregatorsResponse.add_member(:configuration_aggregators, Shapes::ShapeRef.new(shape: ConfigurationAggregatorList, location_name: "ConfigurationAggregators"))
    DescribeConfigurationAggregatorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeConfigurationAggregatorsResponse.struct_class = Types::DescribeConfigurationAggregatorsResponse

    DescribeConfigurationRecorderStatusRequest.add_member(:configuration_recorder_names, Shapes::ShapeRef.new(shape: ConfigurationRecorderNameList, location_name: "ConfigurationRecorderNames"))
    DescribeConfigurationRecorderStatusRequest.struct_class = Types::DescribeConfigurationRecorderStatusRequest

    DescribeConfigurationRecorderStatusResponse.add_member(:configuration_recorders_status, Shapes::ShapeRef.new(shape: ConfigurationRecorderStatusList, location_name: "ConfigurationRecordersStatus"))
    DescribeConfigurationRecorderStatusResponse.struct_class = Types::DescribeConfigurationRecorderStatusResponse

    DescribeConfigurationRecordersRequest.add_member(:configuration_recorder_names, Shapes::ShapeRef.new(shape: ConfigurationRecorderNameList, location_name: "ConfigurationRecorderNames"))
    DescribeConfigurationRecordersRequest.struct_class = Types::DescribeConfigurationRecordersRequest

    DescribeConfigurationRecordersResponse.add_member(:configuration_recorders, Shapes::ShapeRef.new(shape: ConfigurationRecorderList, location_name: "ConfigurationRecorders"))
    DescribeConfigurationRecordersResponse.struct_class = Types::DescribeConfigurationRecordersResponse

    DescribeConformancePackComplianceRequest.add_member(:conformance_pack_name, Shapes::ShapeRef.new(shape: ConformancePackName, required: true, location_name: "ConformancePackName"))
    DescribeConformancePackComplianceRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ConformancePackComplianceFilters, location_name: "Filters"))
    DescribeConformancePackComplianceRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribeConformancePackComplianceLimit, location_name: "Limit"))
    DescribeConformancePackComplianceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeConformancePackComplianceRequest.struct_class = Types::DescribeConformancePackComplianceRequest

    DescribeConformancePackComplianceResponse.add_member(:conformance_pack_name, Shapes::ShapeRef.new(shape: ConformancePackName, required: true, location_name: "ConformancePackName"))
    DescribeConformancePackComplianceResponse.add_member(:conformance_pack_rule_compliance_list, Shapes::ShapeRef.new(shape: ConformancePackRuleComplianceList, required: true, location_name: "ConformancePackRuleComplianceList"))
    DescribeConformancePackComplianceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeConformancePackComplianceResponse.struct_class = Types::DescribeConformancePackComplianceResponse

    DescribeConformancePackStatusRequest.add_member(:conformance_pack_names, Shapes::ShapeRef.new(shape: ConformancePackNamesList, location_name: "ConformancePackNames"))
    DescribeConformancePackStatusRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PageSizeLimit, location_name: "Limit"))
    DescribeConformancePackStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeConformancePackStatusRequest.struct_class = Types::DescribeConformancePackStatusRequest

    DescribeConformancePackStatusResponse.add_member(:conformance_pack_status_details, Shapes::ShapeRef.new(shape: ConformancePackStatusDetailsList, location_name: "ConformancePackStatusDetails"))
    DescribeConformancePackStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeConformancePackStatusResponse.struct_class = Types::DescribeConformancePackStatusResponse

    DescribeConformancePacksRequest.add_member(:conformance_pack_names, Shapes::ShapeRef.new(shape: ConformancePackNamesList, location_name: "ConformancePackNames"))
    DescribeConformancePacksRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PageSizeLimit, location_name: "Limit"))
    DescribeConformancePacksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeConformancePacksRequest.struct_class = Types::DescribeConformancePacksRequest

    DescribeConformancePacksResponse.add_member(:conformance_pack_details, Shapes::ShapeRef.new(shape: ConformancePackDetailList, location_name: "ConformancePackDetails"))
    DescribeConformancePacksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeConformancePacksResponse.struct_class = Types::DescribeConformancePacksResponse

    DescribeDeliveryChannelStatusRequest.add_member(:delivery_channel_names, Shapes::ShapeRef.new(shape: DeliveryChannelNameList, location_name: "DeliveryChannelNames"))
    DescribeDeliveryChannelStatusRequest.struct_class = Types::DescribeDeliveryChannelStatusRequest

    DescribeDeliveryChannelStatusResponse.add_member(:delivery_channels_status, Shapes::ShapeRef.new(shape: DeliveryChannelStatusList, location_name: "DeliveryChannelsStatus"))
    DescribeDeliveryChannelStatusResponse.struct_class = Types::DescribeDeliveryChannelStatusResponse

    DescribeDeliveryChannelsRequest.add_member(:delivery_channel_names, Shapes::ShapeRef.new(shape: DeliveryChannelNameList, location_name: "DeliveryChannelNames"))
    DescribeDeliveryChannelsRequest.struct_class = Types::DescribeDeliveryChannelsRequest

    DescribeDeliveryChannelsResponse.add_member(:delivery_channels, Shapes::ShapeRef.new(shape: DeliveryChannelList, location_name: "DeliveryChannels"))
    DescribeDeliveryChannelsResponse.struct_class = Types::DescribeDeliveryChannelsResponse

    DescribeOrganizationConfigRuleStatusesRequest.add_member(:organization_config_rule_names, Shapes::ShapeRef.new(shape: OrganizationConfigRuleNames, location_name: "OrganizationConfigRuleNames"))
    DescribeOrganizationConfigRuleStatusesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: CosmosPageLimit, location_name: "Limit"))
    DescribeOrganizationConfigRuleStatusesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeOrganizationConfigRuleStatusesRequest.struct_class = Types::DescribeOrganizationConfigRuleStatusesRequest

    DescribeOrganizationConfigRuleStatusesResponse.add_member(:organization_config_rule_statuses, Shapes::ShapeRef.new(shape: OrganizationConfigRuleStatuses, location_name: "OrganizationConfigRuleStatuses"))
    DescribeOrganizationConfigRuleStatusesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeOrganizationConfigRuleStatusesResponse.struct_class = Types::DescribeOrganizationConfigRuleStatusesResponse

    DescribeOrganizationConfigRulesRequest.add_member(:organization_config_rule_names, Shapes::ShapeRef.new(shape: OrganizationConfigRuleNames, location_name: "OrganizationConfigRuleNames"))
    DescribeOrganizationConfigRulesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: CosmosPageLimit, location_name: "Limit"))
    DescribeOrganizationConfigRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeOrganizationConfigRulesRequest.struct_class = Types::DescribeOrganizationConfigRulesRequest

    DescribeOrganizationConfigRulesResponse.add_member(:organization_config_rules, Shapes::ShapeRef.new(shape: OrganizationConfigRules, location_name: "OrganizationConfigRules"))
    DescribeOrganizationConfigRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeOrganizationConfigRulesResponse.struct_class = Types::DescribeOrganizationConfigRulesResponse

    DescribeOrganizationConformancePackStatusesRequest.add_member(:organization_conformance_pack_names, Shapes::ShapeRef.new(shape: OrganizationConformancePackNames, location_name: "OrganizationConformancePackNames"))
    DescribeOrganizationConformancePackStatusesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: CosmosPageLimit, location_name: "Limit"))
    DescribeOrganizationConformancePackStatusesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeOrganizationConformancePackStatusesRequest.struct_class = Types::DescribeOrganizationConformancePackStatusesRequest

    DescribeOrganizationConformancePackStatusesResponse.add_member(:organization_conformance_pack_statuses, Shapes::ShapeRef.new(shape: OrganizationConformancePackStatuses, location_name: "OrganizationConformancePackStatuses"))
    DescribeOrganizationConformancePackStatusesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeOrganizationConformancePackStatusesResponse.struct_class = Types::DescribeOrganizationConformancePackStatusesResponse

    DescribeOrganizationConformancePacksRequest.add_member(:organization_conformance_pack_names, Shapes::ShapeRef.new(shape: OrganizationConformancePackNames, location_name: "OrganizationConformancePackNames"))
    DescribeOrganizationConformancePacksRequest.add_member(:limit, Shapes::ShapeRef.new(shape: CosmosPageLimit, location_name: "Limit"))
    DescribeOrganizationConformancePacksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeOrganizationConformancePacksRequest.struct_class = Types::DescribeOrganizationConformancePacksRequest

    DescribeOrganizationConformancePacksResponse.add_member(:organization_conformance_packs, Shapes::ShapeRef.new(shape: OrganizationConformancePacks, location_name: "OrganizationConformancePacks"))
    DescribeOrganizationConformancePacksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeOrganizationConformancePacksResponse.struct_class = Types::DescribeOrganizationConformancePacksResponse

    DescribePendingAggregationRequestsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: DescribePendingAggregationRequestsLimit, location_name: "Limit"))
    DescribePendingAggregationRequestsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribePendingAggregationRequestsRequest.struct_class = Types::DescribePendingAggregationRequestsRequest

    DescribePendingAggregationRequestsResponse.add_member(:pending_aggregation_requests, Shapes::ShapeRef.new(shape: PendingAggregationRequestList, location_name: "PendingAggregationRequests"))
    DescribePendingAggregationRequestsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribePendingAggregationRequestsResponse.struct_class = Types::DescribePendingAggregationRequestsResponse

    DescribeRemediationConfigurationsRequest.add_member(:config_rule_names, Shapes::ShapeRef.new(shape: ConfigRuleNames, required: true, location_name: "ConfigRuleNames"))
    DescribeRemediationConfigurationsRequest.struct_class = Types::DescribeRemediationConfigurationsRequest

    DescribeRemediationConfigurationsResponse.add_member(:remediation_configurations, Shapes::ShapeRef.new(shape: RemediationConfigurations, location_name: "RemediationConfigurations"))
    DescribeRemediationConfigurationsResponse.struct_class = Types::DescribeRemediationConfigurationsResponse

    DescribeRemediationExceptionsRequest.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: ConfigRuleName, required: true, location_name: "ConfigRuleName"))
    DescribeRemediationExceptionsRequest.add_member(:resource_keys, Shapes::ShapeRef.new(shape: RemediationExceptionResourceKeys, location_name: "ResourceKeys"))
    DescribeRemediationExceptionsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DescribeRemediationExceptionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeRemediationExceptionsRequest.struct_class = Types::DescribeRemediationExceptionsRequest

    DescribeRemediationExceptionsResponse.add_member(:remediation_exceptions, Shapes::ShapeRef.new(shape: RemediationExceptions, location_name: "RemediationExceptions"))
    DescribeRemediationExceptionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeRemediationExceptionsResponse.struct_class = Types::DescribeRemediationExceptionsResponse

    DescribeRemediationExecutionStatusRequest.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: ConfigRuleName, required: true, location_name: "ConfigRuleName"))
    DescribeRemediationExecutionStatusRequest.add_member(:resource_keys, Shapes::ShapeRef.new(shape: ResourceKeys, location_name: "ResourceKeys"))
    DescribeRemediationExecutionStatusRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    DescribeRemediationExecutionStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeRemediationExecutionStatusRequest.struct_class = Types::DescribeRemediationExecutionStatusRequest

    DescribeRemediationExecutionStatusResponse.add_member(:remediation_execution_statuses, Shapes::ShapeRef.new(shape: RemediationExecutionStatuses, location_name: "RemediationExecutionStatuses"))
    DescribeRemediationExecutionStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeRemediationExecutionStatusResponse.struct_class = Types::DescribeRemediationExecutionStatusResponse

    DescribeRetentionConfigurationsRequest.add_member(:retention_configuration_names, Shapes::ShapeRef.new(shape: RetentionConfigurationNameList, location_name: "RetentionConfigurationNames"))
    DescribeRetentionConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeRetentionConfigurationsRequest.struct_class = Types::DescribeRetentionConfigurationsRequest

    DescribeRetentionConfigurationsResponse.add_member(:retention_configurations, Shapes::ShapeRef.new(shape: RetentionConfigurationList, location_name: "RetentionConfigurations"))
    DescribeRetentionConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeRetentionConfigurationsResponse.struct_class = Types::DescribeRetentionConfigurationsResponse

    DiscoveredResourceIdentifierList.member = Shapes::ShapeRef.new(shape: AggregateResourceIdentifier)

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

    EvaluationResultQualifier.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: ConfigRuleName, location_name: "ConfigRuleName"))
    EvaluationResultQualifier.add_member(:resource_type, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "ResourceType"))
    EvaluationResultQualifier.add_member(:resource_id, Shapes::ShapeRef.new(shape: BaseResourceId, location_name: "ResourceId"))
    EvaluationResultQualifier.struct_class = Types::EvaluationResultQualifier

    EvaluationResults.member = Shapes::ShapeRef.new(shape: EvaluationResult)

    Evaluations.member = Shapes::ShapeRef.new(shape: Evaluation)

    ExcludedAccounts.member = Shapes::ShapeRef.new(shape: AccountId)

    ExecutionControls.add_member(:ssm_controls, Shapes::ShapeRef.new(shape: SsmControls, location_name: "SsmControls"))
    ExecutionControls.struct_class = Types::ExecutionControls

    FailedDeleteRemediationExceptionsBatch.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "FailureMessage"))
    FailedDeleteRemediationExceptionsBatch.add_member(:failed_items, Shapes::ShapeRef.new(shape: RemediationExceptionResourceKeys, location_name: "FailedItems"))
    FailedDeleteRemediationExceptionsBatch.struct_class = Types::FailedDeleteRemediationExceptionsBatch

    FailedDeleteRemediationExceptionsBatches.member = Shapes::ShapeRef.new(shape: FailedDeleteRemediationExceptionsBatch)

    FailedRemediationBatch.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "FailureMessage"))
    FailedRemediationBatch.add_member(:failed_items, Shapes::ShapeRef.new(shape: RemediationConfigurations, location_name: "FailedItems"))
    FailedRemediationBatch.struct_class = Types::FailedRemediationBatch

    FailedRemediationBatches.member = Shapes::ShapeRef.new(shape: FailedRemediationBatch)

    FailedRemediationExceptionBatch.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "FailureMessage"))
    FailedRemediationExceptionBatch.add_member(:failed_items, Shapes::ShapeRef.new(shape: RemediationExceptions, location_name: "FailedItems"))
    FailedRemediationExceptionBatch.struct_class = Types::FailedRemediationExceptionBatch

    FailedRemediationExceptionBatches.member = Shapes::ShapeRef.new(shape: FailedRemediationExceptionBatch)

    FieldInfo.add_member(:name, Shapes::ShapeRef.new(shape: FieldName, location_name: "Name"))
    FieldInfo.struct_class = Types::FieldInfo

    FieldInfoList.member = Shapes::ShapeRef.new(shape: FieldInfo)

    GetAggregateComplianceDetailsByConfigRuleRequest.add_member(:configuration_aggregator_name, Shapes::ShapeRef.new(shape: ConfigurationAggregatorName, required: true, location_name: "ConfigurationAggregatorName"))
    GetAggregateComplianceDetailsByConfigRuleRequest.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: ConfigRuleName, required: true, location_name: "ConfigRuleName"))
    GetAggregateComplianceDetailsByConfigRuleRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    GetAggregateComplianceDetailsByConfigRuleRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "AwsRegion"))
    GetAggregateComplianceDetailsByConfigRuleRequest.add_member(:compliance_type, Shapes::ShapeRef.new(shape: ComplianceType, location_name: "ComplianceType"))
    GetAggregateComplianceDetailsByConfigRuleRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    GetAggregateComplianceDetailsByConfigRuleRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetAggregateComplianceDetailsByConfigRuleRequest.struct_class = Types::GetAggregateComplianceDetailsByConfigRuleRequest

    GetAggregateComplianceDetailsByConfigRuleResponse.add_member(:aggregate_evaluation_results, Shapes::ShapeRef.new(shape: AggregateEvaluationResultList, location_name: "AggregateEvaluationResults"))
    GetAggregateComplianceDetailsByConfigRuleResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetAggregateComplianceDetailsByConfigRuleResponse.struct_class = Types::GetAggregateComplianceDetailsByConfigRuleResponse

    GetAggregateConfigRuleComplianceSummaryRequest.add_member(:configuration_aggregator_name, Shapes::ShapeRef.new(shape: ConfigurationAggregatorName, required: true, location_name: "ConfigurationAggregatorName"))
    GetAggregateConfigRuleComplianceSummaryRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ConfigRuleComplianceSummaryFilters, location_name: "Filters"))
    GetAggregateConfigRuleComplianceSummaryRequest.add_member(:group_by_key, Shapes::ShapeRef.new(shape: ConfigRuleComplianceSummaryGroupKey, location_name: "GroupByKey"))
    GetAggregateConfigRuleComplianceSummaryRequest.add_member(:limit, Shapes::ShapeRef.new(shape: GroupByAPILimit, location_name: "Limit"))
    GetAggregateConfigRuleComplianceSummaryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetAggregateConfigRuleComplianceSummaryRequest.struct_class = Types::GetAggregateConfigRuleComplianceSummaryRequest

    GetAggregateConfigRuleComplianceSummaryResponse.add_member(:group_by_key, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "GroupByKey"))
    GetAggregateConfigRuleComplianceSummaryResponse.add_member(:aggregate_compliance_counts, Shapes::ShapeRef.new(shape: AggregateComplianceCountList, location_name: "AggregateComplianceCounts"))
    GetAggregateConfigRuleComplianceSummaryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetAggregateConfigRuleComplianceSummaryResponse.struct_class = Types::GetAggregateConfigRuleComplianceSummaryResponse

    GetAggregateDiscoveredResourceCountsRequest.add_member(:configuration_aggregator_name, Shapes::ShapeRef.new(shape: ConfigurationAggregatorName, required: true, location_name: "ConfigurationAggregatorName"))
    GetAggregateDiscoveredResourceCountsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ResourceCountFilters, location_name: "Filters"))
    GetAggregateDiscoveredResourceCountsRequest.add_member(:group_by_key, Shapes::ShapeRef.new(shape: ResourceCountGroupKey, location_name: "GroupByKey"))
    GetAggregateDiscoveredResourceCountsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: GroupByAPILimit, location_name: "Limit"))
    GetAggregateDiscoveredResourceCountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetAggregateDiscoveredResourceCountsRequest.struct_class = Types::GetAggregateDiscoveredResourceCountsRequest

    GetAggregateDiscoveredResourceCountsResponse.add_member(:total_discovered_resources, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "TotalDiscoveredResources"))
    GetAggregateDiscoveredResourceCountsResponse.add_member(:group_by_key, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "GroupByKey"))
    GetAggregateDiscoveredResourceCountsResponse.add_member(:grouped_resource_counts, Shapes::ShapeRef.new(shape: GroupedResourceCountList, location_name: "GroupedResourceCounts"))
    GetAggregateDiscoveredResourceCountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetAggregateDiscoveredResourceCountsResponse.struct_class = Types::GetAggregateDiscoveredResourceCountsResponse

    GetAggregateResourceConfigRequest.add_member(:configuration_aggregator_name, Shapes::ShapeRef.new(shape: ConfigurationAggregatorName, required: true, location_name: "ConfigurationAggregatorName"))
    GetAggregateResourceConfigRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: AggregateResourceIdentifier, required: true, location_name: "ResourceIdentifier"))
    GetAggregateResourceConfigRequest.struct_class = Types::GetAggregateResourceConfigRequest

    GetAggregateResourceConfigResponse.add_member(:configuration_item, Shapes::ShapeRef.new(shape: ConfigurationItem, location_name: "ConfigurationItem"))
    GetAggregateResourceConfigResponse.struct_class = Types::GetAggregateResourceConfigResponse

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

    GetConformancePackComplianceDetailsRequest.add_member(:conformance_pack_name, Shapes::ShapeRef.new(shape: ConformancePackName, required: true, location_name: "ConformancePackName"))
    GetConformancePackComplianceDetailsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ConformancePackEvaluationFilters, location_name: "Filters"))
    GetConformancePackComplianceDetailsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: GetConformancePackComplianceDetailsLimit, location_name: "Limit"))
    GetConformancePackComplianceDetailsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetConformancePackComplianceDetailsRequest.struct_class = Types::GetConformancePackComplianceDetailsRequest

    GetConformancePackComplianceDetailsResponse.add_member(:conformance_pack_name, Shapes::ShapeRef.new(shape: ConformancePackName, required: true, location_name: "ConformancePackName"))
    GetConformancePackComplianceDetailsResponse.add_member(:conformance_pack_rule_evaluation_results, Shapes::ShapeRef.new(shape: ConformancePackRuleEvaluationResultsList, location_name: "ConformancePackRuleEvaluationResults"))
    GetConformancePackComplianceDetailsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetConformancePackComplianceDetailsResponse.struct_class = Types::GetConformancePackComplianceDetailsResponse

    GetConformancePackComplianceSummaryRequest.add_member(:conformance_pack_names, Shapes::ShapeRef.new(shape: ConformancePackNamesToSummarizeList, required: true, location_name: "ConformancePackNames"))
    GetConformancePackComplianceSummaryRequest.add_member(:limit, Shapes::ShapeRef.new(shape: PageSizeLimit, location_name: "Limit"))
    GetConformancePackComplianceSummaryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetConformancePackComplianceSummaryRequest.struct_class = Types::GetConformancePackComplianceSummaryRequest

    GetConformancePackComplianceSummaryResponse.add_member(:conformance_pack_compliance_summary_list, Shapes::ShapeRef.new(shape: ConformancePackComplianceSummaryList, location_name: "ConformancePackComplianceSummaryList"))
    GetConformancePackComplianceSummaryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetConformancePackComplianceSummaryResponse.struct_class = Types::GetConformancePackComplianceSummaryResponse

    GetDiscoveredResourceCountsRequest.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypes, location_name: "resourceTypes"))
    GetDiscoveredResourceCountsRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "limit"))
    GetDiscoveredResourceCountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetDiscoveredResourceCountsRequest.struct_class = Types::GetDiscoveredResourceCountsRequest

    GetDiscoveredResourceCountsResponse.add_member(:total_discovered_resources, Shapes::ShapeRef.new(shape: Long, location_name: "totalDiscoveredResources"))
    GetDiscoveredResourceCountsResponse.add_member(:resource_counts, Shapes::ShapeRef.new(shape: ResourceCounts, location_name: "resourceCounts"))
    GetDiscoveredResourceCountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetDiscoveredResourceCountsResponse.struct_class = Types::GetDiscoveredResourceCountsResponse

    GetOrganizationConfigRuleDetailedStatusRequest.add_member(:organization_config_rule_name, Shapes::ShapeRef.new(shape: OrganizationConfigRuleName, required: true, location_name: "OrganizationConfigRuleName"))
    GetOrganizationConfigRuleDetailedStatusRequest.add_member(:filters, Shapes::ShapeRef.new(shape: StatusDetailFilters, location_name: "Filters"))
    GetOrganizationConfigRuleDetailedStatusRequest.add_member(:limit, Shapes::ShapeRef.new(shape: CosmosPageLimit, location_name: "Limit"))
    GetOrganizationConfigRuleDetailedStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetOrganizationConfigRuleDetailedStatusRequest.struct_class = Types::GetOrganizationConfigRuleDetailedStatusRequest

    GetOrganizationConfigRuleDetailedStatusResponse.add_member(:organization_config_rule_detailed_status, Shapes::ShapeRef.new(shape: OrganizationConfigRuleDetailedStatus, location_name: "OrganizationConfigRuleDetailedStatus"))
    GetOrganizationConfigRuleDetailedStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetOrganizationConfigRuleDetailedStatusResponse.struct_class = Types::GetOrganizationConfigRuleDetailedStatusResponse

    GetOrganizationConformancePackDetailedStatusRequest.add_member(:organization_conformance_pack_name, Shapes::ShapeRef.new(shape: OrganizationConformancePackName, required: true, location_name: "OrganizationConformancePackName"))
    GetOrganizationConformancePackDetailedStatusRequest.add_member(:filters, Shapes::ShapeRef.new(shape: OrganizationResourceDetailedStatusFilters, location_name: "Filters"))
    GetOrganizationConformancePackDetailedStatusRequest.add_member(:limit, Shapes::ShapeRef.new(shape: CosmosPageLimit, location_name: "Limit"))
    GetOrganizationConformancePackDetailedStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetOrganizationConformancePackDetailedStatusRequest.struct_class = Types::GetOrganizationConformancePackDetailedStatusRequest

    GetOrganizationConformancePackDetailedStatusResponse.add_member(:organization_conformance_pack_detailed_statuses, Shapes::ShapeRef.new(shape: OrganizationConformancePackDetailedStatuses, location_name: "OrganizationConformancePackDetailedStatuses"))
    GetOrganizationConformancePackDetailedStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    GetOrganizationConformancePackDetailedStatusResponse.struct_class = Types::GetOrganizationConformancePackDetailedStatusResponse

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

    GroupedResourceCount.add_member(:group_name, Shapes::ShapeRef.new(shape: StringWithCharLimit256, required: true, location_name: "GroupName"))
    GroupedResourceCount.add_member(:resource_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "ResourceCount"))
    GroupedResourceCount.struct_class = Types::GroupedResourceCount

    GroupedResourceCountList.member = Shapes::ShapeRef.new(shape: GroupedResourceCount)

    InsufficientDeliveryPolicyException.struct_class = Types::InsufficientDeliveryPolicyException

    InsufficientPermissionsException.struct_class = Types::InsufficientPermissionsException

    InvalidConfigurationRecorderNameException.struct_class = Types::InvalidConfigurationRecorderNameException

    InvalidDeliveryChannelNameException.struct_class = Types::InvalidDeliveryChannelNameException

    InvalidExpressionException.struct_class = Types::InvalidExpressionException

    InvalidLimitException.struct_class = Types::InvalidLimitException

    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    InvalidRecordingGroupException.struct_class = Types::InvalidRecordingGroupException

    InvalidResultTokenException.struct_class = Types::InvalidResultTokenException

    InvalidRoleException.struct_class = Types::InvalidRoleException

    InvalidS3KeyPrefixException.struct_class = Types::InvalidS3KeyPrefixException

    InvalidSNSTopicARNException.struct_class = Types::InvalidSNSTopicARNException

    InvalidTimeRangeException.struct_class = Types::InvalidTimeRangeException

    LastDeliveryChannelDeleteFailedException.struct_class = Types::LastDeliveryChannelDeleteFailedException

    LimitExceededException.struct_class = Types::LimitExceededException

    ListAggregateDiscoveredResourcesRequest.add_member(:configuration_aggregator_name, Shapes::ShapeRef.new(shape: ConfigurationAggregatorName, required: true, location_name: "ConfigurationAggregatorName"))
    ListAggregateDiscoveredResourcesRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    ListAggregateDiscoveredResourcesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ResourceFilters, location_name: "Filters"))
    ListAggregateDiscoveredResourcesRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    ListAggregateDiscoveredResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAggregateDiscoveredResourcesRequest.struct_class = Types::ListAggregateDiscoveredResourcesRequest

    ListAggregateDiscoveredResourcesResponse.add_member(:resource_identifiers, Shapes::ShapeRef.new(shape: DiscoveredResourceIdentifierList, location_name: "ResourceIdentifiers"))
    ListAggregateDiscoveredResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAggregateDiscoveredResourcesResponse.struct_class = Types::ListAggregateDiscoveredResourcesResponse

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

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    ListTagsForResourceRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MaxActiveResourcesExceededException.struct_class = Types::MaxActiveResourcesExceededException

    MaxNumberOfConfigRulesExceededException.struct_class = Types::MaxNumberOfConfigRulesExceededException

    MaxNumberOfConfigurationRecordersExceededException.struct_class = Types::MaxNumberOfConfigurationRecordersExceededException

    MaxNumberOfConformancePacksExceededException.struct_class = Types::MaxNumberOfConformancePacksExceededException

    MaxNumberOfDeliveryChannelsExceededException.struct_class = Types::MaxNumberOfDeliveryChannelsExceededException

    MaxNumberOfOrganizationConfigRulesExceededException.struct_class = Types::MaxNumberOfOrganizationConfigRulesExceededException

    MaxNumberOfOrganizationConformancePacksExceededException.struct_class = Types::MaxNumberOfOrganizationConformancePacksExceededException

    MaxNumberOfRetentionConfigurationsExceededException.struct_class = Types::MaxNumberOfRetentionConfigurationsExceededException

    MemberAccountStatus.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    MemberAccountStatus.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: StringWithCharLimit64, required: true, location_name: "ConfigRuleName"))
    MemberAccountStatus.add_member(:member_account_rule_status, Shapes::ShapeRef.new(shape: MemberAccountRuleStatus, required: true, location_name: "MemberAccountRuleStatus"))
    MemberAccountStatus.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    MemberAccountStatus.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    MemberAccountStatus.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdateTime"))
    MemberAccountStatus.struct_class = Types::MemberAccountStatus

    NoAvailableConfigurationRecorderException.struct_class = Types::NoAvailableConfigurationRecorderException

    NoAvailableDeliveryChannelException.struct_class = Types::NoAvailableDeliveryChannelException

    NoAvailableOrganizationException.struct_class = Types::NoAvailableOrganizationException

    NoRunningConfigurationRecorderException.struct_class = Types::NoRunningConfigurationRecorderException

    NoSuchBucketException.struct_class = Types::NoSuchBucketException

    NoSuchConfigRuleException.struct_class = Types::NoSuchConfigRuleException

    NoSuchConfigRuleInConformancePackException.struct_class = Types::NoSuchConfigRuleInConformancePackException

    NoSuchConfigurationAggregatorException.struct_class = Types::NoSuchConfigurationAggregatorException

    NoSuchConfigurationRecorderException.struct_class = Types::NoSuchConfigurationRecorderException

    NoSuchConformancePackException.struct_class = Types::NoSuchConformancePackException

    NoSuchDeliveryChannelException.struct_class = Types::NoSuchDeliveryChannelException

    NoSuchOrganizationConfigRuleException.struct_class = Types::NoSuchOrganizationConfigRuleException

    NoSuchOrganizationConformancePackException.struct_class = Types::NoSuchOrganizationConformancePackException

    NoSuchRemediationConfigurationException.struct_class = Types::NoSuchRemediationConfigurationException

    NoSuchRemediationExceptionException.struct_class = Types::NoSuchRemediationExceptionException

    NoSuchRetentionConfigurationException.struct_class = Types::NoSuchRetentionConfigurationException

    OrganizationAccessDeniedException.struct_class = Types::OrganizationAccessDeniedException

    OrganizationAggregationSource.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RoleArn"))
    OrganizationAggregationSource.add_member(:aws_regions, Shapes::ShapeRef.new(shape: AggregatorRegionList, location_name: "AwsRegions"))
    OrganizationAggregationSource.add_member(:all_aws_regions, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllAwsRegions"))
    OrganizationAggregationSource.struct_class = Types::OrganizationAggregationSource

    OrganizationAllFeaturesNotEnabledException.struct_class = Types::OrganizationAllFeaturesNotEnabledException

    OrganizationConfigRule.add_member(:organization_config_rule_name, Shapes::ShapeRef.new(shape: OrganizationConfigRuleName, required: true, location_name: "OrganizationConfigRuleName"))
    OrganizationConfigRule.add_member(:organization_config_rule_arn, Shapes::ShapeRef.new(shape: StringWithCharLimit256, required: true, location_name: "OrganizationConfigRuleArn"))
    OrganizationConfigRule.add_member(:organization_managed_rule_metadata, Shapes::ShapeRef.new(shape: OrganizationManagedRuleMetadata, location_name: "OrganizationManagedRuleMetadata"))
    OrganizationConfigRule.add_member(:organization_custom_rule_metadata, Shapes::ShapeRef.new(shape: OrganizationCustomRuleMetadata, location_name: "OrganizationCustomRuleMetadata"))
    OrganizationConfigRule.add_member(:excluded_accounts, Shapes::ShapeRef.new(shape: ExcludedAccounts, location_name: "ExcludedAccounts"))
    OrganizationConfigRule.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdateTime"))
    OrganizationConfigRule.struct_class = Types::OrganizationConfigRule

    OrganizationConfigRuleDetailedStatus.member = Shapes::ShapeRef.new(shape: MemberAccountStatus)

    OrganizationConfigRuleNames.member = Shapes::ShapeRef.new(shape: StringWithCharLimit64)

    OrganizationConfigRuleStatus.add_member(:organization_config_rule_name, Shapes::ShapeRef.new(shape: OrganizationConfigRuleName, required: true, location_name: "OrganizationConfigRuleName"))
    OrganizationConfigRuleStatus.add_member(:organization_rule_status, Shapes::ShapeRef.new(shape: OrganizationRuleStatus, required: true, location_name: "OrganizationRuleStatus"))
    OrganizationConfigRuleStatus.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    OrganizationConfigRuleStatus.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    OrganizationConfigRuleStatus.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdateTime"))
    OrganizationConfigRuleStatus.struct_class = Types::OrganizationConfigRuleStatus

    OrganizationConfigRuleStatuses.member = Shapes::ShapeRef.new(shape: OrganizationConfigRuleStatus)

    OrganizationConfigRuleTriggerTypes.member = Shapes::ShapeRef.new(shape: OrganizationConfigRuleTriggerType)

    OrganizationConfigRules.member = Shapes::ShapeRef.new(shape: OrganizationConfigRule)

    OrganizationConformancePack.add_member(:organization_conformance_pack_name, Shapes::ShapeRef.new(shape: OrganizationConformancePackName, required: true, location_name: "OrganizationConformancePackName"))
    OrganizationConformancePack.add_member(:organization_conformance_pack_arn, Shapes::ShapeRef.new(shape: StringWithCharLimit256, required: true, location_name: "OrganizationConformancePackArn"))
    OrganizationConformancePack.add_member(:delivery_s3_bucket, Shapes::ShapeRef.new(shape: DeliveryS3Bucket, location_name: "DeliveryS3Bucket"))
    OrganizationConformancePack.add_member(:delivery_s3_key_prefix, Shapes::ShapeRef.new(shape: DeliveryS3KeyPrefix, location_name: "DeliveryS3KeyPrefix"))
    OrganizationConformancePack.add_member(:conformance_pack_input_parameters, Shapes::ShapeRef.new(shape: ConformancePackInputParameters, location_name: "ConformancePackInputParameters"))
    OrganizationConformancePack.add_member(:excluded_accounts, Shapes::ShapeRef.new(shape: ExcludedAccounts, location_name: "ExcludedAccounts"))
    OrganizationConformancePack.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "LastUpdateTime"))
    OrganizationConformancePack.struct_class = Types::OrganizationConformancePack

    OrganizationConformancePackDetailedStatus.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    OrganizationConformancePackDetailedStatus.add_member(:conformance_pack_name, Shapes::ShapeRef.new(shape: StringWithCharLimit256, required: true, location_name: "ConformancePackName"))
    OrganizationConformancePackDetailedStatus.add_member(:status, Shapes::ShapeRef.new(shape: OrganizationResourceDetailedStatus, required: true, location_name: "Status"))
    OrganizationConformancePackDetailedStatus.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    OrganizationConformancePackDetailedStatus.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    OrganizationConformancePackDetailedStatus.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdateTime"))
    OrganizationConformancePackDetailedStatus.struct_class = Types::OrganizationConformancePackDetailedStatus

    OrganizationConformancePackDetailedStatuses.member = Shapes::ShapeRef.new(shape: OrganizationConformancePackDetailedStatus)

    OrganizationConformancePackNames.member = Shapes::ShapeRef.new(shape: OrganizationConformancePackName)

    OrganizationConformancePackStatus.add_member(:organization_conformance_pack_name, Shapes::ShapeRef.new(shape: OrganizationConformancePackName, required: true, location_name: "OrganizationConformancePackName"))
    OrganizationConformancePackStatus.add_member(:status, Shapes::ShapeRef.new(shape: OrganizationResourceStatus, required: true, location_name: "Status"))
    OrganizationConformancePackStatus.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    OrganizationConformancePackStatus.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    OrganizationConformancePackStatus.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdateTime"))
    OrganizationConformancePackStatus.struct_class = Types::OrganizationConformancePackStatus

    OrganizationConformancePackStatuses.member = Shapes::ShapeRef.new(shape: OrganizationConformancePackStatus)

    OrganizationConformancePackTemplateValidationException.struct_class = Types::OrganizationConformancePackTemplateValidationException

    OrganizationConformancePacks.member = Shapes::ShapeRef.new(shape: OrganizationConformancePack)

    OrganizationCustomRuleMetadata.add_member(:description, Shapes::ShapeRef.new(shape: StringWithCharLimit256Min0, location_name: "Description"))
    OrganizationCustomRuleMetadata.add_member(:lambda_function_arn, Shapes::ShapeRef.new(shape: StringWithCharLimit256, required: true, location_name: "LambdaFunctionArn"))
    OrganizationCustomRuleMetadata.add_member(:organization_config_rule_trigger_types, Shapes::ShapeRef.new(shape: OrganizationConfigRuleTriggerTypes, required: true, location_name: "OrganizationConfigRuleTriggerTypes"))
    OrganizationCustomRuleMetadata.add_member(:input_parameters, Shapes::ShapeRef.new(shape: StringWithCharLimit2048, location_name: "InputParameters"))
    OrganizationCustomRuleMetadata.add_member(:maximum_execution_frequency, Shapes::ShapeRef.new(shape: MaximumExecutionFrequency, location_name: "MaximumExecutionFrequency"))
    OrganizationCustomRuleMetadata.add_member(:resource_types_scope, Shapes::ShapeRef.new(shape: ResourceTypesScope, location_name: "ResourceTypesScope"))
    OrganizationCustomRuleMetadata.add_member(:resource_id_scope, Shapes::ShapeRef.new(shape: StringWithCharLimit768, location_name: "ResourceIdScope"))
    OrganizationCustomRuleMetadata.add_member(:tag_key_scope, Shapes::ShapeRef.new(shape: StringWithCharLimit128, location_name: "TagKeyScope"))
    OrganizationCustomRuleMetadata.add_member(:tag_value_scope, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "TagValueScope"))
    OrganizationCustomRuleMetadata.struct_class = Types::OrganizationCustomRuleMetadata

    OrganizationManagedRuleMetadata.add_member(:description, Shapes::ShapeRef.new(shape: StringWithCharLimit256Min0, location_name: "Description"))
    OrganizationManagedRuleMetadata.add_member(:rule_identifier, Shapes::ShapeRef.new(shape: StringWithCharLimit256, required: true, location_name: "RuleIdentifier"))
    OrganizationManagedRuleMetadata.add_member(:input_parameters, Shapes::ShapeRef.new(shape: StringWithCharLimit2048, location_name: "InputParameters"))
    OrganizationManagedRuleMetadata.add_member(:maximum_execution_frequency, Shapes::ShapeRef.new(shape: MaximumExecutionFrequency, location_name: "MaximumExecutionFrequency"))
    OrganizationManagedRuleMetadata.add_member(:resource_types_scope, Shapes::ShapeRef.new(shape: ResourceTypesScope, location_name: "ResourceTypesScope"))
    OrganizationManagedRuleMetadata.add_member(:resource_id_scope, Shapes::ShapeRef.new(shape: StringWithCharLimit768, location_name: "ResourceIdScope"))
    OrganizationManagedRuleMetadata.add_member(:tag_key_scope, Shapes::ShapeRef.new(shape: StringWithCharLimit128, location_name: "TagKeyScope"))
    OrganizationManagedRuleMetadata.add_member(:tag_value_scope, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "TagValueScope"))
    OrganizationManagedRuleMetadata.struct_class = Types::OrganizationManagedRuleMetadata

    OrganizationResourceDetailedStatusFilters.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    OrganizationResourceDetailedStatusFilters.add_member(:status, Shapes::ShapeRef.new(shape: OrganizationResourceDetailedStatus, location_name: "Status"))
    OrganizationResourceDetailedStatusFilters.struct_class = Types::OrganizationResourceDetailedStatusFilters

    OversizedConfigurationItemException.struct_class = Types::OversizedConfigurationItemException

    PendingAggregationRequest.add_member(:requester_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "RequesterAccountId"))
    PendingAggregationRequest.add_member(:requester_aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "RequesterAwsRegion"))
    PendingAggregationRequest.struct_class = Types::PendingAggregationRequest

    PendingAggregationRequestList.member = Shapes::ShapeRef.new(shape: PendingAggregationRequest)

    PutAggregationAuthorizationRequest.add_member(:authorized_account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AuthorizedAccountId"))
    PutAggregationAuthorizationRequest.add_member(:authorized_aws_region, Shapes::ShapeRef.new(shape: AwsRegion, required: true, location_name: "AuthorizedAwsRegion"))
    PutAggregationAuthorizationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsList, location_name: "Tags"))
    PutAggregationAuthorizationRequest.struct_class = Types::PutAggregationAuthorizationRequest

    PutAggregationAuthorizationResponse.add_member(:aggregation_authorization, Shapes::ShapeRef.new(shape: AggregationAuthorization, location_name: "AggregationAuthorization"))
    PutAggregationAuthorizationResponse.struct_class = Types::PutAggregationAuthorizationResponse

    PutConfigRuleRequest.add_member(:config_rule, Shapes::ShapeRef.new(shape: ConfigRule, required: true, location_name: "ConfigRule"))
    PutConfigRuleRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsList, location_name: "Tags"))
    PutConfigRuleRequest.struct_class = Types::PutConfigRuleRequest

    PutConfigurationAggregatorRequest.add_member(:configuration_aggregator_name, Shapes::ShapeRef.new(shape: ConfigurationAggregatorName, required: true, location_name: "ConfigurationAggregatorName"))
    PutConfigurationAggregatorRequest.add_member(:account_aggregation_sources, Shapes::ShapeRef.new(shape: AccountAggregationSourceList, location_name: "AccountAggregationSources"))
    PutConfigurationAggregatorRequest.add_member(:organization_aggregation_source, Shapes::ShapeRef.new(shape: OrganizationAggregationSource, location_name: "OrganizationAggregationSource"))
    PutConfigurationAggregatorRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsList, location_name: "Tags"))
    PutConfigurationAggregatorRequest.struct_class = Types::PutConfigurationAggregatorRequest

    PutConfigurationAggregatorResponse.add_member(:configuration_aggregator, Shapes::ShapeRef.new(shape: ConfigurationAggregator, location_name: "ConfigurationAggregator"))
    PutConfigurationAggregatorResponse.struct_class = Types::PutConfigurationAggregatorResponse

    PutConfigurationRecorderRequest.add_member(:configuration_recorder, Shapes::ShapeRef.new(shape: ConfigurationRecorder, required: true, location_name: "ConfigurationRecorder"))
    PutConfigurationRecorderRequest.struct_class = Types::PutConfigurationRecorderRequest

    PutConformancePackRequest.add_member(:conformance_pack_name, Shapes::ShapeRef.new(shape: ConformancePackName, required: true, location_name: "ConformancePackName"))
    PutConformancePackRequest.add_member(:template_s3_uri, Shapes::ShapeRef.new(shape: TemplateS3Uri, location_name: "TemplateS3Uri"))
    PutConformancePackRequest.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
    PutConformancePackRequest.add_member(:delivery_s3_bucket, Shapes::ShapeRef.new(shape: DeliveryS3Bucket, location_name: "DeliveryS3Bucket"))
    PutConformancePackRequest.add_member(:delivery_s3_key_prefix, Shapes::ShapeRef.new(shape: DeliveryS3KeyPrefix, location_name: "DeliveryS3KeyPrefix"))
    PutConformancePackRequest.add_member(:conformance_pack_input_parameters, Shapes::ShapeRef.new(shape: ConformancePackInputParameters, location_name: "ConformancePackInputParameters"))
    PutConformancePackRequest.struct_class = Types::PutConformancePackRequest

    PutConformancePackResponse.add_member(:conformance_pack_arn, Shapes::ShapeRef.new(shape: ConformancePackArn, location_name: "ConformancePackArn"))
    PutConformancePackResponse.struct_class = Types::PutConformancePackResponse

    PutDeliveryChannelRequest.add_member(:delivery_channel, Shapes::ShapeRef.new(shape: DeliveryChannel, required: true, location_name: "DeliveryChannel"))
    PutDeliveryChannelRequest.struct_class = Types::PutDeliveryChannelRequest

    PutEvaluationsRequest.add_member(:evaluations, Shapes::ShapeRef.new(shape: Evaluations, location_name: "Evaluations"))
    PutEvaluationsRequest.add_member(:result_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResultToken"))
    PutEvaluationsRequest.add_member(:test_mode, Shapes::ShapeRef.new(shape: Boolean, location_name: "TestMode"))
    PutEvaluationsRequest.struct_class = Types::PutEvaluationsRequest

    PutEvaluationsResponse.add_member(:failed_evaluations, Shapes::ShapeRef.new(shape: Evaluations, location_name: "FailedEvaluations"))
    PutEvaluationsResponse.struct_class = Types::PutEvaluationsResponse

    PutOrganizationConfigRuleRequest.add_member(:organization_config_rule_name, Shapes::ShapeRef.new(shape: OrganizationConfigRuleName, required: true, location_name: "OrganizationConfigRuleName"))
    PutOrganizationConfigRuleRequest.add_member(:organization_managed_rule_metadata, Shapes::ShapeRef.new(shape: OrganizationManagedRuleMetadata, location_name: "OrganizationManagedRuleMetadata"))
    PutOrganizationConfigRuleRequest.add_member(:organization_custom_rule_metadata, Shapes::ShapeRef.new(shape: OrganizationCustomRuleMetadata, location_name: "OrganizationCustomRuleMetadata"))
    PutOrganizationConfigRuleRequest.add_member(:excluded_accounts, Shapes::ShapeRef.new(shape: ExcludedAccounts, location_name: "ExcludedAccounts"))
    PutOrganizationConfigRuleRequest.struct_class = Types::PutOrganizationConfigRuleRequest

    PutOrganizationConfigRuleResponse.add_member(:organization_config_rule_arn, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "OrganizationConfigRuleArn"))
    PutOrganizationConfigRuleResponse.struct_class = Types::PutOrganizationConfigRuleResponse

    PutOrganizationConformancePackRequest.add_member(:organization_conformance_pack_name, Shapes::ShapeRef.new(shape: OrganizationConformancePackName, required: true, location_name: "OrganizationConformancePackName"))
    PutOrganizationConformancePackRequest.add_member(:template_s3_uri, Shapes::ShapeRef.new(shape: TemplateS3Uri, location_name: "TemplateS3Uri"))
    PutOrganizationConformancePackRequest.add_member(:template_body, Shapes::ShapeRef.new(shape: TemplateBody, location_name: "TemplateBody"))
    PutOrganizationConformancePackRequest.add_member(:delivery_s3_bucket, Shapes::ShapeRef.new(shape: DeliveryS3Bucket, location_name: "DeliveryS3Bucket"))
    PutOrganizationConformancePackRequest.add_member(:delivery_s3_key_prefix, Shapes::ShapeRef.new(shape: DeliveryS3KeyPrefix, location_name: "DeliveryS3KeyPrefix"))
    PutOrganizationConformancePackRequest.add_member(:conformance_pack_input_parameters, Shapes::ShapeRef.new(shape: ConformancePackInputParameters, location_name: "ConformancePackInputParameters"))
    PutOrganizationConformancePackRequest.add_member(:excluded_accounts, Shapes::ShapeRef.new(shape: ExcludedAccounts, location_name: "ExcludedAccounts"))
    PutOrganizationConformancePackRequest.struct_class = Types::PutOrganizationConformancePackRequest

    PutOrganizationConformancePackResponse.add_member(:organization_conformance_pack_arn, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "OrganizationConformancePackArn"))
    PutOrganizationConformancePackResponse.struct_class = Types::PutOrganizationConformancePackResponse

    PutRemediationConfigurationsRequest.add_member(:remediation_configurations, Shapes::ShapeRef.new(shape: RemediationConfigurations, required: true, location_name: "RemediationConfigurations"))
    PutRemediationConfigurationsRequest.struct_class = Types::PutRemediationConfigurationsRequest

    PutRemediationConfigurationsResponse.add_member(:failed_batches, Shapes::ShapeRef.new(shape: FailedRemediationBatches, location_name: "FailedBatches"))
    PutRemediationConfigurationsResponse.struct_class = Types::PutRemediationConfigurationsResponse

    PutRemediationExceptionsRequest.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: ConfigRuleName, required: true, location_name: "ConfigRuleName"))
    PutRemediationExceptionsRequest.add_member(:resource_keys, Shapes::ShapeRef.new(shape: RemediationExceptionResourceKeys, required: true, location_name: "ResourceKeys"))
    PutRemediationExceptionsRequest.add_member(:message, Shapes::ShapeRef.new(shape: StringWithCharLimit1024, location_name: "Message"))
    PutRemediationExceptionsRequest.add_member(:expiration_time, Shapes::ShapeRef.new(shape: Date, location_name: "ExpirationTime"))
    PutRemediationExceptionsRequest.struct_class = Types::PutRemediationExceptionsRequest

    PutRemediationExceptionsResponse.add_member(:failed_batches, Shapes::ShapeRef.new(shape: FailedRemediationExceptionBatches, location_name: "FailedBatches"))
    PutRemediationExceptionsResponse.struct_class = Types::PutRemediationExceptionsResponse

    PutResourceConfigRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceTypeString, required: true, location_name: "ResourceType"))
    PutResourceConfigRequest.add_member(:schema_version_id, Shapes::ShapeRef.new(shape: SchemaVersionId, required: true, location_name: "SchemaVersionId"))
    PutResourceConfigRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
    PutResourceConfigRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName"))
    PutResourceConfigRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: Configuration, required: true, location_name: "Configuration"))
    PutResourceConfigRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    PutResourceConfigRequest.struct_class = Types::PutResourceConfigRequest

    PutRetentionConfigurationRequest.add_member(:retention_period_in_days, Shapes::ShapeRef.new(shape: RetentionPeriodInDays, required: true, location_name: "RetentionPeriodInDays"))
    PutRetentionConfigurationRequest.struct_class = Types::PutRetentionConfigurationRequest

    PutRetentionConfigurationResponse.add_member(:retention_configuration, Shapes::ShapeRef.new(shape: RetentionConfiguration, location_name: "RetentionConfiguration"))
    PutRetentionConfigurationResponse.struct_class = Types::PutRetentionConfigurationResponse

    QueryInfo.add_member(:select_fields, Shapes::ShapeRef.new(shape: FieldInfoList, location_name: "SelectFields"))
    QueryInfo.struct_class = Types::QueryInfo

    RecordingGroup.add_member(:all_supported, Shapes::ShapeRef.new(shape: AllSupported, location_name: "allSupported"))
    RecordingGroup.add_member(:include_global_resource_types, Shapes::ShapeRef.new(shape: IncludeGlobalResourceTypes, location_name: "includeGlobalResourceTypes"))
    RecordingGroup.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: "resourceTypes"))
    RecordingGroup.struct_class = Types::RecordingGroup

    ReevaluateConfigRuleNames.member = Shapes::ShapeRef.new(shape: ConfigRuleName)

    RelatedEventList.member = Shapes::ShapeRef.new(shape: RelatedEvent)

    Relationship.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    Relationship.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    Relationship.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName"))
    Relationship.add_member(:relationship_name, Shapes::ShapeRef.new(shape: RelationshipName, location_name: "relationshipName"))
    Relationship.struct_class = Types::Relationship

    RelationshipList.member = Shapes::ShapeRef.new(shape: Relationship)

    RemediationConfiguration.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: ConfigRuleName, required: true, location_name: "ConfigRuleName"))
    RemediationConfiguration.add_member(:target_type, Shapes::ShapeRef.new(shape: RemediationTargetType, required: true, location_name: "TargetType"))
    RemediationConfiguration.add_member(:target_id, Shapes::ShapeRef.new(shape: StringWithCharLimit256, required: true, location_name: "TargetId"))
    RemediationConfiguration.add_member(:target_version, Shapes::ShapeRef.new(shape: String, location_name: "TargetVersion"))
    RemediationConfiguration.add_member(:parameters, Shapes::ShapeRef.new(shape: RemediationParameters, location_name: "Parameters"))
    RemediationConfiguration.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    RemediationConfiguration.add_member(:automatic, Shapes::ShapeRef.new(shape: Boolean, location_name: "Automatic"))
    RemediationConfiguration.add_member(:execution_controls, Shapes::ShapeRef.new(shape: ExecutionControls, location_name: "ExecutionControls"))
    RemediationConfiguration.add_member(:maximum_automatic_attempts, Shapes::ShapeRef.new(shape: AutoRemediationAttempts, location_name: "MaximumAutomaticAttempts"))
    RemediationConfiguration.add_member(:retry_attempt_seconds, Shapes::ShapeRef.new(shape: AutoRemediationAttemptSeconds, location_name: "RetryAttemptSeconds"))
    RemediationConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: StringWithCharLimit1024, location_name: "Arn"))
    RemediationConfiguration.add_member(:created_by_service, Shapes::ShapeRef.new(shape: StringWithCharLimit1024, location_name: "CreatedByService"))
    RemediationConfiguration.struct_class = Types::RemediationConfiguration

    RemediationConfigurations.member = Shapes::ShapeRef.new(shape: RemediationConfiguration)

    RemediationException.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: ConfigRuleName, required: true, location_name: "ConfigRuleName"))
    RemediationException.add_member(:resource_type, Shapes::ShapeRef.new(shape: StringWithCharLimit256, required: true, location_name: "ResourceType"))
    RemediationException.add_member(:resource_id, Shapes::ShapeRef.new(shape: StringWithCharLimit1024, required: true, location_name: "ResourceId"))
    RemediationException.add_member(:message, Shapes::ShapeRef.new(shape: StringWithCharLimit1024, location_name: "Message"))
    RemediationException.add_member(:expiration_time, Shapes::ShapeRef.new(shape: Date, location_name: "ExpirationTime"))
    RemediationException.struct_class = Types::RemediationException

    RemediationExceptionResourceKey.add_member(:resource_type, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "ResourceType"))
    RemediationExceptionResourceKey.add_member(:resource_id, Shapes::ShapeRef.new(shape: StringWithCharLimit1024, location_name: "ResourceId"))
    RemediationExceptionResourceKey.struct_class = Types::RemediationExceptionResourceKey

    RemediationExceptionResourceKeys.member = Shapes::ShapeRef.new(shape: RemediationExceptionResourceKey)

    RemediationExceptions.member = Shapes::ShapeRef.new(shape: RemediationException)

    RemediationExecutionStatus.add_member(:resource_key, Shapes::ShapeRef.new(shape: ResourceKey, location_name: "ResourceKey"))
    RemediationExecutionStatus.add_member(:state, Shapes::ShapeRef.new(shape: RemediationExecutionState, location_name: "State"))
    RemediationExecutionStatus.add_member(:step_details, Shapes::ShapeRef.new(shape: RemediationExecutionSteps, location_name: "StepDetails"))
    RemediationExecutionStatus.add_member(:invocation_time, Shapes::ShapeRef.new(shape: Date, location_name: "InvocationTime"))
    RemediationExecutionStatus.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Date, location_name: "LastUpdatedTime"))
    RemediationExecutionStatus.struct_class = Types::RemediationExecutionStatus

    RemediationExecutionStatuses.member = Shapes::ShapeRef.new(shape: RemediationExecutionStatus)

    RemediationExecutionStep.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    RemediationExecutionStep.add_member(:state, Shapes::ShapeRef.new(shape: RemediationExecutionStepState, location_name: "State"))
    RemediationExecutionStep.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    RemediationExecutionStep.add_member(:start_time, Shapes::ShapeRef.new(shape: Date, location_name: "StartTime"))
    RemediationExecutionStep.add_member(:stop_time, Shapes::ShapeRef.new(shape: Date, location_name: "StopTime"))
    RemediationExecutionStep.struct_class = Types::RemediationExecutionStep

    RemediationExecutionSteps.member = Shapes::ShapeRef.new(shape: RemediationExecutionStep)

    RemediationInProgressException.struct_class = Types::RemediationInProgressException

    RemediationParameterValue.add_member(:resource_value, Shapes::ShapeRef.new(shape: ResourceValue, location_name: "ResourceValue"))
    RemediationParameterValue.add_member(:static_value, Shapes::ShapeRef.new(shape: StaticValue, location_name: "StaticValue"))
    RemediationParameterValue.struct_class = Types::RemediationParameterValue

    RemediationParameters.key = Shapes::ShapeRef.new(shape: StringWithCharLimit256)
    RemediationParameters.value = Shapes::ShapeRef.new(shape: RemediationParameterValue)

    ResourceCount.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ResourceCount.add_member(:count, Shapes::ShapeRef.new(shape: Long, location_name: "count"))
    ResourceCount.struct_class = Types::ResourceCount

    ResourceCountFilters.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceCountFilters.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    ResourceCountFilters.add_member(:region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "Region"))
    ResourceCountFilters.struct_class = Types::ResourceCountFilters

    ResourceCounts.member = Shapes::ShapeRef.new(shape: ResourceCount)

    ResourceFilters.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    ResourceFilters.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResourceFilters.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName"))
    ResourceFilters.add_member(:region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "Region"))
    ResourceFilters.struct_class = Types::ResourceFilters

    ResourceIdList.member = Shapes::ShapeRef.new(shape: ResourceId)

    ResourceIdentifier.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ResourceIdentifier.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ResourceIdentifier.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "resourceName"))
    ResourceIdentifier.add_member(:resource_deletion_time, Shapes::ShapeRef.new(shape: ResourceDeletionTime, location_name: "resourceDeletionTime"))
    ResourceIdentifier.struct_class = Types::ResourceIdentifier

    ResourceIdentifierList.member = Shapes::ShapeRef.new(shape: ResourceIdentifier)

    ResourceIdentifiersList.member = Shapes::ShapeRef.new(shape: AggregateResourceIdentifier)

    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceKey.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    ResourceKey.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ResourceKey.struct_class = Types::ResourceKey

    ResourceKeys.member = Shapes::ShapeRef.new(shape: ResourceKey)

    ResourceNotDiscoveredException.struct_class = Types::ResourceNotDiscoveredException

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTypeList.member = Shapes::ShapeRef.new(shape: ResourceType)

    ResourceTypes.member = Shapes::ShapeRef.new(shape: StringWithCharLimit256)

    ResourceTypesScope.member = Shapes::ShapeRef.new(shape: StringWithCharLimit256)

    ResourceValue.add_member(:value, Shapes::ShapeRef.new(shape: ResourceValueType, required: true, location_name: "Value"))
    ResourceValue.struct_class = Types::ResourceValue

    Results.member = Shapes::ShapeRef.new(shape: String)

    RetentionConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: RetentionConfigurationName, required: true, location_name: "Name"))
    RetentionConfiguration.add_member(:retention_period_in_days, Shapes::ShapeRef.new(shape: RetentionPeriodInDays, required: true, location_name: "RetentionPeriodInDays"))
    RetentionConfiguration.struct_class = Types::RetentionConfiguration

    RetentionConfigurationList.member = Shapes::ShapeRef.new(shape: RetentionConfiguration)

    RetentionConfigurationNameList.member = Shapes::ShapeRef.new(shape: RetentionConfigurationName)

    Scope.add_member(:compliance_resource_types, Shapes::ShapeRef.new(shape: ComplianceResourceTypes, location_name: "ComplianceResourceTypes"))
    Scope.add_member(:tag_key, Shapes::ShapeRef.new(shape: StringWithCharLimit128, location_name: "TagKey"))
    Scope.add_member(:tag_value, Shapes::ShapeRef.new(shape: StringWithCharLimit256, location_name: "TagValue"))
    Scope.add_member(:compliance_resource_id, Shapes::ShapeRef.new(shape: BaseResourceId, location_name: "ComplianceResourceId"))
    Scope.struct_class = Types::Scope

    SelectAggregateResourceConfigRequest.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    SelectAggregateResourceConfigRequest.add_member(:configuration_aggregator_name, Shapes::ShapeRef.new(shape: ConfigurationAggregatorName, required: true, location_name: "ConfigurationAggregatorName"))
    SelectAggregateResourceConfigRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    SelectAggregateResourceConfigRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Limit, location_name: "MaxResults"))
    SelectAggregateResourceConfigRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SelectAggregateResourceConfigRequest.struct_class = Types::SelectAggregateResourceConfigRequest

    SelectAggregateResourceConfigResponse.add_member(:results, Shapes::ShapeRef.new(shape: Results, location_name: "Results"))
    SelectAggregateResourceConfigResponse.add_member(:query_info, Shapes::ShapeRef.new(shape: QueryInfo, location_name: "QueryInfo"))
    SelectAggregateResourceConfigResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SelectAggregateResourceConfigResponse.struct_class = Types::SelectAggregateResourceConfigResponse

    SelectResourceConfigRequest.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    SelectResourceConfigRequest.add_member(:limit, Shapes::ShapeRef.new(shape: Limit, location_name: "Limit"))
    SelectResourceConfigRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SelectResourceConfigRequest.struct_class = Types::SelectResourceConfigRequest

    SelectResourceConfigResponse.add_member(:results, Shapes::ShapeRef.new(shape: Results, location_name: "Results"))
    SelectResourceConfigResponse.add_member(:query_info, Shapes::ShapeRef.new(shape: QueryInfo, location_name: "QueryInfo"))
    SelectResourceConfigResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SelectResourceConfigResponse.struct_class = Types::SelectResourceConfigResponse

    Source.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, required: true, location_name: "Owner"))
    Source.add_member(:source_identifier, Shapes::ShapeRef.new(shape: StringWithCharLimit256, required: true, location_name: "SourceIdentifier"))
    Source.add_member(:source_details, Shapes::ShapeRef.new(shape: SourceDetails, location_name: "SourceDetails"))
    Source.struct_class = Types::Source

    SourceDetail.add_member(:event_source, Shapes::ShapeRef.new(shape: EventSource, location_name: "EventSource"))
    SourceDetail.add_member(:message_type, Shapes::ShapeRef.new(shape: MessageType, location_name: "MessageType"))
    SourceDetail.add_member(:maximum_execution_frequency, Shapes::ShapeRef.new(shape: MaximumExecutionFrequency, location_name: "MaximumExecutionFrequency"))
    SourceDetail.struct_class = Types::SourceDetail

    SourceDetails.member = Shapes::ShapeRef.new(shape: SourceDetail)

    SsmControls.add_member(:concurrent_execution_rate_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "ConcurrentExecutionRatePercentage"))
    SsmControls.add_member(:error_percentage, Shapes::ShapeRef.new(shape: Percentage, location_name: "ErrorPercentage"))
    SsmControls.struct_class = Types::SsmControls

    StartConfigRulesEvaluationRequest.add_member(:config_rule_names, Shapes::ShapeRef.new(shape: ReevaluateConfigRuleNames, location_name: "ConfigRuleNames"))
    StartConfigRulesEvaluationRequest.struct_class = Types::StartConfigRulesEvaluationRequest

    StartConfigRulesEvaluationResponse.struct_class = Types::StartConfigRulesEvaluationResponse

    StartConfigurationRecorderRequest.add_member(:configuration_recorder_name, Shapes::ShapeRef.new(shape: RecorderName, required: true, location_name: "ConfigurationRecorderName"))
    StartConfigurationRecorderRequest.struct_class = Types::StartConfigurationRecorderRequest

    StartRemediationExecutionRequest.add_member(:config_rule_name, Shapes::ShapeRef.new(shape: ConfigRuleName, required: true, location_name: "ConfigRuleName"))
    StartRemediationExecutionRequest.add_member(:resource_keys, Shapes::ShapeRef.new(shape: ResourceKeys, required: true, location_name: "ResourceKeys"))
    StartRemediationExecutionRequest.struct_class = Types::StartRemediationExecutionRequest

    StartRemediationExecutionResponse.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "FailureMessage"))
    StartRemediationExecutionResponse.add_member(:failed_items, Shapes::ShapeRef.new(shape: ResourceKeys, location_name: "FailedItems"))
    StartRemediationExecutionResponse.struct_class = Types::StartRemediationExecutionResponse

    StaticParameterValues.member = Shapes::ShapeRef.new(shape: StringWithCharLimit256)

    StaticValue.add_member(:values, Shapes::ShapeRef.new(shape: StaticParameterValues, required: true, location_name: "Values"))
    StaticValue.struct_class = Types::StaticValue

    StatusDetailFilters.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId"))
    StatusDetailFilters.add_member(:member_account_rule_status, Shapes::ShapeRef.new(shape: MemberAccountRuleStatus, location_name: "MemberAccountRuleStatus"))
    StatusDetailFilters.struct_class = Types::StatusDetailFilters

    StopConfigurationRecorderRequest.add_member(:configuration_recorder_name, Shapes::ShapeRef.new(shape: RecorderName, required: true, location_name: "ConfigurationRecorderName"))
    StopConfigurationRecorderRequest.struct_class = Types::StopConfigurationRecorderRequest

    SupplementaryConfiguration.key = Shapes::ShapeRef.new(shape: SupplementaryConfigurationName)
    SupplementaryConfiguration.value = Shapes::ShapeRef.new(shape: SupplementaryConfigurationValue)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Tags.key = Shapes::ShapeRef.new(shape: Name)
    Tags.value = Shapes::ShapeRef.new(shape: Value)

    TagsList.member = Shapes::ShapeRef.new(shape: Tag)

    TooManyTagsException.struct_class = Types::TooManyTagsException

    UnprocessedResourceIdentifierList.member = Shapes::ShapeRef.new(shape: AggregateResourceIdentifier)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2014-11-12"

      api.metadata = {
        "apiVersion" => "2014-11-12",
        "endpointPrefix" => "config",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Config Service",
        "serviceFullName" => "AWS Config",
        "serviceId" => "Config Service",
        "signatureVersion" => "v4",
        "targetPrefix" => "StarlingDoveService",
        "uid" => "config-2014-11-12",
      }

      api.add_operation(:batch_get_aggregate_resource_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetAggregateResourceConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetAggregateResourceConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetAggregateResourceConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationAggregatorException)
      end)

      api.add_operation(:batch_get_resource_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetResourceConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetResourceConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetResourceConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableConfigurationRecorderException)
      end)

      api.add_operation(:delete_aggregation_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAggregationAuthorization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAggregationAuthorizationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:delete_config_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfigRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfigRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigRuleException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:delete_configuration_aggregator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfigurationAggregator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfigurationAggregatorRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationAggregatorException)
      end)

      api.add_operation(:delete_configuration_recorder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfigurationRecorder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfigurationRecorderRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationRecorderException)
      end)

      api.add_operation(:delete_conformance_pack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConformancePack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConformancePackRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConformancePackException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
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

      api.add_operation(:delete_organization_config_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOrganizationConfigRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteOrganizationConfigRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOrganizationConfigRuleException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationAccessDeniedException)
      end)

      api.add_operation(:delete_organization_conformance_pack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteOrganizationConformancePack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteOrganizationConformancePackRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOrganizationConformancePackException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationAccessDeniedException)
      end)

      api.add_operation(:delete_pending_aggregation_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePendingAggregationRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePendingAggregationRequestRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:delete_remediation_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRemediationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRemediationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRemediationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchRemediationConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: RemediationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPermissionsException)
      end)

      api.add_operation(:delete_remediation_exceptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRemediationExceptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRemediationExceptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRemediationExceptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchRemediationExceptionException)
      end)

      api.add_operation(:delete_resource_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourceConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourceConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NoRunningConfigurationRecorderException)
      end)

      api.add_operation(:delete_retention_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRetentionConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRetentionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchRetentionConfigurationException)
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

      api.add_operation(:describe_aggregate_compliance_by_config_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAggregateComplianceByConfigRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAggregateComplianceByConfigRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAggregateComplianceByConfigRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationAggregatorException)
      end)

      api.add_operation(:describe_aggregation_authorizations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAggregationAuthorizations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAggregationAuthorizationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAggregationAuthorizationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
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

      api.add_operation(:describe_configuration_aggregator_sources_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConfigurationAggregatorSourcesStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConfigurationAggregatorSourcesStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConfigurationAggregatorSourcesStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationAggregatorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
      end)

      api.add_operation(:describe_configuration_aggregators, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConfigurationAggregators"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConfigurationAggregatorsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConfigurationAggregatorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationAggregatorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
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

      api.add_operation(:describe_conformance_pack_compliance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConformancePackCompliance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConformancePackComplianceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConformancePackComplianceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigRuleInConformancePackException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConformancePackException)
      end)

      api.add_operation(:describe_conformance_pack_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConformancePackStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConformancePackStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConformancePackStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:describe_conformance_packs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConformancePacks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConformancePacksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeConformancePacksResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConformancePackException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
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

      api.add_operation(:describe_organization_config_rule_statuses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrganizationConfigRuleStatuses"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrganizationConfigRuleStatusesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrganizationConfigRuleStatusesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOrganizationConfigRuleException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationAccessDeniedException)
      end)

      api.add_operation(:describe_organization_config_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrganizationConfigRules"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrganizationConfigRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrganizationConfigRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOrganizationConfigRuleException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationAccessDeniedException)
      end)

      api.add_operation(:describe_organization_conformance_pack_statuses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrganizationConformancePackStatuses"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrganizationConformancePackStatusesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrganizationConformancePackStatusesResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOrganizationConformancePackException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationAccessDeniedException)
      end)

      api.add_operation(:describe_organization_conformance_packs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrganizationConformancePacks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrganizationConformancePacksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrganizationConformancePacksResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOrganizationConformancePackException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationAccessDeniedException)
      end)

      api.add_operation(:describe_pending_aggregation_requests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePendingAggregationRequests"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePendingAggregationRequestsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePendingAggregationRequestsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
      end)

      api.add_operation(:describe_remediation_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRemediationConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRemediationConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRemediationConfigurationsResponse)
      end)

      api.add_operation(:describe_remediation_exceptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRemediationExceptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRemediationExceptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRemediationExceptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_remediation_execution_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRemediationExecutionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRemediationExecutionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRemediationExecutionStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchRemediationConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_retention_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRetentionConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRetentionConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRetentionConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchRetentionConfigurationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:get_aggregate_compliance_details_by_config_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAggregateComplianceDetailsByConfigRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAggregateComplianceDetailsByConfigRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAggregateComplianceDetailsByConfigRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationAggregatorException)
      end)

      api.add_operation(:get_aggregate_config_rule_compliance_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAggregateConfigRuleComplianceSummary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAggregateConfigRuleComplianceSummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAggregateConfigRuleComplianceSummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationAggregatorException)
      end)

      api.add_operation(:get_aggregate_discovered_resource_counts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAggregateDiscoveredResourceCounts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAggregateDiscoveredResourceCountsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAggregateDiscoveredResourceCountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationAggregatorException)
      end)

      api.add_operation(:get_aggregate_resource_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAggregateResourceConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAggregateResourceConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAggregateResourceConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationAggregatorException)
        o.errors << Shapes::ShapeRef.new(shape: OversizedConfigurationItemException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotDiscoveredException)
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

      api.add_operation(:get_conformance_pack_compliance_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConformancePackComplianceDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConformancePackComplianceDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConformancePackComplianceDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConformancePackException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigRuleInConformancePackException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:get_conformance_pack_compliance_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConformancePackComplianceSummary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConformancePackComplianceSummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConformancePackComplianceSummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConformancePackException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
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

      api.add_operation(:get_organization_config_rule_detailed_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOrganizationConfigRuleDetailedStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOrganizationConfigRuleDetailedStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOrganizationConfigRuleDetailedStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOrganizationConfigRuleException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationAccessDeniedException)
      end)

      api.add_operation(:get_organization_conformance_pack_detailed_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOrganizationConformancePackDetailedStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOrganizationConformancePackDetailedStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOrganizationConformancePackDetailedStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchOrganizationConformancePackException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationAccessDeniedException)
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

      api.add_operation(:list_aggregate_discovered_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAggregateDiscoveredResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAggregateDiscoveredResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAggregateDiscoveredResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationAggregatorException)
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

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:put_aggregation_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAggregationAuthorization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutAggregationAuthorizationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAggregationAuthorizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
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

      api.add_operation(:put_configuration_aggregator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConfigurationAggregator"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutConfigurationAggregatorRequest)
        o.output = Shapes::ShapeRef.new(shape: PutConfigurationAggregatorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRoleException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationAllFeaturesNotEnabledException)
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

      api.add_operation(:put_conformance_pack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutConformancePack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutConformancePackRequest)
        o.output = Shapes::ShapeRef.new(shape: PutConformancePackResponse)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPermissionsException)
        o.errors << Shapes::ShapeRef.new(shape: ConformancePackTemplateValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MaxNumberOfConformancePacksExceededException)
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

      api.add_operation(:put_organization_config_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutOrganizationConfigRule"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutOrganizationConfigRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: PutOrganizationConfigRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: MaxNumberOfOrganizationConfigRulesExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationAllFeaturesNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPermissionsException)
      end)

      api.add_operation(:put_organization_conformance_pack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutOrganizationConformancePack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutOrganizationConformancePackRequest)
        o.output = Shapes::ShapeRef.new(shape: PutOrganizationConformancePackResponse)
        o.errors << Shapes::ShapeRef.new(shape: MaxNumberOfOrganizationConformancePacksExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPermissionsException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationConformancePackTemplateValidationException)
        o.errors << Shapes::ShapeRef.new(shape: OrganizationAllFeaturesNotEnabledException)
        o.errors << Shapes::ShapeRef.new(shape: NoAvailableOrganizationException)
      end)

      api.add_operation(:put_remediation_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRemediationConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRemediationConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRemediationConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPermissionsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
      end)

      api.add_operation(:put_remediation_exceptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRemediationExceptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRemediationExceptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRemediationExceptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPermissionsException)
      end)

      api.add_operation(:put_resource_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourceConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResourceConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPermissionsException)
        o.errors << Shapes::ShapeRef.new(shape: NoRunningConfigurationRecorderException)
        o.errors << Shapes::ShapeRef.new(shape: MaxActiveResourcesExceededException)
      end)

      api.add_operation(:put_retention_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRetentionConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRetentionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRetentionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: MaxNumberOfRetentionConfigurationsExceededException)
      end)

      api.add_operation(:select_aggregate_resource_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SelectAggregateResourceConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SelectAggregateResourceConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: SelectAggregateResourceConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidExpressionException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationAggregatorException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:select_resource_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SelectResourceConfig"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SelectResourceConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: SelectResourceConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidExpressionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
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

      api.add_operation(:start_remediation_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartRemediationExecution"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartRemediationExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartRemediationExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPermissionsException)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchRemediationConfigurationException)
      end)

      api.add_operation(:stop_configuration_recorder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopConfigurationRecorder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopConfigurationRecorderRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NoSuchConfigurationRecorderException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
