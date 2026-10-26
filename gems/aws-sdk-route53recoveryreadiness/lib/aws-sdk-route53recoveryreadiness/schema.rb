# frozen_string_literal: true

# This is generated code!

module Aws::Route53RecoveryReadiness
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    CellOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#CellOutput", name: "CellOutput")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateCellRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#CreateCellRequest", name: "CreateCellRequest")
    CreateCellResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#CreateCellResponse", name: "CreateCellResponse")
    CreateCrossAccountAuthorizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#CreateCrossAccountAuthorizationRequest", name: "CreateCrossAccountAuthorizationRequest")
    CreateCrossAccountAuthorizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#CreateCrossAccountAuthorizationResponse", name: "CreateCrossAccountAuthorizationResponse")
    CreateReadinessCheckRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#CreateReadinessCheckRequest", name: "CreateReadinessCheckRequest")
    CreateReadinessCheckResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#CreateReadinessCheckResponse", name: "CreateReadinessCheckResponse")
    CreateRecoveryGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#CreateRecoveryGroupRequest", name: "CreateRecoveryGroupRequest")
    CreateRecoveryGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#CreateRecoveryGroupResponse", name: "CreateRecoveryGroupResponse")
    CreateResourceSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#CreateResourceSetRequest", name: "CreateResourceSetRequest")
    CreateResourceSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#CreateResourceSetResponse", name: "CreateResourceSetResponse")
    CrossAccountAuthorization = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoveryreadiness#CrossAccountAuthorization", name: "CrossAccountAuthorization")
    DNSTargetResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#DNSTargetResource", name: "DNSTargetResource")
    DeleteCellRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#DeleteCellRequest", name: "DeleteCellRequest")
    DeleteCrossAccountAuthorizationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#DeleteCrossAccountAuthorizationRequest", name: "DeleteCrossAccountAuthorizationRequest")
    DeleteCrossAccountAuthorizationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#DeleteCrossAccountAuthorizationResponse", name: "DeleteCrossAccountAuthorizationResponse")
    DeleteReadinessCheckRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#DeleteReadinessCheckRequest", name: "DeleteReadinessCheckRequest")
    DeleteRecoveryGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#DeleteRecoveryGroupRequest", name: "DeleteRecoveryGroupRequest")
    DeleteResourceSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#DeleteResourceSetRequest", name: "DeleteResourceSetRequest")
    GetArchitectureRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetArchitectureRecommendationsRequest", name: "GetArchitectureRecommendationsRequest")
    GetArchitectureRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetArchitectureRecommendationsResponse", name: "GetArchitectureRecommendationsResponse")
    GetCellReadinessSummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetCellReadinessSummaryRequest", name: "GetCellReadinessSummaryRequest")
    GetCellReadinessSummaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetCellReadinessSummaryResponse", name: "GetCellReadinessSummaryResponse")
    GetCellRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetCellRequest", name: "GetCellRequest")
    GetCellResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetCellResponse", name: "GetCellResponse")
    GetReadinessCheckRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetReadinessCheckRequest", name: "GetReadinessCheckRequest")
    GetReadinessCheckResourceStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetReadinessCheckResourceStatusRequest", name: "GetReadinessCheckResourceStatusRequest")
    GetReadinessCheckResourceStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetReadinessCheckResourceStatusResponse", name: "GetReadinessCheckResourceStatusResponse")
    GetReadinessCheckResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetReadinessCheckResponse", name: "GetReadinessCheckResponse")
    GetReadinessCheckStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetReadinessCheckStatusRequest", name: "GetReadinessCheckStatusRequest")
    GetReadinessCheckStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetReadinessCheckStatusResponse", name: "GetReadinessCheckStatusResponse")
    GetRecoveryGroupReadinessSummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetRecoveryGroupReadinessSummaryRequest", name: "GetRecoveryGroupReadinessSummaryRequest")
    GetRecoveryGroupReadinessSummaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetRecoveryGroupReadinessSummaryResponse", name: "GetRecoveryGroupReadinessSummaryResponse")
    GetRecoveryGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetRecoveryGroupRequest", name: "GetRecoveryGroupRequest")
    GetRecoveryGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetRecoveryGroupResponse", name: "GetRecoveryGroupResponse")
    GetResourceSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetResourceSetRequest", name: "GetResourceSetRequest")
    GetResourceSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#GetResourceSetResponse", name: "GetResourceSetResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LastAuditTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.route53recoveryreadiness#LastAuditTimestamp", name: "LastAuditTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    ListCellsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ListCellsRequest", name: "ListCellsRequest")
    ListCellsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ListCellsResponse", name: "ListCellsResponse")
    ListCrossAccountAuthorizationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ListCrossAccountAuthorizationsRequest", name: "ListCrossAccountAuthorizationsRequest")
    ListCrossAccountAuthorizationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ListCrossAccountAuthorizationsResponse", name: "ListCrossAccountAuthorizationsResponse")
    ListReadinessChecksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ListReadinessChecksRequest", name: "ListReadinessChecksRequest")
    ListReadinessChecksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ListReadinessChecksResponse", name: "ListReadinessChecksResponse")
    ListRecoveryGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ListRecoveryGroupsRequest", name: "ListRecoveryGroupsRequest")
    ListRecoveryGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ListRecoveryGroupsResponse", name: "ListRecoveryGroupsResponse")
    ListResourceSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ListResourceSetsRequest", name: "ListResourceSetsRequest")
    ListResourceSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ListResourceSetsResponse", name: "ListResourceSetsResponse")
    ListRulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ListRulesOutput", name: "ListRulesOutput")
    ListRulesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ListRulesRequest", name: "ListRulesRequest")
    ListRulesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ListRulesResponse", name: "ListRulesResponse")
    ListTagsForResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ListTagsForResourcesRequest", name: "ListTagsForResourcesRequest")
    ListTagsForResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ListTagsForResourcesResponse", name: "ListTagsForResourcesResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.route53recoveryreadiness#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    Message = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#Message", name: "Message")
    NLBResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#NLBResource", name: "NLBResource")
    R53ResourceRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#R53ResourceRecord", name: "R53ResourceRecord")
    Readiness = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.route53recoveryreadiness#Readiness", name: "Readiness")
    ReadinessCheckOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ReadinessCheckOutput", name: "ReadinessCheckOutput")
    ReadinessCheckSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ReadinessCheckSummary", name: "ReadinessCheckSummary")
    ReadinessCheckTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.route53recoveryreadiness#ReadinessCheckTimestamp", name: "ReadinessCheckTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    Recommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#Recommendation", name: "Recommendation")
    RecoveryGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#RecoveryGroupOutput", name: "RecoveryGroupOutput")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#Resource", name: "Resource")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ResourceResult", name: "ResourceResult")
    ResourceSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ResourceSetOutput", name: "ResourceSetOutput")
    RuleResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#RuleResult", name: "RuleResult")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#TagResourceResponse", name: "TagResourceResponse")
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.route53recoveryreadiness#Tags", name: "Tags")
    TargetResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#TargetResource", name: "TargetResource")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#UntagResourceRequest", name: "UntagResourceRequest")
    UpdateCellRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#UpdateCellRequest", name: "UpdateCellRequest")
    UpdateCellResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#UpdateCellResponse", name: "UpdateCellResponse")
    UpdateReadinessCheckRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#UpdateReadinessCheckRequest", name: "UpdateReadinessCheckRequest")
    UpdateReadinessCheckResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#UpdateReadinessCheckResponse", name: "UpdateReadinessCheckResponse")
    UpdateRecoveryGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#UpdateRecoveryGroupRequest", name: "UpdateRecoveryGroupRequest")
    UpdateRecoveryGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#UpdateRecoveryGroupResponse", name: "UpdateRecoveryGroupResponse")
    UpdateResourceSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#UpdateResourceSetRequest", name: "UpdateResourceSetRequest")
    UpdateResourceSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#UpdateResourceSetResponse", name: "UpdateResourceSetResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.route53recoveryreadiness#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Listofcelloutput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoveryreadiness#__listOfCellOutput", name: "Listofcelloutput")
    Listofcrossaccountauthorization = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoveryreadiness#__listOfCrossAccountAuthorization", name: "Listofcrossaccountauthorization")
    Listoflistrulesoutput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoveryreadiness#__listOfListRulesOutput", name: "Listoflistrulesoutput")
    Listofmessage = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoveryreadiness#__listOfMessage", name: "Listofmessage")
    Listofreadinesscheckoutput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoveryreadiness#__listOfReadinessCheckOutput", name: "Listofreadinesscheckoutput")
    Listofreadinesschecksummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoveryreadiness#__listOfReadinessCheckSummary", name: "Listofreadinesschecksummary")
    Listofrecommendation = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoveryreadiness#__listOfRecommendation", name: "Listofrecommendation")
    Listofrecoverygroupoutput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoveryreadiness#__listOfRecoveryGroupOutput", name: "Listofrecoverygroupoutput")
    Listofresource = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoveryreadiness#__listOfResource", name: "Listofresource")
    Listofresourceresult = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoveryreadiness#__listOfResourceResult", name: "Listofresourceresult")
    Listofresourcesetoutput = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoveryreadiness#__listOfResourceSetOutput", name: "Listofresourcesetoutput")
    Listofruleresult = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoveryreadiness#__listOfRuleResult", name: "Listofruleresult")
    ListofString = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.route53recoveryreadiness#__listOf__string", name: "ListofString")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoveryreadiness#__string", name: "String")
    Stringmax256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoveryreadiness#__stringMax256", name: "Stringmax256", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Stringmax64 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoveryreadiness#__stringMax64", name: "Stringmax64", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}})
    Stringmax64patternaazaz09z = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoveryreadiness#__stringMax64PatternAAZAZ09Z", name: "Stringmax64patternaazaz09z", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^\\A[a-zA-Z0-9_]+\\z$"})
    Stringpatternawsazaz09azaz09 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.route53recoveryreadiness#__stringPatternAWSAZaZ09AZaZ09", name: "Stringpatternawsazaz09azaz09", traits: {"smithy.api#pattern" => "^AWS::[A-Za-z0-9]+::[A-Za-z0-9]+$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    AccessDeniedException.type = Types::AccessDeniedException
    CellOutput.add_member(:cell_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "CellArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "cellArn", "smithy.api#required" => {}}))
    CellOutput.add_member(:cell_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "CellName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "cellName", "smithy.api#required" => {}}))
    CellOutput.add_member(:cells, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "Cells", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "cells", "smithy.api#required" => {}}))
    CellOutput.add_member(:parent_readiness_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "ParentReadinessScopes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "parentReadinessScopes", "smithy.api#required" => {}}))
    CellOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CellOutput.type = Types::CellOutput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ConflictException.type = Types::ConflictException
    CreateCellRequest.add_member(:cell_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CellName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "cellName", "smithy.api#required" => {}}))
    CreateCellRequest.add_member(:cells, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "Cells", traits: {"smithy.api#jsonName" => "cells"}))
    CreateCellRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateCellRequest.type = Types::CreateCellRequest
    CreateCellResponse.add_member(:cell_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "CellArn", traits: {"smithy.api#jsonName" => "cellArn"}))
    CreateCellResponse.add_member(:cell_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "CellName", traits: {"smithy.api#jsonName" => "cellName"}))
    CreateCellResponse.add_member(:cells, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "Cells", traits: {"smithy.api#jsonName" => "cells"}))
    CreateCellResponse.add_member(:parent_readiness_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "ParentReadinessScopes", traits: {"smithy.api#jsonName" => "parentReadinessScopes"}))
    CreateCellResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateCellResponse.type = Types::CreateCellResponse
    CreateCrossAccountAuthorizationRequest.add_member(:cross_account_authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossAccountAuthorization, name: "CrossAccountAuthorization", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "crossAccountAuthorization", "smithy.api#required" => {}}))
    CreateCrossAccountAuthorizationRequest.type = Types::CreateCrossAccountAuthorizationRequest
    CreateCrossAccountAuthorizationResponse.add_member(:cross_account_authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossAccountAuthorization, name: "CrossAccountAuthorization", traits: {"smithy.api#jsonName" => "crossAccountAuthorization"}))
    CreateCrossAccountAuthorizationResponse.type = Types::CreateCrossAccountAuthorizationResponse
    CreateReadinessCheckRequest.add_member(:readiness_check_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReadinessCheckName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "readinessCheckName", "smithy.api#required" => {}}))
    CreateReadinessCheckRequest.add_member(:resource_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceSetName", "smithy.api#required" => {}}))
    CreateReadinessCheckRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateReadinessCheckRequest.type = Types::CreateReadinessCheckRequest
    CreateReadinessCheckResponse.add_member(:readiness_check_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "ReadinessCheckArn", traits: {"smithy.api#jsonName" => "readinessCheckArn"}))
    CreateReadinessCheckResponse.add_member(:readiness_check_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "ReadinessCheckName", traits: {"smithy.api#jsonName" => "readinessCheckName"}))
    CreateReadinessCheckResponse.add_member(:resource_set, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "ResourceSet", traits: {"smithy.api#jsonName" => "resourceSet"}))
    CreateReadinessCheckResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateReadinessCheckResponse.type = Types::CreateReadinessCheckResponse
    CreateRecoveryGroupRequest.add_member(:cells, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "Cells", traits: {"smithy.api#jsonName" => "cells"}))
    CreateRecoveryGroupRequest.add_member(:recovery_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecoveryGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "recoveryGroupName", "smithy.api#required" => {}}))
    CreateRecoveryGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateRecoveryGroupRequest.type = Types::CreateRecoveryGroupRequest
    CreateRecoveryGroupResponse.add_member(:cells, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "Cells", traits: {"smithy.api#jsonName" => "cells"}))
    CreateRecoveryGroupResponse.add_member(:recovery_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "RecoveryGroupArn", traits: {"smithy.api#jsonName" => "recoveryGroupArn"}))
    CreateRecoveryGroupResponse.add_member(:recovery_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "RecoveryGroupName", traits: {"smithy.api#jsonName" => "recoveryGroupName"}))
    CreateRecoveryGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateRecoveryGroupResponse.type = Types::CreateRecoveryGroupResponse
    CreateResourceSetRequest.add_member(:resource_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceSetName", "smithy.api#required" => {}}))
    CreateResourceSetRequest.add_member(:resource_set_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringpatternawsazaz09azaz09, name: "ResourceSetType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceSetType", "smithy.api#required" => {}}))
    CreateResourceSetRequest.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofresource, name: "Resources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resources", "smithy.api#required" => {}}))
    CreateResourceSetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateResourceSetRequest.type = Types::CreateResourceSetRequest
    CreateResourceSetResponse.add_member(:resource_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "ResourceSetArn", traits: {"smithy.api#jsonName" => "resourceSetArn"}))
    CreateResourceSetResponse.add_member(:resource_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "ResourceSetName", traits: {"smithy.api#jsonName" => "resourceSetName"}))
    CreateResourceSetResponse.add_member(:resource_set_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringpatternawsazaz09azaz09, name: "ResourceSetType", traits: {"smithy.api#jsonName" => "resourceSetType"}))
    CreateResourceSetResponse.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofresource, name: "Resources", traits: {"smithy.api#jsonName" => "resources"}))
    CreateResourceSetResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    CreateResourceSetResponse.type = Types::CreateResourceSetResponse
    DNSTargetResource.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainName", traits: {"smithy.api#jsonName" => "domainName"}))
    DNSTargetResource.add_member(:hosted_zone_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "HostedZoneArn", traits: {"smithy.api#jsonName" => "hostedZoneArn"}))
    DNSTargetResource.add_member(:record_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecordSetId", traits: {"smithy.api#jsonName" => "recordSetId"}))
    DNSTargetResource.add_member(:record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecordType", traits: {"smithy.api#jsonName" => "recordType"}))
    DNSTargetResource.add_member(:target_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResource, name: "TargetResource", traits: {"smithy.api#jsonName" => "targetResource"}))
    DNSTargetResource.type = Types::DNSTargetResource
    DeleteCellRequest.add_member(:cell_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CellName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCellRequest.type = Types::DeleteCellRequest
    DeleteCrossAccountAuthorizationRequest.add_member(:cross_account_authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CrossAccountAuthorization", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCrossAccountAuthorizationRequest.type = Types::DeleteCrossAccountAuthorizationRequest
    DeleteCrossAccountAuthorizationResponse.type = Types::DeleteCrossAccountAuthorizationResponse
    DeleteReadinessCheckRequest.add_member(:readiness_check_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReadinessCheckName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteReadinessCheckRequest.type = Types::DeleteReadinessCheckRequest
    DeleteRecoveryGroupRequest.add_member(:recovery_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecoveryGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRecoveryGroupRequest.type = Types::DeleteRecoveryGroupRequest
    DeleteResourceSetRequest.add_member(:resource_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteResourceSetRequest.type = Types::DeleteResourceSetRequest
    GetArchitectureRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetArchitectureRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetArchitectureRecommendationsRequest.add_member(:recovery_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecoveryGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetArchitectureRecommendationsRequest.type = Types::GetArchitectureRecommendationsRequest
    GetArchitectureRecommendationsResponse.add_member(:last_audit_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: LastAuditTimestamp, name: "LastAuditTimestamp", traits: {"smithy.api#jsonName" => "lastAuditTimestamp"}))
    GetArchitectureRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetArchitectureRecommendationsResponse.add_member(:recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofrecommendation, name: "Recommendations", traits: {"smithy.api#jsonName" => "recommendations"}))
    GetArchitectureRecommendationsResponse.type = Types::GetArchitectureRecommendationsResponse
    GetCellReadinessSummaryRequest.add_member(:cell_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CellName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCellReadinessSummaryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetCellReadinessSummaryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetCellReadinessSummaryRequest.type = Types::GetCellReadinessSummaryRequest
    GetCellReadinessSummaryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetCellReadinessSummaryResponse.add_member(:readiness, ::Smithy::Schema::Shapes::MemberShape.new(target: Readiness, name: "Readiness", traits: {"smithy.api#jsonName" => "readiness"}))
    GetCellReadinessSummaryResponse.add_member(:readiness_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofreadinesschecksummary, name: "ReadinessChecks", traits: {"smithy.api#jsonName" => "readinessChecks"}))
    GetCellReadinessSummaryResponse.type = Types::GetCellReadinessSummaryResponse
    GetCellRequest.add_member(:cell_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CellName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCellRequest.type = Types::GetCellRequest
    GetCellResponse.add_member(:cell_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "CellArn", traits: {"smithy.api#jsonName" => "cellArn"}))
    GetCellResponse.add_member(:cell_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "CellName", traits: {"smithy.api#jsonName" => "cellName"}))
    GetCellResponse.add_member(:cells, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "Cells", traits: {"smithy.api#jsonName" => "cells"}))
    GetCellResponse.add_member(:parent_readiness_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "ParentReadinessScopes", traits: {"smithy.api#jsonName" => "parentReadinessScopes"}))
    GetCellResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetCellResponse.type = Types::GetCellResponse
    GetReadinessCheckRequest.add_member(:readiness_check_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReadinessCheckName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadinessCheckRequest.type = Types::GetReadinessCheckRequest
    GetReadinessCheckResourceStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetReadinessCheckResourceStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetReadinessCheckResourceStatusRequest.add_member(:readiness_check_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReadinessCheckName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadinessCheckResourceStatusRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadinessCheckResourceStatusRequest.type = Types::GetReadinessCheckResourceStatusRequest
    GetReadinessCheckResourceStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetReadinessCheckResourceStatusResponse.add_member(:readiness, ::Smithy::Schema::Shapes::MemberShape.new(target: Readiness, name: "Readiness", traits: {"smithy.api#jsonName" => "readiness"}))
    GetReadinessCheckResourceStatusResponse.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofruleresult, name: "Rules", traits: {"smithy.api#jsonName" => "rules"}))
    GetReadinessCheckResourceStatusResponse.type = Types::GetReadinessCheckResourceStatusResponse
    GetReadinessCheckResponse.add_member(:readiness_check_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "ReadinessCheckArn", traits: {"smithy.api#jsonName" => "readinessCheckArn"}))
    GetReadinessCheckResponse.add_member(:readiness_check_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "ReadinessCheckName", traits: {"smithy.api#jsonName" => "readinessCheckName"}))
    GetReadinessCheckResponse.add_member(:resource_set, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "ResourceSet", traits: {"smithy.api#jsonName" => "resourceSet"}))
    GetReadinessCheckResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetReadinessCheckResponse.type = Types::GetReadinessCheckResponse
    GetReadinessCheckStatusRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetReadinessCheckStatusRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetReadinessCheckStatusRequest.add_member(:readiness_check_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReadinessCheckName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadinessCheckStatusRequest.type = Types::GetReadinessCheckStatusRequest
    GetReadinessCheckStatusResponse.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmessage, name: "Messages", traits: {"smithy.api#jsonName" => "messages"}))
    GetReadinessCheckStatusResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetReadinessCheckStatusResponse.add_member(:readiness, ::Smithy::Schema::Shapes::MemberShape.new(target: Readiness, name: "Readiness", traits: {"smithy.api#jsonName" => "readiness"}))
    GetReadinessCheckStatusResponse.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofresourceresult, name: "Resources", traits: {"smithy.api#jsonName" => "resources"}))
    GetReadinessCheckStatusResponse.type = Types::GetReadinessCheckStatusResponse
    GetRecoveryGroupReadinessSummaryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetRecoveryGroupReadinessSummaryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetRecoveryGroupReadinessSummaryRequest.add_member(:recovery_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecoveryGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecoveryGroupReadinessSummaryRequest.type = Types::GetRecoveryGroupReadinessSummaryRequest
    GetRecoveryGroupReadinessSummaryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    GetRecoveryGroupReadinessSummaryResponse.add_member(:readiness, ::Smithy::Schema::Shapes::MemberShape.new(target: Readiness, name: "Readiness", traits: {"smithy.api#jsonName" => "readiness"}))
    GetRecoveryGroupReadinessSummaryResponse.add_member(:readiness_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofreadinesschecksummary, name: "ReadinessChecks", traits: {"smithy.api#jsonName" => "readinessChecks"}))
    GetRecoveryGroupReadinessSummaryResponse.type = Types::GetRecoveryGroupReadinessSummaryResponse
    GetRecoveryGroupRequest.add_member(:recovery_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecoveryGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecoveryGroupRequest.type = Types::GetRecoveryGroupRequest
    GetRecoveryGroupResponse.add_member(:cells, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "Cells", traits: {"smithy.api#jsonName" => "cells"}))
    GetRecoveryGroupResponse.add_member(:recovery_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "RecoveryGroupArn", traits: {"smithy.api#jsonName" => "recoveryGroupArn"}))
    GetRecoveryGroupResponse.add_member(:recovery_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "RecoveryGroupName", traits: {"smithy.api#jsonName" => "recoveryGroupName"}))
    GetRecoveryGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetRecoveryGroupResponse.type = Types::GetRecoveryGroupResponse
    GetResourceSetRequest.add_member(:resource_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetResourceSetRequest.type = Types::GetResourceSetRequest
    GetResourceSetResponse.add_member(:resource_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "ResourceSetArn", traits: {"smithy.api#jsonName" => "resourceSetArn"}))
    GetResourceSetResponse.add_member(:resource_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "ResourceSetName", traits: {"smithy.api#jsonName" => "resourceSetName"}))
    GetResourceSetResponse.add_member(:resource_set_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringpatternawsazaz09azaz09, name: "ResourceSetType", traits: {"smithy.api#jsonName" => "resourceSetType"}))
    GetResourceSetResponse.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofresource, name: "Resources", traits: {"smithy.api#jsonName" => "resources"}))
    GetResourceSetResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    GetResourceSetResponse.type = Types::GetResourceSetResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    InternalServerException.type = Types::InternalServerException
    ListCellsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCellsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCellsRequest.type = Types::ListCellsRequest
    ListCellsResponse.add_member(:cells, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofcelloutput, name: "Cells", traits: {"smithy.api#jsonName" => "cells"}))
    ListCellsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListCellsResponse.type = Types::ListCellsResponse
    ListCrossAccountAuthorizationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCrossAccountAuthorizationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCrossAccountAuthorizationsRequest.type = Types::ListCrossAccountAuthorizationsRequest
    ListCrossAccountAuthorizationsResponse.add_member(:cross_account_authorizations, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofcrossaccountauthorization, name: "CrossAccountAuthorizations", traits: {"smithy.api#jsonName" => "crossAccountAuthorizations"}))
    ListCrossAccountAuthorizationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListCrossAccountAuthorizationsResponse.type = Types::ListCrossAccountAuthorizationsResponse
    ListReadinessChecksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListReadinessChecksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReadinessChecksRequest.type = Types::ListReadinessChecksRequest
    ListReadinessChecksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListReadinessChecksResponse.add_member(:readiness_checks, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofreadinesscheckoutput, name: "ReadinessChecks", traits: {"smithy.api#jsonName" => "readinessChecks"}))
    ListReadinessChecksResponse.type = Types::ListReadinessChecksResponse
    ListRecoveryGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRecoveryGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRecoveryGroupsRequest.type = Types::ListRecoveryGroupsRequest
    ListRecoveryGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListRecoveryGroupsResponse.add_member(:recovery_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofrecoverygroupoutput, name: "RecoveryGroups", traits: {"smithy.api#jsonName" => "recoveryGroups"}))
    ListRecoveryGroupsResponse.type = Types::ListRecoveryGroupsResponse
    ListResourceSetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListResourceSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListResourceSetsRequest.type = Types::ListResourceSetsRequest
    ListResourceSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListResourceSetsResponse.add_member(:resource_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofresourcesetoutput, name: "ResourceSets", traits: {"smithy.api#jsonName" => "resourceSets"}))
    ListResourceSetsResponse.type = Types::ListResourceSetsResponse
    ListRulesOutput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64, name: "ResourceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceType", "smithy.api#required" => {}}))
    ListRulesOutput.add_member(:rule_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "RuleDescription", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ruleDescription", "smithy.api#required" => {}}))
    ListRulesOutput.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64, name: "RuleId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ruleId", "smithy.api#required" => {}}))
    ListRulesOutput.type = Types::ListRulesOutput
    ListRulesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListRulesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRulesRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceType", traits: {"smithy.api#httpQuery" => "resourceType"}))
    ListRulesRequest.type = Types::ListRulesRequest
    ListRulesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#jsonName" => "nextToken"}))
    ListRulesResponse.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: Listoflistrulesoutput, name: "Rules", traits: {"smithy.api#jsonName" => "rules"}))
    ListRulesResponse.type = Types::ListRulesResponse
    ListTagsForResourcesRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourcesRequest.type = Types::ListTagsForResourcesRequest
    ListTagsForResourcesResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ListTagsForResourcesResponse.type = Types::ListTagsForResourcesResponse
    Message.add_member(:message_text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MessageText", traits: {"smithy.api#jsonName" => "messageText"}))
    Message.type = Types::Message
    NLBResource.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#jsonName" => "arn"}))
    NLBResource.type = Types::NLBResource
    R53ResourceRecord.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DomainName", traits: {"smithy.api#jsonName" => "domainName"}))
    R53ResourceRecord.add_member(:record_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecordSetId", traits: {"smithy.api#jsonName" => "recordSetId"}))
    R53ResourceRecord.type = Types::R53ResourceRecord
    Readiness.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    Readiness.add_member(:not_ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_READY", traits: {"smithy.api#enumValue" => "NOT_READY"}))
    Readiness.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    Readiness.add_member(:not_authorized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_AUTHORIZED", traits: {"smithy.api#enumValue" => "NOT_AUTHORIZED"}))
    ReadinessCheckOutput.add_member(:readiness_check_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "ReadinessCheckArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "readinessCheckArn", "smithy.api#required" => {}}))
    ReadinessCheckOutput.add_member(:readiness_check_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "ReadinessCheckName", traits: {"smithy.api#jsonName" => "readinessCheckName"}))
    ReadinessCheckOutput.add_member(:resource_set, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "ResourceSet", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceSet", "smithy.api#required" => {}}))
    ReadinessCheckOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ReadinessCheckOutput.type = Types::ReadinessCheckOutput
    ReadinessCheckSummary.add_member(:readiness, ::Smithy::Schema::Shapes::MemberShape.new(target: Readiness, name: "Readiness", traits: {"smithy.api#jsonName" => "readiness"}))
    ReadinessCheckSummary.add_member(:readiness_check_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReadinessCheckName", traits: {"smithy.api#jsonName" => "readinessCheckName"}))
    ReadinessCheckSummary.type = Types::ReadinessCheckSummary
    Recommendation.add_member(:recommendation_text, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecommendationText", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "recommendationText", "smithy.api#required" => {}}))
    Recommendation.type = Types::Recommendation
    RecoveryGroupOutput.add_member(:cells, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "Cells", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "cells", "smithy.api#required" => {}}))
    RecoveryGroupOutput.add_member(:recovery_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "RecoveryGroupArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "recoveryGroupArn", "smithy.api#required" => {}}))
    RecoveryGroupOutput.add_member(:recovery_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "RecoveryGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "recoveryGroupName", "smithy.api#required" => {}}))
    RecoveryGroupOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    RecoveryGroupOutput.type = Types::RecoveryGroupOutput
    Resource.add_member(:component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ComponentId", traits: {"smithy.api#jsonName" => "componentId"}))
    Resource.add_member(:dns_target_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSTargetResource, name: "DnsTargetResource", traits: {"smithy.api#jsonName" => "dnsTargetResource"}))
    Resource.add_member(:readiness_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "ReadinessScopes", traits: {"smithy.api#jsonName" => "readinessScopes"}))
    Resource.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#jsonName" => "resourceArn"}))
    Resource.type = Types::Resource
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceResult.add_member(:component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ComponentId", traits: {"smithy.api#jsonName" => "componentId"}))
    ResourceResult.add_member(:last_checked_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadinessCheckTimestamp, name: "LastCheckedTimestamp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "lastCheckedTimestamp", "smithy.api#required" => {}}))
    ResourceResult.add_member(:readiness, ::Smithy::Schema::Shapes::MemberShape.new(target: Readiness, name: "Readiness", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "readiness", "smithy.api#required" => {}}))
    ResourceResult.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#jsonName" => "resourceArn"}))
    ResourceResult.type = Types::ResourceResult
    ResourceSetOutput.add_member(:resource_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "ResourceSetArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceSetArn", "smithy.api#required" => {}}))
    ResourceSetOutput.add_member(:resource_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "ResourceSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceSetName", "smithy.api#required" => {}}))
    ResourceSetOutput.add_member(:resource_set_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringpatternawsazaz09azaz09, name: "ResourceSetType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceSetType", "smithy.api#required" => {}}))
    ResourceSetOutput.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofresource, name: "Resources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resources", "smithy.api#required" => {}}))
    ResourceSetOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ResourceSetOutput.type = Types::ResourceSetOutput
    RuleResult.add_member(:last_checked_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadinessCheckTimestamp, name: "LastCheckedTimestamp", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "lastCheckedTimestamp", "smithy.api#required" => {}}))
    RuleResult.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofmessage, name: "Messages", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "messages", "smithy.api#required" => {}}))
    RuleResult.add_member(:readiness, ::Smithy::Schema::Shapes::MemberShape.new(target: Readiness, name: "Readiness", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "readiness", "smithy.api#required" => {}}))
    RuleResult.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RuleId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "ruleId", "smithy.api#required" => {}}))
    RuleResult.type = Types::RuleResult
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    TargetResource.add_member(:nlb_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: NLBResource, name: "NLBResource", traits: {"smithy.api#jsonName" => "nLBResource"}))
    TargetResource.add_member(:r53_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: R53ResourceRecord, name: "R53Resource", traits: {"smithy.api#jsonName" => "r53Resource"}))
    TargetResource.type = Types::TargetResource
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateCellRequest.add_member(:cell_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CellName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCellRequest.add_member(:cells, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "Cells", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "cells", "smithy.api#required" => {}}))
    UpdateCellRequest.type = Types::UpdateCellRequest
    UpdateCellResponse.add_member(:cell_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "CellArn", traits: {"smithy.api#jsonName" => "cellArn"}))
    UpdateCellResponse.add_member(:cell_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "CellName", traits: {"smithy.api#jsonName" => "cellName"}))
    UpdateCellResponse.add_member(:cells, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "Cells", traits: {"smithy.api#jsonName" => "cells"}))
    UpdateCellResponse.add_member(:parent_readiness_scopes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "ParentReadinessScopes", traits: {"smithy.api#jsonName" => "parentReadinessScopes"}))
    UpdateCellResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdateCellResponse.type = Types::UpdateCellResponse
    UpdateReadinessCheckRequest.add_member(:readiness_check_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ReadinessCheckName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateReadinessCheckRequest.add_member(:resource_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceSetName", "smithy.api#required" => {}}))
    UpdateReadinessCheckRequest.type = Types::UpdateReadinessCheckRequest
    UpdateReadinessCheckResponse.add_member(:readiness_check_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "ReadinessCheckArn", traits: {"smithy.api#jsonName" => "readinessCheckArn"}))
    UpdateReadinessCheckResponse.add_member(:readiness_check_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "ReadinessCheckName", traits: {"smithy.api#jsonName" => "readinessCheckName"}))
    UpdateReadinessCheckResponse.add_member(:resource_set, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "ResourceSet", traits: {"smithy.api#jsonName" => "resourceSet"}))
    UpdateReadinessCheckResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdateReadinessCheckResponse.type = Types::UpdateReadinessCheckResponse
    UpdateRecoveryGroupRequest.add_member(:cells, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "Cells", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "cells", "smithy.api#required" => {}}))
    UpdateRecoveryGroupRequest.add_member(:recovery_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecoveryGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecoveryGroupRequest.type = Types::UpdateRecoveryGroupRequest
    UpdateRecoveryGroupResponse.add_member(:cells, ::Smithy::Schema::Shapes::MemberShape.new(target: ListofString, name: "Cells", traits: {"smithy.api#jsonName" => "cells"}))
    UpdateRecoveryGroupResponse.add_member(:recovery_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "RecoveryGroupArn", traits: {"smithy.api#jsonName" => "recoveryGroupArn"}))
    UpdateRecoveryGroupResponse.add_member(:recovery_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "RecoveryGroupName", traits: {"smithy.api#jsonName" => "recoveryGroupName"}))
    UpdateRecoveryGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdateRecoveryGroupResponse.type = Types::UpdateRecoveryGroupResponse
    UpdateResourceSetRequest.add_member(:resource_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateResourceSetRequest.add_member(:resource_set_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringpatternawsazaz09azaz09, name: "ResourceSetType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resourceSetType", "smithy.api#required" => {}}))
    UpdateResourceSetRequest.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofresource, name: "Resources", traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "resources", "smithy.api#required" => {}}))
    UpdateResourceSetRequest.type = Types::UpdateResourceSetRequest
    UpdateResourceSetResponse.add_member(:resource_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax256, name: "ResourceSetArn", traits: {"smithy.api#jsonName" => "resourceSetArn"}))
    UpdateResourceSetResponse.add_member(:resource_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmax64patternaazaz09z, name: "ResourceSetName", traits: {"smithy.api#jsonName" => "resourceSetName"}))
    UpdateResourceSetResponse.add_member(:resource_set_type, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringpatternawsazaz09azaz09, name: "ResourceSetType", traits: {"smithy.api#jsonName" => "resourceSetType"}))
    UpdateResourceSetResponse.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Listofresource, name: "Resources", traits: {"smithy.api#jsonName" => "resources"}))
    UpdateResourceSetResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    UpdateResourceSetResponse.type = Types::UpdateResourceSetResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#jsonName" => "message"}))
    ValidationException.type = Types::ValidationException
    Listofcelloutput.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CellOutput, name: "member"))
    Listofcrossaccountauthorization.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CrossAccountAuthorization, name: "member"))
    Listoflistrulesoutput.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRulesOutput, name: "member"))
    Listofmessage.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "member"))
    Listofreadinesscheckoutput.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadinessCheckOutput, name: "member"))
    Listofreadinesschecksummary.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadinessCheckSummary, name: "member"))
    Listofrecommendation.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendation, name: "member"))
    Listofrecoverygroupoutput.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecoveryGroupOutput, name: "member"))
    Listofresource.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "member"))
    Listofresourceresult.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceResult, name: "member"))
    Listofresourcesetoutput.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSetOutput, name: "member"))
    Listofruleresult.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleResult, name: "member"))
    ListofString.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))

    Route53RecoveryReadiness = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.route53recoveryreadiness#Route53RecoveryReadiness"
      service.name = "Route53RecoveryReadiness"
      service.version = "2019-12-02"
      service.traits = {"aws.api#service" => {"sdkId" => "Route53 Recovery Readiness", "arnNamespace" => "route53-recovery-readiness", "cloudFormationName" => "Route53RecoveryReadiness", "cloudTrailEventSource" => "route53-recovery-readiness.amazonaws.com", "endpointPrefix" => "route53-recovery-readiness"}, "aws.auth#sigv4" => {"name" => "route53-recovery-readiness"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "AWS Route53 Recovery Readiness", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://route53-recovery-readiness-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://route53-recovery-readiness-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://route53-recovery-readiness.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://route53-recovery-readiness.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:create_cell, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#CreateCell"
        operation.name = "CreateCell"
        operation.input = CreateCellRequest
        operation.output = CreateCellResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cells", "code" => 200}}
      end)
      service.add_operation(:create_cross_account_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#CreateCrossAccountAuthorization"
        operation.name = "CreateCrossAccountAuthorization"
        operation.input = CreateCrossAccountAuthorizationRequest
        operation.output = CreateCrossAccountAuthorizationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/crossaccountauthorizations", "code" => 200}}
      end)
      service.add_operation(:create_readiness_check, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#CreateReadinessCheck"
        operation.name = "CreateReadinessCheck"
        operation.input = CreateReadinessCheckRequest
        operation.output = CreateReadinessCheckResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/readinesschecks", "code" => 200}}
      end)
      service.add_operation(:create_recovery_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#CreateRecoveryGroup"
        operation.name = "CreateRecoveryGroup"
        operation.input = CreateRecoveryGroupRequest
        operation.output = CreateRecoveryGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/recoverygroups", "code" => 200}}
      end)
      service.add_operation(:create_resource_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#CreateResourceSet"
        operation.name = "CreateResourceSet"
        operation.input = CreateResourceSetRequest
        operation.output = CreateResourceSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/resourcesets", "code" => 200}}
      end)
      service.add_operation(:delete_cell, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#DeleteCell"
        operation.name = "DeleteCell"
        operation.input = DeleteCellRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/cells/{CellName}", "code" => 204}}
      end)
      service.add_operation(:delete_cross_account_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#DeleteCrossAccountAuthorization"
        operation.name = "DeleteCrossAccountAuthorization"
        operation.input = DeleteCrossAccountAuthorizationRequest
        operation.output = DeleteCrossAccountAuthorizationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/crossaccountauthorizations/{CrossAccountAuthorization}", "code" => 200}}
      end)
      service.add_operation(:delete_readiness_check, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#DeleteReadinessCheck"
        operation.name = "DeleteReadinessCheck"
        operation.input = DeleteReadinessCheckRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/readinesschecks/{ReadinessCheckName}", "code" => 204}}
      end)
      service.add_operation(:delete_recovery_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#DeleteRecoveryGroup"
        operation.name = "DeleteRecoveryGroup"
        operation.input = DeleteRecoveryGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/recoverygroups/{RecoveryGroupName}", "code" => 204}}
      end)
      service.add_operation(:delete_resource_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#DeleteResourceSet"
        operation.name = "DeleteResourceSet"
        operation.input = DeleteResourceSetRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/resourcesets/{ResourceSetName}", "code" => 204}}
      end)
      service.add_operation(:get_architecture_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#GetArchitectureRecommendations"
        operation.name = "GetArchitectureRecommendations"
        operation.input = GetArchitectureRecommendationsRequest
        operation.output = GetArchitectureRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/recoverygroups/{RecoveryGroupName}/architectureRecommendations", "code" => 200}}
      end)
      service.add_operation(:get_cell, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#GetCell"
        operation.name = "GetCell"
        operation.input = GetCellRequest
        operation.output = GetCellResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/cells/{CellName}", "code" => 200}}
      end)
      service.add_operation(:get_cell_readiness_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#GetCellReadinessSummary"
        operation.name = "GetCellReadinessSummary"
        operation.input = GetCellReadinessSummaryRequest
        operation.output = GetCellReadinessSummaryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/cellreadiness/{CellName}", "code" => 200}}
        operation[:paginator] = Paginators::GetCellReadinessSummary.new
      end)
      service.add_operation(:get_readiness_check, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#GetReadinessCheck"
        operation.name = "GetReadinessCheck"
        operation.input = GetReadinessCheckRequest
        operation.output = GetReadinessCheckResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/readinesschecks/{ReadinessCheckName}", "code" => 200}}
      end)
      service.add_operation(:get_readiness_check_resource_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#GetReadinessCheckResourceStatus"
        operation.name = "GetReadinessCheckResourceStatus"
        operation.input = GetReadinessCheckResourceStatusRequest
        operation.output = GetReadinessCheckResourceStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/readinesschecks/{ReadinessCheckName}/resource/{ResourceIdentifier}/status", "code" => 200}}
        operation[:paginator] = Paginators::GetReadinessCheckResourceStatus.new
      end)
      service.add_operation(:get_readiness_check_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#GetReadinessCheckStatus"
        operation.name = "GetReadinessCheckStatus"
        operation.input = GetReadinessCheckStatusRequest
        operation.output = GetReadinessCheckStatusResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/readinesschecks/{ReadinessCheckName}/status", "code" => 200}}
        operation[:paginator] = Paginators::GetReadinessCheckStatus.new
      end)
      service.add_operation(:get_recovery_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#GetRecoveryGroup"
        operation.name = "GetRecoveryGroup"
        operation.input = GetRecoveryGroupRequest
        operation.output = GetRecoveryGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/recoverygroups/{RecoveryGroupName}", "code" => 200}}
      end)
      service.add_operation(:get_recovery_group_readiness_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#GetRecoveryGroupReadinessSummary"
        operation.name = "GetRecoveryGroupReadinessSummary"
        operation.input = GetRecoveryGroupReadinessSummaryRequest
        operation.output = GetRecoveryGroupReadinessSummaryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/recoverygroupreadiness/{RecoveryGroupName}", "code" => 200}}
        operation[:paginator] = Paginators::GetRecoveryGroupReadinessSummary.new
      end)
      service.add_operation(:get_resource_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#GetResourceSet"
        operation.name = "GetResourceSet"
        operation.input = GetResourceSetRequest
        operation.output = GetResourceSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resourcesets/{ResourceSetName}", "code" => 200}}
      end)
      service.add_operation(:list_cells, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#ListCells"
        operation.name = "ListCells"
        operation.input = ListCellsRequest
        operation.output = ListCellsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/cells", "code" => 200}}
        operation[:paginator] = Paginators::ListCells.new
      end)
      service.add_operation(:list_cross_account_authorizations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#ListCrossAccountAuthorizations"
        operation.name = "ListCrossAccountAuthorizations"
        operation.input = ListCrossAccountAuthorizationsRequest
        operation.output = ListCrossAccountAuthorizationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/crossaccountauthorizations", "code" => 200}}
        operation[:paginator] = Paginators::ListCrossAccountAuthorizations.new
      end)
      service.add_operation(:list_readiness_checks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#ListReadinessChecks"
        operation.name = "ListReadinessChecks"
        operation.input = ListReadinessChecksRequest
        operation.output = ListReadinessChecksResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/readinesschecks", "code" => 200}}
        operation[:paginator] = Paginators::ListReadinessChecks.new
      end)
      service.add_operation(:list_recovery_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#ListRecoveryGroups"
        operation.name = "ListRecoveryGroups"
        operation.input = ListRecoveryGroupsRequest
        operation.output = ListRecoveryGroupsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/recoverygroups", "code" => 200}}
        operation[:paginator] = Paginators::ListRecoveryGroups.new
      end)
      service.add_operation(:list_resource_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#ListResourceSets"
        operation.name = "ListResourceSets"
        operation.input = ListResourceSetsRequest
        operation.output = ListResourceSetsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resourcesets", "code" => 200}}
        operation[:paginator] = Paginators::ListResourceSets.new
      end)
      service.add_operation(:list_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#ListRules"
        operation.name = "ListRules"
        operation.input = ListRulesRequest
        operation.output = ListRulesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/rules", "code" => 200}}
        operation[:paginator] = Paginators::ListRules.new
      end)
      service.add_operation(:list_tags_for_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#ListTagsForResources"
        operation.name = "ListTagsForResources"
        operation.input = ListTagsForResourcesRequest
        operation.output = ListTagsForResourcesResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_cell, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#UpdateCell"
        operation.name = "UpdateCell"
        operation.input = UpdateCellRequest
        operation.output = UpdateCellResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/cells/{CellName}", "code" => 200}}
      end)
      service.add_operation(:update_readiness_check, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#UpdateReadinessCheck"
        operation.name = "UpdateReadinessCheck"
        operation.input = UpdateReadinessCheckRequest
        operation.output = UpdateReadinessCheckResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/readinesschecks/{ReadinessCheckName}", "code" => 200}}
      end)
      service.add_operation(:update_recovery_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#UpdateRecoveryGroup"
        operation.name = "UpdateRecoveryGroup"
        operation.input = UpdateRecoveryGroupRequest
        operation.output = UpdateRecoveryGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/recoverygroups/{RecoveryGroupName}", "code" => 200}}
      end)
      service.add_operation(:update_resource_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.route53recoveryreadiness#UpdateResourceSet"
        operation.name = "UpdateResourceSet"
        operation.input = UpdateResourceSetRequest
        operation.output = UpdateResourceSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/resourcesets/{ResourceSetName}", "code" => 200}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
