# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeGuruReviewer
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateRepositoryRequest
    #   data as a hash:
    #
    #       {
    #         repository: { # required
    #           code_commit: {
    #             name: "Name", # required
    #           },
    #           bitbucket: {
    #             name: "Name", # required
    #             connection_arn: "ConnectionArn", # required
    #             owner: "Owner", # required
    #           },
    #         },
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] repository
    #   The repository to associate.
    #   @return [Types::Repository]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   To add a new repository association, this parameter specifies a
    #   unique identifier for the new repository association that helps
    #   ensure idempotency.
    #
    #   If you use the AWS CLI or one of the AWS SDKs to call this
    #   operation, you can leave this parameter empty. The CLI or SDK
    #   generates a random UUID for you and includes that in the request. If
    #   you don't use the SDK and instead generate a raw HTTP request to
    #   the Secrets Manager service endpoint, you must generate a
    #   ClientRequestToken yourself for new versions and include that value
    #   in the request.
    #
    #   You typically interact with this value if you implement your own
    #   retry logic and want to ensure that a given repository association
    #   is not created twice. We recommend that you generate a UUID-type
    #   value to ensure uniqueness within the specified repository
    #   association.
    #
    #   Amazon CodeGuru Reviewer uses this value to prevent the accidental
    #   creation of duplicate repository associations if there are failures
    #   and retries.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/AssociateRepositoryRequest AWS API Documentation
    #
    class AssociateRepositoryRequest < Struct.new(
      :repository,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_association
    #   Information about the repository association.
    #   @return [Types::RepositoryAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/AssociateRepositoryResponse AWS API Documentation
    #
    class AssociateRepositoryResponse < Struct.new(
      :repository_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an AWS CodeCommit repository.
    #
    # @note When making an API call, you may pass CodeCommitRepository
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the AWS CodeCommit repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/CodeCommitRepository AWS API Documentation
    #
    class CodeCommitRepository < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a code review.
    #
    # @!attribute [rw] name
    #   The name of the code review.
    #   @return [String]
    #
    # @!attribute [rw] code_review_arn
    #   The Amazon Resource Name (ARN) of the code review to describe.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the repository.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The provider type of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the code review.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the state of the code review.
    #   @return [String]
    #
    # @!attribute [rw] created_time_stamp
    #   The time, in milliseconds since the epoch, when the code review was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time_stamp
    #   The time, in milliseconds since the epoch, when the code review was
    #   last updated.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of code review.
    #   @return [String]
    #
    # @!attribute [rw] pull_request_id
    #   The pull request ID for the code review.
    #   @return [String]
    #
    # @!attribute [rw] source_code_type
    #   The type of the source code for the code review.
    #   @return [Types::SourceCodeType]
    #
    # @!attribute [rw] metrics
    #   The statistics from the code review.
    #   @return [Types::Metrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/CodeReview AWS API Documentation
    #
    class CodeReview < Struct.new(
      :name,
      :code_review_arn,
      :repository_name,
      :owner,
      :provider_type,
      :state,
      :state_reason,
      :created_time_stamp,
      :last_updated_time_stamp,
      :type,
      :pull_request_id,
      :source_code_type,
      :metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the summary of the code review.
    #
    # @!attribute [rw] name
    #   The name of the code review.
    #   @return [String]
    #
    # @!attribute [rw] code_review_arn
    #   The Amazon Resource Name (ARN) of the code review to describe.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the repository.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The provider type of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the code review.
    #   @return [String]
    #
    # @!attribute [rw] created_time_stamp
    #   The time, in milliseconds since the epoch, when the code review was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time_stamp
    #   The time, in milliseconds since the epoch, when the code review was
    #   last updated.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of the code review.
    #   @return [String]
    #
    # @!attribute [rw] pull_request_id
    #   The pull request ID for the code review.
    #   @return [String]
    #
    # @!attribute [rw] metrics_summary
    #   The statistics from the code review.
    #   @return [Types::MetricsSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/CodeReviewSummary AWS API Documentation
    #
    class CodeReviewSummary < Struct.new(
      :name,
      :code_review_arn,
      :repository_name,
      :owner,
      :provider_type,
      :state,
      :created_time_stamp,
      :last_updated_time_stamp,
      :type,
      :pull_request_id,
      :metrics_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The commit diff for the pull request.
    #
    # @!attribute [rw] source_commit
    #   Source Commit SHA.
    #   @return [String]
    #
    # @!attribute [rw] destination_commit
    #   Destination Commit SHA
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/CommitDiffSourceCodeType AWS API Documentation
    #
    class CommitDiffSourceCodeType < Struct.new(
      :source_commit,
      :destination_commit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation would cause a conflict with the current state
    # of a service resource associated with the request. Resolve the
    # conflict before retrying this request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCodeReviewRequest
    #   data as a hash:
    #
    #       {
    #         code_review_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] code_review_arn
    #   The Amazon Resource Name (ARN) of the code review to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DescribeCodeReviewRequest AWS API Documentation
    #
    class DescribeCodeReviewRequest < Struct.new(
      :code_review_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_review
    #   Information about the code review.
    #   @return [Types::CodeReview]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DescribeCodeReviewResponse AWS API Documentation
    #
    class DescribeCodeReviewResponse < Struct.new(
      :code_review)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRecommendationFeedbackRequest
    #   data as a hash:
    #
    #       {
    #         code_review_arn: "Arn", # required
    #         recommendation_id: "RecommendationId", # required
    #         user_id: "UserId",
    #       }
    #
    # @!attribute [rw] code_review_arn
    #   The Amazon Resource Name (ARN) that identifies the code review.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_id
    #   The recommendation ID that can be used to track the provided
    #   recommendations and then to collect the feedback.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   Optional parameter to describe the feedback for a given user. If
    #   this is not supplied, it defaults to the user making the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DescribeRecommendationFeedbackRequest AWS API Documentation
    #
    class DescribeRecommendationFeedbackRequest < Struct.new(
      :code_review_arn,
      :recommendation_id,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_feedback
    #   The recommendation feedback given by the user.
    #   @return [Types::RecommendationFeedback]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DescribeRecommendationFeedbackResponse AWS API Documentation
    #
    class DescribeRecommendationFeedbackResponse < Struct.new(
      :recommendation_feedback)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRepositoryAssociationRequest
    #   data as a hash:
    #
    #       {
    #         association_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) identifying the association. You can
    #   retrieve this ARN by calling `ListRepositories`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DescribeRepositoryAssociationRequest AWS API Documentation
    #
    class DescribeRepositoryAssociationRequest < Struct.new(
      :association_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_association
    #   Information about the repository association.
    #   @return [Types::RepositoryAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DescribeRepositoryAssociationResponse AWS API Documentation
    #
    class DescribeRepositoryAssociationResponse < Struct.new(
      :repository_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateRepositoryRequest
    #   data as a hash:
    #
    #       {
    #         association_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) identifying the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DisassociateRepositoryRequest AWS API Documentation
    #
    class DisassociateRepositoryRequest < Struct.new(
      :association_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_association
    #   Information about the disassociated repository.
    #   @return [Types::RepositoryAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DisassociateRepositoryResponse AWS API Documentation
    #
    class DisassociateRepositoryResponse < Struct.new(
      :repository_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # The server encountered an internal error and is unable to complete the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCodeReviewsRequest
    #   data as a hash:
    #
    #       {
    #         provider_types: ["CodeCommit"], # accepts CodeCommit, GitHub, Bitbucket
    #         states: ["Completed"], # accepts Completed, Pending, Failed, Deleting
    #         repository_names: ["Name"],
    #         type: "PullRequest", # required, accepts PullRequest
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] provider_types
    #   List of provider types for filtering that needs to be applied before
    #   displaying the result. For example, "providerTypes=\[GitHub\]"
    #   will list code reviews from GitHub.
    #   @return [Array<String>]
    #
    # @!attribute [rw] states
    #   List of states for filtering that needs to be applied before
    #   displaying the result. For example, "states=\[Pending\]" will list
    #   code reviews in the Pending state.
    #   @return [Array<String>]
    #
    # @!attribute [rw] repository_names
    #   List of repository names for filtering that needs to be applied
    #   before displaying the result.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of code reviews to list in the response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. The
    #   default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If nextToken is returned, there are more results available. The
    #   value of nextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListCodeReviewsRequest AWS API Documentation
    #
    class ListCodeReviewsRequest < Struct.new(
      :provider_types,
      :states,
      :repository_names,
      :type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_review_summaries
    #   A list of code reviews that meet the criteria of the request.
    #   @return [Array<Types::CodeReviewSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListCodeReviewsResponse AWS API Documentation
    #
    class ListCodeReviewsResponse < Struct.new(
      :code_review_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRecommendationFeedbackRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         code_review_arn: "Arn", # required
    #         user_ids: ["UserId"],
    #         recommendation_ids: ["RecommendationId"],
    #       }
    #
    # @!attribute [rw] next_token
    #   If nextToken is returned, there are more results available. The
    #   value of nextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. The
    #   default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] code_review_arn
    #   The Amazon Resource Name (ARN) that identifies the code review.
    #   @return [String]
    #
    # @!attribute [rw] user_ids
    #   Filter on userIds that need to be applied before displaying the
    #   result. This can be used to query all the recommendation feedback
    #   for a code review from a given user.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recommendation_ids
    #   Filter on recommendationIds that need to be applied before
    #   displaying the result. This can be used to query all the
    #   recommendation feedback for a given recommendation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListRecommendationFeedbackRequest AWS API Documentation
    #
    class ListRecommendationFeedbackRequest < Struct.new(
      :next_token,
      :max_results,
      :code_review_arn,
      :user_ids,
      :recommendation_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_feedback_summaries
    #   Recommendation feedback summaries corresponding to the code reivew
    #   ARN.
    #   @return [Array<Types::RecommendationFeedbackSummary>]
    #
    # @!attribute [rw] next_token
    #   If nextToken is returned, there are more results available. The
    #   value of nextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListRecommendationFeedbackResponse AWS API Documentation
    #
    class ListRecommendationFeedbackResponse < Struct.new(
      :recommendation_feedback_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRecommendationsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         code_review_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. The
    #   default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] code_review_arn
    #   The Amazon Resource Name (ARN) of the code review to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListRecommendationsRequest AWS API Documentation
    #
    class ListRecommendationsRequest < Struct.new(
      :next_token,
      :max_results,
      :code_review_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommendation_summaries
    #   List of recommendations for the requested code review.
    #   @return [Array<Types::RecommendationSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListRecommendationsResponse AWS API Documentation
    #
    class ListRecommendationsResponse < Struct.new(
      :recommendation_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRepositoryAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         provider_types: ["CodeCommit"], # accepts CodeCommit, GitHub, Bitbucket
    #         states: ["Associated"], # accepts Associated, Associating, Failed, Disassociating
    #         names: ["Name"],
    #         owners: ["Owner"],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] provider_types
    #   List of provider types to use as a filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] states
    #   List of states to use as a filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] names
    #   List of repository names to use as a filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] owners
    #   List of owners to use as a filter. For GitHub, this is name of the
    #   GitHub account that was used to associate the repository. For AWS
    #   CodeCommit, it is the name of the CodeCommit account that was used
    #   to associate the repository.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of repository association results returned by
    #   `ListRepositoryAssociations` in paginated output. When this
    #   parameter is used, `ListRepositoryAssociations` only returns
    #   `maxResults` results in a single page with a `nextToken` response
    #   element. The remaining results of the initial request can be seen by
    #   sending another `ListRepositoryAssociations` request with the
    #   returned `nextToken` value. This value can be between 1 and 25. If
    #   this parameter is not used, `ListRepositoryAssociations` returns up
    #   to 25 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous paginated
    #   `ListRepositoryAssociations` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination
    #   continues from the end of the previous results that returned the
    #   `nextToken` value.
    #
    #   <note markdown="1"> Treat this token as an opaque identifier that is only used to
    #   retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListRepositoryAssociationsRequest AWS API Documentation
    #
    class ListRepositoryAssociationsRequest < Struct.new(
      :provider_types,
      :states,
      :names,
      :owners,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_association_summaries
    #   A list of repository associations that meet the criteria of the
    #   request.
    #   @return [Array<Types::RepositoryAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListRecommendations`
    #   request. When the results of a `ListRecommendations` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListRepositoryAssociationsResponse AWS API Documentation
    #
    class ListRepositoryAssociationsResponse < Struct.new(
      :repository_association_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the statistics from the code review.
    #
    # @!attribute [rw] metered_lines_of_code_count
    #   Lines of code metered in the code review.
    #   @return [Integer]
    #
    # @!attribute [rw] findings_count
    #   Total number of recommendations found in the code review.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/Metrics AWS API Documentation
    #
    class Metrics < Struct.new(
      :metered_lines_of_code_count,
      :findings_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about metrics summaries.
    #
    # @!attribute [rw] metered_lines_of_code_count
    #   Lines of code metered in the code review.
    #   @return [Integer]
    #
    # @!attribute [rw] findings_count
    #   Total number of recommendations found in the code review.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/MetricsSummary AWS API Documentation
    #
    class MetricsSummary < Struct.new(
      :metered_lines_of_code_count,
      :findings_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource specified in the request was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutRecommendationFeedbackRequest
    #   data as a hash:
    #
    #       {
    #         code_review_arn: "Arn", # required
    #         recommendation_id: "RecommendationId", # required
    #         reactions: ["ThumbsUp"], # required, accepts ThumbsUp, ThumbsDown
    #       }
    #
    # @!attribute [rw] code_review_arn
    #   The Amazon Resource Name (ARN) that identifies the code review.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_id
    #   The recommendation ID that can be used to track the provided
    #   recommendations and then to collect the feedback.
    #   @return [String]
    #
    # @!attribute [rw] reactions
    #   List for storing reactions. Reactions are utf-8 text code for
    #   emojis. If you send an empty list it clears all your feedback.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/PutRecommendationFeedbackRequest AWS API Documentation
    #
    class PutRecommendationFeedbackRequest < Struct.new(
      :code_review_arn,
      :recommendation_id,
      :reactions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/PutRecommendationFeedbackResponse AWS API Documentation
    #
    class PutRecommendationFeedbackResponse < Aws::EmptyStructure; end

    # Information about the recommendation feedback.
    #
    # @!attribute [rw] code_review_arn
    #   The Amazon Resource Name (ARN) that identifies the code review.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_id
    #   The recommendation ID that can be used to track the provided
    #   recommendations. Later on it can be used to collect the feedback.
    #   @return [String]
    #
    # @!attribute [rw] reactions
    #   List for storing reactions. Reactions are utf-8 text code for
    #   emojis. You can send an empty list to clear off all your feedback.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_id
    #   The user principal that made the API call.
    #   @return [String]
    #
    # @!attribute [rw] created_time_stamp
    #   The time at which the feedback was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time_stamp
    #   The time at which the feedback was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/RecommendationFeedback AWS API Documentation
    #
    class RecommendationFeedback < Struct.new(
      :code_review_arn,
      :recommendation_id,
      :reactions,
      :user_id,
      :created_time_stamp,
      :last_updated_time_stamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about recommendation feedback summaries.
    #
    # @!attribute [rw] recommendation_id
    #   The recommendation ID that can be used to track the provided
    #   recommendations. Later on it can be used to collect the feedback.
    #   @return [String]
    #
    # @!attribute [rw] reactions
    #   List for storing reactions. Reactions are utf-8 text code for
    #   emojis.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_id
    #   The identifier for the user that gave the feedback.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/RecommendationFeedbackSummary AWS API Documentation
    #
    class RecommendationFeedbackSummary < Struct.new(
      :recommendation_id,
      :reactions,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about recommendations.
    #
    # @!attribute [rw] file_path
    #   Name of the file on which a recommendation is provided.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_id
    #   The recommendation ID that can be used to track the provided
    #   recommendations. Later on it can be used to collect the feedback.
    #   @return [String]
    #
    # @!attribute [rw] start_line
    #   Start line from where the recommendation is applicable in the source
    #   commit or source branch.
    #   @return [Integer]
    #
    # @!attribute [rw] end_line
    #   Last line where the recommendation is applicable in the source
    #   commit or source branch. For a single line comment the start line
    #   and end line values will be the same.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the recommendation generated by CodeGuru Reviewer
    #   for the lines of code between the start line and the end line.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/RecommendationSummary AWS API Documentation
    #
    class RecommendationSummary < Struct.new(
      :file_path,
      :recommendation_id,
      :start_line,
      :end_line,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a repository.
    #
    # @note When making an API call, you may pass Repository
    #   data as a hash:
    #
    #       {
    #         code_commit: {
    #           name: "Name", # required
    #         },
    #         bitbucket: {
    #           name: "Name", # required
    #           connection_arn: "ConnectionArn", # required
    #           owner: "Owner", # required
    #         },
    #       }
    #
    # @!attribute [rw] code_commit
    #   Information about an AWS CodeCommit repository.
    #   @return [Types::CodeCommitRepository]
    #
    # @!attribute [rw] bitbucket
    #   Information about a Bitbucket Cloud repository.
    #   @return [Types::ThirdPartySourceRepository]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/Repository AWS API Documentation
    #
    class Repository < Struct.new(
      :code_commit,
      :bitbucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a repository association.
    #
    # @!attribute [rw] association_id
    #   The ID of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) identifying the repository
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) identifying the repository
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the repository.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The provider type of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   A description of why the repository association is in the current
    #   state.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time_stamp
    #   The time, in milliseconds since the epoch, when the repository
    #   association was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] created_time_stamp
    #   The time, in milliseconds since the epoch, when the repository
    #   association was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/RepositoryAssociation AWS API Documentation
    #
    class RepositoryAssociation < Struct.new(
      :association_id,
      :association_arn,
      :connection_arn,
      :name,
      :owner,
      :provider_type,
      :state,
      :state_reason,
      :last_updated_time_stamp,
      :created_time_stamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a repository association.
    #
    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) identifying the repository
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) identifying the repository
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time_stamp
    #   The time, in milliseconds since the epoch, since the repository
    #   association was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] association_id
    #   The repository association ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The provider type of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the repository association.
    #
    #   Associated
    #
    #   : Amazon CodeGuru Reviewer is associated with the repository.
    #
    #   Associating
    #
    #   : The association is in progress.
    #
    #   Failed
    #
    #   : The association failed.
    #
    #   Disassociating
    #
    #   : Amazon CodeGuru Reviewer is in the process of disassociating with
    #     the repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/RepositoryAssociationSummary AWS API Documentation
    #
    class RepositoryAssociationSummary < Struct.new(
      :association_arn,
      :connection_arn,
      :last_updated_time_stamp,
      :association_id,
      :name,
      :owner,
      :provider_type,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource specified in the request was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the source code type.
    #
    # @!attribute [rw] commit_diff
    #   The commit diff for the pull request.
    #   @return [Types::CommitDiffSourceCodeType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/SourceCodeType AWS API Documentation
    #
    class SourceCodeType < Struct.new(
      :commit_diff)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a third party source repository connected through
    # CodeStar Connections.
    #
    # @note When making an API call, you may pass ThirdPartySourceRepository
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         connection_arn: "ConnectionArn", # required
    #         owner: "Owner", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the third party source repository.
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) identifying the repository
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The username of the owner of the repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ThirdPartySourceRepository AWS API Documentation
    #
    class ThirdPartySourceRepository < Struct.new(
      :name,
      :connection_arn,
      :owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the specified constraints.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
