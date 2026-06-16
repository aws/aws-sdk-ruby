# frozen_string_literal: true

# This is generated code!

module Aws::TrustedAdvisor
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.trustedadvisor#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^\\d+$"})
    AccountRecommendationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.trustedadvisor#AccountRecommendationArn", name: "AccountRecommendationArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w-]+:trustedadvisor::\\d{12}:recommendation\\/[\\w-]+$"})
    AccountRecommendationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.trustedadvisor#AccountRecommendationIdentifier", name: "AccountRecommendationIdentifier", traits: {"smithy.api#length" => {"min" => 20, "max" => 200}, "smithy.api#pattern" => "^arn:[\\w-]+:trustedadvisor::\\d{12}:recommendation\\/[\\w-]+$"})
    AccountRecommendationLifecycleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#AccountRecommendationLifecycleSummary", name: "AccountRecommendationLifecycleSummary")
    AccountRecommendationLifecycleSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.trustedadvisor#AccountRecommendationLifecycleSummaryList", name: "AccountRecommendationLifecycleSummaryList")
    BatchUpdateRecommendationResourceExclusionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#BatchUpdateRecommendationResourceExclusionRequest", name: "BatchUpdateRecommendationResourceExclusionRequest")
    BatchUpdateRecommendationResourceExclusionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#BatchUpdateRecommendationResourceExclusionResponse", name: "BatchUpdateRecommendationResourceExclusionResponse")
    CheckArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.trustedadvisor#CheckArn", name: "CheckArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w-]+:trustedadvisor:::check\\/[\\w-]+$"})
    CheckIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.trustedadvisor#CheckIdentifier", name: "CheckIdentifier", traits: {"smithy.api#length" => {"min" => 20, "max" => 64}, "smithy.api#pattern" => "^arn:[\\w-]+:trustedadvisor:::check\\/[\\w-]+$"})
    CheckSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#CheckSummary", name: "CheckSummary")
    CheckSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.trustedadvisor#CheckSummaryList", name: "CheckSummaryList")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ExclusionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.trustedadvisor#ExclusionStatus", name: "ExclusionStatus")
    GetOrganizationRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#GetOrganizationRecommendationRequest", name: "GetOrganizationRecommendationRequest")
    GetOrganizationRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#GetOrganizationRecommendationResponse", name: "GetOrganizationRecommendationResponse")
    GetRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#GetRecommendationRequest", name: "GetRecommendationRequest")
    GetRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#GetRecommendationResponse", name: "GetRecommendationResponse")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListChecksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#ListChecksRequest", name: "ListChecksRequest")
    ListChecksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#ListChecksResponse", name: "ListChecksResponse")
    ListOrganizationRecommendationAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#ListOrganizationRecommendationAccountsRequest", name: "ListOrganizationRecommendationAccountsRequest")
    ListOrganizationRecommendationAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#ListOrganizationRecommendationAccountsResponse", name: "ListOrganizationRecommendationAccountsResponse")
    ListOrganizationRecommendationResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#ListOrganizationRecommendationResourcesRequest", name: "ListOrganizationRecommendationResourcesRequest")
    ListOrganizationRecommendationResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#ListOrganizationRecommendationResourcesResponse", name: "ListOrganizationRecommendationResourcesResponse")
    ListOrganizationRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#ListOrganizationRecommendationsRequest", name: "ListOrganizationRecommendationsRequest")
    ListOrganizationRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#ListOrganizationRecommendationsResponse", name: "ListOrganizationRecommendationsResponse")
    ListRecommendationResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#ListRecommendationResourcesRequest", name: "ListRecommendationResourcesRequest")
    ListRecommendationResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#ListRecommendationResourcesResponse", name: "ListRecommendationResourcesResponse")
    ListRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#ListRecommendationsRequest", name: "ListRecommendationsRequest")
    ListRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#ListRecommendationsResponse", name: "ListRecommendationsResponse")
    OrganizationRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#OrganizationRecommendation", name: "OrganizationRecommendation")
    OrganizationRecommendationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.trustedadvisor#OrganizationRecommendationArn", name: "OrganizationRecommendationArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w-]+:trustedadvisor:::organization-recommendation\\/[\\w-]+$"})
    OrganizationRecommendationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.trustedadvisor#OrganizationRecommendationIdentifier", name: "OrganizationRecommendationIdentifier", traits: {"smithy.api#length" => {"min" => 20, "max" => 200}, "smithy.api#pattern" => "^arn:[\\w-]+:trustedadvisor:::organization-recommendation\\/[\\w-]+$"})
    OrganizationRecommendationResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#OrganizationRecommendationResourceSummary", name: "OrganizationRecommendationResourceSummary")
    OrganizationRecommendationResourceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.trustedadvisor#OrganizationRecommendationResourceSummaryList", name: "OrganizationRecommendationResourceSummaryList")
    OrganizationRecommendationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#OrganizationRecommendationSummary", name: "OrganizationRecommendationSummary")
    OrganizationRecommendationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.trustedadvisor#OrganizationRecommendationSummaryList", name: "OrganizationRecommendationSummaryList")
    Recommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#Recommendation", name: "Recommendation")
    RecommendationAwsService = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.trustedadvisor#RecommendationAwsService", name: "RecommendationAwsService", traits: {"smithy.api#length" => {"min" => 2, "max" => 30}})
    RecommendationAwsServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.trustedadvisor#RecommendationAwsServiceList", name: "RecommendationAwsServiceList", traits: {"smithy.api#uniqueItems" => {}})
    RecommendationCostOptimizingAggregates = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#RecommendationCostOptimizingAggregates", name: "RecommendationCostOptimizingAggregates")
    RecommendationLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.trustedadvisor#RecommendationLanguage", name: "RecommendationLanguage")
    RecommendationLifecycleStage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.trustedadvisor#RecommendationLifecycleStage", name: "RecommendationLifecycleStage")
    RecommendationPillar = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.trustedadvisor#RecommendationPillar", name: "RecommendationPillar")
    RecommendationPillarList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.trustedadvisor#RecommendationPillarList", name: "RecommendationPillarList", traits: {"smithy.api#uniqueItems" => {}})
    RecommendationPillarSpecificAggregates = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#RecommendationPillarSpecificAggregates", name: "RecommendationPillarSpecificAggregates")
    RecommendationRegionCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.trustedadvisor#RecommendationRegionCode", name: "RecommendationRegionCode", traits: {"smithy.api#length" => {"min" => 9, "max" => 20}})
    RecommendationResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.trustedadvisor#RecommendationResourceArn", name: "RecommendationResourceArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:[\\w-]+:trustedadvisor::\\d{12}:recommendation-resource\\/[\\w-]+\\/[\\w-]+$"})
    RecommendationResourceExclusion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#RecommendationResourceExclusion", name: "RecommendationResourceExclusion")
    RecommendationResourceExclusionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.trustedadvisor#RecommendationResourceExclusionList", name: "RecommendationResourceExclusionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#uniqueItems" => {}})
    RecommendationResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#RecommendationResourceSummary", name: "RecommendationResourceSummary")
    RecommendationResourceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.trustedadvisor#RecommendationResourceSummaryList", name: "RecommendationResourceSummaryList")
    RecommendationResourcesAggregates = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#RecommendationResourcesAggregates", name: "RecommendationResourcesAggregates")
    RecommendationSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.trustedadvisor#RecommendationSource", name: "RecommendationSource")
    RecommendationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.trustedadvisor#RecommendationStatus", name: "RecommendationStatus")
    RecommendationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#RecommendationSummary", name: "RecommendationSummary")
    RecommendationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.trustedadvisor#RecommendationSummaryList", name: "RecommendationSummaryList")
    RecommendationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.trustedadvisor#RecommendationType", name: "RecommendationType")
    RecommendationUpdateReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.trustedadvisor#RecommendationUpdateReason", name: "RecommendationUpdateReason", traits: {"smithy.api#length" => {"min" => 10, "max" => 4096}, "smithy.api#pattern" => "^[\\s\\S]*$", "smithy.api#sensitive" => {}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.trustedadvisor#ResourceStatus", name: "ResourceStatus")
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.trustedadvisor#StringMap", name: "StringMap")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UpdateOrganizationRecommendationLifecycleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#UpdateOrganizationRecommendationLifecycleRequest", name: "UpdateOrganizationRecommendationLifecycleRequest")
    UpdateRecommendationLifecycleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#UpdateRecommendationLifecycleRequest", name: "UpdateRecommendationLifecycleRequest")
    UpdateRecommendationLifecycleStage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.trustedadvisor#UpdateRecommendationLifecycleStage", name: "UpdateRecommendationLifecycleStage")
    UpdateRecommendationLifecycleStageReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.trustedadvisor#UpdateRecommendationLifecycleStageReasonCode", name: "UpdateRecommendationLifecycleStageReasonCode")
    UpdateRecommendationResourceExclusionError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#UpdateRecommendationResourceExclusionError", name: "UpdateRecommendationResourceExclusionError")
    UpdateRecommendationResourceExclusionErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.trustedadvisor#UpdateRecommendationResourceExclusionErrorList", name: "UpdateRecommendationResourceExclusionErrorList")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.trustedadvisor#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountRecommendationLifecycleSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "accountId"))
    AccountRecommendationLifecycleSummary.add_member(:account_recommendation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountRecommendationArn, location_name: "accountRecommendationArn"))
    AccountRecommendationLifecycleSummary.add_member(:lifecycle_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationLifecycleStage, location_name: "lifecycleStage"))
    AccountRecommendationLifecycleSummary.add_member(:updated_on_behalf_of, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "updatedOnBehalfOf"))
    AccountRecommendationLifecycleSummary.add_member(:updated_on_behalf_of_job_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "updatedOnBehalfOfJobTitle"))
    AccountRecommendationLifecycleSummary.add_member(:update_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationUpdateReason, location_name: "updateReason"))
    AccountRecommendationLifecycleSummary.add_member(:update_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRecommendationLifecycleStageReasonCode, location_name: "updateReasonCode"))
    AccountRecommendationLifecycleSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AccountRecommendationLifecycleSummary.type = Types::AccountRecommendationLifecycleSummary
    AccountRecommendationLifecycleSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountRecommendationLifecycleSummary)
    BatchUpdateRecommendationResourceExclusionRequest.add_member(:recommendation_resource_exclusions, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationResourceExclusionList, location_name: "recommendationResourceExclusions", traits: {"smithy.api#required" => {}}))
    BatchUpdateRecommendationResourceExclusionRequest.type = Types::BatchUpdateRecommendationResourceExclusionRequest
    BatchUpdateRecommendationResourceExclusionResponse.add_member(:batch_update_recommendation_resource_exclusion_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRecommendationResourceExclusionErrorList, location_name: "batchUpdateRecommendationResourceExclusionErrors", traits: {"smithy.api#required" => {}}))
    BatchUpdateRecommendationResourceExclusionResponse.type = Types::BatchUpdateRecommendationResourceExclusionResponse
    CheckSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#required" => {}}))
    CheckSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CheckSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    CheckSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description", traits: {"smithy.api#required" => {}}))
    CheckSummary.add_member(:pillars, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPillarList, location_name: "pillars", traits: {"smithy.api#required" => {}}))
    CheckSummary.add_member(:aws_services, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationAwsServiceList, location_name: "awsServices", traits: {"smithy.api#required" => {}}))
    CheckSummary.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSource, location_name: "source", traits: {"smithy.api#required" => {}}))
    CheckSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    CheckSummary.type = Types::CheckSummary
    CheckSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CheckSummary)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ExclusionStatus.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXCLUDED", traits: {"smithy.api#enumValue" => "excluded"}))
    ExclusionStatus.add_member(:included, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCLUDED", traits: {"smithy.api#enumValue" => "included"}))
    GetOrganizationRecommendationRequest.add_member(:organization_recommendation_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRecommendationIdentifier, location_name: "organizationRecommendationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetOrganizationRecommendationRequest.type = Types::GetOrganizationRecommendationRequest
    GetOrganizationRecommendationResponse.add_member(:organization_recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRecommendation, location_name: "organizationRecommendation"))
    GetOrganizationRecommendationResponse.type = Types::GetOrganizationRecommendationResponse
    GetRecommendationRequest.add_member(:recommendation_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountRecommendationIdentifier, location_name: "recommendationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationRequest.type = Types::GetRecommendationRequest
    GetRecommendationResponse.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendation, location_name: "recommendation"))
    GetRecommendationResponse.type = Types::GetRecommendationResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListChecksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 4, "max" => 10000}}))
    ListChecksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 200}}))
    ListChecksRequest.add_member(:pillar, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPillar, location_name: "pillar", traits: {"smithy.api#httpQuery" => "pillar"}))
    ListChecksRequest.add_member(:aws_service, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationAwsService, location_name: "awsService", traits: {"smithy.api#httpQuery" => "awsService"}))
    ListChecksRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSource, location_name: "source", traits: {"smithy.api#httpQuery" => "source"}))
    ListChecksRequest.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationLanguage, location_name: "language", traits: {"smithy.api#httpQuery" => "language"}))
    ListChecksRequest.type = Types::ListChecksRequest
    ListChecksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#length" => {"min" => 4, "max" => 10000}}))
    ListChecksResponse.add_member(:check_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckSummaryList, location_name: "checkSummaries", traits: {"smithy.api#required" => {}}))
    ListChecksResponse.type = Types::ListChecksResponse
    ListOrganizationRecommendationAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 4, "max" => 10000}}))
    ListOrganizationRecommendationAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 200}}))
    ListOrganizationRecommendationAccountsRequest.add_member(:organization_recommendation_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRecommendationIdentifier, location_name: "organizationRecommendationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListOrganizationRecommendationAccountsRequest.add_member(:affected_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "affectedAccountId", traits: {"smithy.api#httpQuery" => "affectedAccountId"}))
    ListOrganizationRecommendationAccountsRequest.type = Types::ListOrganizationRecommendationAccountsRequest
    ListOrganizationRecommendationAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#length" => {"min" => 4, "max" => 10000}}))
    ListOrganizationRecommendationAccountsResponse.add_member(:account_recommendation_lifecycle_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountRecommendationLifecycleSummaryList, location_name: "accountRecommendationLifecycleSummaries", traits: {"smithy.api#required" => {}}))
    ListOrganizationRecommendationAccountsResponse.type = Types::ListOrganizationRecommendationAccountsResponse
    ListOrganizationRecommendationResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 4, "max" => 10000}}))
    ListOrganizationRecommendationResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 200}}))
    ListOrganizationRecommendationResourcesRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListOrganizationRecommendationResourcesRequest.add_member(:exclusion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExclusionStatus, location_name: "exclusionStatus", traits: {"smithy.api#httpQuery" => "exclusionStatus"}))
    ListOrganizationRecommendationResourcesRequest.add_member(:region_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "regionCode", traits: {"smithy.api#httpQuery" => "regionCode"}))
    ListOrganizationRecommendationResourcesRequest.add_member(:organization_recommendation_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRecommendationIdentifier, location_name: "organizationRecommendationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListOrganizationRecommendationResourcesRequest.add_member(:affected_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "affectedAccountId", traits: {"smithy.api#httpQuery" => "affectedAccountId"}))
    ListOrganizationRecommendationResourcesRequest.type = Types::ListOrganizationRecommendationResourcesRequest
    ListOrganizationRecommendationResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#length" => {"min" => 4, "max" => 10000}}))
    ListOrganizationRecommendationResourcesResponse.add_member(:organization_recommendation_resource_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRecommendationResourceSummaryList, location_name: "organizationRecommendationResourceSummaries", traits: {"smithy.api#required" => {}}))
    ListOrganizationRecommendationResourcesResponse.type = Types::ListOrganizationRecommendationResourcesResponse
    ListOrganizationRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 4, "max" => 10000}}))
    ListOrganizationRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 200}}))
    ListOrganizationRecommendationsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationType, location_name: "type", traits: {"smithy.api#httpQuery" => "type"}))
    ListOrganizationRecommendationsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, location_name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListOrganizationRecommendationsRequest.add_member(:pillar, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPillar, location_name: "pillar", traits: {"smithy.api#httpQuery" => "pillar"}))
    ListOrganizationRecommendationsRequest.add_member(:aws_service, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationAwsService, location_name: "awsService", traits: {"smithy.api#httpQuery" => "awsService"}))
    ListOrganizationRecommendationsRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSource, location_name: "source", traits: {"smithy.api#httpQuery" => "source"}))
    ListOrganizationRecommendationsRequest.add_member(:check_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckIdentifier, location_name: "checkIdentifier", traits: {"smithy.api#httpQuery" => "checkIdentifier"}))
    ListOrganizationRecommendationsRequest.add_member(:after_last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "afterLastUpdatedAt", traits: {"smithy.api#httpQuery" => "afterLastUpdatedAt"}))
    ListOrganizationRecommendationsRequest.add_member(:before_last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "beforeLastUpdatedAt", traits: {"smithy.api#httpQuery" => "beforeLastUpdatedAt"}))
    ListOrganizationRecommendationsRequest.type = Types::ListOrganizationRecommendationsRequest
    ListOrganizationRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#length" => {"min" => 4, "max" => 10000}}))
    ListOrganizationRecommendationsResponse.add_member(:organization_recommendation_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRecommendationSummaryList, location_name: "organizationRecommendationSummaries", traits: {"smithy.api#required" => {}}))
    ListOrganizationRecommendationsResponse.type = Types::ListOrganizationRecommendationsResponse
    ListRecommendationResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 4, "max" => 10000}}))
    ListRecommendationResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 200}}))
    ListRecommendationResourcesRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListRecommendationResourcesRequest.add_member(:exclusion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExclusionStatus, location_name: "exclusionStatus", traits: {"smithy.api#httpQuery" => "exclusionStatus"}))
    ListRecommendationResourcesRequest.add_member(:region_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "regionCode", traits: {"smithy.api#httpQuery" => "regionCode"}))
    ListRecommendationResourcesRequest.add_member(:recommendation_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountRecommendationIdentifier, location_name: "recommendationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecommendationResourcesRequest.type = Types::ListRecommendationResourcesRequest
    ListRecommendationResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#length" => {"min" => 4, "max" => 10000}}))
    ListRecommendationResourcesResponse.add_member(:recommendation_resource_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationResourceSummaryList, location_name: "recommendationResourceSummaries", traits: {"smithy.api#required" => {}}))
    ListRecommendationResourcesResponse.type = Types::ListRecommendationResourcesResponse
    ListRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 4, "max" => 10000}}))
    ListRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 200}}))
    ListRecommendationsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationType, location_name: "type", traits: {"smithy.api#httpQuery" => "type"}))
    ListRecommendationsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, location_name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListRecommendationsRequest.add_member(:pillar, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPillar, location_name: "pillar", traits: {"smithy.api#httpQuery" => "pillar"}))
    ListRecommendationsRequest.add_member(:aws_service, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationAwsService, location_name: "awsService", traits: {"smithy.api#httpQuery" => "awsService"}))
    ListRecommendationsRequest.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSource, location_name: "source", traits: {"smithy.api#httpQuery" => "source"}))
    ListRecommendationsRequest.add_member(:check_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckIdentifier, location_name: "checkIdentifier", traits: {"smithy.api#httpQuery" => "checkIdentifier"}))
    ListRecommendationsRequest.add_member(:after_last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "afterLastUpdatedAt", traits: {"smithy.api#httpQuery" => "afterLastUpdatedAt"}))
    ListRecommendationsRequest.add_member(:before_last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "beforeLastUpdatedAt", traits: {"smithy.api#httpQuery" => "beforeLastUpdatedAt"}))
    ListRecommendationsRequest.type = Types::ListRecommendationsRequest
    ListRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#length" => {"min" => 4, "max" => 10000}}))
    ListRecommendationsResponse.add_member(:recommendation_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSummaryList, location_name: "recommendationSummaries", traits: {"smithy.api#required" => {}}))
    ListRecommendationsResponse.type = Types::ListRecommendationsResponse
    OrganizationRecommendation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationType, location_name: "type", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendation.add_member(:check_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "checkArn"))
    OrganizationRecommendation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendation.add_member(:lifecycle_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationLifecycleStage, location_name: "lifecycleStage"))
    OrganizationRecommendation.add_member(:pillars, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPillarList, location_name: "pillars", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendation.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSource, location_name: "source", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendation.add_member(:aws_services, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationAwsServiceList, location_name: "awsServices"))
    OrganizationRecommendation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendation.add_member(:resources_aggregates, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationResourcesAggregates, location_name: "resourcesAggregates", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendation.add_member(:pillar_specific_aggregates, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPillarSpecificAggregates, location_name: "pillarSpecificAggregates"))
    OrganizationRecommendation.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    OrganizationRecommendation.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    OrganizationRecommendation.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRecommendationArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendation.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "createdBy"))
    OrganizationRecommendation.add_member(:updated_on_behalf_of, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "updatedOnBehalfOf"))
    OrganizationRecommendation.add_member(:updated_on_behalf_of_job_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "updatedOnBehalfOfJobTitle"))
    OrganizationRecommendation.add_member(:update_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationUpdateReason, location_name: "updateReason"))
    OrganizationRecommendation.add_member(:update_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRecommendationLifecycleStageReasonCode, location_name: "updateReasonCode"))
    OrganizationRecommendation.add_member(:resolved_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "resolvedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    OrganizationRecommendation.type = Types::OrganizationRecommendation
    OrganizationRecommendationResourceSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendationResourceSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationResourceArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendationResourceSummary.add_member(:aws_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "awsResourceId", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendationResourceSummary.add_member(:region_code, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRegionCode, location_name: "regionCode", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendationResourceSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendationResourceSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendationResourceSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    OrganizationRecommendationResourceSummary.add_member(:exclusion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExclusionStatus, location_name: "exclusionStatus", traits: {"smithy.api#default" => "included"}))
    OrganizationRecommendationResourceSummary.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "accountId"))
    OrganizationRecommendationResourceSummary.add_member(:recommendation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRecommendationArn, location_name: "recommendationArn", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendationResourceSummary.type = Types::OrganizationRecommendationResourceSummary
    OrganizationRecommendationResourceSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRecommendationResourceSummary)
    OrganizationRecommendationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendationSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationType, location_name: "type", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendationSummary.add_member(:check_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "checkArn"))
    OrganizationRecommendationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendationSummary.add_member(:lifecycle_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationLifecycleStage, location_name: "lifecycleStage"))
    OrganizationRecommendationSummary.add_member(:pillars, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPillarList, location_name: "pillars", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendationSummary.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSource, location_name: "source", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendationSummary.add_member(:aws_services, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationAwsServiceList, location_name: "awsServices"))
    OrganizationRecommendationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendationSummary.add_member(:resources_aggregates, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationResourcesAggregates, location_name: "resourcesAggregates", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendationSummary.add_member(:pillar_specific_aggregates, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPillarSpecificAggregates, location_name: "pillarSpecificAggregates"))
    OrganizationRecommendationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    OrganizationRecommendationSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    OrganizationRecommendationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRecommendationArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    OrganizationRecommendationSummary.type = Types::OrganizationRecommendationSummary
    OrganizationRecommendationSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRecommendationSummary)
    Recommendation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationType, location_name: "type", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:check_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "checkArn"))
    Recommendation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:lifecycle_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationLifecycleStage, location_name: "lifecycleStage"))
    Recommendation.add_member(:pillars, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPillarList, location_name: "pillars", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSource, location_name: "source", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:aws_services, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationAwsServiceList, location_name: "awsServices"))
    Recommendation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:resources_aggregates, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationResourcesAggregates, location_name: "resourcesAggregates", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:pillar_specific_aggregates, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPillarSpecificAggregates, location_name: "pillarSpecificAggregates"))
    Recommendation.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Recommendation.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Recommendation.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountRecommendationArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "description", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "createdBy"))
    Recommendation.add_member(:updated_on_behalf_of, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "updatedOnBehalfOf"))
    Recommendation.add_member(:updated_on_behalf_of_job_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "updatedOnBehalfOfJobTitle"))
    Recommendation.add_member(:update_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationUpdateReason, location_name: "updateReason"))
    Recommendation.add_member(:update_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRecommendationLifecycleStageReasonCode, location_name: "updateReasonCode"))
    Recommendation.add_member(:resolved_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "resolvedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Recommendation.type = Types::Recommendation
    RecommendationAwsServiceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationAwsService)
    RecommendationCostOptimizingAggregates.add_member(:estimated_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "estimatedMonthlySavings", traits: {"smithy.api#required" => {}}))
    RecommendationCostOptimizingAggregates.add_member(:estimated_percent_monthly_savings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, location_name: "estimatedPercentMonthlySavings", traits: {"smithy.api#required" => {}}))
    RecommendationCostOptimizingAggregates.type = Types::RecommendationCostOptimizingAggregates
    RecommendationLanguage.add_member(:english, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENGLISH", traits: {"smithy.api#enumValue" => "en"}))
    RecommendationLanguage.add_member(:japanese, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JAPANESE", traits: {"smithy.api#enumValue" => "ja"}))
    RecommendationLanguage.add_member(:chinese, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CHINESE", traits: {"smithy.api#enumValue" => "zh"}))
    RecommendationLanguage.add_member(:french, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FRENCH", traits: {"smithy.api#enumValue" => "fr"}))
    RecommendationLanguage.add_member(:german, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GERMAN", traits: {"smithy.api#enumValue" => "de"}))
    RecommendationLanguage.add_member(:korean, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KOREAN", traits: {"smithy.api#enumValue" => "ko"}))
    RecommendationLanguage.add_member(:traditional_chinese, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRADITIONAL_CHINESE", traits: {"smithy.api#enumValue" => "zh_TW"}))
    RecommendationLanguage.add_member(:italian, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ITALIAN", traits: {"smithy.api#enumValue" => "it"}))
    RecommendationLanguage.add_member(:spanish, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SPANISH", traits: {"smithy.api#enumValue" => "es"}))
    RecommendationLanguage.add_member(:brazilian_portuguese, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BRAZILIAN_PORTUGUESE", traits: {"smithy.api#enumValue" => "pt_BR"}))
    RecommendationLanguage.add_member(:bahasa_indonesia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BAHASA_INDONESIA", traits: {"smithy.api#enumValue" => "id"}))
    RecommendationLifecycleStage.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "in_progress"}))
    RecommendationLifecycleStage.add_member(:pending_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_RESPONSE", traits: {"smithy.api#enumValue" => "pending_response"}))
    RecommendationLifecycleStage.add_member(:dismissed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISMISSED", traits: {"smithy.api#enumValue" => "dismissed"}))
    RecommendationLifecycleStage.add_member(:resolved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOLVED", traits: {"smithy.api#enumValue" => "resolved"}))
    RecommendationPillar.add_member(:cost_optimizing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COST_OPTIMIZING", traits: {"smithy.api#enumValue" => "cost_optimizing"}))
    RecommendationPillar.add_member(:performance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERFORMANCE", traits: {"smithy.api#enumValue" => "performance"}))
    RecommendationPillar.add_member(:security, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SECURITY", traits: {"smithy.api#enumValue" => "security"}))
    RecommendationPillar.add_member(:service_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICE_LIMITS", traits: {"smithy.api#enumValue" => "service_limits"}))
    RecommendationPillar.add_member(:fault_tolerance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAULT_TOLERANCE", traits: {"smithy.api#enumValue" => "fault_tolerance"}))
    RecommendationPillar.add_member(:operational_excellence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OPERATIONAL_EXCELLENCE", traits: {"smithy.api#enumValue" => "operational_excellence"}))
    RecommendationPillarList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPillar)
    RecommendationPillarSpecificAggregates.add_member(:cost_optimizing, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationCostOptimizingAggregates, location_name: "costOptimizing"))
    RecommendationPillarSpecificAggregates.type = Types::RecommendationPillarSpecificAggregates
    RecommendationResourceExclusion.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationResourceArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    RecommendationResourceExclusion.add_member(:is_excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "isExcluded", traits: {"smithy.api#required" => {}}))
    RecommendationResourceExclusion.type = Types::RecommendationResourceExclusion
    RecommendationResourceExclusionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationResourceExclusion)
    RecommendationResourceSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#required" => {}}))
    RecommendationResourceSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationResourceArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    RecommendationResourceSummary.add_member(:aws_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "awsResourceId", traits: {"smithy.api#required" => {}}))
    RecommendationResourceSummary.add_member(:region_code, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationRegionCode, location_name: "regionCode", traits: {"smithy.api#required" => {}}))
    RecommendationResourceSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    RecommendationResourceSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    RecommendationResourceSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    RecommendationResourceSummary.add_member(:exclusion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExclusionStatus, location_name: "exclusionStatus", traits: {"smithy.api#default" => "included"}))
    RecommendationResourceSummary.add_member(:recommendation_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountRecommendationArn, location_name: "recommendationArn", traits: {"smithy.api#required" => {}}))
    RecommendationResourceSummary.type = Types::RecommendationResourceSummary
    RecommendationResourceSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationResourceSummary)
    RecommendationResourcesAggregates.add_member(:ok_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "okCount", traits: {"smithy.api#required" => {}}))
    RecommendationResourcesAggregates.add_member(:warning_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "warningCount", traits: {"smithy.api#required" => {}}))
    RecommendationResourcesAggregates.add_member(:error_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "errorCount", traits: {"smithy.api#required" => {}}))
    RecommendationResourcesAggregates.type = Types::RecommendationResourcesAggregates
    RecommendationSource.add_member(:aws_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_CONFIG", traits: {"smithy.api#enumValue" => "aws_config"}))
    RecommendationSource.add_member(:compute_optimizer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPUTE_OPTIMIZER", traits: {"smithy.api#enumValue" => "compute_optimizer"}))
    RecommendationSource.add_member(:cost_explorer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COST_EXPLORER", traits: {"smithy.api#enumValue" => "cost_explorer"}))
    RecommendationSource.add_member(:lse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LSE", traits: {"smithy.api#enumValue" => "lse"}))
    RecommendationSource.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANUAL", traits: {"smithy.api#enumValue" => "manual"}))
    RecommendationSource.add_member(:pse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PSE", traits: {"smithy.api#enumValue" => "pse"}))
    RecommendationSource.add_member(:rds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RDS", traits: {"smithy.api#enumValue" => "rds"}))
    RecommendationSource.add_member(:resilience, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESILIENCE", traits: {"smithy.api#enumValue" => "resilience"}))
    RecommendationSource.add_member(:resilience_hub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESILIENCE_HUB", traits: {"smithy.api#enumValue" => "resilience_hub"}))
    RecommendationSource.add_member(:security_hub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SECURITY_HUB", traits: {"smithy.api#enumValue" => "security_hub"}))
    RecommendationSource.add_member(:stir, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STIR", traits: {"smithy.api#enumValue" => "stir"}))
    RecommendationSource.add_member(:ta_check, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TA_CHECK", traits: {"smithy.api#enumValue" => "ta_check"}))
    RecommendationSource.add_member(:well_architected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WELL_ARCHITECTED", traits: {"smithy.api#enumValue" => "well_architected"}))
    RecommendationStatus.add_member(:ok, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OK", traits: {"smithy.api#enumValue" => "ok"}))
    RecommendationStatus.add_member(:warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WARNING", traits: {"smithy.api#enumValue" => "warning"}))
    RecommendationStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "error"}))
    RecommendationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#required" => {}}))
    RecommendationSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationType, location_name: "type", traits: {"smithy.api#required" => {}}))
    RecommendationSummary.add_member(:check_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "checkArn"))
    RecommendationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    RecommendationSummary.add_member(:lifecycle_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationLifecycleStage, location_name: "lifecycleStage"))
    RecommendationSummary.add_member(:pillars, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPillarList, location_name: "pillars", traits: {"smithy.api#required" => {}}))
    RecommendationSummary.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSource, location_name: "source", traits: {"smithy.api#required" => {}}))
    RecommendationSummary.add_member(:aws_services, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationAwsServiceList, location_name: "awsServices"))
    RecommendationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    RecommendationSummary.add_member(:resources_aggregates, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationResourcesAggregates, location_name: "resourcesAggregates", traits: {"smithy.api#required" => {}}))
    RecommendationSummary.add_member(:pillar_specific_aggregates, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationPillarSpecificAggregates, location_name: "pillarSpecificAggregates"))
    RecommendationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    RecommendationSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    RecommendationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountRecommendationArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    RecommendationSummary.type = Types::RecommendationSummary
    RecommendationSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSummary)
    RecommendationType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "standard"}))
    RecommendationType.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIORITY", traits: {"smithy.api#enumValue" => "priority"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceStatus.add_member(:ok, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OK", traits: {"smithy.api#enumValue" => "ok"}))
    ResourceStatus.add_member(:warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WARNING", traits: {"smithy.api#enumValue" => "warning"}))
    ResourceStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "error"}))
    StringMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    StringMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UpdateOrganizationRecommendationLifecycleRequest.add_member(:lifecycle_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRecommendationLifecycleStage, location_name: "lifecycleStage", traits: {"smithy.api#required" => {}}))
    UpdateOrganizationRecommendationLifecycleRequest.add_member(:update_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationUpdateReason, location_name: "updateReason"))
    UpdateOrganizationRecommendationLifecycleRequest.add_member(:update_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRecommendationLifecycleStageReasonCode, location_name: "updateReasonCode"))
    UpdateOrganizationRecommendationLifecycleRequest.add_member(:organization_recommendation_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationRecommendationIdentifier, location_name: "organizationRecommendationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateOrganizationRecommendationLifecycleRequest.type = Types::UpdateOrganizationRecommendationLifecycleRequest
    UpdateRecommendationLifecycleRequest.add_member(:lifecycle_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRecommendationLifecycleStage, location_name: "lifecycleStage", traits: {"smithy.api#required" => {}}))
    UpdateRecommendationLifecycleRequest.add_member(:update_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationUpdateReason, location_name: "updateReason"))
    UpdateRecommendationLifecycleRequest.add_member(:update_reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRecommendationLifecycleStageReasonCode, location_name: "updateReasonCode"))
    UpdateRecommendationLifecycleRequest.add_member(:recommendation_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountRecommendationIdentifier, location_name: "recommendationIdentifier", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRecommendationLifecycleRequest.type = Types::UpdateRecommendationLifecycleRequest
    UpdateRecommendationLifecycleStage.add_member(:pending_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_RESPONSE", traits: {"smithy.api#enumValue" => "pending_response"}))
    UpdateRecommendationLifecycleStage.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "in_progress"}))
    UpdateRecommendationLifecycleStage.add_member(:dismissed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISMISSED", traits: {"smithy.api#enumValue" => "dismissed"}))
    UpdateRecommendationLifecycleStage.add_member(:resolved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOLVED", traits: {"smithy.api#enumValue" => "resolved"}))
    UpdateRecommendationLifecycleStageReasonCode.add_member(:non_critical_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NON_CRITICAL_ACCOUNT", traits: {"smithy.api#enumValue" => "non_critical_account"}))
    UpdateRecommendationLifecycleStageReasonCode.add_member(:temporary_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEMPORARY_ACCOUNT", traits: {"smithy.api#enumValue" => "temporary_account"}))
    UpdateRecommendationLifecycleStageReasonCode.add_member(:valid_business_case, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALID_BUSINESS_CASE", traits: {"smithy.api#enumValue" => "valid_business_case"}))
    UpdateRecommendationLifecycleStageReasonCode.add_member(:other_methods_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER_METHODS_AVAILABLE", traits: {"smithy.api#enumValue" => "other_methods_available"}))
    UpdateRecommendationLifecycleStageReasonCode.add_member(:low_priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW_PRIORITY", traits: {"smithy.api#enumValue" => "low_priority"}))
    UpdateRecommendationLifecycleStageReasonCode.add_member(:not_applicable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_APPLICABLE", traits: {"smithy.api#enumValue" => "not_applicable"}))
    UpdateRecommendationLifecycleStageReasonCode.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))
    UpdateRecommendationResourceExclusionError.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationResourceArn, location_name: "arn"))
    UpdateRecommendationResourceExclusionError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "errorCode"))
    UpdateRecommendationResourceExclusionError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "errorMessage"))
    UpdateRecommendationResourceExclusionError.type = Types::UpdateRecommendationResourceExclusionError
    UpdateRecommendationResourceExclusionErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateRecommendationResourceExclusionError)
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    TrustedAdvisor = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.trustedadvisor#TrustedAdvisor"
      service.name = "TrustedAdvisor"
      service.version = "2022-09-15"
      service.traits = {"aws.api#service" => {"sdkId" => "TrustedAdvisor", "arnNamespace" => "trustedadvisor", "cloudTrailEventSource" => "trustedadvisor.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "trustedadvisor"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["amz-sdk-invocation-id", "amz-sdk-request", "authorization", "content-length", "content-type", "date", "retry-after", "x-amz-apigw-id", "x-amz-cf-id", "x-amz-content-sha256", "x-amz-date", "x-amz-security-token", "x-amz-target", "x-amz-user-agent", "x-amzn-errormessage", "x-amzn-errortype", "x-amzn-platform-id", "x-amzn-requestid", "x-amzn-trace-id", "x-amzn-waf-action", "x-api-key"], "additionalExposedHeaders" => ["date", "retry-after", "x-amz-apigw-id", "x-amz-cf-id", "x-amzn-errormessage", "x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "x-amzn-waf-action"]}, "smithy.api#title" => "TrustedAdvisor Public API"}
      service.add_operation(:batch_update_recommendation_resource_exclusion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.trustedadvisor#BatchUpdateRecommendationResourceExclusion"
        operation.name = "BatchUpdateRecommendationResourceExclusion"
        operation.input = BatchUpdateRecommendationResourceExclusionRequest
        operation.output = BatchUpdateRecommendationResourceExclusionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/batch-update-recommendation-resource-exclusion", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => []}
      end)
      service.add_operation(:get_organization_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.trustedadvisor#GetOrganizationRecommendation"
        operation.name = "GetOrganizationRecommendation"
        operation.input = GetOrganizationRecommendationRequest
        operation.output = GetOrganizationRecommendationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/organization-recommendations/{organizationRecommendationIdentifier}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => []}
      end)
      service.add_operation(:get_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.trustedadvisor#GetRecommendation"
        operation.name = "GetRecommendation"
        operation.input = GetRecommendationRequest
        operation.output = GetRecommendationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/recommendations/{recommendationIdentifier}", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => []}
      end)
      service.add_operation(:list_checks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.trustedadvisor#ListChecks"
        operation.name = "ListChecks"
        operation.input = ListChecksRequest
        operation.output = ListChecksResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/checks", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => []}
        operation[:paginator] = Paginators::ListChecks.new
      end)
      service.add_operation(:list_organization_recommendation_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.trustedadvisor#ListOrganizationRecommendationAccounts"
        operation.name = "ListOrganizationRecommendationAccounts"
        operation.input = ListOrganizationRecommendationAccountsRequest
        operation.output = ListOrganizationRecommendationAccountsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/organization-recommendations/{organizationRecommendationIdentifier}/accounts", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => []}
        operation[:paginator] = Paginators::ListOrganizationRecommendationAccounts.new
      end)
      service.add_operation(:list_organization_recommendation_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.trustedadvisor#ListOrganizationRecommendationResources"
        operation.name = "ListOrganizationRecommendationResources"
        operation.input = ListOrganizationRecommendationResourcesRequest
        operation.output = ListOrganizationRecommendationResourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/organization-recommendations/{organizationRecommendationIdentifier}/resources", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => []}
        operation[:paginator] = Paginators::ListOrganizationRecommendationResources.new
      end)
      service.add_operation(:list_organization_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.trustedadvisor#ListOrganizationRecommendations"
        operation.name = "ListOrganizationRecommendations"
        operation.input = ListOrganizationRecommendationsRequest
        operation.output = ListOrganizationRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/organization-recommendations", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => []}
        operation[:paginator] = Paginators::ListOrganizationRecommendations.new
      end)
      service.add_operation(:list_recommendation_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.trustedadvisor#ListRecommendationResources"
        operation.name = "ListRecommendationResources"
        operation.input = ListRecommendationResourcesRequest
        operation.output = ListRecommendationResourcesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/recommendations/{recommendationIdentifier}/resources", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => []}
        operation[:paginator] = Paginators::ListRecommendationResources.new
      end)
      service.add_operation(:list_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.trustedadvisor#ListRecommendations"
        operation.name = "ListRecommendations"
        operation.input = ListRecommendationsRequest
        operation.output = ListRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/recommendations", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#tags" => []}
        operation[:paginator] = Paginators::ListRecommendations.new
      end)
      service.add_operation(:update_organization_recommendation_lifecycle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.trustedadvisor#UpdateOrganizationRecommendationLifecycle"
        operation.name = "UpdateOrganizationRecommendationLifecycle"
        operation.input = UpdateOrganizationRecommendationLifecycleRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/organization-recommendations/{organizationRecommendationIdentifier}/lifecycle", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => []}
      end)
      service.add_operation(:update_recommendation_lifecycle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.trustedadvisor#UpdateRecommendationLifecycle"
        operation.name = "UpdateRecommendationLifecycle"
        operation.input = UpdateRecommendationLifecycleRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/recommendations/{recommendationIdentifier}/lifecycle", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.api#tags" => []}
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
