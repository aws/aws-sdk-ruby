# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AccessAnalyzer
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActionList = Shapes::ListShape.new(name: 'ActionList')
    AnalyzedResource = Shapes::StructureShape.new(name: 'AnalyzedResource')
    AnalyzedResourceSummary = Shapes::StructureShape.new(name: 'AnalyzedResourceSummary')
    AnalyzedResourcesList = Shapes::ListShape.new(name: 'AnalyzedResourcesList')
    AnalyzerArn = Shapes::StringShape.new(name: 'AnalyzerArn')
    AnalyzerStatus = Shapes::StringShape.new(name: 'AnalyzerStatus')
    AnalyzerSummary = Shapes::StructureShape.new(name: 'AnalyzerSummary')
    AnalyzersList = Shapes::ListShape.new(name: 'AnalyzersList')
    ApplyArchiveRuleRequest = Shapes::StructureShape.new(name: 'ApplyArchiveRuleRequest')
    ArchiveRuleSummary = Shapes::StructureShape.new(name: 'ArchiveRuleSummary')
    ArchiveRulesList = Shapes::ListShape.new(name: 'ArchiveRulesList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ConditionKeyMap = Shapes::MapShape.new(name: 'ConditionKeyMap')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAnalyzerRequest = Shapes::StructureShape.new(name: 'CreateAnalyzerRequest')
    CreateAnalyzerResponse = Shapes::StructureShape.new(name: 'CreateAnalyzerResponse')
    CreateArchiveRuleRequest = Shapes::StructureShape.new(name: 'CreateArchiveRuleRequest')
    Criterion = Shapes::StructureShape.new(name: 'Criterion')
    DeleteAnalyzerRequest = Shapes::StructureShape.new(name: 'DeleteAnalyzerRequest')
    DeleteArchiveRuleRequest = Shapes::StructureShape.new(name: 'DeleteArchiveRuleRequest')
    FilterCriteriaMap = Shapes::MapShape.new(name: 'FilterCriteriaMap')
    Finding = Shapes::StructureShape.new(name: 'Finding')
    FindingId = Shapes::StringShape.new(name: 'FindingId')
    FindingIdList = Shapes::ListShape.new(name: 'FindingIdList')
    FindingSource = Shapes::StructureShape.new(name: 'FindingSource')
    FindingSourceDetail = Shapes::StructureShape.new(name: 'FindingSourceDetail')
    FindingSourceList = Shapes::ListShape.new(name: 'FindingSourceList')
    FindingSourceType = Shapes::StringShape.new(name: 'FindingSourceType')
    FindingStatus = Shapes::StringShape.new(name: 'FindingStatus')
    FindingStatusUpdate = Shapes::StringShape.new(name: 'FindingStatusUpdate')
    FindingSummary = Shapes::StructureShape.new(name: 'FindingSummary')
    FindingsList = Shapes::ListShape.new(name: 'FindingsList')
    GetAnalyzedResourceRequest = Shapes::StructureShape.new(name: 'GetAnalyzedResourceRequest')
    GetAnalyzedResourceResponse = Shapes::StructureShape.new(name: 'GetAnalyzedResourceResponse')
    GetAnalyzerRequest = Shapes::StructureShape.new(name: 'GetAnalyzerRequest')
    GetAnalyzerResponse = Shapes::StructureShape.new(name: 'GetAnalyzerResponse')
    GetArchiveRuleRequest = Shapes::StructureShape.new(name: 'GetArchiveRuleRequest')
    GetArchiveRuleResponse = Shapes::StructureShape.new(name: 'GetArchiveRuleResponse')
    GetFindingRequest = Shapes::StructureShape.new(name: 'GetFindingRequest')
    GetFindingResponse = Shapes::StructureShape.new(name: 'GetFindingResponse')
    InlineArchiveRule = Shapes::StructureShape.new(name: 'InlineArchiveRule')
    InlineArchiveRulesList = Shapes::ListShape.new(name: 'InlineArchiveRulesList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListAnalyzedResourcesRequest = Shapes::StructureShape.new(name: 'ListAnalyzedResourcesRequest')
    ListAnalyzedResourcesResponse = Shapes::StructureShape.new(name: 'ListAnalyzedResourcesResponse')
    ListAnalyzersRequest = Shapes::StructureShape.new(name: 'ListAnalyzersRequest')
    ListAnalyzersResponse = Shapes::StructureShape.new(name: 'ListAnalyzersResponse')
    ListArchiveRulesRequest = Shapes::StructureShape.new(name: 'ListArchiveRulesRequest')
    ListArchiveRulesResponse = Shapes::StructureShape.new(name: 'ListArchiveRulesResponse')
    ListFindingsRequest = Shapes::StructureShape.new(name: 'ListFindingsRequest')
    ListFindingsResponse = Shapes::StructureShape.new(name: 'ListFindingsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Name = Shapes::StringShape.new(name: 'Name')
    OrderBy = Shapes::StringShape.new(name: 'OrderBy')
    PrincipalMap = Shapes::MapShape.new(name: 'PrincipalMap')
    ReasonCode = Shapes::StringShape.new(name: 'ReasonCode')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SharedViaList = Shapes::ListShape.new(name: 'SharedViaList')
    SortCriteria = Shapes::StructureShape.new(name: 'SortCriteria')
    StartResourceScanRequest = Shapes::StructureShape.new(name: 'StartResourceScanRequest')
    StatusReason = Shapes::StructureShape.new(name: 'StatusReason')
    String = Shapes::StringShape.new(name: 'String')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    Token = Shapes::StringShape.new(name: 'Token')
    Type = Shapes::StringShape.new(name: 'Type')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateArchiveRuleRequest = Shapes::StructureShape.new(name: 'UpdateArchiveRuleRequest')
    UpdateFindingsRequest = Shapes::StructureShape.new(name: 'UpdateFindingsRequest')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    ValueList = Shapes::ListShape.new(name: 'ValueList')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActionList.member = Shapes::ShapeRef.new(shape: String)

    AnalyzedResource.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, location_name: "actions"))
    AnalyzedResource.add_member(:analyzed_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "analyzedAt"))
    AnalyzedResource.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AnalyzedResource.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    AnalyzedResource.add_member(:is_public, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isPublic"))
    AnalyzedResource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    AnalyzedResource.add_member(:resource_owner_account, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceOwnerAccount"))
    AnalyzedResource.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    AnalyzedResource.add_member(:shared_via, Shapes::ShapeRef.new(shape: SharedViaList, location_name: "sharedVia"))
    AnalyzedResource.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, location_name: "status"))
    AnalyzedResource.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    AnalyzedResource.struct_class = Types::AnalyzedResource

    AnalyzedResourceSummary.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    AnalyzedResourceSummary.add_member(:resource_owner_account, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceOwnerAccount"))
    AnalyzedResourceSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    AnalyzedResourceSummary.struct_class = Types::AnalyzedResourceSummary

    AnalyzedResourcesList.member = Shapes::ShapeRef.new(shape: AnalyzedResourceSummary)

    AnalyzerSummary.add_member(:arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "arn"))
    AnalyzerSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    AnalyzerSummary.add_member(:last_resource_analyzed, Shapes::ShapeRef.new(shape: String, location_name: "lastResourceAnalyzed"))
    AnalyzerSummary.add_member(:last_resource_analyzed_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastResourceAnalyzedAt"))
    AnalyzerSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    AnalyzerSummary.add_member(:status, Shapes::ShapeRef.new(shape: AnalyzerStatus, required: true, location_name: "status"))
    AnalyzerSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    AnalyzerSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    AnalyzerSummary.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "type"))
    AnalyzerSummary.struct_class = Types::AnalyzerSummary

    AnalyzersList.member = Shapes::ShapeRef.new(shape: AnalyzerSummary)

    ApplyArchiveRuleRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "analyzerArn"))
    ApplyArchiveRuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    ApplyArchiveRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "ruleName"))
    ApplyArchiveRuleRequest.struct_class = Types::ApplyArchiveRuleRequest

    ArchiveRuleSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ArchiveRuleSummary.add_member(:filter, Shapes::ShapeRef.new(shape: FilterCriteriaMap, required: true, location_name: "filter"))
    ArchiveRuleSummary.add_member(:rule_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "ruleName"))
    ArchiveRuleSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    ArchiveRuleSummary.struct_class = Types::ArchiveRuleSummary

    ArchiveRulesList.member = Shapes::ShapeRef.new(shape: ArchiveRuleSummary)

    ConditionKeyMap.key = Shapes::ShapeRef.new(shape: String)
    ConditionKeyMap.value = Shapes::ShapeRef.new(shape: String)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateAnalyzerRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "analyzerName"))
    CreateAnalyzerRequest.add_member(:archive_rules, Shapes::ShapeRef.new(shape: InlineArchiveRulesList, location_name: "archiveRules"))
    CreateAnalyzerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAnalyzerRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateAnalyzerRequest.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location_name: "type"))
    CreateAnalyzerRequest.struct_class = Types::CreateAnalyzerRequest

    CreateAnalyzerResponse.add_member(:arn, Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: "arn"))
    CreateAnalyzerResponse.struct_class = Types::CreateAnalyzerResponse

    CreateArchiveRuleRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "analyzerName"))
    CreateArchiveRuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateArchiveRuleRequest.add_member(:filter, Shapes::ShapeRef.new(shape: FilterCriteriaMap, required: true, location_name: "filter"))
    CreateArchiveRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "ruleName"))
    CreateArchiveRuleRequest.struct_class = Types::CreateArchiveRuleRequest

    Criterion.add_member(:contains, Shapes::ShapeRef.new(shape: ValueList, location_name: "contains"))
    Criterion.add_member(:eq, Shapes::ShapeRef.new(shape: ValueList, location_name: "eq"))
    Criterion.add_member(:exists, Shapes::ShapeRef.new(shape: Boolean, location_name: "exists"))
    Criterion.add_member(:neq, Shapes::ShapeRef.new(shape: ValueList, location_name: "neq"))
    Criterion.struct_class = Types::Criterion

    DeleteAnalyzerRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "analyzerName"))
    DeleteAnalyzerRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteAnalyzerRequest.struct_class = Types::DeleteAnalyzerRequest

    DeleteArchiveRuleRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "analyzerName"))
    DeleteArchiveRuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteArchiveRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ruleName"))
    DeleteArchiveRuleRequest.struct_class = Types::DeleteArchiveRuleRequest

    FilterCriteriaMap.key = Shapes::ShapeRef.new(shape: String)
    FilterCriteriaMap.value = Shapes::ShapeRef.new(shape: Criterion)

    Finding.add_member(:action, Shapes::ShapeRef.new(shape: ActionList, location_name: "action"))
    Finding.add_member(:analyzed_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "analyzedAt"))
    Finding.add_member(:condition, Shapes::ShapeRef.new(shape: ConditionKeyMap, required: true, location_name: "condition"))
    Finding.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    Finding.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    Finding.add_member(:id, Shapes::ShapeRef.new(shape: FindingId, required: true, location_name: "id"))
    Finding.add_member(:is_public, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPublic"))
    Finding.add_member(:principal, Shapes::ShapeRef.new(shape: PrincipalMap, location_name: "principal"))
    Finding.add_member(:resource, Shapes::ShapeRef.new(shape: String, location_name: "resource"))
    Finding.add_member(:resource_owner_account, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceOwnerAccount"))
    Finding.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    Finding.add_member(:sources, Shapes::ShapeRef.new(shape: FindingSourceList, location_name: "sources"))
    Finding.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, required: true, location_name: "status"))
    Finding.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    Finding.struct_class = Types::Finding

    FindingIdList.member = Shapes::ShapeRef.new(shape: FindingId)

    FindingSource.add_member(:detail, Shapes::ShapeRef.new(shape: FindingSourceDetail, location_name: "detail"))
    FindingSource.add_member(:type, Shapes::ShapeRef.new(shape: FindingSourceType, required: true, location_name: "type"))
    FindingSource.struct_class = Types::FindingSource

    FindingSourceDetail.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: String, location_name: "accessPointArn"))
    FindingSourceDetail.struct_class = Types::FindingSourceDetail

    FindingSourceList.member = Shapes::ShapeRef.new(shape: FindingSource)

    FindingSummary.add_member(:action, Shapes::ShapeRef.new(shape: ActionList, location_name: "action"))
    FindingSummary.add_member(:analyzed_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "analyzedAt"))
    FindingSummary.add_member(:condition, Shapes::ShapeRef.new(shape: ConditionKeyMap, required: true, location_name: "condition"))
    FindingSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    FindingSummary.add_member(:error, Shapes::ShapeRef.new(shape: String, location_name: "error"))
    FindingSummary.add_member(:id, Shapes::ShapeRef.new(shape: FindingId, required: true, location_name: "id"))
    FindingSummary.add_member(:is_public, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPublic"))
    FindingSummary.add_member(:principal, Shapes::ShapeRef.new(shape: PrincipalMap, location_name: "principal"))
    FindingSummary.add_member(:resource, Shapes::ShapeRef.new(shape: String, location_name: "resource"))
    FindingSummary.add_member(:resource_owner_account, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceOwnerAccount"))
    FindingSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "resourceType"))
    FindingSummary.add_member(:sources, Shapes::ShapeRef.new(shape: FindingSourceList, location_name: "sources"))
    FindingSummary.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, required: true, location_name: "status"))
    FindingSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    FindingSummary.struct_class = Types::FindingSummary

    FindingsList.member = Shapes::ShapeRef.new(shape: FindingSummary)

    GetAnalyzedResourceRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location: "querystring", location_name: "analyzerArn"))
    GetAnalyzedResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "querystring", location_name: "resourceArn"))
    GetAnalyzedResourceRequest.struct_class = Types::GetAnalyzedResourceRequest

    GetAnalyzedResourceResponse.add_member(:resource, Shapes::ShapeRef.new(shape: AnalyzedResource, location_name: "resource"))
    GetAnalyzedResourceResponse.struct_class = Types::GetAnalyzedResourceResponse

    GetAnalyzerRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "analyzerName"))
    GetAnalyzerRequest.struct_class = Types::GetAnalyzerRequest

    GetAnalyzerResponse.add_member(:analyzer, Shapes::ShapeRef.new(shape: AnalyzerSummary, required: true, location_name: "analyzer"))
    GetAnalyzerResponse.struct_class = Types::GetAnalyzerResponse

    GetArchiveRuleRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "analyzerName"))
    GetArchiveRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ruleName"))
    GetArchiveRuleRequest.struct_class = Types::GetArchiveRuleRequest

    GetArchiveRuleResponse.add_member(:archive_rule, Shapes::ShapeRef.new(shape: ArchiveRuleSummary, required: true, location_name: "archiveRule"))
    GetArchiveRuleResponse.struct_class = Types::GetArchiveRuleResponse

    GetFindingRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location: "querystring", location_name: "analyzerArn"))
    GetFindingRequest.add_member(:id, Shapes::ShapeRef.new(shape: FindingId, required: true, location: "uri", location_name: "id"))
    GetFindingRequest.struct_class = Types::GetFindingRequest

    GetFindingResponse.add_member(:finding, Shapes::ShapeRef.new(shape: Finding, location_name: "finding"))
    GetFindingResponse.struct_class = Types::GetFindingResponse

    InlineArchiveRule.add_member(:filter, Shapes::ShapeRef.new(shape: FilterCriteriaMap, required: true, location_name: "filter"))
    InlineArchiveRule.add_member(:rule_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "ruleName"))
    InlineArchiveRule.struct_class = Types::InlineArchiveRule

    InlineArchiveRulesList.member = Shapes::ShapeRef.new(shape: InlineArchiveRule)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAnalyzedResourcesRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "analyzerArn"))
    ListAnalyzedResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListAnalyzedResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListAnalyzedResourcesRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ListAnalyzedResourcesRequest.struct_class = Types::ListAnalyzedResourcesRequest

    ListAnalyzedResourcesResponse.add_member(:analyzed_resources, Shapes::ShapeRef.new(shape: AnalyzedResourcesList, required: true, location_name: "analyzedResources"))
    ListAnalyzedResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListAnalyzedResourcesResponse.struct_class = Types::ListAnalyzedResourcesResponse

    ListAnalyzersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListAnalyzersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListAnalyzersRequest.add_member(:type, Shapes::ShapeRef.new(shape: Type, location: "querystring", location_name: "type"))
    ListAnalyzersRequest.struct_class = Types::ListAnalyzersRequest

    ListAnalyzersResponse.add_member(:analyzers, Shapes::ShapeRef.new(shape: AnalyzersList, required: true, location_name: "analyzers"))
    ListAnalyzersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListAnalyzersResponse.struct_class = Types::ListAnalyzersResponse

    ListArchiveRulesRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "analyzerName"))
    ListArchiveRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListArchiveRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListArchiveRulesRequest.struct_class = Types::ListArchiveRulesRequest

    ListArchiveRulesResponse.add_member(:archive_rules, Shapes::ShapeRef.new(shape: ArchiveRulesList, required: true, location_name: "archiveRules"))
    ListArchiveRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListArchiveRulesResponse.struct_class = Types::ListArchiveRulesResponse

    ListFindingsRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "analyzerArn"))
    ListFindingsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: "filter"))
    ListFindingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListFindingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListFindingsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "sort"))
    ListFindingsRequest.struct_class = Types::ListFindingsRequest

    ListFindingsResponse.add_member(:findings, Shapes::ShapeRef.new(shape: FindingsList, required: true, location_name: "findings"))
    ListFindingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListFindingsResponse.struct_class = Types::ListFindingsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    PrincipalMap.key = Shapes::ShapeRef.new(shape: String)
    PrincipalMap.value = Shapes::ShapeRef.new(shape: String)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SharedViaList.member = Shapes::ShapeRef.new(shape: String)

    SortCriteria.add_member(:attribute_name, Shapes::ShapeRef.new(shape: String, location_name: "attributeName"))
    SortCriteria.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location_name: "orderBy"))
    SortCriteria.struct_class = Types::SortCriteria

    StartResourceScanRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "analyzerArn"))
    StartResourceScanRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    StartResourceScanRequest.struct_class = Types::StartResourceScanRequest

    StatusReason.add_member(:code, Shapes::ShapeRef.new(shape: ReasonCode, required: true, location_name: "code"))
    StatusReason.struct_class = Types::StatusReason

    TagKeys.member = Shapes::ShapeRef.new(shape: String)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: String)
    TagsMap.value = Shapes::ShapeRef.new(shape: String)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateArchiveRuleRequest.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "analyzerName"))
    UpdateArchiveRuleRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateArchiveRuleRequest.add_member(:filter, Shapes::ShapeRef.new(shape: FilterCriteriaMap, required: true, location_name: "filter"))
    UpdateArchiveRuleRequest.add_member(:rule_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "ruleName"))
    UpdateArchiveRuleRequest.struct_class = Types::UpdateArchiveRuleRequest

    UpdateFindingsRequest.add_member(:analyzer_arn, Shapes::ShapeRef.new(shape: AnalyzerArn, required: true, location_name: "analyzerArn"))
    UpdateFindingsRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: String, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateFindingsRequest.add_member(:ids, Shapes::ShapeRef.new(shape: FindingIdList, location_name: "ids"))
    UpdateFindingsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn"))
    UpdateFindingsRequest.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatusUpdate, required: true, location_name: "status"))
    UpdateFindingsRequest.struct_class = Types::UpdateFindingsRequest

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    ValueList.member = Shapes::ShapeRef.new(shape: String)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-11-01"

      api.metadata = {
        "apiVersion" => "2019-11-01",
        "endpointPrefix" => "access-analyzer",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Access Analyzer",
        "serviceId" => "AccessAnalyzer",
        "signatureVersion" => "v4",
        "signingName" => "access-analyzer",
        "uid" => "accessanalyzer-2019-11-01",
      }

      api.add_operation(:apply_archive_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ApplyArchiveRule"
        o.http_method = "PUT"
        o.http_request_uri = "/archive-rule"
        o.input = Shapes::ShapeRef.new(shape: ApplyArchiveRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_analyzer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAnalyzer"
        o.http_method = "PUT"
        o.http_request_uri = "/analyzer"
        o.input = Shapes::ShapeRef.new(shape: CreateAnalyzerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAnalyzerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_archive_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateArchiveRule"
        o.http_method = "PUT"
        o.http_request_uri = "/analyzer/{analyzerName}/archive-rule"
        o.input = Shapes::ShapeRef.new(shape: CreateArchiveRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_analyzer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAnalyzer"
        o.http_method = "DELETE"
        o.http_request_uri = "/analyzer/{analyzerName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAnalyzerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_archive_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteArchiveRule"
        o.http_method = "DELETE"
        o.http_request_uri = "/analyzer/{analyzerName}/archive-rule/{ruleName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteArchiveRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_analyzed_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAnalyzedResource"
        o.http_method = "GET"
        o.http_request_uri = "/analyzed-resource"
        o.input = Shapes::ShapeRef.new(shape: GetAnalyzedResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAnalyzedResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_analyzer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAnalyzer"
        o.http_method = "GET"
        o.http_request_uri = "/analyzer/{analyzerName}"
        o.input = Shapes::ShapeRef.new(shape: GetAnalyzerRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAnalyzerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_archive_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetArchiveRule"
        o.http_method = "GET"
        o.http_request_uri = "/analyzer/{analyzerName}/archive-rule/{ruleName}"
        o.input = Shapes::ShapeRef.new(shape: GetArchiveRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: GetArchiveRuleResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_finding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFinding"
        o.http_method = "GET"
        o.http_request_uri = "/finding/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetFindingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_analyzed_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnalyzedResources"
        o.http_method = "POST"
        o.http_request_uri = "/analyzed-resource"
        o.input = Shapes::ShapeRef.new(shape: ListAnalyzedResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAnalyzedResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_analyzers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnalyzers"
        o.http_method = "GET"
        o.http_request_uri = "/analyzer"
        o.input = Shapes::ShapeRef.new(shape: ListAnalyzersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAnalyzersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_archive_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListArchiveRules"
        o.http_method = "GET"
        o.http_request_uri = "/analyzer/{analyzerName}/archive-rule"
        o.input = Shapes::ShapeRef.new(shape: ListArchiveRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListArchiveRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFindings"
        o.http_method = "POST"
        o.http_request_uri = "/finding"
        o.input = Shapes::ShapeRef.new(shape: ListFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_resource_scan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartResourceScan"
        o.http_method = "POST"
        o.http_request_uri = "/resource/scan"
        o.input = Shapes::ShapeRef.new(shape: StartResourceScanRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_archive_rule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateArchiveRule"
        o.http_method = "PUT"
        o.http_request_uri = "/analyzer/{analyzerName}/archive-rule/{ruleName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateArchiveRuleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFindings"
        o.http_method = "PUT"
        o.http_request_uri = "/finding"
        o.input = Shapes::ShapeRef.new(shape: UpdateFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
