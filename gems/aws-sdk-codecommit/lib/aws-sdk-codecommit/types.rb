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

    # Returns information about a specific commit.
    #
    # @!attribute [rw] tree_id
    #   Tree information for the specified commit.
    #   @return [String]
    #
    # @!attribute [rw] parents
    #   The parent list for the specified commit.
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
    #   The commit ID.
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
    #   no branches are specified, the trigger will apply to all branches.
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
    #   The date when the specified commit was pushed to the repository.
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
