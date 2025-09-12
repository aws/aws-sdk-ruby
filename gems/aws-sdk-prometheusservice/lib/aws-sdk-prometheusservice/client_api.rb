# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PrometheusService
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AlertManagerDefinitionData = Shapes::BlobShape.new(name: 'AlertManagerDefinitionData')
    AlertManagerDefinitionDescription = Shapes::StructureShape.new(name: 'AlertManagerDefinitionDescription')
    AlertManagerDefinitionStatus = Shapes::StructureShape.new(name: 'AlertManagerDefinitionStatus')
    AlertManagerDefinitionStatusCode = Shapes::StringShape.new(name: 'AlertManagerDefinitionStatusCode')
    AmpConfiguration = Shapes::StructureShape.new(name: 'AmpConfiguration')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    CloudWatchLogDestination = Shapes::StructureShape.new(name: 'CloudWatchLogDestination')
    ClusterArn = Shapes::StringShape.new(name: 'ClusterArn')
    ComponentConfig = Shapes::StructureShape.new(name: 'ComponentConfig')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAlertManagerDefinitionRequest = Shapes::StructureShape.new(name: 'CreateAlertManagerDefinitionRequest')
    CreateAlertManagerDefinitionResponse = Shapes::StructureShape.new(name: 'CreateAlertManagerDefinitionResponse')
    CreateLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'CreateLoggingConfigurationRequest')
    CreateLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'CreateLoggingConfigurationResponse')
    CreateQueryLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'CreateQueryLoggingConfigurationRequest')
    CreateQueryLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'CreateQueryLoggingConfigurationResponse')
    CreateRuleGroupsNamespaceRequest = Shapes::StructureShape.new(name: 'CreateRuleGroupsNamespaceRequest')
    CreateRuleGroupsNamespaceResponse = Shapes::StructureShape.new(name: 'CreateRuleGroupsNamespaceResponse')
    CreateScraperRequest = Shapes::StructureShape.new(name: 'CreateScraperRequest')
    CreateScraperResponse = Shapes::StructureShape.new(name: 'CreateScraperResponse')
    CreateWorkspaceRequest = Shapes::StructureShape.new(name: 'CreateWorkspaceRequest')
    CreateWorkspaceResponse = Shapes::StructureShape.new(name: 'CreateWorkspaceResponse')
    DeleteAlertManagerDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteAlertManagerDefinitionRequest')
    DeleteLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteLoggingConfigurationRequest')
    DeleteQueryLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteQueryLoggingConfigurationRequest')
    DeleteResourcePolicyRequest = Shapes::StructureShape.new(name: 'DeleteResourcePolicyRequest')
    DeleteRuleGroupsNamespaceRequest = Shapes::StructureShape.new(name: 'DeleteRuleGroupsNamespaceRequest')
    DeleteScraperLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteScraperLoggingConfigurationRequest')
    DeleteScraperRequest = Shapes::StructureShape.new(name: 'DeleteScraperRequest')
    DeleteScraperResponse = Shapes::StructureShape.new(name: 'DeleteScraperResponse')
    DeleteWorkspaceRequest = Shapes::StructureShape.new(name: 'DeleteWorkspaceRequest')
    DescribeAlertManagerDefinitionRequest = Shapes::StructureShape.new(name: 'DescribeAlertManagerDefinitionRequest')
    DescribeAlertManagerDefinitionResponse = Shapes::StructureShape.new(name: 'DescribeAlertManagerDefinitionResponse')
    DescribeLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeLoggingConfigurationRequest')
    DescribeLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeLoggingConfigurationResponse')
    DescribeQueryLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeQueryLoggingConfigurationRequest')
    DescribeQueryLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeQueryLoggingConfigurationResponse')
    DescribeResourcePolicyRequest = Shapes::StructureShape.new(name: 'DescribeResourcePolicyRequest')
    DescribeResourcePolicyResponse = Shapes::StructureShape.new(name: 'DescribeResourcePolicyResponse')
    DescribeRuleGroupsNamespaceRequest = Shapes::StructureShape.new(name: 'DescribeRuleGroupsNamespaceRequest')
    DescribeRuleGroupsNamespaceResponse = Shapes::StructureShape.new(name: 'DescribeRuleGroupsNamespaceResponse')
    DescribeScraperLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeScraperLoggingConfigurationRequest')
    DescribeScraperLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeScraperLoggingConfigurationResponse')
    DescribeScraperRequest = Shapes::StructureShape.new(name: 'DescribeScraperRequest')
    DescribeScraperResponse = Shapes::StructureShape.new(name: 'DescribeScraperResponse')
    DescribeWorkspaceConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeWorkspaceConfigurationRequest')
    DescribeWorkspaceConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeWorkspaceConfigurationResponse')
    DescribeWorkspaceRequest = Shapes::StructureShape.new(name: 'DescribeWorkspaceRequest')
    DescribeWorkspaceResponse = Shapes::StructureShape.new(name: 'DescribeWorkspaceResponse')
    Destination = Shapes::UnionShape.new(name: 'Destination')
    EksConfiguration = Shapes::StructureShape.new(name: 'EksConfiguration')
    FilterKey = Shapes::StringShape.new(name: 'FilterKey')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    GetDefaultScraperConfigurationRequest = Shapes::StructureShape.new(name: 'GetDefaultScraperConfigurationRequest')
    GetDefaultScraperConfigurationResponse = Shapes::StructureShape.new(name: 'GetDefaultScraperConfigurationResponse')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    LabelName = Shapes::StringShape.new(name: 'LabelName')
    LabelSet = Shapes::MapShape.new(name: 'LabelSet')
    LabelValue = Shapes::StringShape.new(name: 'LabelValue')
    LimitsPerLabelSet = Shapes::StructureShape.new(name: 'LimitsPerLabelSet')
    LimitsPerLabelSetEntry = Shapes::StructureShape.new(name: 'LimitsPerLabelSetEntry')
    LimitsPerLabelSetEntryMaxSeriesLong = Shapes::IntegerShape.new(name: 'LimitsPerLabelSetEntryMaxSeriesLong')
    LimitsPerLabelSetList = Shapes::ListShape.new(name: 'LimitsPerLabelSetList')
    ListRuleGroupsNamespacesRequest = Shapes::StructureShape.new(name: 'ListRuleGroupsNamespacesRequest')
    ListRuleGroupsNamespacesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRuleGroupsNamespacesRequestMaxResultsInteger')
    ListRuleGroupsNamespacesResponse = Shapes::StructureShape.new(name: 'ListRuleGroupsNamespacesResponse')
    ListScrapersRequest = Shapes::StructureShape.new(name: 'ListScrapersRequest')
    ListScrapersRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListScrapersRequestMaxResultsInteger')
    ListScrapersResponse = Shapes::StructureShape.new(name: 'ListScrapersResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWorkspacesRequest = Shapes::StructureShape.new(name: 'ListWorkspacesRequest')
    ListWorkspacesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListWorkspacesRequestMaxResultsInteger')
    ListWorkspacesResponse = Shapes::StructureShape.new(name: 'ListWorkspacesResponse')
    LogGroupArn = Shapes::StringShape.new(name: 'LogGroupArn')
    LoggingConfigurationMetadata = Shapes::StructureShape.new(name: 'LoggingConfigurationMetadata')
    LoggingConfigurationStatus = Shapes::StructureShape.new(name: 'LoggingConfigurationStatus')
    LoggingConfigurationStatusCode = Shapes::StringShape.new(name: 'LoggingConfigurationStatusCode')
    LoggingDestination = Shapes::StructureShape.new(name: 'LoggingDestination')
    LoggingDestinations = Shapes::ListShape.new(name: 'LoggingDestinations')
    LoggingFilter = Shapes::StructureShape.new(name: 'LoggingFilter')
    LoggingFilterQspThresholdLong = Shapes::IntegerShape.new(name: 'LoggingFilterQspThresholdLong')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PutAlertManagerDefinitionRequest = Shapes::StructureShape.new(name: 'PutAlertManagerDefinitionRequest')
    PutAlertManagerDefinitionResponse = Shapes::StructureShape.new(name: 'PutAlertManagerDefinitionResponse')
    PutResourcePolicyRequest = Shapes::StructureShape.new(name: 'PutResourcePolicyRequest')
    PutResourcePolicyResponse = Shapes::StructureShape.new(name: 'PutResourcePolicyResponse')
    PutRuleGroupsNamespaceRequest = Shapes::StructureShape.new(name: 'PutRuleGroupsNamespaceRequest')
    PutRuleGroupsNamespaceResponse = Shapes::StructureShape.new(name: 'PutRuleGroupsNamespaceResponse')
    QueryLoggingConfigurationMetadata = Shapes::StructureShape.new(name: 'QueryLoggingConfigurationMetadata')
    QueryLoggingConfigurationStatus = Shapes::StructureShape.new(name: 'QueryLoggingConfigurationStatus')
    QueryLoggingConfigurationStatusCode = Shapes::StringShape.new(name: 'QueryLoggingConfigurationStatusCode')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleConfiguration = Shapes::StructureShape.new(name: 'RoleConfiguration')
    RuleGroupsNamespaceArn = Shapes::StringShape.new(name: 'RuleGroupsNamespaceArn')
    RuleGroupsNamespaceData = Shapes::BlobShape.new(name: 'RuleGroupsNamespaceData')
    RuleGroupsNamespaceDescription = Shapes::StructureShape.new(name: 'RuleGroupsNamespaceDescription')
    RuleGroupsNamespaceName = Shapes::StringShape.new(name: 'RuleGroupsNamespaceName')
    RuleGroupsNamespaceStatus = Shapes::StructureShape.new(name: 'RuleGroupsNamespaceStatus')
    RuleGroupsNamespaceStatusCode = Shapes::StringShape.new(name: 'RuleGroupsNamespaceStatusCode')
    RuleGroupsNamespaceSummary = Shapes::StructureShape.new(name: 'RuleGroupsNamespaceSummary')
    RuleGroupsNamespaceSummaryList = Shapes::ListShape.new(name: 'RuleGroupsNamespaceSummaryList')
    ScrapeConfiguration = Shapes::UnionShape.new(name: 'ScrapeConfiguration')
    ScraperAlias = Shapes::StringShape.new(name: 'ScraperAlias')
    ScraperArn = Shapes::StringShape.new(name: 'ScraperArn')
    ScraperComponent = Shapes::StructureShape.new(name: 'ScraperComponent')
    ScraperComponentType = Shapes::StringShape.new(name: 'ScraperComponentType')
    ScraperComponents = Shapes::ListShape.new(name: 'ScraperComponents')
    ScraperDescription = Shapes::StructureShape.new(name: 'ScraperDescription')
    ScraperFilters = Shapes::MapShape.new(name: 'ScraperFilters')
    ScraperId = Shapes::StringShape.new(name: 'ScraperId')
    ScraperLoggingConfigurationStatus = Shapes::StructureShape.new(name: 'ScraperLoggingConfigurationStatus')
    ScraperLoggingConfigurationStatusCode = Shapes::StringShape.new(name: 'ScraperLoggingConfigurationStatusCode')
    ScraperLoggingDestination = Shapes::UnionShape.new(name: 'ScraperLoggingDestination')
    ScraperStatus = Shapes::StructureShape.new(name: 'ScraperStatus')
    ScraperStatusCode = Shapes::StringShape.new(name: 'ScraperStatusCode')
    ScraperSummary = Shapes::StructureShape.new(name: 'ScraperSummary')
    ScraperSummaryList = Shapes::ListShape.new(name: 'ScraperSummaryList')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Source = Shapes::UnionShape.new(name: 'Source')
    StatusReason = Shapes::StringShape.new(name: 'StatusReason')
    String = Shapes::StringShape.new(name: 'String')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateLoggingConfigurationRequest')
    UpdateLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateLoggingConfigurationResponse')
    UpdateQueryLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateQueryLoggingConfigurationRequest')
    UpdateQueryLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateQueryLoggingConfigurationResponse')
    UpdateScraperLoggingConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateScraperLoggingConfigurationRequest')
    UpdateScraperLoggingConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateScraperLoggingConfigurationResponse')
    UpdateScraperRequest = Shapes::StructureShape.new(name: 'UpdateScraperRequest')
    UpdateScraperResponse = Shapes::StructureShape.new(name: 'UpdateScraperResponse')
    UpdateWorkspaceAliasRequest = Shapes::StructureShape.new(name: 'UpdateWorkspaceAliasRequest')
    UpdateWorkspaceConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateWorkspaceConfigurationRequest')
    UpdateWorkspaceConfigurationRequestRetentionPeriodInDaysInteger = Shapes::IntegerShape.new(name: 'UpdateWorkspaceConfigurationRequestRetentionPeriodInDaysInteger')
    UpdateWorkspaceConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateWorkspaceConfigurationResponse')
    Uri = Shapes::StringShape.new(name: 'Uri')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    WorkspaceAlias = Shapes::StringShape.new(name: 'WorkspaceAlias')
    WorkspaceArn = Shapes::StringShape.new(name: 'WorkspaceArn')
    WorkspaceConfigurationDescription = Shapes::StructureShape.new(name: 'WorkspaceConfigurationDescription')
    WorkspaceConfigurationDescriptionRetentionPeriodInDaysInteger = Shapes::IntegerShape.new(name: 'WorkspaceConfigurationDescriptionRetentionPeriodInDaysInteger')
    WorkspaceConfigurationStatus = Shapes::StructureShape.new(name: 'WorkspaceConfigurationStatus')
    WorkspaceConfigurationStatusCode = Shapes::StringShape.new(name: 'WorkspaceConfigurationStatusCode')
    WorkspaceDescription = Shapes::StructureShape.new(name: 'WorkspaceDescription')
    WorkspaceId = Shapes::StringShape.new(name: 'WorkspaceId')
    WorkspacePolicyStatusCode = Shapes::StringShape.new(name: 'WorkspacePolicyStatusCode')
    WorkspaceStatus = Shapes::StructureShape.new(name: 'WorkspaceStatus')
    WorkspaceStatusCode = Shapes::StringShape.new(name: 'WorkspaceStatusCode')
    WorkspaceSummary = Shapes::StructureShape.new(name: 'WorkspaceSummary')
    WorkspaceSummaryList = Shapes::ListShape.new(name: 'WorkspaceSummaryList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AlertManagerDefinitionDescription.add_member(:status, Shapes::ShapeRef.new(shape: AlertManagerDefinitionStatus, required: true, location_name: "status"))
    AlertManagerDefinitionDescription.add_member(:data, Shapes::ShapeRef.new(shape: AlertManagerDefinitionData, required: true, location_name: "data"))
    AlertManagerDefinitionDescription.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AlertManagerDefinitionDescription.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "modifiedAt"))
    AlertManagerDefinitionDescription.struct_class = Types::AlertManagerDefinitionDescription

    AlertManagerDefinitionStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: AlertManagerDefinitionStatusCode, required: true, location_name: "statusCode"))
    AlertManagerDefinitionStatus.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    AlertManagerDefinitionStatus.struct_class = Types::AlertManagerDefinitionStatus

    AmpConfiguration.add_member(:workspace_arn, Shapes::ShapeRef.new(shape: WorkspaceArn, required: true, location_name: "workspaceArn"))
    AmpConfiguration.struct_class = Types::AmpConfiguration

    CloudWatchLogDestination.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, required: true, location_name: "logGroupArn"))
    CloudWatchLogDestination.struct_class = Types::CloudWatchLogDestination

    ComponentConfig.add_member(:options, Shapes::ShapeRef.new(shape: StringMap, location_name: "options"))
    ComponentConfig.struct_class = Types::ComponentConfig

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateAlertManagerDefinitionRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    CreateAlertManagerDefinitionRequest.add_member(:data, Shapes::ShapeRef.new(shape: AlertManagerDefinitionData, required: true, location_name: "data"))
    CreateAlertManagerDefinitionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateAlertManagerDefinitionRequest.struct_class = Types::CreateAlertManagerDefinitionRequest

    CreateAlertManagerDefinitionResponse.add_member(:status, Shapes::ShapeRef.new(shape: AlertManagerDefinitionStatus, required: true, location_name: "status"))
    CreateAlertManagerDefinitionResponse.struct_class = Types::CreateAlertManagerDefinitionResponse

    CreateLoggingConfigurationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    CreateLoggingConfigurationRequest.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, required: true, location_name: "logGroupArn"))
    CreateLoggingConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateLoggingConfigurationRequest.struct_class = Types::CreateLoggingConfigurationRequest

    CreateLoggingConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: LoggingConfigurationStatus, required: true, location_name: "status"))
    CreateLoggingConfigurationResponse.struct_class = Types::CreateLoggingConfigurationResponse

    CreateQueryLoggingConfigurationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    CreateQueryLoggingConfigurationRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: LoggingDestinations, required: true, location_name: "destinations"))
    CreateQueryLoggingConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateQueryLoggingConfigurationRequest.struct_class = Types::CreateQueryLoggingConfigurationRequest

    CreateQueryLoggingConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: QueryLoggingConfigurationStatus, required: true, location_name: "status"))
    CreateQueryLoggingConfigurationResponse.struct_class = Types::CreateQueryLoggingConfigurationResponse

    CreateRuleGroupsNamespaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    CreateRuleGroupsNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, required: true, location_name: "name"))
    CreateRuleGroupsNamespaceRequest.add_member(:data, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceData, required: true, location_name: "data"))
    CreateRuleGroupsNamespaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRuleGroupsNamespaceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateRuleGroupsNamespaceRequest.struct_class = Types::CreateRuleGroupsNamespaceRequest

    CreateRuleGroupsNamespaceResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, required: true, location_name: "name"))
    CreateRuleGroupsNamespaceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceArn, required: true, location_name: "arn"))
    CreateRuleGroupsNamespaceResponse.add_member(:status, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatus, required: true, location_name: "status"))
    CreateRuleGroupsNamespaceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateRuleGroupsNamespaceResponse.struct_class = Types::CreateRuleGroupsNamespaceResponse

    CreateScraperRequest.add_member(:alias, Shapes::ShapeRef.new(shape: ScraperAlias, location_name: "alias"))
    CreateScraperRequest.add_member(:scrape_configuration, Shapes::ShapeRef.new(shape: ScrapeConfiguration, required: true, location_name: "scrapeConfiguration"))
    CreateScraperRequest.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    CreateScraperRequest.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "destination"))
    CreateScraperRequest.add_member(:role_configuration, Shapes::ShapeRef.new(shape: RoleConfiguration, location_name: "roleConfiguration"))
    CreateScraperRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateScraperRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateScraperRequest.struct_class = Types::CreateScraperRequest

    CreateScraperResponse.add_member(:scraper_id, Shapes::ShapeRef.new(shape: ScraperId, required: true, location_name: "scraperId"))
    CreateScraperResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ScraperArn, required: true, location_name: "arn"))
    CreateScraperResponse.add_member(:status, Shapes::ShapeRef.new(shape: ScraperStatus, required: true, location_name: "status"))
    CreateScraperResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateScraperResponse.struct_class = Types::CreateScraperResponse

    CreateWorkspaceRequest.add_member(:alias, Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: "alias"))
    CreateWorkspaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateWorkspaceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateWorkspaceRequest.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateWorkspaceRequest.struct_class = Types::CreateWorkspaceRequest

    CreateWorkspaceResponse.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "workspaceId"))
    CreateWorkspaceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WorkspaceArn, required: true, location_name: "arn"))
    CreateWorkspaceResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkspaceStatus, required: true, location_name: "status"))
    CreateWorkspaceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateWorkspaceResponse.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateWorkspaceResponse.struct_class = Types::CreateWorkspaceResponse

    DeleteAlertManagerDefinitionRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DeleteAlertManagerDefinitionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteAlertManagerDefinitionRequest.struct_class = Types::DeleteAlertManagerDefinitionRequest

    DeleteLoggingConfigurationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DeleteLoggingConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteLoggingConfigurationRequest.struct_class = Types::DeleteLoggingConfigurationRequest

    DeleteQueryLoggingConfigurationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DeleteQueryLoggingConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteQueryLoggingConfigurationRequest.struct_class = Types::DeleteQueryLoggingConfigurationRequest

    DeleteResourcePolicyRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DeleteResourcePolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteResourcePolicyRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "revisionId"))
    DeleteResourcePolicyRequest.struct_class = Types::DeleteResourcePolicyRequest

    DeleteRuleGroupsNamespaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DeleteRuleGroupsNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, required: true, location: "uri", location_name: "name"))
    DeleteRuleGroupsNamespaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteRuleGroupsNamespaceRequest.struct_class = Types::DeleteRuleGroupsNamespaceRequest

    DeleteScraperLoggingConfigurationRequest.add_member(:scraper_id, Shapes::ShapeRef.new(shape: ScraperId, required: true, location: "uri", location_name: "scraperId"))
    DeleteScraperLoggingConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteScraperLoggingConfigurationRequest.struct_class = Types::DeleteScraperLoggingConfigurationRequest

    DeleteScraperRequest.add_member(:scraper_id, Shapes::ShapeRef.new(shape: ScraperId, required: true, location: "uri", location_name: "scraperId"))
    DeleteScraperRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteScraperRequest.struct_class = Types::DeleteScraperRequest

    DeleteScraperResponse.add_member(:scraper_id, Shapes::ShapeRef.new(shape: ScraperId, required: true, location_name: "scraperId"))
    DeleteScraperResponse.add_member(:status, Shapes::ShapeRef.new(shape: ScraperStatus, required: true, location_name: "status"))
    DeleteScraperResponse.struct_class = Types::DeleteScraperResponse

    DeleteWorkspaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DeleteWorkspaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    DeleteWorkspaceRequest.struct_class = Types::DeleteWorkspaceRequest

    DescribeAlertManagerDefinitionRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DescribeAlertManagerDefinitionRequest.struct_class = Types::DescribeAlertManagerDefinitionRequest

    DescribeAlertManagerDefinitionResponse.add_member(:alert_manager_definition, Shapes::ShapeRef.new(shape: AlertManagerDefinitionDescription, required: true, location_name: "alertManagerDefinition"))
    DescribeAlertManagerDefinitionResponse.struct_class = Types::DescribeAlertManagerDefinitionResponse

    DescribeLoggingConfigurationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DescribeLoggingConfigurationRequest.struct_class = Types::DescribeLoggingConfigurationRequest

    DescribeLoggingConfigurationResponse.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: LoggingConfigurationMetadata, required: true, location_name: "loggingConfiguration"))
    DescribeLoggingConfigurationResponse.struct_class = Types::DescribeLoggingConfigurationResponse

    DescribeQueryLoggingConfigurationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DescribeQueryLoggingConfigurationRequest.struct_class = Types::DescribeQueryLoggingConfigurationRequest

    DescribeQueryLoggingConfigurationResponse.add_member(:query_logging_configuration, Shapes::ShapeRef.new(shape: QueryLoggingConfigurationMetadata, required: true, location_name: "queryLoggingConfiguration"))
    DescribeQueryLoggingConfigurationResponse.struct_class = Types::DescribeQueryLoggingConfigurationResponse

    DescribeResourcePolicyRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DescribeResourcePolicyRequest.struct_class = Types::DescribeResourcePolicyRequest

    DescribeResourcePolicyResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: String, required: true, location_name: "policyDocument"))
    DescribeResourcePolicyResponse.add_member(:policy_status, Shapes::ShapeRef.new(shape: WorkspacePolicyStatusCode, required: true, location_name: "policyStatus"))
    DescribeResourcePolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "revisionId"))
    DescribeResourcePolicyResponse.struct_class = Types::DescribeResourcePolicyResponse

    DescribeRuleGroupsNamespaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DescribeRuleGroupsNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, required: true, location: "uri", location_name: "name"))
    DescribeRuleGroupsNamespaceRequest.struct_class = Types::DescribeRuleGroupsNamespaceRequest

    DescribeRuleGroupsNamespaceResponse.add_member(:rule_groups_namespace, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceDescription, required: true, location_name: "ruleGroupsNamespace"))
    DescribeRuleGroupsNamespaceResponse.struct_class = Types::DescribeRuleGroupsNamespaceResponse

    DescribeScraperLoggingConfigurationRequest.add_member(:scraper_id, Shapes::ShapeRef.new(shape: ScraperId, required: true, location: "uri", location_name: "scraperId"))
    DescribeScraperLoggingConfigurationRequest.struct_class = Types::DescribeScraperLoggingConfigurationRequest

    DescribeScraperLoggingConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ScraperLoggingConfigurationStatus, required: true, location_name: "status"))
    DescribeScraperLoggingConfigurationResponse.add_member(:scraper_id, Shapes::ShapeRef.new(shape: ScraperId, required: true, location_name: "scraperId"))
    DescribeScraperLoggingConfigurationResponse.add_member(:logging_destination, Shapes::ShapeRef.new(shape: ScraperLoggingDestination, required: true, location_name: "loggingDestination"))
    DescribeScraperLoggingConfigurationResponse.add_member(:scraper_components, Shapes::ShapeRef.new(shape: ScraperComponents, required: true, location_name: "scraperComponents"))
    DescribeScraperLoggingConfigurationResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "modifiedAt"))
    DescribeScraperLoggingConfigurationResponse.struct_class = Types::DescribeScraperLoggingConfigurationResponse

    DescribeScraperRequest.add_member(:scraper_id, Shapes::ShapeRef.new(shape: ScraperId, required: true, location: "uri", location_name: "scraperId"))
    DescribeScraperRequest.struct_class = Types::DescribeScraperRequest

    DescribeScraperResponse.add_member(:scraper, Shapes::ShapeRef.new(shape: ScraperDescription, required: true, location_name: "scraper"))
    DescribeScraperResponse.struct_class = Types::DescribeScraperResponse

    DescribeWorkspaceConfigurationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DescribeWorkspaceConfigurationRequest.struct_class = Types::DescribeWorkspaceConfigurationRequest

    DescribeWorkspaceConfigurationResponse.add_member(:workspace_configuration, Shapes::ShapeRef.new(shape: WorkspaceConfigurationDescription, required: true, location_name: "workspaceConfiguration"))
    DescribeWorkspaceConfigurationResponse.struct_class = Types::DescribeWorkspaceConfigurationResponse

    DescribeWorkspaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    DescribeWorkspaceRequest.struct_class = Types::DescribeWorkspaceRequest

    DescribeWorkspaceResponse.add_member(:workspace, Shapes::ShapeRef.new(shape: WorkspaceDescription, required: true, location_name: "workspace"))
    DescribeWorkspaceResponse.struct_class = Types::DescribeWorkspaceResponse

    Destination.add_member(:amp_configuration, Shapes::ShapeRef.new(shape: AmpConfiguration, location_name: "ampConfiguration"))
    Destination.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Destination.add_member_subclass(:amp_configuration, Types::Destination::AmpConfiguration)
    Destination.add_member_subclass(:unknown, Types::Destination::Unknown)
    Destination.struct_class = Types::Destination

    EksConfiguration.add_member(:cluster_arn, Shapes::ShapeRef.new(shape: ClusterArn, required: true, location_name: "clusterArn"))
    EksConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds"))
    EksConfiguration.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "subnetIds"))
    EksConfiguration.struct_class = Types::EksConfiguration

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    GetDefaultScraperConfigurationRequest.struct_class = Types::GetDefaultScraperConfigurationRequest

    GetDefaultScraperConfigurationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "configuration"))
    GetDefaultScraperConfigurationResponse.struct_class = Types::GetDefaultScraperConfigurationResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    LabelSet.key = Shapes::ShapeRef.new(shape: LabelName)
    LabelSet.value = Shapes::ShapeRef.new(shape: LabelValue)

    LimitsPerLabelSet.add_member(:limits, Shapes::ShapeRef.new(shape: LimitsPerLabelSetEntry, required: true, location_name: "limits"))
    LimitsPerLabelSet.add_member(:label_set, Shapes::ShapeRef.new(shape: LabelSet, required: true, location_name: "labelSet"))
    LimitsPerLabelSet.struct_class = Types::LimitsPerLabelSet

    LimitsPerLabelSetEntry.add_member(:max_series, Shapes::ShapeRef.new(shape: LimitsPerLabelSetEntryMaxSeriesLong, location_name: "maxSeries"))
    LimitsPerLabelSetEntry.struct_class = Types::LimitsPerLabelSetEntry

    LimitsPerLabelSetList.member = Shapes::ShapeRef.new(shape: LimitsPerLabelSet)

    ListRuleGroupsNamespacesRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    ListRuleGroupsNamespacesRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, location: "querystring", location_name: "name"))
    ListRuleGroupsNamespacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListRuleGroupsNamespacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRuleGroupsNamespacesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRuleGroupsNamespacesRequest.struct_class = Types::ListRuleGroupsNamespacesRequest

    ListRuleGroupsNamespacesResponse.add_member(:rule_groups_namespaces, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceSummaryList, required: true, location_name: "ruleGroupsNamespaces"))
    ListRuleGroupsNamespacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRuleGroupsNamespacesResponse.struct_class = Types::ListRuleGroupsNamespacesResponse

    ListScrapersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ScraperFilters, location: "querystring", location_name: "filters"))
    ListScrapersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListScrapersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListScrapersRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListScrapersRequest.struct_class = Types::ListScrapersRequest

    ListScrapersResponse.add_member(:scrapers, Shapes::ShapeRef.new(shape: ScraperSummaryList, required: true, location_name: "scrapers"))
    ListScrapersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListScrapersResponse.struct_class = Types::ListScrapersResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListWorkspacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListWorkspacesRequest.add_member(:alias, Shapes::ShapeRef.new(shape: WorkspaceAlias, location: "querystring", location_name: "alias"))
    ListWorkspacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListWorkspacesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListWorkspacesRequest.struct_class = Types::ListWorkspacesRequest

    ListWorkspacesResponse.add_member(:workspaces, Shapes::ShapeRef.new(shape: WorkspaceSummaryList, required: true, location_name: "workspaces"))
    ListWorkspacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWorkspacesResponse.struct_class = Types::ListWorkspacesResponse

    LoggingConfigurationMetadata.add_member(:status, Shapes::ShapeRef.new(shape: LoggingConfigurationStatus, required: true, location_name: "status"))
    LoggingConfigurationMetadata.add_member(:workspace, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "workspace"))
    LoggingConfigurationMetadata.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, required: true, location_name: "logGroupArn"))
    LoggingConfigurationMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    LoggingConfigurationMetadata.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "modifiedAt"))
    LoggingConfigurationMetadata.struct_class = Types::LoggingConfigurationMetadata

    LoggingConfigurationStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: LoggingConfigurationStatusCode, required: true, location_name: "statusCode"))
    LoggingConfigurationStatus.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    LoggingConfigurationStatus.struct_class = Types::LoggingConfigurationStatus

    LoggingDestination.add_member(:cloud_watch_logs, Shapes::ShapeRef.new(shape: CloudWatchLogDestination, required: true, location_name: "cloudWatchLogs"))
    LoggingDestination.add_member(:filters, Shapes::ShapeRef.new(shape: LoggingFilter, required: true, location_name: "filters"))
    LoggingDestination.struct_class = Types::LoggingDestination

    LoggingDestinations.member = Shapes::ShapeRef.new(shape: LoggingDestination)

    LoggingFilter.add_member(:qsp_threshold, Shapes::ShapeRef.new(shape: LoggingFilterQspThresholdLong, required: true, location_name: "qspThreshold"))
    LoggingFilter.struct_class = Types::LoggingFilter

    PutAlertManagerDefinitionRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    PutAlertManagerDefinitionRequest.add_member(:data, Shapes::ShapeRef.new(shape: AlertManagerDefinitionData, required: true, location_name: "data"))
    PutAlertManagerDefinitionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    PutAlertManagerDefinitionRequest.struct_class = Types::PutAlertManagerDefinitionRequest

    PutAlertManagerDefinitionResponse.add_member(:status, Shapes::ShapeRef.new(shape: AlertManagerDefinitionStatus, required: true, location_name: "status"))
    PutAlertManagerDefinitionResponse.struct_class = Types::PutAlertManagerDefinitionResponse

    PutResourcePolicyRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    PutResourcePolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: String, required: true, location_name: "policyDocument"))
    PutResourcePolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    PutResourcePolicyRequest.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, location_name: "revisionId"))
    PutResourcePolicyRequest.struct_class = Types::PutResourcePolicyRequest

    PutResourcePolicyResponse.add_member(:policy_status, Shapes::ShapeRef.new(shape: WorkspacePolicyStatusCode, required: true, location_name: "policyStatus"))
    PutResourcePolicyResponse.add_member(:revision_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "revisionId"))
    PutResourcePolicyResponse.struct_class = Types::PutResourcePolicyResponse

    PutRuleGroupsNamespaceRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    PutRuleGroupsNamespaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, required: true, location: "uri", location_name: "name"))
    PutRuleGroupsNamespaceRequest.add_member(:data, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceData, required: true, location_name: "data"))
    PutRuleGroupsNamespaceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    PutRuleGroupsNamespaceRequest.struct_class = Types::PutRuleGroupsNamespaceRequest

    PutRuleGroupsNamespaceResponse.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, required: true, location_name: "name"))
    PutRuleGroupsNamespaceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceArn, required: true, location_name: "arn"))
    PutRuleGroupsNamespaceResponse.add_member(:status, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatus, required: true, location_name: "status"))
    PutRuleGroupsNamespaceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    PutRuleGroupsNamespaceResponse.struct_class = Types::PutRuleGroupsNamespaceResponse

    QueryLoggingConfigurationMetadata.add_member(:status, Shapes::ShapeRef.new(shape: QueryLoggingConfigurationStatus, required: true, location_name: "status"))
    QueryLoggingConfigurationMetadata.add_member(:workspace, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "workspace"))
    QueryLoggingConfigurationMetadata.add_member(:destinations, Shapes::ShapeRef.new(shape: LoggingDestinations, required: true, location_name: "destinations"))
    QueryLoggingConfigurationMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    QueryLoggingConfigurationMetadata.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "modifiedAt"))
    QueryLoggingConfigurationMetadata.struct_class = Types::QueryLoggingConfigurationMetadata

    QueryLoggingConfigurationStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: QueryLoggingConfigurationStatusCode, required: true, location_name: "statusCode"))
    QueryLoggingConfigurationStatus.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    QueryLoggingConfigurationStatus.struct_class = Types::QueryLoggingConfigurationStatus

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RoleConfiguration.add_member(:source_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "sourceRoleArn"))
    RoleConfiguration.add_member(:target_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "targetRoleArn"))
    RoleConfiguration.struct_class = Types::RoleConfiguration

    RuleGroupsNamespaceDescription.add_member(:arn, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceArn, required: true, location_name: "arn"))
    RuleGroupsNamespaceDescription.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, required: true, location_name: "name"))
    RuleGroupsNamespaceDescription.add_member(:status, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatus, required: true, location_name: "status"))
    RuleGroupsNamespaceDescription.add_member(:data, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceData, required: true, location_name: "data"))
    RuleGroupsNamespaceDescription.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    RuleGroupsNamespaceDescription.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "modifiedAt"))
    RuleGroupsNamespaceDescription.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    RuleGroupsNamespaceDescription.struct_class = Types::RuleGroupsNamespaceDescription

    RuleGroupsNamespaceStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatusCode, required: true, location_name: "statusCode"))
    RuleGroupsNamespaceStatus.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    RuleGroupsNamespaceStatus.struct_class = Types::RuleGroupsNamespaceStatus

    RuleGroupsNamespaceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceArn, required: true, location_name: "arn"))
    RuleGroupsNamespaceSummary.add_member(:name, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceName, required: true, location_name: "name"))
    RuleGroupsNamespaceSummary.add_member(:status, Shapes::ShapeRef.new(shape: RuleGroupsNamespaceStatus, required: true, location_name: "status"))
    RuleGroupsNamespaceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    RuleGroupsNamespaceSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "modifiedAt"))
    RuleGroupsNamespaceSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    RuleGroupsNamespaceSummary.struct_class = Types::RuleGroupsNamespaceSummary

    RuleGroupsNamespaceSummaryList.member = Shapes::ShapeRef.new(shape: RuleGroupsNamespaceSummary)

    ScrapeConfiguration.add_member(:configuration_blob, Shapes::ShapeRef.new(shape: Blob, location_name: "configurationBlob"))
    ScrapeConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ScrapeConfiguration.add_member_subclass(:configuration_blob, Types::ScrapeConfiguration::ConfigurationBlob)
    ScrapeConfiguration.add_member_subclass(:unknown, Types::ScrapeConfiguration::Unknown)
    ScrapeConfiguration.struct_class = Types::ScrapeConfiguration

    ScraperComponent.add_member(:type, Shapes::ShapeRef.new(shape: ScraperComponentType, required: true, location_name: "type"))
    ScraperComponent.add_member(:config, Shapes::ShapeRef.new(shape: ComponentConfig, location_name: "config"))
    ScraperComponent.struct_class = Types::ScraperComponent

    ScraperComponents.member = Shapes::ShapeRef.new(shape: ScraperComponent)

    ScraperDescription.add_member(:alias, Shapes::ShapeRef.new(shape: ScraperAlias, location_name: "alias"))
    ScraperDescription.add_member(:scraper_id, Shapes::ShapeRef.new(shape: ScraperId, required: true, location_name: "scraperId"))
    ScraperDescription.add_member(:arn, Shapes::ShapeRef.new(shape: ScraperArn, required: true, location_name: "arn"))
    ScraperDescription.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    ScraperDescription.add_member(:status, Shapes::ShapeRef.new(shape: ScraperStatus, required: true, location_name: "status"))
    ScraperDescription.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ScraperDescription.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    ScraperDescription.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ScraperDescription.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    ScraperDescription.add_member(:scrape_configuration, Shapes::ShapeRef.new(shape: ScrapeConfiguration, required: true, location_name: "scrapeConfiguration"))
    ScraperDescription.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    ScraperDescription.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "destination"))
    ScraperDescription.add_member(:role_configuration, Shapes::ShapeRef.new(shape: RoleConfiguration, location_name: "roleConfiguration"))
    ScraperDescription.struct_class = Types::ScraperDescription

    ScraperFilters.key = Shapes::ShapeRef.new(shape: FilterKey)
    ScraperFilters.value = Shapes::ShapeRef.new(shape: FilterValues)

    ScraperLoggingConfigurationStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: ScraperLoggingConfigurationStatusCode, required: true, location_name: "statusCode"))
    ScraperLoggingConfigurationStatus.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    ScraperLoggingConfigurationStatus.struct_class = Types::ScraperLoggingConfigurationStatus

    ScraperLoggingDestination.add_member(:cloud_watch_logs, Shapes::ShapeRef.new(shape: CloudWatchLogDestination, location_name: "cloudWatchLogs"))
    ScraperLoggingDestination.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ScraperLoggingDestination.add_member_subclass(:cloud_watch_logs, Types::ScraperLoggingDestination::CloudWatchLogs)
    ScraperLoggingDestination.add_member_subclass(:unknown, Types::ScraperLoggingDestination::Unknown)
    ScraperLoggingDestination.struct_class = Types::ScraperLoggingDestination

    ScraperStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: ScraperStatusCode, required: true, location_name: "statusCode"))
    ScraperStatus.struct_class = Types::ScraperStatus

    ScraperSummary.add_member(:alias, Shapes::ShapeRef.new(shape: ScraperAlias, location_name: "alias"))
    ScraperSummary.add_member(:scraper_id, Shapes::ShapeRef.new(shape: ScraperId, required: true, location_name: "scraperId"))
    ScraperSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ScraperArn, required: true, location_name: "arn"))
    ScraperSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "roleArn"))
    ScraperSummary.add_member(:status, Shapes::ShapeRef.new(shape: ScraperStatus, required: true, location_name: "status"))
    ScraperSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ScraperSummary.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastModifiedAt"))
    ScraperSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ScraperSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    ScraperSummary.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    ScraperSummary.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "destination"))
    ScraperSummary.add_member(:role_configuration, Shapes::ShapeRef.new(shape: RoleConfiguration, location_name: "roleConfiguration"))
    ScraperSummary.struct_class = Types::ScraperSummary

    ScraperSummaryList.member = Shapes::ShapeRef.new(shape: ScraperSummary)

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Source.add_member(:eks_configuration, Shapes::ShapeRef.new(shape: EksConfiguration, location_name: "eksConfiguration"))
    Source.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Source.add_member_subclass(:eks_configuration, Types::Source::EksConfiguration)
    Source.add_member_subclass(:unknown, Types::Source::Unknown)
    Source.struct_class = Types::Source

    StringMap.key = Shapes::ShapeRef.new(shape: String)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateLoggingConfigurationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    UpdateLoggingConfigurationRequest.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: LogGroupArn, required: true, location_name: "logGroupArn"))
    UpdateLoggingConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateLoggingConfigurationRequest.struct_class = Types::UpdateLoggingConfigurationRequest

    UpdateLoggingConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: LoggingConfigurationStatus, required: true, location_name: "status"))
    UpdateLoggingConfigurationResponse.struct_class = Types::UpdateLoggingConfigurationResponse

    UpdateQueryLoggingConfigurationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    UpdateQueryLoggingConfigurationRequest.add_member(:destinations, Shapes::ShapeRef.new(shape: LoggingDestinations, required: true, location_name: "destinations"))
    UpdateQueryLoggingConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateQueryLoggingConfigurationRequest.struct_class = Types::UpdateQueryLoggingConfigurationRequest

    UpdateQueryLoggingConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: QueryLoggingConfigurationStatus, required: true, location_name: "status"))
    UpdateQueryLoggingConfigurationResponse.struct_class = Types::UpdateQueryLoggingConfigurationResponse

    UpdateScraperLoggingConfigurationRequest.add_member(:scraper_id, Shapes::ShapeRef.new(shape: ScraperId, required: true, location: "uri", location_name: "scraperId"))
    UpdateScraperLoggingConfigurationRequest.add_member(:logging_destination, Shapes::ShapeRef.new(shape: ScraperLoggingDestination, required: true, location_name: "loggingDestination"))
    UpdateScraperLoggingConfigurationRequest.add_member(:scraper_components, Shapes::ShapeRef.new(shape: ScraperComponents, location_name: "scraperComponents"))
    UpdateScraperLoggingConfigurationRequest.struct_class = Types::UpdateScraperLoggingConfigurationRequest

    UpdateScraperLoggingConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: ScraperLoggingConfigurationStatus, required: true, location_name: "status"))
    UpdateScraperLoggingConfigurationResponse.struct_class = Types::UpdateScraperLoggingConfigurationResponse

    UpdateScraperRequest.add_member(:scraper_id, Shapes::ShapeRef.new(shape: ScraperId, required: true, location: "uri", location_name: "scraperId"))
    UpdateScraperRequest.add_member(:alias, Shapes::ShapeRef.new(shape: ScraperAlias, location_name: "alias"))
    UpdateScraperRequest.add_member(:scrape_configuration, Shapes::ShapeRef.new(shape: ScrapeConfiguration, location_name: "scrapeConfiguration"))
    UpdateScraperRequest.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, location_name: "destination"))
    UpdateScraperRequest.add_member(:role_configuration, Shapes::ShapeRef.new(shape: RoleConfiguration, location_name: "roleConfiguration"))
    UpdateScraperRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateScraperRequest.struct_class = Types::UpdateScraperRequest

    UpdateScraperResponse.add_member(:scraper_id, Shapes::ShapeRef.new(shape: ScraperId, required: true, location_name: "scraperId"))
    UpdateScraperResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ScraperArn, required: true, location_name: "arn"))
    UpdateScraperResponse.add_member(:status, Shapes::ShapeRef.new(shape: ScraperStatus, required: true, location_name: "status"))
    UpdateScraperResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateScraperResponse.struct_class = Types::UpdateScraperResponse

    UpdateWorkspaceAliasRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    UpdateWorkspaceAliasRequest.add_member(:alias, Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: "alias"))
    UpdateWorkspaceAliasRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateWorkspaceAliasRequest.struct_class = Types::UpdateWorkspaceAliasRequest

    UpdateWorkspaceConfigurationRequest.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location: "uri", location_name: "workspaceId"))
    UpdateWorkspaceConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateWorkspaceConfigurationRequest.add_member(:limits_per_label_set, Shapes::ShapeRef.new(shape: LimitsPerLabelSetList, location_name: "limitsPerLabelSet"))
    UpdateWorkspaceConfigurationRequest.add_member(:retention_period_in_days, Shapes::ShapeRef.new(shape: UpdateWorkspaceConfigurationRequestRetentionPeriodInDaysInteger, location_name: "retentionPeriodInDays"))
    UpdateWorkspaceConfigurationRequest.struct_class = Types::UpdateWorkspaceConfigurationRequest

    UpdateWorkspaceConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkspaceConfigurationStatus, required: true, location_name: "status"))
    UpdateWorkspaceConfigurationResponse.struct_class = Types::UpdateWorkspaceConfigurationResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    WorkspaceConfigurationDescription.add_member(:status, Shapes::ShapeRef.new(shape: WorkspaceConfigurationStatus, required: true, location_name: "status"))
    WorkspaceConfigurationDescription.add_member(:limits_per_label_set, Shapes::ShapeRef.new(shape: LimitsPerLabelSetList, location_name: "limitsPerLabelSet"))
    WorkspaceConfigurationDescription.add_member(:retention_period_in_days, Shapes::ShapeRef.new(shape: WorkspaceConfigurationDescriptionRetentionPeriodInDaysInteger, location_name: "retentionPeriodInDays"))
    WorkspaceConfigurationDescription.struct_class = Types::WorkspaceConfigurationDescription

    WorkspaceConfigurationStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: WorkspaceConfigurationStatusCode, required: true, location_name: "statusCode"))
    WorkspaceConfigurationStatus.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    WorkspaceConfigurationStatus.struct_class = Types::WorkspaceConfigurationStatus

    WorkspaceDescription.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "workspaceId"))
    WorkspaceDescription.add_member(:alias, Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: "alias"))
    WorkspaceDescription.add_member(:arn, Shapes::ShapeRef.new(shape: WorkspaceArn, required: true, location_name: "arn"))
    WorkspaceDescription.add_member(:status, Shapes::ShapeRef.new(shape: WorkspaceStatus, required: true, location_name: "status"))
    WorkspaceDescription.add_member(:prometheus_endpoint, Shapes::ShapeRef.new(shape: Uri, location_name: "prometheusEndpoint"))
    WorkspaceDescription.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    WorkspaceDescription.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    WorkspaceDescription.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    WorkspaceDescription.struct_class = Types::WorkspaceDescription

    WorkspaceStatus.add_member(:status_code, Shapes::ShapeRef.new(shape: WorkspaceStatusCode, required: true, location_name: "statusCode"))
    WorkspaceStatus.struct_class = Types::WorkspaceStatus

    WorkspaceSummary.add_member(:workspace_id, Shapes::ShapeRef.new(shape: WorkspaceId, required: true, location_name: "workspaceId"))
    WorkspaceSummary.add_member(:alias, Shapes::ShapeRef.new(shape: WorkspaceAlias, location_name: "alias"))
    WorkspaceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: WorkspaceArn, required: true, location_name: "arn"))
    WorkspaceSummary.add_member(:status, Shapes::ShapeRef.new(shape: WorkspaceStatus, required: true, location_name: "status"))
    WorkspaceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    WorkspaceSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    WorkspaceSummary.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    WorkspaceSummary.struct_class = Types::WorkspaceSummary

    WorkspaceSummaryList.member = Shapes::ShapeRef.new(shape: WorkspaceSummary)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-08-01"

      api.metadata = {
        "apiVersion" => "2020-08-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "aps",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon Prometheus Service",
        "serviceId" => "amp",
        "signatureVersion" => "v4",
        "signingName" => "aps",
        "uid" => "amp-2020-08-01",
      }

      api.add_operation(:create_alert_manager_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAlertManagerDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/alertmanager/definition"
        o.input = Shapes::ShapeRef.new(shape: CreateAlertManagerDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAlertManagerDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLoggingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/logging"
        o.input = Shapes::ShapeRef.new(shape: CreateLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_query_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQueryLoggingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/logging/query"
        o.input = Shapes::ShapeRef.new(shape: CreateQueryLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQueryLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_rule_groups_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRuleGroupsNamespace"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/rulegroupsnamespaces"
        o.input = Shapes::ShapeRef.new(shape: CreateRuleGroupsNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRuleGroupsNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_scraper, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScraper"
        o.http_method = "POST"
        o.http_request_uri = "/scrapers"
        o.input = Shapes::ShapeRef.new(shape: CreateScraperRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateScraperResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkspace"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_alert_manager_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAlertManagerDefinition"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}/alertmanager/definition"
        o.input = Shapes::ShapeRef.new(shape: DeleteAlertManagerDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLoggingConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}/logging"
        o.input = Shapes::ShapeRef.new(shape: DeleteLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_query_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQueryLoggingConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}/logging/query"
        o.input = Shapes::ShapeRef.new(shape: DeleteQueryLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourcePolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_rule_groups_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRuleGroupsNamespace"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRuleGroupsNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_scraper, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScraper"
        o.http_method = "DELETE"
        o.http_request_uri = "/scrapers/{scraperId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteScraperRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteScraperResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_scraper_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScraperLoggingConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/scrapers/{scraperId}/logging-configuration"
        o.input = Shapes::ShapeRef.new(shape: DeleteScraperLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkspace"
        o.http_method = "DELETE"
        o.http_request_uri = "/workspaces/{workspaceId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_alert_manager_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAlertManagerDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}/alertmanager/definition"
        o.input = Shapes::ShapeRef.new(shape: DescribeAlertManagerDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAlertManagerDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoggingConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}/logging"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_query_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeQueryLoggingConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}/logging/query"
        o.input = Shapes::ShapeRef.new(shape: DescribeQueryLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeQueryLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeResourcePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}/policy"
        o.input = Shapes::ShapeRef.new(shape: DescribeResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_rule_groups_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRuleGroupsNamespace"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRuleGroupsNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRuleGroupsNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_scraper, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScraper"
        o.http_method = "GET"
        o.http_request_uri = "/scrapers/{scraperId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeScraperRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeScraperResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_scraper_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScraperLoggingConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/scrapers/{scraperId}/logging-configuration"
        o.input = Shapes::ShapeRef.new(shape: DescribeScraperLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeScraperLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_workspace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkspace"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkspaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkspaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_workspace_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeWorkspaceConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}/configuration"
        o.input = Shapes::ShapeRef.new(shape: DescribeWorkspaceConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeWorkspaceConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_default_scraper_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDefaultScraperConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/scraperconfiguration"
        o.input = Shapes::ShapeRef.new(shape: GetDefaultScraperConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDefaultScraperConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_rule_groups_namespaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRuleGroupsNamespaces"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces/{workspaceId}/rulegroupsnamespaces"
        o.input = Shapes::ShapeRef.new(shape: ListRuleGroupsNamespacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRuleGroupsNamespacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_scrapers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListScrapers"
        o.http_method = "GET"
        o.http_request_uri = "/scrapers"
        o.input = Shapes::ShapeRef.new(shape: ListScrapersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListScrapersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_workspaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkspaces"
        o.http_method = "GET"
        o.http_request_uri = "/workspaces"
        o.input = Shapes::ShapeRef.new(shape: ListWorkspacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkspacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_alert_manager_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAlertManagerDefinition"
        o.http_method = "PUT"
        o.http_request_uri = "/workspaces/{workspaceId}/alertmanager/definition"
        o.input = Shapes::ShapeRef.new(shape: PutAlertManagerDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: PutAlertManagerDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/workspaces/{workspaceId}/policy"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_rule_groups_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRuleGroupsNamespace"
        o.http_method = "PUT"
        o.http_request_uri = "/workspaces/{workspaceId}/rulegroupsnamespaces/{name}"
        o.input = Shapes::ShapeRef.new(shape: PutRuleGroupsNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRuleGroupsNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLoggingConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/workspaces/{workspaceId}/logging"
        o.input = Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_query_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateQueryLoggingConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/workspaces/{workspaceId}/logging/query"
        o.input = Shapes::ShapeRef.new(shape: UpdateQueryLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateQueryLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_scraper, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateScraper"
        o.http_method = "PUT"
        o.http_request_uri = "/scrapers/{scraperId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateScraperRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateScraperResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_scraper_logging_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateScraperLoggingConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/scrapers/{scraperId}/logging-configuration"
        o.input = Shapes::ShapeRef.new(shape: UpdateScraperLoggingConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateScraperLoggingConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_workspace_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkspaceAlias"
        o.http_method = "POST"
        o.http_request_uri = "/workspaces/{workspaceId}/alias"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkspaceAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:update_workspace_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkspaceConfiguration"
        o.http_method = "PATCH"
        o.http_request_uri = "/workspaces/{workspaceId}/configuration"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkspaceConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkspaceConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
