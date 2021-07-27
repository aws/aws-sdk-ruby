# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53RecoveryReadiness
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    CellOutput = Shapes::StructureShape.new(name: 'CellOutput')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateCellRequest = Shapes::StructureShape.new(name: 'CreateCellRequest')
    CreateCellResponse = Shapes::StructureShape.new(name: 'CreateCellResponse')
    CreateCrossAccountAuthorizationRequest = Shapes::StructureShape.new(name: 'CreateCrossAccountAuthorizationRequest')
    CreateCrossAccountAuthorizationResponse = Shapes::StructureShape.new(name: 'CreateCrossAccountAuthorizationResponse')
    CreateReadinessCheckRequest = Shapes::StructureShape.new(name: 'CreateReadinessCheckRequest')
    CreateReadinessCheckResponse = Shapes::StructureShape.new(name: 'CreateReadinessCheckResponse')
    CreateRecoveryGroupRequest = Shapes::StructureShape.new(name: 'CreateRecoveryGroupRequest')
    CreateRecoveryGroupResponse = Shapes::StructureShape.new(name: 'CreateRecoveryGroupResponse')
    CreateResourceSetRequest = Shapes::StructureShape.new(name: 'CreateResourceSetRequest')
    CreateResourceSetResponse = Shapes::StructureShape.new(name: 'CreateResourceSetResponse')
    CrossAccountAuthorization = Shapes::StringShape.new(name: 'CrossAccountAuthorization')
    DNSTargetResource = Shapes::StructureShape.new(name: 'DNSTargetResource')
    DeleteCellRequest = Shapes::StructureShape.new(name: 'DeleteCellRequest')
    DeleteCrossAccountAuthorizationRequest = Shapes::StructureShape.new(name: 'DeleteCrossAccountAuthorizationRequest')
    DeleteCrossAccountAuthorizationResponse = Shapes::StructureShape.new(name: 'DeleteCrossAccountAuthorizationResponse')
    DeleteReadinessCheckRequest = Shapes::StructureShape.new(name: 'DeleteReadinessCheckRequest')
    DeleteRecoveryGroupRequest = Shapes::StructureShape.new(name: 'DeleteRecoveryGroupRequest')
    DeleteResourceSetRequest = Shapes::StructureShape.new(name: 'DeleteResourceSetRequest')
    GetArchitectureRecommendationsRequest = Shapes::StructureShape.new(name: 'GetArchitectureRecommendationsRequest')
    GetArchitectureRecommendationsResponse = Shapes::StructureShape.new(name: 'GetArchitectureRecommendationsResponse')
    GetCellReadinessSummaryRequest = Shapes::StructureShape.new(name: 'GetCellReadinessSummaryRequest')
    GetCellReadinessSummaryResponse = Shapes::StructureShape.new(name: 'GetCellReadinessSummaryResponse')
    GetCellRequest = Shapes::StructureShape.new(name: 'GetCellRequest')
    GetCellResponse = Shapes::StructureShape.new(name: 'GetCellResponse')
    GetReadinessCheckRequest = Shapes::StructureShape.new(name: 'GetReadinessCheckRequest')
    GetReadinessCheckResourceStatusRequest = Shapes::StructureShape.new(name: 'GetReadinessCheckResourceStatusRequest')
    GetReadinessCheckResourceStatusResponse = Shapes::StructureShape.new(name: 'GetReadinessCheckResourceStatusResponse')
    GetReadinessCheckResponse = Shapes::StructureShape.new(name: 'GetReadinessCheckResponse')
    GetReadinessCheckStatusRequest = Shapes::StructureShape.new(name: 'GetReadinessCheckStatusRequest')
    GetReadinessCheckStatusResponse = Shapes::StructureShape.new(name: 'GetReadinessCheckStatusResponse')
    GetRecoveryGroupReadinessSummaryRequest = Shapes::StructureShape.new(name: 'GetRecoveryGroupReadinessSummaryRequest')
    GetRecoveryGroupReadinessSummaryResponse = Shapes::StructureShape.new(name: 'GetRecoveryGroupReadinessSummaryResponse')
    GetRecoveryGroupRequest = Shapes::StructureShape.new(name: 'GetRecoveryGroupRequest')
    GetRecoveryGroupResponse = Shapes::StructureShape.new(name: 'GetRecoveryGroupResponse')
    GetResourceSetRequest = Shapes::StructureShape.new(name: 'GetResourceSetRequest')
    GetResourceSetResponse = Shapes::StructureShape.new(name: 'GetResourceSetResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LastAuditTimestamp = Shapes::TimestampShape.new(name: 'LastAuditTimestamp', timestampFormat: "iso8601")
    ListCellsRequest = Shapes::StructureShape.new(name: 'ListCellsRequest')
    ListCellsResponse = Shapes::StructureShape.new(name: 'ListCellsResponse')
    ListCrossAccountAuthorizationsRequest = Shapes::StructureShape.new(name: 'ListCrossAccountAuthorizationsRequest')
    ListCrossAccountAuthorizationsResponse = Shapes::StructureShape.new(name: 'ListCrossAccountAuthorizationsResponse')
    ListReadinessChecksRequest = Shapes::StructureShape.new(name: 'ListReadinessChecksRequest')
    ListReadinessChecksResponse = Shapes::StructureShape.new(name: 'ListReadinessChecksResponse')
    ListRecoveryGroupsRequest = Shapes::StructureShape.new(name: 'ListRecoveryGroupsRequest')
    ListRecoveryGroupsResponse = Shapes::StructureShape.new(name: 'ListRecoveryGroupsResponse')
    ListResourceSetsRequest = Shapes::StructureShape.new(name: 'ListResourceSetsRequest')
    ListResourceSetsResponse = Shapes::StructureShape.new(name: 'ListResourceSetsResponse')
    ListRulesOutput = Shapes::StructureShape.new(name: 'ListRulesOutput')
    ListRulesRequest = Shapes::StructureShape.new(name: 'ListRulesRequest')
    ListRulesResponse = Shapes::StructureShape.new(name: 'ListRulesResponse')
    ListTagsForResourcesRequest = Shapes::StructureShape.new(name: 'ListTagsForResourcesRequest')
    ListTagsForResourcesResponse = Shapes::StructureShape.new(name: 'ListTagsForResourcesResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StructureShape.new(name: 'Message')
    NLBResource = Shapes::StructureShape.new(name: 'NLBResource')
    R53ResourceRecord = Shapes::StructureShape.new(name: 'R53ResourceRecord')
    Readiness = Shapes::StringShape.new(name: 'Readiness')
    ReadinessCheckOutput = Shapes::StructureShape.new(name: 'ReadinessCheckOutput')
    ReadinessCheckSummary = Shapes::StructureShape.new(name: 'ReadinessCheckSummary')
    ReadinessCheckTimestamp = Shapes::TimestampShape.new(name: 'ReadinessCheckTimestamp', timestampFormat: "iso8601")
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    RecoveryGroupOutput = Shapes::StructureShape.new(name: 'RecoveryGroupOutput')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceResult = Shapes::StructureShape.new(name: 'ResourceResult')
    ResourceSetOutput = Shapes::StructureShape.new(name: 'ResourceSetOutput')
    RuleResult = Shapes::StructureShape.new(name: 'RuleResult')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TargetResource = Shapes::StructureShape.new(name: 'TargetResource')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateCellRequest = Shapes::StructureShape.new(name: 'UpdateCellRequest')
    UpdateCellResponse = Shapes::StructureShape.new(name: 'UpdateCellResponse')
    UpdateReadinessCheckRequest = Shapes::StructureShape.new(name: 'UpdateReadinessCheckRequest')
    UpdateReadinessCheckResponse = Shapes::StructureShape.new(name: 'UpdateReadinessCheckResponse')
    UpdateRecoveryGroupRequest = Shapes::StructureShape.new(name: 'UpdateRecoveryGroupRequest')
    UpdateRecoveryGroupResponse = Shapes::StructureShape.new(name: 'UpdateRecoveryGroupResponse')
    UpdateResourceSetRequest = Shapes::StructureShape.new(name: 'UpdateResourceSetRequest')
    UpdateResourceSetResponse = Shapes::StructureShape.new(name: 'UpdateResourceSetResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    __listOfCellOutput = Shapes::ListShape.new(name: '__listOfCellOutput')
    __listOfCrossAccountAuthorization = Shapes::ListShape.new(name: '__listOfCrossAccountAuthorization')
    __listOfListRulesOutput = Shapes::ListShape.new(name: '__listOfListRulesOutput')
    __listOfMessage = Shapes::ListShape.new(name: '__listOfMessage')
    __listOfReadinessCheckOutput = Shapes::ListShape.new(name: '__listOfReadinessCheckOutput')
    __listOfReadinessCheckSummary = Shapes::ListShape.new(name: '__listOfReadinessCheckSummary')
    __listOfRecommendation = Shapes::ListShape.new(name: '__listOfRecommendation')
    __listOfRecoveryGroupOutput = Shapes::ListShape.new(name: '__listOfRecoveryGroupOutput')
    __listOfResource = Shapes::ListShape.new(name: '__listOfResource')
    __listOfResourceResult = Shapes::ListShape.new(name: '__listOfResourceResult')
    __listOfResourceSetOutput = Shapes::ListShape.new(name: '__listOfResourceSetOutput')
    __listOfRuleResult = Shapes::ListShape.new(name: '__listOfRuleResult')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __string = Shapes::StringShape.new(name: '__string')
    __stringMax256 = Shapes::StringShape.new(name: '__stringMax256')
    __stringMax64 = Shapes::StringShape.new(name: '__stringMax64')
    __stringMax64PatternAAZAZ09Z = Shapes::StringShape.new(name: '__stringMax64PatternAAZAZ09Z')
    __stringPatternAWSAZaZ09AZaZ09 = Shapes::StringShape.new(name: '__stringPatternAWSAZaZ09AZaZ09')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CellOutput.add_member(:cell_arn, Shapes::ShapeRef.new(shape: __stringMax256, required: true, location_name: "cellArn"))
    CellOutput.add_member(:cell_name, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, required: true, location_name: "cellName"))
    CellOutput.add_member(:cells, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "cells"))
    CellOutput.add_member(:parent_readiness_scopes, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "parentReadinessScopes"))
    CellOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CellOutput.struct_class = Types::CellOutput

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateCellRequest.add_member(:cell_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "cellName"))
    CreateCellRequest.add_member(:cells, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "cells"))
    CreateCellRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateCellRequest.struct_class = Types::CreateCellRequest

    CreateCellResponse.add_member(:cell_arn, Shapes::ShapeRef.new(shape: __stringMax256, location_name: "cellArn"))
    CreateCellResponse.add_member(:cell_name, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, location_name: "cellName"))
    CreateCellResponse.add_member(:cells, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "cells"))
    CreateCellResponse.add_member(:parent_readiness_scopes, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "parentReadinessScopes"))
    CreateCellResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateCellResponse.struct_class = Types::CreateCellResponse

    CreateCrossAccountAuthorizationRequest.add_member(:cross_account_authorization, Shapes::ShapeRef.new(shape: CrossAccountAuthorization, required: true, location_name: "crossAccountAuthorization"))
    CreateCrossAccountAuthorizationRequest.struct_class = Types::CreateCrossAccountAuthorizationRequest

    CreateCrossAccountAuthorizationResponse.add_member(:cross_account_authorization, Shapes::ShapeRef.new(shape: CrossAccountAuthorization, location_name: "crossAccountAuthorization"))
    CreateCrossAccountAuthorizationResponse.struct_class = Types::CreateCrossAccountAuthorizationResponse

    CreateReadinessCheckRequest.add_member(:readiness_check_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "readinessCheckName"))
    CreateReadinessCheckRequest.add_member(:resource_set_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceSetName"))
    CreateReadinessCheckRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateReadinessCheckRequest.struct_class = Types::CreateReadinessCheckRequest

    CreateReadinessCheckResponse.add_member(:readiness_check_arn, Shapes::ShapeRef.new(shape: __stringMax256, location_name: "readinessCheckArn"))
    CreateReadinessCheckResponse.add_member(:readiness_check_name, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, location_name: "readinessCheckName"))
    CreateReadinessCheckResponse.add_member(:resource_set, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, location_name: "resourceSet"))
    CreateReadinessCheckResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateReadinessCheckResponse.struct_class = Types::CreateReadinessCheckResponse

    CreateRecoveryGroupRequest.add_member(:cells, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "cells"))
    CreateRecoveryGroupRequest.add_member(:recovery_group_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "recoveryGroupName"))
    CreateRecoveryGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateRecoveryGroupRequest.struct_class = Types::CreateRecoveryGroupRequest

    CreateRecoveryGroupResponse.add_member(:cells, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "cells"))
    CreateRecoveryGroupResponse.add_member(:recovery_group_arn, Shapes::ShapeRef.new(shape: __stringMax256, location_name: "recoveryGroupArn"))
    CreateRecoveryGroupResponse.add_member(:recovery_group_name, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, location_name: "recoveryGroupName"))
    CreateRecoveryGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateRecoveryGroupResponse.struct_class = Types::CreateRecoveryGroupResponse

    CreateResourceSetRequest.add_member(:resource_set_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceSetName"))
    CreateResourceSetRequest.add_member(:resource_set_type, Shapes::ShapeRef.new(shape: __stringPatternAWSAZaZ09AZaZ09, required: true, location_name: "resourceSetType"))
    CreateResourceSetRequest.add_member(:resources, Shapes::ShapeRef.new(shape: __listOfResource, required: true, location_name: "resources"))
    CreateResourceSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateResourceSetRequest.struct_class = Types::CreateResourceSetRequest

    CreateResourceSetResponse.add_member(:resource_set_arn, Shapes::ShapeRef.new(shape: __stringMax256, location_name: "resourceSetArn"))
    CreateResourceSetResponse.add_member(:resource_set_name, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, location_name: "resourceSetName"))
    CreateResourceSetResponse.add_member(:resource_set_type, Shapes::ShapeRef.new(shape: __stringPatternAWSAZaZ09AZaZ09, location_name: "resourceSetType"))
    CreateResourceSetResponse.add_member(:resources, Shapes::ShapeRef.new(shape: __listOfResource, location_name: "resources"))
    CreateResourceSetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateResourceSetResponse.struct_class = Types::CreateResourceSetResponse

    DNSTargetResource.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, location_name: "domainName"))
    DNSTargetResource.add_member(:hosted_zone_arn, Shapes::ShapeRef.new(shape: __string, location_name: "hostedZoneArn"))
    DNSTargetResource.add_member(:record_set_id, Shapes::ShapeRef.new(shape: __string, location_name: "recordSetId"))
    DNSTargetResource.add_member(:record_type, Shapes::ShapeRef.new(shape: __string, location_name: "recordType"))
    DNSTargetResource.add_member(:target_resource, Shapes::ShapeRef.new(shape: TargetResource, location_name: "targetResource"))
    DNSTargetResource.struct_class = Types::DNSTargetResource

    DeleteCellRequest.add_member(:cell_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "cellName"))
    DeleteCellRequest.struct_class = Types::DeleteCellRequest

    DeleteCrossAccountAuthorizationRequest.add_member(:cross_account_authorization, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "crossAccountAuthorization"))
    DeleteCrossAccountAuthorizationRequest.struct_class = Types::DeleteCrossAccountAuthorizationRequest

    DeleteCrossAccountAuthorizationResponse.struct_class = Types::DeleteCrossAccountAuthorizationResponse

    DeleteReadinessCheckRequest.add_member(:readiness_check_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "readinessCheckName"))
    DeleteReadinessCheckRequest.struct_class = Types::DeleteReadinessCheckRequest

    DeleteRecoveryGroupRequest.add_member(:recovery_group_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "recoveryGroupName"))
    DeleteRecoveryGroupRequest.struct_class = Types::DeleteRecoveryGroupRequest

    DeleteResourceSetRequest.add_member(:resource_set_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceSetName"))
    DeleteResourceSetRequest.struct_class = Types::DeleteResourceSetRequest

    GetArchitectureRecommendationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetArchitectureRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetArchitectureRecommendationsRequest.add_member(:recovery_group_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "recoveryGroupName"))
    GetArchitectureRecommendationsRequest.struct_class = Types::GetArchitectureRecommendationsRequest

    GetArchitectureRecommendationsResponse.add_member(:last_audit_timestamp, Shapes::ShapeRef.new(shape: LastAuditTimestamp, location_name: "lastAuditTimestamp"))
    GetArchitectureRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    GetArchitectureRecommendationsResponse.add_member(:recommendations, Shapes::ShapeRef.new(shape: __listOfRecommendation, location_name: "recommendations"))
    GetArchitectureRecommendationsResponse.struct_class = Types::GetArchitectureRecommendationsResponse

    GetCellReadinessSummaryRequest.add_member(:cell_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "cellName"))
    GetCellReadinessSummaryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetCellReadinessSummaryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetCellReadinessSummaryRequest.struct_class = Types::GetCellReadinessSummaryRequest

    GetCellReadinessSummaryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    GetCellReadinessSummaryResponse.add_member(:readiness, Shapes::ShapeRef.new(shape: Readiness, location_name: "readiness"))
    GetCellReadinessSummaryResponse.add_member(:readiness_checks, Shapes::ShapeRef.new(shape: __listOfReadinessCheckSummary, location_name: "readinessChecks"))
    GetCellReadinessSummaryResponse.struct_class = Types::GetCellReadinessSummaryResponse

    GetCellRequest.add_member(:cell_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "cellName"))
    GetCellRequest.struct_class = Types::GetCellRequest

    GetCellResponse.add_member(:cell_arn, Shapes::ShapeRef.new(shape: __stringMax256, location_name: "cellArn"))
    GetCellResponse.add_member(:cell_name, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, location_name: "cellName"))
    GetCellResponse.add_member(:cells, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "cells"))
    GetCellResponse.add_member(:parent_readiness_scopes, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "parentReadinessScopes"))
    GetCellResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetCellResponse.struct_class = Types::GetCellResponse

    GetReadinessCheckRequest.add_member(:readiness_check_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "readinessCheckName"))
    GetReadinessCheckRequest.struct_class = Types::GetReadinessCheckRequest

    GetReadinessCheckResourceStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetReadinessCheckResourceStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetReadinessCheckResourceStatusRequest.add_member(:readiness_check_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "readinessCheckName"))
    GetReadinessCheckResourceStatusRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceIdentifier"))
    GetReadinessCheckResourceStatusRequest.struct_class = Types::GetReadinessCheckResourceStatusRequest

    GetReadinessCheckResourceStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    GetReadinessCheckResourceStatusResponse.add_member(:readiness, Shapes::ShapeRef.new(shape: Readiness, location_name: "readiness"))
    GetReadinessCheckResourceStatusResponse.add_member(:rules, Shapes::ShapeRef.new(shape: __listOfRuleResult, location_name: "rules"))
    GetReadinessCheckResourceStatusResponse.struct_class = Types::GetReadinessCheckResourceStatusResponse

    GetReadinessCheckResponse.add_member(:readiness_check_arn, Shapes::ShapeRef.new(shape: __stringMax256, location_name: "readinessCheckArn"))
    GetReadinessCheckResponse.add_member(:readiness_check_name, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, location_name: "readinessCheckName"))
    GetReadinessCheckResponse.add_member(:resource_set, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, location_name: "resourceSet"))
    GetReadinessCheckResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetReadinessCheckResponse.struct_class = Types::GetReadinessCheckResponse

    GetReadinessCheckStatusRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetReadinessCheckStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetReadinessCheckStatusRequest.add_member(:readiness_check_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "readinessCheckName"))
    GetReadinessCheckStatusRequest.struct_class = Types::GetReadinessCheckStatusRequest

    GetReadinessCheckStatusResponse.add_member(:messages, Shapes::ShapeRef.new(shape: __listOfMessage, location_name: "messages"))
    GetReadinessCheckStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    GetReadinessCheckStatusResponse.add_member(:readiness, Shapes::ShapeRef.new(shape: Readiness, location_name: "readiness"))
    GetReadinessCheckStatusResponse.add_member(:resources, Shapes::ShapeRef.new(shape: __listOfResourceResult, location_name: "resources"))
    GetReadinessCheckStatusResponse.struct_class = Types::GetReadinessCheckStatusResponse

    GetRecoveryGroupReadinessSummaryRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    GetRecoveryGroupReadinessSummaryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    GetRecoveryGroupReadinessSummaryRequest.add_member(:recovery_group_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "recoveryGroupName"))
    GetRecoveryGroupReadinessSummaryRequest.struct_class = Types::GetRecoveryGroupReadinessSummaryRequest

    GetRecoveryGroupReadinessSummaryResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    GetRecoveryGroupReadinessSummaryResponse.add_member(:readiness, Shapes::ShapeRef.new(shape: Readiness, location_name: "readiness"))
    GetRecoveryGroupReadinessSummaryResponse.add_member(:readiness_checks, Shapes::ShapeRef.new(shape: __listOfReadinessCheckSummary, location_name: "readinessChecks"))
    GetRecoveryGroupReadinessSummaryResponse.struct_class = Types::GetRecoveryGroupReadinessSummaryResponse

    GetRecoveryGroupRequest.add_member(:recovery_group_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "recoveryGroupName"))
    GetRecoveryGroupRequest.struct_class = Types::GetRecoveryGroupRequest

    GetRecoveryGroupResponse.add_member(:cells, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "cells"))
    GetRecoveryGroupResponse.add_member(:recovery_group_arn, Shapes::ShapeRef.new(shape: __stringMax256, location_name: "recoveryGroupArn"))
    GetRecoveryGroupResponse.add_member(:recovery_group_name, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, location_name: "recoveryGroupName"))
    GetRecoveryGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetRecoveryGroupResponse.struct_class = Types::GetRecoveryGroupResponse

    GetResourceSetRequest.add_member(:resource_set_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceSetName"))
    GetResourceSetRequest.struct_class = Types::GetResourceSetRequest

    GetResourceSetResponse.add_member(:resource_set_arn, Shapes::ShapeRef.new(shape: __stringMax256, location_name: "resourceSetArn"))
    GetResourceSetResponse.add_member(:resource_set_name, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, location_name: "resourceSetName"))
    GetResourceSetResponse.add_member(:resource_set_type, Shapes::ShapeRef.new(shape: __stringPatternAWSAZaZ09AZaZ09, location_name: "resourceSetType"))
    GetResourceSetResponse.add_member(:resources, Shapes::ShapeRef.new(shape: __listOfResource, location_name: "resources"))
    GetResourceSetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    GetResourceSetResponse.struct_class = Types::GetResourceSetResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListCellsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCellsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListCellsRequest.struct_class = Types::ListCellsRequest

    ListCellsResponse.add_member(:cells, Shapes::ShapeRef.new(shape: __listOfCellOutput, location_name: "cells"))
    ListCellsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListCellsResponse.struct_class = Types::ListCellsResponse

    ListCrossAccountAuthorizationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCrossAccountAuthorizationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListCrossAccountAuthorizationsRequest.struct_class = Types::ListCrossAccountAuthorizationsRequest

    ListCrossAccountAuthorizationsResponse.add_member(:cross_account_authorizations, Shapes::ShapeRef.new(shape: __listOfCrossAccountAuthorization, location_name: "crossAccountAuthorizations"))
    ListCrossAccountAuthorizationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListCrossAccountAuthorizationsResponse.struct_class = Types::ListCrossAccountAuthorizationsResponse

    ListReadinessChecksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListReadinessChecksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListReadinessChecksRequest.struct_class = Types::ListReadinessChecksRequest

    ListReadinessChecksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListReadinessChecksResponse.add_member(:readiness_checks, Shapes::ShapeRef.new(shape: __listOfReadinessCheckOutput, location_name: "readinessChecks"))
    ListReadinessChecksResponse.struct_class = Types::ListReadinessChecksResponse

    ListRecoveryGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRecoveryGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListRecoveryGroupsRequest.struct_class = Types::ListRecoveryGroupsRequest

    ListRecoveryGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListRecoveryGroupsResponse.add_member(:recovery_groups, Shapes::ShapeRef.new(shape: __listOfRecoveryGroupOutput, location_name: "recoveryGroups"))
    ListRecoveryGroupsResponse.struct_class = Types::ListRecoveryGroupsResponse

    ListResourceSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListResourceSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListResourceSetsRequest.struct_class = Types::ListResourceSetsRequest

    ListResourceSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListResourceSetsResponse.add_member(:resource_sets, Shapes::ShapeRef.new(shape: __listOfResourceSetOutput, location_name: "resourceSets"))
    ListResourceSetsResponse.struct_class = Types::ListResourceSetsResponse

    ListRulesOutput.add_member(:resource_type, Shapes::ShapeRef.new(shape: __stringMax64, required: true, location_name: "resourceType"))
    ListRulesOutput.add_member(:rule_description, Shapes::ShapeRef.new(shape: __stringMax256, required: true, location_name: "ruleDescription"))
    ListRulesOutput.add_member(:rule_id, Shapes::ShapeRef.new(shape: __stringMax64, required: true, location_name: "ruleId"))
    ListRulesOutput.struct_class = Types::ListRulesOutput

    ListRulesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRulesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListRulesRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "resourceType"))
    ListRulesRequest.struct_class = Types::ListRulesRequest

    ListRulesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListRulesResponse.add_member(:rules, Shapes::ShapeRef.new(shape: __listOfListRulesOutput, location_name: "rules"))
    ListRulesResponse.struct_class = Types::ListRulesResponse

    ListTagsForResourcesRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    ListTagsForResourcesRequest.struct_class = Types::ListTagsForResourcesRequest

    ListTagsForResourcesResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourcesResponse.struct_class = Types::ListTagsForResourcesResponse

    Message.add_member(:message_text, Shapes::ShapeRef.new(shape: __string, location_name: "messageText"))
    Message.struct_class = Types::Message

    NLBResource.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    NLBResource.struct_class = Types::NLBResource

    R53ResourceRecord.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, location_name: "domainName"))
    R53ResourceRecord.add_member(:record_set_id, Shapes::ShapeRef.new(shape: __string, location_name: "recordSetId"))
    R53ResourceRecord.struct_class = Types::R53ResourceRecord

    ReadinessCheckOutput.add_member(:readiness_check_arn, Shapes::ShapeRef.new(shape: __stringMax256, required: true, location_name: "readinessCheckArn"))
    ReadinessCheckOutput.add_member(:readiness_check_name, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, location_name: "readinessCheckName"))
    ReadinessCheckOutput.add_member(:resource_set, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, required: true, location_name: "resourceSet"))
    ReadinessCheckOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ReadinessCheckOutput.struct_class = Types::ReadinessCheckOutput

    ReadinessCheckSummary.add_member(:readiness, Shapes::ShapeRef.new(shape: Readiness, location_name: "readiness"))
    ReadinessCheckSummary.add_member(:readiness_check_name, Shapes::ShapeRef.new(shape: __string, location_name: "readinessCheckName"))
    ReadinessCheckSummary.struct_class = Types::ReadinessCheckSummary

    Recommendation.add_member(:recommendation_text, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "recommendationText"))
    Recommendation.struct_class = Types::Recommendation

    RecoveryGroupOutput.add_member(:cells, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "cells"))
    RecoveryGroupOutput.add_member(:recovery_group_arn, Shapes::ShapeRef.new(shape: __stringMax256, required: true, location_name: "recoveryGroupArn"))
    RecoveryGroupOutput.add_member(:recovery_group_name, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, required: true, location_name: "recoveryGroupName"))
    RecoveryGroupOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    RecoveryGroupOutput.struct_class = Types::RecoveryGroupOutput

    Resource.add_member(:component_id, Shapes::ShapeRef.new(shape: __string, location_name: "componentId"))
    Resource.add_member(:dns_target_resource, Shapes::ShapeRef.new(shape: DNSTargetResource, location_name: "dnsTargetResource"))
    Resource.add_member(:readiness_scopes, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "readinessScopes"))
    Resource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, location_name: "resourceArn"))
    Resource.struct_class = Types::Resource

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceResult.add_member(:component_id, Shapes::ShapeRef.new(shape: __string, location_name: "componentId"))
    ResourceResult.add_member(:last_checked_timestamp, Shapes::ShapeRef.new(shape: ReadinessCheckTimestamp, required: true, location_name: "lastCheckedTimestamp"))
    ResourceResult.add_member(:readiness, Shapes::ShapeRef.new(shape: Readiness, required: true, location_name: "readiness"))
    ResourceResult.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, location_name: "resourceArn"))
    ResourceResult.struct_class = Types::ResourceResult

    ResourceSetOutput.add_member(:resource_set_arn, Shapes::ShapeRef.new(shape: __stringMax256, required: true, location_name: "resourceSetArn"))
    ResourceSetOutput.add_member(:resource_set_name, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, required: true, location_name: "resourceSetName"))
    ResourceSetOutput.add_member(:resource_set_type, Shapes::ShapeRef.new(shape: __stringPatternAWSAZaZ09AZaZ09, required: true, location_name: "resourceSetType"))
    ResourceSetOutput.add_member(:resources, Shapes::ShapeRef.new(shape: __listOfResource, required: true, location_name: "resources"))
    ResourceSetOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ResourceSetOutput.struct_class = Types::ResourceSetOutput

    RuleResult.add_member(:last_checked_timestamp, Shapes::ShapeRef.new(shape: ReadinessCheckTimestamp, required: true, location_name: "lastCheckedTimestamp"))
    RuleResult.add_member(:messages, Shapes::ShapeRef.new(shape: __listOfMessage, required: true, location_name: "messages"))
    RuleResult.add_member(:readiness, Shapes::ShapeRef.new(shape: Readiness, required: true, location_name: "readiness"))
    RuleResult.add_member(:rule_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "ruleId"))
    RuleResult.struct_class = Types::RuleResult

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: __string)
    Tags.value = Shapes::ShapeRef.new(shape: __string)

    TargetResource.add_member(:nlb_resource, Shapes::ShapeRef.new(shape: NLBResource, location_name: "nLBResource"))
    TargetResource.add_member(:r53_resource, Shapes::ShapeRef.new(shape: R53ResourceRecord, location_name: "r53Resource"))
    TargetResource.struct_class = Types::TargetResource

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resource-arn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateCellRequest.add_member(:cell_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "cellName"))
    UpdateCellRequest.add_member(:cells, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "cells"))
    UpdateCellRequest.struct_class = Types::UpdateCellRequest

    UpdateCellResponse.add_member(:cell_arn, Shapes::ShapeRef.new(shape: __stringMax256, location_name: "cellArn"))
    UpdateCellResponse.add_member(:cell_name, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, location_name: "cellName"))
    UpdateCellResponse.add_member(:cells, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "cells"))
    UpdateCellResponse.add_member(:parent_readiness_scopes, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "parentReadinessScopes"))
    UpdateCellResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateCellResponse.struct_class = Types::UpdateCellResponse

    UpdateReadinessCheckRequest.add_member(:readiness_check_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "readinessCheckName"))
    UpdateReadinessCheckRequest.add_member(:resource_set_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "resourceSetName"))
    UpdateReadinessCheckRequest.struct_class = Types::UpdateReadinessCheckRequest

    UpdateReadinessCheckResponse.add_member(:readiness_check_arn, Shapes::ShapeRef.new(shape: __stringMax256, location_name: "readinessCheckArn"))
    UpdateReadinessCheckResponse.add_member(:readiness_check_name, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, location_name: "readinessCheckName"))
    UpdateReadinessCheckResponse.add_member(:resource_set, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, location_name: "resourceSet"))
    UpdateReadinessCheckResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateReadinessCheckResponse.struct_class = Types::UpdateReadinessCheckResponse

    UpdateRecoveryGroupRequest.add_member(:cells, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "cells"))
    UpdateRecoveryGroupRequest.add_member(:recovery_group_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "recoveryGroupName"))
    UpdateRecoveryGroupRequest.struct_class = Types::UpdateRecoveryGroupRequest

    UpdateRecoveryGroupResponse.add_member(:cells, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "cells"))
    UpdateRecoveryGroupResponse.add_member(:recovery_group_arn, Shapes::ShapeRef.new(shape: __stringMax256, location_name: "recoveryGroupArn"))
    UpdateRecoveryGroupResponse.add_member(:recovery_group_name, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, location_name: "recoveryGroupName"))
    UpdateRecoveryGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateRecoveryGroupResponse.struct_class = Types::UpdateRecoveryGroupResponse

    UpdateResourceSetRequest.add_member(:resource_set_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceSetName"))
    UpdateResourceSetRequest.add_member(:resource_set_type, Shapes::ShapeRef.new(shape: __stringPatternAWSAZaZ09AZaZ09, required: true, location_name: "resourceSetType"))
    UpdateResourceSetRequest.add_member(:resources, Shapes::ShapeRef.new(shape: __listOfResource, required: true, location_name: "resources"))
    UpdateResourceSetRequest.struct_class = Types::UpdateResourceSetRequest

    UpdateResourceSetResponse.add_member(:resource_set_arn, Shapes::ShapeRef.new(shape: __stringMax256, location_name: "resourceSetArn"))
    UpdateResourceSetResponse.add_member(:resource_set_name, Shapes::ShapeRef.new(shape: __stringMax64PatternAAZAZ09Z, location_name: "resourceSetName"))
    UpdateResourceSetResponse.add_member(:resource_set_type, Shapes::ShapeRef.new(shape: __stringPatternAWSAZaZ09AZaZ09, location_name: "resourceSetType"))
    UpdateResourceSetResponse.add_member(:resources, Shapes::ShapeRef.new(shape: __listOfResource, location_name: "resources"))
    UpdateResourceSetResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    UpdateResourceSetResponse.struct_class = Types::UpdateResourceSetResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    __listOfCellOutput.member = Shapes::ShapeRef.new(shape: CellOutput)

    __listOfCrossAccountAuthorization.member = Shapes::ShapeRef.new(shape: CrossAccountAuthorization)

    __listOfListRulesOutput.member = Shapes::ShapeRef.new(shape: ListRulesOutput)

    __listOfMessage.member = Shapes::ShapeRef.new(shape: Message)

    __listOfReadinessCheckOutput.member = Shapes::ShapeRef.new(shape: ReadinessCheckOutput)

    __listOfReadinessCheckSummary.member = Shapes::ShapeRef.new(shape: ReadinessCheckSummary)

    __listOfRecommendation.member = Shapes::ShapeRef.new(shape: Recommendation)

    __listOfRecoveryGroupOutput.member = Shapes::ShapeRef.new(shape: RecoveryGroupOutput)

    __listOfResource.member = Shapes::ShapeRef.new(shape: Resource)

    __listOfResourceResult.member = Shapes::ShapeRef.new(shape: ResourceResult)

    __listOfResourceSetOutput.member = Shapes::ShapeRef.new(shape: ResourceSetOutput)

    __listOfRuleResult.member = Shapes::ShapeRef.new(shape: RuleResult)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-12-02"

      api.metadata = {
        "apiVersion" => "2019-12-02",
        "endpointPrefix" => "route53-recovery-readiness",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Route53 Recovery Readiness",
        "serviceId" => "Route53 Recovery Readiness",
        "signatureVersion" => "v4",
        "signingName" => "route53-recovery-readiness",
        "uid" => "route53-recovery-readiness-2019-12-02",
      }

      api.add_operation(:create_cell, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCell"
        o.http_method = "POST"
        o.http_request_uri = "/cells"
        o.input = Shapes::ShapeRef.new(shape: CreateCellRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCellResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_cross_account_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCrossAccountAuthorization"
        o.http_method = "POST"
        o.http_request_uri = "/crossaccountauthorizations"
        o.input = Shapes::ShapeRef.new(shape: CreateCrossAccountAuthorizationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCrossAccountAuthorizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_readiness_check, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReadinessCheck"
        o.http_method = "POST"
        o.http_request_uri = "/readinesschecks"
        o.input = Shapes::ShapeRef.new(shape: CreateReadinessCheckRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateReadinessCheckResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_recovery_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRecoveryGroup"
        o.http_method = "POST"
        o.http_request_uri = "/recoverygroups"
        o.input = Shapes::ShapeRef.new(shape: CreateRecoveryGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRecoveryGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_resource_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResourceSet"
        o.http_method = "POST"
        o.http_request_uri = "/resourcesets"
        o.input = Shapes::ShapeRef.new(shape: CreateResourceSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResourceSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_cell, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCell"
        o.http_method = "DELETE"
        o.http_request_uri = "/cells/{cellName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCellRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_cross_account_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCrossAccountAuthorization"
        o.http_method = "DELETE"
        o.http_request_uri = "/crossaccountauthorizations/{crossAccountAuthorization}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCrossAccountAuthorizationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCrossAccountAuthorizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_readiness_check, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReadinessCheck"
        o.http_method = "DELETE"
        o.http_request_uri = "/readinesschecks/{readinessCheckName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteReadinessCheckRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_recovery_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRecoveryGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/recoverygroups/{recoveryGroupName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRecoveryGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_resource_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourceSet"
        o.http_method = "DELETE"
        o.http_request_uri = "/resourcesets/{resourceSetName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourceSetRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_architecture_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetArchitectureRecommendations"
        o.http_method = "GET"
        o.http_request_uri = "/recoverygroups/{recoveryGroupName}/architectureRecommendations"
        o.input = Shapes::ShapeRef.new(shape: GetArchitectureRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetArchitectureRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_cell, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCell"
        o.http_method = "GET"
        o.http_request_uri = "/cells/{cellName}"
        o.input = Shapes::ShapeRef.new(shape: GetCellRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCellResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_cell_readiness_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCellReadinessSummary"
        o.http_method = "GET"
        o.http_request_uri = "/cellreadiness/{cellName}"
        o.input = Shapes::ShapeRef.new(shape: GetCellReadinessSummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCellReadinessSummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_readiness_check, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReadinessCheck"
        o.http_method = "GET"
        o.http_request_uri = "/readinesschecks/{readinessCheckName}"
        o.input = Shapes::ShapeRef.new(shape: GetReadinessCheckRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReadinessCheckResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_readiness_check_resource_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReadinessCheckResourceStatus"
        o.http_method = "GET"
        o.http_request_uri = "/readinesschecks/{readinessCheckName}/resource/{resourceIdentifier}/status"
        o.input = Shapes::ShapeRef.new(shape: GetReadinessCheckResourceStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReadinessCheckResourceStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_readiness_check_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReadinessCheckStatus"
        o.http_method = "GET"
        o.http_request_uri = "/readinesschecks/{readinessCheckName}/status"
        o.input = Shapes::ShapeRef.new(shape: GetReadinessCheckStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReadinessCheckStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_recovery_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecoveryGroup"
        o.http_method = "GET"
        o.http_request_uri = "/recoverygroups/{recoveryGroupName}"
        o.input = Shapes::ShapeRef.new(shape: GetRecoveryGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRecoveryGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_recovery_group_readiness_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecoveryGroupReadinessSummary"
        o.http_method = "GET"
        o.http_request_uri = "/recoverygroupreadiness/{recoveryGroupName}"
        o.input = Shapes::ShapeRef.new(shape: GetRecoveryGroupReadinessSummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRecoveryGroupReadinessSummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_resource_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceSet"
        o.http_method = "GET"
        o.http_request_uri = "/resourcesets/{resourceSetName}"
        o.input = Shapes::ShapeRef.new(shape: GetResourceSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_cells, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCells"
        o.http_method = "GET"
        o.http_request_uri = "/cells"
        o.input = Shapes::ShapeRef.new(shape: ListCellsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCellsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_cross_account_authorizations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCrossAccountAuthorizations"
        o.http_method = "GET"
        o.http_request_uri = "/crossaccountauthorizations"
        o.input = Shapes::ShapeRef.new(shape: ListCrossAccountAuthorizationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCrossAccountAuthorizationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_readiness_checks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReadinessChecks"
        o.http_method = "GET"
        o.http_request_uri = "/readinesschecks"
        o.input = Shapes::ShapeRef.new(shape: ListReadinessChecksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReadinessChecksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recovery_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecoveryGroups"
        o.http_method = "GET"
        o.http_request_uri = "/recoverygroups"
        o.input = Shapes::ShapeRef.new(shape: ListRecoveryGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecoveryGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceSets"
        o.http_method = "GET"
        o.http_request_uri = "/resourcesets"
        o.input = Shapes::ShapeRef.new(shape: ListResourceSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_rules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRules"
        o.http_method = "GET"
        o.http_request_uri = "/rules"
        o.input = Shapes::ShapeRef.new(shape: ListRulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResources"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resource-arn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_cell, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCell"
        o.http_method = "PUT"
        o.http_request_uri = "/cells/{cellName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCellRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCellResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_readiness_check, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateReadinessCheck"
        o.http_method = "PUT"
        o.http_request_uri = "/readinesschecks/{readinessCheckName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateReadinessCheckRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateReadinessCheckResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_recovery_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRecoveryGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/recoverygroups/{recoveryGroupName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRecoveryGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRecoveryGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_resource_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResourceSet"
        o.http_method = "PUT"
        o.http_request_uri = "/resourcesets/{resourceSetName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateResourceSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResourceSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
