# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Resiliencehubv2
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountTargeting = Shapes::StringShape.new(name: 'AccountTargeting')
    Achievability = Shapes::StructureShape.new(name: 'Achievability')
    AchievabilityStatus = Shapes::StringShape.new(name: 'AchievabilityStatus')
    ActorType = Shapes::StringShape.new(name: 'ActorType')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    Assertion = Shapes::StructureShape.new(name: 'Assertion')
    AssertionCreatedMetadata = Shapes::StructureShape.new(name: 'AssertionCreatedMetadata')
    AssertionDeletedMetadata = Shapes::StructureShape.new(name: 'AssertionDeletedMetadata')
    AssertionList = Shapes::ListShape.new(name: 'AssertionList')
    AssertionSource = Shapes::StringShape.new(name: 'AssertionSource')
    AssertionText = Shapes::StringShape.new(name: 'AssertionText')
    AssertionUpdatedMetadata = Shapes::StructureShape.new(name: 'AssertionUpdatedMetadata')
    AssessmentCost = Shapes::StructureShape.new(name: 'AssessmentCost')
    AssessmentErrorCode = Shapes::StringShape.new(name: 'AssessmentErrorCode')
    AssessmentSortField = Shapes::StringShape.new(name: 'AssessmentSortField')
    AssessmentStatus = Shapes::StringShape.new(name: 'AssessmentStatus')
    AssessmentStatusList = Shapes::ListShape.new(name: 'AssessmentStatusList')
    AssessmentStep = Shapes::StringShape.new(name: 'AssessmentStep')
    AssessmentSummary = Shapes::StructureShape.new(name: 'AssessmentSummary')
    AssessmentSummaryList = Shapes::ListShape.new(name: 'AssessmentSummaryList')
    AssociatedSystem = Shapes::StructureShape.new(name: 'AssociatedSystem')
    AssociatedSystemList = Shapes::ListShape.new(name: 'AssociatedSystemList')
    AvailabilitySlo = Shapes::StructureShape.new(name: 'AvailabilitySlo')
    AvailabilitySloTargetDouble = Shapes::FloatShape.new(name: 'AvailabilitySloTargetDouble')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    AwsRegion = Shapes::StringShape.new(name: 'AwsRegion')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CloudWatchAlarmArn = Shapes::StringShape.new(name: 'CloudWatchAlarmArn')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CostCurrency = Shapes::StringShape.new(name: 'CostCurrency')
    CreateAssertionRequest = Shapes::StructureShape.new(name: 'CreateAssertionRequest')
    CreateAssertionResponse = Shapes::StructureShape.new(name: 'CreateAssertionResponse')
    CreateInputSourceRequest = Shapes::StructureShape.new(name: 'CreateInputSourceRequest')
    CreateInputSourceResponse = Shapes::StructureShape.new(name: 'CreateInputSourceResponse')
    CreatePolicyRequest = Shapes::StructureShape.new(name: 'CreatePolicyRequest')
    CreatePolicyResponse = Shapes::StructureShape.new(name: 'CreatePolicyResponse')
    CreateReportRequest = Shapes::StructureShape.new(name: 'CreateReportRequest')
    CreateReportResponse = Shapes::StructureShape.new(name: 'CreateReportResponse')
    CreateServiceFunctionRequest = Shapes::StructureShape.new(name: 'CreateServiceFunctionRequest')
    CreateServiceFunctionResourcesRequest = Shapes::StructureShape.new(name: 'CreateServiceFunctionResourcesRequest')
    CreateServiceFunctionResourcesResponse = Shapes::StructureShape.new(name: 'CreateServiceFunctionResourcesResponse')
    CreateServiceFunctionResponse = Shapes::StructureShape.new(name: 'CreateServiceFunctionResponse')
    CreateServiceRequest = Shapes::StructureShape.new(name: 'CreateServiceRequest')
    CreateServiceResponse = Shapes::StructureShape.new(name: 'CreateServiceResponse')
    CreateSystemRequest = Shapes::StructureShape.new(name: 'CreateSystemRequest')
    CreateSystemResponse = Shapes::StructureShape.new(name: 'CreateSystemResponse')
    CreateTestRequest = Shapes::StructureShape.new(name: 'CreateTestRequest')
    CreateTestResponse = Shapes::StructureShape.new(name: 'CreateTestResponse')
    CreateUserJourneyRequest = Shapes::StructureShape.new(name: 'CreateUserJourneyRequest')
    CreateUserJourneyResponse = Shapes::StructureShape.new(name: 'CreateUserJourneyResponse')
    CrossAccountRole = Shapes::StructureShape.new(name: 'CrossAccountRole')
    CrossAccountRoleExternalIdString = Shapes::StringShape.new(name: 'CrossAccountRoleExternalIdString')
    CrossAccountRoleList = Shapes::ListShape.new(name: 'CrossAccountRoleList')
    DataRecoveryTargets = Shapes::StructureShape.new(name: 'DataRecoveryTargets')
    DataRecoveryTargetsTimeBetweenBackupsInMinutesInteger = Shapes::IntegerShape.new(name: 'DataRecoveryTargetsTimeBetweenBackupsInMinutesInteger')
    DeleteAssertionRequest = Shapes::StructureShape.new(name: 'DeleteAssertionRequest')
    DeleteAssertionResponse = Shapes::StructureShape.new(name: 'DeleteAssertionResponse')
    DeleteInputSourceRequest = Shapes::StructureShape.new(name: 'DeleteInputSourceRequest')
    DeleteInputSourceResponse = Shapes::StructureShape.new(name: 'DeleteInputSourceResponse')
    DeletePolicyRequest = Shapes::StructureShape.new(name: 'DeletePolicyRequest')
    DeletePolicyResponse = Shapes::StructureShape.new(name: 'DeletePolicyResponse')
    DeleteServiceFunctionRequest = Shapes::StructureShape.new(name: 'DeleteServiceFunctionRequest')
    DeleteServiceFunctionResourcesRequest = Shapes::StructureShape.new(name: 'DeleteServiceFunctionResourcesRequest')
    DeleteServiceFunctionResourcesResponse = Shapes::StructureShape.new(name: 'DeleteServiceFunctionResourcesResponse')
    DeleteServiceFunctionResponse = Shapes::StructureShape.new(name: 'DeleteServiceFunctionResponse')
    DeleteServiceRequest = Shapes::StructureShape.new(name: 'DeleteServiceRequest')
    DeleteServiceResponse = Shapes::StructureShape.new(name: 'DeleteServiceResponse')
    DeleteSystemRequest = Shapes::StructureShape.new(name: 'DeleteSystemRequest')
    DeleteSystemResponse = Shapes::StructureShape.new(name: 'DeleteSystemResponse')
    DeleteTestRequest = Shapes::StructureShape.new(name: 'DeleteTestRequest')
    DeleteTestResponse = Shapes::StructureShape.new(name: 'DeleteTestResponse')
    DeleteTestSourcesRequest = Shapes::StructureShape.new(name: 'DeleteTestSourcesRequest')
    DeleteTestSourcesResponse = Shapes::StructureShape.new(name: 'DeleteTestSourcesResponse')
    DeleteUserJourneyRequest = Shapes::StructureShape.new(name: 'DeleteUserJourneyRequest')
    DeleteUserJourneyResponse = Shapes::StructureShape.new(name: 'DeleteUserJourneyResponse')
    DependencyCriticality = Shapes::StringShape.new(name: 'DependencyCriticality')
    DependencyDiscoveryConfig = Shapes::StructureShape.new(name: 'DependencyDiscoveryConfig')
    DependencyDiscoveryConfigEligibleResourceCountInteger = Shapes::IntegerShape.new(name: 'DependencyDiscoveryConfigEligibleResourceCountInteger')
    DependencyDiscoveryConfigMessageString = Shapes::StringShape.new(name: 'DependencyDiscoveryConfigMessageString')
    DependencyDiscoveryInput = Shapes::StringShape.new(name: 'DependencyDiscoveryInput')
    DependencyDiscoveryStatus = Shapes::StringShape.new(name: 'DependencyDiscoveryStatus')
    DependencySummary = Shapes::StructureShape.new(name: 'DependencySummary')
    DependencySummaryList = Shapes::ListShape.new(name: 'DependencySummaryList')
    DisasterRecoverySource = Shapes::StructureShape.new(name: 'DisasterRecoverySource')
    Double = Shapes::FloatShape.new(name: 'Double')
    EdgePropertyList = Shapes::ListShape.new(name: 'EdgePropertyList')
    EdgePropertySummary = Shapes::StructureShape.new(name: 'EdgePropertySummary')
    EffectivePolicyValues = Shapes::StructureShape.new(name: 'EffectivePolicyValues')
    EksNamespace = Shapes::StringShape.new(name: 'EksNamespace')
    EksSource = Shapes::StructureShape.new(name: 'EksSource')
    EksSourceNamespacesList = Shapes::ListShape.new(name: 'EksSourceNamespacesList')
    EntityDescription = Shapes::StringShape.new(name: 'EntityDescription')
    EntityId = Shapes::StringShape.new(name: 'EntityId')
    EntityLabel = Shapes::StringShape.new(name: 'EntityLabel')
    EntityName = Shapes::StringShape.new(name: 'EntityName')
    EventActor = Shapes::StructureShape.new(name: 'EventActor')
    ExperimentArnList = Shapes::ListShape.new(name: 'ExperimentArnList')
    ExperimentDetails = Shapes::StructureShape.new(name: 'ExperimentDetails')
    ExperimentDetailsList = Shapes::ListShape.new(name: 'ExperimentDetailsList')
    FailedReportOutput = Shapes::StructureShape.new(name: 'FailedReportOutput')
    FailureCategory = Shapes::StringShape.new(name: 'FailureCategory')
    Finding = Shapes::StructureShape.new(name: 'Finding')
    FindingCommentString = Shapes::StringShape.new(name: 'FindingCommentString')
    FindingSeverity = Shapes::StringShape.new(name: 'FindingSeverity')
    FindingStatus = Shapes::StringShape.new(name: 'FindingStatus')
    FindingSummary = Shapes::StructureShape.new(name: 'FindingSummary')
    FindingsList = Shapes::ListShape.new(name: 'FindingsList')
    FunctionsList = Shapes::ListShape.new(name: 'FunctionsList')
    GetFailureModeFindingRequest = Shapes::StructureShape.new(name: 'GetFailureModeFindingRequest')
    GetFailureModeFindingResponse = Shapes::StructureShape.new(name: 'GetFailureModeFindingResponse')
    GetPolicyRequest = Shapes::StructureShape.new(name: 'GetPolicyRequest')
    GetPolicyResponse = Shapes::StructureShape.new(name: 'GetPolicyResponse')
    GetServiceRequest = Shapes::StructureShape.new(name: 'GetServiceRequest')
    GetServiceResponse = Shapes::StructureShape.new(name: 'GetServiceResponse')
    GetSystemRequest = Shapes::StructureShape.new(name: 'GetSystemRequest')
    GetSystemResponse = Shapes::StructureShape.new(name: 'GetSystemResponse')
    GetTestRequest = Shapes::StructureShape.new(name: 'GetTestRequest')
    GetTestResponse = Shapes::StructureShape.new(name: 'GetTestResponse')
    GetTestRunRequest = Shapes::StructureShape.new(name: 'GetTestRunRequest')
    GetTestRunResponse = Shapes::StructureShape.new(name: 'GetTestRunResponse')
    GetTestTemplateRequest = Shapes::StructureShape.new(name: 'GetTestTemplateRequest')
    GetTestTemplateResponse = Shapes::StructureShape.new(name: 'GetTestTemplateResponse')
    GetUserJourneyRequest = Shapes::StructureShape.new(name: 'GetUserJourneyRequest')
    GetUserJourneyResponse = Shapes::StructureShape.new(name: 'GetUserJourneyResponse')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IamRoleName = Shapes::StringShape.new(name: 'IamRoleName')
    ImportAppRequest = Shapes::StructureShape.new(name: 'ImportAppRequest')
    ImportAppResponse = Shapes::StructureShape.new(name: 'ImportAppResponse')
    ImportPolicyRequest = Shapes::StructureShape.new(name: 'ImportPolicyRequest')
    ImportPolicyResponse = Shapes::StructureShape.new(name: 'ImportPolicyResponse')
    InfrastructureAndCodeRecommendation = Shapes::StructureShape.new(name: 'InfrastructureAndCodeRecommendation')
    InfrastructureAndCodeRecommendationsList = Shapes::ListShape.new(name: 'InfrastructureAndCodeRecommendationsList')
    InputSource = Shapes::StructureShape.new(name: 'InputSource')
    InputSourceId = Shapes::StringShape.new(name: 'InputSourceId')
    InputSourceSummary = Shapes::StructureShape.new(name: 'InputSourceSummary')
    InputSourceSummaryList = Shapes::ListShape.new(name: 'InputSourceSummaryList')
    InputSourceType = Shapes::StringShape.new(name: 'InputSourceType')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    ListAssertionsRequest = Shapes::StructureShape.new(name: 'ListAssertionsRequest')
    ListAssertionsResponse = Shapes::StructureShape.new(name: 'ListAssertionsResponse')
    ListDependenciesRequest = Shapes::StructureShape.new(name: 'ListDependenciesRequest')
    ListDependenciesResponse = Shapes::StructureShape.new(name: 'ListDependenciesResponse')
    ListFailureModeAssessmentsRequest = Shapes::StructureShape.new(name: 'ListFailureModeAssessmentsRequest')
    ListFailureModeAssessmentsResponse = Shapes::StructureShape.new(name: 'ListFailureModeAssessmentsResponse')
    ListFailureModeFindingsRequest = Shapes::StructureShape.new(name: 'ListFailureModeFindingsRequest')
    ListFailureModeFindingsResponse = Shapes::StructureShape.new(name: 'ListFailureModeFindingsResponse')
    ListInputSourcesRequest = Shapes::StructureShape.new(name: 'ListInputSourcesRequest')
    ListInputSourcesResponse = Shapes::StructureShape.new(name: 'ListInputSourcesResponse')
    ListPoliciesRequest = Shapes::StructureShape.new(name: 'ListPoliciesRequest')
    ListPoliciesResponse = Shapes::StructureShape.new(name: 'ListPoliciesResponse')
    ListReportsRequest = Shapes::StructureShape.new(name: 'ListReportsRequest')
    ListReportsResponse = Shapes::StructureShape.new(name: 'ListReportsResponse')
    ListResolvedTestRunTargetResourcesRequest = Shapes::StructureShape.new(name: 'ListResolvedTestRunTargetResourcesRequest')
    ListResolvedTestRunTargetResourcesResponse = Shapes::StructureShape.new(name: 'ListResolvedTestRunTargetResourcesResponse')
    ListResourcesRequest = Shapes::StructureShape.new(name: 'ListResourcesRequest')
    ListResourcesResponse = Shapes::StructureShape.new(name: 'ListResourcesResponse')
    ListServiceEventsRequest = Shapes::StructureShape.new(name: 'ListServiceEventsRequest')
    ListServiceEventsResponse = Shapes::StructureShape.new(name: 'ListServiceEventsResponse')
    ListServiceFunctionsRequest = Shapes::StructureShape.new(name: 'ListServiceFunctionsRequest')
    ListServiceFunctionsResponse = Shapes::StructureShape.new(name: 'ListServiceFunctionsResponse')
    ListServiceTopologyEdgesRequest = Shapes::StructureShape.new(name: 'ListServiceTopologyEdgesRequest')
    ListServiceTopologyEdgesResponse = Shapes::StructureShape.new(name: 'ListServiceTopologyEdgesResponse')
    ListServicesRequest = Shapes::StructureShape.new(name: 'ListServicesRequest')
    ListServicesResponse = Shapes::StructureShape.new(name: 'ListServicesResponse')
    ListSystemEventsRequest = Shapes::StructureShape.new(name: 'ListSystemEventsRequest')
    ListSystemEventsResponse = Shapes::StructureShape.new(name: 'ListSystemEventsResponse')
    ListSystemsRequest = Shapes::StructureShape.new(name: 'ListSystemsRequest')
    ListSystemsResponse = Shapes::StructureShape.new(name: 'ListSystemsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTestRunEventsRequest = Shapes::StructureShape.new(name: 'ListTestRunEventsRequest')
    ListTestRunEventsResponse = Shapes::StructureShape.new(name: 'ListTestRunEventsResponse')
    ListTestRunSourcesRequest = Shapes::StructureShape.new(name: 'ListTestRunSourcesRequest')
    ListTestRunSourcesResponse = Shapes::StructureShape.new(name: 'ListTestRunSourcesResponse')
    ListTestRunsRequest = Shapes::StructureShape.new(name: 'ListTestRunsRequest')
    ListTestRunsResponse = Shapes::StructureShape.new(name: 'ListTestRunsResponse')
    ListTestSourcesRequest = Shapes::StructureShape.new(name: 'ListTestSourcesRequest')
    ListTestSourcesResponse = Shapes::StructureShape.new(name: 'ListTestSourcesResponse')
    ListTestTemplatesRequest = Shapes::StructureShape.new(name: 'ListTestTemplatesRequest')
    ListTestTemplatesResponse = Shapes::StructureShape.new(name: 'ListTestTemplatesResponse')
    ListTestsRequest = Shapes::StructureShape.new(name: 'ListTestsRequest')
    ListTestsResponse = Shapes::StructureShape.new(name: 'ListTestsResponse')
    ListUserJourneysRequest = Shapes::StructureShape.new(name: 'ListUserJourneysRequest')
    ListUserJourneysResponse = Shapes::StructureShape.new(name: 'ListUserJourneysResponse')
    LoggingConfiguration = Shapes::StructureShape.new(name: 'LoggingConfiguration')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LongDescription = Shapes::StringShape.new(name: 'LongDescription')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MultiAzDisasterRecoveryApproach = Shapes::StringShape.new(name: 'MultiAzDisasterRecoveryApproach')
    MultiAzTargets = Shapes::StructureShape.new(name: 'MultiAzTargets')
    MultiAzTargetsRpoInMinutesInteger = Shapes::IntegerShape.new(name: 'MultiAzTargetsRpoInMinutesInteger')
    MultiAzTargetsRtoInMinutesInteger = Shapes::IntegerShape.new(name: 'MultiAzTargetsRtoInMinutesInteger')
    MultiRegionDisasterRecoveryApproach = Shapes::StringShape.new(name: 'MultiRegionDisasterRecoveryApproach')
    MultiRegionTargets = Shapes::StructureShape.new(name: 'MultiRegionTargets')
    MultiRegionTargetsRpoInMinutesInteger = Shapes::IntegerShape.new(name: 'MultiRegionTargetsRpoInMinutesInteger')
    MultiRegionTargetsRtoInMinutesInteger = Shapes::IntegerShape.new(name: 'MultiRegionTargetsRtoInMinutesInteger')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ObservabilityAlarmInput = Shapes::StructureShape.new(name: 'ObservabilityAlarmInput')
    ObservabilityAlarmSummary = Shapes::StructureShape.new(name: 'ObservabilityAlarmSummary')
    ObservabilityRecommendation = Shapes::StructureShape.new(name: 'ObservabilityRecommendation')
    ObservabilityRecommendationsList = Shapes::ListShape.new(name: 'ObservabilityRecommendationsList')
    OrganizationId = Shapes::StringShape.new(name: 'OrganizationId')
    OuId = Shapes::StringShape.new(name: 'OuId')
    ParameterKey = Shapes::StringShape.new(name: 'ParameterKey')
    ParameterType = Shapes::StringShape.new(name: 'ParameterType')
    ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
    PermissionModel = Shapes::StructureShape.new(name: 'PermissionModel')
    Policy = Shapes::StructureShape.new(name: 'Policy')
    PolicyComponent = Shapes::StringShape.new(name: 'PolicyComponent')
    PolicySummary = Shapes::StructureShape.new(name: 'PolicySummary')
    PolicySummaryList = Shapes::ListShape.new(name: 'PolicySummaryList')
    PolicyValueSource = Shapes::StringShape.new(name: 'PolicyValueSource')
    PutTestSourcesRequest = Shapes::StructureShape.new(name: 'PutTestSourcesRequest')
    PutTestSourcesResponse = Shapes::StructureShape.new(name: 'PutTestSourcesResponse')
    QueryDataPoint = Shapes::StructureShape.new(name: 'QueryDataPoint')
    QueryDataPointList = Shapes::ListShape.new(name: 'QueryDataPointList')
    QueryGranularity = Shapes::StringShape.new(name: 'QueryGranularity')
    QueryRange = Shapes::StructureShape.new(name: 'QueryRange')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    RegionSwitchExecutionId = Shapes::StringShape.new(name: 'RegionSwitchExecutionId')
    ReportGenerationErrorCode = Shapes::StringShape.new(name: 'ReportGenerationErrorCode')
    ReportGenerationResult = Shapes::StructureShape.new(name: 'ReportGenerationResult')
    ReportGenerationResultList = Shapes::ListShape.new(name: 'ReportGenerationResultList')
    ReportGenerationStatus = Shapes::StringShape.new(name: 'ReportGenerationStatus')
    ReportOutput = Shapes::UnionShape.new(name: 'ReportOutput')
    ReportOutputConfiguration = Shapes::UnionShape.new(name: 'ReportOutputConfiguration')
    ReportOutputConfigurationList = Shapes::ListShape.new(name: 'ReportOutputConfigurationList')
    ReportType = Shapes::StringShape.new(name: 'ReportType')
    ResolvedTargetInformation = Shapes::MapShape.new(name: 'ResolvedTargetInformation')
    ResolvedTargetInformationKey = Shapes::StringShape.new(name: 'ResolvedTargetInformationKey')
    ResolvedTargetInformationValue = Shapes::StringShape.new(name: 'ResolvedTargetInformationValue')
    ResolvedTargetResource = Shapes::StructureShape.new(name: 'ResolvedTargetResource')
    ResolvedTargetResourceList = Shapes::ListShape.new(name: 'ResolvedTargetResourceList')
    ResolvedTargetResourceResourceTypeString = Shapes::StringShape.new(name: 'ResolvedTargetResourceResourceTypeString')
    ResolvedTargetResourceTargetNameString = Shapes::StringShape.new(name: 'ResolvedTargetResourceTargetNameString')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceConfiguration = Shapes::UnionShape.new(name: 'ResourceConfiguration')
    ResourceDiscoveryErrorCode = Shapes::StringShape.new(name: 'ResourceDiscoveryErrorCode')
    ResourceDiscoveryRunStatus = Shapes::StringShape.new(name: 'ResourceDiscoveryRunStatus')
    ResourceDiscoveryStatus = Shapes::StructureShape.new(name: 'ResourceDiscoveryStatus')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTag = Shapes::StructureShape.new(name: 'ResourceTag')
    ResourceTagList = Shapes::ListShape.new(name: 'ResourceTagList')
    ResourceTagValuesList = Shapes::ListShape.new(name: 'ResourceTagValuesList')
    ResourceTypeFilter = Shapes::StringShape.new(name: 'ResourceTypeFilter')
    ResourceTypeFilterList = Shapes::ListShape.new(name: 'ResourceTypeFilterList')
    ResourceTypeList = Shapes::ListShape.new(name: 'ResourceTypeList')
    S3BucketPath = Shapes::StringShape.new(name: 'S3BucketPath')
    S3ReportOutput = Shapes::StructureShape.new(name: 'S3ReportOutput')
    S3ReportOutputConfiguration = Shapes::StructureShape.new(name: 'S3ReportOutputConfiguration')
    S3Url = Shapes::StringShape.new(name: 'S3Url')
    Service = Shapes::StructureShape.new(name: 'Service')
    ServiceAchievabilityUpdatedMetadata = Shapes::StructureShape.new(name: 'ServiceAchievabilityUpdatedMetadata')
    ServiceCreatedMetadata = Shapes::StructureShape.new(name: 'ServiceCreatedMetadata')
    ServiceDeletedMetadata = Shapes::StructureShape.new(name: 'ServiceDeletedMetadata')
    ServiceEvent = Shapes::StructureShape.new(name: 'ServiceEvent')
    ServiceEventDetails = Shapes::StructureShape.new(name: 'ServiceEventDetails')
    ServiceEventList = Shapes::ListShape.new(name: 'ServiceEventList')
    ServiceEventMetadata = Shapes::UnionShape.new(name: 'ServiceEventMetadata')
    ServiceEventType = Shapes::StringShape.new(name: 'ServiceEventType')
    ServiceEventTypeList = Shapes::ListShape.new(name: 'ServiceEventTypeList')
    ServiceFunction = Shapes::StructureShape.new(name: 'ServiceFunction')
    ServiceFunctionCreatedMetadata = Shapes::StructureShape.new(name: 'ServiceFunctionCreatedMetadata')
    ServiceFunctionCriticality = Shapes::StringShape.new(name: 'ServiceFunctionCriticality')
    ServiceFunctionDeletedMetadata = Shapes::StructureShape.new(name: 'ServiceFunctionDeletedMetadata')
    ServiceFunctionList = Shapes::ListShape.new(name: 'ServiceFunctionList')
    ServiceFunctionResourcesAddedMetadata = Shapes::StructureShape.new(name: 'ServiceFunctionResourcesAddedMetadata')
    ServiceFunctionResourcesRemovedMetadata = Shapes::StructureShape.new(name: 'ServiceFunctionResourcesRemovedMetadata')
    ServiceFunctionSource = Shapes::StringShape.new(name: 'ServiceFunctionSource')
    ServiceFunctionUpdatedMetadata = Shapes::StructureShape.new(name: 'ServiceFunctionUpdatedMetadata')
    ServiceInputSourcesUpdatedMetadata = Shapes::StructureShape.new(name: 'ServiceInputSourcesUpdatedMetadata')
    ServiceOwnedArn = Shapes::StringShape.new(name: 'ServiceOwnedArn')
    ServicePolicyAssociatedMetadata = Shapes::StructureShape.new(name: 'ServicePolicyAssociatedMetadata')
    ServicePolicyDisassociatedMetadata = Shapes::StructureShape.new(name: 'ServicePolicyDisassociatedMetadata')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceReference = Shapes::StructureShape.new(name: 'ServiceReference')
    ServiceReferenceChanges = Shapes::StructureShape.new(name: 'ServiceReferenceChanges')
    ServiceReferenceList = Shapes::ListShape.new(name: 'ServiceReferenceList')
    ServiceReportConfiguration = Shapes::StructureShape.new(name: 'ServiceReportConfiguration')
    ServiceResource = Shapes::StructureShape.new(name: 'ServiceResource')
    ServiceResourceList = Shapes::ListShape.new(name: 'ServiceResourceList')
    ServiceResourcesAssociatedMetadata = Shapes::StructureShape.new(name: 'ServiceResourcesAssociatedMetadata')
    ServiceResourcesDisassociatedMetadata = Shapes::StructureShape.new(name: 'ServiceResourcesDisassociatedMetadata')
    ServiceSummary = Shapes::StructureShape.new(name: 'ServiceSummary')
    ServiceSummaryList = Shapes::ListShape.new(name: 'ServiceSummaryList')
    ServiceSystemAssociatedMetadata = Shapes::StructureShape.new(name: 'ServiceSystemAssociatedMetadata')
    ServiceSystemDisassociatedMetadata = Shapes::StructureShape.new(name: 'ServiceSystemDisassociatedMetadata')
    ServiceTopologyEdgeSummary = Shapes::StructureShape.new(name: 'ServiceTopologyEdgeSummary')
    ServiceTopologyEdgeSummaryList = Shapes::ListShape.new(name: 'ServiceTopologyEdgeSummaryList')
    ServiceWorkflowUpdatedMetadata = Shapes::StructureShape.new(name: 'ServiceWorkflowUpdatedMetadata')
    SloSource = Shapes::StructureShape.new(name: 'SloSource')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartFailureModeAssessmentRequest = Shapes::StructureShape.new(name: 'StartFailureModeAssessmentRequest')
    StartFailureModeAssessmentResponse = Shapes::StructureShape.new(name: 'StartFailureModeAssessmentResponse')
    StartTestRunRequest = Shapes::StructureShape.new(name: 'StartTestRunRequest')
    StartTestRunResponse = Shapes::StructureShape.new(name: 'StartTestRunResponse')
    StopCondition = Shapes::StructureShape.new(name: 'StopCondition')
    StopConditionList = Shapes::ListShape.new(name: 'StopConditionList')
    StopConditionSource = Shapes::StringShape.new(name: 'StopConditionSource')
    StopTestRunRequest = Shapes::StructureShape.new(name: 'StopTestRunRequest')
    StopTestRunResponse = Shapes::StructureShape.new(name: 'StopTestRunResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringChange = Shapes::StructureShape.new(name: 'StringChange')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SuccessCriteriaAlarmInput = Shapes::StructureShape.new(name: 'SuccessCriteriaAlarmInput')
    SuccessCriteriaAlarmSummary = Shapes::StructureShape.new(name: 'SuccessCriteriaAlarmSummary')
    SuggestedChangesList = Shapes::ListShape.new(name: 'SuggestedChangesList')
    System = Shapes::StructureShape.new(name: 'System')
    SystemCreatedMetadata = Shapes::StructureShape.new(name: 'SystemCreatedMetadata')
    SystemDeletedMetadata = Shapes::StructureShape.new(name: 'SystemDeletedMetadata')
    SystemEvent = Shapes::StructureShape.new(name: 'SystemEvent')
    SystemEventDetails = Shapes::StructureShape.new(name: 'SystemEventDetails')
    SystemEventList = Shapes::ListShape.new(name: 'SystemEventList')
    SystemEventMetadata = Shapes::UnionShape.new(name: 'SystemEventMetadata')
    SystemEventType = Shapes::StringShape.new(name: 'SystemEventType')
    SystemEventTypeList = Shapes::ListShape.new(name: 'SystemEventTypeList')
    SystemId = Shapes::StringShape.new(name: 'SystemId')
    SystemPolicyAssociatedMetadata = Shapes::StructureShape.new(name: 'SystemPolicyAssociatedMetadata')
    SystemPolicyDisassociatedMetadata = Shapes::StructureShape.new(name: 'SystemPolicyDisassociatedMetadata')
    SystemServiceAssociatedMetadata = Shapes::StructureShape.new(name: 'SystemServiceAssociatedMetadata')
    SystemServiceDisassociatedMetadata = Shapes::StructureShape.new(name: 'SystemServiceDisassociatedMetadata')
    SystemSummary = Shapes::StructureShape.new(name: 'SystemSummary')
    SystemSummaryList = Shapes::ListShape.new(name: 'SystemSummaryList')
    SystemUserJourneyCreatedMetadata = Shapes::StructureShape.new(name: 'SystemUserJourneyCreatedMetadata')
    SystemUserJourneyDeletedMetadata = Shapes::StructureShape.new(name: 'SystemUserJourneyDeletedMetadata')
    SystemUserJourneyUpdatedMetadata = Shapes::StructureShape.new(name: 'SystemUserJourneyUpdatedMetadata')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetSource = Shapes::StructureShape.new(name: 'TargetSource')
    Test = Shapes::StructureShape.new(name: 'Test')
    TestAction = Shapes::StructureShape.new(name: 'TestAction')
    TestActionList = Shapes::ListShape.new(name: 'TestActionList')
    TestId = Shapes::StringShape.new(name: 'TestId')
    TestParameters = Shapes::MapShape.new(name: 'TestParameters')
    TestRun = Shapes::StructureShape.new(name: 'TestRun')
    TestRunEvent = Shapes::StructureShape.new(name: 'TestRunEvent')
    TestRunEventAttributeKey = Shapes::StringShape.new(name: 'TestRunEventAttributeKey')
    TestRunEventAttributeValue = Shapes::StringShape.new(name: 'TestRunEventAttributeValue')
    TestRunEventAttributes = Shapes::MapShape.new(name: 'TestRunEventAttributes')
    TestRunEventEventIdString = Shapes::StringShape.new(name: 'TestRunEventEventIdString')
    TestRunEventEventTypeString = Shapes::StringShape.new(name: 'TestRunEventEventTypeString')
    TestRunEventList = Shapes::ListShape.new(name: 'TestRunEventList')
    TestRunEventMessageString = Shapes::StringShape.new(name: 'TestRunEventMessageString')
    TestRunId = Shapes::StringShape.new(name: 'TestRunId')
    TestRunObservabilityAlarmSummary = Shapes::StructureShape.new(name: 'TestRunObservabilityAlarmSummary')
    TestRunPolicySnapshot = Shapes::StructureShape.new(name: 'TestRunPolicySnapshot')
    TestRunReportConfiguration = Shapes::StructureShape.new(name: 'TestRunReportConfiguration')
    TestRunSourceSummary = Shapes::UnionShape.new(name: 'TestRunSourceSummary')
    TestRunSourceSummaryList = Shapes::ListShape.new(name: 'TestRunSourceSummaryList')
    TestRunSourceType = Shapes::StringShape.new(name: 'TestRunSourceType')
    TestRunStatus = Shapes::StringShape.new(name: 'TestRunStatus')
    TestRunSuccessCriteriaAlarmSummary = Shapes::StructureShape.new(name: 'TestRunSuccessCriteriaAlarmSummary')
    TestRunSummary = Shapes::StructureShape.new(name: 'TestRunSummary')
    TestRunSummaryList = Shapes::ListShape.new(name: 'TestRunSummaryList')
    TestSourceInput = Shapes::UnionShape.new(name: 'TestSourceInput')
    TestSourceInputList = Shapes::ListShape.new(name: 'TestSourceInputList')
    TestSourceOutcome = Shapes::StringShape.new(name: 'TestSourceOutcome')
    TestSourceSummary = Shapes::UnionShape.new(name: 'TestSourceSummary')
    TestSourceSummaryList = Shapes::ListShape.new(name: 'TestSourceSummaryList')
    TestSourceType = Shapes::StringShape.new(name: 'TestSourceType')
    TestSummary = Shapes::StructureShape.new(name: 'TestSummary')
    TestSummaryList = Shapes::ListShape.new(name: 'TestSummaryList')
    TestTemplate = Shapes::StructureShape.new(name: 'TestTemplate')
    TestTemplateParameter = Shapes::StructureShape.new(name: 'TestTemplateParameter')
    TestTemplateParameterList = Shapes::ListShape.new(name: 'TestTemplateParameterList')
    TestTemplateSummary = Shapes::StructureShape.new(name: 'TestTemplateSummary')
    TestTemplateSummaryList = Shapes::ListShape.new(name: 'TestTemplateSummaryList')
    TestingRecommendation = Shapes::StructureShape.new(name: 'TestingRecommendation')
    TestingRecommendationsList = Shapes::ListShape.new(name: 'TestingRecommendationsList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TopologyType = Shapes::StringShape.new(name: 'TopologyType')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAssertionRequest = Shapes::StructureShape.new(name: 'UpdateAssertionRequest')
    UpdateAssertionResponse = Shapes::StructureShape.new(name: 'UpdateAssertionResponse')
    UpdateDependencyRequest = Shapes::StructureShape.new(name: 'UpdateDependencyRequest')
    UpdateDependencyResponse = Shapes::StructureShape.new(name: 'UpdateDependencyResponse')
    UpdateFailureModeFindingRequest = Shapes::StructureShape.new(name: 'UpdateFailureModeFindingRequest')
    UpdateFailureModeFindingRequestCommentString = Shapes::StringShape.new(name: 'UpdateFailureModeFindingRequestCommentString')
    UpdateFailureModeFindingResponse = Shapes::StructureShape.new(name: 'UpdateFailureModeFindingResponse')
    UpdatePolicyRequest = Shapes::StructureShape.new(name: 'UpdatePolicyRequest')
    UpdatePolicyResponse = Shapes::StructureShape.new(name: 'UpdatePolicyResponse')
    UpdateServiceFunctionRequest = Shapes::StructureShape.new(name: 'UpdateServiceFunctionRequest')
    UpdateServiceFunctionResponse = Shapes::StructureShape.new(name: 'UpdateServiceFunctionResponse')
    UpdateServiceRequest = Shapes::StructureShape.new(name: 'UpdateServiceRequest')
    UpdateServiceResponse = Shapes::StructureShape.new(name: 'UpdateServiceResponse')
    UpdateSystemRequest = Shapes::StructureShape.new(name: 'UpdateSystemRequest')
    UpdateSystemResponse = Shapes::StructureShape.new(name: 'UpdateSystemResponse')
    UpdateTestRequest = Shapes::StructureShape.new(name: 'UpdateTestRequest')
    UpdateTestResponse = Shapes::StructureShape.new(name: 'UpdateTestResponse')
    UpdateUserJourneyRequest = Shapes::StructureShape.new(name: 'UpdateUserJourneyRequest')
    UpdateUserJourneyResponse = Shapes::StructureShape.new(name: 'UpdateUserJourneyResponse')
    UserJourney = Shapes::StructureShape.new(name: 'UserJourney')
    UserJourneyChanges = Shapes::StructureShape.new(name: 'UserJourneyChanges')
    UserJourneyId = Shapes::StringShape.new(name: 'UserJourneyId')
    UserJourneyIdList = Shapes::ListShape.new(name: 'UserJourneyIdList')
    UserJourneyNameList = Shapes::ListShape.new(name: 'UserJourneyNameList')
    UserJourneySummary = Shapes::StructureShape.new(name: 'UserJourneySummary')
    UserJourneySummaryList = Shapes::ListShape.new(name: 'UserJourneySummaryList')
    Uuid = Shapes::StringShape.new(name: 'Uuid')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Achievability.add_member(:availability_slo, Shapes::ShapeRef.new(shape: AchievabilityStatus, location_name: "availabilitySlo"))
    Achievability.add_member(:multi_az_rto_rpo, Shapes::ShapeRef.new(shape: AchievabilityStatus, location_name: "multiAzRtoRpo"))
    Achievability.add_member(:multi_region_rto_rpo, Shapes::ShapeRef.new(shape: AchievabilityStatus, location_name: "multiRegionRtoRpo"))
    Achievability.add_member(:data_recovery_time_between_backups, Shapes::ShapeRef.new(shape: AchievabilityStatus, location_name: "dataRecoveryTimeBetweenBackups"))
    Achievability.struct_class = Types::Achievability

    ArnList.member = Shapes::ShapeRef.new(shape: Arn)

    Assertion.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    Assertion.add_member(:assertion_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "assertionId"))
    Assertion.add_member(:text, Shapes::ShapeRef.new(shape: AssertionText, required: true, location_name: "text"))
    Assertion.add_member(:source, Shapes::ShapeRef.new(shape: AssertionSource, required: true, location_name: "source"))
    Assertion.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Assertion.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Assertion.struct_class = Types::Assertion

    AssertionCreatedMetadata.add_member(:assertion_id, Shapes::ShapeRef.new(shape: String, location_name: "assertionId"))
    AssertionCreatedMetadata.add_member(:assertion_name, Shapes::ShapeRef.new(shape: String, location_name: "assertionName"))
    AssertionCreatedMetadata.struct_class = Types::AssertionCreatedMetadata

    AssertionDeletedMetadata.add_member(:assertion_id, Shapes::ShapeRef.new(shape: String, location_name: "assertionId"))
    AssertionDeletedMetadata.add_member(:assertion_name, Shapes::ShapeRef.new(shape: String, location_name: "assertionName"))
    AssertionDeletedMetadata.struct_class = Types::AssertionDeletedMetadata

    AssertionList.member = Shapes::ShapeRef.new(shape: Assertion)

    AssertionUpdatedMetadata.add_member(:assertion_id, Shapes::ShapeRef.new(shape: String, location_name: "assertionId"))
    AssertionUpdatedMetadata.add_member(:assertion_name, Shapes::ShapeRef.new(shape: String, location_name: "assertionName"))
    AssertionUpdatedMetadata.struct_class = Types::AssertionUpdatedMetadata

    AssessmentCost.add_member(:amount, Shapes::ShapeRef.new(shape: Double, location_name: "amount"))
    AssessmentCost.add_member(:currency, Shapes::ShapeRef.new(shape: CostCurrency, location_name: "currency"))
    AssessmentCost.struct_class = Types::AssessmentCost

    AssessmentStatusList.member = Shapes::ShapeRef.new(shape: AssessmentStatus)

    AssessmentSummary.add_member(:assessment_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "assessmentId"))
    AssessmentSummary.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    AssessmentSummary.add_member(:assessment_status, Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: "assessmentStatus"))
    AssessmentSummary.add_member(:assessment_step, Shapes::ShapeRef.new(shape: AssessmentStep, location_name: "assessmentStep"))
    AssessmentSummary.add_member(:total_findings, Shapes::ShapeRef.new(shape: Integer, location_name: "totalFindings"))
    AssessmentSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    AssessmentSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endedAt"))
    AssessmentSummary.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    AssessmentSummary.add_member(:error_code, Shapes::ShapeRef.new(shape: AssessmentErrorCode, location_name: "errorCode"))
    AssessmentSummary.add_member(:assessment_cost, Shapes::ShapeRef.new(shape: AssessmentCost, location_name: "assessmentCost"))
    AssessmentSummary.add_member(:billable_assessment_unit_count, Shapes::ShapeRef.new(shape: Integer, location_name: "billableAssessmentUnitCount"))
    AssessmentSummary.add_member(:achievability, Shapes::ShapeRef.new(shape: Achievability, location_name: "achievability"))
    AssessmentSummary.struct_class = Types::AssessmentSummary

    AssessmentSummaryList.member = Shapes::ShapeRef.new(shape: AssessmentSummary)

    AssociatedSystem.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "systemArn"))
    AssociatedSystem.add_member(:system_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "systemName"))
    AssociatedSystem.add_member(:user_journey_ids, Shapes::ShapeRef.new(shape: UserJourneyIdList, location_name: "userJourneyIds"))
    AssociatedSystem.struct_class = Types::AssociatedSystem

    AssociatedSystemList.member = Shapes::ShapeRef.new(shape: AssociatedSystem)

    AvailabilitySlo.add_member(:target, Shapes::ShapeRef.new(shape: AvailabilitySloTargetDouble, location_name: "target"))
    AvailabilitySlo.struct_class = Types::AvailabilitySlo

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAssertionRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    CreateAssertionRequest.add_member(:text, Shapes::ShapeRef.new(shape: AssertionText, required: true, location_name: "text"))
    CreateAssertionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAssertionRequest.struct_class = Types::CreateAssertionRequest

    CreateAssertionResponse.add_member(:assertion, Shapes::ShapeRef.new(shape: Assertion, required: true, location_name: "assertion"))
    CreateAssertionResponse.struct_class = Types::CreateAssertionResponse

    CreateInputSourceRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    CreateInputSourceRequest.add_member(:resource_configuration, Shapes::ShapeRef.new(shape: ResourceConfiguration, required: true, location_name: "resourceConfiguration"))
    CreateInputSourceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateInputSourceRequest.struct_class = Types::CreateInputSourceRequest

    CreateInputSourceResponse.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    CreateInputSourceResponse.add_member(:input_source_id, Shapes::ShapeRef.new(shape: InputSourceId, required: true, location_name: "inputSourceId"))
    CreateInputSourceResponse.struct_class = Types::CreateInputSourceResponse

    CreatePolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    CreatePolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: LongDescription, location_name: "description"))
    CreatePolicyRequest.add_member(:availability_slo, Shapes::ShapeRef.new(shape: AvailabilitySlo, location_name: "availabilitySlo"))
    CreatePolicyRequest.add_member(:multi_az, Shapes::ShapeRef.new(shape: MultiAzTargets, location_name: "multiAz"))
    CreatePolicyRequest.add_member(:multi_region, Shapes::ShapeRef.new(shape: MultiRegionTargets, location_name: "multiRegion"))
    CreatePolicyRequest.add_member(:data_recovery, Shapes::ShapeRef.new(shape: DataRecoveryTargets, location_name: "dataRecovery"))
    CreatePolicyRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreatePolicyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreatePolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePolicyRequest.struct_class = Types::CreatePolicyRequest

    CreatePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "policy"))
    CreatePolicyResponse.struct_class = Types::CreatePolicyResponse

    CreateReportRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    CreateReportRequest.add_member(:report_type, Shapes::ShapeRef.new(shape: ReportType, required: true, location_name: "reportType"))
    CreateReportRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateReportRequest.struct_class = Types::CreateReportRequest

    CreateReportResponse.add_member(:report_generation_result, Shapes::ShapeRef.new(shape: ReportGenerationResult, required: true, location_name: "reportGenerationResult"))
    CreateReportResponse.struct_class = Types::CreateReportResponse

    CreateServiceFunctionRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityLabel, required: true, location_name: "name"))
    CreateServiceFunctionRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    CreateServiceFunctionRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    CreateServiceFunctionRequest.add_member(:criticality, Shapes::ShapeRef.new(shape: ServiceFunctionCriticality, required: true, location_name: "criticality"))
    CreateServiceFunctionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateServiceFunctionRequest.struct_class = Types::CreateServiceFunctionRequest

    CreateServiceFunctionResourcesRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    CreateServiceFunctionResourcesRequest.add_member(:service_function_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "serviceFunctionId"))
    CreateServiceFunctionResourcesRequest.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, required: true, location_name: "resources"))
    CreateServiceFunctionResourcesRequest.struct_class = Types::CreateServiceFunctionResourcesRequest

    CreateServiceFunctionResourcesResponse.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "serviceArn"))
    CreateServiceFunctionResourcesResponse.add_member(:service_function_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "serviceFunctionId"))
    CreateServiceFunctionResourcesResponse.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, location_name: "resources"))
    CreateServiceFunctionResourcesResponse.struct_class = Types::CreateServiceFunctionResourcesResponse

    CreateServiceFunctionResponse.add_member(:service_function, Shapes::ShapeRef.new(shape: ServiceFunction, required: true, location_name: "serviceFunction"))
    CreateServiceFunctionResponse.struct_class = Types::CreateServiceFunctionResponse

    CreateServiceRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    CreateServiceRequest.add_member(:description, Shapes::ShapeRef.new(shape: LongDescription, location_name: "description"))
    CreateServiceRequest.add_member(:associated_systems, Shapes::ShapeRef.new(shape: AssociatedSystemList, location_name: "associatedSystems"))
    CreateServiceRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    CreateServiceRequest.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "regions"))
    CreateServiceRequest.add_member(:permission_model, Shapes::ShapeRef.new(shape: PermissionModel, required: true, location_name: "permissionModel"))
    CreateServiceRequest.add_member(:dependency_discovery, Shapes::ShapeRef.new(shape: DependencyDiscoveryInput, location_name: "dependencyDiscovery"))
    CreateServiceRequest.add_member(:report_configuration, Shapes::ShapeRef.new(shape: ServiceReportConfiguration, location_name: "reportConfiguration"))
    CreateServiceRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateServiceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateServiceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateServiceRequest.struct_class = Types::CreateServiceRequest

    CreateServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "service"))
    CreateServiceResponse.struct_class = Types::CreateServiceResponse

    CreateSystemRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    CreateSystemRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    CreateSystemRequest.add_member(:sharing_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "sharingEnabled"))
    CreateSystemRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateSystemRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSystemRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateSystemRequest.struct_class = Types::CreateSystemRequest

    CreateSystemResponse.add_member(:system, Shapes::ShapeRef.new(shape: System, required: true, location_name: "system"))
    CreateSystemResponse.struct_class = Types::CreateSystemResponse

    CreateTestRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    CreateTestRequest.add_member(:test_template_arn, Shapes::ShapeRef.new(shape: ServiceOwnedArn, required: true, location_name: "testTemplateArn"))
    CreateTestRequest.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "loggingConfiguration"))
    CreateTestRequest.add_member(:stop_conditions, Shapes::ShapeRef.new(shape: StopConditionList, location_name: "stopConditions"))
    CreateTestRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "roleName"))
    CreateTestRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: TestParameters, location_name: "parameters"))
    CreateTestRequest.struct_class = Types::CreateTestRequest

    CreateTestResponse.add_member(:test, Shapes::ShapeRef.new(shape: Test, required: true, location_name: "test"))
    CreateTestResponse.struct_class = Types::CreateTestResponse

    CreateUserJourneyRequest.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "systemArn"))
    CreateUserJourneyRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityLabel, required: true, location_name: "name"))
    CreateUserJourneyRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    CreateUserJourneyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    CreateUserJourneyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateUserJourneyRequest.struct_class = Types::CreateUserJourneyRequest

    CreateUserJourneyResponse.add_member(:user_journey, Shapes::ShapeRef.new(shape: UserJourney, required: true, location_name: "userJourney"))
    CreateUserJourneyResponse.struct_class = Types::CreateUserJourneyResponse

    CrossAccountRole.add_member(:cross_account_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "crossAccountRoleArn"))
    CrossAccountRole.add_member(:external_id, Shapes::ShapeRef.new(shape: CrossAccountRoleExternalIdString, location_name: "externalId"))
    CrossAccountRole.struct_class = Types::CrossAccountRole

    CrossAccountRoleList.member = Shapes::ShapeRef.new(shape: CrossAccountRole)

    DataRecoveryTargets.add_member(:time_between_backups_in_minutes, Shapes::ShapeRef.new(shape: DataRecoveryTargetsTimeBetweenBackupsInMinutesInteger, location_name: "timeBetweenBackupsInMinutes"))
    DataRecoveryTargets.struct_class = Types::DataRecoveryTargets

    DeleteAssertionRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    DeleteAssertionRequest.add_member(:assertion_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "assertionId"))
    DeleteAssertionRequest.struct_class = Types::DeleteAssertionRequest

    DeleteAssertionResponse.add_member(:assertion_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "assertionId"))
    DeleteAssertionResponse.struct_class = Types::DeleteAssertionResponse

    DeleteInputSourceRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    DeleteInputSourceRequest.add_member(:input_source_id, Shapes::ShapeRef.new(shape: InputSourceId, required: true, location_name: "inputSourceId"))
    DeleteInputSourceRequest.struct_class = Types::DeleteInputSourceRequest

    DeleteInputSourceResponse.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    DeleteInputSourceResponse.add_member(:input_source_id, Shapes::ShapeRef.new(shape: InputSourceId, required: true, location_name: "inputSourceId"))
    DeleteInputSourceResponse.struct_class = Types::DeleteInputSourceResponse

    DeletePolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "policyArn"))
    DeletePolicyRequest.struct_class = Types::DeletePolicyRequest

    DeletePolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "policyArn"))
    DeletePolicyResponse.struct_class = Types::DeletePolicyResponse

    DeleteServiceFunctionRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    DeleteServiceFunctionRequest.add_member(:service_function_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "serviceFunctionId"))
    DeleteServiceFunctionRequest.struct_class = Types::DeleteServiceFunctionRequest

    DeleteServiceFunctionResourcesRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    DeleteServiceFunctionResourcesRequest.add_member(:service_function_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "serviceFunctionId"))
    DeleteServiceFunctionResourcesRequest.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, required: true, location_name: "resources"))
    DeleteServiceFunctionResourcesRequest.struct_class = Types::DeleteServiceFunctionResourcesRequest

    DeleteServiceFunctionResourcesResponse.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "serviceArn"))
    DeleteServiceFunctionResourcesResponse.add_member(:service_function_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "serviceFunctionId"))
    DeleteServiceFunctionResourcesResponse.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, location_name: "resources"))
    DeleteServiceFunctionResourcesResponse.struct_class = Types::DeleteServiceFunctionResourcesResponse

    DeleteServiceFunctionResponse.add_member(:service_function_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "serviceFunctionId"))
    DeleteServiceFunctionResponse.struct_class = Types::DeleteServiceFunctionResponse

    DeleteServiceRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    DeleteServiceRequest.struct_class = Types::DeleteServiceRequest

    DeleteServiceResponse.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    DeleteServiceResponse.struct_class = Types::DeleteServiceResponse

    DeleteSystemRequest.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "systemArn"))
    DeleteSystemRequest.struct_class = Types::DeleteSystemRequest

    DeleteSystemResponse.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "systemArn"))
    DeleteSystemResponse.struct_class = Types::DeleteSystemResponse

    DeleteTestRequest.add_member(:test_id, Shapes::ShapeRef.new(shape: TestId, required: true, location_name: "testId"))
    DeleteTestRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    DeleteTestRequest.struct_class = Types::DeleteTestRequest

    DeleteTestResponse.add_member(:test_id, Shapes::ShapeRef.new(shape: TestId, required: true, location_name: "testId"))
    DeleteTestResponse.struct_class = Types::DeleteTestResponse

    DeleteTestSourcesRequest.add_member(:test_id, Shapes::ShapeRef.new(shape: TestId, required: true, location_name: "testId"))
    DeleteTestSourcesRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    DeleteTestSourcesRequest.add_member(:test_sources, Shapes::ShapeRef.new(shape: TestSourceInputList, required: true, location_name: "testSources"))
    DeleteTestSourcesRequest.struct_class = Types::DeleteTestSourcesRequest

    DeleteTestSourcesResponse.struct_class = Types::DeleteTestSourcesResponse

    DeleteUserJourneyRequest.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "systemArn"))
    DeleteUserJourneyRequest.add_member(:user_journey_id, Shapes::ShapeRef.new(shape: UserJourneyId, required: true, location_name: "userJourneyId"))
    DeleteUserJourneyRequest.struct_class = Types::DeleteUserJourneyRequest

    DeleteUserJourneyResponse.add_member(:user_journey_id, Shapes::ShapeRef.new(shape: UserJourneyId, required: true, location_name: "userJourneyId"))
    DeleteUserJourneyResponse.struct_class = Types::DeleteUserJourneyResponse

    DependencyDiscoveryConfig.add_member(:status, Shapes::ShapeRef.new(shape: DependencyDiscoveryStatus, required: true, location_name: "status"))
    DependencyDiscoveryConfig.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    DependencyDiscoveryConfig.add_member(:eligible_resource_count, Shapes::ShapeRef.new(shape: DependencyDiscoveryConfigEligibleResourceCountInteger, location_name: "eligibleResourceCount"))
    DependencyDiscoveryConfig.add_member(:message, Shapes::ShapeRef.new(shape: DependencyDiscoveryConfigMessageString, location_name: "message"))
    DependencyDiscoveryConfig.struct_class = Types::DependencyDiscoveryConfig

    DependencySummary.add_member(:dependency_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "dependencyId"))
    DependencySummary.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    DependencySummary.add_member(:dependency_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "dependencyName"))
    DependencySummary.add_member(:dns_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "dnsName"))
    DependencySummary.add_member(:location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "location"))
    DependencySummary.add_member(:last_detected_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastDetectedTime"))
    DependencySummary.add_member(:source_regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "sourceRegions"))
    DependencySummary.add_member(:provider, Shapes::ShapeRef.new(shape: String, location_name: "provider"))
    DependencySummary.add_member(:query_range, Shapes::ShapeRef.new(shape: QueryRange, required: true, location_name: "queryRange"))
    DependencySummary.add_member(:criticality, Shapes::ShapeRef.new(shape: DependencyCriticality, required: true, location_name: "criticality"))
    DependencySummary.add_member(:comment, Shapes::ShapeRef.new(shape: String, location_name: "comment"))
    DependencySummary.struct_class = Types::DependencySummary

    DependencySummaryList.member = Shapes::ShapeRef.new(shape: DependencySummary)

    DisasterRecoverySource.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    DisasterRecoverySource.add_member(:policy_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "policyName"))
    DisasterRecoverySource.add_member(:source, Shapes::ShapeRef.new(shape: PolicyValueSource, location_name: "source"))
    DisasterRecoverySource.struct_class = Types::DisasterRecoverySource

    EdgePropertyList.member = Shapes::ShapeRef.new(shape: EdgePropertySummary)

    EdgePropertySummary.add_member(:topology_type, Shapes::ShapeRef.new(shape: TopologyType, location_name: "topologyType"))
    EdgePropertySummary.add_member(:label, Shapes::ShapeRef.new(shape: String, location_name: "label"))
    EdgePropertySummary.struct_class = Types::EdgePropertySummary

    EffectivePolicyValues.add_member(:availability_slo, Shapes::ShapeRef.new(shape: SloSource, location_name: "availabilitySlo"))
    EffectivePolicyValues.add_member(:multi_az_rto, Shapes::ShapeRef.new(shape: TargetSource, location_name: "multiAzRto"))
    EffectivePolicyValues.add_member(:multi_az_rpo, Shapes::ShapeRef.new(shape: TargetSource, location_name: "multiAzRpo"))
    EffectivePolicyValues.add_member(:multi_az_dr_approach, Shapes::ShapeRef.new(shape: DisasterRecoverySource, location_name: "multiAzDrApproach"))
    EffectivePolicyValues.add_member(:multi_region_rto, Shapes::ShapeRef.new(shape: TargetSource, location_name: "multiRegionRto"))
    EffectivePolicyValues.add_member(:multi_region_rpo, Shapes::ShapeRef.new(shape: TargetSource, location_name: "multiRegionRpo"))
    EffectivePolicyValues.add_member(:multi_region_dr_approach, Shapes::ShapeRef.new(shape: DisasterRecoverySource, location_name: "multiRegionDrApproach"))
    EffectivePolicyValues.add_member(:data_recovery_time_between_backups, Shapes::ShapeRef.new(shape: TargetSource, location_name: "dataRecoveryTimeBetweenBackups"))
    EffectivePolicyValues.struct_class = Types::EffectivePolicyValues

    EksSource.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "clusterArn"))
    EksSource.add_member(:namespaces, Shapes::ShapeRef.new(shape: EksSourceNamespacesList, required: true, location_name: "namespaces"))
    EksSource.struct_class = Types::EksSource

    EksSourceNamespacesList.member = Shapes::ShapeRef.new(shape: EksNamespace)

    EventActor.add_member(:type, Shapes::ShapeRef.new(shape: ActorType, required: true, location_name: "type"))
    EventActor.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "principalId"))
    EventActor.add_member(:account_id, Shapes::ShapeRef.new(shape: String, location_name: "accountId"))
    EventActor.add_member(:user_name, Shapes::ShapeRef.new(shape: String, location_name: "userName"))
    EventActor.struct_class = Types::EventActor

    ExperimentArnList.member = Shapes::ShapeRef.new(shape: Arn)

    ExperimentDetails.add_member(:experiment_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "experimentArn"))
    ExperimentDetails.add_member(:details, Shapes::ShapeRef.new(shape: String, location_name: "details"))
    ExperimentDetails.struct_class = Types::ExperimentDetails

    ExperimentDetailsList.member = Shapes::ShapeRef.new(shape: ExperimentDetails)

    FailedReportOutput.add_member(:error_code, Shapes::ShapeRef.new(shape: ReportGenerationErrorCode, required: true, location_name: "errorCode"))
    FailedReportOutput.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    FailedReportOutput.struct_class = Types::FailedReportOutput

    Finding.add_member(:finding_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "findingId"))
    Finding.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Finding.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    Finding.add_member(:failure_category, Shapes::ShapeRef.new(shape: FailureCategory, location_name: "failureCategory"))
    Finding.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, location_name: "status"))
    Finding.add_member(:reasoning, Shapes::ShapeRef.new(shape: String, location_name: "reasoning"))
    Finding.add_member(:comment, Shapes::ShapeRef.new(shape: FindingCommentString, location_name: "comment"))
    Finding.add_member(:severity, Shapes::ShapeRef.new(shape: FindingSeverity, location_name: "severity"))
    Finding.add_member(:service_functions, Shapes::ShapeRef.new(shape: FunctionsList, location_name: "serviceFunctions"))
    Finding.add_member(:policy_component, Shapes::ShapeRef.new(shape: PolicyComponent, location_name: "policyComponent"))
    Finding.add_member(:infrastructure_and_code_recommendations, Shapes::ShapeRef.new(shape: InfrastructureAndCodeRecommendationsList, location_name: "infrastructureAndCodeRecommendations"))
    Finding.add_member(:observability_recommendations, Shapes::ShapeRef.new(shape: ObservabilityRecommendationsList, location_name: "observabilityRecommendations"))
    Finding.add_member(:testing_recommendations, Shapes::ShapeRef.new(shape: TestingRecommendationsList, location_name: "testingRecommendations"))
    Finding.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Finding.struct_class = Types::Finding

    FindingSummary.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "serviceArn"))
    FindingSummary.add_member(:finding_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "findingId"))
    FindingSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    FindingSummary.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    FindingSummary.add_member(:failure_category, Shapes::ShapeRef.new(shape: FailureCategory, location_name: "failureCategory"))
    FindingSummary.add_member(:severity, Shapes::ShapeRef.new(shape: FindingSeverity, location_name: "severity"))
    FindingSummary.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, location_name: "status"))
    FindingSummary.add_member(:policy_component, Shapes::ShapeRef.new(shape: PolicyComponent, location_name: "policyComponent"))
    FindingSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    FindingSummary.struct_class = Types::FindingSummary

    FindingsList.member = Shapes::ShapeRef.new(shape: FindingSummary)

    FunctionsList.member = Shapes::ShapeRef.new(shape: EntityId)

    GetFailureModeFindingRequest.add_member(:finding_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "querystring", location_name: "findingId"))
    GetFailureModeFindingRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    GetFailureModeFindingRequest.struct_class = Types::GetFailureModeFindingRequest

    GetFailureModeFindingResponse.add_member(:finding, Shapes::ShapeRef.new(shape: Finding, location_name: "finding"))
    GetFailureModeFindingResponse.struct_class = Types::GetFailureModeFindingResponse

    GetPolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "policyArn"))
    GetPolicyRequest.struct_class = Types::GetPolicyRequest

    GetPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "policy"))
    GetPolicyResponse.struct_class = Types::GetPolicyResponse

    GetServiceRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    GetServiceRequest.struct_class = Types::GetServiceRequest

    GetServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "service"))
    GetServiceResponse.struct_class = Types::GetServiceResponse

    GetSystemRequest.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "systemArn"))
    GetSystemRequest.struct_class = Types::GetSystemRequest

    GetSystemResponse.add_member(:system, Shapes::ShapeRef.new(shape: System, required: true, location_name: "system"))
    GetSystemResponse.struct_class = Types::GetSystemResponse

    GetTestRequest.add_member(:test_id, Shapes::ShapeRef.new(shape: TestId, required: true, location: "querystring", location_name: "testId"))
    GetTestRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    GetTestRequest.struct_class = Types::GetTestRequest

    GetTestResponse.add_member(:test, Shapes::ShapeRef.new(shape: Test, required: true, location_name: "test"))
    GetTestResponse.struct_class = Types::GetTestResponse

    GetTestRunRequest.add_member(:test_run_id, Shapes::ShapeRef.new(shape: TestRunId, required: true, location: "querystring", location_name: "testRunId"))
    GetTestRunRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    GetTestRunRequest.struct_class = Types::GetTestRunRequest

    GetTestRunResponse.add_member(:test_run, Shapes::ShapeRef.new(shape: TestRun, required: true, location_name: "testRun"))
    GetTestRunResponse.struct_class = Types::GetTestRunResponse

    GetTestTemplateRequest.add_member(:test_template_arn, Shapes::ShapeRef.new(shape: ServiceOwnedArn, required: true, location: "querystring", location_name: "testTemplateArn"))
    GetTestTemplateRequest.struct_class = Types::GetTestTemplateRequest

    GetTestTemplateResponse.add_member(:test_template, Shapes::ShapeRef.new(shape: TestTemplate, required: true, location_name: "testTemplate"))
    GetTestTemplateResponse.struct_class = Types::GetTestTemplateResponse

    GetUserJourneyRequest.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "systemArn"))
    GetUserJourneyRequest.add_member(:user_journey_id, Shapes::ShapeRef.new(shape: UserJourneyId, required: true, location: "querystring", location_name: "userJourneyId"))
    GetUserJourneyRequest.struct_class = Types::GetUserJourneyRequest

    GetUserJourneyResponse.add_member(:user_journey, Shapes::ShapeRef.new(shape: UserJourney, required: true, location_name: "userJourney"))
    GetUserJourneyResponse.struct_class = Types::GetUserJourneyResponse

    ImportAppRequest.add_member(:v1_app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "v1AppArn"))
    ImportAppRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    ImportAppRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    ImportAppRequest.add_member(:skip_manually_added_resources, Shapes::ShapeRef.new(shape: Boolean, location_name: "skipManuallyAddedResources"))
    ImportAppRequest.add_member(:associated_systems, Shapes::ShapeRef.new(shape: AssociatedSystemList, location_name: "associatedSystems"))
    ImportAppRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ImportAppRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    ImportAppRequest.struct_class = Types::ImportAppRequest

    ImportAppResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "service"))
    ImportAppResponse.struct_class = Types::ImportAppResponse

    ImportPolicyRequest.add_member(:v1_policy_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "v1PolicyArn"))
    ImportPolicyRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    ImportPolicyRequest.add_member(:availability_slo, Shapes::ShapeRef.new(shape: AvailabilitySlo, location_name: "availabilitySlo"))
    ImportPolicyRequest.add_member(:multi_az_disaster_recovery_approach, Shapes::ShapeRef.new(shape: MultiAzDisasterRecoveryApproach, location_name: "multiAzDisasterRecoveryApproach"))
    ImportPolicyRequest.add_member(:multi_region_disaster_recovery_approach, Shapes::ShapeRef.new(shape: MultiRegionDisasterRecoveryApproach, location_name: "multiRegionDisasterRecoveryApproach"))
    ImportPolicyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ImportPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    ImportPolicyRequest.struct_class = Types::ImportPolicyRequest

    ImportPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "policy"))
    ImportPolicyResponse.struct_class = Types::ImportPolicyResponse

    InfrastructureAndCodeRecommendation.add_member(:suggested_changes, Shapes::ShapeRef.new(shape: SuggestedChangesList, location_name: "suggestedChanges"))
    InfrastructureAndCodeRecommendation.struct_class = Types::InfrastructureAndCodeRecommendation

    InfrastructureAndCodeRecommendationsList.member = Shapes::ShapeRef.new(shape: InfrastructureAndCodeRecommendation)

    InputSource.add_member(:identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "identifier"))
    InputSource.add_member(:type, Shapes::ShapeRef.new(shape: InputSourceType, required: true, location_name: "type"))
    InputSource.struct_class = Types::InputSource

    InputSourceSummary.add_member(:input_source_id, Shapes::ShapeRef.new(shape: InputSourceId, required: true, location_name: "inputSourceId"))
    InputSourceSummary.add_member(:type, Shapes::ShapeRef.new(shape: InputSourceType, location_name: "type"))
    InputSourceSummary.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "resourceTags"))
    InputSourceSummary.add_member(:cfn_stack_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "cfnStackArn"))
    InputSourceSummary.add_member(:tf_state_file_url, Shapes::ShapeRef.new(shape: S3Url, location_name: "tfStateFileUrl"))
    InputSourceSummary.add_member(:eks, Shapes::ShapeRef.new(shape: EksSource, location_name: "eks"))
    InputSourceSummary.add_member(:design_file_s3_url, Shapes::ShapeRef.new(shape: S3Url, location_name: "designFileS3Url"))
    InputSourceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    InputSourceSummary.struct_class = Types::InputSourceSummary

    InputSourceSummaryList.member = Shapes::ShapeRef.new(shape: InputSourceSummary)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAssertionsRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    ListAssertionsRequest.add_member(:source, Shapes::ShapeRef.new(shape: AssertionSource, location: "querystring", location_name: "source"))
    ListAssertionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssertionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssertionsRequest.struct_class = Types::ListAssertionsRequest

    ListAssertionsResponse.add_member(:assertions, Shapes::ShapeRef.new(shape: AssertionList, required: true, location_name: "assertions"))
    ListAssertionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssertionsResponse.struct_class = Types::ListAssertionsResponse

    ListDependenciesRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, location: "querystring", location_name: "serviceArn"))
    ListDependenciesRequest.add_member(:query_range_start_time, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "queryRangeStartTime"))
    ListDependenciesRequest.add_member(:query_range_end_time, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "queryRangeEndTime"))
    ListDependenciesRequest.add_member(:query_range_granularity, Shapes::ShapeRef.new(shape: QueryGranularity, location: "querystring", location_name: "queryRangeGranularity"))
    ListDependenciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDependenciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDependenciesRequest.struct_class = Types::ListDependenciesRequest

    ListDependenciesResponse.add_member(:dependency_summaries, Shapes::ShapeRef.new(shape: DependencySummaryList, required: true, location_name: "dependencySummaries"))
    ListDependenciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDependenciesResponse.struct_class = Types::ListDependenciesResponse

    ListFailureModeAssessmentsRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    ListFailureModeAssessmentsRequest.add_member(:assessment_statuses, Shapes::ShapeRef.new(shape: AssessmentStatusList, location: "querystring", location_name: "assessmentStatuses"))
    ListFailureModeAssessmentsRequest.add_member(:started_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startedAfter"))
    ListFailureModeAssessmentsRequest.add_member(:ended_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "endedBefore"))
    ListFailureModeAssessmentsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: AssessmentSortField, location: "querystring", location_name: "sortBy"))
    ListFailureModeAssessmentsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "sortOrder"))
    ListFailureModeAssessmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFailureModeAssessmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListFailureModeAssessmentsRequest.struct_class = Types::ListFailureModeAssessmentsRequest

    ListFailureModeAssessmentsResponse.add_member(:assessment_summaries, Shapes::ShapeRef.new(shape: AssessmentSummaryList, required: true, location_name: "assessmentSummaries"))
    ListFailureModeAssessmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFailureModeAssessmentsResponse.struct_class = Types::ListFailureModeAssessmentsResponse

    ListFailureModeFindingsRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    ListFailureModeFindingsRequest.add_member(:severity, Shapes::ShapeRef.new(shape: FindingSeverity, location: "querystring", location_name: "severity"))
    ListFailureModeFindingsRequest.add_member(:failure_category, Shapes::ShapeRef.new(shape: FailureCategory, location: "querystring", location_name: "failureCategory"))
    ListFailureModeFindingsRequest.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, location: "querystring", location_name: "status"))
    ListFailureModeFindingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFailureModeFindingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListFailureModeFindingsRequest.struct_class = Types::ListFailureModeFindingsRequest

    ListFailureModeFindingsResponse.add_member(:findings_summary, Shapes::ShapeRef.new(shape: FindingsList, required: true, location_name: "findingsSummary"))
    ListFailureModeFindingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFailureModeFindingsResponse.struct_class = Types::ListFailureModeFindingsResponse

    ListInputSourcesRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    ListInputSourcesRequest.add_member(:type, Shapes::ShapeRef.new(shape: InputSourceType, location: "querystring", location_name: "type"))
    ListInputSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInputSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListInputSourcesRequest.struct_class = Types::ListInputSourcesRequest

    ListInputSourcesResponse.add_member(:input_source_summaries, Shapes::ShapeRef.new(shape: InputSourceSummaryList, required: true, location_name: "inputSourceSummaries"))
    ListInputSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListInputSourcesResponse.struct_class = Types::ListInputSourcesResponse

    ListPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPoliciesRequest.struct_class = Types::ListPoliciesRequest

    ListPoliciesResponse.add_member(:policy_summaries, Shapes::ShapeRef.new(shape: PolicySummaryList, required: true, location_name: "policySummaries"))
    ListPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPoliciesResponse.struct_class = Types::ListPoliciesResponse

    ListReportsRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, location: "querystring", location_name: "serviceArn"))
    ListReportsRequest.add_member(:report_type, Shapes::ShapeRef.new(shape: ReportType, location: "querystring", location_name: "reportType"))
    ListReportsRequest.add_member(:test_run_id, Shapes::ShapeRef.new(shape: TestRunId, location: "querystring", location_name: "testRunId"))
    ListReportsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListReportsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListReportsRequest.struct_class = Types::ListReportsRequest

    ListReportsResponse.add_member(:report_generation_results, Shapes::ShapeRef.new(shape: ReportGenerationResultList, required: true, location_name: "reportGenerationResults"))
    ListReportsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListReportsResponse.struct_class = Types::ListReportsResponse

    ListResolvedTestRunTargetResourcesRequest.add_member(:test_run_id, Shapes::ShapeRef.new(shape: TestRunId, required: true, location: "uri", location_name: "testRunId"))
    ListResolvedTestRunTargetResourcesRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    ListResolvedTestRunTargetResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListResolvedTestRunTargetResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListResolvedTestRunTargetResourcesRequest.struct_class = Types::ListResolvedTestRunTargetResourcesRequest

    ListResolvedTestRunTargetResourcesResponse.add_member(:resolved_target_resources, Shapes::ShapeRef.new(shape: ResolvedTargetResourceList, required: true, location_name: "resolvedTargetResources"))
    ListResolvedTestRunTargetResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListResolvedTestRunTargetResourcesResponse.struct_class = Types::ListResolvedTestRunTargetResourcesResponse

    ListResourcesRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    ListResourcesRequest.add_member(:service_function_id, Shapes::ShapeRef.new(shape: EntityId, location: "querystring", location_name: "serviceFunctionId"))
    ListResourcesRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location: "querystring", location_name: "awsRegion"))
    ListResourcesRequest.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypeFilterList, location: "querystring", location_name: "resourceTypes"))
    ListResourcesRequest.add_member(:billable, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "billable"))
    ListResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListResourcesRequest.struct_class = Types::ListResourcesRequest

    ListResourcesResponse.add_member(:service_function_id, Shapes::ShapeRef.new(shape: EntityId, location_name: "serviceFunctionId"))
    ListResourcesResponse.add_member(:service_resources, Shapes::ShapeRef.new(shape: ServiceResourceList, location_name: "serviceResources"))
    ListResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListResourcesResponse.struct_class = Types::ListResourcesResponse

    ListServiceEventsRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    ListServiceEventsRequest.add_member(:event_types, Shapes::ShapeRef.new(shape: ServiceEventTypeList, location: "querystring", location_name: "eventTypes"))
    ListServiceEventsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startTime"))
    ListServiceEventsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "endTime"))
    ListServiceEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListServiceEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListServiceEventsRequest.struct_class = Types::ListServiceEventsRequest

    ListServiceEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: ServiceEventList, required: true, location_name: "events"))
    ListServiceEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServiceEventsResponse.struct_class = Types::ListServiceEventsResponse

    ListServiceFunctionsRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    ListServiceFunctionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListServiceFunctionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListServiceFunctionsRequest.struct_class = Types::ListServiceFunctionsRequest

    ListServiceFunctionsResponse.add_member(:service_functions, Shapes::ShapeRef.new(shape: ServiceFunctionList, required: true, location_name: "serviceFunctions"))
    ListServiceFunctionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServiceFunctionsResponse.struct_class = Types::ListServiceFunctionsResponse

    ListServiceTopologyEdgesRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    ListServiceTopologyEdgesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListServiceTopologyEdgesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListServiceTopologyEdgesRequest.struct_class = Types::ListServiceTopologyEdgesRequest

    ListServiceTopologyEdgesResponse.add_member(:service_topology_edge_summaries, Shapes::ShapeRef.new(shape: ServiceTopologyEdgeSummaryList, location_name: "serviceTopologyEdgeSummaries"))
    ListServiceTopologyEdgesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServiceTopologyEdgesResponse.struct_class = Types::ListServiceTopologyEdgesResponse

    ListServicesRequest.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, location: "querystring", location_name: "systemArn"))
    ListServicesRequest.add_member(:user_journey_id, Shapes::ShapeRef.new(shape: UserJourneyId, location: "querystring", location_name: "userJourneyId"))
    ListServicesRequest.add_member(:ou_id, Shapes::ShapeRef.new(shape: OuId, location: "querystring", location_name: "ouId"))
    ListServicesRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "accountId"))
    ListServicesRequest.add_member(:assessment_status, Shapes::ShapeRef.new(shape: AssessmentStatus, location: "querystring", location_name: "assessmentStatus"))
    ListServicesRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location: "querystring", location_name: "policyArn"))
    ListServicesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListServicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListServicesRequest.struct_class = Types::ListServicesRequest

    ListServicesResponse.add_member(:service_summaries, Shapes::ShapeRef.new(shape: ServiceSummaryList, required: true, location_name: "serviceSummaries"))
    ListServicesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServicesResponse.struct_class = Types::ListServicesResponse

    ListSystemEventsRequest.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "systemArn"))
    ListSystemEventsRequest.add_member(:event_types, Shapes::ShapeRef.new(shape: SystemEventTypeList, location: "querystring", location_name: "eventTypes"))
    ListSystemEventsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startTime"))
    ListSystemEventsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "endTime"))
    ListSystemEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSystemEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSystemEventsRequest.struct_class = Types::ListSystemEventsRequest

    ListSystemEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: SystemEventList, required: true, location_name: "events"))
    ListSystemEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSystemEventsResponse.struct_class = Types::ListSystemEventsResponse

    ListSystemsRequest.add_member(:ou_id, Shapes::ShapeRef.new(shape: OuId, location: "querystring", location_name: "ouId"))
    ListSystemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSystemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSystemsRequest.struct_class = Types::ListSystemsRequest

    ListSystemsResponse.add_member(:system_summaries, Shapes::ShapeRef.new(shape: SystemSummaryList, required: true, location_name: "systemSummaries"))
    ListSystemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSystemsResponse.struct_class = Types::ListSystemsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTestRunEventsRequest.add_member(:test_run_id, Shapes::ShapeRef.new(shape: TestRunId, required: true, location: "uri", location_name: "testRunId"))
    ListTestRunEventsRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    ListTestRunEventsRequest.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "startedAt"))
    ListTestRunEventsRequest.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "endedAt"))
    ListTestRunEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTestRunEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTestRunEventsRequest.struct_class = Types::ListTestRunEventsRequest

    ListTestRunEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: TestRunEventList, required: true, location_name: "events"))
    ListTestRunEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestRunEventsResponse.struct_class = Types::ListTestRunEventsResponse

    ListTestRunSourcesRequest.add_member(:test_run_id, Shapes::ShapeRef.new(shape: TestRunId, required: true, location: "uri", location_name: "testRunId"))
    ListTestRunSourcesRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    ListTestRunSourcesRequest.add_member(:type, Shapes::ShapeRef.new(shape: TestRunSourceType, location: "querystring", location_name: "type"))
    ListTestRunSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTestRunSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTestRunSourcesRequest.struct_class = Types::ListTestRunSourcesRequest

    ListTestRunSourcesResponse.add_member(:test_run_sources, Shapes::ShapeRef.new(shape: TestRunSourceSummaryList, required: true, location_name: "testRunSources"))
    ListTestRunSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestRunSourcesResponse.struct_class = Types::ListTestRunSourcesResponse

    ListTestRunsRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    ListTestRunsRequest.add_member(:test_id, Shapes::ShapeRef.new(shape: TestId, location: "querystring", location_name: "testId"))
    ListTestRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTestRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTestRunsRequest.struct_class = Types::ListTestRunsRequest

    ListTestRunsResponse.add_member(:test_runs, Shapes::ShapeRef.new(shape: TestRunSummaryList, required: true, location_name: "testRuns"))
    ListTestRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestRunsResponse.struct_class = Types::ListTestRunsResponse

    ListTestSourcesRequest.add_member(:test_id, Shapes::ShapeRef.new(shape: TestId, required: true, location: "uri", location_name: "testId"))
    ListTestSourcesRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    ListTestSourcesRequest.add_member(:type, Shapes::ShapeRef.new(shape: TestSourceType, location: "querystring", location_name: "type"))
    ListTestSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTestSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTestSourcesRequest.struct_class = Types::ListTestSourcesRequest

    ListTestSourcesResponse.add_member(:test_sources, Shapes::ShapeRef.new(shape: TestSourceSummaryList, required: true, location_name: "testSources"))
    ListTestSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestSourcesResponse.struct_class = Types::ListTestSourcesResponse

    ListTestTemplatesRequest.struct_class = Types::ListTestTemplatesRequest

    ListTestTemplatesResponse.add_member(:test_templates, Shapes::ShapeRef.new(shape: TestTemplateSummaryList, required: true, location_name: "testTemplates"))
    ListTestTemplatesResponse.struct_class = Types::ListTestTemplatesResponse

    ListTestsRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "serviceArn"))
    ListTestsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTestsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTestsRequest.struct_class = Types::ListTestsRequest

    ListTestsResponse.add_member(:tests, Shapes::ShapeRef.new(shape: TestSummaryList, required: true, location_name: "tests"))
    ListTestsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestsResponse.struct_class = Types::ListTestsResponse

    ListUserJourneysRequest.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "systemArn"))
    ListUserJourneysRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListUserJourneysRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListUserJourneysRequest.struct_class = Types::ListUserJourneysRequest

    ListUserJourneysResponse.add_member(:user_journey_summaries, Shapes::ShapeRef.new(shape: UserJourneySummaryList, required: true, location_name: "userJourneySummaries"))
    ListUserJourneysResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListUserJourneysResponse.struct_class = Types::ListUserJourneysResponse

    LoggingConfiguration.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: String, location_name: "s3BucketName"))
    LoggingConfiguration.add_member(:cloud_watch_log_group_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "cloudWatchLogGroupArn"))
    LoggingConfiguration.add_member(:log_schema_version, Shapes::ShapeRef.new(shape: String, location_name: "logSchemaVersion"))
    LoggingConfiguration.struct_class = Types::LoggingConfiguration

    MultiAzTargets.add_member(:rto_in_minutes, Shapes::ShapeRef.new(shape: MultiAzTargetsRtoInMinutesInteger, location_name: "rtoInMinutes"))
    MultiAzTargets.add_member(:rpo_in_minutes, Shapes::ShapeRef.new(shape: MultiAzTargetsRpoInMinutesInteger, location_name: "rpoInMinutes"))
    MultiAzTargets.add_member(:disaster_recovery_approach, Shapes::ShapeRef.new(shape: MultiAzDisasterRecoveryApproach, location_name: "disasterRecoveryApproach"))
    MultiAzTargets.struct_class = Types::MultiAzTargets

    MultiRegionTargets.add_member(:rto_in_minutes, Shapes::ShapeRef.new(shape: MultiRegionTargetsRtoInMinutesInteger, location_name: "rtoInMinutes"))
    MultiRegionTargets.add_member(:rpo_in_minutes, Shapes::ShapeRef.new(shape: MultiRegionTargetsRpoInMinutesInteger, location_name: "rpoInMinutes"))
    MultiRegionTargets.add_member(:disaster_recovery_approach, Shapes::ShapeRef.new(shape: MultiRegionDisasterRecoveryApproach, location_name: "disasterRecoveryApproach"))
    MultiRegionTargets.struct_class = Types::MultiRegionTargets

    ObservabilityAlarmInput.add_member(:alarm_arn, Shapes::ShapeRef.new(shape: CloudWatchAlarmArn, required: true, location_name: "alarmArn"))
    ObservabilityAlarmInput.struct_class = Types::ObservabilityAlarmInput

    ObservabilityAlarmSummary.add_member(:alarm_arn, Shapes::ShapeRef.new(shape: CloudWatchAlarmArn, required: true, location_name: "alarmArn"))
    ObservabilityAlarmSummary.add_member(:alarm_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "alarmName"))
    ObservabilityAlarmSummary.add_member(:region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "region"))
    ObservabilityAlarmSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "accountId"))
    ObservabilityAlarmSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ObservabilityAlarmSummary.struct_class = Types::ObservabilityAlarmSummary

    ObservabilityRecommendation.add_member(:suggested_changes, Shapes::ShapeRef.new(shape: SuggestedChangesList, location_name: "suggestedChanges"))
    ObservabilityRecommendation.struct_class = Types::ObservabilityRecommendation

    ObservabilityRecommendationsList.member = Shapes::ShapeRef.new(shape: ObservabilityRecommendation)

    PermissionModel.add_member(:invoker_role_name, Shapes::ShapeRef.new(shape: IamRoleName, required: true, location_name: "invokerRoleName"))
    PermissionModel.add_member(:cross_account_roles, Shapes::ShapeRef.new(shape: CrossAccountRoleList, location_name: "crossAccountRoles"))
    PermissionModel.struct_class = Types::PermissionModel

    Policy.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "policyArn"))
    Policy.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    Policy.add_member(:description, Shapes::ShapeRef.new(shape: LongDescription, location_name: "description"))
    Policy.add_member(:availability_slo, Shapes::ShapeRef.new(shape: AvailabilitySlo, location_name: "availabilitySlo"))
    Policy.add_member(:multi_az, Shapes::ShapeRef.new(shape: MultiAzTargets, location_name: "multiAz"))
    Policy.add_member(:multi_region, Shapes::ShapeRef.new(shape: MultiRegionTargets, location_name: "multiRegion"))
    Policy.add_member(:data_recovery, Shapes::ShapeRef.new(shape: DataRecoveryTargets, location_name: "dataRecovery"))
    Policy.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    Policy.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Policy.add_member(:associated_service_count, Shapes::ShapeRef.new(shape: Integer, location_name: "associatedServiceCount"))
    Policy.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Policy.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Policy.struct_class = Types::Policy

    PolicySummary.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "policyArn"))
    PolicySummary.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    PolicySummary.add_member(:availability_slo, Shapes::ShapeRef.new(shape: AvailabilitySlo, location_name: "availabilitySlo"))
    PolicySummary.add_member(:multi_az, Shapes::ShapeRef.new(shape: MultiAzTargets, location_name: "multiAz"))
    PolicySummary.add_member(:multi_region, Shapes::ShapeRef.new(shape: MultiRegionTargets, location_name: "multiRegion"))
    PolicySummary.add_member(:data_recovery, Shapes::ShapeRef.new(shape: DataRecoveryTargets, location_name: "dataRecovery"))
    PolicySummary.add_member(:associated_service_count, Shapes::ShapeRef.new(shape: Integer, location_name: "associatedServiceCount"))
    PolicySummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    PolicySummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    PolicySummary.struct_class = Types::PolicySummary

    PolicySummaryList.member = Shapes::ShapeRef.new(shape: PolicySummary)

    PutTestSourcesRequest.add_member(:test_id, Shapes::ShapeRef.new(shape: TestId, required: true, location_name: "testId"))
    PutTestSourcesRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    PutTestSourcesRequest.add_member(:test_sources, Shapes::ShapeRef.new(shape: TestSourceInputList, required: true, location_name: "testSources"))
    PutTestSourcesRequest.struct_class = Types::PutTestSourcesRequest

    PutTestSourcesResponse.struct_class = Types::PutTestSourcesResponse

    QueryDataPoint.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    QueryDataPoint.add_member(:query_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "queryCount"))
    QueryDataPoint.struct_class = Types::QueryDataPoint

    QueryDataPointList.member = Shapes::ShapeRef.new(shape: QueryDataPoint)

    QueryRange.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startTime"))
    QueryRange.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "endTime"))
    QueryRange.add_member(:granularity, Shapes::ShapeRef.new(shape: QueryGranularity, required: true, location_name: "granularity"))
    QueryRange.add_member(:data_points, Shapes::ShapeRef.new(shape: QueryDataPointList, required: true, location_name: "dataPoints"))
    QueryRange.struct_class = Types::QueryRange

    RegionList.member = Shapes::ShapeRef.new(shape: AwsRegion)

    ReportGenerationResult.add_member(:report_type, Shapes::ShapeRef.new(shape: ReportType, required: true, location_name: "reportType"))
    ReportGenerationResult.add_member(:status, Shapes::ShapeRef.new(shape: ReportGenerationStatus, required: true, location_name: "status"))
    ReportGenerationResult.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "serviceArn"))
    ReportGenerationResult.add_member(:assessment_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "assessmentId"))
    ReportGenerationResult.add_member(:test_run_id, Shapes::ShapeRef.new(shape: TestRunId, location_name: "testRunId"))
    ReportGenerationResult.add_member(:test_template_arn, Shapes::ShapeRef.new(shape: ServiceOwnedArn, location_name: "testTemplateArn"))
    ReportGenerationResult.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ReportGenerationResult.add_member(:report_output, Shapes::ShapeRef.new(shape: ReportOutput, location_name: "reportOutput"))
    ReportGenerationResult.struct_class = Types::ReportGenerationResult

    ReportGenerationResultList.member = Shapes::ShapeRef.new(shape: ReportGenerationResult)

    ReportOutput.add_member(:s3_report_output, Shapes::ShapeRef.new(shape: S3ReportOutput, location_name: "s3ReportOutput"))
    ReportOutput.add_member(:failed_report_output, Shapes::ShapeRef.new(shape: FailedReportOutput, location_name: "failedReportOutput"))
    ReportOutput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ReportOutput.add_member_subclass(:s3_report_output, Types::ReportOutput::S3ReportOutput)
    ReportOutput.add_member_subclass(:failed_report_output, Types::ReportOutput::FailedReportOutput)
    ReportOutput.add_member_subclass(:unknown, Types::ReportOutput::Unknown)
    ReportOutput.struct_class = Types::ReportOutput

    ReportOutputConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: S3ReportOutputConfiguration, location_name: "s3"))
    ReportOutputConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ReportOutputConfiguration.add_member_subclass(:s3, Types::ReportOutputConfiguration::S3)
    ReportOutputConfiguration.add_member_subclass(:unknown, Types::ReportOutputConfiguration::Unknown)
    ReportOutputConfiguration.struct_class = Types::ReportOutputConfiguration

    ReportOutputConfigurationList.member = Shapes::ShapeRef.new(shape: ReportOutputConfiguration)

    ResolvedTargetInformation.key = Shapes::ShapeRef.new(shape: ResolvedTargetInformationKey)
    ResolvedTargetInformation.value = Shapes::ShapeRef.new(shape: ResolvedTargetInformationValue)

    ResolvedTargetResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResolvedTargetResourceResourceTypeString, required: true, location_name: "resourceType"))
    ResolvedTargetResource.add_member(:target_name, Shapes::ShapeRef.new(shape: ResolvedTargetResourceTargetNameString, required: true, location_name: "targetName"))
    ResolvedTargetResource.add_member(:target_information, Shapes::ShapeRef.new(shape: ResolvedTargetInformation, required: true, location_name: "targetInformation"))
    ResolvedTargetResource.struct_class = Types::ResolvedTargetResource

    ResolvedTargetResourceList.member = Shapes::ShapeRef.new(shape: ResolvedTargetResource)

    Resource.add_member(:identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "identifier"))
    Resource.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsRegion"))
    Resource.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "awsAccountId"))
    Resource.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    Resource.struct_class = Types::Resource

    ResourceConfiguration.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "resourceTags"))
    ResourceConfiguration.add_member(:cfn_stack_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "cfnStackArn"))
    ResourceConfiguration.add_member(:tf_state_file_url, Shapes::ShapeRef.new(shape: S3Url, location_name: "tfStateFileUrl"))
    ResourceConfiguration.add_member(:eks, Shapes::ShapeRef.new(shape: EksSource, location_name: "eks"))
    ResourceConfiguration.add_member(:design_file_s3_url, Shapes::ShapeRef.new(shape: S3Url, location_name: "designFileS3Url"))
    ResourceConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResourceConfiguration.add_member_subclass(:resource_tags, Types::ResourceConfiguration::ResourceTags)
    ResourceConfiguration.add_member_subclass(:cfn_stack_arn, Types::ResourceConfiguration::CfnStackArn)
    ResourceConfiguration.add_member_subclass(:tf_state_file_url, Types::ResourceConfiguration::TfStateFileUrl)
    ResourceConfiguration.add_member_subclass(:eks, Types::ResourceConfiguration::Eks)
    ResourceConfiguration.add_member_subclass(:design_file_s3_url, Types::ResourceConfiguration::DesignFileS3Url)
    ResourceConfiguration.add_member_subclass(:unknown, Types::ResourceConfiguration::Unknown)
    ResourceConfiguration.struct_class = Types::ResourceConfiguration

    ResourceDiscoveryStatus.add_member(:status, Shapes::ShapeRef.new(shape: ResourceDiscoveryRunStatus, location_name: "status"))
    ResourceDiscoveryStatus.add_member(:last_run_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastRunAt"))
    ResourceDiscoveryStatus.add_member(:error_code, Shapes::ShapeRef.new(shape: ResourceDiscoveryErrorCode, location_name: "errorCode"))
    ResourceDiscoveryStatus.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    ResourceDiscoveryStatus.struct_class = Types::ResourceDiscoveryStatus

    ResourceList.member = Shapes::ShapeRef.new(shape: String)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    ResourceTag.add_member(:values, Shapes::ShapeRef.new(shape: ResourceTagValuesList, required: true, location_name: "values"))
    ResourceTag.struct_class = Types::ResourceTag

    ResourceTagList.member = Shapes::ShapeRef.new(shape: ResourceTag)

    ResourceTagValuesList.member = Shapes::ShapeRef.new(shape: TagValue)

    ResourceTypeFilterList.member = Shapes::ShapeRef.new(shape: ResourceTypeFilter)

    ResourceTypeList.member = Shapes::ShapeRef.new(shape: String)

    S3ReportOutput.add_member(:s3_object_key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "s3ObjectKey"))
    S3ReportOutput.struct_class = Types::S3ReportOutput

    S3ReportOutputConfiguration.add_member(:bucket_path, Shapes::ShapeRef.new(shape: S3BucketPath, required: true, location_name: "bucketPath"))
    S3ReportOutputConfiguration.add_member(:bucket_owner, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "bucketOwner"))
    S3ReportOutputConfiguration.struct_class = Types::S3ReportOutputConfiguration

    Service.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    Service.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    Service.add_member(:description, Shapes::ShapeRef.new(shape: LongDescription, location_name: "description"))
    Service.add_member(:associated_systems, Shapes::ShapeRef.new(shape: AssociatedSystemList, location_name: "associatedSystems"))
    Service.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    Service.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "regions"))
    Service.add_member(:permission_model, Shapes::ShapeRef.new(shape: PermissionModel, location_name: "permissionModel"))
    Service.add_member(:dependency_discovery, Shapes::ShapeRef.new(shape: DependencyDiscoveryConfig, location_name: "dependencyDiscovery"))
    Service.add_member(:effective_policy_values, Shapes::ShapeRef.new(shape: EffectivePolicyValues, location_name: "effectivePolicyValues"))
    Service.add_member(:achievability, Shapes::ShapeRef.new(shape: Achievability, location_name: "achievability"))
    Service.add_member(:report_configuration, Shapes::ShapeRef.new(shape: ServiceReportConfiguration, location_name: "reportConfiguration"))
    Service.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    Service.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Service.add_member(:estimated_assessment_cost, Shapes::ShapeRef.new(shape: AssessmentCost, location_name: "estimatedAssessmentCost"))
    Service.add_member(:resource_discovery, Shapes::ShapeRef.new(shape: ResourceDiscoveryStatus, location_name: "resourceDiscovery"))
    Service.add_member(:assessment_status, Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: "assessmentStatus"))
    Service.add_member(:rerun_assessment, Shapes::ShapeRef.new(shape: Boolean, location_name: "rerunAssessment"))
    Service.add_member(:open_findings_count, Shapes::ShapeRef.new(shape: Integer, location_name: "openFindingsCount"))
    Service.add_member(:resolved_findings_count, Shapes::ShapeRef.new(shape: Integer, location_name: "resolvedFindingsCount"))
    Service.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, location_name: "organizationId"))
    Service.add_member(:ou_id, Shapes::ShapeRef.new(shape: OuId, location_name: "ouId"))
    Service.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    Service.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Service.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    Service.struct_class = Types::Service

    ServiceAchievabilityUpdatedMetadata.add_member(:assessment_id, Shapes::ShapeRef.new(shape: String, location_name: "assessmentId"))
    ServiceAchievabilityUpdatedMetadata.add_member(:availability_slo, Shapes::ShapeRef.new(shape: String, location_name: "availabilitySlo"))
    ServiceAchievabilityUpdatedMetadata.add_member(:multi_az_rto_rpo, Shapes::ShapeRef.new(shape: String, location_name: "multiAzRtoRpo"))
    ServiceAchievabilityUpdatedMetadata.add_member(:multi_region_rto_rpo, Shapes::ShapeRef.new(shape: String, location_name: "multiRegionRtoRpo"))
    ServiceAchievabilityUpdatedMetadata.struct_class = Types::ServiceAchievabilityUpdatedMetadata

    ServiceCreatedMetadata.struct_class = Types::ServiceCreatedMetadata

    ServiceDeletedMetadata.struct_class = Types::ServiceDeletedMetadata

    ServiceEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "eventId"))
    ServiceEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    ServiceEvent.add_member(:event_type, Shapes::ShapeRef.new(shape: ServiceEventType, required: true, location_name: "eventType"))
    ServiceEvent.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    ServiceEvent.add_member(:actor, Shapes::ShapeRef.new(shape: EventActor, required: true, location_name: "actor"))
    ServiceEvent.add_member(:event_details, Shapes::ShapeRef.new(shape: ServiceEventDetails, required: true, location_name: "eventDetails"))
    ServiceEvent.struct_class = Types::ServiceEvent

    ServiceEventDetails.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "title"))
    ServiceEventDetails.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    ServiceEventDetails.add_member(:event_metadata, Shapes::ShapeRef.new(shape: ServiceEventMetadata, location_name: "eventMetadata"))
    ServiceEventDetails.struct_class = Types::ServiceEventDetails

    ServiceEventList.member = Shapes::ShapeRef.new(shape: ServiceEvent)

    ServiceEventMetadata.add_member(:service_created, Shapes::ShapeRef.new(shape: ServiceCreatedMetadata, location_name: "serviceCreated"))
    ServiceEventMetadata.add_member(:service_deleted, Shapes::ShapeRef.new(shape: ServiceDeletedMetadata, location_name: "serviceDeleted"))
    ServiceEventMetadata.add_member(:service_system_associated, Shapes::ShapeRef.new(shape: ServiceSystemAssociatedMetadata, location_name: "serviceSystemAssociated"))
    ServiceEventMetadata.add_member(:service_system_disassociated, Shapes::ShapeRef.new(shape: ServiceSystemDisassociatedMetadata, location_name: "serviceSystemDisassociated"))
    ServiceEventMetadata.add_member(:service_resources_associated, Shapes::ShapeRef.new(shape: ServiceResourcesAssociatedMetadata, location_name: "serviceResourcesAssociated"))
    ServiceEventMetadata.add_member(:service_resources_disassociated, Shapes::ShapeRef.new(shape: ServiceResourcesDisassociatedMetadata, location_name: "serviceResourcesDisassociated"))
    ServiceEventMetadata.add_member(:service_workflow_updated, Shapes::ShapeRef.new(shape: ServiceWorkflowUpdatedMetadata, location_name: "serviceWorkflowUpdated"))
    ServiceEventMetadata.add_member(:service_input_sources_updated, Shapes::ShapeRef.new(shape: ServiceInputSourcesUpdatedMetadata, location_name: "serviceInputSourcesUpdated"))
    ServiceEventMetadata.add_member(:service_policy_associated, Shapes::ShapeRef.new(shape: ServicePolicyAssociatedMetadata, location_name: "servicePolicyAssociated"))
    ServiceEventMetadata.add_member(:service_policy_disassociated, Shapes::ShapeRef.new(shape: ServicePolicyDisassociatedMetadata, location_name: "servicePolicyDisassociated"))
    ServiceEventMetadata.add_member(:service_function_created, Shapes::ShapeRef.new(shape: ServiceFunctionCreatedMetadata, location_name: "serviceFunctionCreated"))
    ServiceEventMetadata.add_member(:service_function_updated, Shapes::ShapeRef.new(shape: ServiceFunctionUpdatedMetadata, location_name: "serviceFunctionUpdated"))
    ServiceEventMetadata.add_member(:service_function_deleted, Shapes::ShapeRef.new(shape: ServiceFunctionDeletedMetadata, location_name: "serviceFunctionDeleted"))
    ServiceEventMetadata.add_member(:service_function_resources_added, Shapes::ShapeRef.new(shape: ServiceFunctionResourcesAddedMetadata, location_name: "serviceFunctionResourcesAdded"))
    ServiceEventMetadata.add_member(:service_function_resources_removed, Shapes::ShapeRef.new(shape: ServiceFunctionResourcesRemovedMetadata, location_name: "serviceFunctionResourcesRemoved"))
    ServiceEventMetadata.add_member(:service_achievability_updated, Shapes::ShapeRef.new(shape: ServiceAchievabilityUpdatedMetadata, location_name: "serviceAchievabilityUpdated"))
    ServiceEventMetadata.add_member(:assertion_created, Shapes::ShapeRef.new(shape: AssertionCreatedMetadata, location_name: "assertionCreated"))
    ServiceEventMetadata.add_member(:assertion_updated, Shapes::ShapeRef.new(shape: AssertionUpdatedMetadata, location_name: "assertionUpdated"))
    ServiceEventMetadata.add_member(:assertion_deleted, Shapes::ShapeRef.new(shape: AssertionDeletedMetadata, location_name: "assertionDeleted"))
    ServiceEventMetadata.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ServiceEventMetadata.add_member_subclass(:service_created, Types::ServiceEventMetadata::ServiceCreated)
    ServiceEventMetadata.add_member_subclass(:service_deleted, Types::ServiceEventMetadata::ServiceDeleted)
    ServiceEventMetadata.add_member_subclass(:service_system_associated, Types::ServiceEventMetadata::ServiceSystemAssociated)
    ServiceEventMetadata.add_member_subclass(:service_system_disassociated, Types::ServiceEventMetadata::ServiceSystemDisassociated)
    ServiceEventMetadata.add_member_subclass(:service_resources_associated, Types::ServiceEventMetadata::ServiceResourcesAssociated)
    ServiceEventMetadata.add_member_subclass(:service_resources_disassociated, Types::ServiceEventMetadata::ServiceResourcesDisassociated)
    ServiceEventMetadata.add_member_subclass(:service_workflow_updated, Types::ServiceEventMetadata::ServiceWorkflowUpdated)
    ServiceEventMetadata.add_member_subclass(:service_input_sources_updated, Types::ServiceEventMetadata::ServiceInputSourcesUpdated)
    ServiceEventMetadata.add_member_subclass(:service_policy_associated, Types::ServiceEventMetadata::ServicePolicyAssociated)
    ServiceEventMetadata.add_member_subclass(:service_policy_disassociated, Types::ServiceEventMetadata::ServicePolicyDisassociated)
    ServiceEventMetadata.add_member_subclass(:service_function_created, Types::ServiceEventMetadata::ServiceFunctionCreated)
    ServiceEventMetadata.add_member_subclass(:service_function_updated, Types::ServiceEventMetadata::ServiceFunctionUpdated)
    ServiceEventMetadata.add_member_subclass(:service_function_deleted, Types::ServiceEventMetadata::ServiceFunctionDeleted)
    ServiceEventMetadata.add_member_subclass(:service_function_resources_added, Types::ServiceEventMetadata::ServiceFunctionResourcesAdded)
    ServiceEventMetadata.add_member_subclass(:service_function_resources_removed, Types::ServiceEventMetadata::ServiceFunctionResourcesRemoved)
    ServiceEventMetadata.add_member_subclass(:service_achievability_updated, Types::ServiceEventMetadata::ServiceAchievabilityUpdated)
    ServiceEventMetadata.add_member_subclass(:assertion_created, Types::ServiceEventMetadata::AssertionCreated)
    ServiceEventMetadata.add_member_subclass(:assertion_updated, Types::ServiceEventMetadata::AssertionUpdated)
    ServiceEventMetadata.add_member_subclass(:assertion_deleted, Types::ServiceEventMetadata::AssertionDeleted)
    ServiceEventMetadata.add_member_subclass(:unknown, Types::ServiceEventMetadata::Unknown)
    ServiceEventMetadata.struct_class = Types::ServiceEventMetadata

    ServiceEventTypeList.member = Shapes::ShapeRef.new(shape: ServiceEventType)

    ServiceFunction.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    ServiceFunction.add_member(:service_function_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "serviceFunctionId"))
    ServiceFunction.add_member(:name, Shapes::ShapeRef.new(shape: EntityLabel, required: true, location_name: "name"))
    ServiceFunction.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    ServiceFunction.add_member(:criticality, Shapes::ShapeRef.new(shape: ServiceFunctionCriticality, required: true, location_name: "criticality"))
    ServiceFunction.add_member(:resource_count, Shapes::ShapeRef.new(shape: Integer, location_name: "resourceCount"))
    ServiceFunction.add_member(:source, Shapes::ShapeRef.new(shape: ServiceFunctionSource, location_name: "source"))
    ServiceFunction.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ServiceFunction.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    ServiceFunction.struct_class = Types::ServiceFunction

    ServiceFunctionCreatedMetadata.add_member(:service_function_id, Shapes::ShapeRef.new(shape: String, location_name: "serviceFunctionId"))
    ServiceFunctionCreatedMetadata.add_member(:service_function_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceFunctionName"))
    ServiceFunctionCreatedMetadata.struct_class = Types::ServiceFunctionCreatedMetadata

    ServiceFunctionDeletedMetadata.add_member(:service_function_id, Shapes::ShapeRef.new(shape: String, location_name: "serviceFunctionId"))
    ServiceFunctionDeletedMetadata.add_member(:service_function_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceFunctionName"))
    ServiceFunctionDeletedMetadata.struct_class = Types::ServiceFunctionDeletedMetadata

    ServiceFunctionList.member = Shapes::ShapeRef.new(shape: ServiceFunction)

    ServiceFunctionResourcesAddedMetadata.add_member(:service_function_id, Shapes::ShapeRef.new(shape: String, location_name: "serviceFunctionId"))
    ServiceFunctionResourcesAddedMetadata.add_member(:service_function_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceFunctionName"))
    ServiceFunctionResourcesAddedMetadata.add_member(:resources_added, Shapes::ShapeRef.new(shape: ArnList, location_name: "resourcesAdded"))
    ServiceFunctionResourcesAddedMetadata.struct_class = Types::ServiceFunctionResourcesAddedMetadata

    ServiceFunctionResourcesRemovedMetadata.add_member(:service_function_id, Shapes::ShapeRef.new(shape: String, location_name: "serviceFunctionId"))
    ServiceFunctionResourcesRemovedMetadata.add_member(:service_function_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceFunctionName"))
    ServiceFunctionResourcesRemovedMetadata.add_member(:resources_removed, Shapes::ShapeRef.new(shape: ArnList, location_name: "resourcesRemoved"))
    ServiceFunctionResourcesRemovedMetadata.struct_class = Types::ServiceFunctionResourcesRemovedMetadata

    ServiceFunctionUpdatedMetadata.add_member(:service_function_id, Shapes::ShapeRef.new(shape: String, location_name: "serviceFunctionId"))
    ServiceFunctionUpdatedMetadata.add_member(:service_function_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceFunctionName"))
    ServiceFunctionUpdatedMetadata.add_member(:resources_added, Shapes::ShapeRef.new(shape: ArnList, location_name: "resourcesAdded"))
    ServiceFunctionUpdatedMetadata.add_member(:resources_removed, Shapes::ShapeRef.new(shape: ArnList, location_name: "resourcesRemoved"))
    ServiceFunctionUpdatedMetadata.struct_class = Types::ServiceFunctionUpdatedMetadata

    ServiceInputSourcesUpdatedMetadata.struct_class = Types::ServiceInputSourcesUpdatedMetadata

    ServicePolicyAssociatedMetadata.add_member(:policy_name, Shapes::ShapeRef.new(shape: String, location_name: "policyName"))
    ServicePolicyAssociatedMetadata.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    ServicePolicyAssociatedMetadata.struct_class = Types::ServicePolicyAssociatedMetadata

    ServicePolicyDisassociatedMetadata.add_member(:policy_name, Shapes::ShapeRef.new(shape: String, location_name: "policyName"))
    ServicePolicyDisassociatedMetadata.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    ServicePolicyDisassociatedMetadata.struct_class = Types::ServicePolicyDisassociatedMetadata

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceReference.add_member(:service_id, Shapes::ShapeRef.new(shape: String, location_name: "serviceId"))
    ServiceReference.add_member(:service_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceName"))
    ServiceReference.struct_class = Types::ServiceReference

    ServiceReferenceChanges.add_member(:added, Shapes::ShapeRef.new(shape: ServiceReferenceList, location_name: "added"))
    ServiceReferenceChanges.add_member(:removed, Shapes::ShapeRef.new(shape: ServiceReferenceList, location_name: "removed"))
    ServiceReferenceChanges.struct_class = Types::ServiceReferenceChanges

    ServiceReferenceList.member = Shapes::ShapeRef.new(shape: ServiceReference)

    ServiceReportConfiguration.add_member(:report_outputs, Shapes::ShapeRef.new(shape: ReportOutputConfigurationList, required: true, location_name: "reportOutputs"))
    ServiceReportConfiguration.struct_class = Types::ServiceReportConfiguration

    ServiceResource.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceIdentifier"))
    ServiceResource.add_member(:input_source, Shapes::ShapeRef.new(shape: InputSource, location_name: "inputSource"))
    ServiceResource.add_member(:resource, Shapes::ShapeRef.new(shape: Resource, required: true, location_name: "resource"))
    ServiceResource.struct_class = Types::ServiceResource

    ServiceResourceList.member = Shapes::ShapeRef.new(shape: ServiceResource)

    ServiceResourcesAssociatedMetadata.add_member(:resource_count, Shapes::ShapeRef.new(shape: Integer, location_name: "resourceCount"))
    ServiceResourcesAssociatedMetadata.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: "resourceTypes"))
    ServiceResourcesAssociatedMetadata.struct_class = Types::ServiceResourcesAssociatedMetadata

    ServiceResourcesDisassociatedMetadata.add_member(:resource_count, Shapes::ShapeRef.new(shape: Integer, location_name: "resourceCount"))
    ServiceResourcesDisassociatedMetadata.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: "resourceTypes"))
    ServiceResourcesDisassociatedMetadata.struct_class = Types::ServiceResourcesDisassociatedMetadata

    ServiceSummary.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    ServiceSummary.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    ServiceSummary.add_member(:associated_systems, Shapes::ShapeRef.new(shape: AssociatedSystemList, location_name: "associatedSystems"))
    ServiceSummary.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "regions"))
    ServiceSummary.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    ServiceSummary.add_member(:assessment_status, Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: "assessmentStatus"))
    ServiceSummary.add_member(:open_findings_count, Shapes::ShapeRef.new(shape: Integer, location_name: "openFindingsCount"))
    ServiceSummary.add_member(:resolved_findings_count, Shapes::ShapeRef.new(shape: Integer, location_name: "resolvedFindingsCount"))
    ServiceSummary.add_member(:dependency_discovery, Shapes::ShapeRef.new(shape: DependencyDiscoveryConfig, location_name: "dependencyDiscovery"))
    ServiceSummary.add_member(:achievability, Shapes::ShapeRef.new(shape: Achievability, location_name: "achievability"))
    ServiceSummary.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, location_name: "organizationId"))
    ServiceSummary.add_member(:ou_id, Shapes::ShapeRef.new(shape: OuId, location_name: "ouId"))
    ServiceSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    ServiceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    ServiceSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    ServiceSummary.struct_class = Types::ServiceSummary

    ServiceSummaryList.member = Shapes::ShapeRef.new(shape: ServiceSummary)

    ServiceSystemAssociatedMetadata.add_member(:system_name, Shapes::ShapeRef.new(shape: String, location_name: "systemName"))
    ServiceSystemAssociatedMetadata.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "systemArn"))
    ServiceSystemAssociatedMetadata.struct_class = Types::ServiceSystemAssociatedMetadata

    ServiceSystemDisassociatedMetadata.add_member(:system_id, Shapes::ShapeRef.new(shape: String, location_name: "systemId"))
    ServiceSystemDisassociatedMetadata.add_member(:system_name, Shapes::ShapeRef.new(shape: String, location_name: "systemName"))
    ServiceSystemDisassociatedMetadata.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "systemArn"))
    ServiceSystemDisassociatedMetadata.struct_class = Types::ServiceSystemDisassociatedMetadata

    ServiceTopologyEdgeSummary.add_member(:source_resource_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceResourceIdentifier"))
    ServiceTopologyEdgeSummary.add_member(:destination_resource_identifier, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationResourceIdentifier"))
    ServiceTopologyEdgeSummary.add_member(:source_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "sourceRegion"))
    ServiceTopologyEdgeSummary.add_member(:destination_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "destinationRegion"))
    ServiceTopologyEdgeSummary.add_member(:source_account, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "sourceAccount"))
    ServiceTopologyEdgeSummary.add_member(:destination_account, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "destinationAccount"))
    ServiceTopologyEdgeSummary.add_member(:properties, Shapes::ShapeRef.new(shape: EdgePropertyList, location_name: "properties"))
    ServiceTopologyEdgeSummary.struct_class = Types::ServiceTopologyEdgeSummary

    ServiceTopologyEdgeSummaryList.member = Shapes::ShapeRef.new(shape: ServiceTopologyEdgeSummary)

    ServiceWorkflowUpdatedMetadata.add_member(:service_function_id, Shapes::ShapeRef.new(shape: String, location_name: "serviceFunctionId"))
    ServiceWorkflowUpdatedMetadata.add_member(:service_function_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceFunctionName"))
    ServiceWorkflowUpdatedMetadata.struct_class = Types::ServiceWorkflowUpdatedMetadata

    SloSource.add_member(:value, Shapes::ShapeRef.new(shape: Double, location_name: "value"))
    SloSource.add_member(:policy_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "policyName"))
    SloSource.add_member(:source, Shapes::ShapeRef.new(shape: PolicyValueSource, location_name: "source"))
    SloSource.struct_class = Types::SloSource

    StartFailureModeAssessmentRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    StartFailureModeAssessmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartFailureModeAssessmentRequest.struct_class = Types::StartFailureModeAssessmentRequest

    StartFailureModeAssessmentResponse.add_member(:assessment_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "assessmentId"))
    StartFailureModeAssessmentResponse.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "serviceArn"))
    StartFailureModeAssessmentResponse.add_member(:assessment_status, Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: "assessmentStatus"))
    StartFailureModeAssessmentResponse.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    StartFailureModeAssessmentResponse.struct_class = Types::StartFailureModeAssessmentResponse

    StartTestRunRequest.add_member(:test_id, Shapes::ShapeRef.new(shape: TestId, required: true, location_name: "testId"))
    StartTestRunRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    StartTestRunRequest.struct_class = Types::StartTestRunRequest

    StartTestRunResponse.add_member(:test_run_id, Shapes::ShapeRef.new(shape: TestRunId, required: true, location_name: "testRunId"))
    StartTestRunResponse.add_member(:status, Shapes::ShapeRef.new(shape: TestRunStatus, required: true, location_name: "status"))
    StartTestRunResponse.add_member(:experiment_arns, Shapes::ShapeRef.new(shape: ExperimentArnList, required: true, location_name: "experimentArns"))
    StartTestRunResponse.struct_class = Types::StartTestRunResponse

    StopCondition.add_member(:source, Shapes::ShapeRef.new(shape: StopConditionSource, required: true, location_name: "source"))
    StopCondition.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "value"))
    StopCondition.struct_class = Types::StopCondition

    StopConditionList.member = Shapes::ShapeRef.new(shape: StopCondition)

    StopTestRunRequest.add_member(:test_run_id, Shapes::ShapeRef.new(shape: TestRunId, required: true, location_name: "testRunId"))
    StopTestRunRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    StopTestRunRequest.struct_class = Types::StopTestRunRequest

    StopTestRunResponse.add_member(:test_run_id, Shapes::ShapeRef.new(shape: TestRunId, required: true, location_name: "testRunId"))
    StopTestRunResponse.add_member(:status, Shapes::ShapeRef.new(shape: TestRunStatus, required: true, location_name: "status"))
    StopTestRunResponse.struct_class = Types::StopTestRunResponse

    StringChange.add_member(:old_value, Shapes::ShapeRef.new(shape: String, location_name: "oldValue"))
    StringChange.add_member(:new_value, Shapes::ShapeRef.new(shape: String, location_name: "newValue"))
    StringChange.struct_class = Types::StringChange

    StringList.member = Shapes::ShapeRef.new(shape: ParameterValue)

    SuccessCriteriaAlarmInput.add_member(:alarm_arn, Shapes::ShapeRef.new(shape: CloudWatchAlarmArn, required: true, location_name: "alarmArn"))
    SuccessCriteriaAlarmInput.struct_class = Types::SuccessCriteriaAlarmInput

    SuccessCriteriaAlarmSummary.add_member(:alarm_arn, Shapes::ShapeRef.new(shape: CloudWatchAlarmArn, required: true, location_name: "alarmArn"))
    SuccessCriteriaAlarmSummary.add_member(:alarm_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "alarmName"))
    SuccessCriteriaAlarmSummary.add_member(:region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "region"))
    SuccessCriteriaAlarmSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "accountId"))
    SuccessCriteriaAlarmSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    SuccessCriteriaAlarmSummary.struct_class = Types::SuccessCriteriaAlarmSummary

    SuggestedChangesList.member = Shapes::ShapeRef.new(shape: EntityDescription)

    System.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "systemArn"))
    System.add_member(:system_id, Shapes::ShapeRef.new(shape: SystemId, required: true, location_name: "systemId"))
    System.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    System.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    System.add_member(:sharing_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "sharingEnabled"))
    System.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    System.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    System.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, location_name: "organizationId"))
    System.add_member(:ou_id, Shapes::ShapeRef.new(shape: OuId, location_name: "ouId"))
    System.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    System.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    System.struct_class = Types::System

    SystemCreatedMetadata.struct_class = Types::SystemCreatedMetadata

    SystemDeletedMetadata.struct_class = Types::SystemDeletedMetadata

    SystemEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "eventId"))
    SystemEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    SystemEvent.add_member(:event_type, Shapes::ShapeRef.new(shape: SystemEventType, required: true, location_name: "eventType"))
    SystemEvent.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "systemArn"))
    SystemEvent.add_member(:actor, Shapes::ShapeRef.new(shape: EventActor, required: true, location_name: "actor"))
    SystemEvent.add_member(:event_details, Shapes::ShapeRef.new(shape: SystemEventDetails, required: true, location_name: "eventDetails"))
    SystemEvent.struct_class = Types::SystemEvent

    SystemEventDetails.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "title"))
    SystemEventDetails.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    SystemEventDetails.add_member(:event_metadata, Shapes::ShapeRef.new(shape: SystemEventMetadata, location_name: "eventMetadata"))
    SystemEventDetails.struct_class = Types::SystemEventDetails

    SystemEventList.member = Shapes::ShapeRef.new(shape: SystemEvent)

    SystemEventMetadata.add_member(:system_created, Shapes::ShapeRef.new(shape: SystemCreatedMetadata, location_name: "systemCreated"))
    SystemEventMetadata.add_member(:system_deleted, Shapes::ShapeRef.new(shape: SystemDeletedMetadata, location_name: "systemDeleted"))
    SystemEventMetadata.add_member(:system_user_journey_created, Shapes::ShapeRef.new(shape: SystemUserJourneyCreatedMetadata, location_name: "systemUserJourneyCreated"))
    SystemEventMetadata.add_member(:system_user_journey_updated, Shapes::ShapeRef.new(shape: SystemUserJourneyUpdatedMetadata, location_name: "systemUserJourneyUpdated"))
    SystemEventMetadata.add_member(:system_user_journey_deleted, Shapes::ShapeRef.new(shape: SystemUserJourneyDeletedMetadata, location_name: "systemUserJourneyDeleted"))
    SystemEventMetadata.add_member(:system_service_associated, Shapes::ShapeRef.new(shape: SystemServiceAssociatedMetadata, location_name: "systemServiceAssociated"))
    SystemEventMetadata.add_member(:system_service_disassociated, Shapes::ShapeRef.new(shape: SystemServiceDisassociatedMetadata, location_name: "systemServiceDisassociated"))
    SystemEventMetadata.add_member(:system_policy_associated, Shapes::ShapeRef.new(shape: SystemPolicyAssociatedMetadata, location_name: "systemPolicyAssociated"))
    SystemEventMetadata.add_member(:system_policy_disassociated, Shapes::ShapeRef.new(shape: SystemPolicyDisassociatedMetadata, location_name: "systemPolicyDisassociated"))
    SystemEventMetadata.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SystemEventMetadata.add_member_subclass(:system_created, Types::SystemEventMetadata::SystemCreated)
    SystemEventMetadata.add_member_subclass(:system_deleted, Types::SystemEventMetadata::SystemDeleted)
    SystemEventMetadata.add_member_subclass(:system_user_journey_created, Types::SystemEventMetadata::SystemUserJourneyCreated)
    SystemEventMetadata.add_member_subclass(:system_user_journey_updated, Types::SystemEventMetadata::SystemUserJourneyUpdated)
    SystemEventMetadata.add_member_subclass(:system_user_journey_deleted, Types::SystemEventMetadata::SystemUserJourneyDeleted)
    SystemEventMetadata.add_member_subclass(:system_service_associated, Types::SystemEventMetadata::SystemServiceAssociated)
    SystemEventMetadata.add_member_subclass(:system_service_disassociated, Types::SystemEventMetadata::SystemServiceDisassociated)
    SystemEventMetadata.add_member_subclass(:system_policy_associated, Types::SystemEventMetadata::SystemPolicyAssociated)
    SystemEventMetadata.add_member_subclass(:system_policy_disassociated, Types::SystemEventMetadata::SystemPolicyDisassociated)
    SystemEventMetadata.add_member_subclass(:unknown, Types::SystemEventMetadata::Unknown)
    SystemEventMetadata.struct_class = Types::SystemEventMetadata

    SystemEventTypeList.member = Shapes::ShapeRef.new(shape: SystemEventType)

    SystemPolicyAssociatedMetadata.add_member(:policy_name, Shapes::ShapeRef.new(shape: String, location_name: "policyName"))
    SystemPolicyAssociatedMetadata.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    SystemPolicyAssociatedMetadata.struct_class = Types::SystemPolicyAssociatedMetadata

    SystemPolicyDisassociatedMetadata.add_member(:policy_name, Shapes::ShapeRef.new(shape: String, location_name: "policyName"))
    SystemPolicyDisassociatedMetadata.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    SystemPolicyDisassociatedMetadata.struct_class = Types::SystemPolicyDisassociatedMetadata

    SystemServiceAssociatedMetadata.add_member(:service_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceName"))
    SystemServiceAssociatedMetadata.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "serviceArn"))
    SystemServiceAssociatedMetadata.add_member(:user_journeys, Shapes::ShapeRef.new(shape: UserJourneyNameList, location_name: "userJourneys"))
    SystemServiceAssociatedMetadata.struct_class = Types::SystemServiceAssociatedMetadata

    SystemServiceDisassociatedMetadata.add_member(:service_name, Shapes::ShapeRef.new(shape: String, location_name: "serviceName"))
    SystemServiceDisassociatedMetadata.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "serviceArn"))
    SystemServiceDisassociatedMetadata.add_member(:user_journeys_affected, Shapes::ShapeRef.new(shape: UserJourneyNameList, location_name: "userJourneysAffected"))
    SystemServiceDisassociatedMetadata.add_member(:comment, Shapes::ShapeRef.new(shape: String, location_name: "comment"))
    SystemServiceDisassociatedMetadata.struct_class = Types::SystemServiceDisassociatedMetadata

    SystemSummary.add_member(:system_id, Shapes::ShapeRef.new(shape: SystemId, required: true, location_name: "systemId"))
    SystemSummary.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    SystemSummary.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "systemArn"))
    SystemSummary.add_member(:user_journeys_count, Shapes::ShapeRef.new(shape: Integer, location_name: "userJourneysCount"))
    SystemSummary.add_member(:services_count, Shapes::ShapeRef.new(shape: Integer, location_name: "servicesCount"))
    SystemSummary.add_member(:organization_id, Shapes::ShapeRef.new(shape: OrganizationId, location_name: "organizationId"))
    SystemSummary.add_member(:ou_id, Shapes::ShapeRef.new(shape: OuId, location_name: "ouId"))
    SystemSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    SystemSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    SystemSummary.struct_class = Types::SystemSummary

    SystemSummaryList.member = Shapes::ShapeRef.new(shape: SystemSummary)

    SystemUserJourneyCreatedMetadata.add_member(:user_journey_name, Shapes::ShapeRef.new(shape: String, location_name: "userJourneyName"))
    SystemUserJourneyCreatedMetadata.add_member(:associated_services, Shapes::ShapeRef.new(shape: ServiceReferenceList, location_name: "associatedServices"))
    SystemUserJourneyCreatedMetadata.struct_class = Types::SystemUserJourneyCreatedMetadata

    SystemUserJourneyDeletedMetadata.add_member(:user_journey_name, Shapes::ShapeRef.new(shape: String, location_name: "userJourneyName"))
    SystemUserJourneyDeletedMetadata.add_member(:associated_services_at_deletion, Shapes::ShapeRef.new(shape: ServiceReferenceList, location_name: "associatedServicesAtDeletion"))
    SystemUserJourneyDeletedMetadata.struct_class = Types::SystemUserJourneyDeletedMetadata

    SystemUserJourneyUpdatedMetadata.add_member(:user_journey_name, Shapes::ShapeRef.new(shape: String, location_name: "userJourneyName"))
    SystemUserJourneyUpdatedMetadata.add_member(:changes, Shapes::ShapeRef.new(shape: UserJourneyChanges, location_name: "changes"))
    SystemUserJourneyUpdatedMetadata.struct_class = Types::SystemUserJourneyUpdatedMetadata

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TargetSource.add_member(:value, Shapes::ShapeRef.new(shape: Integer, location_name: "value"))
    TargetSource.add_member(:policy_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "policyName"))
    TargetSource.add_member(:source, Shapes::ShapeRef.new(shape: PolicyValueSource, location_name: "source"))
    TargetSource.struct_class = Types::TargetSource

    Test.add_member(:test_id, Shapes::ShapeRef.new(shape: TestId, required: true, location_name: "testId"))
    Test.add_member(:test_template_arn, Shapes::ShapeRef.new(shape: ServiceOwnedArn, required: true, location_name: "testTemplateArn"))
    Test.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    Test.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Test.add_member(:actions, Shapes::ShapeRef.new(shape: TestActionList, location_name: "actions"))
    Test.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "loggingConfiguration"))
    Test.add_member(:stop_conditions, Shapes::ShapeRef.new(shape: StopConditionList, location_name: "stopConditions"))
    Test.add_member(:role_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "roleName"))
    Test.add_member(:parameters, Shapes::ShapeRef.new(shape: TestParameters, location_name: "parameters"))
    Test.add_member(:total_test_runs, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "totalTestRuns"))
    Test.add_member(:successful_test_runs, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "successfulTestRuns"))
    Test.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    Test.struct_class = Types::Test

    TestAction.add_member(:action_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "actionId"))
    TestAction.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    TestAction.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    TestAction.struct_class = Types::TestAction

    TestActionList.member = Shapes::ShapeRef.new(shape: TestAction)

    TestParameters.key = Shapes::ShapeRef.new(shape: ParameterKey)
    TestParameters.value = Shapes::ShapeRef.new(shape: StringList)

    TestRun.add_member(:test_run_id, Shapes::ShapeRef.new(shape: TestRunId, required: true, location_name: "testRunId"))
    TestRun.add_member(:test_id, Shapes::ShapeRef.new(shape: TestId, required: true, location_name: "testId"))
    TestRun.add_member(:status, Shapes::ShapeRef.new(shape: TestRunStatus, required: true, location_name: "status"))
    TestRun.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "serviceArn"))
    TestRun.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startedAt"))
    TestRun.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endedAt"))
    TestRun.add_member(:experiments, Shapes::ShapeRef.new(shape: ExperimentDetailsList, location_name: "experiments"))
    TestRun.add_member(:event_count, Shapes::ShapeRef.new(shape: Integer, location_name: "eventCount"))
    TestRun.add_member(:parameters, Shapes::ShapeRef.new(shape: TestParameters, location_name: "parameters"))
    TestRun.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    TestRun.add_member(:stop_conditions, Shapes::ShapeRef.new(shape: StopConditionList, location_name: "stopConditions"))
    TestRun.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "loggingConfiguration"))
    TestRun.add_member(:role_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "roleName"))
    TestRun.add_member(:test_template_arn, Shapes::ShapeRef.new(shape: ServiceOwnedArn, required: true, location_name: "testTemplateArn"))
    TestRun.add_member(:report_configuration, Shapes::ShapeRef.new(shape: TestRunReportConfiguration, location_name: "reportConfiguration"))
    TestRun.add_member(:policy, Shapes::ShapeRef.new(shape: TestRunPolicySnapshot, location_name: "policy"))
    TestRun.add_member(:report_output, Shapes::ShapeRef.new(shape: ReportGenerationResult, location_name: "reportOutput"))
    TestRun.add_member(:region_switch_plan_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "regionSwitchPlanArn"))
    TestRun.add_member(:region_switch_execution_id, Shapes::ShapeRef.new(shape: RegionSwitchExecutionId, location_name: "regionSwitchExecutionId"))
    TestRun.add_member(:permission_model, Shapes::ShapeRef.new(shape: PermissionModel, location_name: "permissionModel"))
    TestRun.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "regions"))
    TestRun.add_member(:account_targeting, Shapes::ShapeRef.new(shape: AccountTargeting, location_name: "accountTargeting"))
    TestRun.struct_class = Types::TestRun

    TestRunEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: TestRunEventEventIdString, required: true, location_name: "eventId"))
    TestRunEvent.add_member(:event_type, Shapes::ShapeRef.new(shape: TestRunEventEventTypeString, required: true, location_name: "eventType"))
    TestRunEvent.add_member(:message, Shapes::ShapeRef.new(shape: TestRunEventMessageString, required: true, location_name: "message"))
    TestRunEvent.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    TestRunEvent.add_member(:attributes, Shapes::ShapeRef.new(shape: TestRunEventAttributes, location_name: "attributes"))
    TestRunEvent.struct_class = Types::TestRunEvent

    TestRunEventAttributes.key = Shapes::ShapeRef.new(shape: TestRunEventAttributeKey)
    TestRunEventAttributes.value = Shapes::ShapeRef.new(shape: TestRunEventAttributeValue)

    TestRunEventList.member = Shapes::ShapeRef.new(shape: TestRunEvent)

    TestRunObservabilityAlarmSummary.add_member(:alarm_arn, Shapes::ShapeRef.new(shape: CloudWatchAlarmArn, required: true, location_name: "alarmArn"))
    TestRunObservabilityAlarmSummary.add_member(:alarm_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "alarmName"))
    TestRunObservabilityAlarmSummary.add_member(:region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "region"))
    TestRunObservabilityAlarmSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "accountId"))
    TestRunObservabilityAlarmSummary.struct_class = Types::TestRunObservabilityAlarmSummary

    TestRunPolicySnapshot.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    TestRunPolicySnapshot.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location_name: "name"))
    TestRunPolicySnapshot.add_member(:availability_slo, Shapes::ShapeRef.new(shape: AvailabilitySlo, location_name: "availabilitySlo"))
    TestRunPolicySnapshot.add_member(:multi_az, Shapes::ShapeRef.new(shape: MultiAzTargets, location_name: "multiAz"))
    TestRunPolicySnapshot.add_member(:multi_region, Shapes::ShapeRef.new(shape: MultiRegionTargets, location_name: "multiRegion"))
    TestRunPolicySnapshot.add_member(:data_recovery, Shapes::ShapeRef.new(shape: DataRecoveryTargets, location_name: "dataRecovery"))
    TestRunPolicySnapshot.struct_class = Types::TestRunPolicySnapshot

    TestRunReportConfiguration.add_member(:report_output, Shapes::ShapeRef.new(shape: ReportOutputConfigurationList, required: true, location_name: "reportOutput"))
    TestRunReportConfiguration.struct_class = Types::TestRunReportConfiguration

    TestRunSourceSummary.add_member(:success_criteria_alarm, Shapes::ShapeRef.new(shape: TestRunSuccessCriteriaAlarmSummary, location_name: "successCriteriaAlarm"))
    TestRunSourceSummary.add_member(:observability_alarm, Shapes::ShapeRef.new(shape: TestRunObservabilityAlarmSummary, location_name: "observabilityAlarm"))
    TestRunSourceSummary.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TestRunSourceSummary.add_member_subclass(:success_criteria_alarm, Types::TestRunSourceSummary::SuccessCriteriaAlarm)
    TestRunSourceSummary.add_member_subclass(:observability_alarm, Types::TestRunSourceSummary::ObservabilityAlarm)
    TestRunSourceSummary.add_member_subclass(:unknown, Types::TestRunSourceSummary::Unknown)
    TestRunSourceSummary.struct_class = Types::TestRunSourceSummary

    TestRunSourceSummaryList.member = Shapes::ShapeRef.new(shape: TestRunSourceSummary)

    TestRunSuccessCriteriaAlarmSummary.add_member(:alarm_arn, Shapes::ShapeRef.new(shape: CloudWatchAlarmArn, required: true, location_name: "alarmArn"))
    TestRunSuccessCriteriaAlarmSummary.add_member(:alarm_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "alarmName"))
    TestRunSuccessCriteriaAlarmSummary.add_member(:region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "region"))
    TestRunSuccessCriteriaAlarmSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "accountId"))
    TestRunSuccessCriteriaAlarmSummary.add_member(:outcome, Shapes::ShapeRef.new(shape: TestSourceOutcome, location_name: "outcome"))
    TestRunSuccessCriteriaAlarmSummary.add_member(:outcome_reason, Shapes::ShapeRef.new(shape: String, location_name: "outcomeReason"))
    TestRunSuccessCriteriaAlarmSummary.struct_class = Types::TestRunSuccessCriteriaAlarmSummary

    TestRunSummary.add_member(:test_run_id, Shapes::ShapeRef.new(shape: TestRunId, required: true, location_name: "testRunId"))
    TestRunSummary.add_member(:status, Shapes::ShapeRef.new(shape: TestRunStatus, required: true, location_name: "status"))
    TestRunSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "startedAt"))
    TestRunSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endedAt"))
    TestRunSummary.add_member(:test_template_arn, Shapes::ShapeRef.new(shape: ServiceOwnedArn, required: true, location_name: "testTemplateArn"))
    TestRunSummary.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "serviceArn"))
    TestRunSummary.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    TestRunSummary.add_member(:account_targeting, Shapes::ShapeRef.new(shape: AccountTargeting, location_name: "accountTargeting"))
    TestRunSummary.struct_class = Types::TestRunSummary

    TestRunSummaryList.member = Shapes::ShapeRef.new(shape: TestRunSummary)

    TestSourceInput.add_member(:success_criteria_alarm, Shapes::ShapeRef.new(shape: SuccessCriteriaAlarmInput, location_name: "successCriteriaAlarm"))
    TestSourceInput.add_member(:observability_alarm, Shapes::ShapeRef.new(shape: ObservabilityAlarmInput, location_name: "observabilityAlarm"))
    TestSourceInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TestSourceInput.add_member_subclass(:success_criteria_alarm, Types::TestSourceInput::SuccessCriteriaAlarm)
    TestSourceInput.add_member_subclass(:observability_alarm, Types::TestSourceInput::ObservabilityAlarm)
    TestSourceInput.add_member_subclass(:unknown, Types::TestSourceInput::Unknown)
    TestSourceInput.struct_class = Types::TestSourceInput

    TestSourceInputList.member = Shapes::ShapeRef.new(shape: TestSourceInput)

    TestSourceSummary.add_member(:success_criteria_alarm, Shapes::ShapeRef.new(shape: SuccessCriteriaAlarmSummary, location_name: "successCriteriaAlarm"))
    TestSourceSummary.add_member(:observability_alarm, Shapes::ShapeRef.new(shape: ObservabilityAlarmSummary, location_name: "observabilityAlarm"))
    TestSourceSummary.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TestSourceSummary.add_member_subclass(:success_criteria_alarm, Types::TestSourceSummary::SuccessCriteriaAlarm)
    TestSourceSummary.add_member_subclass(:observability_alarm, Types::TestSourceSummary::ObservabilityAlarm)
    TestSourceSummary.add_member_subclass(:unknown, Types::TestSourceSummary::Unknown)
    TestSourceSummary.struct_class = Types::TestSourceSummary

    TestSourceSummaryList.member = Shapes::ShapeRef.new(shape: TestSourceSummary)

    TestSummary.add_member(:test_id, Shapes::ShapeRef.new(shape: TestId, required: true, location_name: "testId"))
    TestSummary.add_member(:test_template_arn, Shapes::ShapeRef.new(shape: ServiceOwnedArn, required: true, location_name: "testTemplateArn"))
    TestSummary.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    TestSummary.add_member(:total_test_runs, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "totalTestRuns"))
    TestSummary.add_member(:successful_test_runs, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "successfulTestRuns"))
    TestSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    TestSummary.struct_class = Types::TestSummary

    TestSummaryList.member = Shapes::ShapeRef.new(shape: TestSummary)

    TestTemplate.add_member(:test_template_arn, Shapes::ShapeRef.new(shape: ServiceOwnedArn, required: true, location_name: "testTemplateArn"))
    TestTemplate.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    TestTemplate.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    TestTemplate.add_member(:parameters, Shapes::ShapeRef.new(shape: TestTemplateParameterList, location_name: "parameters"))
    TestTemplate.add_member(:actions, Shapes::ShapeRef.new(shape: TestActionList, location_name: "actions"))
    TestTemplate.struct_class = Types::TestTemplate

    TestTemplateParameter.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    TestTemplateParameter.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    TestTemplateParameter.add_member(:type, Shapes::ShapeRef.new(shape: ParameterType, required: true, location_name: "type"))
    TestTemplateParameter.add_member(:required, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "required"))
    TestTemplateParameter.add_member(:default_value, Shapes::ShapeRef.new(shape: String, location_name: "defaultValue"))
    TestTemplateParameter.add_member(:max_values, Shapes::ShapeRef.new(shape: Integer, location_name: "maxValues"))
    TestTemplateParameter.struct_class = Types::TestTemplateParameter

    TestTemplateParameterList.member = Shapes::ShapeRef.new(shape: TestTemplateParameter)

    TestTemplateSummary.add_member(:test_template_arn, Shapes::ShapeRef.new(shape: ServiceOwnedArn, required: true, location_name: "testTemplateArn"))
    TestTemplateSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    TestTemplateSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    TestTemplateSummary.struct_class = Types::TestTemplateSummary

    TestTemplateSummaryList.member = Shapes::ShapeRef.new(shape: TestTemplateSummary)

    TestingRecommendation.add_member(:suggested_changes, Shapes::ShapeRef.new(shape: SuggestedChangesList, location_name: "suggestedChanges"))
    TestingRecommendation.struct_class = Types::TestingRecommendation

    TestingRecommendationsList.member = Shapes::ShapeRef.new(shape: TestingRecommendation)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAssertionRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    UpdateAssertionRequest.add_member(:assertion_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "assertionId"))
    UpdateAssertionRequest.add_member(:text, Shapes::ShapeRef.new(shape: AssertionText, location_name: "text"))
    UpdateAssertionRequest.struct_class = Types::UpdateAssertionRequest

    UpdateAssertionResponse.add_member(:assertion, Shapes::ShapeRef.new(shape: Assertion, required: true, location_name: "assertion"))
    UpdateAssertionResponse.struct_class = Types::UpdateAssertionResponse

    UpdateDependencyRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    UpdateDependencyRequest.add_member(:dependency_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "dependencyId"))
    UpdateDependencyRequest.add_member(:criticality, Shapes::ShapeRef.new(shape: DependencyCriticality, location_name: "criticality"))
    UpdateDependencyRequest.add_member(:comment, Shapes::ShapeRef.new(shape: String, location_name: "comment"))
    UpdateDependencyRequest.struct_class = Types::UpdateDependencyRequest

    UpdateDependencyResponse.add_member(:dependency_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "dependencyId"))
    UpdateDependencyResponse.add_member(:dependency_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "dependencyName"))
    UpdateDependencyResponse.add_member(:location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "location"))
    UpdateDependencyResponse.add_member(:criticality, Shapes::ShapeRef.new(shape: DependencyCriticality, required: true, location_name: "criticality"))
    UpdateDependencyResponse.add_member(:comment, Shapes::ShapeRef.new(shape: String, location_name: "comment"))
    UpdateDependencyResponse.add_member(:provider, Shapes::ShapeRef.new(shape: String, location_name: "provider"))
    UpdateDependencyResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    UpdateDependencyResponse.struct_class = Types::UpdateDependencyResponse

    UpdateFailureModeFindingRequest.add_member(:finding_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "findingId"))
    UpdateFailureModeFindingRequest.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, required: true, location_name: "status"))
    UpdateFailureModeFindingRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    UpdateFailureModeFindingRequest.add_member(:comment, Shapes::ShapeRef.new(shape: UpdateFailureModeFindingRequestCommentString, location_name: "comment"))
    UpdateFailureModeFindingRequest.struct_class = Types::UpdateFailureModeFindingRequest

    UpdateFailureModeFindingResponse.add_member(:finding, Shapes::ShapeRef.new(shape: Finding, location_name: "finding"))
    UpdateFailureModeFindingResponse.struct_class = Types::UpdateFailureModeFindingResponse

    UpdatePolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "policyArn"))
    UpdatePolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: LongDescription, location_name: "description"))
    UpdatePolicyRequest.add_member(:availability_slo, Shapes::ShapeRef.new(shape: AvailabilitySlo, location_name: "availabilitySlo"))
    UpdatePolicyRequest.add_member(:multi_az, Shapes::ShapeRef.new(shape: MultiAzTargets, location_name: "multiAz"))
    UpdatePolicyRequest.add_member(:multi_region, Shapes::ShapeRef.new(shape: MultiRegionTargets, location_name: "multiRegion"))
    UpdatePolicyRequest.add_member(:data_recovery, Shapes::ShapeRef.new(shape: DataRecoveryTargets, location_name: "dataRecovery"))
    UpdatePolicyRequest.struct_class = Types::UpdatePolicyRequest

    UpdatePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "policy"))
    UpdatePolicyResponse.struct_class = Types::UpdatePolicyResponse

    UpdateServiceFunctionRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    UpdateServiceFunctionRequest.add_member(:service_function_id, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "serviceFunctionId"))
    UpdateServiceFunctionRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityLabel, location_name: "name"))
    UpdateServiceFunctionRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    UpdateServiceFunctionRequest.add_member(:criticality, Shapes::ShapeRef.new(shape: ServiceFunctionCriticality, location_name: "criticality"))
    UpdateServiceFunctionRequest.struct_class = Types::UpdateServiceFunctionRequest

    UpdateServiceFunctionResponse.add_member(:service_function, Shapes::ShapeRef.new(shape: ServiceFunction, required: true, location_name: "serviceFunction"))
    UpdateServiceFunctionResponse.struct_class = Types::UpdateServiceFunctionResponse

    UpdateServiceRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    UpdateServiceRequest.add_member(:description, Shapes::ShapeRef.new(shape: LongDescription, location_name: "description"))
    UpdateServiceRequest.add_member(:associated_systems, Shapes::ShapeRef.new(shape: AssociatedSystemList, location_name: "associatedSystems"))
    UpdateServiceRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    UpdateServiceRequest.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "regions"))
    UpdateServiceRequest.add_member(:permission_model, Shapes::ShapeRef.new(shape: PermissionModel, location_name: "permissionModel"))
    UpdateServiceRequest.add_member(:dependency_discovery, Shapes::ShapeRef.new(shape: DependencyDiscoveryInput, location_name: "dependencyDiscovery"))
    UpdateServiceRequest.add_member(:report_configuration, Shapes::ShapeRef.new(shape: ServiceReportConfiguration, location_name: "reportConfiguration"))
    UpdateServiceRequest.struct_class = Types::UpdateServiceRequest

    UpdateServiceResponse.add_member(:service, Shapes::ShapeRef.new(shape: Service, required: true, location_name: "service"))
    UpdateServiceResponse.struct_class = Types::UpdateServiceResponse

    UpdateSystemRequest.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "systemArn"))
    UpdateSystemRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    UpdateSystemRequest.add_member(:sharing_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "sharingEnabled"))
    UpdateSystemRequest.struct_class = Types::UpdateSystemRequest

    UpdateSystemResponse.add_member(:system, Shapes::ShapeRef.new(shape: System, required: true, location_name: "system"))
    UpdateSystemResponse.struct_class = Types::UpdateSystemResponse

    UpdateTestRequest.add_member(:test_id, Shapes::ShapeRef.new(shape: TestId, required: true, location_name: "testId"))
    UpdateTestRequest.add_member(:service_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "serviceArn"))
    UpdateTestRequest.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfiguration, location_name: "loggingConfiguration"))
    UpdateTestRequest.add_member(:stop_conditions, Shapes::ShapeRef.new(shape: StopConditionList, location_name: "stopConditions"))
    UpdateTestRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "roleName"))
    UpdateTestRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: TestParameters, location_name: "parameters"))
    UpdateTestRequest.struct_class = Types::UpdateTestRequest

    UpdateTestResponse.add_member(:test, Shapes::ShapeRef.new(shape: Test, required: true, location_name: "test"))
    UpdateTestResponse.struct_class = Types::UpdateTestResponse

    UpdateUserJourneyRequest.add_member(:system_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "systemArn"))
    UpdateUserJourneyRequest.add_member(:user_journey_id, Shapes::ShapeRef.new(shape: UserJourneyId, required: true, location_name: "userJourneyId"))
    UpdateUserJourneyRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityLabel, location_name: "name"))
    UpdateUserJourneyRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    UpdateUserJourneyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    UpdateUserJourneyRequest.struct_class = Types::UpdateUserJourneyRequest

    UpdateUserJourneyResponse.add_member(:user_journey, Shapes::ShapeRef.new(shape: UserJourney, required: true, location_name: "userJourney"))
    UpdateUserJourneyResponse.struct_class = Types::UpdateUserJourneyResponse

    UserJourney.add_member(:user_journey_id, Shapes::ShapeRef.new(shape: UserJourneyId, required: true, location_name: "userJourneyId"))
    UserJourney.add_member(:name, Shapes::ShapeRef.new(shape: EntityLabel, required: true, location_name: "name"))
    UserJourney.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    UserJourney.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    UserJourney.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    UserJourney.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    UserJourney.struct_class = Types::UserJourney

    UserJourneyChanges.add_member(:journey_description, Shapes::ShapeRef.new(shape: StringChange, location_name: "journeyDescription"))
    UserJourneyChanges.add_member(:associated_services, Shapes::ShapeRef.new(shape: ServiceReferenceChanges, location_name: "associatedServices"))
    UserJourneyChanges.struct_class = Types::UserJourneyChanges

    UserJourneyIdList.member = Shapes::ShapeRef.new(shape: UserJourneyId)

    UserJourneyNameList.member = Shapes::ShapeRef.new(shape: String)

    UserJourneySummary.add_member(:user_journey_id, Shapes::ShapeRef.new(shape: UserJourneyId, required: true, location_name: "userJourneyId"))
    UserJourneySummary.add_member(:name, Shapes::ShapeRef.new(shape: EntityLabel, required: true, location_name: "name"))
    UserJourneySummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    UserJourneySummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "updatedAt"))
    UserJourneySummary.struct_class = Types::UserJourneySummary

    UserJourneySummaryList.member = Shapes::ShapeRef.new(shape: UserJourneySummary)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2026-02-17"

      api.metadata = {
        "apiVersion" => "2026-02-17",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "resiliencehub",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Resilience Hub V2",
        "serviceId" => "resiliencehubv2",
        "signatureVersion" => "v4",
        "signingName" => "resiliencehub",
        "uid" => "resiliencehubv2-2026-02-17",
      }

      api.add_operation(:create_assertion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAssertion"
        o.http_method = "POST"
        o.http_request_uri = "/v2/create-assertion"
        o.input = Shapes::ShapeRef.new(shape: CreateAssertionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAssertionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_input_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInputSource"
        o.http_method = "POST"
        o.http_request_uri = "/v2/create-input-source"
        o.input = Shapes::ShapeRef.new(shape: CreateInputSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInputSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/v2/create-policy"
        o.input = Shapes::ShapeRef.new(shape: CreatePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReport"
        o.http_method = "POST"
        o.http_request_uri = "/v2/create-report"
        o.input = Shapes::ShapeRef.new(shape: CreateReportRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateService"
        o.http_method = "POST"
        o.http_request_uri = "/v2/create-service"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_service_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServiceFunction"
        o.http_method = "POST"
        o.http_request_uri = "/v2/create-service-function"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_service_function_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServiceFunctionResources"
        o.http_method = "POST"
        o.http_request_uri = "/v2/create-service-function-resources"
        o.input = Shapes::ShapeRef.new(shape: CreateServiceFunctionResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServiceFunctionResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSystem"
        o.http_method = "POST"
        o.http_request_uri = "/v2/create-system"
        o.input = Shapes::ShapeRef.new(shape: CreateSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSystemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_test, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTest"
        o.http_method = "POST"
        o.http_request_uri = "/v2/create-test"
        o.input = Shapes::ShapeRef.new(shape: CreateTestRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTestResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_user_journey, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUserJourney"
        o.http_method = "POST"
        o.http_request_uri = "/v2/create-user-journey"
        o.input = Shapes::ShapeRef.new(shape: CreateUserJourneyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserJourneyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_assertion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAssertion"
        o.http_method = "POST"
        o.http_request_uri = "/v2/delete-assertion"
        o.input = Shapes::ShapeRef.new(shape: DeleteAssertionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAssertionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_input_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInputSource"
        o.http_method = "POST"
        o.http_request_uri = "/v2/delete-input-source"
        o.input = Shapes::ShapeRef.new(shape: DeleteInputSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInputSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/v2/delete-policy"
        o.input = Shapes::ShapeRef.new(shape: DeletePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteService"
        o.http_method = "POST"
        o.http_request_uri = "/v2/delete-service"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_service_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServiceFunction"
        o.http_method = "POST"
        o.http_request_uri = "/v2/delete-function"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_service_function_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServiceFunctionResources"
        o.http_method = "POST"
        o.http_request_uri = "/v2/delete-service-function-resources"
        o.input = Shapes::ShapeRef.new(shape: DeleteServiceFunctionResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServiceFunctionResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSystem"
        o.http_method = "POST"
        o.http_request_uri = "/v2/delete-system"
        o.input = Shapes::ShapeRef.new(shape: DeleteSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSystemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_test, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTest"
        o.http_method = "POST"
        o.http_request_uri = "/v2/delete-test"
        o.input = Shapes::ShapeRef.new(shape: DeleteTestRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTestResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_test_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTestSources"
        o.http_method = "POST"
        o.http_request_uri = "/v2/delete-test-sources"
        o.input = Shapes::ShapeRef.new(shape: DeleteTestSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTestSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_user_journey, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserJourney"
        o.http_method = "POST"
        o.http_request_uri = "/v2/delete-user-journey"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserJourneyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserJourneyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_failure_mode_finding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFailureModeFinding"
        o.http_method = "GET"
        o.http_request_uri = "/v2/get-failure-mode-finding"
        o.input = Shapes::ShapeRef.new(shape: GetFailureModeFindingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFailureModeFindingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/v2/get-policy"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetService"
        o.http_method = "GET"
        o.http_request_uri = "/v2/get-service"
        o.input = Shapes::ShapeRef.new(shape: GetServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSystem"
        o.http_method = "GET"
        o.http_request_uri = "/v2/get-system"
        o.input = Shapes::ShapeRef.new(shape: GetSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSystemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_test, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTest"
        o.http_method = "GET"
        o.http_request_uri = "/v2/get-test"
        o.input = Shapes::ShapeRef.new(shape: GetTestRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTestResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_test_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTestRun"
        o.http_method = "GET"
        o.http_request_uri = "/v2/get-test-run"
        o.input = Shapes::ShapeRef.new(shape: GetTestRunRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTestRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_test_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTestTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/v2/get-test-template"
        o.input = Shapes::ShapeRef.new(shape: GetTestTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTestTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_user_journey, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUserJourney"
        o.http_method = "GET"
        o.http_request_uri = "/v2/get-user-journey"
        o.input = Shapes::ShapeRef.new(shape: GetUserJourneyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserJourneyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:import_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportApp"
        o.http_method = "POST"
        o.http_request_uri = "/v2/import-app"
        o.input = Shapes::ShapeRef.new(shape: ImportAppRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportAppResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:import_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/v2/import-policy"
        o.input = Shapes::ShapeRef.new(shape: ImportPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_assertions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssertions"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-assertions"
        o.input = Shapes::ShapeRef.new(shape: ListAssertionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssertionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dependencies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDependencies"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-dependencies"
        o.input = Shapes::ShapeRef.new(shape: ListDependenciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDependenciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_failure_mode_assessments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFailureModeAssessments"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-failure-mode-assessments"
        o.input = Shapes::ShapeRef.new(shape: ListFailureModeAssessmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFailureModeAssessmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_failure_mode_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFailureModeFindings"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-failure-mode-findings"
        o.input = Shapes::ShapeRef.new(shape: ListFailureModeFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFailureModeFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_input_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInputSources"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-input-sources"
        o.input = Shapes::ShapeRef.new(shape: ListInputSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInputSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicies"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-policies"
        o.input = Shapes::ShapeRef.new(shape: ListPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_reports, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReports"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-reports"
        o.input = Shapes::ShapeRef.new(shape: ListReportsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReportsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resolved_test_run_target_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResolvedTestRunTargetResources"
        o.http_method = "GET"
        o.http_request_uri = "/v2/test-runs/{testRunId}/resolved-target-resources"
        o.input = Shapes::ShapeRef.new(shape: ListResolvedTestRunTargetResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResolvedTestRunTargetResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResources"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-resources"
        o.input = Shapes::ShapeRef.new(shape: ListResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceEvents"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-service-events"
        o.input = Shapes::ShapeRef.new(shape: ListServiceEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServiceEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_functions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceFunctions"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-functions"
        o.input = Shapes::ShapeRef.new(shape: ListServiceFunctionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServiceFunctionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_service_topology_edges, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServiceTopologyEdges"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-service-topology-edges"
        o.input = Shapes::ShapeRef.new(shape: ListServiceTopologyEdgesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServiceTopologyEdgesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_services, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServices"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-services"
        o.input = Shapes::ShapeRef.new(shape: ListServicesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServicesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_system_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSystemEvents"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-system-events"
        o.input = Shapes::ShapeRef.new(shape: ListSystemEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSystemEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_systems, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSystems"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-systems"
        o.input = Shapes::ShapeRef.new(shape: ListSystemsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSystemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/v2/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_test_run_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTestRunEvents"
        o.http_method = "GET"
        o.http_request_uri = "/v2/test-runs/{testRunId}/events"
        o.input = Shapes::ShapeRef.new(shape: ListTestRunEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestRunEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_test_run_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTestRunSources"
        o.http_method = "GET"
        o.http_request_uri = "/v2/test-runs/{testRunId}/sources"
        o.input = Shapes::ShapeRef.new(shape: ListTestRunSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestRunSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_test_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTestRuns"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-test-runs"
        o.input = Shapes::ShapeRef.new(shape: ListTestRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_test_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTestSources"
        o.http_method = "GET"
        o.http_request_uri = "/v2/tests/{testId}/sources"
        o.input = Shapes::ShapeRef.new(shape: ListTestSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_test_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTestTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-test-templates"
        o.input = Shapes::ShapeRef.new(shape: ListTestTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_tests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTests"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-tests"
        o.input = Shapes::ShapeRef.new(shape: ListTestsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_user_journeys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUserJourneys"
        o.http_method = "GET"
        o.http_request_uri = "/v2/list-user-journeys"
        o.input = Shapes::ShapeRef.new(shape: ListUserJourneysRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUserJourneysResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_test_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTestSources"
        o.http_method = "POST"
        o.http_request_uri = "/v2/put-test-sources"
        o.input = Shapes::ShapeRef.new(shape: PutTestSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutTestSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_failure_mode_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFailureModeAssessment"
        o.http_method = "POST"
        o.http_request_uri = "/v2/start-failure-mode-assessment"
        o.input = Shapes::ShapeRef.new(shape: StartFailureModeAssessmentRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFailureModeAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_test_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTestRun"
        o.http_method = "POST"
        o.http_request_uri = "/v2/start-test-run"
        o.input = Shapes::ShapeRef.new(shape: StartTestRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTestRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:stop_test_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopTestRun"
        o.http_method = "POST"
        o.http_request_uri = "/v2/stop-test-run"
        o.input = Shapes::ShapeRef.new(shape: StopTestRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StopTestRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v2/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v2/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_assertion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAssertion"
        o.http_method = "POST"
        o.http_request_uri = "/v2/update-assertion"
        o.input = Shapes::ShapeRef.new(shape: UpdateAssertionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAssertionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_dependency, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDependency"
        o.http_method = "POST"
        o.http_request_uri = "/v2/update-dependency"
        o.input = Shapes::ShapeRef.new(shape: UpdateDependencyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDependencyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_failure_mode_finding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFailureModeFinding"
        o.http_method = "POST"
        o.http_request_uri = "/v2/update-failure-mode-finding"
        o.input = Shapes::ShapeRef.new(shape: UpdateFailureModeFindingRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFailureModeFindingResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/v2/update-policy"
        o.input = Shapes::ShapeRef.new(shape: UpdatePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_service, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateService"
        o.http_method = "POST"
        o.http_request_uri = "/v2/update-service"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_service_function, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceFunction"
        o.http_method = "POST"
        o.http_request_uri = "/v2/update-function"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceFunctionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceFunctionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_system, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSystem"
        o.http_method = "POST"
        o.http_request_uri = "/v2/update-system"
        o.input = Shapes::ShapeRef.new(shape: UpdateSystemRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSystemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_test, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTest"
        o.http_method = "POST"
        o.http_request_uri = "/v2/update-test"
        o.input = Shapes::ShapeRef.new(shape: UpdateTestRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTestResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_user_journey, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserJourney"
        o.http_method = "POST"
        o.http_request_uri = "/v2/update-user-journey"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserJourneyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserJourneyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
