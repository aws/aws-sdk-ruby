# frozen_string_literal: true

# This is generated code!

module Aws::CodeGuruReviewer
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AnalysisType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codegurureviewer#AnalysisType", name: "AnalysisType")
    AnalysisTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codegurureviewer#AnalysisTypes", name: "AnalysisTypes")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws[^:\\s]*:codeguru-reviewer:[^:\\s]+:[\\d]{12}:[a-z-]+:[\\w-]+$"})
    AssociateRepositoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#AssociateRepositoryRequest", name: "AssociateRepositoryRequest")
    AssociateRepositoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#AssociateRepositoryResponse", name: "AssociateRepositoryResponse")
    AssociationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#AssociationArn", name: "AssociationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:aws[^:\\s]*:codeguru-reviewer:[^:\\s]+:[\\d]{12}:association:[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    AssociationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#AssociationId", name: "AssociationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    BranchDiffSourceCodeType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#BranchDiffSourceCodeType", name: "BranchDiffSourceCodeType")
    BranchName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#BranchName", name: "BranchName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    BuildArtifactsObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#BuildArtifactsObjectKey", name: "BuildArtifactsObjectKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\S(.*\\S)?$"})
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w-]+$"})
    CodeArtifacts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#CodeArtifacts", name: "CodeArtifacts")
    CodeCommitRepository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#CodeCommitRepository", name: "CodeCommitRepository")
    CodeReview = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#CodeReview", name: "CodeReview")
    CodeReviewName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#CodeReviewName", name: "CodeReviewName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]*$"})
    CodeReviewSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codegurureviewer#CodeReviewSummaries", name: "CodeReviewSummaries")
    CodeReviewSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#CodeReviewSummary", name: "CodeReviewSummary")
    CodeReviewType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#CodeReviewType", name: "CodeReviewType")
    CommitDiffSourceCodeType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#CommitDiffSourceCodeType", name: "CommitDiffSourceCodeType")
    CommitId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#CommitId", name: "CommitId", traits: {"smithy.api#length" => {"min" => 6, "max" => 64}})
    ConfigFileState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codegurureviewer#ConfigFileState", name: "ConfigFileState")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#ConnectionArn", name: "ConnectionArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+$"})
    CreateCodeReviewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#CreateCodeReviewRequest", name: "CreateCodeReviewRequest")
    CreateCodeReviewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#CreateCodeReviewResponse", name: "CreateCodeReviewResponse")
    DescribeCodeReviewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#DescribeCodeReviewRequest", name: "DescribeCodeReviewRequest")
    DescribeCodeReviewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#DescribeCodeReviewResponse", name: "DescribeCodeReviewResponse")
    DescribeRecommendationFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#DescribeRecommendationFeedbackRequest", name: "DescribeRecommendationFeedbackRequest")
    DescribeRecommendationFeedbackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#DescribeRecommendationFeedbackResponse", name: "DescribeRecommendationFeedbackResponse")
    DescribeRepositoryAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#DescribeRepositoryAssociationRequest", name: "DescribeRepositoryAssociationRequest")
    DescribeRepositoryAssociationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#DescribeRepositoryAssociationResponse", name: "DescribeRepositoryAssociationResponse")
    DisassociateRepositoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#DisassociateRepositoryRequest", name: "DisassociateRepositoryRequest")
    DisassociateRepositoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#DisassociateRepositoryResponse", name: "DisassociateRepositoryResponse")
    EncryptionOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codegurureviewer#EncryptionOption", name: "EncryptionOption")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#ErrorMessage", name: "ErrorMessage")
    EventInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#EventInfo", name: "EventInfo")
    EventName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#EventName", name: "EventName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[ \\-A-Z_a-z]+$"})
    EventState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#EventState", name: "EventState", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[ \\-A-Z_a-z]+$"})
    FilePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#FilePath", name: "FilePath", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    FindingsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codegurureviewer#FindingsCount", name: "FindingsCount")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codegurureviewer#JobState", name: "JobState")
    JobStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codegurureviewer#JobStates", name: "JobStates", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    KMSKeyDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#KMSKeyDetails", name: "KMSKeyDetails")
    KMSKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#KMSKeyId", name: "KMSKeyId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    LineNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codegurureviewer#LineNumber", name: "LineNumber")
    LinesOfCodeCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codegurureviewer#LinesOfCodeCount", name: "LinesOfCodeCount")
    ListCodeReviewsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codegurureviewer#ListCodeReviewsMaxResults", name: "ListCodeReviewsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListCodeReviewsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#ListCodeReviewsRequest", name: "ListCodeReviewsRequest")
    ListCodeReviewsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#ListCodeReviewsResponse", name: "ListCodeReviewsResponse")
    ListRecommendationFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#ListRecommendationFeedbackRequest", name: "ListRecommendationFeedbackRequest")
    ListRecommendationFeedbackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#ListRecommendationFeedbackResponse", name: "ListRecommendationFeedbackResponse")
    ListRecommendationsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codegurureviewer#ListRecommendationsMaxResults", name: "ListRecommendationsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 300}})
    ListRecommendationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#ListRecommendationsRequest", name: "ListRecommendationsRequest")
    ListRecommendationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#ListRecommendationsResponse", name: "ListRecommendationsResponse")
    ListRepositoryAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#ListRepositoryAssociationsRequest", name: "ListRepositoryAssociationsRequest")
    ListRepositoryAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#ListRepositoryAssociationsResponse", name: "ListRepositoryAssociationsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LongDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#LongDescription", name: "LongDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^\\S(.*\\S)?$"})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codegurureviewer#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Metrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#Metrics", name: "Metrics")
    MetricsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#MetricsSummary", name: "MetricsSummary")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^\\S[\\w.-]*$"})
    Names = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codegurureviewer#Names", name: "Names", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Owner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#Owner", name: "Owner", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^\\S(.*\\S)?$"})
    Owners = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codegurureviewer#Owners", name: "Owners", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    ProviderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codegurureviewer#ProviderType", name: "ProviderType")
    ProviderTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codegurureviewer#ProviderTypes", name: "ProviderTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    PullRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#PullRequestId", name: "PullRequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    PutRecommendationFeedbackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#PutRecommendationFeedbackRequest", name: "PutRecommendationFeedbackRequest")
    PutRecommendationFeedbackResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#PutRecommendationFeedbackResponse", name: "PutRecommendationFeedbackResponse")
    Reaction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codegurureviewer#Reaction", name: "Reaction")
    Reactions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codegurureviewer#Reactions", name: "Reactions", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    RecommendationCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codegurureviewer#RecommendationCategory", name: "RecommendationCategory")
    RecommendationFeedback = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#RecommendationFeedback", name: "RecommendationFeedback")
    RecommendationFeedbackSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codegurureviewer#RecommendationFeedbackSummaries", name: "RecommendationFeedbackSummaries")
    RecommendationFeedbackSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#RecommendationFeedbackSummary", name: "RecommendationFeedbackSummary")
    RecommendationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#RecommendationId", name: "RecommendationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    RecommendationIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codegurureviewer#RecommendationIds", name: "RecommendationIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RecommendationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codegurureviewer#RecommendationSummaries", name: "RecommendationSummaries")
    RecommendationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#RecommendationSummary", name: "RecommendationSummary")
    Repository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#Repository", name: "Repository")
    RepositoryAnalysis = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#RepositoryAnalysis", name: "RepositoryAnalysis")
    RepositoryAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#RepositoryAssociation", name: "RepositoryAssociation")
    RepositoryAssociationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codegurureviewer#RepositoryAssociationState", name: "RepositoryAssociationState")
    RepositoryAssociationStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codegurureviewer#RepositoryAssociationStates", name: "RepositoryAssociationStates", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    RepositoryAssociationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codegurureviewer#RepositoryAssociationSummaries", name: "RepositoryAssociationSummaries")
    RepositoryAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#RepositoryAssociationSummary", name: "RepositoryAssociationSummary")
    RepositoryHeadSourceCodeType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#RepositoryHeadSourceCodeType", name: "RepositoryHeadSourceCodeType")
    RepositoryNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codegurureviewer#RepositoryNames", name: "RepositoryNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#RequestId", name: "RequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    RequestMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#RequestMetadata", name: "RequestMetadata")
    Requester = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#Requester", name: "Requester", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^\\S(.*\\S)?$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RuleId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#RuleId", name: "RuleId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^\\S+\\/[a-zA-Z0-9-]+@v\\d+\\.\\d+$"})
    RuleMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#RuleMetadata", name: "RuleMetadata")
    RuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#RuleName", name: "RuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^\\S(.*\\S)?$"})
    RuleTag = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#RuleTag", name: "RuleTag", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^\\S(.*\\S)?$"})
    RuleTags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codegurureviewer#RuleTags", name: "RuleTags", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#S3BucketName", name: "S3BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^\\S(.*\\S)?$"})
    S3BucketRepository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#S3BucketRepository", name: "S3BucketRepository")
    S3Repository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#S3Repository", name: "S3Repository")
    S3RepositoryDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#S3RepositoryDetails", name: "S3RepositoryDetails")
    Severity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codegurureviewer#Severity", name: "Severity")
    ShortDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#ShortDescription", name: "ShortDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^\\S(.*\\S)?$"})
    SourceCodeArtifactsObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#SourceCodeArtifactsObjectKey", name: "SourceCodeArtifactsObjectKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\S(.*\\S)?$"})
    SourceCodeType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#SourceCodeType", name: "SourceCodeType")
    StateReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#StateReason", name: "StateReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codegurureviewer#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codegurureviewer#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Text = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#Text", name: "Text", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}})
    ThirdPartySourceRepository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#ThirdPartySourceRepository", name: "ThirdPartySourceRepository")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codegurureviewer#TimeStamp", name: "TimeStamp")
    Type = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codegurureviewer#Type", name: "Type")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#UntagResourceResponse", name: "UntagResourceResponse")
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codegurureviewer#UserId", name: "UserId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    UserIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codegurureviewer#UserIds", name: "UserIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codegurureviewer#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VendorName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codegurureviewer#VendorName", name: "VendorName")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AnalysisType.add_member(:security, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SECURITY", traits: {"smithy.api#enumValue" => "Security"}))
    AnalysisType.add_member(:code_quality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CODE_QUALITY", traits: {"smithy.api#enumValue" => "CodeQuality"}))
    AnalysisTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisType)
    AssociateRepositoryRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: Repository, location_name: "Repository", traits: {"smithy.api#required" => {}}))
    AssociateRepositoryRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    AssociateRepositoryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    AssociateRepositoryRequest.add_member(:kms_key_details, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyDetails, location_name: "KMSKeyDetails"))
    AssociateRepositoryRequest.type = Types::AssociateRepositoryRequest
    AssociateRepositoryResponse.add_member(:repository_association, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryAssociation, location_name: "RepositoryAssociation"))
    AssociateRepositoryResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    AssociateRepositoryResponse.type = Types::AssociateRepositoryResponse
    BranchDiffSourceCodeType.add_member(:source_branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "SourceBranchName", traits: {"smithy.api#required" => {}}))
    BranchDiffSourceCodeType.add_member(:destination_branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "DestinationBranchName", traits: {"smithy.api#required" => {}}))
    BranchDiffSourceCodeType.type = Types::BranchDiffSourceCodeType
    CodeArtifacts.add_member(:source_code_artifacts_object_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCodeArtifactsObjectKey, location_name: "SourceCodeArtifactsObjectKey", traits: {"smithy.api#required" => {}}))
    CodeArtifacts.add_member(:build_artifacts_object_key, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildArtifactsObjectKey, location_name: "BuildArtifactsObjectKey"))
    CodeArtifacts.type = Types::CodeArtifacts
    CodeCommitRepository.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CodeCommitRepository.type = Types::CodeCommitRepository
    CodeReview.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "Name"))
    CodeReview.add_member(:code_review_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CodeReviewArn"))
    CodeReview.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "RepositoryName"))
    CodeReview.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, location_name: "Owner"))
    CodeReview.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, location_name: "ProviderType"))
    CodeReview.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: JobState, location_name: "State"))
    CodeReview.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, location_name: "StateReason"))
    CodeReview.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "CreatedTimeStamp"))
    CodeReview.add_member(:last_updated_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "LastUpdatedTimeStamp"))
    CodeReview.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, location_name: "Type"))
    CodeReview.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, location_name: "PullRequestId"))
    CodeReview.add_member(:source_code_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCodeType, location_name: "SourceCodeType"))
    CodeReview.add_member(:association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationArn, location_name: "AssociationArn"))
    CodeReview.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: Metrics, location_name: "Metrics"))
    CodeReview.add_member(:analysis_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTypes, location_name: "AnalysisTypes"))
    CodeReview.add_member(:config_file_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigFileState, location_name: "ConfigFileState"))
    CodeReview.type = Types::CodeReview
    CodeReviewSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewSummary)
    CodeReviewSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "Name"))
    CodeReviewSummary.add_member(:code_review_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CodeReviewArn"))
    CodeReviewSummary.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "RepositoryName"))
    CodeReviewSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, location_name: "Owner"))
    CodeReviewSummary.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, location_name: "ProviderType"))
    CodeReviewSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: JobState, location_name: "State"))
    CodeReviewSummary.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "CreatedTimeStamp"))
    CodeReviewSummary.add_member(:last_updated_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "LastUpdatedTimeStamp"))
    CodeReviewSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, location_name: "Type"))
    CodeReviewSummary.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, location_name: "PullRequestId"))
    CodeReviewSummary.add_member(:metrics_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsSummary, location_name: "MetricsSummary"))
    CodeReviewSummary.add_member(:source_code_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCodeType, location_name: "SourceCodeType"))
    CodeReviewSummary.type = Types::CodeReviewSummary
    CodeReviewType.add_member(:repository_analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryAnalysis, location_name: "RepositoryAnalysis", traits: {"smithy.api#required" => {}}))
    CodeReviewType.add_member(:analysis_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisTypes, location_name: "AnalysisTypes"))
    CodeReviewType.type = Types::CodeReviewType
    CommitDiffSourceCodeType.add_member(:source_commit, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, location_name: "SourceCommit"))
    CommitDiffSourceCodeType.add_member(:destination_commit, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, location_name: "DestinationCommit"))
    CommitDiffSourceCodeType.add_member(:merge_base_commit, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, location_name: "MergeBaseCommit"))
    CommitDiffSourceCodeType.type = Types::CommitDiffSourceCodeType
    ConfigFileState.add_member(:present, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRESENT", traits: {"smithy.api#enumValue" => "Present"}))
    ConfigFileState.add_member(:absent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ABSENT", traits: {"smithy.api#enumValue" => "Absent"}))
    ConfigFileState.add_member(:present_with_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRESENT_WITH_ERRORS", traits: {"smithy.api#enumValue" => "PresentWithErrors"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ConflictException.type = Types::ConflictException
    CreateCodeReviewRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateCodeReviewRequest.add_member(:repository_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationArn, location_name: "RepositoryAssociationArn", traits: {"smithy.api#required" => {}}))
    CreateCodeReviewRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    CreateCodeReviewRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateCodeReviewRequest.type = Types::CreateCodeReviewRequest
    CreateCodeReviewResponse.add_member(:code_review, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReview, location_name: "CodeReview"))
    CreateCodeReviewResponse.type = Types::CreateCodeReviewResponse
    DescribeCodeReviewRequest.add_member(:code_review_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CodeReviewArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeCodeReviewRequest.type = Types::DescribeCodeReviewRequest
    DescribeCodeReviewResponse.add_member(:code_review, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReview, location_name: "CodeReview"))
    DescribeCodeReviewResponse.type = Types::DescribeCodeReviewResponse
    DescribeRecommendationFeedbackRequest.add_member(:code_review_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CodeReviewArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRecommendationFeedbackRequest.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId, location_name: "RecommendationId", traits: {"smithy.api#httpQuery" => "RecommendationId", "smithy.api#required" => {}}))
    DescribeRecommendationFeedbackRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, location_name: "UserId", traits: {"smithy.api#httpQuery" => "UserId"}))
    DescribeRecommendationFeedbackRequest.type = Types::DescribeRecommendationFeedbackRequest
    DescribeRecommendationFeedbackResponse.add_member(:recommendation_feedback, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationFeedback, location_name: "RecommendationFeedback"))
    DescribeRecommendationFeedbackResponse.type = Types::DescribeRecommendationFeedbackResponse
    DescribeRepositoryAssociationRequest.add_member(:association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationArn, location_name: "AssociationArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeRepositoryAssociationRequest.type = Types::DescribeRepositoryAssociationRequest
    DescribeRepositoryAssociationResponse.add_member(:repository_association, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryAssociation, location_name: "RepositoryAssociation"))
    DescribeRepositoryAssociationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    DescribeRepositoryAssociationResponse.type = Types::DescribeRepositoryAssociationResponse
    DisassociateRepositoryRequest.add_member(:association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationArn, location_name: "AssociationArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateRepositoryRequest.type = Types::DisassociateRepositoryRequest
    DisassociateRepositoryResponse.add_member(:repository_association, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryAssociation, location_name: "RepositoryAssociation"))
    DisassociateRepositoryResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    DisassociateRepositoryResponse.type = Types::DisassociateRepositoryResponse
    EncryptionOption.add_member(:ao_cmk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AoCmk", traits: {"smithy.api#enumValue" => "AWS_OWNED_CMK"}))
    EncryptionOption.add_member(:cm_cmk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CmCmk", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_CMK"}))
    EventInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventName, location_name: "Name"))
    EventInfo.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: EventState, location_name: "State"))
    EventInfo.type = Types::EventInfo
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InternalServerException.type = Types::InternalServerException
    JobState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "Completed"}))
    JobState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "Pending"}))
    JobState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    JobState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    JobStates.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobState)
    KMSKeyDetails.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyId, location_name: "KMSKeyId"))
    KMSKeyDetails.add_member(:encryption_option, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionOption, location_name: "EncryptionOption"))
    KMSKeyDetails.type = Types::KMSKeyDetails
    ListCodeReviewsRequest.add_member(:provider_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderTypes, location_name: "ProviderTypes", traits: {"smithy.api#httpQuery" => "ProviderTypes"}))
    ListCodeReviewsRequest.add_member(:states, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStates, location_name: "States", traits: {"smithy.api#httpQuery" => "States"}))
    ListCodeReviewsRequest.add_member(:repository_names, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryNames, location_name: "RepositoryNames", traits: {"smithy.api#httpQuery" => "RepositoryNames"}))
    ListCodeReviewsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, location_name: "Type", traits: {"smithy.api#httpQuery" => "Type", "smithy.api#required" => {}}))
    ListCodeReviewsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCodeReviewsMaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListCodeReviewsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListCodeReviewsRequest.type = Types::ListCodeReviewsRequest
    ListCodeReviewsResponse.add_member(:code_review_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewSummaries, location_name: "CodeReviewSummaries"))
    ListCodeReviewsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListCodeReviewsResponse.type = Types::ListCodeReviewsResponse
    ListRecommendationFeedbackRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListRecommendationFeedbackRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListRecommendationFeedbackRequest.add_member(:code_review_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CodeReviewArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecommendationFeedbackRequest.add_member(:user_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: UserIds, location_name: "UserIds", traits: {"smithy.api#httpQuery" => "UserIds"}))
    ListRecommendationFeedbackRequest.add_member(:recommendation_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationIds, location_name: "RecommendationIds", traits: {"smithy.api#httpQuery" => "RecommendationIds"}))
    ListRecommendationFeedbackRequest.type = Types::ListRecommendationFeedbackRequest
    ListRecommendationFeedbackResponse.add_member(:recommendation_feedback_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationFeedbackSummaries, location_name: "RecommendationFeedbackSummaries"))
    ListRecommendationFeedbackResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListRecommendationFeedbackResponse.type = Types::ListRecommendationFeedbackResponse
    ListRecommendationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListRecommendationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRecommendationsMaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListRecommendationsRequest.add_member(:code_review_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CodeReviewArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRecommendationsRequest.type = Types::ListRecommendationsRequest
    ListRecommendationsResponse.add_member(:recommendation_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSummaries, location_name: "RecommendationSummaries"))
    ListRecommendationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListRecommendationsResponse.type = Types::ListRecommendationsResponse
    ListRepositoryAssociationsRequest.add_member(:provider_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderTypes, location_name: "ProviderTypes", traits: {"smithy.api#httpQuery" => "ProviderType"}))
    ListRepositoryAssociationsRequest.add_member(:states, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryAssociationStates, location_name: "States", traits: {"smithy.api#httpQuery" => "State"}))
    ListRepositoryAssociationsRequest.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: Names, location_name: "Names", traits: {"smithy.api#httpQuery" => "Name"}))
    ListRepositoryAssociationsRequest.add_member(:owners, ::Smithy::Schema::Shapes::MemberShape.new(target: Owners, location_name: "Owners", traits: {"smithy.api#httpQuery" => "Owner"}))
    ListRepositoryAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListRepositoryAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListRepositoryAssociationsRequest.type = Types::ListRepositoryAssociationsRequest
    ListRepositoryAssociationsResponse.add_member(:repository_association_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryAssociationSummaries, location_name: "RepositoryAssociationSummaries"))
    ListRepositoryAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListRepositoryAssociationsResponse.type = Types::ListRepositoryAssociationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Metrics.add_member(:metered_lines_of_code_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LinesOfCodeCount, location_name: "MeteredLinesOfCodeCount"))
    Metrics.add_member(:suppressed_lines_of_code_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LinesOfCodeCount, location_name: "SuppressedLinesOfCodeCount"))
    Metrics.add_member(:findings_count, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingsCount, location_name: "FindingsCount"))
    Metrics.type = Types::Metrics
    MetricsSummary.add_member(:metered_lines_of_code_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LinesOfCodeCount, location_name: "MeteredLinesOfCodeCount"))
    MetricsSummary.add_member(:suppressed_lines_of_code_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LinesOfCodeCount, location_name: "SuppressedLinesOfCodeCount"))
    MetricsSummary.add_member(:findings_count, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingsCount, location_name: "FindingsCount"))
    MetricsSummary.type = Types::MetricsSummary
    Names.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Name)
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    NotFoundException.type = Types::NotFoundException
    Owners.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Owner)
    ProviderType.add_member(:code_commit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CODE_COMMIT", traits: {"smithy.api#enumValue" => "CodeCommit"}))
    ProviderType.add_member(:git_hub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GIT_HUB", traits: {"smithy.api#enumValue" => "GitHub"}))
    ProviderType.add_member(:bitbucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BITBUCKET", traits: {"smithy.api#enumValue" => "Bitbucket"}))
    ProviderType.add_member(:git_hub_enterprise_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GIT_HUB_ENTERPRISE_SERVER", traits: {"smithy.api#enumValue" => "GitHubEnterpriseServer"}))
    ProviderType.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3_BUCKET", traits: {"smithy.api#enumValue" => "S3Bucket"}))
    ProviderTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType)
    PutRecommendationFeedbackRequest.add_member(:code_review_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CodeReviewArn", traits: {"smithy.api#required" => {}}))
    PutRecommendationFeedbackRequest.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId, location_name: "RecommendationId", traits: {"smithy.api#required" => {}}))
    PutRecommendationFeedbackRequest.add_member(:reactions, ::Smithy::Schema::Shapes::MemberShape.new(target: Reactions, location_name: "Reactions", traits: {"smithy.api#required" => {}}))
    PutRecommendationFeedbackRequest.type = Types::PutRecommendationFeedbackRequest
    PutRecommendationFeedbackResponse.type = Types::PutRecommendationFeedbackResponse
    Reaction.add_member(:thumbs_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "THUMBS_UP", traits: {"smithy.api#enumValue" => "ThumbsUp"}))
    Reaction.add_member(:thumbs_down, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "THUMBS_DOWN", traits: {"smithy.api#enumValue" => "ThumbsDown"}))
    Reactions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Reaction)
    RecommendationCategory.add_member(:aws_best_practices, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_BEST_PRACTICES", traits: {"smithy.api#enumValue" => "AWSBestPractices"}))
    RecommendationCategory.add_member(:aws_cloudformation_issues, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_CLOUDFORMATION_ISSUES", traits: {"smithy.api#enumValue" => "AWSCloudFormationIssues"}))
    RecommendationCategory.add_member(:duplicate_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DUPLICATE_CODE", traits: {"smithy.api#enumValue" => "DuplicateCode"}))
    RecommendationCategory.add_member(:code_maintenance_issues, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CODE_MAINTENANCE_ISSUES", traits: {"smithy.api#enumValue" => "CodeMaintenanceIssues"}))
    RecommendationCategory.add_member(:concurrency_issues, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONCURRENCY_ISSUES", traits: {"smithy.api#enumValue" => "ConcurrencyIssues"}))
    RecommendationCategory.add_member(:input_validations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INPUT_VALIDATIONS", traits: {"smithy.api#enumValue" => "InputValidations"}))
    RecommendationCategory.add_member(:python_best_practices, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PYTHON_BEST_PRACTICES", traits: {"smithy.api#enumValue" => "PythonBestPractices"}))
    RecommendationCategory.add_member(:java_best_practices, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JAVA_BEST_PRACTICES", traits: {"smithy.api#enumValue" => "JavaBestPractices"}))
    RecommendationCategory.add_member(:resource_leaks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE_LEAKS", traits: {"smithy.api#enumValue" => "ResourceLeaks"}))
    RecommendationCategory.add_member(:security_issues, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SECURITY_ISSUES", traits: {"smithy.api#enumValue" => "SecurityIssues"}))
    RecommendationCategory.add_member(:code_inconsistencies, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CODE_INCONSISTENCIES", traits: {"smithy.api#enumValue" => "CodeInconsistencies"}))
    RecommendationFeedback.add_member(:code_review_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "CodeReviewArn"))
    RecommendationFeedback.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId, location_name: "RecommendationId"))
    RecommendationFeedback.add_member(:reactions, ::Smithy::Schema::Shapes::MemberShape.new(target: Reactions, location_name: "Reactions"))
    RecommendationFeedback.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, location_name: "UserId"))
    RecommendationFeedback.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "CreatedTimeStamp"))
    RecommendationFeedback.add_member(:last_updated_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "LastUpdatedTimeStamp"))
    RecommendationFeedback.type = Types::RecommendationFeedback
    RecommendationFeedbackSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationFeedbackSummary)
    RecommendationFeedbackSummary.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId, location_name: "RecommendationId"))
    RecommendationFeedbackSummary.add_member(:reactions, ::Smithy::Schema::Shapes::MemberShape.new(target: Reactions, location_name: "Reactions"))
    RecommendationFeedbackSummary.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, location_name: "UserId"))
    RecommendationFeedbackSummary.type = Types::RecommendationFeedbackSummary
    RecommendationIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId)
    RecommendationSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSummary)
    RecommendationSummary.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePath, location_name: "FilePath"))
    RecommendationSummary.add_member(:recommendation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationId, location_name: "RecommendationId"))
    RecommendationSummary.add_member(:start_line, ::Smithy::Schema::Shapes::MemberShape.new(target: LineNumber, location_name: "StartLine"))
    RecommendationSummary.add_member(:end_line, ::Smithy::Schema::Shapes::MemberShape.new(target: LineNumber, location_name: "EndLine"))
    RecommendationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, location_name: "Description"))
    RecommendationSummary.add_member(:recommendation_category, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationCategory, location_name: "RecommendationCategory"))
    RecommendationSummary.add_member(:rule_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleMetadata, location_name: "RuleMetadata"))
    RecommendationSummary.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: Severity, location_name: "Severity"))
    RecommendationSummary.type = Types::RecommendationSummary
    Repository.add_member(:code_commit, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeCommitRepository, location_name: "CodeCommit"))
    Repository.add_member(:bitbucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartySourceRepository, location_name: "Bitbucket"))
    Repository.add_member(:git_hub_enterprise_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ThirdPartySourceRepository, location_name: "GitHubEnterpriseServer"))
    Repository.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Repository, location_name: "S3Bucket"))
    Repository.type = Types::Repository
    RepositoryAnalysis.add_member(:repository_head, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryHeadSourceCodeType, location_name: "RepositoryHead"))
    RepositoryAnalysis.add_member(:source_code_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCodeType, location_name: "SourceCodeType"))
    RepositoryAnalysis.type = Types::RepositoryAnalysis
    RepositoryAssociation.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, location_name: "AssociationId"))
    RepositoryAssociation.add_member(:association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "AssociationArn"))
    RepositoryAssociation.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, location_name: "ConnectionArn"))
    RepositoryAssociation.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "Name"))
    RepositoryAssociation.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, location_name: "Owner"))
    RepositoryAssociation.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, location_name: "ProviderType"))
    RepositoryAssociation.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryAssociationState, location_name: "State"))
    RepositoryAssociation.add_member(:state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StateReason, location_name: "StateReason"))
    RepositoryAssociation.add_member(:last_updated_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "LastUpdatedTimeStamp"))
    RepositoryAssociation.add_member(:created_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "CreatedTimeStamp"))
    RepositoryAssociation.add_member(:kms_key_details, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSKeyDetails, location_name: "KMSKeyDetails"))
    RepositoryAssociation.add_member(:s3_repository_details, ::Smithy::Schema::Shapes::MemberShape.new(target: S3RepositoryDetails, location_name: "S3RepositoryDetails"))
    RepositoryAssociation.type = Types::RepositoryAssociation
    RepositoryAssociationState.add_member(:associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATED", traits: {"smithy.api#enumValue" => "Associated"}))
    RepositoryAssociationState.add_member(:associating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATING", traits: {"smithy.api#enumValue" => "Associating"}))
    RepositoryAssociationState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    RepositoryAssociationState.add_member(:disassociating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISASSOCIATING", traits: {"smithy.api#enumValue" => "Disassociating"}))
    RepositoryAssociationState.add_member(:disassociated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISASSOCIATED", traits: {"smithy.api#enumValue" => "Disassociated"}))
    RepositoryAssociationStates.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryAssociationState)
    RepositoryAssociationSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryAssociationSummary)
    RepositoryAssociationSummary.add_member(:association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "AssociationArn"))
    RepositoryAssociationSummary.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, location_name: "ConnectionArn"))
    RepositoryAssociationSummary.add_member(:last_updated_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, location_name: "LastUpdatedTimeStamp"))
    RepositoryAssociationSummary.add_member(:association_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationId, location_name: "AssociationId"))
    RepositoryAssociationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "Name"))
    RepositoryAssociationSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, location_name: "Owner"))
    RepositoryAssociationSummary.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, location_name: "ProviderType"))
    RepositoryAssociationSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryAssociationState, location_name: "State"))
    RepositoryAssociationSummary.type = Types::RepositoryAssociationSummary
    RepositoryHeadSourceCodeType.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "BranchName", traits: {"smithy.api#required" => {}}))
    RepositoryHeadSourceCodeType.type = Types::RepositoryHeadSourceCodeType
    RepositoryNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Name)
    RequestMetadata.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, location_name: "RequestId"))
    RequestMetadata.add_member(:requester, ::Smithy::Schema::Shapes::MemberShape.new(target: Requester, location_name: "Requester"))
    RequestMetadata.add_member(:event_info, ::Smithy::Schema::Shapes::MemberShape.new(target: EventInfo, location_name: "EventInfo"))
    RequestMetadata.add_member(:vendor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VendorName, location_name: "VendorName"))
    RequestMetadata.type = Types::RequestMetadata
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RuleMetadata.add_member(:rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleId, location_name: "RuleId"))
    RuleMetadata.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleName, location_name: "RuleName"))
    RuleMetadata.add_member(:short_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ShortDescription, location_name: "ShortDescription"))
    RuleMetadata.add_member(:long_description, ::Smithy::Schema::Shapes::MemberShape.new(target: LongDescription, location_name: "LongDescription"))
    RuleMetadata.add_member(:rule_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleTags, location_name: "RuleTags"))
    RuleMetadata.type = Types::RuleMetadata
    RuleTags.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RuleTag)
    S3BucketRepository.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "Name", traits: {"smithy.api#required" => {}}))
    S3BucketRepository.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: S3RepositoryDetails, location_name: "Details"))
    S3BucketRepository.type = Types::S3BucketRepository
    S3Repository.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "Name", traits: {"smithy.api#required" => {}}))
    S3Repository.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, location_name: "BucketName", traits: {"smithy.api#required" => {}}))
    S3Repository.type = Types::S3Repository
    S3RepositoryDetails.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketName, location_name: "BucketName"))
    S3RepositoryDetails.add_member(:code_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeArtifacts, location_name: "CodeArtifacts"))
    S3RepositoryDetails.type = Types::S3RepositoryDetails
    Severity.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INFO", traits: {"smithy.api#enumValue" => "Info"}))
    Severity.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOW", traits: {"smithy.api#enumValue" => "Low"}))
    Severity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MEDIUM", traits: {"smithy.api#enumValue" => "Medium"}))
    Severity.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIGH", traits: {"smithy.api#enumValue" => "High"}))
    Severity.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CRITICAL", traits: {"smithy.api#enumValue" => "Critical"}))
    SourceCodeType.add_member(:commit_diff, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitDiffSourceCodeType, location_name: "CommitDiff"))
    SourceCodeType.add_member(:repository_head, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryHeadSourceCodeType, location_name: "RepositoryHead"))
    SourceCodeType.add_member(:branch_diff, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchDiffSourceCodeType, location_name: "BranchDiff"))
    SourceCodeType.add_member(:s3_bucket_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketRepository, location_name: "S3BucketRepository"))
    SourceCodeType.add_member(:request_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestMetadata, location_name: "RequestMetadata"))
    SourceCodeType.type = Types::SourceCodeType
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThirdPartySourceRepository.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ThirdPartySourceRepository.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, location_name: "ConnectionArn", traits: {"smithy.api#required" => {}}))
    ThirdPartySourceRepository.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, location_name: "Owner", traits: {"smithy.api#required" => {}}))
    ThirdPartySourceRepository.type = Types::ThirdPartySourceRepository
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    Type.add_member(:pull_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PULL_REQUEST", traits: {"smithy.api#enumValue" => "PullRequest"}))
    Type.add_member(:repository_analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPOSITORY_ANALYSIS", traits: {"smithy.api#enumValue" => "RepositoryAnalysis"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociationArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UserIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UserId)
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ValidationException.type = Types::ValidationException
    VendorName.add_member(:github, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITHUB", traits: {"smithy.api#enumValue" => "GitHub"}))
    VendorName.add_member(:gitlab, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITLAB", traits: {"smithy.api#enumValue" => "GitLab"}))
    VendorName.add_member(:native_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NATIVE_S3", traits: {"smithy.api#enumValue" => "NativeS3"}))

    AWSGuruFrontendService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codegurureviewer#AWSGuruFrontendService"
      service.name = "AWSGuruFrontendService"
      service.version = "2019-09-19"
      service.traits = {"aws.api#service" => {"sdkId" => "CodeGuru Reviewer", "arnNamespace" => "codeguru-reviewer", "cloudFormationName" => "CodeGuruReviewer", "cloudTrailEventSource" => "codeguru-reviewer.amazonaws.com", "endpointPrefix" => "codeguru-reviewer"}, "aws.auth#sigv4" => {"name" => "codeguru-reviewer"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon CodeGuru Reviewer"}
      service.add_operation(:associate_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurureviewer#AssociateRepository"
        operation.name = "AssociateRepository"
        operation.input = AssociateRepositoryRequest
        operation.output = AssociateRepositoryResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/associations", "code" => 200}}
      end)
      service.add_operation(:create_code_review, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurureviewer#CreateCodeReview"
        operation.name = "CreateCodeReview"
        operation.input = CreateCodeReviewRequest
        operation.output = CreateCodeReviewResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/codereviews", "code" => 200}}
      end)
      service.add_operation(:describe_code_review, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurureviewer#DescribeCodeReview"
        operation.name = "DescribeCodeReview"
        operation.input = DescribeCodeReviewRequest
        operation.output = DescribeCodeReviewResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/codereviews/{CodeReviewArn}", "code" => 200}}
      end)
      service.add_operation(:describe_recommendation_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurureviewer#DescribeRecommendationFeedback"
        operation.name = "DescribeRecommendationFeedback"
        operation.input = DescribeRecommendationFeedbackRequest
        operation.output = DescribeRecommendationFeedbackResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/feedback/{CodeReviewArn}", "code" => 200}}
      end)
      service.add_operation(:describe_repository_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurureviewer#DescribeRepositoryAssociation"
        operation.name = "DescribeRepositoryAssociation"
        operation.input = DescribeRepositoryAssociationRequest
        operation.output = DescribeRepositoryAssociationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/associations/{AssociationArn}", "code" => 200}}
      end)
      service.add_operation(:disassociate_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurureviewer#DisassociateRepository"
        operation.name = "DisassociateRepository"
        operation.input = DisassociateRepositoryRequest
        operation.output = DisassociateRepositoryResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << NotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/associations/{AssociationArn}", "code" => 200}}
      end)
      service.add_operation(:list_code_reviews, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurureviewer#ListCodeReviews"
        operation.name = "ListCodeReviews"
        operation.input = ListCodeReviewsRequest
        operation.output = ListCodeReviewsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/codereviews", "code" => 200}}
        operation[:paginator] = Paginators::ListCodeReviews.new
      end)
      service.add_operation(:list_recommendation_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurureviewer#ListRecommendationFeedback"
        operation.name = "ListRecommendationFeedback"
        operation.input = ListRecommendationFeedbackRequest
        operation.output = ListRecommendationFeedbackResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/feedback/{CodeReviewArn}/RecommendationFeedback", "code" => 200}}
        operation[:paginator] = Paginators::ListRecommendationFeedback.new
      end)
      service.add_operation(:list_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurureviewer#ListRecommendations"
        operation.name = "ListRecommendations"
        operation.input = ListRecommendationsRequest
        operation.output = ListRecommendationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/codereviews/{CodeReviewArn}/Recommendations", "code" => 200}}
        operation[:paginator] = Paginators::ListRecommendations.new
      end)
      service.add_operation(:list_repository_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurureviewer#ListRepositoryAssociations"
        operation.name = "ListRepositoryAssociations"
        operation.input = ListRepositoryAssociationsRequest
        operation.output = ListRepositoryAssociationsResponse
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/associations", "code" => 200}}
        operation[:paginator] = Paginators::ListRepositoryAssociations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurureviewer#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:put_recommendation_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurureviewer#PutRecommendationFeedback"
        operation.name = "PutRecommendationFeedback"
        operation.input = PutRecommendationFeedbackRequest
        operation.output = PutRecommendationFeedbackResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/feedback", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurureviewer#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codegurureviewer#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
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
