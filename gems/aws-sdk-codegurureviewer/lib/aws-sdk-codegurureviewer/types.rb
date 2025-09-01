# frozen_string_literal: true

# This is generated code!

module Aws::CodeGuruReviewer
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AnalysisType
      SECURITY = 'Security'
      CODE_QUALITY = 'CodeQuality'
    end

    # @!attribute repository
    #   <p>The repository to associate.</p>
    #   @return [Types::Repository]
    # @!attribute client_request_token
    #   <p>Amazon CodeGuru Reviewer uses this value to prevent the accidental creation of duplicate repository
    #            associations if there are failures and retries.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key-value pairs used to tag an associated repository. A tag is a custom attribute label with two parts:</p>
    #            <ul>
    #               <li>
    #                  <p>A <i>tag key</i> (for example, <code>CostCenter</code>,
    #   					<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #   					keys are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>An optional field known as a <i>tag value</i> (for example,
    #   					<code>111122223333</code>, <code>Production</code>, or a team name).
    #   					Omitting the tag value is the same as using an empty string. Like tag keys, tag
    #   					values are case sensitive.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_details
    #   <p>A <code>KMSKeyDetails</code> object that contains:</p>
    #            <ul>
    #               <li>
    #                  <p>The encryption option for this repository association. It is either owned by Amazon Web Services
    #                  Key Management Service (KMS) (<code>AWS_OWNED_CMK</code>) or customer managed
    #                     (<code>CUSTOMER_MANAGED_CMK</code>).</p>
    #               </li>
    #               <li>
    #                  <p>The ID of the Amazon Web Services KMS key that is associated with this repository
    #                  association.</p>
    #               </li>
    #            </ul>
    #   @return [Types::KMSKeyDetails]
    class AssociateRepositoryRequest < Struct.new(
      :repository,
      :client_request_token,
      :tags,
      :kms_key_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute repository_association
    #   <p>Information about the repository association.</p>
    #   @return [Types::RepositoryAssociation]
    # @!attribute tags
    #   <p>An array of key-value pairs used to tag an associated repository. A tag is a custom attribute label with two parts:</p>
    #            <ul>
    #               <li>
    #                  <p>A <i>tag key</i> (for example, <code>CostCenter</code>,
    #   					<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #   					keys are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>An optional field known as a <i>tag value</i> (for example,
    #   					<code>111122223333</code>, <code>Production</code>, or a team name).
    #   					Omitting the tag value is the same as using an empty string. Like tag keys, tag
    #   					values are case sensitive.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class AssociateRepositoryResponse < Struct.new(
      :repository_association,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A type of <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType">SourceCodeType</a> that
    #          specifies a code diff between a source and destination branch in an associated
    #          repository.</p>
    # @!attribute source_branch_name
    #   <p>The source branch for a diff in an associated repository.</p>
    #   @return [String]
    # @!attribute destination_branch_name
    #   <p>The destination branch for a diff in an associated repository.</p>
    #   @return [String]
    class BranchDiffSourceCodeType < Struct.new(
      :source_branch_name,
      :destination_branch_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Code artifacts are source code artifacts and build artifacts used in a repository
    #          analysis or a pull request review.</p>
    #          <ul>
    #             <li>
    #                <p>Source code artifacts are source code files in a Git repository that are
    #                compressed into a .zip file.</p>
    #             </li>
    #             <li>
    #                <p>Build artifacts are .jar or .class files that are compressed in a .zip
    #                file.</p>
    #             </li>
    #          </ul>
    # @!attribute source_code_artifacts_object_key
    #   <p>The S3 object key for a source code .zip file. This is required for all code
    #            reviews.</p>
    #   @return [String]
    # @!attribute build_artifacts_object_key
    #   <p>The S3 object key for a build artifacts .zip file that contains .jar or .class files.
    #            This is required for a code review with security analysis. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/working-with-cicd.html">Create
    #               code reviews with GitHub Actions</a> in the <i>Amazon CodeGuru Reviewer User
    #               Guide</i>.</p>
    #   @return [String]
    class CodeArtifacts < Struct.new(
      :source_code_artifacts_object_key,
      :build_artifacts_object_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about an Amazon Web Services CodeCommit repository. The CodeCommit repository must be in
    #          the same Amazon Web Services Region and Amazon Web Services account where its CodeGuru Reviewer code reviews are
    #          configured.</p>
    # @!attribute name
    #   <p>The name of the Amazon Web Services CodeCommit repository. For more information, see <a href="https://docs.aws.amazon.com/codecommit/latest/APIReference/API_GetRepository.html#CodeCommit-GetRepository-request-repositoryName">repositoryName</a> in the <i>Amazon Web Services CodeCommit API
    #            Reference</i>.</p>
    #   @return [String]
    class CodeCommitRepository < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a code review. A code review belongs to the associated repository that
    #          contains the reviewed code.</p>
    # @!attribute name
    #   <p>The name of the code review.</p>
    #   @return [String]
    # @!attribute code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
    #         </p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the repository. For an Amazon Web Services CodeCommit repository, this is the Amazon Web Services account ID of the 
    #         account that owns the repository. For a GitHub, GitHub Enterprise Server, or Bitbucket repository, this is the username for the account that owns the repository.
    #         For an S3 repository, it can be the username or Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The type of repository that contains the reviewed code (for example, GitHub or
    #            Bitbucket).</p>
    #   @return [String]
    # @!attribute state
    #   <p>The valid code review states are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Completed</code>: The code review is complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Pending</code>: The code review started and has not completed or failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code>: The code review failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Deleting</code>: The code review is being deleted.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the state of the code review.</p>
    #   @return [String]
    # @!attribute created_time_stamp
    #   <p>The time, in milliseconds since the epoch, when the code review was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time_stamp
    #   <p>The time, in milliseconds since the epoch, when the code review was last updated.</p>
    #   @return [Time]
    # @!attribute type
    #   <p>The type of code review.</p>
    #   @return [String]
    # @!attribute pull_request_id
    #   <p>The pull request ID for the code review.</p>
    #   @return [String]
    # @!attribute source_code_type
    #   <p>The type of the source code for the code review.</p>
    #   @return [Types::SourceCodeType]
    # @!attribute association_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> that contains the reviewed source code. You can retrieve
    #            associated repository ARNs by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.</p>
    #   @return [String]
    # @!attribute metrics
    #   <p>The statistics from the code review.</p>
    #   @return [Types::Metrics]
    # @!attribute analysis_types
    #   <p>The types of analysis performed during a repository analysis or a pull request review.
    #            You can specify either <code>Security</code>, <code>CodeQuality</code>, or both.</p>
    #   @return [Array<String>]
    # @!attribute config_file_state
    #   <p>The state of the <code>aws-codeguru-reviewer.yml</code> configuration file that allows
    #            the configuration of the CodeGuru Reviewer analysis. The file either exists, doesn't exist, or exists
    #            with errors at the root directory of your repository.</p>
    #   @return [String]
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
      :config_file_state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the summary of the code review.</p>
    # @!attribute name
    #   <p>The name of the code review.</p>
    #   @return [String]
    # @!attribute code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
    #         </p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the repository. For an Amazon Web Services CodeCommit repository, this is the Amazon Web Services account ID of the 
    #         account that owns the repository. For a GitHub, GitHub Enterprise Server, or Bitbucket repository, this is the username for the account that owns the repository.
    #         For an S3 repository, it can be the username or Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The provider type of the repository association.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the code review.</p>
    #            <p>The valid code review states are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Completed</code>: The code review is complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Pending</code>: The code review started and has not completed or failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code>: The code review failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Deleting</code>: The code review is being deleted.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute created_time_stamp
    #   <p>The time, in milliseconds since the epoch, when the code review was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time_stamp
    #   <p>The time, in milliseconds since the epoch, when the code review was last updated.</p>
    #   @return [Time]
    # @!attribute type
    #   <p>The type of the code review.</p>
    #   @return [String]
    # @!attribute pull_request_id
    #   <p>The pull request ID for the code review.</p>
    #   @return [String]
    # @!attribute metrics_summary
    #   <p>The statistics from the code review.</p>
    #   @return [Types::MetricsSummary]
    # @!attribute source_code_type
    #   <p>Specifies the source code that is analyzed in a code review.</p>
    #   @return [Types::SourceCodeType]
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
      :source_code_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The type of a code review. There are two code review types:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>PullRequest</code> - A code review that is automatically triggered by a pull
    #                request on an associated repository.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RepositoryAnalysis</code> - A code review that analyzes all code under a
    #                specified branch in an associated repository. The associated repository is specified
    #                using its ARN in <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CreateCodeReview">CreateCodeReview</a>.</p>
    #             </li>
    #          </ul>
    # @!attribute repository_analysis
    #   <p>A code review that analyzes all code under a specified branch in an associated
    #            repository. The associated repository is specified using its ARN in <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CreateCodeReview">CreateCodeReview</a>.</p>
    #   @return [Types::RepositoryAnalysis]
    # @!attribute analysis_types
    #   <p>They types of analysis performed during a repository analysis or a pull request review.
    #            You can specify either <code>Security</code>, <code>CodeQuality</code>, or both.</p>
    #   @return [Array<String>]
    class CodeReviewType < Struct.new(
      :repository_analysis,
      :analysis_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A type of <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType">SourceCodeType</a> that
    #          specifies the commit diff for a pull request on an associated repository. The
    #             <code>SourceCommit</code> and <code>DestinationCommit</code> fields are required to do a
    #          pull request code review.</p>
    # @!attribute source_commit
    #   <p>The SHA of the source commit used to generate a commit diff. This field is required for
    #            a pull request code review.</p>
    #   @return [String]
    # @!attribute destination_commit
    #   <p>The SHA of the destination commit used to generate a commit diff. This field is required
    #            for a pull request code review.</p>
    #   @return [String]
    # @!attribute merge_base_commit
    #   <p>The SHA of the merge base of a commit.</p>
    #   @return [String]
    class CommitDiffSourceCodeType < Struct.new(
      :source_commit,
      :destination_commit,
      :merge_base_commit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConfigFileState
      PRESENT = 'Present'
      ABSENT = 'Absent'
      PRESENT_WITH_ERRORS = 'PresentWithErrors'
    end

    # <p>The requested operation would cause a conflict with the current state of a service
    #          resource associated with the request. Resolve the conflict before retrying this request.
    #       </p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the code review. The name of each code review in your Amazon Web Services account must be
    #            unique.</p>
    #   @return [String]
    # @!attribute repository_association_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.</p>
    #            <p>A code review can only be created on an associated repository. This is the ARN of the
    #            associated repository.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of code review to create. This is specified using a <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html">CodeReviewType</a>
    #            object. You can create a code review only of type <code>RepositoryAnalysis</code>.</p>
    #   @return [Types::CodeReviewType]
    # @!attribute client_request_token
    #   <p>Amazon CodeGuru Reviewer uses this value to prevent the accidental creation of duplicate code reviews
    #            if there are failures and retries.</p>
    #   @return [String]
    class CreateCodeReviewRequest < Struct.new(
      :name,
      :repository_association_arn,
      :type,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_review
    #   <p>Information about a code review. A code review belongs to the associated repository that
    #            contains the reviewed code.</p>
    #   @return [Types::CodeReview]
    class CreateCodeReviewResponse < Struct.new(
      :code_review,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
    #         </p>
    #   @return [String]
    class DescribeCodeReviewRequest < Struct.new(
      :code_review_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_review
    #   <p>Information about the code review.</p>
    #   @return [Types::CodeReview]
    class DescribeCodeReviewResponse < Struct.new(
      :code_review,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
    #         </p>
    #   @return [String]
    # @!attribute recommendation_id
    #   <p>The recommendation ID that can be used to track the provided recommendations and then to
    #            collect the feedback.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>Optional parameter to describe the feedback for a given user. If this is not supplied,
    #            it defaults to the user making the request.</p>
    #            <p>
    #            The <code>UserId</code> is an IAM principal that can be specified as an Amazon Web Services account ID or an Amazon Resource Name (ARN). For 
    #            more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying">
    #               Specifying a Principal</a> in the <i>Amazon Web Services Identity and Access Management User Guide</i>.</p>
    #   @return [String]
    class DescribeRecommendationFeedbackRequest < Struct.new(
      :code_review_arn,
      :recommendation_id,
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute recommendation_feedback
    #   <p>The recommendation feedback given by the user.</p>
    #   @return [Types::RecommendationFeedback]
    class DescribeRecommendationFeedbackResponse < Struct.new(
      :recommendation_feedback,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute association_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.</p>
    #   @return [String]
    class DescribeRepositoryAssociationRequest < Struct.new(
      :association_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute repository_association
    #   <p>Information about the repository association.</p>
    #   @return [Types::RepositoryAssociation]
    # @!attribute tags
    #   <p>An array of key-value pairs used to tag an associated repository. A tag is a custom attribute label with two parts:</p>
    #            <ul>
    #               <li>
    #                  <p>A <i>tag key</i> (for example, <code>CostCenter</code>,
    #   					<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #   					keys are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>An optional field known as a <i>tag value</i> (for example,
    #   					<code>111122223333</code>, <code>Production</code>, or a team name).
    #   					Omitting the tag value is the same as using an empty string. Like tag keys, tag
    #   					values are case sensitive.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class DescribeRepositoryAssociationResponse < Struct.new(
      :repository_association,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute association_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.</p>
    #   @return [String]
    class DisassociateRepositoryRequest < Struct.new(
      :association_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute repository_association
    #   <p>Information about the disassociated repository.</p>
    #   @return [Types::RepositoryAssociation]
    # @!attribute tags
    #   <p>An array of key-value pairs used to tag an associated repository. A tag is a custom attribute label with two parts:</p>
    #            <ul>
    #               <li>
    #                  <p>A <i>tag key</i> (for example, <code>CostCenter</code>,
    #   					<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #   					keys are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>An optional field known as a <i>tag value</i> (for example,
    #   					<code>111122223333</code>, <code>Production</code>, or a team name).
    #   					Omitting the tag value is the same as using an empty string. Like tag keys, tag
    #   					values are case sensitive.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class DisassociateRepositoryResponse < Struct.new(
      :repository_association,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EncryptionOption
      AoCmk = 'AWS_OWNED_CMK'
      CmCmk = 'CUSTOMER_MANAGED_CMK'
    end

    # <p>Information about an event. The event might be a push, pull request, scheduled request,
    #          or another type of event.</p>
    # @!attribute name
    #   <p>The name of the event. The possible names are <code>pull_request</code>,
    #               <code>workflow_dispatch</code>, <code>schedule</code>, and <code>push</code>
    #            </p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of an event. The state might be open, closed, or another state.</p>
    #   @return [String]
    class EventInfo < Struct.new(
      :name,
      :state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The server encountered an internal error and is unable to complete the request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module JobState
      COMPLETED = 'Completed'
      PENDING = 'Pending'
      FAILED = 'Failed'
      DELETING = 'Deleting'
    end

    # <p>An object that contains:</p>
    #          <ul>
    #             <li>
    #                <p>The encryption option for a repository association. It is either owned by Amazon Web Services
    #                Key Management Service (KMS) (<code>AWS_OWNED_CMK</code>) or customer managed
    #                   (<code>CUSTOMER_MANAGED_CMK</code>).</p>
    #             </li>
    #             <li>
    #                <p>The ID of the Amazon Web Services KMS key that is associated with a repository
    #                association.</p>
    #             </li>
    #          </ul>
    # @!attribute kms_key_id
    #   <p>The ID of the Amazon Web Services KMS key that is associated with a repository association.</p>
    #   @return [String]
    # @!attribute encryption_option
    #   <p>The encryption option for a repository association. It is either owned by Amazon Web Services Key
    #            Management Service (KMS) (<code>AWS_OWNED_CMK</code>) or customer managed
    #               (<code>CUSTOMER_MANAGED_CMK</code>).</p>
    #   @return [String]
    class KMSKeyDetails < Struct.new(
      :kms_key_id,
      :encryption_option,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute provider_types
    #   <p>List of provider types for filtering that needs to be applied before displaying the
    #            result. For example, <code>providerTypes=[GitHub]</code> lists code reviews from
    #            GitHub.</p>
    #   @return [Array<String>]
    # @!attribute states
    #   <p>List of states for filtering that needs to be applied before displaying the result. For
    #            example, <code>states=[Pending]</code> lists code reviews in the Pending state.</p>
    #            <p>The valid code review states are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Completed</code>: The code review is complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Pending</code>: The code review started and has not completed or failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Failed</code>: The code review failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Deleting</code>: The code review is being deleted.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute repository_names
    #   <p>List of repository names for filtering that needs to be applied before displaying the
    #            result.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type of code reviews to list in the response.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. The default is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments
    #            unchanged.</p>
    #   @return [String]
    class ListCodeReviewsRequest < Struct.new(
      :provider_types,
      :states,
      :repository_names,
      :type,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute code_review_summaries
    #   <p>A list of code reviews that meet the criteria of the request.</p>
    #   @return [Array<Types::CodeReviewSummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListCodeReviewsResponse < Struct.new(
      :code_review_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments
    #            unchanged.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. The default is 100.</p>
    #   @return [Integer]
    # @!attribute code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
    #         </p>
    #   @return [String]
    # @!attribute user_ids
    #   <p>An Amazon Web Services user's account ID or Amazon Resource Name (ARN). Use this ID to query the
    #            recommendation feedback for a code review from that user.</p>
    #            <p>
    #            The <code>UserId</code> is an IAM principal that can be specified as an Amazon Web Services account ID or an Amazon Resource Name (ARN). For 
    #            more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying">
    #               Specifying a Principal</a> in the <i>Amazon Web Services Identity and Access Management User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute recommendation_ids
    #   <p>Used to query the recommendation feedback for a given recommendation.</p>
    #   @return [Array<String>]
    class ListRecommendationFeedbackRequest < Struct.new(
      :next_token,
      :max_results,
      :code_review_arn,
      :user_ids,
      :recommendation_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute recommendation_feedback_summaries
    #   <p>Recommendation feedback summaries corresponding to the code review ARN.</p>
    #   @return [Array<Types::RecommendationFeedbackSummary>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments
    #            unchanged.</p>
    #   @return [String]
    class ListRecommendationFeedbackResponse < Struct.new(
      :recommendation_feedback_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. The default is 100.</p>
    #   @return [Integer]
    # @!attribute code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
    #         </p>
    #   @return [String]
    class ListRecommendationsRequest < Struct.new(
      :next_token,
      :max_results,
      :code_review_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute recommendation_summaries
    #   <p>List of recommendations for the requested code review.</p>
    #   @return [Array<Types::RecommendationSummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListRecommendationsResponse < Struct.new(
      :recommendation_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute provider_types
    #   <p>List of provider types to use as a filter.</p>
    #   @return [Array<String>]
    # @!attribute states
    #   <p>List of repository association states to use as a filter.</p>
    #            <p>The valid repository association states are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Associated</b>: The repository association is complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Associating</b>: CodeGuru Reviewer is:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Setting up pull request notifications. This is required 
    #                        for pull requests to trigger a CodeGuru Reviewer review.</p>
    #                        <note>
    #                           <p>If your repository <code>ProviderType</code> is <code>GitHub</code>, <code>GitHub Enterprise Server</code>, or <code>Bitbucket</code>, CodeGuru Reviewer creates webhooks in your repository to trigger CodeGuru Reviewer reviews. If you delete these webhooks, reviews of code in your repository cannot be triggered.</p>
    #                        </note>
    #                     </li>
    #                     <li>
    #                        <p>Setting up source code access. This is required for CodeGuru Reviewer to securely clone code in your repository.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Failed</b>: The repository failed to associate or disassociate.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Disassociating</b>: CodeGuru Reviewer is removing the repository's pull request notifications and source code access.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Disassociated</b>: CodeGuru Reviewer successfully disassociated the repository. You can create a new association with this repository if you want to review source code in it later. You can control access to code reviews created in anassociated repository with tags after it has been disassociated. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html">Using tags to control access to associated repositories</a> in the <i>Amazon CodeGuru Reviewer User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute names
    #   <p>List of repository names to use as a filter.</p>
    #   @return [Array<String>]
    # @!attribute owners
    #   <p>List of owners to use as a filter. For Amazon Web Services CodeCommit, it is the name of the
    #            CodeCommit account that was used to associate the repository. For other repository source
    #            providers, such as Bitbucket and GitHub Enterprise Server, this is name of the account that
    #            was used to associate the repository. </p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of repository association results returned by
    #               <code>ListRepositoryAssociations</code> in paginated output. When this parameter is
    #            used, <code>ListRepositoryAssociations</code> only returns <code>maxResults</code> results
    #            in a single page with a <code>nextToken</code> response element. The remaining results of
    #            the initial request can be seen by sending another <code>ListRepositoryAssociations</code>
    #            request with the returned <code>nextToken</code> value. This value can be between 1 and
    #            100. If this parameter is not used, <code>ListRepositoryAssociations</code> returns up to
    #            100 results and a <code>nextToken</code> value if applicable. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #               <code>ListRepositoryAssociations</code> request where <code>maxResults</code> was used
    #            and the results exceeded the value of that parameter. Pagination continues from the end of
    #            the previous results that returned the <code>nextToken</code> value. </p>
    #            <note>
    #               <p>Treat this token as an opaque identifier that is only used to retrieve the next items
    #               in a list and not for other programmatic purposes.</p>
    #            </note>
    #   @return [String]
    class ListRepositoryAssociationsRequest < Struct.new(
      :provider_types,
      :states,
      :names,
      :owners,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute repository_association_summaries
    #   <p>A list of repository associations that meet the criteria of the request.</p>
    #   @return [Array<Types::RepositoryAssociationSummary>]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListRecommendations</code>
    #            request. When the results of a <code>ListRecommendations</code> request exceed
    #               <code>maxResults</code>, this value can be used to retrieve the next page of results.
    #            This value is <code>null</code> when there are no more results to return. </p>
    #   @return [String]
    class ListRepositoryAssociationsResponse < Struct.new(
      :repository_association_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>An array of key-value pairs used to tag an associated repository. A tag is a custom attribute label with two parts:</p>
    #            <ul>
    #               <li>
    #                  <p>A <i>tag key</i> (for example, <code>CostCenter</code>,
    #   					<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #   					keys are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>An optional field known as a <i>tag value</i> (for example,
    #   					<code>111122223333</code>, <code>Production</code>, or a team name).
    #   					Omitting the tag value is the same as using an empty string. Like tag keys, tag
    #   					values are case sensitive.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the statistics from the code review.</p>
    # @!attribute metered_lines_of_code_count
    #   <p>
    #               <code>MeteredLinesOfCodeCount</code> is the number of lines of code in the repository
    #            where the code review happened. This does not include non-code lines such as comments and
    #            blank lines.</p>
    #   @return [Integer]
    # @!attribute suppressed_lines_of_code_count
    #   <p>
    #               <code>SuppressedLinesOfCodeCount</code> is the number of lines of code in the repository
    #            where the code review happened that CodeGuru Reviewer did not analyze. The lines suppressed in the
    #            analysis is based on the <code>excludeFiles</code> variable in the
    #               <code>aws-codeguru-reviewer.yml</code> file. This number does not include non-code lines
    #            such as comments and blank lines. </p>
    #   @return [Integer]
    # @!attribute findings_count
    #   <p>Total number of recommendations found in the code review.</p>
    #   @return [Integer]
    class Metrics < Struct.new(
      :metered_lines_of_code_count,
      :suppressed_lines_of_code_count,
      :findings_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about metrics summaries.</p>
    # @!attribute metered_lines_of_code_count
    #   <p>Lines of code metered in the code review. For the initial code review pull request and
    #            all subsequent revisions, this includes all lines of code in the files added to the pull
    #            request. In subsequent revisions, for files that already existed in the pull request, this
    #            includes only the changed lines of code. In both cases, this does not include non-code
    #            lines such as comments and import statements. For example, if you submit a pull request
    #            containing 5 files, each with 500 lines of code, and in a subsequent revision you added a
    #            new file with 200 lines of code, and also modified a total of 25 lines across the initial 5
    #            files, <code>MeteredLinesOfCodeCount</code> includes the first 5 files (5 * 500 = 2,500
    #            lines), the new file (200 lines) and the 25 changed lines of code for a total of 2,725
    #            lines of code.</p>
    #   @return [Integer]
    # @!attribute suppressed_lines_of_code_count
    #   <p>Lines of code suppressed in the code review based on the <code>excludeFiles</code>
    #            element in the <code>aws-codeguru-reviewer.yml</code> file. For full repository analyses,
    #            this number includes all lines of code in the files that are suppressed. For pull requests,
    #            this number only includes the <i>changed</i> lines of code that are
    #            suppressed. In both cases, this number does not include non-code lines such as comments and
    #            import statements. For example, if you initiate a full repository analysis on a repository
    #            containing 5 files, each file with 100 lines of code, and 2 files are listed as excluded in
    #            the <code>aws-codeguru-reviewer.yml</code> file, then
    #               <code>SuppressedLinesOfCodeCount</code> returns 200 (2 * 100) as the total number of
    #            lines of code suppressed. However, if you submit a pull request for the same repository,
    #            then <code>SuppressedLinesOfCodeCount</code> only includes the lines in the 2 files that
    #            changed. If only 1 of the 2 files changed in the pull request, then
    #               <code>SuppressedLinesOfCodeCount</code> returns 100 (1 * 100) as the total number of
    #            lines of code suppressed.</p>
    #   @return [Integer]
    # @!attribute findings_count
    #   <p>Total number of recommendations found in the code review.</p>
    #   @return [Integer]
    class MetricsSummary < Struct.new(
      :metered_lines_of_code_count,
      :suppressed_lines_of_code_count,
      :findings_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource specified in the request was not found.</p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ProviderType
      CODE_COMMIT = 'CodeCommit'
      GIT_HUB = 'GitHub'
      BITBUCKET = 'Bitbucket'
      GIT_HUB_ENTERPRISE_SERVER = 'GitHubEnterpriseServer'
      S3_BUCKET = 'S3Bucket'
    end

    # @!attribute code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
    #         </p>
    #   @return [String]
    # @!attribute recommendation_id
    #   <p>The recommendation ID that can be used to track the provided recommendations and then to
    #            collect the feedback.</p>
    #   @return [String]
    # @!attribute reactions
    #   <p>List for storing reactions. Reactions are utf-8 text code for emojis. If you send an
    #            empty list it clears all your feedback.</p>
    #   @return [Array<String>]
    class PutRecommendationFeedbackRequest < Struct.new(
      :code_review_arn,
      :recommendation_id,
      :reactions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutRecommendationFeedbackResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Reaction
      THUMBS_UP = 'ThumbsUp'
      THUMBS_DOWN = 'ThumbsDown'
    end

    module RecommendationCategory
      AWS_BEST_PRACTICES = 'AWSBestPractices'
      AWS_CLOUDFORMATION_ISSUES = 'AWSCloudFormationIssues'
      DUPLICATE_CODE = 'DuplicateCode'
      CODE_MAINTENANCE_ISSUES = 'CodeMaintenanceIssues'
      CONCURRENCY_ISSUES = 'ConcurrencyIssues'
      INPUT_VALIDATIONS = 'InputValidations'
      PYTHON_BEST_PRACTICES = 'PythonBestPractices'
      JAVA_BEST_PRACTICES = 'JavaBestPractices'
      RESOURCE_LEAKS = 'ResourceLeaks'
      SECURITY_ISSUES = 'SecurityIssues'
      CODE_INCONSISTENCIES = 'CodeInconsistencies'
    end

    # <p>Information about the recommendation feedback.</p>
    # @!attribute code_review_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html">CodeReview</a> object.
    #         </p>
    #   @return [String]
    # @!attribute recommendation_id
    #   <p>The recommendation ID that can be used to track the provided recommendations. Later on
    #            it can be used to collect the feedback.</p>
    #   @return [String]
    # @!attribute reactions
    #   <p>List for storing reactions. Reactions are utf-8 text code for emojis. You can send an
    #            empty list to clear off all your feedback.</p>
    #   @return [Array<String>]
    # @!attribute user_id
    #   <p>The ID of the user that made the API call.</p>
    #            <p>
    #            The <code>UserId</code> is an IAM principal that can be specified as an Amazon Web Services account ID or an Amazon Resource Name (ARN). For 
    #            more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying">
    #               Specifying a Principal</a> in the <i>Amazon Web Services Identity and Access Management User Guide</i>.</p>
    #   @return [String]
    # @!attribute created_time_stamp
    #   <p>The time at which the feedback was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time_stamp
    #   <p>The time at which the feedback was last updated.</p>
    #   @return [Time]
    class RecommendationFeedback < Struct.new(
      :code_review_arn,
      :recommendation_id,
      :reactions,
      :user_id,
      :created_time_stamp,
      :last_updated_time_stamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about recommendation feedback summaries.</p>
    # @!attribute recommendation_id
    #   <p>The recommendation ID that can be used to track the provided recommendations. Later on
    #            it can be used to collect the feedback.</p>
    #   @return [String]
    # @!attribute reactions
    #   <p>List for storing reactions. Reactions are utf-8 text code for emojis.</p>
    #   @return [Array<String>]
    # @!attribute user_id
    #   <p>The ID of the user that gave the feedback.</p>
    #            <p>
    #            The <code>UserId</code> is an IAM principal that can be specified as an Amazon Web Services account ID or an Amazon Resource Name (ARN). For 
    #            more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying">
    #               Specifying a Principal</a> in the <i>Amazon Web Services Identity and Access Management User Guide</i>.</p>
    #   @return [String]
    class RecommendationFeedbackSummary < Struct.new(
      :recommendation_id,
      :reactions,
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about recommendations.</p>
    # @!attribute file_path
    #   <p>Name of the file on which a recommendation is provided.</p>
    #   @return [String]
    # @!attribute recommendation_id
    #   <p>The recommendation ID that can be used to track the provided recommendations. Later on
    #            it can be used to collect the feedback.</p>
    #   @return [String]
    # @!attribute start_line
    #   <p>Start line from where the recommendation is applicable in the source commit or source
    #            branch.</p>
    #   @return [Integer]
    # @!attribute end_line
    #   <p>Last line where the recommendation is applicable in the source commit or source branch.
    #            For a single line comment the start line and end line values are the same.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>A description of the recommendation generated by CodeGuru Reviewer for the lines of code between
    #            the start line and the end line.</p>
    #   @return [String]
    # @!attribute recommendation_category
    #   <p>The type of a recommendation.</p>
    #   @return [String]
    # @!attribute rule_metadata
    #   <p>Metadata about a rule. Rule metadata includes an ID, a name, a list of tags, and a short and long description. CodeGuru Reviewer uses rules to analyze code. A rule's recommendation is included in analysis results if code is detected that violates the rule.</p>
    #   @return [Types::RuleMetadata]
    # @!attribute severity
    #   <p>The severity of the issue in the code that generated this recommendation.</p>
    #   @return [String]
    class RecommendationSummary < Struct.new(
      :file_path,
      :recommendation_id,
      :start_line,
      :end_line,
      :description,
      :recommendation_category,
      :rule_metadata,
      :severity,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about an associated Amazon Web Services CodeCommit repository or an associated repository
    #          that is managed by Amazon Web Services CodeStar Connections (for example, Bitbucket). This
    #             <code>Repository</code> object is not used if your source code is in an associated
    #          GitHub repository.</p>
    # @!attribute code_commit
    #   <p>Information about an Amazon Web Services CodeCommit repository.</p>
    #   @return [Types::CodeCommitRepository]
    # @!attribute bitbucket
    #   <p> Information about a Bitbucket repository. </p>
    #   @return [Types::ThirdPartySourceRepository]
    # @!attribute git_hub_enterprise_server
    #   <p>Information about a GitHub Enterprise Server repository.</p>
    #   @return [Types::ThirdPartySourceRepository]
    # @!attribute s3_bucket
    #   <p>Information about a repository in an S3 bucket.</p>
    #   @return [Types::S3Repository]
    class Repository < Struct.new(
      :code_commit,
      :bitbucket,
      :git_hub_enterprise_server,
      :s3_bucket,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A code review type that analyzes all code under a specified branch in an associated
    #          repository. The associated repository is specified using its ARN when you call <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CreateCodeReview">CreateCodeReview</a>.</p>
    # @!attribute repository_head
    #   <p>A <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType">SourceCodeType</a> that specifies the tip of a branch in an associated
    #            repository.</p>
    #   @return [Types::RepositoryHeadSourceCodeType]
    # @!attribute source_code_type
    #   <p>Specifies the source code that is analyzed in a code review.</p>
    #   @return [Types::SourceCodeType]
    class RepositoryAnalysis < Struct.new(
      :repository_head,
      :source_code_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a repository association. The <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_DescribeRepositoryAssociation.html">DescribeRepositoryAssociation</a> operation returns a
    #             <code>RepositoryAssociation</code> object.</p>
    # @!attribute association_id
    #   <p>The ID of the repository association.</p>
    #   @return [String]
    # @!attribute association_arn
    #   <p>The Amazon Resource Name (ARN) identifying the repository association.</p>
    #   @return [String]
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services CodeStar Connections connection. Its format is <code>arn:aws:codestar-connections:region-id:aws-account_id:connection/connection-id</code>. For more information, see <a href="https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html">Connection</a> in the <i>Amazon Web Services CodeStar Connections API Reference</i>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the repository.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the repository. For an Amazon Web Services CodeCommit repository, this is the Amazon Web Services account ID of the 
    #         account that owns the repository. For a GitHub, GitHub Enterprise Server, or Bitbucket repository, this is the username for the account that owns the repository.
    #         For an S3 repository, it can be the username or Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The provider type of the repository association.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the repository association.</p>
    #            <p>The valid repository association states are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Associated</b>: The repository association is complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Associating</b>: CodeGuru Reviewer is:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Setting up pull request notifications. This is required 
    #                        for pull requests to trigger a CodeGuru Reviewer review.</p>
    #                        <note>
    #                           <p>If your repository <code>ProviderType</code> is <code>GitHub</code>, <code>GitHub Enterprise Server</code>, or <code>Bitbucket</code>, CodeGuru Reviewer creates webhooks in your repository to trigger CodeGuru Reviewer reviews. If you delete these webhooks, reviews of code in your repository cannot be triggered.</p>
    #                        </note>
    #                     </li>
    #                     <li>
    #                        <p>Setting up source code access. This is required for CodeGuru Reviewer to securely clone code in your repository.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Failed</b>: The repository failed to associate or disassociate.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Disassociating</b>: CodeGuru Reviewer is removing the repository's pull request notifications and source code access.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Disassociated</b>: CodeGuru Reviewer successfully disassociated the repository. You can create a new association with this repository if you want to review source code in it later. You can control access to code reviews created in anassociated repository with tags after it has been disassociated. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html">Using tags to control access to associated repositories</a> in the <i>Amazon CodeGuru Reviewer User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute state_reason
    #   <p>A description of why the repository association is in the current state.</p>
    #   @return [String]
    # @!attribute last_updated_time_stamp
    #   <p>The time, in milliseconds since the epoch, when the repository association was last
    #            updated.</p>
    #   @return [Time]
    # @!attribute created_time_stamp
    #   <p>The time, in milliseconds since the epoch, when the repository association was
    #            created.</p>
    #   @return [Time]
    # @!attribute kms_key_details
    #   <p>A <code>KMSKeyDetails</code> object that contains:</p>
    #            <ul>
    #               <li>
    #                  <p>The encryption option for this repository association. It is either owned by Amazon Web Services
    #                  Key Management Service (KMS) (<code>AWS_OWNED_CMK</code>) or customer managed
    #                     (<code>CUSTOMER_MANAGED_CMK</code>).</p>
    #               </li>
    #               <li>
    #                  <p>The ID of the Amazon Web Services KMS key that is associated with this repository
    #                  association.</p>
    #               </li>
    #            </ul>
    #   @return [Types::KMSKeyDetails]
    # @!attribute s3_repository_details
    #   <p>Specifies the name of an S3 bucket and a <code>CodeArtifacts</code> object that contains
    #            the S3 object keys for a source code .zip file and for a build artifacts .zip file that
    #            contains .jar or .class files.</p>
    #   @return [Types::S3RepositoryDetails]
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
      :s3_repository_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RepositoryAssociationState
      ASSOCIATED = 'Associated'
      ASSOCIATING = 'Associating'
      FAILED = 'Failed'
      DISASSOCIATING = 'Disassociating'
      DISASSOCIATED = 'Disassociated'
    end

    # <p>Summary information about a repository association. The <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a> operation returns a list of
    #             <code>RepositoryAssociationSummary</code> objects.</p>
    # @!attribute association_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.</p>
    #   @return [String]
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services CodeStar Connections connection. Its format is <code>arn:aws:codestar-connections:region-id:aws-account_id:connection/connection-id</code>. For more information, see <a href="https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html">Connection</a> in the <i>Amazon Web Services CodeStar Connections API Reference</i>.</p>
    #   @return [String]
    # @!attribute last_updated_time_stamp
    #   <p>The time, in milliseconds since the epoch, since the repository association was last
    #            updated.</p>
    #   @return [Time]
    # @!attribute association_id
    #   <p>The repository association ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the repository association.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the repository. For an Amazon Web Services CodeCommit repository, this is the Amazon Web Services account ID of the 
    #         account that owns the repository. For a GitHub, GitHub Enterprise Server, or Bitbucket repository, this is the username for the account that owns the repository.
    #         For an S3 repository, it can be the username or Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The provider type of the repository association.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the repository association.</p>
    #            <p>The valid repository association states are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Associated</b>: The repository association is complete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Associating</b>: CodeGuru Reviewer is:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Setting up pull request notifications. This is required 
    #                        for pull requests to trigger a CodeGuru Reviewer review.</p>
    #                        <note>
    #                           <p>If your repository <code>ProviderType</code> is <code>GitHub</code>, <code>GitHub Enterprise Server</code>, or <code>Bitbucket</code>, CodeGuru Reviewer creates webhooks in your repository to trigger CodeGuru Reviewer reviews. If you delete these webhooks, reviews of code in your repository cannot be triggered.</p>
    #                        </note>
    #                     </li>
    #                     <li>
    #                        <p>Setting up source code access. This is required for CodeGuru Reviewer to securely clone code in your repository.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Failed</b>: The repository failed to associate or disassociate.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Disassociating</b>: CodeGuru Reviewer is removing the repository's pull request notifications and source code access.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Disassociated</b>: CodeGuru Reviewer successfully disassociated the repository. You can create a new association with this repository if you want to review source code in it later. You can control access to code reviews created in anassociated repository with tags after it has been disassociated. For more information, see <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html">Using tags to control access to associated repositories</a> in the <i>Amazon CodeGuru Reviewer User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class RepositoryAssociationSummary < Struct.new(
      :association_arn,
      :connection_arn,
      :last_updated_time_stamp,
      :association_id,
      :name,
      :owner,
      :provider_type,
      :state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType">SourceCodeType</a> that specifies the tip of a branch in an associated
    #          repository.</p>
    # @!attribute branch_name
    #   <p>The name of the branch in an associated repository. The
    #               <code>RepositoryHeadSourceCodeType</code> specifies the tip of this branch.</p>
    #   @return [String]
    class RepositoryHeadSourceCodeType < Struct.new(
      :branch_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata that is associated with a code review. This applies to both pull request and
    #          repository analysis code reviews.</p>
    # @!attribute request_id
    #   <p>The ID of the request. This is required for a pull request code review.</p>
    #   @return [String]
    # @!attribute requester
    #   <p>An identifier, such as a name or account ID, that is associated with the requester. The
    #               <code>Requester</code> is used to capture the <code>author/actor</code> name of the
    #            event request.</p>
    #   @return [String]
    # @!attribute event_info
    #   <p>Information about the event associated with a code review.</p>
    #   @return [Types::EventInfo]
    # @!attribute vendor_name
    #   <p>The name of the repository vendor used to upload code to an S3 bucket for a CI/CD code
    #            review. For example, if code and artifacts are uploaded to an S3 bucket for a CI/CD code
    #            review by GitHub scripts from a GitHub repository, then the repository association's
    #               <code>ProviderType</code> is <code>S3Bucket</code> and the CI/CD repository vendor name
    #            is GitHub. For more information, see the definition for <code>ProviderType</code> in <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a>.</p>
    #   @return [String]
    class RequestMetadata < Struct.new(
      :request_id,
      :requester,
      :event_info,
      :vendor_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The resource specified in the request was not found. </p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Metadata about a rule. Rule metadata includes an ID, a name, a list of tags, and a short and long description. CodeGuru Reviewer uses rules to analyze code. A rule's recommendation is included in analysis results if code is detected that violates the rule.</p>
    # @!attribute rule_id
    #   <p>The ID of the rule.</p>
    #   @return [String]
    # @!attribute rule_name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute short_description
    #   <p>A short description of the rule.</p>
    #   @return [String]
    # @!attribute long_description
    #   <p>A long description of the rule.</p>
    #   @return [String]
    # @!attribute rule_tags
    #   <p>Tags that are associated with the rule.</p>
    #   @return [Array<String>]
    class RuleMetadata < Struct.new(
      :rule_id,
      :rule_name,
      :short_description,
      :long_description,
      :rule_tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about an associated repository in an S3 bucket. The associated repository
    #          contains a source code .zip file and a build artifacts .zip file that contains .jar or
    #          .class files.</p>
    # @!attribute name
    #   <p>The name of the repository when the <code>ProviderType</code> is
    #            <code>S3Bucket</code>.</p>
    #   @return [String]
    # @!attribute details
    #   <p>An <code>S3RepositoryDetails</code> object that specifies the name of an S3 bucket and a <code>CodeArtifacts</code> object. The <code>CodeArtifacts</code> object includes the S3 object keys for a source code .zip file and for a build artifacts .zip file.</p>
    #   @return [Types::S3RepositoryDetails]
    class S3BucketRepository < Struct.new(
      :name,
      :details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a repository in an S3 bucket.</p>
    # @!attribute name
    #   <p>The name of the repository in the S3 bucket.</p>
    #   @return [String]
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket used for associating a new S3 repository. It must begin with <code>codeguru-reviewer-</code>. </p>
    #   @return [String]
    class S3Repository < Struct.new(
      :name,
      :bucket_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the name of an S3 bucket and a <code>CodeArtifacts</code> object that contains
    #          the S3 object keys for a source code .zip file and for a build artifacts .zip file that
    #          contains .jar or .class files.</p>
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket used for associating a new S3 repository. It must begin with <code>codeguru-reviewer-</code>. </p>
    #   @return [String]
    # @!attribute code_artifacts
    #   <p>A <code>CodeArtifacts</code> object. The <code>CodeArtifacts</code> object includes the
    #            S3 object key for a source code .zip file and for a build artifacts .zip file that contains
    #            .jar or .class files.</p>
    #   @return [Types::CodeArtifacts]
    class S3RepositoryDetails < Struct.new(
      :bucket_name,
      :code_artifacts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Severity
      INFO = 'Info'
      LOW = 'Low'
      MEDIUM = 'Medium'
      HIGH = 'High'
      CRITICAL = 'Critical'
    end

    # <p>Specifies the source code that is analyzed in a code review.</p>
    # @!attribute commit_diff
    #   <p>A <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType">SourceCodeType</a> that specifies a commit diff created by a pull request on an
    #            associated repository.</p>
    #   @return [Types::CommitDiffSourceCodeType]
    # @!attribute repository_head
    #   <p>A <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType">SourceCodeType</a> that specifies the tip of a branch in an associated
    #            repository.</p>
    #   @return [Types::RepositoryHeadSourceCodeType]
    # @!attribute branch_diff
    #   <p>A type of <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType">SourceCodeType</a> that
    #            specifies a source branch name and a destination branch name in an associated
    #            repository.</p>
    #   @return [Types::BranchDiffSourceCodeType]
    # @!attribute s3_bucket_repository
    #   <p>Information about an associated repository in an S3 bucket that includes its name and an <code>S3RepositoryDetails</code> object. The <code>S3RepositoryDetails</code> object includes the name of an S3 bucket, an S3 key for a source code .zip file, and an S3 key for a build artifacts .zip file. <code>S3BucketRepository</code> is required in <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType">SourceCodeType</a> for <code>S3BucketRepository</code> based code reviews.</p>
    #   @return [Types::S3BucketRepository]
    # @!attribute request_metadata
    #   <p>Metadata that is associated with a code review. This applies to any type of code review
    #            supported by CodeGuru Reviewer. The <code>RequestMetadaa</code> field captures any event metadata. For
    #            example, it might capture metadata associated with an event trigger, such as a push or a
    #            pull request.</p>
    #   @return [Types::RequestMetadata]
    class SourceCodeType < Struct.new(
      :commit_diff,
      :repository_head,
      :branch_diff,
      :s3_bucket_repository,
      :request_metadata,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of key-value pairs used to tag an associated repository. A tag is a custom attribute label with two parts:</p>
    #            <ul>
    #               <li>
    #                  <p>A <i>tag key</i> (for example, <code>CostCenter</code>,
    #   					<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
    #   					keys are case sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>An optional field known as a <i>tag value</i> (for example,
    #   					<code>111122223333</code>, <code>Production</code>, or a team name).
    #   					Omitting the tag value is the same as using an empty string. Like tag keys, tag
    #   					values are case sensitive.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a third-party source repository connected to CodeGuru Reviewer.</p>
    # @!attribute name
    #   <p>The name of the third party source repository.</p>
    #   @return [String]
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services CodeStar Connections connection. Its format is <code>arn:aws:codestar-connections:region-id:aws-account_id:connection/connection-id</code>. For more information, see <a href="https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html">Connection</a> in the <i>Amazon Web Services CodeStar Connections API Reference</i>.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the repository. For a GitHub, GitHub Enterprise, or Bitbucket repository,
    #            this is the username for the account that owns the repository. For an S3 repository, this
    #            can be the username or Amazon Web Services account ID </p>
    #   @return [String]
    class ThirdPartySourceRepository < Struct.new(
      :name,
      :connection_arn,
      :owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Type
      PULL_REQUEST = 'PullRequest'
      REPOSITORY_ANALYSIS = 'RepositoryAnalysis'
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html">RepositoryAssociation</a> object. You can retrieve this ARN by calling <a href="https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html">ListRepositoryAssociations</a>.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of the keys for each tag you want to remove from an associated repository.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the specified constraints.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module VendorName
      GITHUB = 'GitHub'
      GITLAB = 'GitLab'
      NATIVE_S3 = 'NativeS3'
    end

  end
end
