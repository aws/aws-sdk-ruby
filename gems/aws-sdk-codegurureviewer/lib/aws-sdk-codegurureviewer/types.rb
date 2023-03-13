# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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

    # @!attribute [rw] repository
    #   The repository to associate.
    #   @return [Types::Repository]
    #
    # @!attribute [rw] client_request_token
    #   Amazon CodeGuru Reviewer uses this value to prevent the accidental
    #   creation of duplicate repository associations if there are failures
    #   and retries.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs used to tag an associated repository. A
    #   tag is a custom attribute label with two parts:
    #
    #   * A *tag key* (for example, `CostCenter`, `Environment`, `Project`,
    #     or `Secret`). Tag keys are case sensitive.
    #
    #   * An optional field known as a *tag value* (for example,
    #     `111122223333`, `Production`, or a team name). Omitting the tag
    #     value is the same as using an empty string. Like tag keys, tag
    #     values are case sensitive.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_details
    #   A `KMSKeyDetails` object that contains:
    #
    #   * The encryption option for this repository association. It is
    #     either owned by Amazon Web Services Key Management Service (KMS)
    #     (`AWS_OWNED_CMK`) or customer managed (`CUSTOMER_MANAGED_CMK`).
    #
    #   * The ID of the Amazon Web Services KMS key that is associated with
    #     this repository association.
    #   @return [Types::KMSKeyDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/AssociateRepositoryRequest AWS API Documentation
    #
    class AssociateRepositoryRequest < Struct.new(
      :repository,
      :client_request_token,
      :tags,
      :kms_key_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_association
    #   Information about the repository association.
    #   @return [Types::RepositoryAssociation]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs used to tag an associated repository. A
    #   tag is a custom attribute label with two parts:
    #
    #   * A *tag key* (for example, `CostCenter`, `Environment`, `Project`,
    #     or `Secret`). Tag keys are case sensitive.
    #
    #   * An optional field known as a *tag value* (for example,
    #     `111122223333`, `Production`, or a team name). Omitting the tag
    #     value is the same as using an empty string. Like tag keys, tag
    #     values are case sensitive.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/AssociateRepositoryResponse AWS API Documentation
    #
    class AssociateRepositoryResponse < Struct.new(
      :repository_association,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A type of [SourceCodeType][1] that specifies a code diff between a
    # source and destination branch in an associated repository.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType
    #
    # @!attribute [rw] source_branch_name
    #   The source branch for a diff in an associated repository.
    #   @return [String]
    #
    # @!attribute [rw] destination_branch_name
    #   The destination branch for a diff in an associated repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/BranchDiffSourceCodeType AWS API Documentation
    #
    class BranchDiffSourceCodeType < Struct.new(
      :source_branch_name,
      :destination_branch_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Code artifacts are source code artifacts and build artifacts used in a
    # repository analysis or a pull request review.
    #
    # * Source code artifacts are source code files in a Git repository that
    #   are compressed into a .zip file.
    #
    # * Build artifacts are .jar or .class files that are compressed in a
    #   .zip file.
    #
    # @!attribute [rw] source_code_artifacts_object_key
    #   The S3 object key for a source code .zip file. This is required for
    #   all code reviews.
    #   @return [String]
    #
    # @!attribute [rw] build_artifacts_object_key
    #   The S3 object key for a build artifacts .zip file that contains .jar
    #   or .class files. This is required for a code review with security
    #   analysis. For more information, see [Create code reviews with GitHub
    #   Actions][1] in the *Amazon CodeGuru Reviewer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/working-with-cicd.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/CodeArtifacts AWS API Documentation
    #
    class CodeArtifacts < Struct.new(
      :source_code_artifacts_object_key,
      :build_artifacts_object_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon Web Services CodeCommit repository. The
    # CodeCommit repository must be in the same Amazon Web Services Region
    # and Amazon Web Services account where its CodeGuru Reviewer code
    # reviews are configured.
    #
    # @!attribute [rw] name
    #   The name of the Amazon Web Services CodeCommit repository. For more
    #   information, see [repositoryName][1] in the *Amazon Web Services
    #   CodeCommit API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codecommit/latest/APIReference/API_GetRepository.html#CodeCommit-GetRepository-request-repositoryName
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/CodeCommitRepository AWS API Documentation
    #
    class CodeCommitRepository < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a code review. A code review belongs to the
    # associated repository that contains the reviewed code.
    #
    # @!attribute [rw] name
    #   The name of the code review.
    #   @return [String]
    #
    # @!attribute [rw] code_review_arn
    #   The Amazon Resource Name (ARN) of the [CodeReview][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the repository. For an Amazon Web Services CodeCommit
    #   repository, this is the Amazon Web Services account ID of the
    #   account that owns the repository. For a GitHub, GitHub Enterprise
    #   Server, or Bitbucket repository, this is the username for the
    #   account that owns the repository. For an S3 repository, it can be
    #   the username or Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The type of repository that contains the reviewed code (for example,
    #   GitHub or Bitbucket).
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The valid code review states are:
    #
    #   * `Completed`: The code review is complete.
    #
    #   * `Pending`: The code review started and has not completed or
    #     failed.
    #
    #   * `Failed`: The code review failed.
    #
    #   * `Deleting`: The code review is being deleted.
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
    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) of the [RepositoryAssociation][1]
    #   that contains the reviewed source code. You can retrieve associated
    #   repository ARNs by calling [ListRepositoryAssociations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
    #   [2]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   The statistics from the code review.
    #   @return [Types::Metrics]
    #
    # @!attribute [rw] analysis_types
    #   The types of analysis performed during a repository analysis or a
    #   pull request review. You can specify either `Security`,
    #   `CodeQuality`, or both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] config_file_state
    #   The state of the `aws-codeguru-reviewer.yml` configuration file that
    #   allows the configuration of the CodeGuru Reviewer analysis. The file
    #   either exists, doesn't exist, or exists with errors at the root
    #   directory of your repository.
    #   @return [String]
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
      :association_arn,
      :metrics,
      :analysis_types,
      :config_file_state)
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
    #   The Amazon Resource Name (ARN) of the [CodeReview][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the repository. For an Amazon Web Services CodeCommit
    #   repository, this is the Amazon Web Services account ID of the
    #   account that owns the repository. For a GitHub, GitHub Enterprise
    #   Server, or Bitbucket repository, this is the username for the
    #   account that owns the repository. For an S3 repository, it can be
    #   the username or Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The provider type of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the code review.
    #
    #   The valid code review states are:
    #
    #   * `Completed`: The code review is complete.
    #
    #   * `Pending`: The code review started and has not completed or
    #     failed.
    #
    #   * `Failed`: The code review failed.
    #
    #   * `Deleting`: The code review is being deleted.
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
    # @!attribute [rw] source_code_type
    #   Specifies the source code that is analyzed in a code review.
    #   @return [Types::SourceCodeType]
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
      :metrics_summary,
      :source_code_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The type of a code review. There are two code review types:
    #
    # * `PullRequest` - A code review that is automatically triggered by a
    #   pull request on an associated repository.
    #
    # * `RepositoryAnalysis` - A code review that analyzes all code under a
    #   specified branch in an associated repository. The associated
    #   repository is specified using its ARN in [CreateCodeReview][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CreateCodeReview
    #
    # @!attribute [rw] repository_analysis
    #   A code review that analyzes all code under a specified branch in an
    #   associated repository. The associated repository is specified using
    #   its ARN in [CreateCodeReview][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CreateCodeReview
    #   @return [Types::RepositoryAnalysis]
    #
    # @!attribute [rw] analysis_types
    #   They types of analysis performed during a repository analysis or a
    #   pull request review. You can specify either `Security`,
    #   `CodeQuality`, or both.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/CodeReviewType AWS API Documentation
    #
    class CodeReviewType < Struct.new(
      :repository_analysis,
      :analysis_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # A type of [SourceCodeType][1] that specifies the commit diff for a
    # pull request on an associated repository. The `SourceCommit` and
    # `DestinationCommit` fields are required to do a pull request code
    # review.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType
    #
    # @!attribute [rw] source_commit
    #   The SHA of the source commit used to generate a commit diff. This
    #   field is required for a pull request code review.
    #   @return [String]
    #
    # @!attribute [rw] destination_commit
    #   The SHA of the destination commit used to generate a commit diff.
    #   This field is required for a pull request code review.
    #   @return [String]
    #
    # @!attribute [rw] merge_base_commit
    #   The SHA of the merge base of a commit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/CommitDiffSourceCodeType AWS API Documentation
    #
    class CommitDiffSourceCodeType < Struct.new(
      :source_commit,
      :destination_commit,
      :merge_base_commit)
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

    # @!attribute [rw] name
    #   The name of the code review. The name of each code review in your
    #   Amazon Web Services account must be unique.
    #   @return [String]
    #
    # @!attribute [rw] repository_association_arn
    #   The Amazon Resource Name (ARN) of the [RepositoryAssociation][1]
    #   object. You can retrieve this ARN by calling
    #   [ListRepositoryAssociations][2].
    #
    #   A code review can only be created on an associated repository. This
    #   is the ARN of the associated repository.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
    #   [2]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of code review to create. This is specified using a
    #   [CodeReviewType][1] object. You can create a code review only of
    #   type `RepositoryAnalysis`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html
    #   @return [Types::CodeReviewType]
    #
    # @!attribute [rw] client_request_token
    #   Amazon CodeGuru Reviewer uses this value to prevent the accidental
    #   creation of duplicate code reviews if there are failures and
    #   retries.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/CreateCodeReviewRequest AWS API Documentation
    #
    class CreateCodeReviewRequest < Struct.new(
      :name,
      :repository_association_arn,
      :type,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_review
    #   Information about a code review. A code review belongs to the
    #   associated repository that contains the reviewed code.
    #   @return [Types::CodeReview]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/CreateCodeReviewResponse AWS API Documentation
    #
    class CreateCodeReviewResponse < Struct.new(
      :code_review)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_review_arn
    #   The Amazon Resource Name (ARN) of the [CodeReview][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html
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

    # @!attribute [rw] code_review_arn
    #   The Amazon Resource Name (ARN) of the [CodeReview][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html
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
    #
    #   The `UserId` is an IAM principal that can be specified as an Amazon
    #   Web Services account ID or an Amazon Resource Name (ARN). For more
    #   information, see [ Specifying a Principal][1] in the *Amazon Web
    #   Services Identity and Access Management User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying
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

    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) of the [RepositoryAssociation][1]
    #   object. You can retrieve this ARN by calling
    #   [ListRepositoryAssociations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
    #   [2]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html
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
    # @!attribute [rw] tags
    #   An array of key-value pairs used to tag an associated repository. A
    #   tag is a custom attribute label with two parts:
    #
    #   * A *tag key* (for example, `CostCenter`, `Environment`, `Project`,
    #     or `Secret`). Tag keys are case sensitive.
    #
    #   * An optional field known as a *tag value* (for example,
    #     `111122223333`, `Production`, or a team name). Omitting the tag
    #     value is the same as using an empty string. Like tag keys, tag
    #     values are case sensitive.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DescribeRepositoryAssociationResponse AWS API Documentation
    #
    class DescribeRepositoryAssociationResponse < Struct.new(
      :repository_association,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) of the [RepositoryAssociation][1]
    #   object. You can retrieve this ARN by calling
    #   [ListRepositoryAssociations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
    #   [2]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html
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
    # @!attribute [rw] tags
    #   An array of key-value pairs used to tag an associated repository. A
    #   tag is a custom attribute label with two parts:
    #
    #   * A *tag key* (for example, `CostCenter`, `Environment`, `Project`,
    #     or `Secret`). Tag keys are case sensitive.
    #
    #   * An optional field known as a *tag value* (for example,
    #     `111122223333`, `Production`, or a team name). Omitting the tag
    #     value is the same as using an empty string. Like tag keys, tag
    #     values are case sensitive.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/DisassociateRepositoryResponse AWS API Documentation
    #
    class DisassociateRepositoryResponse < Struct.new(
      :repository_association,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an event. The event might be a push, pull request,
    # scheduled request, or another type of event.
    #
    # @!attribute [rw] name
    #   The name of the event. The possible names are `pull_request`,
    #   `workflow_dispatch`, `schedule`, and `push`
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of an event. The state might be open, closed, or another
    #   state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/EventInfo AWS API Documentation
    #
    class EventInfo < Struct.new(
      :name,
      :state)
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

    # An object that contains:
    #
    # * The encryption option for a repository association. It is either
    #   owned by Amazon Web Services Key Management Service (KMS)
    #   (`AWS_OWNED_CMK`) or customer managed (`CUSTOMER_MANAGED_CMK`).
    #
    # * The ID of the Amazon Web Services KMS key that is associated with a
    #   repository association.
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the Amazon Web Services KMS key that is associated with a
    #   repository association.
    #   @return [String]
    #
    # @!attribute [rw] encryption_option
    #   The encryption option for a repository association. It is either
    #   owned by Amazon Web Services Key Management Service (KMS)
    #   (`AWS_OWNED_CMK`) or customer managed (`CUSTOMER_MANAGED_CMK`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/KMSKeyDetails AWS API Documentation
    #
    class KMSKeyDetails < Struct.new(
      :kms_key_id,
      :encryption_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] provider_types
    #   List of provider types for filtering that needs to be applied before
    #   displaying the result. For example, `providerTypes=[GitHub]` lists
    #   code reviews from GitHub.
    #   @return [Array<String>]
    #
    # @!attribute [rw] states
    #   List of states for filtering that needs to be applied before
    #   displaying the result. For example, `states=[Pending]` lists code
    #   reviews in the Pending state.
    #
    #   The valid code review states are:
    #
    #   * `Completed`: The code review is complete.
    #
    #   * `Pending`: The code review started and has not completed or
    #     failed.
    #
    #   * `Failed`: The code review failed.
    #
    #   * `Deleting`: The code review is being deleted.
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
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged.
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

    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. The
    #   default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] code_review_arn
    #   The Amazon Resource Name (ARN) of the [CodeReview][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html
    #   @return [String]
    #
    # @!attribute [rw] user_ids
    #   An Amazon Web Services user's account ID or Amazon Resource Name
    #   (ARN). Use this ID to query the recommendation feedback for a code
    #   review from that user.
    #
    #   The `UserId` is an IAM principal that can be specified as an Amazon
    #   Web Services account ID or an Amazon Resource Name (ARN). For more
    #   information, see [ Specifying a Principal][1] in the *Amazon Web
    #   Services Identity and Access Management User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying
    #   @return [Array<String>]
    #
    # @!attribute [rw] recommendation_ids
    #   Used to query the recommendation feedback for a given
    #   recommendation.
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
    #   Recommendation feedback summaries corresponding to the code review
    #   ARN.
    #   @return [Array<Types::RecommendationFeedbackSummary>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged.
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
    #   The Amazon Resource Name (ARN) of the [CodeReview][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html
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

    # @!attribute [rw] provider_types
    #   List of provider types to use as a filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] states
    #   List of repository association states to use as a filter.
    #
    #   The valid repository association states are:
    #
    #   * **Associated**: The repository association is complete.
    #
    #   * **Associating**: CodeGuru Reviewer is:
    #
    #     * Setting up pull request notifications. This is required for pull
    #       requests to trigger a CodeGuru Reviewer review.
    #
    #       <note markdown="1"> If your repository `ProviderType` is `GitHub`, `GitHub
    #       Enterprise Server`, or `Bitbucket`, CodeGuru Reviewer creates
    #       webhooks in your repository to trigger CodeGuru Reviewer
    #       reviews. If you delete these webhooks, reviews of code in your
    #       repository cannot be triggered.
    #
    #        </note>
    #
    #     * Setting up source code access. This is required for CodeGuru
    #       Reviewer to securely clone code in your repository.
    #
    #   * **Failed**: The repository failed to associate or disassociate.
    #
    #   * **Disassociating**: CodeGuru Reviewer is removing the
    #     repository's pull request notifications and source code access.
    #
    #   * **Disassociated**: CodeGuru Reviewer successfully disassociated
    #     the repository. You can create a new association with this
    #     repository if you want to review source code in it later. You can
    #     control access to code reviews created in anassociated repository
    #     with tags after it has been disassociated. For more information,
    #     see [Using tags to control access to associated repositories][1]
    #     in the *Amazon CodeGuru Reviewer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] names
    #   List of repository names to use as a filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] owners
    #   List of owners to use as a filter. For Amazon Web Services
    #   CodeCommit, it is the name of the CodeCommit account that was used
    #   to associate the repository. For other repository source providers,
    #   such as Bitbucket and GitHub Enterprise Server, this is name of the
    #   account that was used to associate the repository.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of repository association results returned by
    #   `ListRepositoryAssociations` in paginated output. When this
    #   parameter is used, `ListRepositoryAssociations` only returns
    #   `maxResults` results in a single page with a `nextToken` response
    #   element. The remaining results of the initial request can be seen by
    #   sending another `ListRepositoryAssociations` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   this parameter is not used, `ListRepositoryAssociations` returns up
    #   to 100 results and a `nextToken` value if applicable.
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

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the [RepositoryAssociation][1]
    #   object. You can retrieve this ARN by calling
    #   [ListRepositoryAssociations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
    #   [2]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   An array of key-value pairs used to tag an associated repository. A
    #   tag is a custom attribute label with two parts:
    #
    #   * A *tag key* (for example, `CostCenter`, `Environment`, `Project`,
    #     or `Secret`). Tag keys are case sensitive.
    #
    #   * An optional field known as a *tag value* (for example,
    #     `111122223333`, `Production`, or a team name). Omitting the tag
    #     value is the same as using an empty string. Like tag keys, tag
    #     values are case sensitive.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the statistics from the code review.
    #
    # @!attribute [rw] metered_lines_of_code_count
    #   `MeteredLinesOfCodeCount` is the number of lines of code in the
    #   repository where the code review happened. This does not include
    #   non-code lines such as comments and blank lines.
    #   @return [Integer]
    #
    # @!attribute [rw] suppressed_lines_of_code_count
    #   `SuppressedLinesOfCodeCount` is the number of lines of code in the
    #   repository where the code review happened that CodeGuru Reviewer did
    #   not analyze. The lines suppressed in the analysis is based on the
    #   `excludeFiles` variable in the `aws-codeguru-reviewer.yml` file.
    #   This number does not include non-code lines such as comments and
    #   blank lines.
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
      :suppressed_lines_of_code_count,
      :findings_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about metrics summaries.
    #
    # @!attribute [rw] metered_lines_of_code_count
    #   Lines of code metered in the code review. For the initial code
    #   review pull request and all subsequent revisions, this includes all
    #   lines of code in the files added to the pull request. In subsequent
    #   revisions, for files that already existed in the pull request, this
    #   includes only the changed lines of code. In both cases, this does
    #   not include non-code lines such as comments and import statements.
    #   For example, if you submit a pull request containing 5 files, each
    #   with 500 lines of code, and in a subsequent revision you added a new
    #   file with 200 lines of code, and also modified a total of 25 lines
    #   across the initial 5 files, `MeteredLinesOfCodeCount` includes the
    #   first 5 files (5 * 500 = 2,500 lines), the new file (200 lines) and
    #   the 25 changed lines of code for a total of 2,725 lines of code.
    #   @return [Integer]
    #
    # @!attribute [rw] suppressed_lines_of_code_count
    #   Lines of code suppressed in the code review based on the
    #   `excludeFiles` element in the `aws-codeguru-reviewer.yml` file. For
    #   full repository analyses, this number includes all lines of code in
    #   the files that are suppressed. For pull requests, this number only
    #   includes the *changed* lines of code that are suppressed. In both
    #   cases, this number does not include non-code lines such as comments
    #   and import statements. For example, if you initiate a full
    #   repository analysis on a repository containing 5 files, each file
    #   with 100 lines of code, and 2 files are listed as excluded in the
    #   `aws-codeguru-reviewer.yml` file, then `SuppressedLinesOfCodeCount`
    #   returns 200 (2 * 100) as the total number of lines of code
    #   suppressed. However, if you submit a pull request for the same
    #   repository, then `SuppressedLinesOfCodeCount` only includes the
    #   lines in the 2 files that changed. If only 1 of the 2 files changed
    #   in the pull request, then `SuppressedLinesOfCodeCount` returns 100
    #   (1 * 100) as the total number of lines of code suppressed.
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
      :suppressed_lines_of_code_count,
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

    # @!attribute [rw] code_review_arn
    #   The Amazon Resource Name (ARN) of the [CodeReview][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html
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
    #   The Amazon Resource Name (ARN) of the [CodeReview][1] object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html
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
    #   The ID of the user that made the API call.
    #
    #   The `UserId` is an IAM principal that can be specified as an Amazon
    #   Web Services account ID or an Amazon Resource Name (ARN). For more
    #   information, see [ Specifying a Principal][1] in the *Amazon Web
    #   Services Identity and Access Management User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying
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
    #   The ID of the user that gave the feedback.
    #
    #   The `UserId` is an IAM principal that can be specified as an Amazon
    #   Web Services account ID or an Amazon Resource Name (ARN). For more
    #   information, see [ Specifying a Principal][1] in the *Amazon Web
    #   Services Identity and Access Management User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying
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
    #   and end line values are the same.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the recommendation generated by CodeGuru Reviewer
    #   for the lines of code between the start line and the end line.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_category
    #   The type of a recommendation.
    #   @return [String]
    #
    # @!attribute [rw] rule_metadata
    #   Metadata about a rule. Rule metadata includes an ID, a name, a list
    #   of tags, and a short and long description. CodeGuru Reviewer uses
    #   rules to analyze code. A rule's recommendation is included in
    #   analysis results if code is detected that violates the rule.
    #   @return [Types::RuleMetadata]
    #
    # @!attribute [rw] severity
    #   The severity of the issue in the code that generated this
    #   recommendation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/RecommendationSummary AWS API Documentation
    #
    class RecommendationSummary < Struct.new(
      :file_path,
      :recommendation_id,
      :start_line,
      :end_line,
      :description,
      :recommendation_category,
      :rule_metadata,
      :severity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an associated Amazon Web Services CodeCommit
    # repository or an associated repository that is managed by Amazon Web
    # Services CodeStar Connections (for example, Bitbucket). This
    # `Repository` object is not used if your source code is in an
    # associated GitHub repository.
    #
    # @!attribute [rw] code_commit
    #   Information about an Amazon Web Services CodeCommit repository.
    #   @return [Types::CodeCommitRepository]
    #
    # @!attribute [rw] bitbucket
    #   Information about a Bitbucket repository.
    #   @return [Types::ThirdPartySourceRepository]
    #
    # @!attribute [rw] git_hub_enterprise_server
    #   Information about a GitHub Enterprise Server repository.
    #   @return [Types::ThirdPartySourceRepository]
    #
    # @!attribute [rw] s3_bucket
    #   Information about a repository in an S3 bucket.
    #   @return [Types::S3Repository]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/Repository AWS API Documentation
    #
    class Repository < Struct.new(
      :code_commit,
      :bitbucket,
      :git_hub_enterprise_server,
      :s3_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # A code review type that analyzes all code under a specified branch in
    # an associated repository. The associated repository is specified using
    # its ARN when you call [CreateCodeReview][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CreateCodeReview
    #
    # @!attribute [rw] repository_head
    #   A [SourceCodeType][1] that specifies the tip of a branch in an
    #   associated repository.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType
    #   @return [Types::RepositoryHeadSourceCodeType]
    #
    # @!attribute [rw] source_code_type
    #   Specifies the source code that is analyzed in a code review.
    #   @return [Types::SourceCodeType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/RepositoryAnalysis AWS API Documentation
    #
    class RepositoryAnalysis < Struct.new(
      :repository_head,
      :source_code_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a repository association. The
    # [DescribeRepositoryAssociation][1] operation returns a
    # `RepositoryAssociation` object.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_DescribeRepositoryAssociation.html
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
    #   The Amazon Resource Name (ARN) of an Amazon Web Services CodeStar
    #   Connections connection. Its format is
    #   `arn:aws:codestar-connections:region-id:aws-account_id:connection/connection-id`.
    #   For more information, see [Connection][1] in the *Amazon Web
    #   Services CodeStar Connections API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the repository. For an Amazon Web Services CodeCommit
    #   repository, this is the Amazon Web Services account ID of the
    #   account that owns the repository. For a GitHub, GitHub Enterprise
    #   Server, or Bitbucket repository, this is the username for the
    #   account that owns the repository. For an S3 repository, it can be
    #   the username or Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The provider type of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the repository association.
    #
    #   The valid repository association states are:
    #
    #   * **Associated**: The repository association is complete.
    #
    #   * **Associating**: CodeGuru Reviewer is:
    #
    #     * Setting up pull request notifications. This is required for pull
    #       requests to trigger a CodeGuru Reviewer review.
    #
    #       <note markdown="1"> If your repository `ProviderType` is `GitHub`, `GitHub
    #       Enterprise Server`, or `Bitbucket`, CodeGuru Reviewer creates
    #       webhooks in your repository to trigger CodeGuru Reviewer
    #       reviews. If you delete these webhooks, reviews of code in your
    #       repository cannot be triggered.
    #
    #        </note>
    #
    #     * Setting up source code access. This is required for CodeGuru
    #       Reviewer to securely clone code in your repository.
    #
    #   * **Failed**: The repository failed to associate or disassociate.
    #
    #   * **Disassociating**: CodeGuru Reviewer is removing the
    #     repository's pull request notifications and source code access.
    #
    #   * **Disassociated**: CodeGuru Reviewer successfully disassociated
    #     the repository. You can create a new association with this
    #     repository if you want to review source code in it later. You can
    #     control access to code reviews created in anassociated repository
    #     with tags after it has been disassociated. For more information,
    #     see [Using tags to control access to associated repositories][1]
    #     in the *Amazon CodeGuru Reviewer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html
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
    # @!attribute [rw] kms_key_details
    #   A `KMSKeyDetails` object that contains:
    #
    #   * The encryption option for this repository association. It is
    #     either owned by Amazon Web Services Key Management Service (KMS)
    #     (`AWS_OWNED_CMK`) or customer managed (`CUSTOMER_MANAGED_CMK`).
    #
    #   * The ID of the Amazon Web Services KMS key that is associated with
    #     this repository association.
    #   @return [Types::KMSKeyDetails]
    #
    # @!attribute [rw] s3_repository_details
    #   Specifies the name of an S3 bucket and a `CodeArtifacts` object that
    #   contains the S3 object keys for a source code .zip file and for a
    #   build artifacts .zip file that contains .jar or .class files.
    #   @return [Types::S3RepositoryDetails]
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
      :created_time_stamp,
      :kms_key_details,
      :s3_repository_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a repository association. The
    # [ListRepositoryAssociations][1] operation returns a list of
    # `RepositoryAssociationSummary` objects.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html
    #
    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) of the [RepositoryAssociation][1]
    #   object. You can retrieve this ARN by calling
    #   [ListRepositoryAssociations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
    #   [2]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of an Amazon Web Services CodeStar
    #   Connections connection. Its format is
    #   `arn:aws:codestar-connections:region-id:aws-account_id:connection/connection-id`.
    #   For more information, see [Connection][1] in the *Amazon Web
    #   Services CodeStar Connections API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html
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
    #   The owner of the repository. For an Amazon Web Services CodeCommit
    #   repository, this is the Amazon Web Services account ID of the
    #   account that owns the repository. For a GitHub, GitHub Enterprise
    #   Server, or Bitbucket repository, this is the username for the
    #   account that owns the repository. For an S3 repository, it can be
    #   the username or Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The provider type of the repository association.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the repository association.
    #
    #   The valid repository association states are:
    #
    #   * **Associated**: The repository association is complete.
    #
    #   * **Associating**: CodeGuru Reviewer is:
    #
    #     * Setting up pull request notifications. This is required for pull
    #       requests to trigger a CodeGuru Reviewer review.
    #
    #       <note markdown="1"> If your repository `ProviderType` is `GitHub`, `GitHub
    #       Enterprise Server`, or `Bitbucket`, CodeGuru Reviewer creates
    #       webhooks in your repository to trigger CodeGuru Reviewer
    #       reviews. If you delete these webhooks, reviews of code in your
    #       repository cannot be triggered.
    #
    #        </note>
    #
    #     * Setting up source code access. This is required for CodeGuru
    #       Reviewer to securely clone code in your repository.
    #
    #   * **Failed**: The repository failed to associate or disassociate.
    #
    #   * **Disassociating**: CodeGuru Reviewer is removing the
    #     repository's pull request notifications and source code access.
    #
    #   * **Disassociated**: CodeGuru Reviewer successfully disassociated
    #     the repository. You can create a new association with this
    #     repository if you want to review source code in it later. You can
    #     control access to code reviews created in anassociated repository
    #     with tags after it has been disassociated. For more information,
    #     see [Using tags to control access to associated repositories][1]
    #     in the *Amazon CodeGuru Reviewer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html
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

    # A [SourceCodeType][1] that specifies the tip of a branch in an
    # associated repository.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType
    #
    # @!attribute [rw] branch_name
    #   The name of the branch in an associated repository. The
    #   `RepositoryHeadSourceCodeType` specifies the tip of this branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/RepositoryHeadSourceCodeType AWS API Documentation
    #
    class RepositoryHeadSourceCodeType < Struct.new(
      :branch_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata that is associated with a code review. This applies to both
    # pull request and repository analysis code reviews.
    #
    # @!attribute [rw] request_id
    #   The ID of the request. This is required for a pull request code
    #   review.
    #   @return [String]
    #
    # @!attribute [rw] requester
    #   An identifier, such as a name or account ID, that is associated with
    #   the requester. The `Requester` is used to capture the `author/actor`
    #   name of the event request.
    #   @return [String]
    #
    # @!attribute [rw] event_info
    #   Information about the event associated with a code review.
    #   @return [Types::EventInfo]
    #
    # @!attribute [rw] vendor_name
    #   The name of the repository vendor used to upload code to an S3
    #   bucket for a CI/CD code review. For example, if code and artifacts
    #   are uploaded to an S3 bucket for a CI/CD code review by GitHub
    #   scripts from a GitHub repository, then the repository association's
    #   `ProviderType` is `S3Bucket` and the CI/CD repository vendor name is
    #   GitHub. For more information, see the definition for `ProviderType`
    #   in [RepositoryAssociation][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/RequestMetadata AWS API Documentation
    #
    class RequestMetadata < Struct.new(
      :request_id,
      :requester,
      :event_info,
      :vendor_name)
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

    # Metadata about a rule. Rule metadata includes an ID, a name, a list of
    # tags, and a short and long description. CodeGuru Reviewer uses rules
    # to analyze code. A rule's recommendation is included in analysis
    # results if code is detected that violates the rule.
    #
    # @!attribute [rw] rule_id
    #   The ID of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] short_description
    #   A short description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] long_description
    #   A long description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_tags
    #   Tags that are associated with the rule.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/RuleMetadata AWS API Documentation
    #
    class RuleMetadata < Struct.new(
      :rule_id,
      :rule_name,
      :short_description,
      :long_description,
      :rule_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an associated repository in an S3 bucket. The
    # associated repository contains a source code .zip file and a build
    # artifacts .zip file that contains .jar or .class files.
    #
    # @!attribute [rw] name
    #   The name of the repository when the `ProviderType` is `S3Bucket`.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   An `S3RepositoryDetails` object that specifies the name of an S3
    #   bucket and a `CodeArtifacts` object. The `CodeArtifacts` object
    #   includes the S3 object keys for a source code .zip file and for a
    #   build artifacts .zip file.
    #   @return [Types::S3RepositoryDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/S3BucketRepository AWS API Documentation
    #
    class S3BucketRepository < Struct.new(
      :name,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a repository in an S3 bucket.
    #
    # @!attribute [rw] name
    #   The name of the repository in the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket used for associating a new S3 repository.
    #   It must begin with `codeguru-reviewer-`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/S3Repository AWS API Documentation
    #
    class S3Repository < Struct.new(
      :name,
      :bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the name of an S3 bucket and a `CodeArtifacts` object that
    # contains the S3 object keys for a source code .zip file and for a
    # build artifacts .zip file that contains .jar or .class files.
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket used for associating a new S3 repository.
    #   It must begin with `codeguru-reviewer-`.
    #   @return [String]
    #
    # @!attribute [rw] code_artifacts
    #   A `CodeArtifacts` object. The `CodeArtifacts` object includes the S3
    #   object key for a source code .zip file and for a build artifacts
    #   .zip file that contains .jar or .class files.
    #   @return [Types::CodeArtifacts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/S3RepositoryDetails AWS API Documentation
    #
    class S3RepositoryDetails < Struct.new(
      :bucket_name,
      :code_artifacts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the source code that is analyzed in a code review.
    #
    # @!attribute [rw] commit_diff
    #   A [SourceCodeType][1] that specifies a commit diff created by a pull
    #   request on an associated repository.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType
    #   @return [Types::CommitDiffSourceCodeType]
    #
    # @!attribute [rw] repository_head
    #   A [SourceCodeType][1] that specifies the tip of a branch in an
    #   associated repository.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType
    #   @return [Types::RepositoryHeadSourceCodeType]
    #
    # @!attribute [rw] branch_diff
    #   A type of [SourceCodeType][1] that specifies a source branch name
    #   and a destination branch name in an associated repository.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType
    #   @return [Types::BranchDiffSourceCodeType]
    #
    # @!attribute [rw] s3_bucket_repository
    #   Information about an associated repository in an S3 bucket that
    #   includes its name and an `S3RepositoryDetails` object. The
    #   `S3RepositoryDetails` object includes the name of an S3 bucket, an
    #   S3 key for a source code .zip file, and an S3 key for a build
    #   artifacts .zip file. `S3BucketRepository` is required in
    #   [SourceCodeType][1] for `S3BucketRepository` based code reviews.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType
    #   @return [Types::S3BucketRepository]
    #
    # @!attribute [rw] request_metadata
    #   Metadata that is associated with a code review. This applies to any
    #   type of code review supported by CodeGuru Reviewer. The
    #   `RequestMetadaa` field captures any event metadata. For example, it
    #   might capture metadata associated with an event trigger, such as a
    #   push or a pull request.
    #   @return [Types::RequestMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/SourceCodeType AWS API Documentation
    #
    class SourceCodeType < Struct.new(
      :commit_diff,
      :repository_head,
      :branch_diff,
      :s3_bucket_repository,
      :request_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the [RepositoryAssociation][1]
    #   object. You can retrieve this ARN by calling
    #   [ListRepositoryAssociations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
    #   [2]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs used to tag an associated repository. A
    #   tag is a custom attribute label with two parts:
    #
    #   * A *tag key* (for example, `CostCenter`, `Environment`, `Project`,
    #     or `Secret`). Tag keys are case sensitive.
    #
    #   * An optional field known as a *tag value* (for example,
    #     `111122223333`, `Production`, or a team name). Omitting the tag
    #     value is the same as using an empty string. Like tag keys, tag
    #     values are case sensitive.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Information about a third-party source repository connected to
    # CodeGuru Reviewer.
    #
    # @!attribute [rw] name
    #   The name of the third party source repository.
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of an Amazon Web Services CodeStar
    #   Connections connection. Its format is
    #   `arn:aws:codestar-connections:region-id:aws-account_id:connection/connection-id`.
    #   For more information, see [Connection][1] in the *Amazon Web
    #   Services CodeStar Connections API Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the repository. For a GitHub, GitHub Enterprise, or
    #   Bitbucket repository, this is the username for the account that owns
    #   the repository. For an S3 repository, this can be the username or
    #   Amazon Web Services account ID
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

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the [RepositoryAssociation][1]
    #   object. You can retrieve this ARN by calling
    #   [ListRepositoryAssociations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html
    #   [2]: https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of the keys for each tag you want to remove from an
    #   associated repository.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer-2019-09-19/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

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
