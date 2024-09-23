# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::TrustedAdvisor
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountRecommendationArn = Shapes::StringShape.new(name: 'AccountRecommendationArn')
    AccountRecommendationIdentifier = Shapes::StringShape.new(name: 'AccountRecommendationIdentifier')
    AccountRecommendationLifecycleSummary = Shapes::StructureShape.new(name: 'AccountRecommendationLifecycleSummary')
    AccountRecommendationLifecycleSummaryList = Shapes::ListShape.new(name: 'AccountRecommendationLifecycleSummaryList')
    BatchUpdateRecommendationResourceExclusionRequest = Shapes::StructureShape.new(name: 'BatchUpdateRecommendationResourceExclusionRequest')
    BatchUpdateRecommendationResourceExclusionResponse = Shapes::StructureShape.new(name: 'BatchUpdateRecommendationResourceExclusionResponse')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CheckArn = Shapes::StringShape.new(name: 'CheckArn')
    CheckIdentifier = Shapes::StringShape.new(name: 'CheckIdentifier')
    CheckSummary = Shapes::StructureShape.new(name: 'CheckSummary')
    CheckSummaryList = Shapes::ListShape.new(name: 'CheckSummaryList')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Double = Shapes::FloatShape.new(name: 'Double')
    ExclusionStatus = Shapes::StringShape.new(name: 'ExclusionStatus')
    GetOrganizationRecommendationRequest = Shapes::StructureShape.new(name: 'GetOrganizationRecommendationRequest')
    GetOrganizationRecommendationResponse = Shapes::StructureShape.new(name: 'GetOrganizationRecommendationResponse')
    GetRecommendationRequest = Shapes::StructureShape.new(name: 'GetRecommendationRequest')
    GetRecommendationResponse = Shapes::StructureShape.new(name: 'GetRecommendationResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListChecksRequest = Shapes::StructureShape.new(name: 'ListChecksRequest')
    ListChecksRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListChecksRequestMaxResultsInteger')
    ListChecksRequestNextTokenString = Shapes::StringShape.new(name: 'ListChecksRequestNextTokenString')
    ListChecksResponse = Shapes::StructureShape.new(name: 'ListChecksResponse')
    ListChecksResponseNextTokenString = Shapes::StringShape.new(name: 'ListChecksResponseNextTokenString')
    ListOrganizationRecommendationAccountsRequest = Shapes::StructureShape.new(name: 'ListOrganizationRecommendationAccountsRequest')
    ListOrganizationRecommendationAccountsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListOrganizationRecommendationAccountsRequestMaxResultsInteger')
    ListOrganizationRecommendationAccountsRequestNextTokenString = Shapes::StringShape.new(name: 'ListOrganizationRecommendationAccountsRequestNextTokenString')
    ListOrganizationRecommendationAccountsResponse = Shapes::StructureShape.new(name: 'ListOrganizationRecommendationAccountsResponse')
    ListOrganizationRecommendationAccountsResponseNextTokenString = Shapes::StringShape.new(name: 'ListOrganizationRecommendationAccountsResponseNextTokenString')
    ListOrganizationRecommendationResourcesRequest = Shapes::StructureShape.new(name: 'ListOrganizationRecommendationResourcesRequest')
    ListOrganizationRecommendationResourcesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListOrganizationRecommendationResourcesRequestMaxResultsInteger')
    ListOrganizationRecommendationResourcesRequestNextTokenString = Shapes::StringShape.new(name: 'ListOrganizationRecommendationResourcesRequestNextTokenString')
    ListOrganizationRecommendationResourcesResponse = Shapes::StructureShape.new(name: 'ListOrganizationRecommendationResourcesResponse')
    ListOrganizationRecommendationResourcesResponseNextTokenString = Shapes::StringShape.new(name: 'ListOrganizationRecommendationResourcesResponseNextTokenString')
    ListOrganizationRecommendationsRequest = Shapes::StructureShape.new(name: 'ListOrganizationRecommendationsRequest')
    ListOrganizationRecommendationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListOrganizationRecommendationsRequestMaxResultsInteger')
    ListOrganizationRecommendationsRequestNextTokenString = Shapes::StringShape.new(name: 'ListOrganizationRecommendationsRequestNextTokenString')
    ListOrganizationRecommendationsResponse = Shapes::StructureShape.new(name: 'ListOrganizationRecommendationsResponse')
    ListOrganizationRecommendationsResponseNextTokenString = Shapes::StringShape.new(name: 'ListOrganizationRecommendationsResponseNextTokenString')
    ListRecommendationResourcesRequest = Shapes::StructureShape.new(name: 'ListRecommendationResourcesRequest')
    ListRecommendationResourcesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRecommendationResourcesRequestMaxResultsInteger')
    ListRecommendationResourcesRequestNextTokenString = Shapes::StringShape.new(name: 'ListRecommendationResourcesRequestNextTokenString')
    ListRecommendationResourcesResponse = Shapes::StructureShape.new(name: 'ListRecommendationResourcesResponse')
    ListRecommendationResourcesResponseNextTokenString = Shapes::StringShape.new(name: 'ListRecommendationResourcesResponseNextTokenString')
    ListRecommendationsRequest = Shapes::StructureShape.new(name: 'ListRecommendationsRequest')
    ListRecommendationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRecommendationsRequestMaxResultsInteger')
    ListRecommendationsRequestNextTokenString = Shapes::StringShape.new(name: 'ListRecommendationsRequestNextTokenString')
    ListRecommendationsResponse = Shapes::StructureShape.new(name: 'ListRecommendationsResponse')
    ListRecommendationsResponseNextTokenString = Shapes::StringShape.new(name: 'ListRecommendationsResponseNextTokenString')
    Long = Shapes::IntegerShape.new(name: 'Long')
    OrganizationRecommendation = Shapes::StructureShape.new(name: 'OrganizationRecommendation')
    OrganizationRecommendationArn = Shapes::StringShape.new(name: 'OrganizationRecommendationArn')
    OrganizationRecommendationIdentifier = Shapes::StringShape.new(name: 'OrganizationRecommendationIdentifier')
    OrganizationRecommendationResourceSummary = Shapes::StructureShape.new(name: 'OrganizationRecommendationResourceSummary')
    OrganizationRecommendationResourceSummaryList = Shapes::ListShape.new(name: 'OrganizationRecommendationResourceSummaryList')
    OrganizationRecommendationSummary = Shapes::StructureShape.new(name: 'OrganizationRecommendationSummary')
    OrganizationRecommendationSummaryList = Shapes::ListShape.new(name: 'OrganizationRecommendationSummaryList')
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    RecommendationAwsService = Shapes::StringShape.new(name: 'RecommendationAwsService')
    RecommendationAwsServiceList = Shapes::ListShape.new(name: 'RecommendationAwsServiceList')
    RecommendationCostOptimizingAggregates = Shapes::StructureShape.new(name: 'RecommendationCostOptimizingAggregates')
    RecommendationLanguage = Shapes::StringShape.new(name: 'RecommendationLanguage')
    RecommendationLifecycleStage = Shapes::StringShape.new(name: 'RecommendationLifecycleStage')
    RecommendationPillar = Shapes::StringShape.new(name: 'RecommendationPillar')
    RecommendationPillarList = Shapes::ListShape.new(name: 'RecommendationPillarList')
    RecommendationPillarSpecificAggregates = Shapes::StructureShape.new(name: 'RecommendationPillarSpecificAggregates')
    RecommendationRegionCode = Shapes::StringShape.new(name: 'RecommendationRegionCode')
    RecommendationResourceArn = Shapes::StringShape.new(name: 'RecommendationResourceArn')
    RecommendationResourceExclusion = Shapes::StructureShape.new(name: 'RecommendationResourceExclusion')
    RecommendationResourceExclusionList = Shapes::ListShape.new(name: 'RecommendationResourceExclusionList')
    RecommendationResourceSummary = Shapes::StructureShape.new(name: 'RecommendationResourceSummary')
    RecommendationResourceSummaryList = Shapes::ListShape.new(name: 'RecommendationResourceSummaryList')
    RecommendationResourcesAggregates = Shapes::StructureShape.new(name: 'RecommendationResourcesAggregates')
    RecommendationSource = Shapes::StringShape.new(name: 'RecommendationSource')
    RecommendationStatus = Shapes::StringShape.new(name: 'RecommendationStatus')
    RecommendationSummary = Shapes::StructureShape.new(name: 'RecommendationSummary')
    RecommendationSummaryList = Shapes::ListShape.new(name: 'RecommendationSummaryList')
    RecommendationType = Shapes::StringShape.new(name: 'RecommendationType')
    RecommendationUpdateReason = Shapes::StringShape.new(name: 'RecommendationUpdateReason')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceStatus = Shapes::StringShape.new(name: 'ResourceStatus')
    String = Shapes::StringShape.new(name: 'String')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UpdateOrganizationRecommendationLifecycleRequest = Shapes::StructureShape.new(name: 'UpdateOrganizationRecommendationLifecycleRequest')
    UpdateRecommendationLifecycleRequest = Shapes::StructureShape.new(name: 'UpdateRecommendationLifecycleRequest')
    UpdateRecommendationLifecycleStage = Shapes::StringShape.new(name: 'UpdateRecommendationLifecycleStage')
    UpdateRecommendationLifecycleStageReasonCode = Shapes::StringShape.new(name: 'UpdateRecommendationLifecycleStageReasonCode')
    UpdateRecommendationResourceExclusionError = Shapes::StructureShape.new(name: 'UpdateRecommendationResourceExclusionError')
    UpdateRecommendationResourceExclusionErrorList = Shapes::ListShape.new(name: 'UpdateRecommendationResourceExclusionErrorList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountRecommendationLifecycleSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    AccountRecommendationLifecycleSummary.add_member(:account_recommendation_arn, Shapes::ShapeRef.new(shape: AccountRecommendationArn, location_name: "accountRecommendationArn"))
    AccountRecommendationLifecycleSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastUpdatedAt"))
    AccountRecommendationLifecycleSummary.add_member(:lifecycle_stage, Shapes::ShapeRef.new(shape: RecommendationLifecycleStage, location_name: "lifecycleStage"))
    AccountRecommendationLifecycleSummary.add_member(:update_reason, Shapes::ShapeRef.new(shape: RecommendationUpdateReason, location_name: "updateReason"))
    AccountRecommendationLifecycleSummary.add_member(:update_reason_code, Shapes::ShapeRef.new(shape: UpdateRecommendationLifecycleStageReasonCode, location_name: "updateReasonCode"))
    AccountRecommendationLifecycleSummary.add_member(:updated_on_behalf_of, Shapes::ShapeRef.new(shape: String, location_name: "updatedOnBehalfOf"))
    AccountRecommendationLifecycleSummary.add_member(:updated_on_behalf_of_job_title, Shapes::ShapeRef.new(shape: String, location_name: "updatedOnBehalfOfJobTitle"))
    AccountRecommendationLifecycleSummary.struct_class = Types::AccountRecommendationLifecycleSummary

    AccountRecommendationLifecycleSummaryList.member = Shapes::ShapeRef.new(shape: AccountRecommendationLifecycleSummary)

    BatchUpdateRecommendationResourceExclusionRequest.add_member(:recommendation_resource_exclusions, Shapes::ShapeRef.new(shape: RecommendationResourceExclusionList, required: true, location_name: "recommendationResourceExclusions"))
    BatchUpdateRecommendationResourceExclusionRequest.struct_class = Types::BatchUpdateRecommendationResourceExclusionRequest

    BatchUpdateRecommendationResourceExclusionResponse.add_member(:batch_update_recommendation_resource_exclusion_errors, Shapes::ShapeRef.new(shape: UpdateRecommendationResourceExclusionErrorList, required: true, location_name: "batchUpdateRecommendationResourceExclusionErrors"))
    BatchUpdateRecommendationResourceExclusionResponse.struct_class = Types::BatchUpdateRecommendationResourceExclusionResponse

    CheckSummary.add_member(:arn, Shapes::ShapeRef.new(shape: CheckArn, required: true, location_name: "arn"))
    CheckSummary.add_member(:aws_services, Shapes::ShapeRef.new(shape: RecommendationAwsServiceList, required: true, location_name: "awsServices"))
    CheckSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    CheckSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    CheckSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: StringMap, required: true, location_name: "metadata"))
    CheckSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    CheckSummary.add_member(:pillars, Shapes::ShapeRef.new(shape: RecommendationPillarList, required: true, location_name: "pillars"))
    CheckSummary.add_member(:source, Shapes::ShapeRef.new(shape: RecommendationSource, required: true, location_name: "source"))
    CheckSummary.struct_class = Types::CheckSummary

    CheckSummaryList.member = Shapes::ShapeRef.new(shape: CheckSummary)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    GetOrganizationRecommendationRequest.add_member(:organization_recommendation_identifier, Shapes::ShapeRef.new(shape: OrganizationRecommendationIdentifier, required: true, location: "uri", location_name: "organizationRecommendationIdentifier"))
    GetOrganizationRecommendationRequest.struct_class = Types::GetOrganizationRecommendationRequest

    GetOrganizationRecommendationResponse.add_member(:organization_recommendation, Shapes::ShapeRef.new(shape: OrganizationRecommendation, location_name: "organizationRecommendation"))
    GetOrganizationRecommendationResponse.struct_class = Types::GetOrganizationRecommendationResponse

    GetRecommendationRequest.add_member(:recommendation_identifier, Shapes::ShapeRef.new(shape: AccountRecommendationIdentifier, required: true, location: "uri", location_name: "recommendationIdentifier"))
    GetRecommendationRequest.struct_class = Types::GetRecommendationRequest

    GetRecommendationResponse.add_member(:recommendation, Shapes::ShapeRef.new(shape: Recommendation, location_name: "recommendation"))
    GetRecommendationResponse.struct_class = Types::GetRecommendationResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListChecksRequest.add_member(:aws_service, Shapes::ShapeRef.new(shape: RecommendationAwsService, location: "querystring", location_name: "awsService"))
    ListChecksRequest.add_member(:language, Shapes::ShapeRef.new(shape: RecommendationLanguage, location: "querystring", location_name: "language"))
    ListChecksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListChecksRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListChecksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListChecksRequestNextTokenString, location: "querystring", location_name: "nextToken"))
    ListChecksRequest.add_member(:pillar, Shapes::ShapeRef.new(shape: RecommendationPillar, location: "querystring", location_name: "pillar"))
    ListChecksRequest.add_member(:source, Shapes::ShapeRef.new(shape: RecommendationSource, location: "querystring", location_name: "source"))
    ListChecksRequest.struct_class = Types::ListChecksRequest

    ListChecksResponse.add_member(:check_summaries, Shapes::ShapeRef.new(shape: CheckSummaryList, required: true, location_name: "checkSummaries"))
    ListChecksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ListChecksResponseNextTokenString, location_name: "nextToken"))
    ListChecksResponse.struct_class = Types::ListChecksResponse

    ListOrganizationRecommendationAccountsRequest.add_member(:affected_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "affectedAccountId"))
    ListOrganizationRecommendationAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListOrganizationRecommendationAccountsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListOrganizationRecommendationAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListOrganizationRecommendationAccountsRequestNextTokenString, location: "querystring", location_name: "nextToken"))
    ListOrganizationRecommendationAccountsRequest.add_member(:organization_recommendation_identifier, Shapes::ShapeRef.new(shape: OrganizationRecommendationIdentifier, required: true, location: "uri", location_name: "organizationRecommendationIdentifier"))
    ListOrganizationRecommendationAccountsRequest.struct_class = Types::ListOrganizationRecommendationAccountsRequest

    ListOrganizationRecommendationAccountsResponse.add_member(:account_recommendation_lifecycle_summaries, Shapes::ShapeRef.new(shape: AccountRecommendationLifecycleSummaryList, required: true, location_name: "accountRecommendationLifecycleSummaries"))
    ListOrganizationRecommendationAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ListOrganizationRecommendationAccountsResponseNextTokenString, location_name: "nextToken"))
    ListOrganizationRecommendationAccountsResponse.struct_class = Types::ListOrganizationRecommendationAccountsResponse

    ListOrganizationRecommendationResourcesRequest.add_member(:affected_account_id, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "affectedAccountId"))
    ListOrganizationRecommendationResourcesRequest.add_member(:exclusion_status, Shapes::ShapeRef.new(shape: ExclusionStatus, location: "querystring", location_name: "exclusionStatus"))
    ListOrganizationRecommendationResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListOrganizationRecommendationResourcesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListOrganizationRecommendationResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListOrganizationRecommendationResourcesRequestNextTokenString, location: "querystring", location_name: "nextToken"))
    ListOrganizationRecommendationResourcesRequest.add_member(:organization_recommendation_identifier, Shapes::ShapeRef.new(shape: OrganizationRecommendationIdentifier, required: true, location: "uri", location_name: "organizationRecommendationIdentifier"))
    ListOrganizationRecommendationResourcesRequest.add_member(:region_code, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "regionCode"))
    ListOrganizationRecommendationResourcesRequest.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location: "querystring", location_name: "status"))
    ListOrganizationRecommendationResourcesRequest.struct_class = Types::ListOrganizationRecommendationResourcesRequest

    ListOrganizationRecommendationResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ListOrganizationRecommendationResourcesResponseNextTokenString, location_name: "nextToken"))
    ListOrganizationRecommendationResourcesResponse.add_member(:organization_recommendation_resource_summaries, Shapes::ShapeRef.new(shape: OrganizationRecommendationResourceSummaryList, required: true, location_name: "organizationRecommendationResourceSummaries"))
    ListOrganizationRecommendationResourcesResponse.struct_class = Types::ListOrganizationRecommendationResourcesResponse

    ListOrganizationRecommendationsRequest.add_member(:after_last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "afterLastUpdatedAt"))
    ListOrganizationRecommendationsRequest.add_member(:aws_service, Shapes::ShapeRef.new(shape: RecommendationAwsService, location: "querystring", location_name: "awsService"))
    ListOrganizationRecommendationsRequest.add_member(:before_last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "beforeLastUpdatedAt"))
    ListOrganizationRecommendationsRequest.add_member(:check_identifier, Shapes::ShapeRef.new(shape: CheckIdentifier, location: "querystring", location_name: "checkIdentifier"))
    ListOrganizationRecommendationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListOrganizationRecommendationsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListOrganizationRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListOrganizationRecommendationsRequestNextTokenString, location: "querystring", location_name: "nextToken"))
    ListOrganizationRecommendationsRequest.add_member(:pillar, Shapes::ShapeRef.new(shape: RecommendationPillar, location: "querystring", location_name: "pillar"))
    ListOrganizationRecommendationsRequest.add_member(:source, Shapes::ShapeRef.new(shape: RecommendationSource, location: "querystring", location_name: "source"))
    ListOrganizationRecommendationsRequest.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationStatus, location: "querystring", location_name: "status"))
    ListOrganizationRecommendationsRequest.add_member(:type, Shapes::ShapeRef.new(shape: RecommendationType, location: "querystring", location_name: "type"))
    ListOrganizationRecommendationsRequest.struct_class = Types::ListOrganizationRecommendationsRequest

    ListOrganizationRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ListOrganizationRecommendationsResponseNextTokenString, location_name: "nextToken"))
    ListOrganizationRecommendationsResponse.add_member(:organization_recommendation_summaries, Shapes::ShapeRef.new(shape: OrganizationRecommendationSummaryList, required: true, location_name: "organizationRecommendationSummaries"))
    ListOrganizationRecommendationsResponse.struct_class = Types::ListOrganizationRecommendationsResponse

    ListRecommendationResourcesRequest.add_member(:exclusion_status, Shapes::ShapeRef.new(shape: ExclusionStatus, location: "querystring", location_name: "exclusionStatus"))
    ListRecommendationResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRecommendationResourcesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRecommendationResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListRecommendationResourcesRequestNextTokenString, location: "querystring", location_name: "nextToken"))
    ListRecommendationResourcesRequest.add_member(:recommendation_identifier, Shapes::ShapeRef.new(shape: AccountRecommendationIdentifier, required: true, location: "uri", location_name: "recommendationIdentifier"))
    ListRecommendationResourcesRequest.add_member(:region_code, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "regionCode"))
    ListRecommendationResourcesRequest.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location: "querystring", location_name: "status"))
    ListRecommendationResourcesRequest.struct_class = Types::ListRecommendationResourcesRequest

    ListRecommendationResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ListRecommendationResourcesResponseNextTokenString, location_name: "nextToken"))
    ListRecommendationResourcesResponse.add_member(:recommendation_resource_summaries, Shapes::ShapeRef.new(shape: RecommendationResourceSummaryList, required: true, location_name: "recommendationResourceSummaries"))
    ListRecommendationResourcesResponse.struct_class = Types::ListRecommendationResourcesResponse

    ListRecommendationsRequest.add_member(:after_last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "afterLastUpdatedAt"))
    ListRecommendationsRequest.add_member(:aws_service, Shapes::ShapeRef.new(shape: RecommendationAwsService, location: "querystring", location_name: "awsService"))
    ListRecommendationsRequest.add_member(:before_last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "beforeLastUpdatedAt"))
    ListRecommendationsRequest.add_member(:check_identifier, Shapes::ShapeRef.new(shape: CheckIdentifier, location: "querystring", location_name: "checkIdentifier"))
    ListRecommendationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRecommendationsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListRecommendationsRequestNextTokenString, location: "querystring", location_name: "nextToken"))
    ListRecommendationsRequest.add_member(:pillar, Shapes::ShapeRef.new(shape: RecommendationPillar, location: "querystring", location_name: "pillar"))
    ListRecommendationsRequest.add_member(:source, Shapes::ShapeRef.new(shape: RecommendationSource, location: "querystring", location_name: "source"))
    ListRecommendationsRequest.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationStatus, location: "querystring", location_name: "status"))
    ListRecommendationsRequest.add_member(:type, Shapes::ShapeRef.new(shape: RecommendationType, location: "querystring", location_name: "type"))
    ListRecommendationsRequest.struct_class = Types::ListRecommendationsRequest

    ListRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ListRecommendationsResponseNextTokenString, location_name: "nextToken"))
    ListRecommendationsResponse.add_member(:recommendation_summaries, Shapes::ShapeRef.new(shape: RecommendationSummaryList, required: true, location_name: "recommendationSummaries"))
    ListRecommendationsResponse.struct_class = Types::ListRecommendationsResponse

    OrganizationRecommendation.add_member(:arn, Shapes::ShapeRef.new(shape: OrganizationRecommendationArn, required: true, location_name: "arn"))
    OrganizationRecommendation.add_member(:aws_services, Shapes::ShapeRef.new(shape: RecommendationAwsServiceList, location_name: "awsServices"))
    OrganizationRecommendation.add_member(:check_arn, Shapes::ShapeRef.new(shape: String, location_name: "checkArn"))
    OrganizationRecommendation.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    OrganizationRecommendation.add_member(:created_by, Shapes::ShapeRef.new(shape: String, location_name: "createdBy"))
    OrganizationRecommendation.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    OrganizationRecommendation.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    OrganizationRecommendation.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastUpdatedAt"))
    OrganizationRecommendation.add_member(:lifecycle_stage, Shapes::ShapeRef.new(shape: RecommendationLifecycleStage, location_name: "lifecycleStage"))
    OrganizationRecommendation.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    OrganizationRecommendation.add_member(:pillar_specific_aggregates, Shapes::ShapeRef.new(shape: RecommendationPillarSpecificAggregates, location_name: "pillarSpecificAggregates"))
    OrganizationRecommendation.add_member(:pillars, Shapes::ShapeRef.new(shape: RecommendationPillarList, required: true, location_name: "pillars"))
    OrganizationRecommendation.add_member(:resolved_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "resolvedAt"))
    OrganizationRecommendation.add_member(:resources_aggregates, Shapes::ShapeRef.new(shape: RecommendationResourcesAggregates, required: true, location_name: "resourcesAggregates"))
    OrganizationRecommendation.add_member(:source, Shapes::ShapeRef.new(shape: RecommendationSource, required: true, location_name: "source"))
    OrganizationRecommendation.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationStatus, required: true, location_name: "status"))
    OrganizationRecommendation.add_member(:type, Shapes::ShapeRef.new(shape: RecommendationType, required: true, location_name: "type"))
    OrganizationRecommendation.add_member(:update_reason, Shapes::ShapeRef.new(shape: RecommendationUpdateReason, location_name: "updateReason"))
    OrganizationRecommendation.add_member(:update_reason_code, Shapes::ShapeRef.new(shape: UpdateRecommendationLifecycleStageReasonCode, location_name: "updateReasonCode"))
    OrganizationRecommendation.add_member(:updated_on_behalf_of, Shapes::ShapeRef.new(shape: String, location_name: "updatedOnBehalfOf"))
    OrganizationRecommendation.add_member(:updated_on_behalf_of_job_title, Shapes::ShapeRef.new(shape: String, location_name: "updatedOnBehalfOfJobTitle"))
    OrganizationRecommendation.struct_class = Types::OrganizationRecommendation

    OrganizationRecommendationResourceSummary.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    OrganizationRecommendationResourceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: RecommendationResourceArn, required: true, location_name: "arn"))
    OrganizationRecommendationResourceSummary.add_member(:aws_resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "awsResourceId"))
    OrganizationRecommendationResourceSummary.add_member(:exclusion_status, Shapes::ShapeRef.new(shape: ExclusionStatus, location_name: "exclusionStatus"))
    OrganizationRecommendationResourceSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    OrganizationRecommendationResourceSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "lastUpdatedAt"))
    OrganizationRecommendationResourceSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: StringMap, required: true, location_name: "metadata"))
    OrganizationRecommendationResourceSummary.add_member(:recommendation_arn, Shapes::ShapeRef.new(shape: OrganizationRecommendationArn, required: true, location_name: "recommendationArn"))
    OrganizationRecommendationResourceSummary.add_member(:region_code, Shapes::ShapeRef.new(shape: RecommendationRegionCode, required: true, location_name: "regionCode"))
    OrganizationRecommendationResourceSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "status"))
    OrganizationRecommendationResourceSummary.struct_class = Types::OrganizationRecommendationResourceSummary

    OrganizationRecommendationResourceSummaryList.member = Shapes::ShapeRef.new(shape: OrganizationRecommendationResourceSummary)

    OrganizationRecommendationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: OrganizationRecommendationArn, required: true, location_name: "arn"))
    OrganizationRecommendationSummary.add_member(:aws_services, Shapes::ShapeRef.new(shape: RecommendationAwsServiceList, location_name: "awsServices"))
    OrganizationRecommendationSummary.add_member(:check_arn, Shapes::ShapeRef.new(shape: String, location_name: "checkArn"))
    OrganizationRecommendationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    OrganizationRecommendationSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    OrganizationRecommendationSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastUpdatedAt"))
    OrganizationRecommendationSummary.add_member(:lifecycle_stage, Shapes::ShapeRef.new(shape: RecommendationLifecycleStage, location_name: "lifecycleStage"))
    OrganizationRecommendationSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    OrganizationRecommendationSummary.add_member(:pillar_specific_aggregates, Shapes::ShapeRef.new(shape: RecommendationPillarSpecificAggregates, location_name: "pillarSpecificAggregates"))
    OrganizationRecommendationSummary.add_member(:pillars, Shapes::ShapeRef.new(shape: RecommendationPillarList, required: true, location_name: "pillars"))
    OrganizationRecommendationSummary.add_member(:resources_aggregates, Shapes::ShapeRef.new(shape: RecommendationResourcesAggregates, required: true, location_name: "resourcesAggregates"))
    OrganizationRecommendationSummary.add_member(:source, Shapes::ShapeRef.new(shape: RecommendationSource, required: true, location_name: "source"))
    OrganizationRecommendationSummary.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationStatus, required: true, location_name: "status"))
    OrganizationRecommendationSummary.add_member(:type, Shapes::ShapeRef.new(shape: RecommendationType, required: true, location_name: "type"))
    OrganizationRecommendationSummary.struct_class = Types::OrganizationRecommendationSummary

    OrganizationRecommendationSummaryList.member = Shapes::ShapeRef.new(shape: OrganizationRecommendationSummary)

    Recommendation.add_member(:arn, Shapes::ShapeRef.new(shape: AccountRecommendationArn, required: true, location_name: "arn"))
    Recommendation.add_member(:aws_services, Shapes::ShapeRef.new(shape: RecommendationAwsServiceList, location_name: "awsServices"))
    Recommendation.add_member(:check_arn, Shapes::ShapeRef.new(shape: String, location_name: "checkArn"))
    Recommendation.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    Recommendation.add_member(:created_by, Shapes::ShapeRef.new(shape: String, location_name: "createdBy"))
    Recommendation.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    Recommendation.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    Recommendation.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastUpdatedAt"))
    Recommendation.add_member(:lifecycle_stage, Shapes::ShapeRef.new(shape: RecommendationLifecycleStage, location_name: "lifecycleStage"))
    Recommendation.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    Recommendation.add_member(:pillar_specific_aggregates, Shapes::ShapeRef.new(shape: RecommendationPillarSpecificAggregates, location_name: "pillarSpecificAggregates"))
    Recommendation.add_member(:pillars, Shapes::ShapeRef.new(shape: RecommendationPillarList, required: true, location_name: "pillars"))
    Recommendation.add_member(:resolved_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "resolvedAt"))
    Recommendation.add_member(:resources_aggregates, Shapes::ShapeRef.new(shape: RecommendationResourcesAggregates, required: true, location_name: "resourcesAggregates"))
    Recommendation.add_member(:source, Shapes::ShapeRef.new(shape: RecommendationSource, required: true, location_name: "source"))
    Recommendation.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationStatus, required: true, location_name: "status"))
    Recommendation.add_member(:type, Shapes::ShapeRef.new(shape: RecommendationType, required: true, location_name: "type"))
    Recommendation.add_member(:update_reason, Shapes::ShapeRef.new(shape: RecommendationUpdateReason, location_name: "updateReason"))
    Recommendation.add_member(:update_reason_code, Shapes::ShapeRef.new(shape: UpdateRecommendationLifecycleStageReasonCode, location_name: "updateReasonCode"))
    Recommendation.add_member(:updated_on_behalf_of, Shapes::ShapeRef.new(shape: String, location_name: "updatedOnBehalfOf"))
    Recommendation.add_member(:updated_on_behalf_of_job_title, Shapes::ShapeRef.new(shape: String, location_name: "updatedOnBehalfOfJobTitle"))
    Recommendation.struct_class = Types::Recommendation

    RecommendationAwsServiceList.member = Shapes::ShapeRef.new(shape: RecommendationAwsService)

    RecommendationCostOptimizingAggregates.add_member(:estimated_monthly_savings, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "estimatedMonthlySavings"))
    RecommendationCostOptimizingAggregates.add_member(:estimated_percent_monthly_savings, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "estimatedPercentMonthlySavings"))
    RecommendationCostOptimizingAggregates.struct_class = Types::RecommendationCostOptimizingAggregates

    RecommendationPillarList.member = Shapes::ShapeRef.new(shape: RecommendationPillar)

    RecommendationPillarSpecificAggregates.add_member(:cost_optimizing, Shapes::ShapeRef.new(shape: RecommendationCostOptimizingAggregates, location_name: "costOptimizing"))
    RecommendationPillarSpecificAggregates.struct_class = Types::RecommendationPillarSpecificAggregates

    RecommendationResourceExclusion.add_member(:arn, Shapes::ShapeRef.new(shape: RecommendationResourceArn, required: true, location_name: "arn"))
    RecommendationResourceExclusion.add_member(:is_excluded, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "isExcluded"))
    RecommendationResourceExclusion.struct_class = Types::RecommendationResourceExclusion

    RecommendationResourceExclusionList.member = Shapes::ShapeRef.new(shape: RecommendationResourceExclusion)

    RecommendationResourceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: RecommendationResourceArn, required: true, location_name: "arn"))
    RecommendationResourceSummary.add_member(:aws_resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "awsResourceId"))
    RecommendationResourceSummary.add_member(:exclusion_status, Shapes::ShapeRef.new(shape: ExclusionStatus, location_name: "exclusionStatus"))
    RecommendationResourceSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    RecommendationResourceSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "lastUpdatedAt"))
    RecommendationResourceSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: StringMap, required: true, location_name: "metadata"))
    RecommendationResourceSummary.add_member(:recommendation_arn, Shapes::ShapeRef.new(shape: AccountRecommendationArn, required: true, location_name: "recommendationArn"))
    RecommendationResourceSummary.add_member(:region_code, Shapes::ShapeRef.new(shape: RecommendationRegionCode, required: true, location_name: "regionCode"))
    RecommendationResourceSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, required: true, location_name: "status"))
    RecommendationResourceSummary.struct_class = Types::RecommendationResourceSummary

    RecommendationResourceSummaryList.member = Shapes::ShapeRef.new(shape: RecommendationResourceSummary)

    RecommendationResourcesAggregates.add_member(:error_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "errorCount"))
    RecommendationResourcesAggregates.add_member(:ok_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "okCount"))
    RecommendationResourcesAggregates.add_member(:warning_count, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "warningCount"))
    RecommendationResourcesAggregates.struct_class = Types::RecommendationResourcesAggregates

    RecommendationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: AccountRecommendationArn, required: true, location_name: "arn"))
    RecommendationSummary.add_member(:aws_services, Shapes::ShapeRef.new(shape: RecommendationAwsServiceList, location_name: "awsServices"))
    RecommendationSummary.add_member(:check_arn, Shapes::ShapeRef.new(shape: String, location_name: "checkArn"))
    RecommendationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    RecommendationSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    RecommendationSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastUpdatedAt"))
    RecommendationSummary.add_member(:lifecycle_stage, Shapes::ShapeRef.new(shape: RecommendationLifecycleStage, location_name: "lifecycleStage"))
    RecommendationSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    RecommendationSummary.add_member(:pillar_specific_aggregates, Shapes::ShapeRef.new(shape: RecommendationPillarSpecificAggregates, location_name: "pillarSpecificAggregates"))
    RecommendationSummary.add_member(:pillars, Shapes::ShapeRef.new(shape: RecommendationPillarList, required: true, location_name: "pillars"))
    RecommendationSummary.add_member(:resources_aggregates, Shapes::ShapeRef.new(shape: RecommendationResourcesAggregates, required: true, location_name: "resourcesAggregates"))
    RecommendationSummary.add_member(:source, Shapes::ShapeRef.new(shape: RecommendationSource, required: true, location_name: "source"))
    RecommendationSummary.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationStatus, required: true, location_name: "status"))
    RecommendationSummary.add_member(:type, Shapes::ShapeRef.new(shape: RecommendationType, required: true, location_name: "type"))
    RecommendationSummary.struct_class = Types::RecommendationSummary

    RecommendationSummaryList.member = Shapes::ShapeRef.new(shape: RecommendationSummary)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    StringMap.key = Shapes::ShapeRef.new(shape: String)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateOrganizationRecommendationLifecycleRequest.add_member(:lifecycle_stage, Shapes::ShapeRef.new(shape: UpdateRecommendationLifecycleStage, required: true, location_name: "lifecycleStage"))
    UpdateOrganizationRecommendationLifecycleRequest.add_member(:organization_recommendation_identifier, Shapes::ShapeRef.new(shape: OrganizationRecommendationIdentifier, required: true, location: "uri", location_name: "organizationRecommendationIdentifier"))
    UpdateOrganizationRecommendationLifecycleRequest.add_member(:update_reason, Shapes::ShapeRef.new(shape: RecommendationUpdateReason, location_name: "updateReason"))
    UpdateOrganizationRecommendationLifecycleRequest.add_member(:update_reason_code, Shapes::ShapeRef.new(shape: UpdateRecommendationLifecycleStageReasonCode, location_name: "updateReasonCode"))
    UpdateOrganizationRecommendationLifecycleRequest.struct_class = Types::UpdateOrganizationRecommendationLifecycleRequest

    UpdateRecommendationLifecycleRequest.add_member(:lifecycle_stage, Shapes::ShapeRef.new(shape: UpdateRecommendationLifecycleStage, required: true, location_name: "lifecycleStage"))
    UpdateRecommendationLifecycleRequest.add_member(:recommendation_identifier, Shapes::ShapeRef.new(shape: AccountRecommendationIdentifier, required: true, location: "uri", location_name: "recommendationIdentifier"))
    UpdateRecommendationLifecycleRequest.add_member(:update_reason, Shapes::ShapeRef.new(shape: RecommendationUpdateReason, location_name: "updateReason"))
    UpdateRecommendationLifecycleRequest.add_member(:update_reason_code, Shapes::ShapeRef.new(shape: UpdateRecommendationLifecycleStageReasonCode, location_name: "updateReasonCode"))
    UpdateRecommendationLifecycleRequest.struct_class = Types::UpdateRecommendationLifecycleRequest

    UpdateRecommendationResourceExclusionError.add_member(:arn, Shapes::ShapeRef.new(shape: RecommendationResourceArn, location_name: "arn"))
    UpdateRecommendationResourceExclusionError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "errorCode"))
    UpdateRecommendationResourceExclusionError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    UpdateRecommendationResourceExclusionError.struct_class = Types::UpdateRecommendationResourceExclusionError

    UpdateRecommendationResourceExclusionErrorList.member = Shapes::ShapeRef.new(shape: UpdateRecommendationResourceExclusionError)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-09-15"

      api.metadata = {
        "apiVersion" => "2022-09-15",
        "endpointPrefix" => "trustedadvisor",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "TrustedAdvisor Public API",
        "serviceId" => "TrustedAdvisor",
        "signatureVersion" => "v4",
        "signingName" => "trustedadvisor",
        "uid" => "trustedadvisor-2022-09-15",
      }

      api.add_operation(:batch_update_recommendation_resource_exclusion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateRecommendationResourceExclusion"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/batch-update-recommendation-resource-exclusion"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateRecommendationResourceExclusionRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateRecommendationResourceExclusionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_organization_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOrganizationRecommendation"
        o.http_method = "GET"
        o.http_request_uri = "/v1/organization-recommendations/{organizationRecommendationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetOrganizationRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOrganizationRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecommendation"
        o.http_method = "GET"
        o.http_request_uri = "/v1/recommendations/{recommendationIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_checks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListChecks"
        o.http_method = "GET"
        o.http_request_uri = "/v1/checks"
        o.input = Shapes::ShapeRef.new(shape: ListChecksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListChecksResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_organization_recommendation_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOrganizationRecommendationAccounts"
        o.http_method = "GET"
        o.http_request_uri = "/v1/organization-recommendations/{organizationRecommendationIdentifier}/accounts"
        o.input = Shapes::ShapeRef.new(shape: ListOrganizationRecommendationAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOrganizationRecommendationAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_organization_recommendation_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOrganizationRecommendationResources"
        o.http_method = "GET"
        o.http_request_uri = "/v1/organization-recommendations/{organizationRecommendationIdentifier}/resources"
        o.input = Shapes::ShapeRef.new(shape: ListOrganizationRecommendationResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOrganizationRecommendationResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_organization_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOrganizationRecommendations"
        o.http_method = "GET"
        o.http_request_uri = "/v1/organization-recommendations"
        o.input = Shapes::ShapeRef.new(shape: ListOrganizationRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOrganizationRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recommendation_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecommendationResources"
        o.http_method = "GET"
        o.http_request_uri = "/v1/recommendations/{recommendationIdentifier}/resources"
        o.input = Shapes::ShapeRef.new(shape: ListRecommendationResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecommendationResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_recommendations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecommendations"
        o.http_method = "GET"
        o.http_request_uri = "/v1/recommendations"
        o.input = Shapes::ShapeRef.new(shape: ListRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_organization_recommendation_lifecycle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOrganizationRecommendationLifecycle"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/organization-recommendations/{organizationRecommendationIdentifier}/lifecycle"
        o.input = Shapes::ShapeRef.new(shape: UpdateOrganizationRecommendationLifecycleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_recommendation_lifecycle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRecommendationLifecycle"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/recommendations/{recommendationIdentifier}/lifecycle"
        o.input = Shapes::ShapeRef.new(shape: UpdateRecommendationLifecycleRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
