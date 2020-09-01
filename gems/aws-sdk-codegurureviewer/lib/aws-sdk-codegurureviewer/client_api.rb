# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeGuruReviewer
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateRepositoryRequest = Shapes::StructureShape.new(name: 'AssociateRepositoryRequest')
    AssociateRepositoryResponse = Shapes::StructureShape.new(name: 'AssociateRepositoryResponse')
    AssociationId = Shapes::StringShape.new(name: 'AssociationId')
    BranchName = Shapes::StringShape.new(name: 'BranchName')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    CodeCommitRepository = Shapes::StructureShape.new(name: 'CodeCommitRepository')
    CodeReview = Shapes::StructureShape.new(name: 'CodeReview')
    CodeReviewName = Shapes::StringShape.new(name: 'CodeReviewName')
    CodeReviewSummaries = Shapes::ListShape.new(name: 'CodeReviewSummaries')
    CodeReviewSummary = Shapes::StructureShape.new(name: 'CodeReviewSummary')
    CodeReviewType = Shapes::StructureShape.new(name: 'CodeReviewType')
    CommitDiffSourceCodeType = Shapes::StructureShape.new(name: 'CommitDiffSourceCodeType')
    CommitId = Shapes::StringShape.new(name: 'CommitId')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionArn = Shapes::StringShape.new(name: 'ConnectionArn')
    CreateCodeReviewRequest = Shapes::StructureShape.new(name: 'CreateCodeReviewRequest')
    CreateCodeReviewResponse = Shapes::StructureShape.new(name: 'CreateCodeReviewResponse')
    DescribeCodeReviewRequest = Shapes::StructureShape.new(name: 'DescribeCodeReviewRequest')
    DescribeCodeReviewResponse = Shapes::StructureShape.new(name: 'DescribeCodeReviewResponse')
    DescribeRecommendationFeedbackRequest = Shapes::StructureShape.new(name: 'DescribeRecommendationFeedbackRequest')
    DescribeRecommendationFeedbackResponse = Shapes::StructureShape.new(name: 'DescribeRecommendationFeedbackResponse')
    DescribeRepositoryAssociationRequest = Shapes::StructureShape.new(name: 'DescribeRepositoryAssociationRequest')
    DescribeRepositoryAssociationResponse = Shapes::StructureShape.new(name: 'DescribeRepositoryAssociationResponse')
    DisassociateRepositoryRequest = Shapes::StructureShape.new(name: 'DisassociateRepositoryRequest')
    DisassociateRepositoryResponse = Shapes::StructureShape.new(name: 'DisassociateRepositoryResponse')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FilePath = Shapes::StringShape.new(name: 'FilePath')
    FindingsCount = Shapes::IntegerShape.new(name: 'FindingsCount')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JobState = Shapes::StringShape.new(name: 'JobState')
    JobStates = Shapes::ListShape.new(name: 'JobStates')
    LineNumber = Shapes::IntegerShape.new(name: 'LineNumber')
    ListCodeReviewsMaxResults = Shapes::IntegerShape.new(name: 'ListCodeReviewsMaxResults')
    ListCodeReviewsRequest = Shapes::StructureShape.new(name: 'ListCodeReviewsRequest')
    ListCodeReviewsResponse = Shapes::StructureShape.new(name: 'ListCodeReviewsResponse')
    ListRecommendationFeedbackRequest = Shapes::StructureShape.new(name: 'ListRecommendationFeedbackRequest')
    ListRecommendationFeedbackResponse = Shapes::StructureShape.new(name: 'ListRecommendationFeedbackResponse')
    ListRecommendationsRequest = Shapes::StructureShape.new(name: 'ListRecommendationsRequest')
    ListRecommendationsResponse = Shapes::StructureShape.new(name: 'ListRecommendationsResponse')
    ListRepositoryAssociationsRequest = Shapes::StructureShape.new(name: 'ListRepositoryAssociationsRequest')
    ListRepositoryAssociationsResponse = Shapes::StructureShape.new(name: 'ListRepositoryAssociationsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MeteredLinesOfCodeCount = Shapes::IntegerShape.new(name: 'MeteredLinesOfCodeCount')
    Metrics = Shapes::StructureShape.new(name: 'Metrics')
    MetricsSummary = Shapes::StructureShape.new(name: 'MetricsSummary')
    Name = Shapes::StringShape.new(name: 'Name')
    Names = Shapes::ListShape.new(name: 'Names')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Owner = Shapes::StringShape.new(name: 'Owner')
    Owners = Shapes::ListShape.new(name: 'Owners')
    ProviderType = Shapes::StringShape.new(name: 'ProviderType')
    ProviderTypes = Shapes::ListShape.new(name: 'ProviderTypes')
    PullRequestId = Shapes::StringShape.new(name: 'PullRequestId')
    PutRecommendationFeedbackRequest = Shapes::StructureShape.new(name: 'PutRecommendationFeedbackRequest')
    PutRecommendationFeedbackResponse = Shapes::StructureShape.new(name: 'PutRecommendationFeedbackResponse')
    Reaction = Shapes::StringShape.new(name: 'Reaction')
    Reactions = Shapes::ListShape.new(name: 'Reactions')
    RecommendationFeedback = Shapes::StructureShape.new(name: 'RecommendationFeedback')
    RecommendationFeedbackSummaries = Shapes::ListShape.new(name: 'RecommendationFeedbackSummaries')
    RecommendationFeedbackSummary = Shapes::StructureShape.new(name: 'RecommendationFeedbackSummary')
    RecommendationId = Shapes::StringShape.new(name: 'RecommendationId')
    RecommendationIds = Shapes::ListShape.new(name: 'RecommendationIds')
    RecommendationSummaries = Shapes::ListShape.new(name: 'RecommendationSummaries')
    RecommendationSummary = Shapes::StructureShape.new(name: 'RecommendationSummary')
    Repository = Shapes::StructureShape.new(name: 'Repository')
    RepositoryAnalysis = Shapes::StructureShape.new(name: 'RepositoryAnalysis')
    RepositoryAssociation = Shapes::StructureShape.new(name: 'RepositoryAssociation')
    RepositoryAssociationState = Shapes::StringShape.new(name: 'RepositoryAssociationState')
    RepositoryAssociationStates = Shapes::ListShape.new(name: 'RepositoryAssociationStates')
    RepositoryAssociationSummaries = Shapes::ListShape.new(name: 'RepositoryAssociationSummaries')
    RepositoryAssociationSummary = Shapes::StructureShape.new(name: 'RepositoryAssociationSummary')
    RepositoryHeadSourceCodeType = Shapes::StructureShape.new(name: 'RepositoryHeadSourceCodeType')
    RepositoryNames = Shapes::ListShape.new(name: 'RepositoryNames')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SourceCodeType = Shapes::StructureShape.new(name: 'SourceCodeType')
    StateReason = Shapes::StringShape.new(name: 'StateReason')
    Text = Shapes::StringShape.new(name: 'Text')
    ThirdPartySourceRepository = Shapes::StructureShape.new(name: 'ThirdPartySourceRepository')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')
    Type = Shapes::StringShape.new(name: 'Type')
    UserId = Shapes::StringShape.new(name: 'UserId')
    UserIds = Shapes::ListShape.new(name: 'UserIds')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociateRepositoryRequest.add_member(:repository, Shapes::ShapeRef.new(shape: Repository, required: true, location_name: "Repository"))
    AssociateRepositoryRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    AssociateRepositoryRequest.struct_class = Types::AssociateRepositoryRequest

    AssociateRepositoryResponse.add_member(:repository_association, Shapes::ShapeRef.new(shape: RepositoryAssociation, location_name: "RepositoryAssociation"))
    AssociateRepositoryResponse.struct_class = Types::AssociateRepositoryResponse

    CodeCommitRepository.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CodeCommitRepository.struct_class = Types::CodeCommitRepository

    CodeReview.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    CodeReview.add_member(:code_review_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CodeReviewArn"))
    CodeReview.add_member(:repository_name, Shapes::ShapeRef.new(shape: Name, location_name: "RepositoryName"))
    CodeReview.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    CodeReview.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    CodeReview.add_member(:state, Shapes::ShapeRef.new(shape: JobState, location_name: "State"))
    CodeReview.add_member(:state_reason, Shapes::ShapeRef.new(shape: StateReason, location_name: "StateReason"))
    CodeReview.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "CreatedTimeStamp"))
    CodeReview.add_member(:last_updated_time_stamp, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastUpdatedTimeStamp"))
    CodeReview.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "Type"))
    CodeReview.add_member(:pull_request_id, Shapes::ShapeRef.new(shape: PullRequestId, location_name: "PullRequestId"))
    CodeReview.add_member(:source_code_type, Shapes::ShapeRef.new(shape: SourceCodeType, location_name: "SourceCodeType"))
    CodeReview.add_member(:metrics, Shapes::ShapeRef.new(shape: Metrics, location_name: "Metrics"))
    CodeReview.struct_class = Types::CodeReview

    CodeReviewSummaries.member = Shapes::ShapeRef.new(shape: CodeReviewSummary)

    CodeReviewSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    CodeReviewSummary.add_member(:code_review_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CodeReviewArn"))
    CodeReviewSummary.add_member(:repository_name, Shapes::ShapeRef.new(shape: Name, location_name: "RepositoryName"))
    CodeReviewSummary.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    CodeReviewSummary.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    CodeReviewSummary.add_member(:state, Shapes::ShapeRef.new(shape: JobState, location_name: "State"))
    CodeReviewSummary.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "CreatedTimeStamp"))
    CodeReviewSummary.add_member(:last_updated_time_stamp, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastUpdatedTimeStamp"))
    CodeReviewSummary.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "Type"))
    CodeReviewSummary.add_member(:pull_request_id, Shapes::ShapeRef.new(shape: PullRequestId, location_name: "PullRequestId"))
    CodeReviewSummary.add_member(:metrics_summary, Shapes::ShapeRef.new(shape: MetricsSummary, location_name: "MetricsSummary"))
    CodeReviewSummary.struct_class = Types::CodeReviewSummary

    CodeReviewType.add_member(:repository_analysis, Shapes::ShapeRef.new(shape: RepositoryAnalysis, required: true, location_name: "RepositoryAnalysis"))
    CodeReviewType.struct_class = Types::CodeReviewType

    CommitDiffSourceCodeType.add_member(:source_commit, Shapes::ShapeRef.new(shape: CommitId, location_name: "SourceCommit"))
    CommitDiffSourceCodeType.add_member(:destination_commit, Shapes::ShapeRef.new(shape: CommitId, location_name: "DestinationCommit"))
    CommitDiffSourceCodeType.struct_class = Types::CommitDiffSourceCodeType

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateCodeReviewRequest.add_member(:name, Shapes::ShapeRef.new(shape: CodeReviewName, required: true, location_name: "Name"))
    CreateCodeReviewRequest.add_member(:repository_association_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "RepositoryAssociationArn"))
    CreateCodeReviewRequest.add_member(:type, Shapes::ShapeRef.new(shape: CodeReviewType, required: true, location_name: "Type"))
    CreateCodeReviewRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateCodeReviewRequest.struct_class = Types::CreateCodeReviewRequest

    CreateCodeReviewResponse.add_member(:code_review, Shapes::ShapeRef.new(shape: CodeReview, location_name: "CodeReview"))
    CreateCodeReviewResponse.struct_class = Types::CreateCodeReviewResponse

    DescribeCodeReviewRequest.add_member(:code_review_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "CodeReviewArn"))
    DescribeCodeReviewRequest.struct_class = Types::DescribeCodeReviewRequest

    DescribeCodeReviewResponse.add_member(:code_review, Shapes::ShapeRef.new(shape: CodeReview, location_name: "CodeReview"))
    DescribeCodeReviewResponse.struct_class = Types::DescribeCodeReviewResponse

    DescribeRecommendationFeedbackRequest.add_member(:code_review_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "CodeReviewArn"))
    DescribeRecommendationFeedbackRequest.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationId, required: true, location: "querystring", location_name: "RecommendationId"))
    DescribeRecommendationFeedbackRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location: "querystring", location_name: "UserId"))
    DescribeRecommendationFeedbackRequest.struct_class = Types::DescribeRecommendationFeedbackRequest

    DescribeRecommendationFeedbackResponse.add_member(:recommendation_feedback, Shapes::ShapeRef.new(shape: RecommendationFeedback, location_name: "RecommendationFeedback"))
    DescribeRecommendationFeedbackResponse.struct_class = Types::DescribeRecommendationFeedbackResponse

    DescribeRepositoryAssociationRequest.add_member(:association_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "AssociationArn"))
    DescribeRepositoryAssociationRequest.struct_class = Types::DescribeRepositoryAssociationRequest

    DescribeRepositoryAssociationResponse.add_member(:repository_association, Shapes::ShapeRef.new(shape: RepositoryAssociation, location_name: "RepositoryAssociation"))
    DescribeRepositoryAssociationResponse.struct_class = Types::DescribeRepositoryAssociationResponse

    DisassociateRepositoryRequest.add_member(:association_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "AssociationArn"))
    DisassociateRepositoryRequest.struct_class = Types::DisassociateRepositoryRequest

    DisassociateRepositoryResponse.add_member(:repository_association, Shapes::ShapeRef.new(shape: RepositoryAssociation, location_name: "RepositoryAssociation"))
    DisassociateRepositoryResponse.struct_class = Types::DisassociateRepositoryResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    JobStates.member = Shapes::ShapeRef.new(shape: JobState)

    ListCodeReviewsRequest.add_member(:provider_types, Shapes::ShapeRef.new(shape: ProviderTypes, location: "querystring", location_name: "ProviderTypes"))
    ListCodeReviewsRequest.add_member(:states, Shapes::ShapeRef.new(shape: JobStates, location: "querystring", location_name: "States"))
    ListCodeReviewsRequest.add_member(:repository_names, Shapes::ShapeRef.new(shape: RepositoryNames, location: "querystring", location_name: "RepositoryNames"))
    ListCodeReviewsRequest.add_member(:type, Shapes::ShapeRef.new(shape: Type, required: true, location: "querystring", location_name: "Type"))
    ListCodeReviewsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListCodeReviewsMaxResults, location: "querystring", location_name: "MaxResults"))
    ListCodeReviewsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListCodeReviewsRequest.struct_class = Types::ListCodeReviewsRequest

    ListCodeReviewsResponse.add_member(:code_review_summaries, Shapes::ShapeRef.new(shape: CodeReviewSummaries, location_name: "CodeReviewSummaries"))
    ListCodeReviewsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCodeReviewsResponse.struct_class = Types::ListCodeReviewsResponse

    ListRecommendationFeedbackRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListRecommendationFeedbackRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListRecommendationFeedbackRequest.add_member(:code_review_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "CodeReviewArn"))
    ListRecommendationFeedbackRequest.add_member(:user_ids, Shapes::ShapeRef.new(shape: UserIds, location: "querystring", location_name: "UserIds"))
    ListRecommendationFeedbackRequest.add_member(:recommendation_ids, Shapes::ShapeRef.new(shape: RecommendationIds, location: "querystring", location_name: "RecommendationIds"))
    ListRecommendationFeedbackRequest.struct_class = Types::ListRecommendationFeedbackRequest

    ListRecommendationFeedbackResponse.add_member(:recommendation_feedback_summaries, Shapes::ShapeRef.new(shape: RecommendationFeedbackSummaries, location_name: "RecommendationFeedbackSummaries"))
    ListRecommendationFeedbackResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRecommendationFeedbackResponse.struct_class = Types::ListRecommendationFeedbackResponse

    ListRecommendationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListRecommendationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListRecommendationsRequest.add_member(:code_review_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "CodeReviewArn"))
    ListRecommendationsRequest.struct_class = Types::ListRecommendationsRequest

    ListRecommendationsResponse.add_member(:recommendation_summaries, Shapes::ShapeRef.new(shape: RecommendationSummaries, location_name: "RecommendationSummaries"))
    ListRecommendationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRecommendationsResponse.struct_class = Types::ListRecommendationsResponse

    ListRepositoryAssociationsRequest.add_member(:provider_types, Shapes::ShapeRef.new(shape: ProviderTypes, location: "querystring", location_name: "ProviderType"))
    ListRepositoryAssociationsRequest.add_member(:states, Shapes::ShapeRef.new(shape: RepositoryAssociationStates, location: "querystring", location_name: "State"))
    ListRepositoryAssociationsRequest.add_member(:names, Shapes::ShapeRef.new(shape: Names, location: "querystring", location_name: "Name"))
    ListRepositoryAssociationsRequest.add_member(:owners, Shapes::ShapeRef.new(shape: Owners, location: "querystring", location_name: "Owner"))
    ListRepositoryAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListRepositoryAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListRepositoryAssociationsRequest.struct_class = Types::ListRepositoryAssociationsRequest

    ListRepositoryAssociationsResponse.add_member(:repository_association_summaries, Shapes::ShapeRef.new(shape: RepositoryAssociationSummaries, location_name: "RepositoryAssociationSummaries"))
    ListRepositoryAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRepositoryAssociationsResponse.struct_class = Types::ListRepositoryAssociationsResponse

    Metrics.add_member(:metered_lines_of_code_count, Shapes::ShapeRef.new(shape: MeteredLinesOfCodeCount, location_name: "MeteredLinesOfCodeCount"))
    Metrics.add_member(:findings_count, Shapes::ShapeRef.new(shape: FindingsCount, location_name: "FindingsCount"))
    Metrics.struct_class = Types::Metrics

    MetricsSummary.add_member(:metered_lines_of_code_count, Shapes::ShapeRef.new(shape: MeteredLinesOfCodeCount, location_name: "MeteredLinesOfCodeCount"))
    MetricsSummary.add_member(:findings_count, Shapes::ShapeRef.new(shape: FindingsCount, location_name: "FindingsCount"))
    MetricsSummary.struct_class = Types::MetricsSummary

    Names.member = Shapes::ShapeRef.new(shape: Name)

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    Owners.member = Shapes::ShapeRef.new(shape: Owner)

    ProviderTypes.member = Shapes::ShapeRef.new(shape: ProviderType)

    PutRecommendationFeedbackRequest.add_member(:code_review_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "CodeReviewArn"))
    PutRecommendationFeedbackRequest.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationId, required: true, location_name: "RecommendationId"))
    PutRecommendationFeedbackRequest.add_member(:reactions, Shapes::ShapeRef.new(shape: Reactions, required: true, location_name: "Reactions"))
    PutRecommendationFeedbackRequest.struct_class = Types::PutRecommendationFeedbackRequest

    PutRecommendationFeedbackResponse.struct_class = Types::PutRecommendationFeedbackResponse

    Reactions.member = Shapes::ShapeRef.new(shape: Reaction)

    RecommendationFeedback.add_member(:code_review_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "CodeReviewArn"))
    RecommendationFeedback.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationId, location_name: "RecommendationId"))
    RecommendationFeedback.add_member(:reactions, Shapes::ShapeRef.new(shape: Reactions, location_name: "Reactions"))
    RecommendationFeedback.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    RecommendationFeedback.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "CreatedTimeStamp"))
    RecommendationFeedback.add_member(:last_updated_time_stamp, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastUpdatedTimeStamp"))
    RecommendationFeedback.struct_class = Types::RecommendationFeedback

    RecommendationFeedbackSummaries.member = Shapes::ShapeRef.new(shape: RecommendationFeedbackSummary)

    RecommendationFeedbackSummary.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationId, location_name: "RecommendationId"))
    RecommendationFeedbackSummary.add_member(:reactions, Shapes::ShapeRef.new(shape: Reactions, location_name: "Reactions"))
    RecommendationFeedbackSummary.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "UserId"))
    RecommendationFeedbackSummary.struct_class = Types::RecommendationFeedbackSummary

    RecommendationIds.member = Shapes::ShapeRef.new(shape: RecommendationId)

    RecommendationSummaries.member = Shapes::ShapeRef.new(shape: RecommendationSummary)

    RecommendationSummary.add_member(:file_path, Shapes::ShapeRef.new(shape: FilePath, location_name: "FilePath"))
    RecommendationSummary.add_member(:recommendation_id, Shapes::ShapeRef.new(shape: RecommendationId, location_name: "RecommendationId"))
    RecommendationSummary.add_member(:start_line, Shapes::ShapeRef.new(shape: LineNumber, location_name: "StartLine"))
    RecommendationSummary.add_member(:end_line, Shapes::ShapeRef.new(shape: LineNumber, location_name: "EndLine"))
    RecommendationSummary.add_member(:description, Shapes::ShapeRef.new(shape: Text, location_name: "Description"))
    RecommendationSummary.struct_class = Types::RecommendationSummary

    Repository.add_member(:code_commit, Shapes::ShapeRef.new(shape: CodeCommitRepository, location_name: "CodeCommit"))
    Repository.add_member(:bitbucket, Shapes::ShapeRef.new(shape: ThirdPartySourceRepository, location_name: "Bitbucket"))
    Repository.add_member(:git_hub_enterprise_server, Shapes::ShapeRef.new(shape: ThirdPartySourceRepository, location_name: "GitHubEnterpriseServer"))
    Repository.struct_class = Types::Repository

    RepositoryAnalysis.add_member(:repository_head, Shapes::ShapeRef.new(shape: RepositoryHeadSourceCodeType, required: true, location_name: "RepositoryHead"))
    RepositoryAnalysis.struct_class = Types::RepositoryAnalysis

    RepositoryAssociation.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    RepositoryAssociation.add_member(:association_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AssociationArn"))
    RepositoryAssociation.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    RepositoryAssociation.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    RepositoryAssociation.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    RepositoryAssociation.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    RepositoryAssociation.add_member(:state, Shapes::ShapeRef.new(shape: RepositoryAssociationState, location_name: "State"))
    RepositoryAssociation.add_member(:state_reason, Shapes::ShapeRef.new(shape: StateReason, location_name: "StateReason"))
    RepositoryAssociation.add_member(:last_updated_time_stamp, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastUpdatedTimeStamp"))
    RepositoryAssociation.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "CreatedTimeStamp"))
    RepositoryAssociation.struct_class = Types::RepositoryAssociation

    RepositoryAssociationStates.member = Shapes::ShapeRef.new(shape: RepositoryAssociationState)

    RepositoryAssociationSummaries.member = Shapes::ShapeRef.new(shape: RepositoryAssociationSummary)

    RepositoryAssociationSummary.add_member(:association_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AssociationArn"))
    RepositoryAssociationSummary.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "ConnectionArn"))
    RepositoryAssociationSummary.add_member(:last_updated_time_stamp, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastUpdatedTimeStamp"))
    RepositoryAssociationSummary.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    RepositoryAssociationSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    RepositoryAssociationSummary.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    RepositoryAssociationSummary.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    RepositoryAssociationSummary.add_member(:state, Shapes::ShapeRef.new(shape: RepositoryAssociationState, location_name: "State"))
    RepositoryAssociationSummary.struct_class = Types::RepositoryAssociationSummary

    RepositoryHeadSourceCodeType.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "BranchName"))
    RepositoryHeadSourceCodeType.struct_class = Types::RepositoryHeadSourceCodeType

    RepositoryNames.member = Shapes::ShapeRef.new(shape: Name)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SourceCodeType.add_member(:commit_diff, Shapes::ShapeRef.new(shape: CommitDiffSourceCodeType, location_name: "CommitDiff"))
    SourceCodeType.add_member(:repository_head, Shapes::ShapeRef.new(shape: RepositoryHeadSourceCodeType, location_name: "RepositoryHead"))
    SourceCodeType.struct_class = Types::SourceCodeType

    ThirdPartySourceRepository.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    ThirdPartySourceRepository.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, required: true, location_name: "ConnectionArn"))
    ThirdPartySourceRepository.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, required: true, location_name: "Owner"))
    ThirdPartySourceRepository.struct_class = Types::ThirdPartySourceRepository

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UserIds.member = Shapes::ShapeRef.new(shape: UserId)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-09-19"

      api.metadata = {
        "apiVersion" => "2019-09-19",
        "endpointPrefix" => "codeguru-reviewer",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "CodeGuruReviewer",
        "serviceFullName" => "Amazon CodeGuru Reviewer",
        "serviceId" => "CodeGuru Reviewer",
        "signatureVersion" => "v4",
        "signingName" => "codeguru-reviewer",
        "uid" => "codeguru-reviewer-2019-09-19",
      }

      api.add_operation(:associate_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateRepository"
        o.http_method = "POST"
        o.http_request_uri = "/associations"
        o.input = Shapes::ShapeRef.new(shape: AssociateRepositoryRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateRepositoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_code_review, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCodeReview"
        o.http_method = "POST"
        o.http_request_uri = "/codereviews"
        o.input = Shapes::ShapeRef.new(shape: CreateCodeReviewRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCodeReviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_code_review, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCodeReview"
        o.http_method = "GET"
        o.http_request_uri = "/codereviews/{CodeReviewArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeCodeReviewRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCodeReviewResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_recommendation_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRecommendationFeedback"
        o.http_method = "GET"
        o.http_request_uri = "/feedback/{CodeReviewArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRecommendationFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRecommendationFeedbackResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_repository_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRepositoryAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/associations/{AssociationArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRepositoryAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRepositoryAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateRepository"
        o.http_method = "DELETE"
        o.http_request_uri = "/associations/{AssociationArn}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateRepositoryRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateRepositoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_code_reviews, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeReviews"
        o.http_method = "GET"
        o.http_request_uri = "/codereviews"
        o.input = Shapes::ShapeRef.new(shape: ListCodeReviewsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCodeReviewsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:list_recommendation_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRecommendationFeedback"
        o.http_method = "GET"
        o.http_request_uri = "/feedback/{CodeReviewArn}/RecommendationFeedback"
        o.input = Shapes::ShapeRef.new(shape: ListRecommendationFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecommendationFeedbackResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.http_request_uri = "/codereviews/{CodeReviewArn}/Recommendations"
        o.input = Shapes::ShapeRef.new(shape: ListRecommendationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRecommendationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_repository_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRepositoryAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/associations"
        o.input = Shapes::ShapeRef.new(shape: ListRepositoryAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRepositoryAssociationsResponse)
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

      api.add_operation(:put_recommendation_feedback, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRecommendationFeedback"
        o.http_method = "PUT"
        o.http_request_uri = "/feedback"
        o.input = Shapes::ShapeRef.new(shape: PutRecommendationFeedbackRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRecommendationFeedbackResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
