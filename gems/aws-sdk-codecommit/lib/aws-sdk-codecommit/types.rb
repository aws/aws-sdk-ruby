# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeCommit
  module Types

    # Represents the input of a batch get repositories operation.
    #
    # @note When making an API call, you may pass BatchGetRepositoriesInput
    #   data as a hash:
    #
    #       {
    #         repository_names: ["RepositoryName"], # required
    #       }
    #
    # @!attribute [rw] repository_names
    #   The names of the repositories to get information about.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchGetRepositoriesInput AWS API Documentation
    #
    class BatchGetRepositoriesInput < Struct.new(
      :repository_names)
      include Aws::Structure
    end

    # Represents the output of a batch get repositories operation.
    #
    # @!attribute [rw] repositories
    #   A list of repositories returned by the batch get repositories
    #   operation.
    #   @return [Array<Types::RepositoryMetadata>]
    #
    # @!attribute [rw] repositories_not_found
    #   Returns a list of repository names for which information could not
    #   be found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchGetRepositoriesOutput AWS API Documentation
    #
    class BatchGetRepositoriesOutput < Struct.new(
      :repositories,
      :repositories_not_found)
      include Aws::Structure
    end

    # Returns information about a specific Git blob object.
    #
    # @!attribute [rw] blob_id
    #   The full ID of the blob.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the blob and any associated file name, if any.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The file mode permissions of the blob. File mode permission codes
    #   include:
    #
    #   * `100644` indicates read/write
    #
    #   * `100755` indicates read/write/execute
    #
    #   * `160000` indicates a submodule
    #
    #   * `120000` indicates a symlink
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BlobMetadata AWS API Documentation
    #
    class BlobMetadata < Struct.new(
      :blob_id,
      :path,
      :mode)
      include Aws::Structure
    end

    # Returns information about a branch.
    #
    # @!attribute [rw] branch_name
    #   The name of the branch.
    #   @return [String]
    #
    # @!attribute [rw] commit_id
    #   The ID of the last commit made to the branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BranchInfo AWS API Documentation
    #
    class BranchInfo < Struct.new(
      :branch_name,
      :commit_id)
      include Aws::Structure
    end

    # Returns information about a specific comment.
    #
    # @!attribute [rw] comment_id
    #   The system-generated comment ID.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the comment.
    #   @return [String]
    #
    # @!attribute [rw] in_reply_to
    #   The ID of the comment for which this comment is a reply, if any.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   The date and time the comment was created, in timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time the comment was most recently modified, in
    #   timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] author_arn
    #   The Amazon Resource Name (ARN) of the person who posted the comment.
    #   @return [String]
    #
    # @!attribute [rw] deleted
    #   A Boolean value indicating whether the comment has been deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] client_request_token
    #   A unique, client-generated idempotency token that when provided in a
    #   request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request will return information about the
    #   initial request that used that token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/Comment AWS API Documentation
    #
    class Comment < Struct.new(
      :comment_id,
      :content,
      :in_reply_to,
      :creation_date,
      :last_modified_date,
      :author_arn,
      :deleted,
      :client_request_token)
      include Aws::Structure
    end

    # Returns information about comments on the comparison between two
    # commits.
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the compared commits.
    #   @return [String]
    #
    # @!attribute [rw] before_commit_id
    #   The full commit ID of the commit used to establish the 'before' of
    #   the comparison.
    #   @return [String]
    #
    # @!attribute [rw] after_commit_id
    #   The full commit ID of the commit used to establish the 'after' of
    #   the comparison.
    #   @return [String]
    #
    # @!attribute [rw] before_blob_id
    #   The full blob ID of the commit used to establish the 'before' of
    #   the comparison.
    #   @return [String]
    #
    # @!attribute [rw] after_blob_id
    #   The full blob ID of the commit used to establish the 'after' of
    #   the comparison.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Location information about the comment on the comparison, including
    #   the file name, line number, and whether the version of the file
    #   where the comment was made is 'BEFORE' or 'AFTER'.
    #   @return [Types::Location]
    #
    # @!attribute [rw] comments
    #   An array of comment objects. Each comment object contains
    #   information about a comment on the comparison between commits.
    #   @return [Array<Types::Comment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CommentsForComparedCommit AWS API Documentation
    #
    class CommentsForComparedCommit < Struct.new(
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :before_blob_id,
      :after_blob_id,
      :location,
      :comments)
      include Aws::Structure
    end

    # Returns information about comments on a pull request.
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the pull request.
    #   @return [String]
    #
    # @!attribute [rw] before_commit_id
    #   The full commit ID of the commit that was the tip of the destination
    #   branch when the pull request was created. This commit will be
    #   superceded by the after commit in the source branch when and if you
    #   merge the source branch into the destination branch.
    #   @return [String]
    #
    # @!attribute [rw] after_commit_id
    #   he full commit ID of the commit that was the tip of the source
    #   branch at the time the comment was made.
    #   @return [String]
    #
    # @!attribute [rw] before_blob_id
    #   The full blob ID of the file on which you want to comment on the
    #   destination commit.
    #   @return [String]
    #
    # @!attribute [rw] after_blob_id
    #   The full blob ID of the file on which you want to comment on the
    #   source commit.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Location information about the comment on the pull request,
    #   including the file name, line number, and whether the version of the
    #   file where the comment was made is 'BEFORE' (destination branch)
    #   or 'AFTER' (source branch).
    #   @return [Types::Location]
    #
    # @!attribute [rw] comments
    #   An array of comment objects. Each comment object contains
    #   information about a comment on the pull request.
    #   @return [Array<Types::Comment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CommentsForPullRequest AWS API Documentation
    #
    class CommentsForPullRequest < Struct.new(
      :pull_request_id,
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :before_blob_id,
      :after_blob_id,
      :location,
      :comments)
      include Aws::Structure
    end

    # Returns information about a specific commit.
    #
    # @!attribute [rw] commit_id
    #   The full SHA of the specified commit.
    #   @return [String]
    #
    # @!attribute [rw] tree_id
    #   Tree information for the specified commit.
    #   @return [String]
    #
    # @!attribute [rw] parents
    #   A list of parent commits for the specified commit. Each parent
    #   commit ID is the full commit ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] message
    #   The commit message associated with the specified commit.
    #   @return [String]
    #
    # @!attribute [rw] author
    #   Information about the author of the specified commit. Information
    #   includes the date in timestamp format with GMT offset, the name of
    #   the author, and the email address for the author, as configured in
    #   Git.
    #   @return [Types::UserInfo]
    #
    # @!attribute [rw] committer
    #   Information about the person who committed the specified commit,
    #   also known as the committer. Information includes the date in
    #   timestamp format with GMT offset, the name of the committer, and the
    #   email address for the committer, as configured in Git.
    #
    #   For more information about the difference between an author and a
    #   committer in Git, see [Viewing the Commit History][1] in Pro Git by
    #   Scott Chacon and Ben Straub.
    #
    #
    #
    #   [1]: http://git-scm.com/book/ch2-3.html
    #   @return [Types::UserInfo]
    #
    # @!attribute [rw] additional_data
    #   Any additional data associated with the specified commit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/Commit AWS API Documentation
    #
    class Commit < Struct.new(
      :commit_id,
      :tree_id,
      :parents,
      :message,
      :author,
      :committer,
      :additional_data)
      include Aws::Structure
    end

    # Represents the input of a create branch operation.
    #
    # @note When making an API call, you may pass CreateBranchInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         branch_name: "BranchName", # required
    #         commit_id: "CommitId", # required
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository in which you want to create the new
    #   branch.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name of the new branch to create.
    #   @return [String]
    #
    # @!attribute [rw] commit_id
    #   The ID of the commit to point the new branch to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateBranchInput AWS API Documentation
    #
    class CreateBranchInput < Struct.new(
      :repository_name,
      :branch_name,
      :commit_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePullRequestInput
    #   data as a hash:
    #
    #       {
    #         title: "Title", # required
    #         description: "Description",
    #         targets: [ # required
    #           {
    #             repository_name: "RepositoryName", # required
    #             source_reference: "ReferenceName", # required
    #             destination_reference: "ReferenceName",
    #           },
    #         ],
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] title
    #   The title of the pull request. This title will be used to identify
    #   the pull request to other users in the repository.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the pull request.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets for the pull request, including the source of the code
    #   to be reviewed (the source branch), and the destination where the
    #   creator of the pull request intends the code to be merged after the
    #   pull request is closed (the destination branch).
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] client_request_token
    #   A unique, client-generated idempotency token that when provided in a
    #   request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request will return information about the
    #   initial request that used that token.
    #
    #   <note markdown="1"> The AWS SDKs prepopulate client request tokens. If using an AWS SDK,
    #   you do not have to generate an idempotency token, as this will be
    #   done for you.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreatePullRequestInput AWS API Documentation
    #
    class CreatePullRequestInput < Struct.new(
      :title,
      :description,
      :targets,
      :client_request_token)
      include Aws::Structure
    end

    # @!attribute [rw] pull_request
    #   Information about the newly created pull request.
    #   @return [Types::PullRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreatePullRequestOutput AWS API Documentation
    #
    class CreatePullRequestOutput < Struct.new(
      :pull_request)
      include Aws::Structure
    end

    # Represents the input of a create repository operation.
    #
    # @note When making an API call, you may pass CreateRepositoryInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         repository_description: "RepositoryDescription",
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the new repository to be created.
    #
    #   <note markdown="1"> The repository name must be unique across the calling AWS account.
    #   In addition, repository names are limited to 100 alphanumeric, dash,
    #   and underscore characters, and cannot include certain characters.
    #   For a full description of the limits on repository names, see
    #   [Limits][1] in the AWS CodeCommit User Guide. The suffix ".git" is
    #   prohibited.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html
    #   @return [String]
    #
    # @!attribute [rw] repository_description
    #   A comment or description about the new repository.
    #
    #   <note markdown="1"> The description field for a repository accepts all HTML characters
    #   and all valid Unicode characters. Applications that do not
    #   HTML-encode the description and display it in a web page could
    #   expose users to potentially malicious code. Make sure that you
    #   HTML-encode the description field in any application that uses this
    #   API to display the repository description on a web page.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateRepositoryInput AWS API Documentation
    #
    class CreateRepositoryInput < Struct.new(
      :repository_name,
      :repository_description)
      include Aws::Structure
    end

    # Represents the output of a create repository operation.
    #
    # @!attribute [rw] repository_metadata
    #   Information about the newly created repository.
    #   @return [Types::RepositoryMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateRepositoryOutput AWS API Documentation
    #
    class CreateRepositoryOutput < Struct.new(
      :repository_metadata)
      include Aws::Structure
    end

    # Represents the input of a delete branch operation.
    #
    # @note When making an API call, you may pass DeleteBranchInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         branch_name: "BranchName", # required
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the branch to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name of the branch to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteBranchInput AWS API Documentation
    #
    class DeleteBranchInput < Struct.new(
      :repository_name,
      :branch_name)
      include Aws::Structure
    end

    # Represents the output of a delete branch operation.
    #
    # @!attribute [rw] deleted_branch
    #   Information about the branch deleted by the operation, including the
    #   branch name and the commit ID that was the tip of the branch.
    #   @return [Types::BranchInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteBranchOutput AWS API Documentation
    #
    class DeleteBranchOutput < Struct.new(
      :deleted_branch)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCommentContentInput
    #   data as a hash:
    #
    #       {
    #         comment_id: "CommentId", # required
    #       }
    #
    # @!attribute [rw] comment_id
    #   The unique, system-generated ID of the comment. To get this ID, use
    #   GetCommentsForComparedCommit or GetCommentsForPullRequest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteCommentContentInput AWS API Documentation
    #
    class DeleteCommentContentInput < Struct.new(
      :comment_id)
      include Aws::Structure
    end

    # @!attribute [rw] comment
    #   Information about the comment you just deleted.
    #   @return [Types::Comment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteCommentContentOutput AWS API Documentation
    #
    class DeleteCommentContentOutput < Struct.new(
      :comment)
      include Aws::Structure
    end

    # Represents the input of a delete repository operation.
    #
    # @note When making an API call, you may pass DeleteRepositoryInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteRepositoryInput AWS API Documentation
    #
    class DeleteRepositoryInput < Struct.new(
      :repository_name)
      include Aws::Structure
    end

    # Represents the output of a delete repository operation.
    #
    # @!attribute [rw] repository_id
    #   The ID of the repository that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteRepositoryOutput AWS API Documentation
    #
    class DeleteRepositoryOutput < Struct.new(
      :repository_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePullRequestEventsInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         pull_request_event_type: "PULL_REQUEST_CREATED", # accepts PULL_REQUEST_CREATED, PULL_REQUEST_STATUS_CHANGED, PULL_REQUEST_SOURCE_REFERENCE_UPDATED, PULL_REQUEST_MERGE_STATE_CHANGED
    #         actor_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #   @return [String]
    #
    # @!attribute [rw] pull_request_event_type
    #   Optional. The pull request event type about which you want to return
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] actor_arn
    #   The Amazon Resource Name (ARN) of the user whose actions resulted in
    #   the event. Examples include updating the pull request with
    #   additional commits or changing the status of a pull request.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-negative integer used to limit the number of returned results.
    #   The default is 100 events, which is also the maximum number of
    #   events that can be returned in a result.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DescribePullRequestEventsInput AWS API Documentation
    #
    class DescribePullRequestEventsInput < Struct.new(
      :pull_request_id,
      :pull_request_event_type,
      :actor_arn,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] pull_request_events
    #   Information about the pull request events.
    #   @return [Array<Types::PullRequestEvent>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that can be used in a request to return the
    #   next batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DescribePullRequestEventsOutput AWS API Documentation
    #
    class DescribePullRequestEventsOutput < Struct.new(
      :pull_request_events,
      :next_token)
      include Aws::Structure
    end

    # Returns information about a set of differences for a commit specifier.
    #
    # @!attribute [rw] before_blob
    #   Information about a `beforeBlob` data type object, including the ID,
    #   the file mode permission code, and the path.
    #   @return [Types::BlobMetadata]
    #
    # @!attribute [rw] after_blob
    #   Information about an `afterBlob` data type object, including the ID,
    #   the file mode permission code, and the path.
    #   @return [Types::BlobMetadata]
    #
    # @!attribute [rw] change_type
    #   Whether the change type of the difference is an addition (A),
    #   deletion (D), or modification (M).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/Difference AWS API Documentation
    #
    class Difference < Struct.new(
      :before_blob,
      :after_blob,
      :change_type)
      include Aws::Structure
    end

    # Represents the input of a get blob operation.
    #
    # @note When making an API call, you may pass GetBlobInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         blob_id: "ObjectId", # required
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the blob.
    #   @return [String]
    #
    # @!attribute [rw] blob_id
    #   The ID of the blob, which is its SHA-1 pointer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetBlobInput AWS API Documentation
    #
    class GetBlobInput < Struct.new(
      :repository_name,
      :blob_id)
      include Aws::Structure
    end

    # Represents the output of a get blob operation.
    #
    # @!attribute [rw] content
    #   The content of the blob, usually a file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetBlobOutput AWS API Documentation
    #
    class GetBlobOutput < Struct.new(
      :content)
      include Aws::Structure
    end

    # Represents the input of a get branch operation.
    #
    # @note When making an API call, you may pass GetBranchInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName",
    #         branch_name: "BranchName",
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the branch for which you
    #   want to retrieve information.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name of the branch for which you want to retrieve information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetBranchInput AWS API Documentation
    #
    class GetBranchInput < Struct.new(
      :repository_name,
      :branch_name)
      include Aws::Structure
    end

    # Represents the output of a get branch operation.
    #
    # @!attribute [rw] branch
    #   The name of the branch.
    #   @return [Types::BranchInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetBranchOutput AWS API Documentation
    #
    class GetBranchOutput < Struct.new(
      :branch)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCommentInput
    #   data as a hash:
    #
    #       {
    #         comment_id: "CommentId", # required
    #       }
    #
    # @!attribute [rw] comment_id
    #   The unique, system-generated ID of the comment. To get this ID, use
    #   GetCommentsForComparedCommit or GetCommentsForPullRequest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommentInput AWS API Documentation
    #
    class GetCommentInput < Struct.new(
      :comment_id)
      include Aws::Structure
    end

    # @!attribute [rw] comment
    #   The contents of the comment.
    #   @return [Types::Comment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommentOutput AWS API Documentation
    #
    class GetCommentOutput < Struct.new(
      :comment)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCommentsForComparedCommitInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         before_commit_id: "CommitId",
    #         after_commit_id: "CommitId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where you want to compare commits.
    #   @return [String]
    #
    # @!attribute [rw] before_commit_id
    #   To establish the directionality of the comparison, the full commit
    #   ID of the 'before' commit.
    #   @return [String]
    #
    # @!attribute [rw] after_commit_id
    #   To establish the directionality of the comparison, the full commit
    #   ID of the 'after' commit.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-negative integer used to limit the number of returned results.
    #   The default is 100 comments, and is configurable up to 500.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommentsForComparedCommitInput AWS API Documentation
    #
    class GetCommentsForComparedCommitInput < Struct.new(
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] comments_for_compared_commit_data
    #   A list of comment objects on the compared commit.
    #   @return [Array<Types::CommentsForComparedCommit>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that can be used in a request to return the
    #   next batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommentsForComparedCommitOutput AWS API Documentation
    #
    class GetCommentsForComparedCommitOutput < Struct.new(
      :comments_for_compared_commit_data,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCommentsForPullRequestInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         repository_name: "RepositoryName",
    #         before_commit_id: "CommitId",
    #         after_commit_id: "CommitId",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the pull request.
    #   @return [String]
    #
    # @!attribute [rw] before_commit_id
    #   The full commit ID of the commit in the destination branch that was
    #   the tip of the branch at the time the pull request was created.
    #   @return [String]
    #
    # @!attribute [rw] after_commit_id
    #   The full commit ID of the commit in the source branch that was the
    #   tip of the branch at the time the comment was made.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-negative integer used to limit the number of returned results.
    #   The default is 100 comments. You can return up to 500 comments with
    #   a single request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommentsForPullRequestInput AWS API Documentation
    #
    class GetCommentsForPullRequestInput < Struct.new(
      :pull_request_id,
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] comments_for_pull_request_data
    #   An array of comment objects on the pull request.
    #   @return [Array<Types::CommentsForPullRequest>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that can be used in a request to return the
    #   next batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommentsForPullRequestOutput AWS API Documentation
    #
    class GetCommentsForPullRequestOutput < Struct.new(
      :comments_for_pull_request_data,
      :next_token)
      include Aws::Structure
    end

    # Represents the input of a get commit operation.
    #
    # @note When making an API call, you may pass GetCommitInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         commit_id: "ObjectId", # required
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to which the commit was made.
    #   @return [String]
    #
    # @!attribute [rw] commit_id
    #   The commit ID. Commit IDs are the full SHA of the commit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommitInput AWS API Documentation
    #
    class GetCommitInput < Struct.new(
      :repository_name,
      :commit_id)
      include Aws::Structure
    end

    # Represents the output of a get commit operation.
    #
    # @!attribute [rw] commit
    #   A commit data type object that contains information about the
    #   specified commit.
    #   @return [Types::Commit]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommitOutput AWS API Documentation
    #
    class GetCommitOutput < Struct.new(
      :commit)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDifferencesInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         before_commit_specifier: "CommitName",
    #         after_commit_specifier: "CommitName", # required
    #         before_path: "Path",
    #         after_path: "Path",
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where you want to get differences.
    #   @return [String]
    #
    # @!attribute [rw] before_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit. For example, the full commit ID. Optional. If not
    #   specified, all changes prior to the `afterCommitSpecifier` value
    #   will be shown. If you do not use `beforeCommitSpecifier` in your
    #   request, consider limiting the results with `maxResults`.
    #   @return [String]
    #
    # @!attribute [rw] after_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit.
    #   @return [String]
    #
    # @!attribute [rw] before_path
    #   The file path in which to check for differences. Limits the results
    #   to this path. Can also be used to specify the previous name of a
    #   directory or folder. If `beforePath` and `afterPath` are not
    #   specified, differences will be shown for all paths.
    #   @return [String]
    #
    # @!attribute [rw] after_path
    #   The file path in which to check differences. Limits the results to
    #   this path. Can also be used to specify the changed name of a
    #   directory or folder, if it has changed. If not specified,
    #   differences will be shown for all paths.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-negative integer used to limit the number of returned results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetDifferencesInput AWS API Documentation
    #
    class GetDifferencesInput < Struct.new(
      :repository_name,
      :before_commit_specifier,
      :after_commit_specifier,
      :before_path,
      :after_path,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] differences
    #   A differences data type object that contains information about the
    #   differences, including whether the difference is added, modified, or
    #   deleted (A, D, M).
    #   @return [Array<Types::Difference>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that can be used in a request to return the
    #   next batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetDifferencesOutput AWS API Documentation
    #
    class GetDifferencesOutput < Struct.new(
      :differences,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMergeConflictsInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         destination_commit_specifier: "CommitName", # required
    #         source_commit_specifier: "CommitName", # required
    #         merge_option: "FAST_FORWARD_MERGE", # required, accepts FAST_FORWARD_MERGE
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where the pull request was created.
    #   @return [String]
    #
    # @!attribute [rw] destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit. For example, a branch name or a full commit ID.
    #   @return [String]
    #
    # @!attribute [rw] source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit. For example, a branch name or a full commit ID.
    #   @return [String]
    #
    # @!attribute [rw] merge_option
    #   The merge option or strategy you want to use to merge the code. The
    #   only valid value is FAST\_FORWARD\_MERGE.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetMergeConflictsInput AWS API Documentation
    #
    class GetMergeConflictsInput < Struct.new(
      :repository_name,
      :destination_commit_specifier,
      :source_commit_specifier,
      :merge_option)
      include Aws::Structure
    end

    # @!attribute [rw] mergeable
    #   A Boolean value that indicates whether the code is mergable by the
    #   specified merge option.
    #   @return [Boolean]
    #
    # @!attribute [rw] destination_commit_id
    #   The commit ID of the destination commit specifier that was used in
    #   the merge evaluation.
    #   @return [String]
    #
    # @!attribute [rw] source_commit_id
    #   The commit ID of the source commit specifier that was used in the
    #   merge evaluation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetMergeConflictsOutput AWS API Documentation
    #
    class GetMergeConflictsOutput < Struct.new(
      :mergeable,
      :destination_commit_id,
      :source_commit_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPullRequestInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #       }
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetPullRequestInput AWS API Documentation
    #
    class GetPullRequestInput < Struct.new(
      :pull_request_id)
      include Aws::Structure
    end

    # @!attribute [rw] pull_request
    #   Information about the specified pull request.
    #   @return [Types::PullRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetPullRequestOutput AWS API Documentation
    #
    class GetPullRequestOutput < Struct.new(
      :pull_request)
      include Aws::Structure
    end

    # Represents the input of a get repository operation.
    #
    # @note When making an API call, you may pass GetRepositoryInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to get information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetRepositoryInput AWS API Documentation
    #
    class GetRepositoryInput < Struct.new(
      :repository_name)
      include Aws::Structure
    end

    # Represents the output of a get repository operation.
    #
    # @!attribute [rw] repository_metadata
    #   Information about the repository.
    #   @return [Types::RepositoryMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetRepositoryOutput AWS API Documentation
    #
    class GetRepositoryOutput < Struct.new(
      :repository_metadata)
      include Aws::Structure
    end

    # Represents the input of a get repository triggers operation.
    #
    # @note When making an API call, you may pass GetRepositoryTriggersInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository for which the trigger is configured.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetRepositoryTriggersInput AWS API Documentation
    #
    class GetRepositoryTriggersInput < Struct.new(
      :repository_name)
      include Aws::Structure
    end

    # Represents the output of a get repository triggers operation.
    #
    # @!attribute [rw] configuration_id
    #   The system-generated unique ID for the trigger.
    #   @return [String]
    #
    # @!attribute [rw] triggers
    #   The JSON block of configuration information for each trigger.
    #   @return [Array<Types::RepositoryTrigger>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetRepositoryTriggersOutput AWS API Documentation
    #
    class GetRepositoryTriggersOutput < Struct.new(
      :configuration_id,
      :triggers)
      include Aws::Structure
    end

    # Represents the input of a list branches operation.
    #
    # @note When making an API call, you may pass ListBranchesInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the branches.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that allows the operation to batch the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListBranchesInput AWS API Documentation
    #
    class ListBranchesInput < Struct.new(
      :repository_name,
      :next_token)
      include Aws::Structure
    end

    # Represents the output of a list branches operation.
    #
    # @!attribute [rw] branches
    #   The list of branch names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that returns the batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListBranchesOutput AWS API Documentation
    #
    class ListBranchesOutput < Struct.new(
      :branches,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPullRequestsInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         author_arn: "Arn",
    #         pull_request_status: "OPEN", # accepts OPEN, CLOSED
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository for which you want to list pull requests.
    #   @return [String]
    #
    # @!attribute [rw] author_arn
    #   Optional. The Amazon Resource Name (ARN) of the user who created the
    #   pull request. If used, this filters the results to pull requests
    #   created by that user.
    #   @return [String]
    #
    # @!attribute [rw] pull_request_status
    #   Optional. The status of the pull request. If used, this refines the
    #   results to the pull requests that match the specified status.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-negative integer used to limit the number of returned results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListPullRequestsInput AWS API Documentation
    #
    class ListPullRequestsInput < Struct.new(
      :repository_name,
      :author_arn,
      :pull_request_status,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] pull_request_ids
    #   The system-generated IDs of the pull requests.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListPullRequestsOutput AWS API Documentation
    #
    class ListPullRequestsOutput < Struct.new(
      :pull_request_ids,
      :next_token)
      include Aws::Structure
    end

    # Represents the input of a list repositories operation.
    #
    # @note When making an API call, you may pass ListRepositoriesInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         sort_by: "repositoryName", # accepts repositoryName, lastModifiedDate
    #         order: "ascending", # accepts ascending, descending
    #       }
    #
    # @!attribute [rw] next_token
    #   An enumeration token that allows the operation to batch the results
    #   of the operation. Batch sizes are 1,000 for list repository
    #   operations. When the client sends the token back to AWS CodeCommit,
    #   another page of 1,000 records is retrieved.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The criteria used to sort the results of a list repositories
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order in which to sort the results of a list repositories
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListRepositoriesInput AWS API Documentation
    #
    class ListRepositoriesInput < Struct.new(
      :next_token,
      :sort_by,
      :order)
      include Aws::Structure
    end

    # Represents the output of a list repositories operation.
    #
    # @!attribute [rw] repositories
    #   Lists the repositories called by the list repositories operation.
    #   @return [Array<Types::RepositoryNameIdPair>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that allows the operation to batch the results
    #   of the operation. Batch sizes are 1,000 for list repository
    #   operations. When the client sends the token back to AWS CodeCommit,
    #   another page of 1,000 records is retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListRepositoriesOutput AWS API Documentation
    #
    class ListRepositoriesOutput < Struct.new(
      :repositories,
      :next_token)
      include Aws::Structure
    end

    # Returns information about the location of a change or comment in the
    # comparison between two commits or a pull request.
    #
    # @note When making an API call, you may pass Location
    #   data as a hash:
    #
    #       {
    #         file_path: "Path",
    #         file_position: 1,
    #         relative_file_version: "BEFORE", # accepts BEFORE, AFTER
    #       }
    #
    # @!attribute [rw] file_path
    #   The name of the file being compared, including its extension and
    #   subdirectory, if any.
    #   @return [String]
    #
    # @!attribute [rw] file_position
    #   The position of a change within a compared file, in line number
    #   format.
    #   @return [Integer]
    #
    # @!attribute [rw] relative_file_version
    #   In a comparison of commits or a pull request, whether the change is
    #   in the 'before' or 'after' of that comparison.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/Location AWS API Documentation
    #
    class Location < Struct.new(
      :file_path,
      :file_position,
      :relative_file_version)
      include Aws::Structure
    end

    # Returns information about a merge or potential merge between a source
    # reference and a destination reference in a pull request.
    #
    # @!attribute [rw] is_merged
    #   A Boolean value indicating whether the merge has been made.
    #   @return [Boolean]
    #
    # @!attribute [rw] merged_by
    #   The Amazon Resource Name (ARN) of the user who merged the branches.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergeMetadata AWS API Documentation
    #
    class MergeMetadata < Struct.new(
      :is_merged,
      :merged_by)
      include Aws::Structure
    end

    # @note When making an API call, you may pass MergePullRequestByFastForwardInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         repository_name: "RepositoryName", # required
    #         source_commit_id: "CommitId",
    #       }
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where the pull request was created.
    #   @return [String]
    #
    # @!attribute [rw] source_commit_id
    #   The full commit ID of the original or updated commit in the pull
    #   request source branch. Pass this value if you want an exception
    #   thrown if the current commit ID of the tip of the source branch does
    #   not match this commit ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergePullRequestByFastForwardInput AWS API Documentation
    #
    class MergePullRequestByFastForwardInput < Struct.new(
      :pull_request_id,
      :repository_name,
      :source_commit_id)
      include Aws::Structure
    end

    # @!attribute [rw] pull_request
    #   Information about the specified pull request, including information
    #   about the merge.
    #   @return [Types::PullRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergePullRequestByFastForwardOutput AWS API Documentation
    #
    class MergePullRequestByFastForwardOutput < Struct.new(
      :pull_request)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PostCommentForComparedCommitInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         before_commit_id: "CommitId",
    #         after_commit_id: "CommitId", # required
    #         location: {
    #           file_path: "Path",
    #           file_position: 1,
    #           relative_file_version: "BEFORE", # accepts BEFORE, AFTER
    #         },
    #         content: "Content", # required
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where you want to post a comment on the
    #   comparison between commits.
    #   @return [String]
    #
    # @!attribute [rw] before_commit_id
    #   To establish the directionality of the comparison, the full commit
    #   ID of the 'before' commit.
    #   @return [String]
    #
    # @!attribute [rw] after_commit_id
    #   To establish the directionality of the comparison, the full commit
    #   ID of the 'after' commit.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the comparison where you want to comment.
    #   @return [Types::Location]
    #
    # @!attribute [rw] content
    #   The content of the comment you want to make.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique, client-generated idempotency token that when provided in a
    #   request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request will return information about the
    #   initial request that used that token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PostCommentForComparedCommitInput AWS API Documentation
    #
    class PostCommentForComparedCommitInput < Struct.new(
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :location,
      :content,
      :client_request_token)
      include Aws::Structure
    end

    # @!attribute [rw] repository_name
    #   The name of the repository where you posted a comment on the
    #   comparison between commits.
    #   @return [String]
    #
    # @!attribute [rw] before_commit_id
    #   In the directionality you established, the full commit ID of the
    #   'before' commit.
    #   @return [String]
    #
    # @!attribute [rw] after_commit_id
    #   In the directionality you established, the full commit ID of the
    #   'after' commit.
    #   @return [String]
    #
    # @!attribute [rw] before_blob_id
    #   In the directionality you established, the blob ID of the 'before'
    #   blob.
    #   @return [String]
    #
    # @!attribute [rw] after_blob_id
    #   In the directionality you established, the blob ID of the 'after'
    #   blob.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the comment in the comparison between the two
    #   commits.
    #   @return [Types::Location]
    #
    # @!attribute [rw] comment
    #   The content of the comment you posted.
    #   @return [Types::Comment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PostCommentForComparedCommitOutput AWS API Documentation
    #
    class PostCommentForComparedCommitOutput < Struct.new(
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :before_blob_id,
      :after_blob_id,
      :location,
      :comment)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PostCommentForPullRequestInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         repository_name: "RepositoryName", # required
    #         before_commit_id: "CommitId", # required
    #         after_commit_id: "CommitId", # required
    #         location: {
    #           file_path: "Path",
    #           file_position: 1,
    #           relative_file_version: "BEFORE", # accepts BEFORE, AFTER
    #         },
    #         content: "Content", # required
    #         client_request_token: "ClientRequestToken",
    #       }
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where you want to post a comment on a
    #   pull request.
    #   @return [String]
    #
    # @!attribute [rw] before_commit_id
    #   The full commit ID of the commit in the destination branch that was
    #   the tip of the branch at the time the pull request was created.
    #   @return [String]
    #
    # @!attribute [rw] after_commit_id
    #   The full commit ID of the commit in the source branch that is the
    #   current tip of the branch for the pull request when you post the
    #   comment.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the change where you want to post your comment. If
    #   no location is provided, the comment will be posted as a general
    #   comment on the pull request difference between the before commit ID
    #   and the after commit ID.
    #   @return [Types::Location]
    #
    # @!attribute [rw] content
    #   The content of your comment on the change.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique, client-generated idempotency token that when provided in a
    #   request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request will return information about the
    #   initial request that used that token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PostCommentForPullRequestInput AWS API Documentation
    #
    class PostCommentForPullRequestInput < Struct.new(
      :pull_request_id,
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :location,
      :content,
      :client_request_token)
      include Aws::Structure
    end

    # @!attribute [rw] repository_name
    #   The name of the repository where you posted a comment on a pull
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request.
    #   @return [String]
    #
    # @!attribute [rw] before_commit_id
    #   The full commit ID of the commit in the source branch used to create
    #   the pull request, or in the case of an updated pull request, the
    #   full commit ID of the commit used to update the pull request.
    #   @return [String]
    #
    # @!attribute [rw] after_commit_id
    #   The full commit ID of the commit in the destination branch where the
    #   pull request will be merged.
    #   @return [String]
    #
    # @!attribute [rw] before_blob_id
    #   In the directionality of the pull request, the blob ID of the
    #   'before' blob.
    #   @return [String]
    #
    # @!attribute [rw] after_blob_id
    #   In the directionality of the pull request, the blob ID of the
    #   'after' blob.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the change where you posted your comment.
    #   @return [Types::Location]
    #
    # @!attribute [rw] comment
    #   The content of the comment you posted.
    #   @return [Types::Comment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PostCommentForPullRequestOutput AWS API Documentation
    #
    class PostCommentForPullRequestOutput < Struct.new(
      :repository_name,
      :pull_request_id,
      :before_commit_id,
      :after_commit_id,
      :before_blob_id,
      :after_blob_id,
      :location,
      :comment)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PostCommentReplyInput
    #   data as a hash:
    #
    #       {
    #         in_reply_to: "CommentId", # required
    #         client_request_token: "ClientRequestToken",
    #         content: "Content", # required
    #       }
    #
    # @!attribute [rw] in_reply_to
    #   The system-generated ID of the comment to which you want to reply.
    #   To get this ID, use GetCommentsForComparedCommit or
    #   GetCommentsForPullRequest.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique, client-generated idempotency token that when provided in a
    #   request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request will return information about the
    #   initial request that used that token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The contents of your reply to a comment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PostCommentReplyInput AWS API Documentation
    #
    class PostCommentReplyInput < Struct.new(
      :in_reply_to,
      :client_request_token,
      :content)
      include Aws::Structure
    end

    # @!attribute [rw] comment
    #   Information about the reply to a comment.
    #   @return [Types::Comment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PostCommentReplyOutput AWS API Documentation
    #
    class PostCommentReplyOutput < Struct.new(
      :comment)
      include Aws::Structure
    end

    # Returns information about a pull request.
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The user-defined title of the pull request. This title is displayed
    #   in the list of pull requests to other users of the repository.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The user-defined description of the pull request. This description
    #   can be used to clarify what should be reviewed and other details of
    #   the request.
    #   @return [String]
    #
    # @!attribute [rw] last_activity_date
    #   The day and time of the last user or system activity on the pull
    #   request, in timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date and time the pull request was originally created, in
    #   timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] pull_request_status
    #   The status of the pull request. Pull request status can only change
    #   from `OPEN` to `CLOSED`.
    #   @return [String]
    #
    # @!attribute [rw] author_arn
    #   The Amazon Resource Name (ARN) of the user who created the pull
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] pull_request_targets
    #   The targets of the pull request, including the source branch and
    #   destination branch for the pull request.
    #   @return [Array<Types::PullRequestTarget>]
    #
    # @!attribute [rw] client_request_token
    #   A unique, client-generated idempotency token that when provided in a
    #   request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request will return information about the
    #   initial request that used that token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PullRequest AWS API Documentation
    #
    class PullRequest < Struct.new(
      :pull_request_id,
      :title,
      :description,
      :last_activity_date,
      :creation_date,
      :pull_request_status,
      :author_arn,
      :pull_request_targets,
      :client_request_token)
      include Aws::Structure
    end

    # Metadata about the pull request that is used when comparing the pull
    # request source with its destination.
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where the pull request was created.
    #   @return [String]
    #
    # @!attribute [rw] source_commit_id
    #   The commit ID on the source branch used when the pull request was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] destination_commit_id
    #   The commit ID of the tip of the branch specified as the destination
    #   branch when the pull request was created.
    #   @return [String]
    #
    # @!attribute [rw] merge_base
    #   The commit ID of the most recent commit that the source branch and
    #   the destination branch have in common.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PullRequestCreatedEventMetadata AWS API Documentation
    #
    class PullRequestCreatedEventMetadata < Struct.new(
      :repository_name,
      :source_commit_id,
      :destination_commit_id,
      :merge_base)
      include Aws::Structure
    end

    # Returns information about a pull request event.
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request.
    #   @return [String]
    #
    # @!attribute [rw] event_date
    #   The day and time of the pull request event, in timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] pull_request_event_type
    #   The type of the pull request event, for example a status change
    #   event (PULL\_REQUEST\_STATUS\_CHANGED) or update event
    #   (PULL\_REQUEST\_SOURCE\_REFERENCE\_UPDATED).
    #   @return [String]
    #
    # @!attribute [rw] actor_arn
    #   The Amazon Resource Name (ARN) of the user whose actions resulted in
    #   the event. Examples include updating the pull request with
    #   additional commits or changing the status of a pull request.
    #   @return [String]
    #
    # @!attribute [rw] pull_request_created_event_metadata
    #   Information about the source and destination branches for the pull
    #   request.
    #   @return [Types::PullRequestCreatedEventMetadata]
    #
    # @!attribute [rw] pull_request_status_changed_event_metadata
    #   Information about the change in status for the pull request event.
    #   @return [Types::PullRequestStatusChangedEventMetadata]
    #
    # @!attribute [rw] pull_request_source_reference_updated_event_metadata
    #   Information about the updated source branch for the pull request
    #   event.
    #   @return [Types::PullRequestSourceReferenceUpdatedEventMetadata]
    #
    # @!attribute [rw] pull_request_merged_state_changed_event_metadata
    #   Information about the change in mergability state for the pull
    #   request event.
    #   @return [Types::PullRequestMergedStateChangedEventMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PullRequestEvent AWS API Documentation
    #
    class PullRequestEvent < Struct.new(
      :pull_request_id,
      :event_date,
      :pull_request_event_type,
      :actor_arn,
      :pull_request_created_event_metadata,
      :pull_request_status_changed_event_metadata,
      :pull_request_source_reference_updated_event_metadata,
      :pull_request_merged_state_changed_event_metadata)
      include Aws::Structure
    end

    # Returns information about the change in the merge state for a pull
    # request event.
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where the pull request was created.
    #   @return [String]
    #
    # @!attribute [rw] destination_reference
    #   The name of the branch that the pull request will be merged into.
    #   @return [String]
    #
    # @!attribute [rw] merge_metadata
    #   Information about the merge state change event.
    #   @return [Types::MergeMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PullRequestMergedStateChangedEventMetadata AWS API Documentation
    #
    class PullRequestMergedStateChangedEventMetadata < Struct.new(
      :repository_name,
      :destination_reference,
      :merge_metadata)
      include Aws::Structure
    end

    # Information about an update to the source branch of a pull request.
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where the pull request was updated.
    #   @return [String]
    #
    # @!attribute [rw] before_commit_id
    #   The full commit ID of the commit in the destination branch that was
    #   the tip of the branch at the time the pull request was updated.
    #   @return [String]
    #
    # @!attribute [rw] after_commit_id
    #   The full commit ID of the commit in the source branch that was the
    #   tip of the branch at the time the pull request was updated.
    #   @return [String]
    #
    # @!attribute [rw] merge_base
    #   The commit ID of the most recent commit that the source branch and
    #   the destination branch have in common.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PullRequestSourceReferenceUpdatedEventMetadata AWS API Documentation
    #
    class PullRequestSourceReferenceUpdatedEventMetadata < Struct.new(
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :merge_base)
      include Aws::Structure
    end

    # Information about a change to the status of a pull request.
    #
    # @!attribute [rw] pull_request_status
    #   The changed status of the pull request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PullRequestStatusChangedEventMetadata AWS API Documentation
    #
    class PullRequestStatusChangedEventMetadata < Struct.new(
      :pull_request_status)
      include Aws::Structure
    end

    # Returns information about a pull request target.
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the pull request source and
    #   destination branches.
    #   @return [String]
    #
    # @!attribute [rw] source_reference
    #   The branch of the repository that contains the changes for the pull
    #   request. Also known as the source branch.
    #   @return [String]
    #
    # @!attribute [rw] destination_reference
    #   The branch of the repository where the pull request changes will be
    #   merged into. Also known as the destination branch.
    #   @return [String]
    #
    # @!attribute [rw] destination_commit
    #   The full commit ID that is the tip of the destination branch. This
    #   is the commit where the pull request was or will be merged.
    #   @return [String]
    #
    # @!attribute [rw] merge_base
    #   The commit ID of the most recent commit that the source branch and
    #   the destination branch have in common.
    #   @return [String]
    #
    # @!attribute [rw] source_commit
    #   The full commit ID of the tip of the source branch used to create
    #   the pull request. If the pull request branch is updated by a push
    #   while the pull request is open, the commit ID will change to reflect
    #   the new tip of the branch.
    #   @return [String]
    #
    # @!attribute [rw] merge_metadata
    #   Returns metadata about the state of the merge, including whether the
    #   merge has been made.
    #   @return [Types::MergeMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PullRequestTarget AWS API Documentation
    #
    class PullRequestTarget < Struct.new(
      :repository_name,
      :source_reference,
      :destination_reference,
      :destination_commit,
      :merge_base,
      :source_commit,
      :merge_metadata)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutFileInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         branch_name: "BranchName", # required
    #         file_content: "data", # required
    #         file_path: "Path", # required
    #         file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #         parent_commit_id: "CommitId",
    #         commit_message: "Message",
    #         name: "Name",
    #         email: "Email",
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where you want to add or update the file.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name of the branch where you want to add or update the file. If
    #   this is an empty repository, this branch will be created.
    #   @return [String]
    #
    # @!attribute [rw] file_content
    #   The content of the file, in binary object format.
    #   @return [String]
    #
    # @!attribute [rw] file_path
    #   The name of the file you want to add or update, including the
    #   relative path to the file in the repository.
    #
    #   <note markdown="1"> If the path does not currently exist in the repository, the path
    #   will be created as part of adding the file.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] file_mode
    #   The file mode permissions of the blob. Valid file mode permissions
    #   are listed below.
    #   @return [String]
    #
    # @!attribute [rw] parent_commit_id
    #   The full commit ID of the head commit in the branch where you want
    #   to add or update the file. If this is an empty repository, no commit
    #   ID is required. If this is not an empty repository, a commit ID is
    #   required.
    #
    #   The commit ID must match the ID of the head commit at the time of
    #   the operation, or an error will occur, and the file will not be
    #   added or updated.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   A message about why this file was added or updated. While optional,
    #   adding a message is strongly encouraged in order to provide a more
    #   useful commit history for your repository.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the person adding or updating the file. While optional,
    #   adding a name is strongly encouraged in order to provide a more
    #   useful commit history for your repository.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   An email address for the person adding or updating the file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PutFileInput AWS API Documentation
    #
    class PutFileInput < Struct.new(
      :repository_name,
      :branch_name,
      :file_content,
      :file_path,
      :file_mode,
      :parent_commit_id,
      :commit_message,
      :name,
      :email)
      include Aws::Structure
    end

    # @!attribute [rw] commit_id
    #   The full SHA of the commit that contains this file change.
    #   @return [String]
    #
    # @!attribute [rw] blob_id
    #   The ID of the blob, which is its SHA-1 pointer.
    #   @return [String]
    #
    # @!attribute [rw] tree_id
    #   The full SHA-1 pointer of the tree information for the commit that
    #   contains this file change.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PutFileOutput AWS API Documentation
    #
    class PutFileOutput < Struct.new(
      :commit_id,
      :blob_id,
      :tree_id)
      include Aws::Structure
    end

    # Represents the input ofa put repository triggers operation.
    #
    # @note When making an API call, you may pass PutRepositoryTriggersInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         triggers: [ # required
    #           {
    #             name: "RepositoryTriggerName", # required
    #             destination_arn: "Arn", # required
    #             custom_data: "RepositoryTriggerCustomData",
    #             branches: ["BranchName"],
    #             events: ["all"], # required, accepts all, updateReference, createReference, deleteReference
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where you want to create or update the
    #   trigger.
    #   @return [String]
    #
    # @!attribute [rw] triggers
    #   The JSON block of configuration information for each trigger.
    #   @return [Array<Types::RepositoryTrigger>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PutRepositoryTriggersInput AWS API Documentation
    #
    class PutRepositoryTriggersInput < Struct.new(
      :repository_name,
      :triggers)
      include Aws::Structure
    end

    # Represents the output of a put repository triggers operation.
    #
    # @!attribute [rw] configuration_id
    #   The system-generated unique ID for the create or update operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PutRepositoryTriggersOutput AWS API Documentation
    #
    class PutRepositoryTriggersOutput < Struct.new(
      :configuration_id)
      include Aws::Structure
    end

    # Information about a repository.
    #
    # @!attribute [rw] account_id
    #   The ID of the AWS account associated with the repository.
    #   @return [String]
    #
    # @!attribute [rw] repository_id
    #   The ID of the repository.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository's name.
    #   @return [String]
    #
    # @!attribute [rw] repository_description
    #   A comment or description about the repository.
    #   @return [String]
    #
    # @!attribute [rw] default_branch
    #   The repository's default branch name.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date and time the repository was last modified, in timestamp
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date and time the repository was created, in timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] clone_url_http
    #   The URL to use for cloning the repository over HTTPS.
    #   @return [String]
    #
    # @!attribute [rw] clone_url_ssh
    #   The URL to use for cloning the repository over SSH.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RepositoryMetadata AWS API Documentation
    #
    class RepositoryMetadata < Struct.new(
      :account_id,
      :repository_id,
      :repository_name,
      :repository_description,
      :default_branch,
      :last_modified_date,
      :creation_date,
      :clone_url_http,
      :clone_url_ssh,
      :arn)
      include Aws::Structure
    end

    # Information about a repository name and ID.
    #
    # @!attribute [rw] repository_name
    #   The name associated with the repository.
    #   @return [String]
    #
    # @!attribute [rw] repository_id
    #   The ID associated with the repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RepositoryNameIdPair AWS API Documentation
    #
    class RepositoryNameIdPair < Struct.new(
      :repository_name,
      :repository_id)
      include Aws::Structure
    end

    # Information about a trigger for a repository.
    #
    # @note When making an API call, you may pass RepositoryTrigger
    #   data as a hash:
    #
    #       {
    #         name: "RepositoryTriggerName", # required
    #         destination_arn: "Arn", # required
    #         custom_data: "RepositoryTriggerCustomData",
    #         branches: ["BranchName"],
    #         events: ["all"], # required, accepts all, updateReference, createReference, deleteReference
    #       }
    #
    # @!attribute [rw] name
    #   The name of the trigger.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The ARN of the resource that is the target for a trigger. For
    #   example, the ARN of a topic in Amazon Simple Notification Service
    #   (SNS).
    #   @return [String]
    #
    # @!attribute [rw] custom_data
    #   Any custom data associated with the trigger that will be included in
    #   the information sent to the target of the trigger.
    #   @return [String]
    #
    # @!attribute [rw] branches
    #   The branches that will be included in the trigger configuration. If
    #   you specify an empty array, the trigger will apply to all branches.
    #
    #   <note markdown="1"> While no content is required in the array, you must include the
    #   array itself.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] events
    #   The repository events that will cause the trigger to run actions in
    #   another service, such as sending a notification through Amazon
    #   Simple Notification Service (SNS).
    #
    #   <note markdown="1"> The valid value "all" cannot be used with any other values.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RepositoryTrigger AWS API Documentation
    #
    class RepositoryTrigger < Struct.new(
      :name,
      :destination_arn,
      :custom_data,
      :branches,
      :events)
      include Aws::Structure
    end

    # A trigger failed to run.
    #
    # @!attribute [rw] trigger
    #   The name of the trigger that did not run.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   Additional message information about the trigger that did not run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RepositoryTriggerExecutionFailure AWS API Documentation
    #
    class RepositoryTriggerExecutionFailure < Struct.new(
      :trigger,
      :failure_message)
      include Aws::Structure
    end

    # Returns information about a target for a pull request.
    #
    # @note When making an API call, you may pass Target
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         source_reference: "ReferenceName", # required
    #         destination_reference: "ReferenceName",
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the pull request.
    #   @return [String]
    #
    # @!attribute [rw] source_reference
    #   The branch of the repository that contains the changes for the pull
    #   request. Also known as the source branch.
    #   @return [String]
    #
    # @!attribute [rw] destination_reference
    #   The branch of the repository where the pull request changes will be
    #   merged into. Also known as the destination branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/Target AWS API Documentation
    #
    class Target < Struct.new(
      :repository_name,
      :source_reference,
      :destination_reference)
      include Aws::Structure
    end

    # Represents the input of a test repository triggers operation.
    #
    # @note When making an API call, you may pass TestRepositoryTriggersInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         triggers: [ # required
    #           {
    #             name: "RepositoryTriggerName", # required
    #             destination_arn: "Arn", # required
    #             custom_data: "RepositoryTriggerCustomData",
    #             branches: ["BranchName"],
    #             events: ["all"], # required, accepts all, updateReference, createReference, deleteReference
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository in which to test the triggers.
    #   @return [String]
    #
    # @!attribute [rw] triggers
    #   The list of triggers to test.
    #   @return [Array<Types::RepositoryTrigger>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/TestRepositoryTriggersInput AWS API Documentation
    #
    class TestRepositoryTriggersInput < Struct.new(
      :repository_name,
      :triggers)
      include Aws::Structure
    end

    # Represents the output of a test repository triggers operation.
    #
    # @!attribute [rw] successful_executions
    #   The list of triggers that were successfully tested. This list
    #   provides the names of the triggers that were successfully tested,
    #   separated by commas.
    #   @return [Array<String>]
    #
    # @!attribute [rw] failed_executions
    #   The list of triggers that were not able to be tested. This list
    #   provides the names of the triggers that could not be tested,
    #   separated by commas.
    #   @return [Array<Types::RepositoryTriggerExecutionFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/TestRepositoryTriggersOutput AWS API Documentation
    #
    class TestRepositoryTriggersOutput < Struct.new(
      :successful_executions,
      :failed_executions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateCommentInput
    #   data as a hash:
    #
    #       {
    #         comment_id: "CommentId", # required
    #         content: "Content", # required
    #       }
    #
    # @!attribute [rw] comment_id
    #   The system-generated ID of the comment you want to update. To get
    #   this ID, use GetCommentsForComparedCommit or
    #   GetCommentsForPullRequest.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The updated content with which you want to replace the existing
    #   content of the comment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateCommentInput AWS API Documentation
    #
    class UpdateCommentInput < Struct.new(
      :comment_id,
      :content)
      include Aws::Structure
    end

    # @!attribute [rw] comment
    #   Information about the updated comment.
    #   @return [Types::Comment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateCommentOutput AWS API Documentation
    #
    class UpdateCommentOutput < Struct.new(
      :comment)
      include Aws::Structure
    end

    # Represents the input of an update default branch operation.
    #
    # @note When making an API call, you may pass UpdateDefaultBranchInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         default_branch_name: "BranchName", # required
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to set or change the default branch for.
    #   @return [String]
    #
    # @!attribute [rw] default_branch_name
    #   The name of the branch to set as the default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateDefaultBranchInput AWS API Documentation
    #
    class UpdateDefaultBranchInput < Struct.new(
      :repository_name,
      :default_branch_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePullRequestDescriptionInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         description: "Description", # required
    #       }
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated content of the description for the pull request. This
    #   content will replace the existing description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestDescriptionInput AWS API Documentation
    #
    class UpdatePullRequestDescriptionInput < Struct.new(
      :pull_request_id,
      :description)
      include Aws::Structure
    end

    # @!attribute [rw] pull_request
    #   Information about the updated pull request.
    #   @return [Types::PullRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestDescriptionOutput AWS API Documentation
    #
    class UpdatePullRequestDescriptionOutput < Struct.new(
      :pull_request)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePullRequestStatusInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         pull_request_status: "OPEN", # required, accepts OPEN, CLOSED
    #       }
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #   @return [String]
    #
    # @!attribute [rw] pull_request_status
    #   The status of the pull request. The only valid operations are to
    #   update the status from `OPEN` to `OPEN`, `OPEN` to `CLOSED` or from
    #   from `CLOSED` to `CLOSED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestStatusInput AWS API Documentation
    #
    class UpdatePullRequestStatusInput < Struct.new(
      :pull_request_id,
      :pull_request_status)
      include Aws::Structure
    end

    # @!attribute [rw] pull_request
    #   Information about the pull request.
    #   @return [Types::PullRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestStatusOutput AWS API Documentation
    #
    class UpdatePullRequestStatusOutput < Struct.new(
      :pull_request)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePullRequestTitleInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         title: "Title", # required
    #       }
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request. To get this ID, use
    #   ListPullRequests.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The updated title of the pull request. This will replace the
    #   existing title.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestTitleInput AWS API Documentation
    #
    class UpdatePullRequestTitleInput < Struct.new(
      :pull_request_id,
      :title)
      include Aws::Structure
    end

    # @!attribute [rw] pull_request
    #   Information about the updated pull request.
    #   @return [Types::PullRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestTitleOutput AWS API Documentation
    #
    class UpdatePullRequestTitleOutput < Struct.new(
      :pull_request)
      include Aws::Structure
    end

    # Represents the input of an update repository description operation.
    #
    # @note When making an API call, you may pass UpdateRepositoryDescriptionInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         repository_description: "RepositoryDescription",
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository to set or change the comment or
    #   description for.
    #   @return [String]
    #
    # @!attribute [rw] repository_description
    #   The new comment or description for the specified repository.
    #   Repository descriptions are limited to 1,000 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateRepositoryDescriptionInput AWS API Documentation
    #
    class UpdateRepositoryDescriptionInput < Struct.new(
      :repository_name,
      :repository_description)
      include Aws::Structure
    end

    # Represents the input of an update repository description operation.
    #
    # @note When making an API call, you may pass UpdateRepositoryNameInput
    #   data as a hash:
    #
    #       {
    #         old_name: "RepositoryName", # required
    #         new_name: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] old_name
    #   The existing name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] new_name
    #   The new name for the repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateRepositoryNameInput AWS API Documentation
    #
    class UpdateRepositoryNameInput < Struct.new(
      :old_name,
      :new_name)
      include Aws::Structure
    end

    # Information about the user who made a specified commit.
    #
    # @!attribute [rw] name
    #   The name of the user who made the specified commit.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address associated with the user who made the commit, if
    #   any.
    #   @return [String]
    #
    # @!attribute [rw] date
    #   The date when the specified commit was commited, in timestamp format
    #   with GMT offset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UserInfo AWS API Documentation
    #
    class UserInfo < Struct.new(
      :name,
      :email,
      :date)
      include Aws::Structure
    end

  end
end
