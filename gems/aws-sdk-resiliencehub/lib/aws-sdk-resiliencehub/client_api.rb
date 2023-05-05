# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ResilienceHub
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AddDraftAppVersionResourceMappingsRequest = Shapes::StructureShape.new(name: 'AddDraftAppVersionResourceMappingsRequest')
    AddDraftAppVersionResourceMappingsResponse = Shapes::StructureShape.new(name: 'AddDraftAppVersionResourceMappingsResponse')
    AdditionalInfoMap = Shapes::MapShape.new(name: 'AdditionalInfoMap')
    AdditionalInfoValueList = Shapes::ListShape.new(name: 'AdditionalInfoValueList')
    AlarmRecommendation = Shapes::StructureShape.new(name: 'AlarmRecommendation')
    AlarmRecommendationList = Shapes::ListShape.new(name: 'AlarmRecommendationList')
    AlarmReferenceIdList = Shapes::ListShape.new(name: 'AlarmReferenceIdList')
    AlarmType = Shapes::StringShape.new(name: 'AlarmType')
    App = Shapes::StructureShape.new(name: 'App')
    AppAssessment = Shapes::StructureShape.new(name: 'AppAssessment')
    AppAssessmentScheduleType = Shapes::StringShape.new(name: 'AppAssessmentScheduleType')
    AppAssessmentSummary = Shapes::StructureShape.new(name: 'AppAssessmentSummary')
    AppAssessmentSummaryList = Shapes::ListShape.new(name: 'AppAssessmentSummaryList')
    AppComplianceStatusType = Shapes::StringShape.new(name: 'AppComplianceStatusType')
    AppComponent = Shapes::StructureShape.new(name: 'AppComponent')
    AppComponentCompliance = Shapes::StructureShape.new(name: 'AppComponentCompliance')
    AppComponentList = Shapes::ListShape.new(name: 'AppComponentList')
    AppComponentNameList = Shapes::ListShape.new(name: 'AppComponentNameList')
    AppInputSource = Shapes::StructureShape.new(name: 'AppInputSource')
    AppInputSourceList = Shapes::ListShape.new(name: 'AppInputSourceList')
    AppStatusType = Shapes::StringShape.new(name: 'AppStatusType')
    AppSummary = Shapes::StructureShape.new(name: 'AppSummary')
    AppSummaryList = Shapes::ListShape.new(name: 'AppSummaryList')
    AppTemplateBody = Shapes::StringShape.new(name: 'AppTemplateBody')
    AppVersionList = Shapes::ListShape.new(name: 'AppVersionList')
    AppVersionSummary = Shapes::StructureShape.new(name: 'AppVersionSummary')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    AssessmentCompliance = Shapes::MapShape.new(name: 'AssessmentCompliance')
    AssessmentInvoker = Shapes::StringShape.new(name: 'AssessmentInvoker')
    AssessmentStatus = Shapes::StringShape.new(name: 'AssessmentStatus')
    AssessmentStatusList = Shapes::ListShape.new(name: 'AssessmentStatusList')
    AwsRegion = Shapes::StringShape.new(name: 'AwsRegion')
    BooleanOptional = Shapes::BooleanShape.new(name: 'BooleanOptional')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ComplianceStatus = Shapes::StringShape.new(name: 'ComplianceStatus')
    ComponentCompliancesList = Shapes::ListShape.new(name: 'ComponentCompliancesList')
    ComponentRecommendation = Shapes::StructureShape.new(name: 'ComponentRecommendation')
    ComponentRecommendationList = Shapes::ListShape.new(name: 'ComponentRecommendationList')
    ConfigRecommendation = Shapes::StructureShape.new(name: 'ConfigRecommendation')
    ConfigRecommendationList = Shapes::ListShape.new(name: 'ConfigRecommendationList')
    ConfigRecommendationOptimizationType = Shapes::StringShape.new(name: 'ConfigRecommendationOptimizationType')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Cost = Shapes::StructureShape.new(name: 'Cost')
    CostFrequency = Shapes::StringShape.new(name: 'CostFrequency')
    CreateAppRequest = Shapes::StructureShape.new(name: 'CreateAppRequest')
    CreateAppResponse = Shapes::StructureShape.new(name: 'CreateAppResponse')
    CreateAppVersionAppComponentRequest = Shapes::StructureShape.new(name: 'CreateAppVersionAppComponentRequest')
    CreateAppVersionAppComponentResponse = Shapes::StructureShape.new(name: 'CreateAppVersionAppComponentResponse')
    CreateAppVersionResourceRequest = Shapes::StructureShape.new(name: 'CreateAppVersionResourceRequest')
    CreateAppVersionResourceResponse = Shapes::StructureShape.new(name: 'CreateAppVersionResourceResponse')
    CreateRecommendationTemplateRequest = Shapes::StructureShape.new(name: 'CreateRecommendationTemplateRequest')
    CreateRecommendationTemplateResponse = Shapes::StructureShape.new(name: 'CreateRecommendationTemplateResponse')
    CreateResiliencyPolicyRequest = Shapes::StructureShape.new(name: 'CreateResiliencyPolicyRequest')
    CreateResiliencyPolicyResponse = Shapes::StructureShape.new(name: 'CreateResiliencyPolicyResponse')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    CustomerId = Shapes::StringShape.new(name: 'CustomerId')
    DataLocationConstraint = Shapes::StringShape.new(name: 'DataLocationConstraint')
    DeleteAppAssessmentRequest = Shapes::StructureShape.new(name: 'DeleteAppAssessmentRequest')
    DeleteAppAssessmentResponse = Shapes::StructureShape.new(name: 'DeleteAppAssessmentResponse')
    DeleteAppInputSourceRequest = Shapes::StructureShape.new(name: 'DeleteAppInputSourceRequest')
    DeleteAppInputSourceResponse = Shapes::StructureShape.new(name: 'DeleteAppInputSourceResponse')
    DeleteAppRequest = Shapes::StructureShape.new(name: 'DeleteAppRequest')
    DeleteAppResponse = Shapes::StructureShape.new(name: 'DeleteAppResponse')
    DeleteAppVersionAppComponentRequest = Shapes::StructureShape.new(name: 'DeleteAppVersionAppComponentRequest')
    DeleteAppVersionAppComponentResponse = Shapes::StructureShape.new(name: 'DeleteAppVersionAppComponentResponse')
    DeleteAppVersionResourceRequest = Shapes::StructureShape.new(name: 'DeleteAppVersionResourceRequest')
    DeleteAppVersionResourceResponse = Shapes::StructureShape.new(name: 'DeleteAppVersionResourceResponse')
    DeleteRecommendationTemplateRequest = Shapes::StructureShape.new(name: 'DeleteRecommendationTemplateRequest')
    DeleteRecommendationTemplateResponse = Shapes::StructureShape.new(name: 'DeleteRecommendationTemplateResponse')
    DeleteResiliencyPolicyRequest = Shapes::StructureShape.new(name: 'DeleteResiliencyPolicyRequest')
    DeleteResiliencyPolicyResponse = Shapes::StructureShape.new(name: 'DeleteResiliencyPolicyResponse')
    DescribeAppAssessmentRequest = Shapes::StructureShape.new(name: 'DescribeAppAssessmentRequest')
    DescribeAppAssessmentResponse = Shapes::StructureShape.new(name: 'DescribeAppAssessmentResponse')
    DescribeAppRequest = Shapes::StructureShape.new(name: 'DescribeAppRequest')
    DescribeAppResponse = Shapes::StructureShape.new(name: 'DescribeAppResponse')
    DescribeAppVersionAppComponentRequest = Shapes::StructureShape.new(name: 'DescribeAppVersionAppComponentRequest')
    DescribeAppVersionAppComponentResponse = Shapes::StructureShape.new(name: 'DescribeAppVersionAppComponentResponse')
    DescribeAppVersionRequest = Shapes::StructureShape.new(name: 'DescribeAppVersionRequest')
    DescribeAppVersionResourceRequest = Shapes::StructureShape.new(name: 'DescribeAppVersionResourceRequest')
    DescribeAppVersionResourceResponse = Shapes::StructureShape.new(name: 'DescribeAppVersionResourceResponse')
    DescribeAppVersionResourcesResolutionStatusRequest = Shapes::StructureShape.new(name: 'DescribeAppVersionResourcesResolutionStatusRequest')
    DescribeAppVersionResourcesResolutionStatusResponse = Shapes::StructureShape.new(name: 'DescribeAppVersionResourcesResolutionStatusResponse')
    DescribeAppVersionResponse = Shapes::StructureShape.new(name: 'DescribeAppVersionResponse')
    DescribeAppVersionTemplateRequest = Shapes::StructureShape.new(name: 'DescribeAppVersionTemplateRequest')
    DescribeAppVersionTemplateResponse = Shapes::StructureShape.new(name: 'DescribeAppVersionTemplateResponse')
    DescribeDraftAppVersionResourcesImportStatusRequest = Shapes::StructureShape.new(name: 'DescribeDraftAppVersionResourcesImportStatusRequest')
    DescribeDraftAppVersionResourcesImportStatusResponse = Shapes::StructureShape.new(name: 'DescribeDraftAppVersionResourcesImportStatusResponse')
    DescribeResiliencyPolicyRequest = Shapes::StructureShape.new(name: 'DescribeResiliencyPolicyRequest')
    DescribeResiliencyPolicyResponse = Shapes::StructureShape.new(name: 'DescribeResiliencyPolicyResponse')
    DisruptionCompliance = Shapes::StructureShape.new(name: 'DisruptionCompliance')
    DisruptionPolicy = Shapes::MapShape.new(name: 'DisruptionPolicy')
    DisruptionResiliencyScore = Shapes::MapShape.new(name: 'DisruptionResiliencyScore')
    DisruptionType = Shapes::StringShape.new(name: 'DisruptionType')
    DocumentName = Shapes::StringShape.new(name: 'DocumentName')
    Double = Shapes::FloatShape.new(name: 'Double')
    EksNamespace = Shapes::StringShape.new(name: 'EksNamespace')
    EksNamespaceList = Shapes::ListShape.new(name: 'EksNamespaceList')
    EksSource = Shapes::StructureShape.new(name: 'EksSource')
    EksSourceClusterNamespace = Shapes::StructureShape.new(name: 'EksSourceClusterNamespace')
    EksSourceList = Shapes::ListShape.new(name: 'EksSourceList')
    EntityDescription = Shapes::StringShape.new(name: 'EntityDescription')
    EntityId = Shapes::StringShape.new(name: 'EntityId')
    EntityName = Shapes::StringShape.new(name: 'EntityName')
    EntityNameList = Shapes::ListShape.new(name: 'EntityNameList')
    EntityVersion = Shapes::StringShape.new(name: 'EntityVersion')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    EstimatedCostTier = Shapes::StringShape.new(name: 'EstimatedCostTier')
    FailurePolicy = Shapes::StructureShape.new(name: 'FailurePolicy')
    HaArchitecture = Shapes::StringShape.new(name: 'HaArchitecture')
    ImportResourcesToDraftAppVersionRequest = Shapes::StructureShape.new(name: 'ImportResourcesToDraftAppVersionRequest')
    ImportResourcesToDraftAppVersionResponse = Shapes::StructureShape.new(name: 'ImportResourcesToDraftAppVersionResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListAlarmRecommendationsRequest = Shapes::StructureShape.new(name: 'ListAlarmRecommendationsRequest')
    ListAlarmRecommendationsResponse = Shapes::StructureShape.new(name: 'ListAlarmRecommendationsResponse')
    ListAppAssessmentsRequest = Shapes::StructureShape.new(name: 'ListAppAssessmentsRequest')
    ListAppAssessmentsResponse = Shapes::StructureShape.new(name: 'ListAppAssessmentsResponse')
    ListAppComponentCompliancesRequest = Shapes::StructureShape.new(name: 'ListAppComponentCompliancesRequest')
    ListAppComponentCompliancesResponse = Shapes::StructureShape.new(name: 'ListAppComponentCompliancesResponse')
    ListAppComponentRecommendationsRequest = Shapes::StructureShape.new(name: 'ListAppComponentRecommendationsRequest')
    ListAppComponentRecommendationsResponse = Shapes::StructureShape.new(name: 'ListAppComponentRecommendationsResponse')
    ListAppInputSourcesRequest = Shapes::StructureShape.new(name: 'ListAppInputSourcesRequest')
    ListAppInputSourcesResponse = Shapes::StructureShape.new(name: 'ListAppInputSourcesResponse')
    ListAppVersionAppComponentsRequest = Shapes::StructureShape.new(name: 'ListAppVersionAppComponentsRequest')
    ListAppVersionAppComponentsResponse = Shapes::StructureShape.new(name: 'ListAppVersionAppComponentsResponse')
    ListAppVersionResourceMappingsRequest = Shapes::StructureShape.new(name: 'ListAppVersionResourceMappingsRequest')
    ListAppVersionResourceMappingsResponse = Shapes::StructureShape.new(name: 'ListAppVersionResourceMappingsResponse')
    ListAppVersionResourcesRequest = Shapes::StructureShape.new(name: 'ListAppVersionResourcesRequest')
    ListAppVersionResourcesResponse = Shapes::StructureShape.new(name: 'ListAppVersionResourcesResponse')
    ListAppVersionsRequest = Shapes::StructureShape.new(name: 'ListAppVersionsRequest')
    ListAppVersionsResponse = Shapes::StructureShape.new(name: 'ListAppVersionsResponse')
    ListAppsRequest = Shapes::StructureShape.new(name: 'ListAppsRequest')
    ListAppsResponse = Shapes::StructureShape.new(name: 'ListAppsResponse')
    ListRecommendationTemplatesRequest = Shapes::StructureShape.new(name: 'ListRecommendationTemplatesRequest')
    ListRecommendationTemplatesResponse = Shapes::StructureShape.new(name: 'ListRecommendationTemplatesResponse')
    ListResiliencyPoliciesRequest = Shapes::StructureShape.new(name: 'ListResiliencyPoliciesRequest')
    ListResiliencyPoliciesResponse = Shapes::StructureShape.new(name: 'ListResiliencyPoliciesResponse')
    ListSopRecommendationsRequest = Shapes::StructureShape.new(name: 'ListSopRecommendationsRequest')
    ListSopRecommendationsResponse = Shapes::StructureShape.new(name: 'ListSopRecommendationsResponse')
    ListSuggestedResiliencyPoliciesRequest = Shapes::StructureShape.new(name: 'ListSuggestedResiliencyPoliciesRequest')
    ListSuggestedResiliencyPoliciesResponse = Shapes::StructureShape.new(name: 'ListSuggestedResiliencyPoliciesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTestRecommendationsRequest = Shapes::StructureShape.new(name: 'ListTestRecommendationsRequest')
    ListTestRecommendationsResponse = Shapes::StructureShape.new(name: 'ListTestRecommendationsResponse')
    ListUnsupportedAppVersionResourcesRequest = Shapes::StructureShape.new(name: 'ListUnsupportedAppVersionResourcesRequest')
    ListUnsupportedAppVersionResourcesResponse = Shapes::StructureShape.new(name: 'ListUnsupportedAppVersionResourcesResponse')
    LogicalResourceId = Shapes::StructureShape.new(name: 'LogicalResourceId')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    PhysicalIdentifierType = Shapes::StringShape.new(name: 'PhysicalIdentifierType')
    PhysicalResource = Shapes::StructureShape.new(name: 'PhysicalResource')
    PhysicalResourceId = Shapes::StructureShape.new(name: 'PhysicalResourceId')
    PhysicalResourceList = Shapes::ListShape.new(name: 'PhysicalResourceList')
    PublishAppVersionRequest = Shapes::StructureShape.new(name: 'PublishAppVersionRequest')
    PublishAppVersionResponse = Shapes::StructureShape.new(name: 'PublishAppVersionResponse')
    PutDraftAppVersionTemplateRequest = Shapes::StructureShape.new(name: 'PutDraftAppVersionTemplateRequest')
    PutDraftAppVersionTemplateResponse = Shapes::StructureShape.new(name: 'PutDraftAppVersionTemplateResponse')
    RecommendationCompliance = Shapes::MapShape.new(name: 'RecommendationCompliance')
    RecommendationComplianceStatus = Shapes::StringShape.new(name: 'RecommendationComplianceStatus')
    RecommendationDisruptionCompliance = Shapes::StructureShape.new(name: 'RecommendationDisruptionCompliance')
    RecommendationIdList = Shapes::ListShape.new(name: 'RecommendationIdList')
    RecommendationItem = Shapes::StructureShape.new(name: 'RecommendationItem')
    RecommendationItemList = Shapes::ListShape.new(name: 'RecommendationItemList')
    RecommendationTemplate = Shapes::StructureShape.new(name: 'RecommendationTemplate')
    RecommendationTemplateList = Shapes::ListShape.new(name: 'RecommendationTemplateList')
    RecommendationTemplateStatus = Shapes::StringShape.new(name: 'RecommendationTemplateStatus')
    RecommendationTemplateStatusList = Shapes::ListShape.new(name: 'RecommendationTemplateStatusList')
    RemoveDraftAppVersionResourceMappingsRequest = Shapes::StructureShape.new(name: 'RemoveDraftAppVersionResourceMappingsRequest')
    RemoveDraftAppVersionResourceMappingsResponse = Shapes::StructureShape.new(name: 'RemoveDraftAppVersionResourceMappingsResponse')
    RenderRecommendationType = Shapes::StringShape.new(name: 'RenderRecommendationType')
    RenderRecommendationTypeList = Shapes::ListShape.new(name: 'RenderRecommendationTypeList')
    ResiliencyPolicies = Shapes::ListShape.new(name: 'ResiliencyPolicies')
    ResiliencyPolicy = Shapes::StructureShape.new(name: 'ResiliencyPolicy')
    ResiliencyPolicyTier = Shapes::StringShape.new(name: 'ResiliencyPolicyTier')
    ResiliencyScore = Shapes::StructureShape.new(name: 'ResiliencyScore')
    ResolveAppVersionResourcesRequest = Shapes::StructureShape.new(name: 'ResolveAppVersionResourcesRequest')
    ResolveAppVersionResourcesResponse = Shapes::StructureShape.new(name: 'ResolveAppVersionResourcesResponse')
    ResourceError = Shapes::StructureShape.new(name: 'ResourceError')
    ResourceErrorList = Shapes::ListShape.new(name: 'ResourceErrorList')
    ResourceErrorsDetails = Shapes::StructureShape.new(name: 'ResourceErrorsDetails')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceImportStatusType = Shapes::StringShape.new(name: 'ResourceImportStatusType')
    ResourceImportStrategyType = Shapes::StringShape.new(name: 'ResourceImportStrategyType')
    ResourceMapping = Shapes::StructureShape.new(name: 'ResourceMapping')
    ResourceMappingList = Shapes::ListShape.new(name: 'ResourceMappingList')
    ResourceMappingType = Shapes::StringShape.new(name: 'ResourceMappingType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceResolutionStatusType = Shapes::StringShape.new(name: 'ResourceResolutionStatusType')
    ResourceSourceType = Shapes::StringShape.new(name: 'ResourceSourceType')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3Url = Shapes::StringShape.new(name: 'S3Url')
    Seconds = Shapes::IntegerShape.new(name: 'Seconds')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SopRecommendation = Shapes::StructureShape.new(name: 'SopRecommendation')
    SopRecommendationList = Shapes::ListShape.new(name: 'SopRecommendationList')
    SopServiceType = Shapes::StringShape.new(name: 'SopServiceType')
    SpecReferenceId = Shapes::StringShape.new(name: 'SpecReferenceId')
    StartAppAssessmentRequest = Shapes::StructureShape.new(name: 'StartAppAssessmentRequest')
    StartAppAssessmentResponse = Shapes::StructureShape.new(name: 'StartAppAssessmentResponse')
    String1024 = Shapes::StringShape.new(name: 'String1024')
    String128WithoutWhitespace = Shapes::StringShape.new(name: 'String128WithoutWhitespace')
    String2048 = Shapes::StringShape.new(name: 'String2048')
    String255 = Shapes::StringShape.new(name: 'String255')
    String255List = Shapes::ListShape.new(name: 'String255List')
    String500 = Shapes::StringShape.new(name: 'String500')
    SuggestedChangesList = Shapes::ListShape.new(name: 'SuggestedChangesList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TemplateFormat = Shapes::StringShape.new(name: 'TemplateFormat')
    TerraformSource = Shapes::StructureShape.new(name: 'TerraformSource')
    TerraformSourceList = Shapes::ListShape.new(name: 'TerraformSourceList')
    TestRecommendation = Shapes::StructureShape.new(name: 'TestRecommendation')
    TestRecommendationList = Shapes::ListShape.new(name: 'TestRecommendationList')
    TestRisk = Shapes::StringShape.new(name: 'TestRisk')
    TestType = Shapes::StringShape.new(name: 'TestType')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')
    UnsupportedResource = Shapes::StructureShape.new(name: 'UnsupportedResource')
    UnsupportedResourceList = Shapes::ListShape.new(name: 'UnsupportedResourceList')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAppRequest = Shapes::StructureShape.new(name: 'UpdateAppRequest')
    UpdateAppResponse = Shapes::StructureShape.new(name: 'UpdateAppResponse')
    UpdateAppVersionAppComponentRequest = Shapes::StructureShape.new(name: 'UpdateAppVersionAppComponentRequest')
    UpdateAppVersionAppComponentResponse = Shapes::StructureShape.new(name: 'UpdateAppVersionAppComponentResponse')
    UpdateAppVersionRequest = Shapes::StructureShape.new(name: 'UpdateAppVersionRequest')
    UpdateAppVersionResourceRequest = Shapes::StructureShape.new(name: 'UpdateAppVersionResourceRequest')
    UpdateAppVersionResourceResponse = Shapes::StructureShape.new(name: 'UpdateAppVersionResourceResponse')
    UpdateAppVersionResponse = Shapes::StructureShape.new(name: 'UpdateAppVersionResponse')
    UpdateResiliencyPolicyRequest = Shapes::StructureShape.new(name: 'UpdateResiliencyPolicyRequest')
    UpdateResiliencyPolicyResponse = Shapes::StructureShape.new(name: 'UpdateResiliencyPolicyResponse')
    Uuid = Shapes::StringShape.new(name: 'Uuid')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String500, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddDraftAppVersionResourceMappingsRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    AddDraftAppVersionResourceMappingsRequest.add_member(:resource_mappings, Shapes::ShapeRef.new(shape: ResourceMappingList, required: true, location_name: "resourceMappings"))
    AddDraftAppVersionResourceMappingsRequest.struct_class = Types::AddDraftAppVersionResourceMappingsRequest

    AddDraftAppVersionResourceMappingsResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    AddDraftAppVersionResourceMappingsResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    AddDraftAppVersionResourceMappingsResponse.add_member(:resource_mappings, Shapes::ShapeRef.new(shape: ResourceMappingList, required: true, location_name: "resourceMappings"))
    AddDraftAppVersionResourceMappingsResponse.struct_class = Types::AddDraftAppVersionResourceMappingsResponse

    AdditionalInfoMap.key = Shapes::ShapeRef.new(shape: String128WithoutWhitespace)
    AdditionalInfoMap.value = Shapes::ShapeRef.new(shape: AdditionalInfoValueList)

    AdditionalInfoValueList.member = Shapes::ShapeRef.new(shape: String1024)

    AlarmRecommendation.add_member(:app_component_name, Shapes::ShapeRef.new(shape: EntityId, location_name: "appComponentName"))
    AlarmRecommendation.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    AlarmRecommendation.add_member(:items, Shapes::ShapeRef.new(shape: RecommendationItemList, location_name: "items"))
    AlarmRecommendation.add_member(:name, Shapes::ShapeRef.new(shape: String500, required: true, location_name: "name"))
    AlarmRecommendation.add_member(:prerequisite, Shapes::ShapeRef.new(shape: String500, location_name: "prerequisite"))
    AlarmRecommendation.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "recommendationId"))
    AlarmRecommendation.add_member(:reference_id, Shapes::ShapeRef.new(shape: SpecReferenceId, required: true, location_name: "referenceId"))
    AlarmRecommendation.add_member(:type, Shapes::ShapeRef.new(shape: AlarmType, required: true, location_name: "type"))
    AlarmRecommendation.struct_class = Types::AlarmRecommendation

    AlarmRecommendationList.member = Shapes::ShapeRef.new(shape: AlarmRecommendation)

    AlarmReferenceIdList.member = Shapes::ShapeRef.new(shape: String500)

    App.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    App.add_member(:assessment_schedule, Shapes::ShapeRef.new(shape: AppAssessmentScheduleType, location_name: "assessmentSchedule"))
    App.add_member(:compliance_status, Shapes::ShapeRef.new(shape: AppComplianceStatusType, location_name: "complianceStatus"))
    App.add_member(:creation_time, Shapes::ShapeRef.new(shape: TimeStamp, required: true, location_name: "creationTime"))
    App.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    App.add_member(:last_app_compliance_evaluation_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "lastAppComplianceEvaluationTime"))
    App.add_member(:last_resiliency_score_evaluation_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "lastResiliencyScoreEvaluationTime"))
    App.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    App.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    App.add_member(:resiliency_score, Shapes::ShapeRef.new(shape: Double, location_name: "resiliencyScore"))
    App.add_member(:status, Shapes::ShapeRef.new(shape: AppStatusType, location_name: "status"))
    App.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    App.struct_class = Types::App

    AppAssessment.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "appArn"))
    AppAssessment.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, location_name: "appVersion"))
    AppAssessment.add_member(:assessment_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentArn"))
    AppAssessment.add_member(:assessment_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "assessmentName"))
    AppAssessment.add_member(:assessment_status, Shapes::ShapeRef.new(shape: AssessmentStatus, required: true, location_name: "assessmentStatus"))
    AppAssessment.add_member(:compliance, Shapes::ShapeRef.new(shape: AssessmentCompliance, location_name: "compliance"))
    AppAssessment.add_member(:compliance_status, Shapes::ShapeRef.new(shape: ComplianceStatus, location_name: "complianceStatus"))
    AppAssessment.add_member(:cost, Shapes::ShapeRef.new(shape: Cost, location_name: "cost"))
    AppAssessment.add_member(:end_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "endTime"))
    AppAssessment.add_member(:invoker, Shapes::ShapeRef.new(shape: AssessmentInvoker, required: true, location_name: "invoker"))
    AppAssessment.add_member(:message, Shapes::ShapeRef.new(shape: String500, location_name: "message"))
    AppAssessment.add_member(:policy, Shapes::ShapeRef.new(shape: ResiliencyPolicy, location_name: "policy"))
    AppAssessment.add_member(:resiliency_score, Shapes::ShapeRef.new(shape: ResiliencyScore, location_name: "resiliencyScore"))
    AppAssessment.add_member(:resource_errors_details, Shapes::ShapeRef.new(shape: ResourceErrorsDetails, location_name: "resourceErrorsDetails"))
    AppAssessment.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "startTime"))
    AppAssessment.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    AppAssessment.struct_class = Types::AppAssessment

    AppAssessmentSummary.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "appArn"))
    AppAssessmentSummary.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, location_name: "appVersion"))
    AppAssessmentSummary.add_member(:assessment_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentArn"))
    AppAssessmentSummary.add_member(:assessment_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "assessmentName"))
    AppAssessmentSummary.add_member(:assessment_status, Shapes::ShapeRef.new(shape: AssessmentStatus, required: true, location_name: "assessmentStatus"))
    AppAssessmentSummary.add_member(:compliance_status, Shapes::ShapeRef.new(shape: ComplianceStatus, location_name: "complianceStatus"))
    AppAssessmentSummary.add_member(:cost, Shapes::ShapeRef.new(shape: Cost, location_name: "cost"))
    AppAssessmentSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "endTime"))
    AppAssessmentSummary.add_member(:invoker, Shapes::ShapeRef.new(shape: AssessmentInvoker, location_name: "invoker"))
    AppAssessmentSummary.add_member(:message, Shapes::ShapeRef.new(shape: String500, location_name: "message"))
    AppAssessmentSummary.add_member(:resiliency_score, Shapes::ShapeRef.new(shape: Double, location_name: "resiliencyScore"))
    AppAssessmentSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "startTime"))
    AppAssessmentSummary.struct_class = Types::AppAssessmentSummary

    AppAssessmentSummaryList.member = Shapes::ShapeRef.new(shape: AppAssessmentSummary)

    AppComponent.add_member(:additional_info, Shapes::ShapeRef.new(shape: AdditionalInfoMap, location_name: "additionalInfo"))
    AppComponent.add_member(:id, Shapes::ShapeRef.new(shape: String255, location_name: "id"))
    AppComponent.add_member(:name, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "name"))
    AppComponent.add_member(:type, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "type"))
    AppComponent.struct_class = Types::AppComponent

    AppComponentCompliance.add_member(:app_component_name, Shapes::ShapeRef.new(shape: EntityId, location_name: "appComponentName"))
    AppComponentCompliance.add_member(:compliance, Shapes::ShapeRef.new(shape: AssessmentCompliance, location_name: "compliance"))
    AppComponentCompliance.add_member(:cost, Shapes::ShapeRef.new(shape: Cost, location_name: "cost"))
    AppComponentCompliance.add_member(:message, Shapes::ShapeRef.new(shape: String500, location_name: "message"))
    AppComponentCompliance.add_member(:resiliency_score, Shapes::ShapeRef.new(shape: ResiliencyScore, location_name: "resiliencyScore"))
    AppComponentCompliance.add_member(:status, Shapes::ShapeRef.new(shape: ComplianceStatus, location_name: "status"))
    AppComponentCompliance.struct_class = Types::AppComponentCompliance

    AppComponentList.member = Shapes::ShapeRef.new(shape: AppComponent)

    AppComponentNameList.member = Shapes::ShapeRef.new(shape: String255)

    AppInputSource.add_member(:eks_source_cluster_namespace, Shapes::ShapeRef.new(shape: EksSourceClusterNamespace, location_name: "eksSourceClusterNamespace"))
    AppInputSource.add_member(:import_type, Shapes::ShapeRef.new(shape: ResourceMappingType, required: true, location_name: "importType"))
    AppInputSource.add_member(:resource_count, Shapes::ShapeRef.new(shape: Integer, location_name: "resourceCount"))
    AppInputSource.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "sourceArn"))
    AppInputSource.add_member(:source_name, Shapes::ShapeRef.new(shape: String255, location_name: "sourceName"))
    AppInputSource.add_member(:terraform_source, Shapes::ShapeRef.new(shape: TerraformSource, location_name: "terraformSource"))
    AppInputSource.struct_class = Types::AppInputSource

    AppInputSourceList.member = Shapes::ShapeRef.new(shape: AppInputSource)

    AppSummary.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    AppSummary.add_member(:assessment_schedule, Shapes::ShapeRef.new(shape: AppAssessmentScheduleType, location_name: "assessmentSchedule"))
    AppSummary.add_member(:compliance_status, Shapes::ShapeRef.new(shape: AppComplianceStatusType, location_name: "complianceStatus"))
    AppSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: TimeStamp, required: true, location_name: "creationTime"))
    AppSummary.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    AppSummary.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    AppSummary.add_member(:resiliency_score, Shapes::ShapeRef.new(shape: Double, location_name: "resiliencyScore"))
    AppSummary.add_member(:status, Shapes::ShapeRef.new(shape: AppStatusType, location_name: "status"))
    AppSummary.struct_class = Types::AppSummary

    AppSummaryList.member = Shapes::ShapeRef.new(shape: AppSummary)

    AppVersionList.member = Shapes::ShapeRef.new(shape: AppVersionSummary)

    AppVersionSummary.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    AppVersionSummary.struct_class = Types::AppVersionSummary

    ArnList.member = Shapes::ShapeRef.new(shape: Arn)

    AssessmentCompliance.key = Shapes::ShapeRef.new(shape: DisruptionType)
    AssessmentCompliance.value = Shapes::ShapeRef.new(shape: DisruptionCompliance)

    AssessmentStatusList.member = Shapes::ShapeRef.new(shape: AssessmentStatus)

    ComponentCompliancesList.member = Shapes::ShapeRef.new(shape: AppComponentCompliance)

    ComponentRecommendation.add_member(:app_component_name, Shapes::ShapeRef.new(shape: EntityId, required: true, location_name: "appComponentName"))
    ComponentRecommendation.add_member(:config_recommendations, Shapes::ShapeRef.new(shape: ConfigRecommendationList, required: true, location_name: "configRecommendations"))
    ComponentRecommendation.add_member(:recommendation_status, Shapes::ShapeRef.new(shape: RecommendationComplianceStatus, required: true, location_name: "recommendationStatus"))
    ComponentRecommendation.struct_class = Types::ComponentRecommendation

    ComponentRecommendationList.member = Shapes::ShapeRef.new(shape: ComponentRecommendation)

    ConfigRecommendation.add_member(:app_component_name, Shapes::ShapeRef.new(shape: EntityId, location_name: "appComponentName"))
    ConfigRecommendation.add_member(:compliance, Shapes::ShapeRef.new(shape: AssessmentCompliance, location_name: "compliance"))
    ConfigRecommendation.add_member(:cost, Shapes::ShapeRef.new(shape: Cost, location_name: "cost"))
    ConfigRecommendation.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    ConfigRecommendation.add_member(:ha_architecture, Shapes::ShapeRef.new(shape: HaArchitecture, location_name: "haArchitecture"))
    ConfigRecommendation.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    ConfigRecommendation.add_member(:optimization_type, Shapes::ShapeRef.new(shape: ConfigRecommendationOptimizationType, required: true, location_name: "optimizationType"))
    ConfigRecommendation.add_member(:recommendation_compliance, Shapes::ShapeRef.new(shape: RecommendationCompliance, location_name: "recommendationCompliance"))
    ConfigRecommendation.add_member(:reference_id, Shapes::ShapeRef.new(shape: SpecReferenceId, required: true, location_name: "referenceId"))
    ConfigRecommendation.add_member(:suggested_changes, Shapes::ShapeRef.new(shape: SuggestedChangesList, location_name: "suggestedChanges"))
    ConfigRecommendation.struct_class = Types::ConfigRecommendation

    ConfigRecommendationList.member = Shapes::ShapeRef.new(shape: ConfigRecommendation)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String500, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    Cost.add_member(:amount, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "amount"))
    Cost.add_member(:currency, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "currency"))
    Cost.add_member(:frequency, Shapes::ShapeRef.new(shape: CostFrequency, required: true, location_name: "frequency"))
    Cost.struct_class = Types::Cost

    CreateAppRequest.add_member(:assessment_schedule, Shapes::ShapeRef.new(shape: AppAssessmentScheduleType, location_name: "assessmentSchedule"))
    CreateAppRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAppRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    CreateAppRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    CreateAppRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    CreateAppRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAppRequest.struct_class = Types::CreateAppRequest

    CreateAppResponse.add_member(:app, Shapes::ShapeRef.new(shape: App, required: true, location_name: "app"))
    CreateAppResponse.struct_class = Types::CreateAppResponse

    CreateAppVersionAppComponentRequest.add_member(:additional_info, Shapes::ShapeRef.new(shape: AdditionalInfoMap, location_name: "additionalInfo"))
    CreateAppVersionAppComponentRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    CreateAppVersionAppComponentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAppVersionAppComponentRequest.add_member(:id, Shapes::ShapeRef.new(shape: String255, location_name: "id"))
    CreateAppVersionAppComponentRequest.add_member(:name, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "name"))
    CreateAppVersionAppComponentRequest.add_member(:type, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "type"))
    CreateAppVersionAppComponentRequest.struct_class = Types::CreateAppVersionAppComponentRequest

    CreateAppVersionAppComponentResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    CreateAppVersionAppComponentResponse.add_member(:app_component, Shapes::ShapeRef.new(shape: AppComponent, location_name: "appComponent"))
    CreateAppVersionAppComponentResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    CreateAppVersionAppComponentResponse.struct_class = Types::CreateAppVersionAppComponentResponse

    CreateAppVersionResourceRequest.add_member(:additional_info, Shapes::ShapeRef.new(shape: AdditionalInfoMap, location_name: "additionalInfo"))
    CreateAppVersionResourceRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    CreateAppVersionResourceRequest.add_member(:app_components, Shapes::ShapeRef.new(shape: AppComponentNameList, required: true, location_name: "appComponents"))
    CreateAppVersionResourceRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: CustomerId, location_name: "awsAccountId"))
    CreateAppVersionResourceRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsRegion"))
    CreateAppVersionResourceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAppVersionResourceRequest.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, required: true, location_name: "logicalResourceId"))
    CreateAppVersionResourceRequest.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: String2048, required: true, location_name: "physicalResourceId"))
    CreateAppVersionResourceRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "resourceName"))
    CreateAppVersionResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "resourceType"))
    CreateAppVersionResourceRequest.struct_class = Types::CreateAppVersionResourceRequest

    CreateAppVersionResourceResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    CreateAppVersionResourceResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    CreateAppVersionResourceResponse.add_member(:physical_resource, Shapes::ShapeRef.new(shape: PhysicalResource, location_name: "physicalResource"))
    CreateAppVersionResourceResponse.struct_class = Types::CreateAppVersionResourceResponse

    CreateRecommendationTemplateRequest.add_member(:assessment_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentArn"))
    CreateRecommendationTemplateRequest.add_member(:bucket_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "bucketName"))
    CreateRecommendationTemplateRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateRecommendationTemplateRequest.add_member(:format, Shapes::ShapeRef.new(shape: TemplateFormat, location_name: "format"))
    CreateRecommendationTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    CreateRecommendationTemplateRequest.add_member(:recommendation_ids, Shapes::ShapeRef.new(shape: RecommendationIdList, location_name: "recommendationIds"))
    CreateRecommendationTemplateRequest.add_member(:recommendation_types, Shapes::ShapeRef.new(shape: RenderRecommendationTypeList, location_name: "recommendationTypes"))
    CreateRecommendationTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateRecommendationTemplateRequest.struct_class = Types::CreateRecommendationTemplateRequest

    CreateRecommendationTemplateResponse.add_member(:recommendation_template, Shapes::ShapeRef.new(shape: RecommendationTemplate, location_name: "recommendationTemplate"))
    CreateRecommendationTemplateResponse.struct_class = Types::CreateRecommendationTemplateResponse

    CreateResiliencyPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateResiliencyPolicyRequest.add_member(:data_location_constraint, Shapes::ShapeRef.new(shape: DataLocationConstraint, location_name: "dataLocationConstraint"))
    CreateResiliencyPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: DisruptionPolicy, required: true, location_name: "policy"))
    CreateResiliencyPolicyRequest.add_member(:policy_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "policyDescription"))
    CreateResiliencyPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "policyName"))
    CreateResiliencyPolicyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateResiliencyPolicyRequest.add_member(:tier, Shapes::ShapeRef.new(shape: ResiliencyPolicyTier, required: true, location_name: "tier"))
    CreateResiliencyPolicyRequest.struct_class = Types::CreateResiliencyPolicyRequest

    CreateResiliencyPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResiliencyPolicy, required: true, location_name: "policy"))
    CreateResiliencyPolicyResponse.struct_class = Types::CreateResiliencyPolicyResponse

    DeleteAppAssessmentRequest.add_member(:assessment_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentArn"))
    DeleteAppAssessmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteAppAssessmentRequest.struct_class = Types::DeleteAppAssessmentRequest

    DeleteAppAssessmentResponse.add_member(:assessment_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentArn"))
    DeleteAppAssessmentResponse.add_member(:assessment_status, Shapes::ShapeRef.new(shape: AssessmentStatus, required: true, location_name: "assessmentStatus"))
    DeleteAppAssessmentResponse.struct_class = Types::DeleteAppAssessmentResponse

    DeleteAppInputSourceRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DeleteAppInputSourceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteAppInputSourceRequest.add_member(:eks_source_cluster_namespace, Shapes::ShapeRef.new(shape: EksSourceClusterNamespace, location_name: "eksSourceClusterNamespace"))
    DeleteAppInputSourceRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "sourceArn"))
    DeleteAppInputSourceRequest.add_member(:terraform_source, Shapes::ShapeRef.new(shape: TerraformSource, location_name: "terraformSource"))
    DeleteAppInputSourceRequest.struct_class = Types::DeleteAppInputSourceRequest

    DeleteAppInputSourceResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "appArn"))
    DeleteAppInputSourceResponse.add_member(:app_input_source, Shapes::ShapeRef.new(shape: AppInputSource, location_name: "appInputSource"))
    DeleteAppInputSourceResponse.struct_class = Types::DeleteAppInputSourceResponse

    DeleteAppRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DeleteAppRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteAppRequest.add_member(:force_delete, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "forceDelete"))
    DeleteAppRequest.struct_class = Types::DeleteAppRequest

    DeleteAppResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DeleteAppResponse.struct_class = Types::DeleteAppResponse

    DeleteAppVersionAppComponentRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DeleteAppVersionAppComponentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteAppVersionAppComponentRequest.add_member(:id, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "id"))
    DeleteAppVersionAppComponentRequest.struct_class = Types::DeleteAppVersionAppComponentRequest

    DeleteAppVersionAppComponentResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DeleteAppVersionAppComponentResponse.add_member(:app_component, Shapes::ShapeRef.new(shape: AppComponent, location_name: "appComponent"))
    DeleteAppVersionAppComponentResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    DeleteAppVersionAppComponentResponse.struct_class = Types::DeleteAppVersionAppComponentResponse

    DeleteAppVersionResourceRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DeleteAppVersionResourceRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: CustomerId, location_name: "awsAccountId"))
    DeleteAppVersionResourceRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsRegion"))
    DeleteAppVersionResourceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteAppVersionResourceRequest.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, location_name: "logicalResourceId"))
    DeleteAppVersionResourceRequest.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: String2048, location_name: "physicalResourceId"))
    DeleteAppVersionResourceRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "resourceName"))
    DeleteAppVersionResourceRequest.struct_class = Types::DeleteAppVersionResourceRequest

    DeleteAppVersionResourceResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DeleteAppVersionResourceResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    DeleteAppVersionResourceResponse.add_member(:physical_resource, Shapes::ShapeRef.new(shape: PhysicalResource, location_name: "physicalResource"))
    DeleteAppVersionResourceResponse.struct_class = Types::DeleteAppVersionResourceResponse

    DeleteRecommendationTemplateRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteRecommendationTemplateRequest.add_member(:recommendation_template_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "recommendationTemplateArn"))
    DeleteRecommendationTemplateRequest.struct_class = Types::DeleteRecommendationTemplateRequest

    DeleteRecommendationTemplateResponse.add_member(:recommendation_template_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "recommendationTemplateArn"))
    DeleteRecommendationTemplateResponse.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationTemplateStatus, required: true, location_name: "status"))
    DeleteRecommendationTemplateResponse.struct_class = Types::DeleteRecommendationTemplateResponse

    DeleteResiliencyPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteResiliencyPolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "policyArn"))
    DeleteResiliencyPolicyRequest.struct_class = Types::DeleteResiliencyPolicyRequest

    DeleteResiliencyPolicyResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "policyArn"))
    DeleteResiliencyPolicyResponse.struct_class = Types::DeleteResiliencyPolicyResponse

    DescribeAppAssessmentRequest.add_member(:assessment_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentArn"))
    DescribeAppAssessmentRequest.struct_class = Types::DescribeAppAssessmentRequest

    DescribeAppAssessmentResponse.add_member(:assessment, Shapes::ShapeRef.new(shape: AppAssessment, required: true, location_name: "assessment"))
    DescribeAppAssessmentResponse.struct_class = Types::DescribeAppAssessmentResponse

    DescribeAppRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DescribeAppRequest.struct_class = Types::DescribeAppRequest

    DescribeAppResponse.add_member(:app, Shapes::ShapeRef.new(shape: App, required: true, location_name: "app"))
    DescribeAppResponse.struct_class = Types::DescribeAppResponse

    DescribeAppVersionAppComponentRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DescribeAppVersionAppComponentRequest.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    DescribeAppVersionAppComponentRequest.add_member(:id, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "id"))
    DescribeAppVersionAppComponentRequest.struct_class = Types::DescribeAppVersionAppComponentRequest

    DescribeAppVersionAppComponentResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DescribeAppVersionAppComponentResponse.add_member(:app_component, Shapes::ShapeRef.new(shape: AppComponent, location_name: "appComponent"))
    DescribeAppVersionAppComponentResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    DescribeAppVersionAppComponentResponse.struct_class = Types::DescribeAppVersionAppComponentResponse

    DescribeAppVersionRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DescribeAppVersionRequest.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    DescribeAppVersionRequest.struct_class = Types::DescribeAppVersionRequest

    DescribeAppVersionResourceRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DescribeAppVersionResourceRequest.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    DescribeAppVersionResourceRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: CustomerId, location_name: "awsAccountId"))
    DescribeAppVersionResourceRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsRegion"))
    DescribeAppVersionResourceRequest.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, location_name: "logicalResourceId"))
    DescribeAppVersionResourceRequest.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: String2048, location_name: "physicalResourceId"))
    DescribeAppVersionResourceRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "resourceName"))
    DescribeAppVersionResourceRequest.struct_class = Types::DescribeAppVersionResourceRequest

    DescribeAppVersionResourceResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DescribeAppVersionResourceResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    DescribeAppVersionResourceResponse.add_member(:physical_resource, Shapes::ShapeRef.new(shape: PhysicalResource, location_name: "physicalResource"))
    DescribeAppVersionResourceResponse.struct_class = Types::DescribeAppVersionResourceResponse

    DescribeAppVersionResourcesResolutionStatusRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DescribeAppVersionResourcesResolutionStatusRequest.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    DescribeAppVersionResourcesResolutionStatusRequest.add_member(:resolution_id, Shapes::ShapeRef.new(shape: String255, location_name: "resolutionId"))
    DescribeAppVersionResourcesResolutionStatusRequest.struct_class = Types::DescribeAppVersionResourcesResolutionStatusRequest

    DescribeAppVersionResourcesResolutionStatusResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DescribeAppVersionResourcesResolutionStatusResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    DescribeAppVersionResourcesResolutionStatusResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: String500, location_name: "errorMessage"))
    DescribeAppVersionResourcesResolutionStatusResponse.add_member(:resolution_id, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "resolutionId"))
    DescribeAppVersionResourcesResolutionStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResourceResolutionStatusType, required: true, location_name: "status"))
    DescribeAppVersionResourcesResolutionStatusResponse.struct_class = Types::DescribeAppVersionResourcesResolutionStatusResponse

    DescribeAppVersionResponse.add_member(:additional_info, Shapes::ShapeRef.new(shape: AdditionalInfoMap, location_name: "additionalInfo"))
    DescribeAppVersionResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DescribeAppVersionResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    DescribeAppVersionResponse.struct_class = Types::DescribeAppVersionResponse

    DescribeAppVersionTemplateRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DescribeAppVersionTemplateRequest.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    DescribeAppVersionTemplateRequest.struct_class = Types::DescribeAppVersionTemplateRequest

    DescribeAppVersionTemplateResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DescribeAppVersionTemplateResponse.add_member(:app_template_body, Shapes::ShapeRef.new(shape: AppTemplateBody, required: true, location_name: "appTemplateBody"))
    DescribeAppVersionTemplateResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    DescribeAppVersionTemplateResponse.struct_class = Types::DescribeAppVersionTemplateResponse

    DescribeDraftAppVersionResourcesImportStatusRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DescribeDraftAppVersionResourcesImportStatusRequest.struct_class = Types::DescribeDraftAppVersionResourcesImportStatusRequest

    DescribeDraftAppVersionResourcesImportStatusResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    DescribeDraftAppVersionResourcesImportStatusResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    DescribeDraftAppVersionResourcesImportStatusResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: String500, location_name: "errorMessage"))
    DescribeDraftAppVersionResourcesImportStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResourceImportStatusType, required: true, location_name: "status"))
    DescribeDraftAppVersionResourcesImportStatusResponse.add_member(:status_change_time, Shapes::ShapeRef.new(shape: TimeStamp, required: true, location_name: "statusChangeTime"))
    DescribeDraftAppVersionResourcesImportStatusResponse.struct_class = Types::DescribeDraftAppVersionResourcesImportStatusResponse

    DescribeResiliencyPolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "policyArn"))
    DescribeResiliencyPolicyRequest.struct_class = Types::DescribeResiliencyPolicyRequest

    DescribeResiliencyPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResiliencyPolicy, required: true, location_name: "policy"))
    DescribeResiliencyPolicyResponse.struct_class = Types::DescribeResiliencyPolicyResponse

    DisruptionCompliance.add_member(:achievable_rpo_in_secs, Shapes::ShapeRef.new(shape: Seconds, location_name: "achievableRpoInSecs"))
    DisruptionCompliance.add_member(:achievable_rto_in_secs, Shapes::ShapeRef.new(shape: Seconds, location_name: "achievableRtoInSecs"))
    DisruptionCompliance.add_member(:compliance_status, Shapes::ShapeRef.new(shape: ComplianceStatus, required: true, location_name: "complianceStatus"))
    DisruptionCompliance.add_member(:current_rpo_in_secs, Shapes::ShapeRef.new(shape: Seconds, location_name: "currentRpoInSecs"))
    DisruptionCompliance.add_member(:current_rto_in_secs, Shapes::ShapeRef.new(shape: Seconds, location_name: "currentRtoInSecs"))
    DisruptionCompliance.add_member(:message, Shapes::ShapeRef.new(shape: String500, location_name: "message"))
    DisruptionCompliance.add_member(:rpo_description, Shapes::ShapeRef.new(shape: String500, location_name: "rpoDescription"))
    DisruptionCompliance.add_member(:rpo_reference_id, Shapes::ShapeRef.new(shape: String500, location_name: "rpoReferenceId"))
    DisruptionCompliance.add_member(:rto_description, Shapes::ShapeRef.new(shape: String500, location_name: "rtoDescription"))
    DisruptionCompliance.add_member(:rto_reference_id, Shapes::ShapeRef.new(shape: String500, location_name: "rtoReferenceId"))
    DisruptionCompliance.struct_class = Types::DisruptionCompliance

    DisruptionPolicy.key = Shapes::ShapeRef.new(shape: DisruptionType)
    DisruptionPolicy.value = Shapes::ShapeRef.new(shape: FailurePolicy)

    DisruptionResiliencyScore.key = Shapes::ShapeRef.new(shape: DisruptionType)
    DisruptionResiliencyScore.value = Shapes::ShapeRef.new(shape: Double)

    EksNamespaceList.member = Shapes::ShapeRef.new(shape: EksNamespace)

    EksSource.add_member(:eks_cluster_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "eksClusterArn"))
    EksSource.add_member(:namespaces, Shapes::ShapeRef.new(shape: EksNamespaceList, required: true, location_name: "namespaces"))
    EksSource.struct_class = Types::EksSource

    EksSourceClusterNamespace.add_member(:eks_cluster_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "eksClusterArn"))
    EksSourceClusterNamespace.add_member(:namespace, Shapes::ShapeRef.new(shape: EksNamespace, required: true, location_name: "namespace"))
    EksSourceClusterNamespace.struct_class = Types::EksSourceClusterNamespace

    EksSourceList.member = Shapes::ShapeRef.new(shape: EksSource)

    EntityNameList.member = Shapes::ShapeRef.new(shape: EntityName)

    FailurePolicy.add_member(:rpo_in_secs, Shapes::ShapeRef.new(shape: Seconds, required: true, location_name: "rpoInSecs"))
    FailurePolicy.add_member(:rto_in_secs, Shapes::ShapeRef.new(shape: Seconds, required: true, location_name: "rtoInSecs"))
    FailurePolicy.struct_class = Types::FailurePolicy

    ImportResourcesToDraftAppVersionRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    ImportResourcesToDraftAppVersionRequest.add_member(:eks_sources, Shapes::ShapeRef.new(shape: EksSourceList, location_name: "eksSources"))
    ImportResourcesToDraftAppVersionRequest.add_member(:import_strategy, Shapes::ShapeRef.new(shape: ResourceImportStrategyType, location_name: "importStrategy"))
    ImportResourcesToDraftAppVersionRequest.add_member(:source_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "sourceArns"))
    ImportResourcesToDraftAppVersionRequest.add_member(:terraform_sources, Shapes::ShapeRef.new(shape: TerraformSourceList, location_name: "terraformSources"))
    ImportResourcesToDraftAppVersionRequest.struct_class = Types::ImportResourcesToDraftAppVersionRequest

    ImportResourcesToDraftAppVersionResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    ImportResourcesToDraftAppVersionResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    ImportResourcesToDraftAppVersionResponse.add_member(:eks_sources, Shapes::ShapeRef.new(shape: EksSourceList, location_name: "eksSources"))
    ImportResourcesToDraftAppVersionResponse.add_member(:source_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "sourceArns"))
    ImportResourcesToDraftAppVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResourceImportStatusType, required: true, location_name: "status"))
    ImportResourcesToDraftAppVersionResponse.add_member(:terraform_sources, Shapes::ShapeRef.new(shape: TerraformSourceList, location_name: "terraformSources"))
    ImportResourcesToDraftAppVersionResponse.struct_class = Types::ImportResourcesToDraftAppVersionResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String500, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAlarmRecommendationsRequest.add_member(:assessment_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentArn"))
    ListAlarmRecommendationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAlarmRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAlarmRecommendationsRequest.struct_class = Types::ListAlarmRecommendationsRequest

    ListAlarmRecommendationsResponse.add_member(:alarm_recommendations, Shapes::ShapeRef.new(shape: AlarmRecommendationList, required: true, location_name: "alarmRecommendations"))
    ListAlarmRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAlarmRecommendationsResponse.struct_class = Types::ListAlarmRecommendationsResponse

    ListAppAssessmentsRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, location: "querystring", location_name: "appArn"))
    ListAppAssessmentsRequest.add_member(:assessment_name, Shapes::ShapeRef.new(shape: EntityName, location: "querystring", location_name: "assessmentName"))
    ListAppAssessmentsRequest.add_member(:assessment_status, Shapes::ShapeRef.new(shape: AssessmentStatusList, location: "querystring", location_name: "assessmentStatus"))
    ListAppAssessmentsRequest.add_member(:compliance_status, Shapes::ShapeRef.new(shape: ComplianceStatus, location: "querystring", location_name: "complianceStatus"))
    ListAppAssessmentsRequest.add_member(:invoker, Shapes::ShapeRef.new(shape: AssessmentInvoker, location: "querystring", location_name: "invoker"))
    ListAppAssessmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAppAssessmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAppAssessmentsRequest.add_member(:reverse_order, Shapes::ShapeRef.new(shape: BooleanOptional, location: "querystring", location_name: "reverseOrder"))
    ListAppAssessmentsRequest.struct_class = Types::ListAppAssessmentsRequest

    ListAppAssessmentsResponse.add_member(:assessment_summaries, Shapes::ShapeRef.new(shape: AppAssessmentSummaryList, required: true, location_name: "assessmentSummaries"))
    ListAppAssessmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppAssessmentsResponse.struct_class = Types::ListAppAssessmentsResponse

    ListAppComponentCompliancesRequest.add_member(:assessment_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentArn"))
    ListAppComponentCompliancesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAppComponentCompliancesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppComponentCompliancesRequest.struct_class = Types::ListAppComponentCompliancesRequest

    ListAppComponentCompliancesResponse.add_member(:component_compliances, Shapes::ShapeRef.new(shape: ComponentCompliancesList, required: true, location_name: "componentCompliances"))
    ListAppComponentCompliancesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppComponentCompliancesResponse.struct_class = Types::ListAppComponentCompliancesResponse

    ListAppComponentRecommendationsRequest.add_member(:assessment_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentArn"))
    ListAppComponentRecommendationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAppComponentRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppComponentRecommendationsRequest.struct_class = Types::ListAppComponentRecommendationsRequest

    ListAppComponentRecommendationsResponse.add_member(:component_recommendations, Shapes::ShapeRef.new(shape: ComponentRecommendationList, required: true, location_name: "componentRecommendations"))
    ListAppComponentRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppComponentRecommendationsResponse.struct_class = Types::ListAppComponentRecommendationsResponse

    ListAppInputSourcesRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    ListAppInputSourcesRequest.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    ListAppInputSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAppInputSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppInputSourcesRequest.struct_class = Types::ListAppInputSourcesRequest

    ListAppInputSourcesResponse.add_member(:app_input_sources, Shapes::ShapeRef.new(shape: AppInputSourceList, required: true, location_name: "appInputSources"))
    ListAppInputSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppInputSourcesResponse.struct_class = Types::ListAppInputSourcesResponse

    ListAppVersionAppComponentsRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    ListAppVersionAppComponentsRequest.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    ListAppVersionAppComponentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAppVersionAppComponentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppVersionAppComponentsRequest.struct_class = Types::ListAppVersionAppComponentsRequest

    ListAppVersionAppComponentsResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    ListAppVersionAppComponentsResponse.add_member(:app_components, Shapes::ShapeRef.new(shape: AppComponentList, location_name: "appComponents"))
    ListAppVersionAppComponentsResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    ListAppVersionAppComponentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppVersionAppComponentsResponse.struct_class = Types::ListAppVersionAppComponentsResponse

    ListAppVersionResourceMappingsRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    ListAppVersionResourceMappingsRequest.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    ListAppVersionResourceMappingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAppVersionResourceMappingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppVersionResourceMappingsRequest.struct_class = Types::ListAppVersionResourceMappingsRequest

    ListAppVersionResourceMappingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppVersionResourceMappingsResponse.add_member(:resource_mappings, Shapes::ShapeRef.new(shape: ResourceMappingList, required: true, location_name: "resourceMappings"))
    ListAppVersionResourceMappingsResponse.struct_class = Types::ListAppVersionResourceMappingsResponse

    ListAppVersionResourcesRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    ListAppVersionResourcesRequest.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    ListAppVersionResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAppVersionResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppVersionResourcesRequest.add_member(:resolution_id, Shapes::ShapeRef.new(shape: String255, location_name: "resolutionId"))
    ListAppVersionResourcesRequest.struct_class = Types::ListAppVersionResourcesRequest

    ListAppVersionResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppVersionResourcesResponse.add_member(:physical_resources, Shapes::ShapeRef.new(shape: PhysicalResourceList, required: true, location_name: "physicalResources"))
    ListAppVersionResourcesResponse.add_member(:resolution_id, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "resolutionId"))
    ListAppVersionResourcesResponse.struct_class = Types::ListAppVersionResourcesResponse

    ListAppVersionsRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    ListAppVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAppVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppVersionsRequest.struct_class = Types::ListAppVersionsRequest

    ListAppVersionsResponse.add_member(:app_versions, Shapes::ShapeRef.new(shape: AppVersionList, required: true, location_name: "appVersions"))
    ListAppVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppVersionsResponse.struct_class = Types::ListAppVersionsResponse

    ListAppsRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, location: "querystring", location_name: "appArn"))
    ListAppsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAppsRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location: "querystring", location_name: "name"))
    ListAppsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAppsRequest.struct_class = Types::ListAppsRequest

    ListAppsResponse.add_member(:app_summaries, Shapes::ShapeRef.new(shape: AppSummaryList, required: true, location_name: "appSummaries"))
    ListAppsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppsResponse.struct_class = Types::ListAppsResponse

    ListRecommendationTemplatesRequest.add_member(:assessment_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "assessmentArn"))
    ListRecommendationTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRecommendationTemplatesRequest.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, location: "querystring", location_name: "name"))
    ListRecommendationTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListRecommendationTemplatesRequest.add_member(:recommendation_template_arn, Shapes::ShapeRef.new(shape: Arn, location: "querystring", location_name: "recommendationTemplateArn"))
    ListRecommendationTemplatesRequest.add_member(:reverse_order, Shapes::ShapeRef.new(shape: BooleanOptional, location: "querystring", location_name: "reverseOrder"))
    ListRecommendationTemplatesRequest.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationTemplateStatusList, location: "querystring", location_name: "status"))
    ListRecommendationTemplatesRequest.struct_class = Types::ListRecommendationTemplatesRequest

    ListRecommendationTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRecommendationTemplatesResponse.add_member(:recommendation_templates, Shapes::ShapeRef.new(shape: RecommendationTemplateList, location_name: "recommendationTemplates"))
    ListRecommendationTemplatesResponse.struct_class = Types::ListRecommendationTemplatesResponse

    ListResiliencyPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListResiliencyPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListResiliencyPoliciesRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: EntityName, location: "querystring", location_name: "policyName"))
    ListResiliencyPoliciesRequest.struct_class = Types::ListResiliencyPoliciesRequest

    ListResiliencyPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListResiliencyPoliciesResponse.add_member(:resiliency_policies, Shapes::ShapeRef.new(shape: ResiliencyPolicies, required: true, location_name: "resiliencyPolicies"))
    ListResiliencyPoliciesResponse.struct_class = Types::ListResiliencyPoliciesResponse

    ListSopRecommendationsRequest.add_member(:assessment_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentArn"))
    ListSopRecommendationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSopRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSopRecommendationsRequest.struct_class = Types::ListSopRecommendationsRequest

    ListSopRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSopRecommendationsResponse.add_member(:sop_recommendations, Shapes::ShapeRef.new(shape: SopRecommendationList, required: true, location_name: "sopRecommendations"))
    ListSopRecommendationsResponse.struct_class = Types::ListSopRecommendationsResponse

    ListSuggestedResiliencyPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSuggestedResiliencyPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSuggestedResiliencyPoliciesRequest.struct_class = Types::ListSuggestedResiliencyPoliciesRequest

    ListSuggestedResiliencyPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSuggestedResiliencyPoliciesResponse.add_member(:resiliency_policies, Shapes::ShapeRef.new(shape: ResiliencyPolicies, required: true, location_name: "resiliencyPolicies"))
    ListSuggestedResiliencyPoliciesResponse.struct_class = Types::ListSuggestedResiliencyPoliciesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTestRecommendationsRequest.add_member(:assessment_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentArn"))
    ListTestRecommendationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTestRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestRecommendationsRequest.struct_class = Types::ListTestRecommendationsRequest

    ListTestRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestRecommendationsResponse.add_member(:test_recommendations, Shapes::ShapeRef.new(shape: TestRecommendationList, required: true, location_name: "testRecommendations"))
    ListTestRecommendationsResponse.struct_class = Types::ListTestRecommendationsResponse

    ListUnsupportedAppVersionResourcesRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    ListUnsupportedAppVersionResourcesRequest.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    ListUnsupportedAppVersionResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListUnsupportedAppVersionResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListUnsupportedAppVersionResourcesRequest.add_member(:resolution_id, Shapes::ShapeRef.new(shape: String255, location_name: "resolutionId"))
    ListUnsupportedAppVersionResourcesRequest.struct_class = Types::ListUnsupportedAppVersionResourcesRequest

    ListUnsupportedAppVersionResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListUnsupportedAppVersionResourcesResponse.add_member(:resolution_id, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "resolutionId"))
    ListUnsupportedAppVersionResourcesResponse.add_member(:unsupported_resources, Shapes::ShapeRef.new(shape: UnsupportedResourceList, required: true, location_name: "unsupportedResources"))
    ListUnsupportedAppVersionResourcesResponse.struct_class = Types::ListUnsupportedAppVersionResourcesResponse

    LogicalResourceId.add_member(:eks_source_name, Shapes::ShapeRef.new(shape: String255, location_name: "eksSourceName"))
    LogicalResourceId.add_member(:identifier, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "identifier"))
    LogicalResourceId.add_member(:logical_stack_name, Shapes::ShapeRef.new(shape: String255, location_name: "logicalStackName"))
    LogicalResourceId.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "resourceGroupName"))
    LogicalResourceId.add_member(:terraform_source_name, Shapes::ShapeRef.new(shape: String255, location_name: "terraformSourceName"))
    LogicalResourceId.struct_class = Types::LogicalResourceId

    PhysicalResource.add_member(:additional_info, Shapes::ShapeRef.new(shape: AdditionalInfoMap, location_name: "additionalInfo"))
    PhysicalResource.add_member(:app_components, Shapes::ShapeRef.new(shape: AppComponentList, location_name: "appComponents"))
    PhysicalResource.add_member(:excluded, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "excluded"))
    PhysicalResource.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, required: true, location_name: "logicalResourceId"))
    PhysicalResource.add_member(:parent_resource_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "parentResourceName"))
    PhysicalResource.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: PhysicalResourceId, required: true, location_name: "physicalResourceId"))
    PhysicalResource.add_member(:resource_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "resourceName"))
    PhysicalResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "resourceType"))
    PhysicalResource.add_member(:source_type, Shapes::ShapeRef.new(shape: ResourceSourceType, location_name: "sourceType"))
    PhysicalResource.struct_class = Types::PhysicalResource

    PhysicalResourceId.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: CustomerId, location_name: "awsAccountId"))
    PhysicalResourceId.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsRegion"))
    PhysicalResourceId.add_member(:identifier, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "identifier"))
    PhysicalResourceId.add_member(:type, Shapes::ShapeRef.new(shape: PhysicalIdentifierType, required: true, location_name: "type"))
    PhysicalResourceId.struct_class = Types::PhysicalResourceId

    PhysicalResourceList.member = Shapes::ShapeRef.new(shape: PhysicalResource)

    PublishAppVersionRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    PublishAppVersionRequest.struct_class = Types::PublishAppVersionRequest

    PublishAppVersionResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    PublishAppVersionResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, location_name: "appVersion"))
    PublishAppVersionResponse.struct_class = Types::PublishAppVersionResponse

    PutDraftAppVersionTemplateRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    PutDraftAppVersionTemplateRequest.add_member(:app_template_body, Shapes::ShapeRef.new(shape: AppTemplateBody, required: true, location_name: "appTemplateBody"))
    PutDraftAppVersionTemplateRequest.struct_class = Types::PutDraftAppVersionTemplateRequest

    PutDraftAppVersionTemplateResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "appArn"))
    PutDraftAppVersionTemplateResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, location_name: "appVersion"))
    PutDraftAppVersionTemplateResponse.struct_class = Types::PutDraftAppVersionTemplateResponse

    RecommendationCompliance.key = Shapes::ShapeRef.new(shape: DisruptionType)
    RecommendationCompliance.value = Shapes::ShapeRef.new(shape: RecommendationDisruptionCompliance)

    RecommendationDisruptionCompliance.add_member(:expected_compliance_status, Shapes::ShapeRef.new(shape: ComplianceStatus, required: true, location_name: "expectedComplianceStatus"))
    RecommendationDisruptionCompliance.add_member(:expected_rpo_description, Shapes::ShapeRef.new(shape: String500, location_name: "expectedRpoDescription"))
    RecommendationDisruptionCompliance.add_member(:expected_rpo_in_secs, Shapes::ShapeRef.new(shape: Seconds, location_name: "expectedRpoInSecs"))
    RecommendationDisruptionCompliance.add_member(:expected_rto_description, Shapes::ShapeRef.new(shape: String500, location_name: "expectedRtoDescription"))
    RecommendationDisruptionCompliance.add_member(:expected_rto_in_secs, Shapes::ShapeRef.new(shape: Seconds, location_name: "expectedRtoInSecs"))
    RecommendationDisruptionCompliance.struct_class = Types::RecommendationDisruptionCompliance

    RecommendationIdList.member = Shapes::ShapeRef.new(shape: Uuid)

    RecommendationItem.add_member(:already_implemented, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "alreadyImplemented"))
    RecommendationItem.add_member(:resource_id, Shapes::ShapeRef.new(shape: String500, location_name: "resourceId"))
    RecommendationItem.add_member(:target_account_id, Shapes::ShapeRef.new(shape: CustomerId, location_name: "targetAccountId"))
    RecommendationItem.add_member(:target_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "targetRegion"))
    RecommendationItem.struct_class = Types::RecommendationItem

    RecommendationItemList.member = Shapes::ShapeRef.new(shape: RecommendationItem)

    RecommendationTemplate.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "appArn"))
    RecommendationTemplate.add_member(:assessment_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "assessmentArn"))
    RecommendationTemplate.add_member(:end_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "endTime"))
    RecommendationTemplate.add_member(:format, Shapes::ShapeRef.new(shape: TemplateFormat, required: true, location_name: "format"))
    RecommendationTemplate.add_member(:message, Shapes::ShapeRef.new(shape: String500, location_name: "message"))
    RecommendationTemplate.add_member(:name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "name"))
    RecommendationTemplate.add_member(:needs_replacements, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "needsReplacements"))
    RecommendationTemplate.add_member(:recommendation_ids, Shapes::ShapeRef.new(shape: RecommendationIdList, location_name: "recommendationIds"))
    RecommendationTemplate.add_member(:recommendation_template_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "recommendationTemplateArn"))
    RecommendationTemplate.add_member(:recommendation_types, Shapes::ShapeRef.new(shape: RenderRecommendationTypeList, required: true, location_name: "recommendationTypes"))
    RecommendationTemplate.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "startTime"))
    RecommendationTemplate.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationTemplateStatus, required: true, location_name: "status"))
    RecommendationTemplate.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    RecommendationTemplate.add_member(:templates_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "templatesLocation"))
    RecommendationTemplate.struct_class = Types::RecommendationTemplate

    RecommendationTemplateList.member = Shapes::ShapeRef.new(shape: RecommendationTemplate)

    RecommendationTemplateStatusList.member = Shapes::ShapeRef.new(shape: RecommendationTemplateStatus)

    RemoveDraftAppVersionResourceMappingsRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    RemoveDraftAppVersionResourceMappingsRequest.add_member(:app_registry_app_names, Shapes::ShapeRef.new(shape: EntityNameList, location_name: "appRegistryAppNames"))
    RemoveDraftAppVersionResourceMappingsRequest.add_member(:eks_source_names, Shapes::ShapeRef.new(shape: String255List, location_name: "eksSourceNames"))
    RemoveDraftAppVersionResourceMappingsRequest.add_member(:logical_stack_names, Shapes::ShapeRef.new(shape: String255List, location_name: "logicalStackNames"))
    RemoveDraftAppVersionResourceMappingsRequest.add_member(:resource_group_names, Shapes::ShapeRef.new(shape: EntityNameList, location_name: "resourceGroupNames"))
    RemoveDraftAppVersionResourceMappingsRequest.add_member(:resource_names, Shapes::ShapeRef.new(shape: EntityNameList, location_name: "resourceNames"))
    RemoveDraftAppVersionResourceMappingsRequest.add_member(:terraform_source_names, Shapes::ShapeRef.new(shape: String255List, location_name: "terraformSourceNames"))
    RemoveDraftAppVersionResourceMappingsRequest.struct_class = Types::RemoveDraftAppVersionResourceMappingsRequest

    RemoveDraftAppVersionResourceMappingsResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "appArn"))
    RemoveDraftAppVersionResourceMappingsResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, location_name: "appVersion"))
    RemoveDraftAppVersionResourceMappingsResponse.struct_class = Types::RemoveDraftAppVersionResourceMappingsResponse

    RenderRecommendationTypeList.member = Shapes::ShapeRef.new(shape: RenderRecommendationType)

    ResiliencyPolicies.member = Shapes::ShapeRef.new(shape: ResiliencyPolicy)

    ResiliencyPolicy.add_member(:creation_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "creationTime"))
    ResiliencyPolicy.add_member(:data_location_constraint, Shapes::ShapeRef.new(shape: DataLocationConstraint, location_name: "dataLocationConstraint"))
    ResiliencyPolicy.add_member(:estimated_cost_tier, Shapes::ShapeRef.new(shape: EstimatedCostTier, location_name: "estimatedCostTier"))
    ResiliencyPolicy.add_member(:policy, Shapes::ShapeRef.new(shape: DisruptionPolicy, location_name: "policy"))
    ResiliencyPolicy.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    ResiliencyPolicy.add_member(:policy_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "policyDescription"))
    ResiliencyPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "policyName"))
    ResiliencyPolicy.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ResiliencyPolicy.add_member(:tier, Shapes::ShapeRef.new(shape: ResiliencyPolicyTier, location_name: "tier"))
    ResiliencyPolicy.struct_class = Types::ResiliencyPolicy

    ResiliencyScore.add_member(:disruption_score, Shapes::ShapeRef.new(shape: DisruptionResiliencyScore, required: true, location_name: "disruptionScore"))
    ResiliencyScore.add_member(:score, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "score"))
    ResiliencyScore.struct_class = Types::ResiliencyScore

    ResolveAppVersionResourcesRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    ResolveAppVersionResourcesRequest.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    ResolveAppVersionResourcesRequest.struct_class = Types::ResolveAppVersionResourcesRequest

    ResolveAppVersionResourcesResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    ResolveAppVersionResourcesResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    ResolveAppVersionResourcesResponse.add_member(:resolution_id, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "resolutionId"))
    ResolveAppVersionResourcesResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResourceResolutionStatusType, required: true, location_name: "status"))
    ResolveAppVersionResourcesResponse.struct_class = Types::ResolveAppVersionResourcesResponse

    ResourceError.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: String255, location_name: "logicalResourceId"))
    ResourceError.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: String255, location_name: "physicalResourceId"))
    ResourceError.add_member(:reason, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "reason"))
    ResourceError.struct_class = Types::ResourceError

    ResourceErrorList.member = Shapes::ShapeRef.new(shape: ResourceError)

    ResourceErrorsDetails.add_member(:has_more_errors, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "hasMoreErrors"))
    ResourceErrorsDetails.add_member(:resource_errors, Shapes::ShapeRef.new(shape: ResourceErrorList, location_name: "resourceErrors"))
    ResourceErrorsDetails.struct_class = Types::ResourceErrorsDetails

    ResourceMapping.add_member(:app_registry_app_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "appRegistryAppName"))
    ResourceMapping.add_member(:eks_source_name, Shapes::ShapeRef.new(shape: String255, location_name: "eksSourceName"))
    ResourceMapping.add_member(:logical_stack_name, Shapes::ShapeRef.new(shape: String255, location_name: "logicalStackName"))
    ResourceMapping.add_member(:mapping_type, Shapes::ShapeRef.new(shape: ResourceMappingType, required: true, location_name: "mappingType"))
    ResourceMapping.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: PhysicalResourceId, required: true, location_name: "physicalResourceId"))
    ResourceMapping.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "resourceGroupName"))
    ResourceMapping.add_member(:resource_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "resourceName"))
    ResourceMapping.add_member(:terraform_source_name, Shapes::ShapeRef.new(shape: String255, location_name: "terraformSourceName"))
    ResourceMapping.struct_class = Types::ResourceMapping

    ResourceMappingList.member = Shapes::ShapeRef.new(shape: ResourceMapping)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String500, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: String500, location_name: "bucket"))
    S3Location.add_member(:prefix, Shapes::ShapeRef.new(shape: String500, location_name: "prefix"))
    S3Location.struct_class = Types::S3Location

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String500, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SopRecommendation.add_member(:app_component_name, Shapes::ShapeRef.new(shape: EntityId, location_name: "appComponentName"))
    SopRecommendation.add_member(:description, Shapes::ShapeRef.new(shape: String500, location_name: "description"))
    SopRecommendation.add_member(:items, Shapes::ShapeRef.new(shape: RecommendationItemList, location_name: "items"))
    SopRecommendation.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "name"))
    SopRecommendation.add_member(:prerequisite, Shapes::ShapeRef.new(shape: String500, location_name: "prerequisite"))
    SopRecommendation.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "recommendationId"))
    SopRecommendation.add_member(:reference_id, Shapes::ShapeRef.new(shape: SpecReferenceId, required: true, location_name: "referenceId"))
    SopRecommendation.add_member(:service_type, Shapes::ShapeRef.new(shape: SopServiceType, required: true, location_name: "serviceType"))
    SopRecommendation.struct_class = Types::SopRecommendation

    SopRecommendationList.member = Shapes::ShapeRef.new(shape: SopRecommendation)

    StartAppAssessmentRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    StartAppAssessmentRequest.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    StartAppAssessmentRequest.add_member(:assessment_name, Shapes::ShapeRef.new(shape: EntityName, required: true, location_name: "assessmentName"))
    StartAppAssessmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    StartAppAssessmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartAppAssessmentRequest.struct_class = Types::StartAppAssessmentRequest

    StartAppAssessmentResponse.add_member(:assessment, Shapes::ShapeRef.new(shape: AppAssessment, required: true, location_name: "assessment"))
    StartAppAssessmentResponse.struct_class = Types::StartAppAssessmentResponse

    String255List.member = Shapes::ShapeRef.new(shape: String255)

    SuggestedChangesList.member = Shapes::ShapeRef.new(shape: EntityDescription)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TerraformSource.add_member(:s3_state_file_url, Shapes::ShapeRef.new(shape: S3Url, required: true, location_name: "s3StateFileUrl"))
    TerraformSource.struct_class = Types::TerraformSource

    TerraformSourceList.member = Shapes::ShapeRef.new(shape: TerraformSource)

    TestRecommendation.add_member(:app_component_name, Shapes::ShapeRef.new(shape: EntityId, location_name: "appComponentName"))
    TestRecommendation.add_member(:depends_on_alarms, Shapes::ShapeRef.new(shape: AlarmReferenceIdList, location_name: "dependsOnAlarms"))
    TestRecommendation.add_member(:description, Shapes::ShapeRef.new(shape: String500, location_name: "description"))
    TestRecommendation.add_member(:intent, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "intent"))
    TestRecommendation.add_member(:items, Shapes::ShapeRef.new(shape: RecommendationItemList, location_name: "items"))
    TestRecommendation.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "name"))
    TestRecommendation.add_member(:prerequisite, Shapes::ShapeRef.new(shape: String500, location_name: "prerequisite"))
    TestRecommendation.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: Uuid, location_name: "recommendationId"))
    TestRecommendation.add_member(:reference_id, Shapes::ShapeRef.new(shape: SpecReferenceId, required: true, location_name: "referenceId"))
    TestRecommendation.add_member(:risk, Shapes::ShapeRef.new(shape: TestRisk, location_name: "risk"))
    TestRecommendation.add_member(:type, Shapes::ShapeRef.new(shape: TestType, location_name: "type"))
    TestRecommendation.struct_class = Types::TestRecommendation

    TestRecommendationList.member = Shapes::ShapeRef.new(shape: TestRecommendation)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String500, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: "retryAfterSeconds"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UnsupportedResource.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, required: true, location_name: "logicalResourceId"))
    UnsupportedResource.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: PhysicalResourceId, required: true, location_name: "physicalResourceId"))
    UnsupportedResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "resourceType"))
    UnsupportedResource.add_member(:unsupported_resource_status, Shapes::ShapeRef.new(shape: String255, location_name: "unsupportedResourceStatus"))
    UnsupportedResource.struct_class = Types::UnsupportedResource

    UnsupportedResourceList.member = Shapes::ShapeRef.new(shape: UnsupportedResource)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAppRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    UpdateAppRequest.add_member(:assessment_schedule, Shapes::ShapeRef.new(shape: AppAssessmentScheduleType, location_name: "assessmentSchedule"))
    UpdateAppRequest.add_member(:clear_resiliency_policy_arn, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "clearResiliencyPolicyArn"))
    UpdateAppRequest.add_member(:description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "description"))
    UpdateAppRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "policyArn"))
    UpdateAppRequest.struct_class = Types::UpdateAppRequest

    UpdateAppResponse.add_member(:app, Shapes::ShapeRef.new(shape: App, required: true, location_name: "app"))
    UpdateAppResponse.struct_class = Types::UpdateAppResponse

    UpdateAppVersionAppComponentRequest.add_member(:additional_info, Shapes::ShapeRef.new(shape: AdditionalInfoMap, location_name: "additionalInfo"))
    UpdateAppVersionAppComponentRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    UpdateAppVersionAppComponentRequest.add_member(:id, Shapes::ShapeRef.new(shape: String255, required: true, location_name: "id"))
    UpdateAppVersionAppComponentRequest.add_member(:name, Shapes::ShapeRef.new(shape: String255, location_name: "name"))
    UpdateAppVersionAppComponentRequest.add_member(:type, Shapes::ShapeRef.new(shape: String255, location_name: "type"))
    UpdateAppVersionAppComponentRequest.struct_class = Types::UpdateAppVersionAppComponentRequest

    UpdateAppVersionAppComponentResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    UpdateAppVersionAppComponentResponse.add_member(:app_component, Shapes::ShapeRef.new(shape: AppComponent, location_name: "appComponent"))
    UpdateAppVersionAppComponentResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    UpdateAppVersionAppComponentResponse.struct_class = Types::UpdateAppVersionAppComponentResponse

    UpdateAppVersionRequest.add_member(:additional_info, Shapes::ShapeRef.new(shape: AdditionalInfoMap, location_name: "additionalInfo"))
    UpdateAppVersionRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    UpdateAppVersionRequest.struct_class = Types::UpdateAppVersionRequest

    UpdateAppVersionResourceRequest.add_member(:additional_info, Shapes::ShapeRef.new(shape: AdditionalInfoMap, location_name: "additionalInfo"))
    UpdateAppVersionResourceRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    UpdateAppVersionResourceRequest.add_member(:app_components, Shapes::ShapeRef.new(shape: AppComponentNameList, location_name: "appComponents"))
    UpdateAppVersionResourceRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: CustomerId, location_name: "awsAccountId"))
    UpdateAppVersionResourceRequest.add_member(:aws_region, Shapes::ShapeRef.new(shape: AwsRegion, location_name: "awsRegion"))
    UpdateAppVersionResourceRequest.add_member(:excluded, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "excluded"))
    UpdateAppVersionResourceRequest.add_member(:logical_resource_id, Shapes::ShapeRef.new(shape: LogicalResourceId, location_name: "logicalResourceId"))
    UpdateAppVersionResourceRequest.add_member(:physical_resource_id, Shapes::ShapeRef.new(shape: String2048, location_name: "physicalResourceId"))
    UpdateAppVersionResourceRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "resourceName"))
    UpdateAppVersionResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: String255, location_name: "resourceType"))
    UpdateAppVersionResourceRequest.struct_class = Types::UpdateAppVersionResourceRequest

    UpdateAppVersionResourceResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    UpdateAppVersionResourceResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    UpdateAppVersionResourceResponse.add_member(:physical_resource, Shapes::ShapeRef.new(shape: PhysicalResource, location_name: "physicalResource"))
    UpdateAppVersionResourceResponse.struct_class = Types::UpdateAppVersionResourceResponse

    UpdateAppVersionResponse.add_member(:additional_info, Shapes::ShapeRef.new(shape: AdditionalInfoMap, location_name: "additionalInfo"))
    UpdateAppVersionResponse.add_member(:app_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "appArn"))
    UpdateAppVersionResponse.add_member(:app_version, Shapes::ShapeRef.new(shape: EntityVersion, required: true, location_name: "appVersion"))
    UpdateAppVersionResponse.struct_class = Types::UpdateAppVersionResponse

    UpdateResiliencyPolicyRequest.add_member(:data_location_constraint, Shapes::ShapeRef.new(shape: DataLocationConstraint, location_name: "dataLocationConstraint"))
    UpdateResiliencyPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: DisruptionPolicy, location_name: "policy"))
    UpdateResiliencyPolicyRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "policyArn"))
    UpdateResiliencyPolicyRequest.add_member(:policy_description, Shapes::ShapeRef.new(shape: EntityDescription, location_name: "policyDescription"))
    UpdateResiliencyPolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: EntityName, location_name: "policyName"))
    UpdateResiliencyPolicyRequest.add_member(:tier, Shapes::ShapeRef.new(shape: ResiliencyPolicyTier, location_name: "tier"))
    UpdateResiliencyPolicyRequest.struct_class = Types::UpdateResiliencyPolicyRequest

    UpdateResiliencyPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResiliencyPolicy, required: true, location_name: "policy"))
    UpdateResiliencyPolicyResponse.struct_class = Types::UpdateResiliencyPolicyResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String500, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-04-30"

      api.metadata = {
        "apiVersion" => "2020-04-30",
        "endpointPrefix" => "resiliencehub",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Resilience Hub",
        "serviceId" => "resiliencehub",
        "signatureVersion" => "v4",
        "signingName" => "resiliencehub",
        "uid" => "resiliencehub-2020-04-30",
      }

      api.add_operation(:add_draft_app_version_resource_mappings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddDraftAppVersionResourceMappings"
        o.http_method = "POST"
        o.http_request_uri = "/add-draft-app-version-resource-mappings"
        o.input = Shapes::ShapeRef.new(shape: AddDraftAppVersionResourceMappingsRequest)
        o.output = Shapes::ShapeRef.new(shape: AddDraftAppVersionResourceMappingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApp"
        o.http_method = "POST"
        o.http_request_uri = "/create-app"
        o.input = Shapes::ShapeRef.new(shape: CreateAppRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_app_version_app_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppVersionAppComponent"
        o.http_method = "POST"
        o.http_request_uri = "/create-app-version-app-component"
        o.input = Shapes::ShapeRef.new(shape: CreateAppVersionAppComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppVersionAppComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_app_version_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAppVersionResource"
        o.http_method = "POST"
        o.http_request_uri = "/create-app-version-resource"
        o.input = Shapes::ShapeRef.new(shape: CreateAppVersionResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppVersionResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_recommendation_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRecommendationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/create-recommendation-template"
        o.input = Shapes::ShapeRef.new(shape: CreateRecommendationTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRecommendationTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_resiliency_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResiliencyPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/create-resiliency-policy"
        o.input = Shapes::ShapeRef.new(shape: CreateResiliencyPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResiliencyPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApp"
        o.http_method = "POST"
        o.http_request_uri = "/delete-app"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_app_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppAssessment"
        o.http_method = "POST"
        o.http_request_uri = "/delete-app-assessment"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppAssessmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_app_input_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppInputSource"
        o.http_method = "POST"
        o.http_request_uri = "/delete-app-input-source"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppInputSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppInputSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_app_version_app_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppVersionAppComponent"
        o.http_method = "POST"
        o.http_request_uri = "/delete-app-version-app-component"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppVersionAppComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppVersionAppComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_app_version_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAppVersionResource"
        o.http_method = "POST"
        o.http_request_uri = "/delete-app-version-resource"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppVersionResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppVersionResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_recommendation_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRecommendationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/delete-recommendation-template"
        o.input = Shapes::ShapeRef.new(shape: DeleteRecommendationTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRecommendationTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_resiliency_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResiliencyPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/delete-resiliency-policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteResiliencyPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteResiliencyPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApp"
        o.http_method = "POST"
        o.http_request_uri = "/describe-app"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_app_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppAssessment"
        o.http_method = "POST"
        o.http_request_uri = "/describe-app-assessment"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppAssessmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_app_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppVersion"
        o.http_method = "POST"
        o.http_request_uri = "/describe-app-version"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_app_version_app_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppVersionAppComponent"
        o.http_method = "POST"
        o.http_request_uri = "/describe-app-version-app-component"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppVersionAppComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppVersionAppComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_app_version_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppVersionResource"
        o.http_method = "POST"
        o.http_request_uri = "/describe-app-version-resource"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppVersionResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppVersionResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_app_version_resources_resolution_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppVersionResourcesResolutionStatus"
        o.http_method = "POST"
        o.http_request_uri = "/describe-app-version-resources-resolution-status"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppVersionResourcesResolutionStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppVersionResourcesResolutionStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_app_version_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAppVersionTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/describe-app-version-template"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppVersionTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppVersionTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_draft_app_version_resources_import_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDraftAppVersionResourcesImportStatus"
        o.http_method = "POST"
        o.http_request_uri = "/describe-draft-app-version-resources-import-status"
        o.input = Shapes::ShapeRef.new(shape: DescribeDraftAppVersionResourcesImportStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDraftAppVersionResourcesImportStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_resiliency_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeResiliencyPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/describe-resiliency-policy"
        o.input = Shapes::ShapeRef.new(shape: DescribeResiliencyPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeResiliencyPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:import_resources_to_draft_app_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportResourcesToDraftAppVersion"
        o.http_method = "POST"
        o.http_request_uri = "/import-resources-to-draft-app-version"
        o.input = Shapes::ShapeRef.new(shape: ImportResourcesToDraftAppVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportResourcesToDraftAppVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_alarm_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAlarmRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/list-alarm-recommendations"
        o.input = Shapes::ShapeRef.new(shape: ListAlarmRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAlarmRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_assessments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppAssessments"
        o.http_method = "GET"
        o.http_request_uri = "/list-app-assessments"
        o.input = Shapes::ShapeRef.new(shape: ListAppAssessmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppAssessmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_component_compliances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppComponentCompliances"
        o.http_method = "POST"
        o.http_request_uri = "/list-app-component-compliances"
        o.input = Shapes::ShapeRef.new(shape: ListAppComponentCompliancesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppComponentCompliancesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_component_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppComponentRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/list-app-component-recommendations"
        o.input = Shapes::ShapeRef.new(shape: ListAppComponentRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppComponentRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_input_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppInputSources"
        o.http_method = "POST"
        o.http_request_uri = "/list-app-input-sources"
        o.input = Shapes::ShapeRef.new(shape: ListAppInputSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppInputSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_version_app_components, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppVersionAppComponents"
        o.http_method = "POST"
        o.http_request_uri = "/list-app-version-app-components"
        o.input = Shapes::ShapeRef.new(shape: ListAppVersionAppComponentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppVersionAppComponentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_version_resource_mappings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppVersionResourceMappings"
        o.http_method = "POST"
        o.http_request_uri = "/list-app-version-resource-mappings"
        o.input = Shapes::ShapeRef.new(shape: ListAppVersionResourceMappingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppVersionResourceMappingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_version_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppVersionResources"
        o.http_method = "POST"
        o.http_request_uri = "/list-app-version-resources"
        o.input = Shapes::ShapeRef.new(shape: ListAppVersionResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppVersionResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_app_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAppVersions"
        o.http_method = "POST"
        o.http_request_uri = "/list-app-versions"
        o.input = Shapes::ShapeRef.new(shape: ListAppVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppVersionsResponse)
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

      api.add_operation(:list_apps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApps"
        o.http_method = "GET"
        o.http_request_uri = "/list-apps"
        o.input = Shapes::ShapeRef.new(shape: ListAppsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recommendation_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecommendationTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/list-recommendation-templates"
        o.input = Shapes::ShapeRef.new(shape: ListRecommendationTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecommendationTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resiliency_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResiliencyPolicies"
        o.http_method = "GET"
        o.http_request_uri = "/list-resiliency-policies"
        o.input = Shapes::ShapeRef.new(shape: ListResiliencyPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResiliencyPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sop_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSopRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/list-sop-recommendations"
        o.input = Shapes::ShapeRef.new(shape: ListSopRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSopRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_suggested_resiliency_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSuggestedResiliencyPolicies"
        o.http_method = "GET"
        o.http_request_uri = "/list-suggested-resiliency-policies"
        o.input = Shapes::ShapeRef.new(shape: ListSuggestedResiliencyPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSuggestedResiliencyPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_test_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTestRecommendations"
        o.http_method = "POST"
        o.http_request_uri = "/list-test-recommendations"
        o.input = Shapes::ShapeRef.new(shape: ListTestRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_unsupported_app_version_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUnsupportedAppVersionResources"
        o.http_method = "POST"
        o.http_request_uri = "/list-unsupported-app-version-resources"
        o.input = Shapes::ShapeRef.new(shape: ListUnsupportedAppVersionResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUnsupportedAppVersionResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:publish_app_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PublishAppVersion"
        o.http_method = "POST"
        o.http_request_uri = "/publish-app-version"
        o.input = Shapes::ShapeRef.new(shape: PublishAppVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: PublishAppVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_draft_app_version_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDraftAppVersionTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/put-draft-app-version-template"
        o.input = Shapes::ShapeRef.new(shape: PutDraftAppVersionTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDraftAppVersionTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:remove_draft_app_version_resource_mappings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveDraftAppVersionResourceMappings"
        o.http_method = "POST"
        o.http_request_uri = "/remove-draft-app-version-resource-mappings"
        o.input = Shapes::ShapeRef.new(shape: RemoveDraftAppVersionResourceMappingsRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveDraftAppVersionResourceMappingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:resolve_app_version_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResolveAppVersionResources"
        o.http_method = "POST"
        o.http_request_uri = "/resolve-app-version-resources"
        o.input = Shapes::ShapeRef.new(shape: ResolveAppVersionResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ResolveAppVersionResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_app_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAppAssessment"
        o.http_method = "POST"
        o.http_request_uri = "/start-app-assessment"
        o.input = Shapes::ShapeRef.new(shape: StartAppAssessmentRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAppAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApp"
        o.http_method = "POST"
        o.http_request_uri = "/update-app"
        o.input = Shapes::ShapeRef.new(shape: UpdateAppRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAppResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_app_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAppVersion"
        o.http_method = "POST"
        o.http_request_uri = "/update-app-version"
        o.input = Shapes::ShapeRef.new(shape: UpdateAppVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAppVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_app_version_app_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAppVersionAppComponent"
        o.http_method = "POST"
        o.http_request_uri = "/update-app-version-app-component"
        o.input = Shapes::ShapeRef.new(shape: UpdateAppVersionAppComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAppVersionAppComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_app_version_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAppVersionResource"
        o.http_method = "POST"
        o.http_request_uri = "/update-app-version-resource"
        o.input = Shapes::ShapeRef.new(shape: UpdateAppVersionResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAppVersionResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_resiliency_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResiliencyPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/update-resiliency-policy"
        o.input = Shapes::ShapeRef.new(shape: UpdateResiliencyPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResiliencyPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
