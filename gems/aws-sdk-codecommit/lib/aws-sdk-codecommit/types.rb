# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module CodeCommit
    module Types

      # Represents the input of a batch get repositories operation.
      # @note When making an API call, pass BatchGetRepositoriesInput
      #   data as a hash:
      #
      #       {
      #         repository_names: ["RepositoryName"], # required
      #       }
      class BatchGetRepositoriesInput < Aws::Structure.new(
        :repository_names)

        # @!attribute [rw] repository_names
        #   The names of the repositories to get information about.
        #   @return [Array<String>]

      end

      # Represents the output of a batch get repositories operation.
      class BatchGetRepositoriesOutput < Aws::Structure.new(
        :repositories,
        :repositories_not_found)

        # @!attribute [rw] repositories
        #   A list of repositories returned by the batch get repositories
        #   operation.
        #   @return [Array<Types::RepositoryMetadata>]

        # @!attribute [rw] repositories_not_found
        #   Returns a list of repository names for which information could not
        #   be found.
        #   @return [Array<String>]

      end

      # Returns information about a branch.
      class BranchInfo < Aws::Structure.new(
        :branch_name,
        :commit_id)

        # @!attribute [rw] branch_name
        #   The name of the branch.
        #   @return [String]

        # @!attribute [rw] commit_id
        #   The ID of the last commit made to the branch.
        #   @return [String]

      end

      # Returns information about a specific commit.
      class Commit < Aws::Structure.new(
        :tree_id,
        :parents,
        :message,
        :author,
        :committer,
        :additional_data)

        # @!attribute [rw] tree_id
        #   Tree information for the specified commit.
        #   @return [String]

        # @!attribute [rw] parents
        #   The parent list for the specified commit.
        #   @return [Array<String>]

        # @!attribute [rw] message
        #   The message associated with the specified commit.
        #   @return [String]

        # @!attribute [rw] author
        #   Information about the author of the specified commit.
        #   @return [Types::UserInfo]

        # @!attribute [rw] committer
        #   Information about the person who committed the specified commit,
        #   also known as the committer. For more information about the
        #   difference between an author and a committer in Git, see [Viewing
        #   the Commit History][1] in Pro Git by Scott Chacon and Ben Straub.
        #
        #
        #
        #   [1]: http://git-scm.com/book/ch2-3.html
        #   @return [Types::UserInfo]

        # @!attribute [rw] additional_data
        #   Any additional data associated with the specified commit.
        #   @return [String]

      end

      # Represents the input of a create branch operation.
      # @note When making an API call, pass CreateBranchInput
      #   data as a hash:
      #
      #       {
      #         repository_name: "RepositoryName", # required
      #         branch_name: "BranchName", # required
      #         commit_id: "CommitId", # required
      #       }
      class CreateBranchInput < Aws::Structure.new(
        :repository_name,
        :branch_name,
        :commit_id)

        # @!attribute [rw] repository_name
        #   The name of the repository in which you want to create the new
        #   branch.
        #   @return [String]

        # @!attribute [rw] branch_name
        #   The name of the new branch to create.
        #   @return [String]

        # @!attribute [rw] commit_id
        #   The ID of the commit to point the new branch to.
        #   @return [String]

      end

      # Represents the input of a create repository operation.
      # @note When making an API call, pass CreateRepositoryInput
      #   data as a hash:
      #
      #       {
      #         repository_name: "RepositoryName", # required
      #         repository_description: "RepositoryDescription",
      #       }
      class CreateRepositoryInput < Aws::Structure.new(
        :repository_name,
        :repository_description)

        # @!attribute [rw] repository_name
        #   The name of the new repository to be created.
        #
        #   <note markdown="1">The repository name must be unique across the calling AWS account.
        #   In addition, repository names are limited to 100 alphanumeric, dash,
        #   and underscore characters, and cannot include certain characters.
        #   For a full description of the limits on repository names, see
        #   [Limits][1] in the AWS CodeCommit User Guide. The suffix \".git\" is
        #   prohibited.
        #
        #   </note>
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html
        #   @return [String]

        # @!attribute [rw] repository_description
        #   A comment or description about the new repository.
        #
        #   <note markdown="1">The description field for a repository accepts all HTML characters
        #   and all valid Unicode characters. Applications that do not
        #   HTML-encode the description and display it in a web page could
        #   expose users to potentially malicious code. Make sure that you
        #   HTML-encode the description field in any application that uses this
        #   API to display the repository description on a web page.
        #
        #   </note>
        #   @return [String]

      end

      # Represents the output of a create repository operation.
      class CreateRepositoryOutput < Aws::Structure.new(
        :repository_metadata)

        # @!attribute [rw] repository_metadata
        #   Information about the newly created repository.
        #   @return [Types::RepositoryMetadata]

      end

      # Represents the input of a delete repository operation.
      # @note When making an API call, pass DeleteRepositoryInput
      #   data as a hash:
      #
      #       {
      #         repository_name: "RepositoryName", # required
      #       }
      class DeleteRepositoryInput < Aws::Structure.new(
        :repository_name)

        # @!attribute [rw] repository_name
        #   The name of the repository to delete.
        #   @return [String]

      end

      # Represents the output of a delete repository operation.
      class DeleteRepositoryOutput < Aws::Structure.new(
        :repository_id)

        # @!attribute [rw] repository_id
        #   The ID of the repository that was deleted.
        #   @return [String]

      end

      # Represents the input of a get branch operation.
      # @note When making an API call, pass GetBranchInput
      #   data as a hash:
      #
      #       {
      #         repository_name: "RepositoryName",
      #         branch_name: "BranchName",
      #       }
      class GetBranchInput < Aws::Structure.new(
        :repository_name,
        :branch_name)

        # @!attribute [rw] repository_name
        #   The name of the repository that contains the branch for which you
        #   want to retrieve information.
        #   @return [String]

        # @!attribute [rw] branch_name
        #   The name of the branch for which you want to retrieve information.
        #   @return [String]

      end

      # Represents the output of a get branch operation.
      class GetBranchOutput < Aws::Structure.new(
        :branch)

        # @!attribute [rw] branch
        #   The name of the branch.
        #   @return [Types::BranchInfo]

      end

      # Represents the input of a get commit operation.
      # @note When making an API call, pass GetCommitInput
      #   data as a hash:
      #
      #       {
      #         repository_name: "RepositoryName", # required
      #         commit_id: "ObjectId", # required
      #       }
      class GetCommitInput < Aws::Structure.new(
        :repository_name,
        :commit_id)

        # @!attribute [rw] repository_name
        #   The name of the repository to which the commit was made.
        #   @return [String]

        # @!attribute [rw] commit_id
        #   The commit ID.
        #   @return [String]

      end

      # Represents the output of a get commit operation.
      class GetCommitOutput < Aws::Structure.new(
        :commit)

        # @!attribute [rw] commit
        #   Information about the specified commit.
        #   @return [Types::Commit]

      end

      # Represents the input of a get repository operation.
      # @note When making an API call, pass GetRepositoryInput
      #   data as a hash:
      #
      #       {
      #         repository_name: "RepositoryName", # required
      #       }
      class GetRepositoryInput < Aws::Structure.new(
        :repository_name)

        # @!attribute [rw] repository_name
        #   The name of the repository to get information about.
        #   @return [String]

      end

      # Represents the output of a get repository operation.
      class GetRepositoryOutput < Aws::Structure.new(
        :repository_metadata)

        # @!attribute [rw] repository_metadata
        #   Information about the repository.
        #   @return [Types::RepositoryMetadata]

      end

      # Represents the input of a get repository triggers operation.
      # @note When making an API call, pass GetRepositoryTriggersInput
      #   data as a hash:
      #
      #       {
      #         repository_name: "RepositoryName",
      #       }
      class GetRepositoryTriggersInput < Aws::Structure.new(
        :repository_name)

        # @!attribute [rw] repository_name
        #   The name of the repository for which the trigger is configured.
        #   @return [String]

      end

      # Represents the output of a get repository triggers operation.
      class GetRepositoryTriggersOutput < Aws::Structure.new(
        :configuration_id,
        :triggers)

        # @!attribute [rw] configuration_id
        #   The system-generated unique ID for the trigger.
        #   @return [String]

        # @!attribute [rw] triggers
        #   The JSON block of configuration information for each trigger.
        #   @return [Array<Types::RepositoryTrigger>]

      end

      # Represents the input of a list branches operation.
      # @note When making an API call, pass ListBranchesInput
      #   data as a hash:
      #
      #       {
      #         repository_name: "RepositoryName", # required
      #         next_token: "NextToken",
      #       }
      class ListBranchesInput < Aws::Structure.new(
        :repository_name,
        :next_token)

        # @!attribute [rw] repository_name
        #   The name of the repository that contains the branches.
        #   @return [String]

        # @!attribute [rw] next_token
        #   An enumeration token that allows the operation to batch the results.
        #   @return [String]

      end

      # Represents the output of a list branches operation.
      class ListBranchesOutput < Aws::Structure.new(
        :branches,
        :next_token)

        # @!attribute [rw] branches
        #   The list of branch names.
        #   @return [Array<String>]

        # @!attribute [rw] next_token
        #   An enumeration token that returns the batch of the results.
        #   @return [String]

      end

      # Represents the input of a list repositories operation.
      # @note When making an API call, pass ListRepositoriesInput
      #   data as a hash:
      #
      #       {
      #         next_token: "NextToken",
      #         sort_by: "repositoryName", # accepts repositoryName, lastModifiedDate
      #         order: "ascending", # accepts ascending, descending
      #       }
      class ListRepositoriesInput < Aws::Structure.new(
        :next_token,
        :sort_by,
        :order)

        # @!attribute [rw] next_token
        #   An enumeration token that allows the operation to batch the results
        #   of the operation. Batch sizes are 1,000 for list repository
        #   operations. When the client sends the token back to AWS CodeCommit,
        #   another page of 1,000 records is retrieved.
        #   @return [String]

        # @!attribute [rw] sort_by
        #   The criteria used to sort the results of a list repositories
        #   operation.
        #   @return [String]

        # @!attribute [rw] order
        #   The order in which to sort the results of a list repositories
        #   operation.
        #   @return [String]

      end

      # Represents the output of a list repositories operation.
      class ListRepositoriesOutput < Aws::Structure.new(
        :repositories,
        :next_token)

        # @!attribute [rw] repositories
        #   Lists the repositories called by the list repositories operation.
        #   @return [Array<Types::RepositoryNameIdPair>]

        # @!attribute [rw] next_token
        #   An enumeration token that allows the operation to batch the results
        #   of the operation. Batch sizes are 1,000 for list repository
        #   operations. When the client sends the token back to AWS CodeCommit,
        #   another page of 1,000 records is retrieved.
        #   @return [String]

      end

      # Represents the input ofa put repository triggers operation.
      # @note When making an API call, pass PutRepositoryTriggersInput
      #   data as a hash:
      #
      #       {
      #         repository_name: "RepositoryName",
      #         triggers: [
      #           {
      #             name: "RepositoryTriggerName",
      #             destination_arn: "Arn",
      #             custom_data: "RepositoryTriggerCustomData",
      #             branches: ["BranchName"],
      #             events: ["all"], # accepts all, updateReference, createReference, deleteReference
      #           },
      #         ],
      #       }
      class PutRepositoryTriggersInput < Aws::Structure.new(
        :repository_name,
        :triggers)

        # @!attribute [rw] repository_name
        #   The name of the repository where you want to create or update the
        #   trigger.
        #   @return [String]

        # @!attribute [rw] triggers
        #   The JSON block of configuration information for each trigger.
        #   @return [Array<Types::RepositoryTrigger>]

      end

      # Represents the output of a put repository triggers operation.
      class PutRepositoryTriggersOutput < Aws::Structure.new(
        :configuration_id)

        # @!attribute [rw] configuration_id
        #   The system-generated unique ID for the create or update operation.
        #   @return [String]

      end

      # Information about a repository.
      class RepositoryMetadata < Aws::Structure.new(
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

        # @!attribute [rw] account_id
        #   The ID of the AWS account associated with the repository.
        #   @return [String]

        # @!attribute [rw] repository_id
        #   The ID of the repository.
        #   @return [String]

        # @!attribute [rw] repository_name
        #   The repository\'s name.
        #   @return [String]

        # @!attribute [rw] repository_description
        #   A comment or description about the repository.
        #   @return [String]

        # @!attribute [rw] default_branch
        #   The repository\'s default branch name.
        #   @return [String]

        # @!attribute [rw] last_modified_date
        #   The date and time the repository was last modified, in timestamp
        #   format.
        #   @return [Time]

        # @!attribute [rw] creation_date
        #   The date and time the repository was created, in timestamp format.
        #   @return [Time]

        # @!attribute [rw] clone_url_http
        #   The URL to use for cloning the repository over HTTPS.
        #   @return [String]

        # @!attribute [rw] clone_url_ssh
        #   The URL to use for cloning the repository over SSH.
        #   @return [String]

        # @!attribute [rw] arn
        #   The Amazon Resource Name (ARN) of the repository.
        #   @return [String]

      end

      # Information about a repository name and ID.
      class RepositoryNameIdPair < Aws::Structure.new(
        :repository_name,
        :repository_id)

        # @!attribute [rw] repository_name
        #   The name associated with the repository.
        #   @return [String]

        # @!attribute [rw] repository_id
        #   The ID associated with the repository.
        #   @return [String]

      end

      # Information about a trigger for a repository.
      # @note When making an API call, pass RepositoryTrigger
      #   data as a hash:
      #
      #       {
      #         name: "RepositoryTriggerName",
      #         destination_arn: "Arn",
      #         custom_data: "RepositoryTriggerCustomData",
      #         branches: ["BranchName"],
      #         events: ["all"], # accepts all, updateReference, createReference, deleteReference
      #       }
      class RepositoryTrigger < Aws::Structure.new(
        :name,
        :destination_arn,
        :custom_data,
        :branches,
        :events)

        # @!attribute [rw] name
        #   The name of the trigger.
        #   @return [String]

        # @!attribute [rw] destination_arn
        #   The ARN of the resource that is the target for a trigger. For
        #   example, the ARN of a topic in Amazon Simple Notification Service
        #   (SNS).
        #   @return [String]

        # @!attribute [rw] custom_data
        #   Any custom data associated with the trigger that will be included in
        #   the information sent to the target of the trigger.
        #   @return [String]

        # @!attribute [rw] branches
        #   The branches that will be included in the trigger configuration. If
        #   no branches are specified, the trigger will apply to all branches.
        #   @return [Array<String>]

        # @!attribute [rw] events
        #   The repository events that will cause the trigger to run actions in
        #   another service, such as sending a notification through Amazon
        #   Simple Notification Service (SNS). If no events are specified, the
        #   trigger will run for all repository events.
        #   @return [Array<String>]

      end

      # A trigger failed to run.
      class RepositoryTriggerExecutionFailure < Aws::Structure.new(
        :trigger,
        :failure_message)

        # @!attribute [rw] trigger
        #   The name of the trigger that did not run.
        #   @return [String]

        # @!attribute [rw] failure_message
        #   Additional message information about the trigger that did not run.
        #   @return [String]

      end

      # Represents the input of a test repository triggers operation.
      # @note When making an API call, pass TestRepositoryTriggersInput
      #   data as a hash:
      #
      #       {
      #         repository_name: "RepositoryName",
      #         triggers: [
      #           {
      #             name: "RepositoryTriggerName",
      #             destination_arn: "Arn",
      #             custom_data: "RepositoryTriggerCustomData",
      #             branches: ["BranchName"],
      #             events: ["all"], # accepts all, updateReference, createReference, deleteReference
      #           },
      #         ],
      #       }
      class TestRepositoryTriggersInput < Aws::Structure.new(
        :repository_name,
        :triggers)

        # @!attribute [rw] repository_name
        #   The name of the repository in which to test the triggers.
        #   @return [String]

        # @!attribute [rw] triggers
        #   The list of triggers to test.
        #   @return [Array<Types::RepositoryTrigger>]

      end

      # Represents the output of a test repository triggers operation.
      class TestRepositoryTriggersOutput < Aws::Structure.new(
        :successful_executions,
        :failed_executions)

        # @!attribute [rw] successful_executions
        #   The list of triggers that were successfully tested. This list
        #   provides the names of the triggers that were successfully tested,
        #   separated by commas.
        #   @return [Array<String>]

        # @!attribute [rw] failed_executions
        #   The list of triggers that were not able to be tested. This list
        #   provides the names of the triggers that could not be tested,
        #   separated by commas.
        #   @return [Array<Types::RepositoryTriggerExecutionFailure>]

      end

      # Represents the input of an update default branch operation.
      # @note When making an API call, pass UpdateDefaultBranchInput
      #   data as a hash:
      #
      #       {
      #         repository_name: "RepositoryName", # required
      #         default_branch_name: "BranchName", # required
      #       }
      class UpdateDefaultBranchInput < Aws::Structure.new(
        :repository_name,
        :default_branch_name)

        # @!attribute [rw] repository_name
        #   The name of the repository to set or change the default branch for.
        #   @return [String]

        # @!attribute [rw] default_branch_name
        #   The name of the branch to set as the default.
        #   @return [String]

      end

      # Represents the input of an update repository description operation.
      # @note When making an API call, pass UpdateRepositoryDescriptionInput
      #   data as a hash:
      #
      #       {
      #         repository_name: "RepositoryName", # required
      #         repository_description: "RepositoryDescription",
      #       }
      class UpdateRepositoryDescriptionInput < Aws::Structure.new(
        :repository_name,
        :repository_description)

        # @!attribute [rw] repository_name
        #   The name of the repository to set or change the comment or
        #   description for.
        #   @return [String]

        # @!attribute [rw] repository_description
        #   The new comment or description for the specified repository.
        #   Repository descriptions are limited to 1,000 characters.
        #   @return [String]

      end

      # Represents the input of an update repository description operation.
      # @note When making an API call, pass UpdateRepositoryNameInput
      #   data as a hash:
      #
      #       {
      #         old_name: "RepositoryName", # required
      #         new_name: "RepositoryName", # required
      #       }
      class UpdateRepositoryNameInput < Aws::Structure.new(
        :old_name,
        :new_name)

        # @!attribute [rw] old_name
        #   The existing name of the repository.
        #   @return [String]

        # @!attribute [rw] new_name
        #   The new name for the repository.
        #   @return [String]

      end

      # Information about the user who made a specified commit.
      class UserInfo < Aws::Structure.new(
        :name,
        :email,
        :date)

        # @!attribute [rw] name
        #   The name of the user who made the specified commit.
        #   @return [String]

        # @!attribute [rw] email
        #   The email address associated with the user who made the commit, if
        #   any.
        #   @return [String]

        # @!attribute [rw] date
        #   The date when the specified commit was pushed to the repository.
        #   @return [String]

      end

    end
  end
end
