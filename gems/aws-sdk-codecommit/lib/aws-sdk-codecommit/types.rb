# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeCommit
  module Types

    # The specified Amazon Resource Name (ARN) does not exist in the AWS
    # account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ActorDoesNotExistException AWS API Documentation
    #
    class ActorDoesNotExistException < Aws::EmptyStructure; end

    # Returns information about a specific approval on a pull request.
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) of the user.
    #   @return [String]
    #
    # @!attribute [rw] approval_state
    #   The state of the approval, APPROVE or REVOKE. REVOKE states are not
    #   stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/Approval AWS API Documentation
    #
    class Approval < Struct.new(
      :user_arn,
      :approval_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an approval rule.
    #
    # @!attribute [rw] approval_rule_id
    #   The system-generated ID of the approval rule.
    #   @return [String]
    #
    # @!attribute [rw] approval_rule_name
    #   The name of the approval rule.
    #   @return [String]
    #
    # @!attribute [rw] approval_rule_content
    #   The content of the approval rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_content_sha_256
    #   The SHA-256 hash signature for the content of the approval rule.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date the approval rule was most recently changed, in timestamp
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date the approval rule was created, in timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_user
    #   The Amazon Resource Name (ARN) of the user who made the most recent
    #   changes to the approval rule.
    #   @return [String]
    #
    # @!attribute [rw] origin_approval_rule_template
    #   The approval rule template used to create the rule.
    #   @return [Types::OriginApprovalRuleTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ApprovalRule AWS API Documentation
    #
    class ApprovalRule < Struct.new(
      :approval_rule_id,
      :approval_rule_name,
      :approval_rule_content,
      :rule_content_sha_256,
      :last_modified_date,
      :creation_date,
      :last_modified_user,
      :origin_approval_rule_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # The content for the approval rule is empty. You must provide some
    # content for an approval rule. The content cannot be null.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ApprovalRuleContentRequiredException AWS API Documentation
    #
    class ApprovalRuleContentRequiredException < Aws::EmptyStructure; end

    # The specified approval rule does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ApprovalRuleDoesNotExistException AWS API Documentation
    #
    class ApprovalRuleDoesNotExistException < Aws::EmptyStructure; end

    # Returns information about an event for an approval rule.
    #
    # @!attribute [rw] approval_rule_name
    #   The name of the approval rule.
    #   @return [String]
    #
    # @!attribute [rw] approval_rule_id
    #   The system-generated ID of the approval rule.
    #   @return [String]
    #
    # @!attribute [rw] approval_rule_content
    #   The content of the approval rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ApprovalRuleEventMetadata AWS API Documentation
    #
    class ApprovalRuleEventMetadata < Struct.new(
      :approval_rule_name,
      :approval_rule_id,
      :approval_rule_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # An approval rule with that name already exists. Approval rule names
    # must be unique within the scope of a pull request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ApprovalRuleNameAlreadyExistsException AWS API Documentation
    #
    class ApprovalRuleNameAlreadyExistsException < Aws::EmptyStructure; end

    # An approval rule name is required, but was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ApprovalRuleNameRequiredException AWS API Documentation
    #
    class ApprovalRuleNameRequiredException < Aws::EmptyStructure; end

    # Returns information about an override event for approval rules for a
    # pull request.
    #
    # @!attribute [rw] revision_id
    #   The revision ID of the pull request when the override event
    #   occurred.
    #   @return [String]
    #
    # @!attribute [rw] override_status
    #   The status of the override event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ApprovalRuleOverriddenEventMetadata AWS API Documentation
    #
    class ApprovalRuleOverriddenEventMetadata < Struct.new(
      :revision_id,
      :override_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about an approval rule template.
    #
    # @!attribute [rw] approval_rule_template_id
    #   The system-generated ID of the approval rule template.
    #   @return [String]
    #
    # @!attribute [rw] approval_rule_template_name
    #   The name of the approval rule template.
    #   @return [String]
    #
    # @!attribute [rw] approval_rule_template_description
    #   The description of the approval rule template.
    #   @return [String]
    #
    # @!attribute [rw] approval_rule_template_content
    #   The content of the approval rule template.
    #   @return [String]
    #
    # @!attribute [rw] rule_content_sha_256
    #   The SHA-256 hash signature for the content of the approval rule
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   The date the approval rule template was most recently changed, in
    #   timestamp format.
    #   @return [Time]
    #
    # @!attribute [rw] creation_date
    #   The date the approval rule template was created, in timestamp
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_user
    #   The Amazon Resource Name (ARN) of the user who made the most recent
    #   changes to the approval rule template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ApprovalRuleTemplate AWS API Documentation
    #
    class ApprovalRuleTemplate < Struct.new(
      :approval_rule_template_id,
      :approval_rule_template_name,
      :approval_rule_template_description,
      :approval_rule_template_content,
      :rule_content_sha_256,
      :last_modified_date,
      :creation_date,
      :last_modified_user)
      SENSITIVE = []
      include Aws::Structure
    end

    # The content for the approval rule template is empty. You must provide
    # some content for an approval rule template. The content cannot be
    # null.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ApprovalRuleTemplateContentRequiredException AWS API Documentation
    #
    class ApprovalRuleTemplateContentRequiredException < Aws::EmptyStructure; end

    # The specified approval rule template does not exist. Verify that the
    # name is correct and that you are signed in to the AWS Region where the
    # template was created, and then try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ApprovalRuleTemplateDoesNotExistException AWS API Documentation
    #
    class ApprovalRuleTemplateDoesNotExistException < Aws::EmptyStructure; end

    # The approval rule template is associated with one or more
    # repositories. You cannot delete a template that is associated with a
    # repository. Remove all associations, and then try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ApprovalRuleTemplateInUseException AWS API Documentation
    #
    class ApprovalRuleTemplateInUseException < Aws::EmptyStructure; end

    # You cannot create an approval rule template with that name because a
    # template with that name already exists in this AWS Region for your AWS
    # account. Approval rule template names must be unique.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ApprovalRuleTemplateNameAlreadyExistsException AWS API Documentation
    #
    class ApprovalRuleTemplateNameAlreadyExistsException < Aws::EmptyStructure; end

    # An approval rule template name is required, but was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ApprovalRuleTemplateNameRequiredException AWS API Documentation
    #
    class ApprovalRuleTemplateNameRequiredException < Aws::EmptyStructure; end

    # Returns information about a change in the approval state for a pull
    # request.
    #
    # @!attribute [rw] revision_id
    #   The revision ID of the pull request when the approval state changed.
    #   @return [String]
    #
    # @!attribute [rw] approval_status
    #   The approval status for the pull request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ApprovalStateChangedEventMetadata AWS API Documentation
    #
    class ApprovalStateChangedEventMetadata < Struct.new(
      :revision_id,
      :approval_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An approval state is required, but was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ApprovalStateRequiredException AWS API Documentation
    #
    class ApprovalStateRequiredException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociateApprovalRuleTemplateWithRepositoryInput
    #   data as a hash:
    #
    #       {
    #         approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #         repository_name: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] approval_rule_template_name
    #   The name for the approval rule template.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that you want to associate with the
    #   template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/AssociateApprovalRuleTemplateWithRepositoryInput AWS API Documentation
    #
    class AssociateApprovalRuleTemplateWithRepositoryInput < Struct.new(
      :approval_rule_template_name,
      :repository_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified Amazon Resource Name (ARN) does not exist in the AWS
    # account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/AuthorDoesNotExistException AWS API Documentation
    #
    class AuthorDoesNotExistException < Aws::EmptyStructure; end

    # Returns information about errors in a
    # BatchAssociateApprovalRuleTemplateWithRepositories operation.
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where the association was not made.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   An error code that specifies whether the repository name was not
    #   valid or not found.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message that provides details about why the repository name
    #   was not found or not valid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchAssociateApprovalRuleTemplateWithRepositoriesError AWS API Documentation
    #
    class BatchAssociateApprovalRuleTemplateWithRepositoriesError < Struct.new(
      :repository_name,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchAssociateApprovalRuleTemplateWithRepositoriesInput
    #   data as a hash:
    #
    #       {
    #         approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #         repository_names: ["RepositoryName"], # required
    #       }
    #
    # @!attribute [rw] approval_rule_template_name
    #   The name of the template you want to associate with one or more
    #   repositories.
    #   @return [String]
    #
    # @!attribute [rw] repository_names
    #   The names of the repositories you want to associate with the
    #   template.
    #
    #   <note markdown="1"> The length constraint limit is for each string in the array. The
    #   array itself can be empty.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchAssociateApprovalRuleTemplateWithRepositoriesInput AWS API Documentation
    #
    class BatchAssociateApprovalRuleTemplateWithRepositoriesInput < Struct.new(
      :approval_rule_template_name,
      :repository_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associated_repository_names
    #   A list of names of the repositories that have been associated with
    #   the template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   A list of any errors that might have occurred while attempting to
    #   create the association between the template and the repositories.
    #   @return [Array<Types::BatchAssociateApprovalRuleTemplateWithRepositoriesError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchAssociateApprovalRuleTemplateWithRepositoriesOutput AWS API Documentation
    #
    class BatchAssociateApprovalRuleTemplateWithRepositoriesOutput < Struct.new(
      :associated_repository_names,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about errors in a BatchDescribeMergeConflicts
    # operation.
    #
    # @!attribute [rw] file_path
    #   The path to the file.
    #   @return [String]
    #
    # @!attribute [rw] exception_name
    #   The name of the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message provided by the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchDescribeMergeConflictsError AWS API Documentation
    #
    class BatchDescribeMergeConflictsError < Struct.new(
      :file_path,
      :exception_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDescribeMergeConflictsInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         destination_commit_specifier: "CommitName", # required
    #         source_commit_specifier: "CommitName", # required
    #         merge_option: "FAST_FORWARD_MERGE", # required, accepts FAST_FORWARD_MERGE, SQUASH_MERGE, THREE_WAY_MERGE
    #         max_merge_hunks: 1,
    #         max_conflict_files: 1,
    #         file_paths: ["Path"],
    #         conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #         conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the merge conflicts you
    #   want to review.
    #   @return [String]
    #
    # @!attribute [rw] destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] merge_option
    #   The merge option or strategy you want to use to merge the code.
    #   @return [String]
    #
    # @!attribute [rw] max_merge_hunks
    #   The maximum number of merge hunks to include in the output.
    #   @return [Integer]
    #
    # @!attribute [rw] max_conflict_files
    #   The maximum number of files to include in the output.
    #   @return [Integer]
    #
    # @!attribute [rw] file_paths
    #   The path of the target files used to describe the conflicts. If not
    #   specified, the default is all conflict files.
    #   @return [Array<String>]
    #
    # @!attribute [rw] conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the
    #   same file has differences in both branches. If LINE\_LEVEL is
    #   specified, a conflict is considered not mergeable if the same file
    #   in both branches has differences on the same line.
    #   @return [String]
    #
    # @!attribute [rw] conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether
    #   to attempt automatically merging two versions of a file. The default
    #   is NONE, which requires any conflicts to be resolved manually before
    #   the merge operation is successful.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchDescribeMergeConflictsInput AWS API Documentation
    #
    class BatchDescribeMergeConflictsInput < Struct.new(
      :repository_name,
      :destination_commit_specifier,
      :source_commit_specifier,
      :merge_option,
      :max_merge_hunks,
      :max_conflict_files,
      :file_paths,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conflicts
    #   A list of conflicts for each file, including the conflict metadata
    #   and the hunks of the differences between the files.
    #   @return [Array<Types::Conflict>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that can be used in a request to return the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] errors
    #   A list of any errors returned while describing the merge conflicts
    #   for each file.
    #   @return [Array<Types::BatchDescribeMergeConflictsError>]
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
    # @!attribute [rw] base_commit_id
    #   The commit ID of the merge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchDescribeMergeConflictsOutput AWS API Documentation
    #
    class BatchDescribeMergeConflictsOutput < Struct.new(
      :conflicts,
      :next_token,
      :errors,
      :destination_commit_id,
      :source_commit_id,
      :base_commit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about errors in a
    # BatchDisassociateApprovalRuleTemplateFromRepositories operation.
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where the association with the template
    #   was not able to be removed.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   An error code that specifies whether the repository name was not
    #   valid or not found.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message that provides details about why the repository name
    #   was either not found or not valid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchDisassociateApprovalRuleTemplateFromRepositoriesError AWS API Documentation
    #
    class BatchDisassociateApprovalRuleTemplateFromRepositoriesError < Struct.new(
      :repository_name,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDisassociateApprovalRuleTemplateFromRepositoriesInput
    #   data as a hash:
    #
    #       {
    #         approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #         repository_names: ["RepositoryName"], # required
    #       }
    #
    # @!attribute [rw] approval_rule_template_name
    #   The name of the template that you want to disassociate from one or
    #   more repositories.
    #   @return [String]
    #
    # @!attribute [rw] repository_names
    #   The repository names that you want to disassociate from the approval
    #   rule template.
    #
    #   <note markdown="1"> The length constraint limit is for each string in the array. The
    #   array itself can be empty.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchDisassociateApprovalRuleTemplateFromRepositoriesInput AWS API Documentation
    #
    class BatchDisassociateApprovalRuleTemplateFromRepositoriesInput < Struct.new(
      :approval_rule_template_name,
      :repository_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disassociated_repository_names
    #   A list of repository names that have had their association with the
    #   template removed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   A list of any errors that might have occurred while attempting to
    #   remove the association between the template and the repositories.
    #   @return [Array<Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput AWS API Documentation
    #
    class BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput < Struct.new(
      :disassociated_repository_names,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about errors in a BatchGetCommits operation.
    #
    # @!attribute [rw] commit_id
    #   A commit ID that either could not be found or was not in a valid
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   An error code that specifies whether the commit ID was not valid or
    #   not found.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message that provides detail about why the commit ID either
    #   was not found or was not valid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchGetCommitsError AWS API Documentation
    #
    class BatchGetCommitsError < Struct.new(
      :commit_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetCommitsInput
    #   data as a hash:
    #
    #       {
    #         commit_ids: ["ObjectId"], # required
    #         repository_name: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] commit_ids
    #   The full commit IDs of the commits to get information about.
    #
    #   <note markdown="1"> You must supply the full SHA IDs of each commit. You cannot use
    #   shortened SHA IDs.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the commits.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchGetCommitsInput AWS API Documentation
    #
    class BatchGetCommitsInput < Struct.new(
      :commit_ids,
      :repository_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] commits
    #   An array of commit data type objects, each of which contains
    #   information about a specified commit.
    #   @return [Array<Types::Commit>]
    #
    # @!attribute [rw] errors
    #   Returns any commit IDs for which information could not be found. For
    #   example, if one of the commit IDs was a shortened SHA ID or that
    #   commit was not found in the specified repository, the ID returns an
    #   error object with more information.
    #   @return [Array<Types::BatchGetCommitsError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchGetCommitsOutput AWS API Documentation
    #
    class BatchGetCommitsOutput < Struct.new(
      :commits,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #
    #   <note markdown="1"> The length constraint limit is for each string in the array. The
    #   array itself can be empty.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BatchGetRepositoriesInput AWS API Documentation
    #
    class BatchGetRepositoriesInput < Struct.new(
      :repository_names)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The before commit ID and the after commit ID are the same, which is
    # not valid. The before commit ID and the after commit ID must be
    # different commit IDs.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BeforeCommitIdAndAfterCommitIdAreSameException AWS API Documentation
    #
    class BeforeCommitIdAndAfterCommitIdAreSameException < Aws::EmptyStructure; end

    # The specified blob does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BlobIdDoesNotExistException AWS API Documentation
    #
    class BlobIdDoesNotExistException < Aws::EmptyStructure; end

    # A blob ID is required, but was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BlobIdRequiredException AWS API Documentation
    #
    class BlobIdRequiredException < Aws::EmptyStructure; end

    # Returns information about a specific Git blob object.
    #
    # @!attribute [rw] blob_id
    #   The full ID of the blob.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the blob and associated file name, if any.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified branch does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BranchDoesNotExistException AWS API Documentation
    #
    class BranchDoesNotExistException < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # Cannot create the branch with the specified name because the commit
    # conflicts with an existing branch with the same name. Branch names
    # must be unique.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BranchNameExistsException AWS API Documentation
    #
    class BranchNameExistsException < Aws::EmptyStructure; end

    # The specified branch name is not valid because it is a tag name. Enter
    # the name of a branch in the repository. For a list of valid branch
    # names, use ListBranches.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BranchNameIsTagNameException AWS API Documentation
    #
    class BranchNameIsTagNameException < Aws::EmptyStructure; end

    # A branch name is required, but was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/BranchNameRequiredException AWS API Documentation
    #
    class BranchNameRequiredException < Aws::EmptyStructure; end

    # The approval rule cannot be deleted from the pull request because it
    # was created by an approval rule template and applied to the pull
    # request automatically.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CannotDeleteApprovalRuleFromTemplateException AWS API Documentation
    #
    class CannotDeleteApprovalRuleFromTemplateException < Aws::EmptyStructure; end

    # The approval rule cannot be modified for the pull request because it
    # was created by an approval rule template and applied to the pull
    # request automatically.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CannotModifyApprovalRuleFromTemplateException AWS API Documentation
    #
    class CannotModifyApprovalRuleFromTemplateException < Aws::EmptyStructure; end

    # A client request token is required. A client request token is an
    # unique, client-generated idempotency token that, when provided in a
    # request, ensures the request cannot be repeated with a changed
    # parameter. If a request is received with the same parameters and a
    # token is included, the request returns information about the initial
    # request that used that token.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ClientRequestTokenRequiredException AWS API Documentation
    #
    class ClientRequestTokenRequiredException < Aws::EmptyStructure; end

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
    #   A unique, client-generated idempotency token that, when provided in
    #   a request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request returns information about the initial
    #   request that used that token.
    #   @return [String]
    #
    # @!attribute [rw] caller_reactions
    #   The emoji reactions to a comment, if any, submitted by the user
    #   whose credentials are associated with the call to the API.
    #   @return [Array<String>]
    #
    # @!attribute [rw] reaction_counts
    #   A string to integer map that represents the number of individual
    #   users who have responded to a comment with the specified reactions.
    #   @return [Hash<String,Integer>]
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
      :client_request_token,
      :caller_reactions,
      :reaction_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The comment is empty. You must provide some content for a comment. The
    # content cannot be null.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CommentContentRequiredException AWS API Documentation
    #
    class CommentContentRequiredException < Aws::EmptyStructure; end

    # The comment is too large. Comments are limited to 1,000 characters.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CommentContentSizeLimitExceededException AWS API Documentation
    #
    class CommentContentSizeLimitExceededException < Aws::EmptyStructure; end

    # This comment has already been deleted. You cannot edit or delete a
    # deleted comment.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CommentDeletedException AWS API Documentation
    #
    class CommentDeletedException < Aws::EmptyStructure; end

    # No comment exists with the provided ID. Verify that you have used the
    # correct ID, and then try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CommentDoesNotExistException AWS API Documentation
    #
    class CommentDoesNotExistException < Aws::EmptyStructure; end

    # The comment ID is missing or null. A comment ID is required.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CommentIdRequiredException AWS API Documentation
    #
    class CommentIdRequiredException < Aws::EmptyStructure; end

    # You cannot modify or delete this comment. Only comment authors can
    # modify or delete their comments.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CommentNotCreatedByCallerException AWS API Documentation
    #
    class CommentNotCreatedByCallerException < Aws::EmptyStructure; end

    # Returns information about comments on the comparison between two
    # commits.
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the compared commits.
    #   @return [String]
    #
    # @!attribute [rw] before_commit_id
    #   The full commit ID of the commit used to establish the before of the
    #   comparison.
    #   @return [String]
    #
    # @!attribute [rw] after_commit_id
    #   The full commit ID of the commit used to establish the after of the
    #   comparison.
    #   @return [String]
    #
    # @!attribute [rw] before_blob_id
    #   The full blob ID of the commit used to establish the before of the
    #   comparison.
    #   @return [String]
    #
    # @!attribute [rw] after_blob_id
    #   The full blob ID of the commit used to establish the after of the
    #   comparison.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Location information about the comment on the comparison, including
    #   the file name, line number, and whether the version of the file
    #   where the comment was made is BEFORE or AFTER.
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
      SENSITIVE = []
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
    #   branch when the pull request was created. This commit is superceded
    #   by the after commit in the source branch when and if you merge the
    #   source branch into the destination branch.
    #   @return [String]
    #
    # @!attribute [rw] after_commit_id
    #   The full commit ID of the commit that was the tip of the source
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
    #   file where the comment was made is BEFORE (destination branch) or
    #   AFTER (source branch).
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a specific commit.
    #
    # @!attribute [rw] commit_id
    #   The full SHA ID of the specified commit.
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
    #   Any other data associated with the specified commit.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified commit does not exist or no commit was specified, and
    # the specified repository has no default branch.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CommitDoesNotExistException AWS API Documentation
    #
    class CommitDoesNotExistException < Aws::EmptyStructure; end

    # The specified commit ID does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CommitIdDoesNotExistException AWS API Documentation
    #
    class CommitIdDoesNotExistException < Aws::EmptyStructure; end

    # A commit ID was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CommitIdRequiredException AWS API Documentation
    #
    class CommitIdRequiredException < Aws::EmptyStructure; end

    # The maximum number of allowed commit IDs in a batch request is 100.
    # Verify that your batch requests contains no more than 100 commit IDs,
    # and then try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CommitIdsLimitExceededException AWS API Documentation
    #
    class CommitIdsLimitExceededException < Aws::EmptyStructure; end

    # A list of commit IDs is required, but was either not specified or the
    # list was empty.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CommitIdsListRequiredException AWS API Documentation
    #
    class CommitIdsListRequiredException < Aws::EmptyStructure; end

    # The commit message is too long. Provide a shorter string.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CommitMessageLengthExceededException AWS API Documentation
    #
    class CommitMessageLengthExceededException < Aws::EmptyStructure; end

    # A commit was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CommitRequiredException AWS API Documentation
    #
    class CommitRequiredException < Aws::EmptyStructure; end

    # The merge cannot be completed because the target branch has been
    # modified. Another user might have modified the target branch while the
    # merge was in progress. Wait a few minutes, and then try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ConcurrentReferenceUpdateException AWS API Documentation
    #
    class ConcurrentReferenceUpdateException < Aws::EmptyStructure; end

    # Information about conflicts in a merge operation.
    #
    # @!attribute [rw] conflict_metadata
    #   Metadata about a conflict in a merge operation.
    #   @return [Types::ConflictMetadata]
    #
    # @!attribute [rw] merge_hunks
    #   A list of hunks that contain the differences between files or lines
    #   causing the conflict.
    #   @return [Array<Types::MergeHunk>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/Conflict AWS API Documentation
    #
    class Conflict < Struct.new(
      :conflict_metadata,
      :merge_hunks)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the metadata for a conflict in a merge operation.
    #
    # @!attribute [rw] file_path
    #   The path of the file that contains conflicts.
    #   @return [String]
    #
    # @!attribute [rw] file_sizes
    #   The file sizes of the file in the source, destination, and base of
    #   the merge.
    #   @return [Types::FileSizes]
    #
    # @!attribute [rw] file_modes
    #   The file modes of the file in the source, destination, and base of
    #   the merge.
    #   @return [Types::FileModes]
    #
    # @!attribute [rw] object_types
    #   Information about any object type conflicts in a merge operation.
    #   @return [Types::ObjectTypes]
    #
    # @!attribute [rw] number_of_conflicts
    #   The number of conflicts, including both hunk conflicts and metadata
    #   conflicts.
    #   @return [Integer]
    #
    # @!attribute [rw] is_binary_file
    #   A boolean value (true or false) indicating whether the file is
    #   binary or textual in the source, destination, and base of the merge.
    #   @return [Types::IsBinaryFile]
    #
    # @!attribute [rw] content_conflict
    #   A boolean value indicating whether there are conflicts in the
    #   content of a file.
    #   @return [Boolean]
    #
    # @!attribute [rw] file_mode_conflict
    #   A boolean value indicating whether there are conflicts in the file
    #   mode of a file.
    #   @return [Boolean]
    #
    # @!attribute [rw] object_type_conflict
    #   A boolean value (true or false) indicating whether there are
    #   conflicts between the branches in the object type of a file, folder,
    #   or submodule.
    #   @return [Boolean]
    #
    # @!attribute [rw] merge_operations
    #   Whether an add, modify, or delete operation caused the conflict
    #   between the source and destination of the merge.
    #   @return [Types::MergeOperations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ConflictMetadata AWS API Documentation
    #
    class ConflictMetadata < Struct.new(
      :file_path,
      :file_sizes,
      :file_modes,
      :object_types,
      :number_of_conflicts,
      :is_binary_file,
      :content_conflict,
      :file_mode_conflict,
      :object_type_conflict,
      :merge_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # If AUTOMERGE is the conflict resolution strategy, a list of inputs to
    # use when resolving conflicts during a merge.
    #
    # @note When making an API call, you may pass ConflictResolution
    #   data as a hash:
    #
    #       {
    #         replace_contents: [
    #           {
    #             file_path: "Path", # required
    #             replacement_type: "KEEP_BASE", # required, accepts KEEP_BASE, KEEP_SOURCE, KEEP_DESTINATION, USE_NEW_CONTENT
    #             content: "data",
    #             file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #           },
    #         ],
    #         delete_files: [
    #           {
    #             file_path: "Path", # required
    #           },
    #         ],
    #         set_file_modes: [
    #           {
    #             file_path: "Path", # required
    #             file_mode: "EXECUTABLE", # required, accepts EXECUTABLE, NORMAL, SYMLINK
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] replace_contents
    #   Files to have content replaced as part of the merge conflict
    #   resolution.
    #   @return [Array<Types::ReplaceContentEntry>]
    #
    # @!attribute [rw] delete_files
    #   Files to be deleted as part of the merge conflict resolution.
    #   @return [Array<Types::DeleteFileEntry>]
    #
    # @!attribute [rw] set_file_modes
    #   File modes that are set as part of the merge conflict resolution.
    #   @return [Array<Types::SetFileModeEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ConflictResolution AWS API Documentation
    #
    class ConflictResolution < Struct.new(
      :replace_contents,
      :delete_files,
      :set_file_modes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateApprovalRuleTemplateInput
    #   data as a hash:
    #
    #       {
    #         approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #         approval_rule_template_content: "ApprovalRuleTemplateContent", # required
    #         approval_rule_template_description: "ApprovalRuleTemplateDescription",
    #       }
    #
    # @!attribute [rw] approval_rule_template_name
    #   The name of the approval rule template. Provide descriptive names,
    #   because this name is applied to the approval rules created
    #   automatically in associated repositories.
    #   @return [String]
    #
    # @!attribute [rw] approval_rule_template_content
    #   The content of the approval rule that is created on pull requests in
    #   associated repositories. If you specify one or more destination
    #   references (branches), approval rules are created in an associated
    #   repository only if their destination references (branches) match
    #   those specified in the template.
    #
    #   <note markdown="1"> When you create the content of the approval rule template, you can
    #   specify approvers in an approval pool in one of two ways:
    #
    #    * **CodeCommitApprovers**\: This option only requires an AWS account
    #     and a resource. It can be used for both IAM users and federated
    #     access users whose name matches the provided resource name. This
    #     is a very powerful option that offers a great deal of flexibility.
    #     For example, if you specify the AWS account *123456789012* and
    #     *Mary\_Major*, all of the following are counted as approvals
    #     coming from that user:
    #
    #     * An IAM user in the account
    #       (arn:aws:iam::*123456789012*\:user/*Mary\_Major*)
    #
    #     * A federated user identified in IAM as Mary\_Major
    #       (arn:aws:sts::*123456789012*\:federated-user/*Mary\_Major*)
    #
    #     This option does not recognize an active session of someone
    #     assuming the role of CodeCommitReview with a role session name of
    #     *Mary\_Major*
    #     (arn:aws:sts::*123456789012*\:assumed-role/CodeCommitReview/*Mary\_Major*)
    #     unless you include a wildcard (*Mary\_Major).
    #
    #   * **Fully qualified ARN**\: This option allows you to specify the
    #     fully qualified Amazon Resource Name (ARN) of the IAM user or
    #     role.
    #
    #    For more information about IAM ARNs, wildcards, and formats, see
    #   [IAM Identifiers][1] in the *IAM User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] approval_rule_template_description
    #   The description of the approval rule template. Consider providing a
    #   description that explains what this template does and when it might
    #   be appropriate to associate it with repositories.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateApprovalRuleTemplateInput AWS API Documentation
    #
    class CreateApprovalRuleTemplateInput < Struct.new(
      :approval_rule_template_name,
      :approval_rule_template_content,
      :approval_rule_template_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approval_rule_template
    #   The content and structure of the created approval rule template.
    #   @return [Types::ApprovalRuleTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateApprovalRuleTemplateOutput AWS API Documentation
    #
    class CreateApprovalRuleTemplateOutput < Struct.new(
      :approval_rule_template)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCommitInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         branch_name: "BranchName", # required
    #         parent_commit_id: "CommitId",
    #         author_name: "Name",
    #         email: "Email",
    #         commit_message: "Message",
    #         keep_empty_folders: false,
    #         put_files: [
    #           {
    #             file_path: "Path", # required
    #             file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #             file_content: "data",
    #             source_file: {
    #               file_path: "Path", # required
    #               is_move: false,
    #             },
    #           },
    #         ],
    #         delete_files: [
    #           {
    #             file_path: "Path", # required
    #           },
    #         ],
    #         set_file_modes: [
    #           {
    #             file_path: "Path", # required
    #             file_mode: "EXECUTABLE", # required, accepts EXECUTABLE, NORMAL, SYMLINK
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where you create the commit.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name of the branch where you create the commit.
    #   @return [String]
    #
    # @!attribute [rw] parent_commit_id
    #   The ID of the commit that is the parent of the commit you create.
    #   Not required if this is an empty repository.
    #   @return [String]
    #
    # @!attribute [rw] author_name
    #   The name of the author who created the commit. This information is
    #   used as both the author and committer for the commit.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the person who created the commit.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   The commit message you want to include in the commit. Commit
    #   messages are limited to 256 KB. If no message is specified, a
    #   default message is used.
    #   @return [String]
    #
    # @!attribute [rw] keep_empty_folders
    #   If the commit contains deletions, whether to keep a folder or folder
    #   structure if the changes leave the folders empty. If true, a
    #   ..gitkeep file is created for empty folders. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] put_files
    #   The files to add or update in this commit.
    #   @return [Array<Types::PutFileEntry>]
    #
    # @!attribute [rw] delete_files
    #   The files to delete in this commit. These files still exist in
    #   earlier commits.
    #   @return [Array<Types::DeleteFileEntry>]
    #
    # @!attribute [rw] set_file_modes
    #   The file modes to update for files in this commit.
    #   @return [Array<Types::SetFileModeEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateCommitInput AWS API Documentation
    #
    class CreateCommitInput < Struct.new(
      :repository_name,
      :branch_name,
      :parent_commit_id,
      :author_name,
      :email,
      :commit_message,
      :keep_empty_folders,
      :put_files,
      :delete_files,
      :set_file_modes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] commit_id
    #   The full commit ID of the commit that contains your committed file
    #   changes.
    #   @return [String]
    #
    # @!attribute [rw] tree_id
    #   The full SHA-1 pointer of the tree information for the commit that
    #   contains the commited file changes.
    #   @return [String]
    #
    # @!attribute [rw] files_added
    #   The files added as part of the committed file changes.
    #   @return [Array<Types::FileMetadata>]
    #
    # @!attribute [rw] files_updated
    #   The files updated as part of the commited file changes.
    #   @return [Array<Types::FileMetadata>]
    #
    # @!attribute [rw] files_deleted
    #   The files deleted as part of the committed file changes.
    #   @return [Array<Types::FileMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateCommitOutput AWS API Documentation
    #
    class CreateCommitOutput < Struct.new(
      :commit_id,
      :tree_id,
      :files_added,
      :files_updated,
      :files_deleted)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePullRequestApprovalRuleInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         approval_rule_name: "ApprovalRuleName", # required
    #         approval_rule_content: "ApprovalRuleContent", # required
    #       }
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request for which you want to
    #   create the approval rule.
    #   @return [String]
    #
    # @!attribute [rw] approval_rule_name
    #   The name for the approval rule.
    #   @return [String]
    #
    # @!attribute [rw] approval_rule_content
    #   The content of the approval rule, including the number of approvals
    #   needed and the structure of an approval pool defined for approvals,
    #   if any. For more information about approval pools, see the AWS
    #   CodeCommit User Guide.
    #
    #   <note markdown="1"> When you create the content of the approval rule, you can specify
    #   approvers in an approval pool in one of two ways:
    #
    #    * **CodeCommitApprovers**\: This option only requires an AWS account
    #     and a resource. It can be used for both IAM users and federated
    #     access users whose name matches the provided resource name. This
    #     is a very powerful option that offers a great deal of flexibility.
    #     For example, if you specify the AWS account *123456789012* and
    #     *Mary\_Major*, all of the following would be counted as approvals
    #     coming from that user:
    #
    #     * An IAM user in the account
    #       (arn:aws:iam::*123456789012*\:user/*Mary\_Major*)
    #
    #     * A federated user identified in IAM as Mary\_Major
    #       (arn:aws:sts::*123456789012*\:federated-user/*Mary\_Major*)
    #
    #     This option does not recognize an active session of someone
    #     assuming the role of CodeCommitReview with a role session name of
    #     *Mary\_Major*
    #     (arn:aws:sts::*123456789012*\:assumed-role/CodeCommitReview/*Mary\_Major*)
    #     unless you include a wildcard (*Mary\_Major).
    #
    #   * **Fully qualified ARN**\: This option allows you to specify the
    #     fully qualified Amazon Resource Name (ARN) of the IAM user or
    #     role.
    #
    #    For more information about IAM ARNs, wildcards, and formats, see
    #   [IAM Identifiers][1] in the *IAM User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreatePullRequestApprovalRuleInput AWS API Documentation
    #
    class CreatePullRequestApprovalRuleInput < Struct.new(
      :pull_request_id,
      :approval_rule_name,
      :approval_rule_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approval_rule
    #   Information about the created approval rule.
    #   @return [Types::ApprovalRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreatePullRequestApprovalRuleOutput AWS API Documentation
    #
    class CreatePullRequestApprovalRuleOutput < Struct.new(
      :approval_rule)
      SENSITIVE = []
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
    #   The title of the pull request. This title is used to identify the
    #   pull request to other users in the repository.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the pull request.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets for the pull request, including the source of the code
    #   to be reviewed (the source branch) and the destination where the
    #   creator of the pull request intends the code to be merged after the
    #   pull request is closed (the destination branch).
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] client_request_token
    #   A unique, client-generated idempotency token that, when provided in
    #   a request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request returns information about the initial
    #   request that used that token.
    #
    #   <note markdown="1"> The AWS SDKs prepopulate client request tokens. If you are using an
    #   AWS SDK, an idempotency token is created for you.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the new repository to be created.
    #
    #   <note markdown="1"> The repository name must be unique across the calling AWS account.
    #   Repository names are limited to 100 alphanumeric, dash, and
    #   underscore characters, and cannot include certain characters. For
    #   more information about the limits on repository names, see
    #   [Limits][1] in the *AWS CodeCommit User Guide*. The suffix .git is
    #   prohibited.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html
    #   @return [String]
    #
    # @!attribute [rw] repository_description
    #   A comment or description about the new repository.
    #
    #   <note markdown="1"> The description field for a repository accepts all HTML characters
    #   and all valid Unicode characters. Applications that do not
    #   HTML-encode the description and display it in a webpage can expose
    #   users to potentially malicious code. Make sure that you HTML-encode
    #   the description field in any application that uses this API to
    #   display the repository description on a webpage.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tag key-value pairs to use when tagging this repository.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateRepositoryInput AWS API Documentation
    #
    class CreateRepositoryInput < Struct.new(
      :repository_name,
      :repository_description,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateUnreferencedMergeCommitInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         source_commit_specifier: "CommitName", # required
    #         destination_commit_specifier: "CommitName", # required
    #         merge_option: "FAST_FORWARD_MERGE", # required, accepts FAST_FORWARD_MERGE, SQUASH_MERGE, THREE_WAY_MERGE
    #         conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #         conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #         author_name: "Name",
    #         email: "Email",
    #         commit_message: "Message",
    #         keep_empty_folders: false,
    #         conflict_resolution: {
    #           replace_contents: [
    #             {
    #               file_path: "Path", # required
    #               replacement_type: "KEEP_BASE", # required, accepts KEEP_BASE, KEEP_SOURCE, KEEP_DESTINATION, USE_NEW_CONTENT
    #               content: "data",
    #               file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #             },
    #           ],
    #           delete_files: [
    #             {
    #               file_path: "Path", # required
    #             },
    #           ],
    #           set_file_modes: [
    #             {
    #               file_path: "Path", # required
    #               file_mode: "EXECUTABLE", # required, accepts EXECUTABLE, NORMAL, SYMLINK
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where you want to create the unreferenced
    #   merge commit.
    #   @return [String]
    #
    # @!attribute [rw] source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] merge_option
    #   The merge option or strategy you want to use to merge the code.
    #   @return [String]
    #
    # @!attribute [rw] conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the
    #   same file has differences in both branches. If LINE\_LEVEL is
    #   specified, a conflict is considered not mergeable if the same file
    #   in both branches has differences on the same line.
    #   @return [String]
    #
    # @!attribute [rw] conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether
    #   to attempt automatically merging two versions of a file. The default
    #   is NONE, which requires any conflicts to be resolved manually before
    #   the merge operation is successful.
    #   @return [String]
    #
    # @!attribute [rw] author_name
    #   The name of the author who created the unreferenced commit. This
    #   information is used as both the author and committer for the commit.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address for the person who created the unreferenced
    #   commit.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   The commit message for the unreferenced commit.
    #   @return [String]
    #
    # @!attribute [rw] keep_empty_folders
    #   If the commit contains deletions, whether to keep a folder or folder
    #   structure if the changes leave the folders empty. If this is
    #   specified as true, a .gitkeep file is created for empty folders. The
    #   default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] conflict_resolution
    #   If AUTOMERGE is the conflict resolution strategy, a list of inputs
    #   to use when resolving conflicts during a merge.
    #   @return [Types::ConflictResolution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateUnreferencedMergeCommitInput AWS API Documentation
    #
    class CreateUnreferencedMergeCommitInput < Struct.new(
      :repository_name,
      :source_commit_specifier,
      :destination_commit_specifier,
      :merge_option,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :author_name,
      :email,
      :commit_message,
      :keep_empty_folders,
      :conflict_resolution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] commit_id
    #   The full commit ID of the commit that contains your merge results.
    #   @return [String]
    #
    # @!attribute [rw] tree_id
    #   The full SHA-1 pointer of the tree information for the commit that
    #   contains the merge results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/CreateUnreferencedMergeCommitOutput AWS API Documentation
    #
    class CreateUnreferencedMergeCommitOutput < Struct.new(
      :commit_id,
      :tree_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified branch is the default branch for the repository, and
    # cannot be deleted. To delete this branch, you must first set another
    # branch as the default branch.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DefaultBranchCannotBeDeletedException AWS API Documentation
    #
    class DefaultBranchCannotBeDeletedException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteApprovalRuleTemplateInput
    #   data as a hash:
    #
    #       {
    #         approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #       }
    #
    # @!attribute [rw] approval_rule_template_name
    #   The name of the approval rule template to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteApprovalRuleTemplateInput AWS API Documentation
    #
    class DeleteApprovalRuleTemplateInput < Struct.new(
      :approval_rule_template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approval_rule_template_id
    #   The system-generated ID of the deleted approval rule template. If
    #   the template has been previously deleted, the only response is a 200
    #   OK.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteApprovalRuleTemplateOutput AWS API Documentation
    #
    class DeleteApprovalRuleTemplateOutput < Struct.new(
      :approval_rule_template_id)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A file that is deleted as part of a commit.
    #
    # @note When making an API call, you may pass DeleteFileEntry
    #   data as a hash:
    #
    #       {
    #         file_path: "Path", # required
    #       }
    #
    # @!attribute [rw] file_path
    #   The full path of the file to be deleted, including the name of the
    #   file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteFileEntry AWS API Documentation
    #
    class DeleteFileEntry < Struct.new(
      :file_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFileInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         branch_name: "BranchName", # required
    #         file_path: "Path", # required
    #         parent_commit_id: "CommitId", # required
    #         keep_empty_folders: false,
    #         commit_message: "Message",
    #         name: "Name",
    #         email: "Email",
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the file to delete.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name of the branch where the commit that deletes the file is
    #   made.
    #   @return [String]
    #
    # @!attribute [rw] file_path
    #   The fully qualified path to the file that to be deleted, including
    #   the full name and extension of that file. For example,
    #   /examples/file.md is a fully qualified path to a file named file.md
    #   in a folder named examples.
    #   @return [String]
    #
    # @!attribute [rw] parent_commit_id
    #   The ID of the commit that is the tip of the branch where you want to
    #   create the commit that deletes the file. This must be the HEAD
    #   commit for the branch. The commit that deletes the file is created
    #   from this commit ID.
    #   @return [String]
    #
    # @!attribute [rw] keep_empty_folders
    #   If a file is the only object in the folder or directory, specifies
    #   whether to delete the folder or directory that contains the file. By
    #   default, empty folders are deleted. This includes empty folders that
    #   are part of the directory structure. For example, if the path to a
    #   file is dir1/dir2/dir3/dir4, and dir2 and dir3 are empty, deleting
    #   the last file in dir4 also deletes the empty folders dir4, dir3, and
    #   dir2.
    #   @return [Boolean]
    #
    # @!attribute [rw] commit_message
    #   The commit message you want to include as part of deleting the file.
    #   Commit messages are limited to 256 KB. If no message is specified, a
    #   default message is used.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the author of the commit that deletes the file. If no
    #   name is specified, the user's ARN is used as the author name and
    #   committer name.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address for the commit that deletes the file. If no email
    #   address is specified, the email address is left blank.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteFileInput AWS API Documentation
    #
    class DeleteFileInput < Struct.new(
      :repository_name,
      :branch_name,
      :file_path,
      :parent_commit_id,
      :keep_empty_folders,
      :commit_message,
      :name,
      :email)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] commit_id
    #   The full commit ID of the commit that contains the change that
    #   deletes the file.
    #   @return [String]
    #
    # @!attribute [rw] blob_id
    #   The blob ID removed from the tree as part of deleting the file.
    #   @return [String]
    #
    # @!attribute [rw] tree_id
    #   The full SHA-1 pointer of the tree information for the commit that
    #   contains the delete file change.
    #   @return [String]
    #
    # @!attribute [rw] file_path
    #   The fully qualified path to the file to be deleted, including the
    #   full name and extension of that file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeleteFileOutput AWS API Documentation
    #
    class DeleteFileOutput < Struct.new(
      :commit_id,
      :blob_id,
      :tree_id,
      :file_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePullRequestApprovalRuleInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         approval_rule_name: "ApprovalRuleName", # required
    #       }
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request that contains the
    #   approval rule you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] approval_rule_name
    #   The name of the approval rule you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeletePullRequestApprovalRuleInput AWS API Documentation
    #
    class DeletePullRequestApprovalRuleInput < Struct.new(
      :pull_request_id,
      :approval_rule_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approval_rule_id
    #   The ID of the deleted approval rule.
    #
    #   <note markdown="1"> If the approval rule was deleted in an earlier API call, the
    #   response is 200 OK without content.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DeletePullRequestApprovalRuleOutput AWS API Documentation
    #
    class DeletePullRequestApprovalRuleOutput < Struct.new(
      :approval_rule_id)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMergeConflictsInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         destination_commit_specifier: "CommitName", # required
    #         source_commit_specifier: "CommitName", # required
    #         merge_option: "FAST_FORWARD_MERGE", # required, accepts FAST_FORWARD_MERGE, SQUASH_MERGE, THREE_WAY_MERGE
    #         max_merge_hunks: 1,
    #         file_path: "Path", # required
    #         conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #         conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where you want to get information about a
    #   merge conflict.
    #   @return [String]
    #
    # @!attribute [rw] destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] merge_option
    #   The merge option or strategy you want to use to merge the code.
    #   @return [String]
    #
    # @!attribute [rw] max_merge_hunks
    #   The maximum number of merge hunks to include in the output.
    #   @return [Integer]
    #
    # @!attribute [rw] file_path
    #   The path of the target files used to describe the conflicts.
    #   @return [String]
    #
    # @!attribute [rw] conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the
    #   same file has differences in both branches. If LINE\_LEVEL is
    #   specified, a conflict is considered not mergeable if the same file
    #   in both branches has differences on the same line.
    #   @return [String]
    #
    # @!attribute [rw] conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether
    #   to attempt automatically merging two versions of a file. The default
    #   is NONE, which requires any conflicts to be resolved manually before
    #   the merge operation is successful.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DescribeMergeConflictsInput AWS API Documentation
    #
    class DescribeMergeConflictsInput < Struct.new(
      :repository_name,
      :destination_commit_specifier,
      :source_commit_specifier,
      :merge_option,
      :max_merge_hunks,
      :file_path,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conflict_metadata
    #   Contains metadata about the conflicts found in the merge.
    #   @return [Types::ConflictMetadata]
    #
    # @!attribute [rw] merge_hunks
    #   A list of merge hunks of the differences between the files or lines.
    #   @return [Array<Types::MergeHunk>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that can be used in a request to return the
    #   next batch of the results.
    #   @return [String]
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
    # @!attribute [rw] base_commit_id
    #   The commit ID of the merge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DescribeMergeConflictsOutput AWS API Documentation
    #
    class DescribeMergeConflictsOutput < Struct.new(
      :conflict_metadata,
      :merge_hunks,
      :next_token,
      :destination_commit_id,
      :source_commit_id,
      :base_commit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePullRequestEventsInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         pull_request_event_type: "PULL_REQUEST_CREATED", # accepts PULL_REQUEST_CREATED, PULL_REQUEST_STATUS_CHANGED, PULL_REQUEST_SOURCE_REFERENCE_UPDATED, PULL_REQUEST_MERGE_STATE_CHANGED, PULL_REQUEST_APPROVAL_RULE_CREATED, PULL_REQUEST_APPROVAL_RULE_UPDATED, PULL_REQUEST_APPROVAL_RULE_DELETED, PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN, PULL_REQUEST_APPROVAL_STATE_CHANGED
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
    #   the event. Examples include updating the pull request with more
    #   commits or changing the status of a pull request.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-zero, non-negative integer used to limit the number of
    #   returned results. The default is 100 events, which is also the
    #   maximum number of events that can be returned in a result.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A file cannot be added to the repository because the specified path
    # name has the same name as a file that already exists in this
    # repository. Either provide a different name for the file, or specify a
    # different path for the file.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DirectoryNameConflictsWithFileNameException AWS API Documentation
    #
    class DirectoryNameConflictsWithFileNameException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateApprovalRuleTemplateFromRepositoryInput
    #   data as a hash:
    #
    #       {
    #         approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #         repository_name: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] approval_rule_template_name
    #   The name of the approval rule template to disassociate from a
    #   specified repository.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository you want to disassociate from the
    #   template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/DisassociateApprovalRuleTemplateFromRepositoryInput AWS API Documentation
    #
    class DisassociateApprovalRuleTemplateFromRepositoryInput < Struct.new(
      :approval_rule_template_name,
      :repository_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An encryption integrity check failed.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/EncryptionIntegrityChecksFailedException AWS API Documentation
    #
    class EncryptionIntegrityChecksFailedException < Aws::EmptyStructure; end

    # An encryption key could not be accessed.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/EncryptionKeyAccessDeniedException AWS API Documentation
    #
    class EncryptionKeyAccessDeniedException < Aws::EmptyStructure; end

    # The encryption key is disabled.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/EncryptionKeyDisabledException AWS API Documentation
    #
    class EncryptionKeyDisabledException < Aws::EmptyStructure; end

    # No encryption key was found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/EncryptionKeyNotFoundException AWS API Documentation
    #
    class EncryptionKeyNotFoundException < Aws::EmptyStructure; end

    # The encryption key is not available.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/EncryptionKeyUnavailableException AWS API Documentation
    #
    class EncryptionKeyUnavailableException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass EvaluatePullRequestApprovalRulesInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         revision_id: "RevisionId", # required
    #       }
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request you want to evaluate.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The system-generated ID for the pull request revision. To retrieve
    #   the most recent revision ID for a pull request, use GetPullRequest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/EvaluatePullRequestApprovalRulesInput AWS API Documentation
    #
    class EvaluatePullRequestApprovalRulesInput < Struct.new(
      :pull_request_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation
    #   The result of the evaluation, including the names of the rules whose
    #   conditions have been met (if any), the names of the rules whose
    #   conditions have not been met (if any), whether the pull request is
    #   in the approved state, and whether the pull request approval rule
    #   has been set aside by an override.
    #   @return [Types::Evaluation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/EvaluatePullRequestApprovalRulesOutput AWS API Documentation
    #
    class EvaluatePullRequestApprovalRulesOutput < Struct.new(
      :evaluation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the approval rules applied to a pull request
    # and whether conditions have been met.
    #
    # @!attribute [rw] approved
    #   Whether the state of the pull request is approved.
    #   @return [Boolean]
    #
    # @!attribute [rw] overridden
    #   Whether the approval rule requirements for the pull request have
    #   been overridden and no longer need to be met.
    #   @return [Boolean]
    #
    # @!attribute [rw] approval_rules_satisfied
    #   The names of the approval rules that have had their conditions met.
    #   @return [Array<String>]
    #
    # @!attribute [rw] approval_rules_not_satisfied
    #   The names of the approval rules that have not had their conditions
    #   met.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/Evaluation AWS API Documentation
    #
    class Evaluation < Struct.new(
      :approved,
      :overridden,
      :approval_rules_satisfied,
      :approval_rules_not_satisfied)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a file in a repository.
    #
    # @!attribute [rw] blob_id
    #   The blob ID that contains the file information.
    #   @return [String]
    #
    # @!attribute [rw] absolute_path
    #   The fully qualified path to the file in the repository.
    #   @return [String]
    #
    # @!attribute [rw] relative_path
    #   The relative path of the file from the folder where the query
    #   originated.
    #   @return [String]
    #
    # @!attribute [rw] file_mode
    #   The extrapolated file mode permissions for the file. Valid values
    #   include EXECUTABLE and NORMAL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/File AWS API Documentation
    #
    class File < Struct.new(
      :blob_id,
      :absolute_path,
      :relative_path,
      :file_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The commit cannot be created because both a source file and file
    # content have been specified for the same file. You cannot provide
    # both. Either specify a source file or provide the file content
    # directly.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/FileContentAndSourceFileSpecifiedException AWS API Documentation
    #
    class FileContentAndSourceFileSpecifiedException < Aws::EmptyStructure; end

    # The file cannot be added because it is empty. Empty files cannot be
    # added to the repository with this API.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/FileContentRequiredException AWS API Documentation
    #
    class FileContentRequiredException < Aws::EmptyStructure; end

    # The file cannot be added because it is too large. The maximum file
    # size is 6 MB, and the combined file content change size is 7 MB.
    # Consider making these changes using a Git client.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/FileContentSizeLimitExceededException AWS API Documentation
    #
    class FileContentSizeLimitExceededException < Aws::EmptyStructure; end

    # The specified file does not exist. Verify that you have used the
    # correct file name, full path, and extension.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/FileDoesNotExistException AWS API Documentation
    #
    class FileDoesNotExistException < Aws::EmptyStructure; end

    # The commit cannot be created because no files have been specified as
    # added, updated, or changed (PutFile or DeleteFile) for the commit.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/FileEntryRequiredException AWS API Documentation
    #
    class FileEntryRequiredException < Aws::EmptyStructure; end

    # A file to be added, updated, or deleted as part of a commit.
    #
    # @!attribute [rw] absolute_path
    #   The full path to the file to be added or updated, including the name
    #   of the file.
    #   @return [String]
    #
    # @!attribute [rw] blob_id
    #   The blob ID that contains the file information.
    #   @return [String]
    #
    # @!attribute [rw] file_mode
    #   The extrapolated file mode permissions for the file. Valid values
    #   include EXECUTABLE and NORMAL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/FileMetadata AWS API Documentation
    #
    class FileMetadata < Struct.new(
      :absolute_path,
      :blob_id,
      :file_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The commit cannot be created because no file mode has been specified.
    # A file mode is required to update mode permissions for a file.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/FileModeRequiredException AWS API Documentation
    #
    class FileModeRequiredException < Aws::EmptyStructure; end

    # Information about file modes in a merge or pull request.
    #
    # @!attribute [rw] source
    #   The file mode of a file in the source of a merge or pull request.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The file mode of a file in the destination of a merge or pull
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] base
    #   The file mode of a file in the base of a merge or pull request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/FileModes AWS API Documentation
    #
    class FileModes < Struct.new(
      :source,
      :destination,
      :base)
      SENSITIVE = []
      include Aws::Structure
    end

    # A file cannot be added to the repository because the specified file
    # name has the same name as a directory in this repository. Either
    # provide another name for the file, or add the file in a directory that
    # does not match the file name.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/FileNameConflictsWithDirectoryNameException AWS API Documentation
    #
    class FileNameConflictsWithDirectoryNameException < Aws::EmptyStructure; end

    # The commit cannot be created because a specified file path points to a
    # submodule. Verify that the destination files have valid file paths
    # that do not point to a submodule.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/FilePathConflictsWithSubmodulePathException AWS API Documentation
    #
    class FilePathConflictsWithSubmodulePathException < Aws::EmptyStructure; end

    # Information about the size of files in a merge or pull request.
    #
    # @!attribute [rw] source
    #   The size of a file in the source of a merge or pull request.
    #   @return [Integer]
    #
    # @!attribute [rw] destination
    #   The size of a file in the destination of a merge or pull request.
    #   @return [Integer]
    #
    # @!attribute [rw] base
    #   The size of a file in the base of a merge or pull request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/FileSizes AWS API Documentation
    #
    class FileSizes < Struct.new(
      :source,
      :destination,
      :base)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified file exceeds the file size limit for AWS CodeCommit. For
    # more information about limits in AWS CodeCommit, see [AWS CodeCommit
    # User Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/FileTooLargeException AWS API Documentation
    #
    class FileTooLargeException < Aws::EmptyStructure; end

    # Returns information about a folder in a repository.
    #
    # @!attribute [rw] tree_id
    #   The full SHA-1 pointer of the tree information for the commit that
    #   contains the folder.
    #   @return [String]
    #
    # @!attribute [rw] absolute_path
    #   The fully qualified path of the folder in the repository.
    #   @return [String]
    #
    # @!attribute [rw] relative_path
    #   The relative path of the specified folder from the folder where the
    #   query originated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/Folder AWS API Documentation
    #
    class Folder < Struct.new(
      :tree_id,
      :absolute_path,
      :relative_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The commit cannot be created because at least one of the overall
    # changes in the commit results in a folder whose contents exceed the
    # limit of 6 MB. Either reduce the number and size of your changes, or
    # split the changes across multiple folders.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/FolderContentSizeLimitExceededException AWS API Documentation
    #
    class FolderContentSizeLimitExceededException < Aws::EmptyStructure; end

    # The specified folder does not exist. Either the folder name is not
    # correct, or you did not enter the full path to the folder.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/FolderDoesNotExistException AWS API Documentation
    #
    class FolderDoesNotExistException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass GetApprovalRuleTemplateInput
    #   data as a hash:
    #
    #       {
    #         approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #       }
    #
    # @!attribute [rw] approval_rule_template_name
    #   The name of the approval rule template for which you want to get
    #   information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetApprovalRuleTemplateInput AWS API Documentation
    #
    class GetApprovalRuleTemplateInput < Struct.new(
      :approval_rule_template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approval_rule_template
    #   The content and structure of the approval rule template.
    #   @return [Types::ApprovalRuleTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetApprovalRuleTemplateOutput AWS API Documentation
    #
    class GetApprovalRuleTemplateOutput < Struct.new(
      :approval_rule_template)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCommentReactionsInput
    #   data as a hash:
    #
    #       {
    #         comment_id: "CommentId", # required
    #         reaction_user_arn: "Arn",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] comment_id
    #   The ID of the comment for which you want to get reactions
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] reaction_user_arn
    #   Optional. The Amazon Resource Name (ARN) of the user or identity for
    #   which you want to get reaction information.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-zero, non-negative integer used to limit the number of
    #   returned results. The default is the same as the allowed maximum,
    #   1,000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommentReactionsInput AWS API Documentation
    #
    class GetCommentReactionsInput < Struct.new(
      :comment_id,
      :reaction_user_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reactions_for_comment
    #   An array of reactions to the specified comment.
    #   @return [Array<Types::ReactionForComment>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that can be used in a request to return the
    #   next batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommentReactionsOutput AWS API Documentation
    #
    class GetCommentReactionsOutput < Struct.new(
      :reactions_for_comment,
      :next_token)
      SENSITIVE = []
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
    #   ID of the before commit.
    #   @return [String]
    #
    # @!attribute [rw] after_commit_id
    #   To establish the directionality of the comparison, the full commit
    #   ID of the after commit.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-zero, non-negative integer used to limit the number of
    #   returned results. The default is 100 comments, but you can configure
    #   up to 500.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-zero, non-negative integer used to limit the number of
    #   returned results. The default is 100 comments. You can return up to
    #   500 comments with a single request.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The commit ID. Commit IDs are the full SHA ID of the commit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetCommitInput AWS API Documentation
    #
    class GetCommitInput < Struct.new(
      :repository_name,
      :commit_id)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   identify a commit (for example, the full commit ID). Optional. If
    #   not specified, all changes before the `afterCommitSpecifier` value
    #   are shown. If you do not use `beforeCommitSpecifier` in your
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
    #   specified, differences are shown for all paths.
    #   @return [String]
    #
    # @!attribute [rw] after_path
    #   The file path in which to check differences. Limits the results to
    #   this path. Can also be used to specify the changed name of a
    #   directory or folder, if it has changed. If not specified,
    #   differences are shown for all paths.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-zero, non-negative integer used to limit the number of
    #   returned results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that, when provided in a request, returns the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] differences
    #   A data type object that contains information about the differences,
    #   including whether the difference is added, modified, or deleted (A,
    #   D, M).
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFileInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         commit_specifier: "CommitName",
    #         file_path: "Path", # required
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the file.
    #   @return [String]
    #
    # @!attribute [rw] commit_specifier
    #   The fully quaified reference that identifies the commit that
    #   contains the file. For example, you can specify a full commit ID, a
    #   tag, a branch name, or a reference such as refs/heads/master. If
    #   none is provided, the head commit is used.
    #   @return [String]
    #
    # @!attribute [rw] file_path
    #   The fully qualified path to the file, including the full name and
    #   extension of the file. For example, /examples/file.md is the fully
    #   qualified path to a file named file.md in a folder named examples.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetFileInput AWS API Documentation
    #
    class GetFileInput < Struct.new(
      :repository_name,
      :commit_specifier,
      :file_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] commit_id
    #   The full commit ID of the commit that contains the content returned
    #   by GetFile.
    #   @return [String]
    #
    # @!attribute [rw] blob_id
    #   The blob ID of the object that represents the file content.
    #   @return [String]
    #
    # @!attribute [rw] file_path
    #   The fully qualified path to the specified file. Returns the name and
    #   extension of the file.
    #   @return [String]
    #
    # @!attribute [rw] file_mode
    #   The extrapolated file mode permissions of the blob. Valid values
    #   include strings such as EXECUTABLE and not numeric values.
    #
    #   <note markdown="1"> The file mode permissions returned by this API are not the standard
    #   file mode permission values, such as 100644, but rather extrapolated
    #   values. See the supported return values.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] file_size
    #   The size of the contents of the file, in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] file_content
    #   The base-64 encoded binary data object that represents the content
    #   of the file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetFileOutput AWS API Documentation
    #
    class GetFileOutput < Struct.new(
      :commit_id,
      :blob_id,
      :file_path,
      :file_mode,
      :file_size,
      :file_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFolderInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         commit_specifier: "CommitName",
    #         folder_path: "Path", # required
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] commit_specifier
    #   A fully qualified reference used to identify a commit that contains
    #   the version of the folder's content to return. A fully qualified
    #   reference can be a commit ID, branch name, tag, or reference such as
    #   HEAD. If no specifier is provided, the folder content is returned as
    #   it exists in the HEAD commit.
    #   @return [String]
    #
    # @!attribute [rw] folder_path
    #   The fully qualified path to the folder whose contents are returned,
    #   including the folder name. For example, /examples is a
    #   fully-qualified path to a folder named examples that was created off
    #   of the root directory (/) of a repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetFolderInput AWS API Documentation
    #
    class GetFolderInput < Struct.new(
      :repository_name,
      :commit_specifier,
      :folder_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] commit_id
    #   The full commit ID used as a reference for the returned version of
    #   the folder content.
    #   @return [String]
    #
    # @!attribute [rw] folder_path
    #   The fully qualified path of the folder whose contents are returned.
    #   @return [String]
    #
    # @!attribute [rw] tree_id
    #   The full SHA-1 pointer of the tree information for the commit that
    #   contains the folder.
    #   @return [String]
    #
    # @!attribute [rw] sub_folders
    #   The list of folders that exist under the specified folder, if any.
    #   @return [Array<Types::Folder>]
    #
    # @!attribute [rw] files
    #   The list of files in the specified folder, if any.
    #   @return [Array<Types::File>]
    #
    # @!attribute [rw] symbolic_links
    #   The list of symbolic links to other files and folders in the
    #   specified folder, if any.
    #   @return [Array<Types::SymbolicLink>]
    #
    # @!attribute [rw] sub_modules
    #   The list of submodules in the specified folder, if any.
    #   @return [Array<Types::SubModule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetFolderOutput AWS API Documentation
    #
    class GetFolderOutput < Struct.new(
      :commit_id,
      :folder_path,
      :tree_id,
      :sub_folders,
      :files,
      :symbolic_links,
      :sub_modules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMergeCommitInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         source_commit_specifier: "CommitName", # required
    #         destination_commit_specifier: "CommitName", # required
    #         conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #         conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the merge commit about
    #   which you want to get information.
    #   @return [String]
    #
    # @!attribute [rw] source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the
    #   same file has differences in both branches. If LINE\_LEVEL is
    #   specified, a conflict is considered not mergeable if the same file
    #   in both branches has differences on the same line.
    #   @return [String]
    #
    # @!attribute [rw] conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether
    #   to attempt automatically merging two versions of a file. The default
    #   is NONE, which requires any conflicts to be resolved manually before
    #   the merge operation is successful.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetMergeCommitInput AWS API Documentation
    #
    class GetMergeCommitInput < Struct.new(
      :repository_name,
      :source_commit_specifier,
      :destination_commit_specifier,
      :conflict_detail_level,
      :conflict_resolution_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_commit_id
    #   The commit ID of the source commit specifier that was used in the
    #   merge evaluation.
    #   @return [String]
    #
    # @!attribute [rw] destination_commit_id
    #   The commit ID of the destination commit specifier that was used in
    #   the merge evaluation.
    #   @return [String]
    #
    # @!attribute [rw] base_commit_id
    #   The commit ID of the merge base.
    #   @return [String]
    #
    # @!attribute [rw] merged_commit_id
    #   The commit ID for the merge commit created when the source branch
    #   was merged into the destination branch. If the fast-forward merge
    #   strategy was used, there is no merge commit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetMergeCommitOutput AWS API Documentation
    #
    class GetMergeCommitOutput < Struct.new(
      :source_commit_id,
      :destination_commit_id,
      :base_commit_id,
      :merged_commit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMergeConflictsInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         destination_commit_specifier: "CommitName", # required
    #         source_commit_specifier: "CommitName", # required
    #         merge_option: "FAST_FORWARD_MERGE", # required, accepts FAST_FORWARD_MERGE, SQUASH_MERGE, THREE_WAY_MERGE
    #         conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #         max_conflict_files: 1,
    #         conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where the pull request was created.
    #   @return [String]
    #
    # @!attribute [rw] destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] merge_option
    #   The merge option or strategy you want to use to merge the code.
    #   @return [String]
    #
    # @!attribute [rw] conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the
    #   same file has differences in both branches. If LINE\_LEVEL is
    #   specified, a conflict is considered not mergeable if the same file
    #   in both branches has differences on the same line.
    #   @return [String]
    #
    # @!attribute [rw] max_conflict_files
    #   The maximum number of files to include in the output.
    #   @return [Integer]
    #
    # @!attribute [rw] conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether
    #   to attempt automatically merging two versions of a file. The default
    #   is NONE, which requires any conflicts to be resolved manually before
    #   the merge operation is successful.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetMergeConflictsInput AWS API Documentation
    #
    class GetMergeConflictsInput < Struct.new(
      :repository_name,
      :destination_commit_specifier,
      :source_commit_specifier,
      :merge_option,
      :conflict_detail_level,
      :max_conflict_files,
      :conflict_resolution_strategy,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mergeable
    #   A Boolean value that indicates whether the code is mergeable by the
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
    # @!attribute [rw] base_commit_id
    #   The commit ID of the merge base.
    #   @return [String]
    #
    # @!attribute [rw] conflict_metadata_list
    #   A list of metadata for any conflicting files. If the specified merge
    #   strategy is FAST\_FORWARD\_MERGE, this list is always empty.
    #   @return [Array<Types::ConflictMetadata>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that can be used in a request to return the
    #   next batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetMergeConflictsOutput AWS API Documentation
    #
    class GetMergeConflictsOutput < Struct.new(
      :mergeable,
      :destination_commit_id,
      :source_commit_id,
      :base_commit_id,
      :conflict_metadata_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMergeOptionsInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         source_commit_specifier: "CommitName", # required
    #         destination_commit_specifier: "CommitName", # required
    #         conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #         conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that contains the commits about which you
    #   want to get merge options.
    #   @return [String]
    #
    # @!attribute [rw] source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the
    #   same file has differences in both branches. If LINE\_LEVEL is
    #   specified, a conflict is considered not mergeable if the same file
    #   in both branches has differences on the same line.
    #   @return [String]
    #
    # @!attribute [rw] conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether
    #   to attempt automatically merging two versions of a file. The default
    #   is NONE, which requires any conflicts to be resolved manually before
    #   the merge operation is successful.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetMergeOptionsInput AWS API Documentation
    #
    class GetMergeOptionsInput < Struct.new(
      :repository_name,
      :source_commit_specifier,
      :destination_commit_specifier,
      :conflict_detail_level,
      :conflict_resolution_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] merge_options
    #   The merge option or strategy used to merge the code.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_commit_id
    #   The commit ID of the source commit specifier that was used in the
    #   merge evaluation.
    #   @return [String]
    #
    # @!attribute [rw] destination_commit_id
    #   The commit ID of the destination commit specifier that was used in
    #   the merge evaluation.
    #   @return [String]
    #
    # @!attribute [rw] base_commit_id
    #   The commit ID of the merge base.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetMergeOptionsOutput AWS API Documentation
    #
    class GetMergeOptionsOutput < Struct.new(
      :merge_options,
      :source_commit_id,
      :destination_commit_id,
      :base_commit_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPullRequestApprovalStatesInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         revision_id: "RevisionId", # required
    #       }
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID for the pull request.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The system-generated ID for the pull request revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetPullRequestApprovalStatesInput AWS API Documentation
    #
    class GetPullRequestApprovalStatesInput < Struct.new(
      :pull_request_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approvals
    #   Information about users who have approved the pull request.
    #   @return [Array<Types::Approval>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetPullRequestApprovalStatesOutput AWS API Documentation
    #
    class GetPullRequestApprovalStatesOutput < Struct.new(
      :approvals)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPullRequestOverrideStateInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         revision_id: "RevisionId", # required
    #       }
    #
    # @!attribute [rw] pull_request_id
    #   The ID of the pull request for which you want to get information
    #   about whether approval rules have been set aside (overridden).
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The system-generated ID of the revision for the pull request. To
    #   retrieve the most recent revision ID, use GetPullRequest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetPullRequestOverrideStateInput AWS API Documentation
    #
    class GetPullRequestOverrideStateInput < Struct.new(
      :pull_request_id,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] overridden
    #   A Boolean value that indicates whether a pull request has had its
    #   rules set aside (TRUE) or whether all approval rules still apply
    #   (FALSE).
    #   @return [Boolean]
    #
    # @!attribute [rw] overrider
    #   The Amazon Resource Name (ARN) of the user or identity that overrode
    #   the rules and their requirements for the pull request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/GetPullRequestOverrideStateOutput AWS API Documentation
    #
    class GetPullRequestOverrideStateOutput < Struct.new(
      :overridden,
      :overrider)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The client request token is not valid. Either the token is not in a
    # valid format, or the token has been used in a previous request and
    # cannot be reused.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/IdempotencyParameterMismatchException AWS API Documentation
    #
    class IdempotencyParameterMismatchException < Aws::EmptyStructure; end

    # The Amazon Resource Name (ARN) is not valid. Make sure that you have
    # provided the full ARN for the user who initiated the change for the
    # pull request, and then try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidActorArnException AWS API Documentation
    #
    class InvalidActorArnException < Aws::EmptyStructure; end

    # The content for the approval rule is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidApprovalRuleContentException AWS API Documentation
    #
    class InvalidApprovalRuleContentException < Aws::EmptyStructure; end

    # The name for the approval rule is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidApprovalRuleNameException AWS API Documentation
    #
    class InvalidApprovalRuleNameException < Aws::EmptyStructure; end

    # The content of the approval rule template is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidApprovalRuleTemplateContentException AWS API Documentation
    #
    class InvalidApprovalRuleTemplateContentException < Aws::EmptyStructure; end

    # The description for the approval rule template is not valid because it
    # exceeds the maximum characters allowed for a description. For more
    # information about limits in AWS CodeCommit, see [AWS CodeCommit User
    # Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidApprovalRuleTemplateDescriptionException AWS API Documentation
    #
    class InvalidApprovalRuleTemplateDescriptionException < Aws::EmptyStructure; end

    # The name of the approval rule template is not valid. Template names
    # must be between 1 and 100 valid characters in length. For more
    # information about limits in AWS CodeCommit, see [AWS CodeCommit User
    # Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidApprovalRuleTemplateNameException AWS API Documentation
    #
    class InvalidApprovalRuleTemplateNameException < Aws::EmptyStructure; end

    # The state for the approval is not valid. Valid values include APPROVE
    # and REVOKE.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidApprovalStateException AWS API Documentation
    #
    class InvalidApprovalStateException < Aws::EmptyStructure; end

    # The Amazon Resource Name (ARN) is not valid. Make sure that you have
    # provided the full ARN for the author of the pull request, and then try
    # again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidAuthorArnException AWS API Documentation
    #
    class InvalidAuthorArnException < Aws::EmptyStructure; end

    # The specified blob is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidBlobIdException AWS API Documentation
    #
    class InvalidBlobIdException < Aws::EmptyStructure; end

    # The specified reference name is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidBranchNameException AWS API Documentation
    #
    class InvalidBranchNameException < Aws::EmptyStructure; end

    # The client request token is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidClientRequestTokenException AWS API Documentation
    #
    class InvalidClientRequestTokenException < Aws::EmptyStructure; end

    # The comment ID is not in a valid format. Make sure that you have
    # provided the full comment ID.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidCommentIdException AWS API Documentation
    #
    class InvalidCommentIdException < Aws::EmptyStructure; end

    # The specified commit is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidCommitException AWS API Documentation
    #
    class InvalidCommitException < Aws::EmptyStructure; end

    # The specified commit ID is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidCommitIdException AWS API Documentation
    #
    class InvalidCommitIdException < Aws::EmptyStructure; end

    # The specified conflict detail level is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidConflictDetailLevelException AWS API Documentation
    #
    class InvalidConflictDetailLevelException < Aws::EmptyStructure; end

    # The specified conflict resolution list is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidConflictResolutionException AWS API Documentation
    #
    class InvalidConflictResolutionException < Aws::EmptyStructure; end

    # The specified conflict resolution strategy is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidConflictResolutionStrategyException AWS API Documentation
    #
    class InvalidConflictResolutionStrategyException < Aws::EmptyStructure; end

    # The specified continuation token is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidContinuationTokenException AWS API Documentation
    #
    class InvalidContinuationTokenException < Aws::EmptyStructure; end

    # The specified deletion parameter is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidDeletionParameterException AWS API Documentation
    #
    class InvalidDeletionParameterException < Aws::EmptyStructure; end

    # The pull request description is not valid. Descriptions cannot be more
    # than 1,000 characters.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidDescriptionException AWS API Documentation
    #
    class InvalidDescriptionException < Aws::EmptyStructure; end

    # The destination commit specifier is not valid. You must provide a
    # valid branch name, tag, or full commit ID.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidDestinationCommitSpecifierException AWS API Documentation
    #
    class InvalidDestinationCommitSpecifierException < Aws::EmptyStructure; end

    # The specified email address either contains one or more characters
    # that are not allowed, or it exceeds the maximum number of characters
    # allowed for an email address.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidEmailException AWS API Documentation
    #
    class InvalidEmailException < Aws::EmptyStructure; end

    # The location of the file is not valid. Make sure that you include the
    # file name and extension.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidFileLocationException AWS API Documentation
    #
    class InvalidFileLocationException < Aws::EmptyStructure; end

    # The specified file mode permission is not valid. For a list of valid
    # file mode permissions, see PutFile.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidFileModeException AWS API Documentation
    #
    class InvalidFileModeException < Aws::EmptyStructure; end

    # The position is not valid. Make sure that the line number exists in
    # the version of the file you want to comment on.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidFilePositionException AWS API Documentation
    #
    class InvalidFilePositionException < Aws::EmptyStructure; end

    # The specified value for the number of conflict files to return is not
    # valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidMaxConflictFilesException AWS API Documentation
    #
    class InvalidMaxConflictFilesException < Aws::EmptyStructure; end

    # The specified value for the number of merge hunks to return is not
    # valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidMaxMergeHunksException AWS API Documentation
    #
    class InvalidMaxMergeHunksException < Aws::EmptyStructure; end

    # The specified number of maximum results is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidMaxResultsException AWS API Documentation
    #
    class InvalidMaxResultsException < Aws::EmptyStructure; end

    # The specified merge option is not valid for this operation. Not all
    # merge strategies are supported for all operations.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidMergeOptionException AWS API Documentation
    #
    class InvalidMergeOptionException < Aws::EmptyStructure; end

    # The specified sort order is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidOrderException AWS API Documentation
    #
    class InvalidOrderException < Aws::EmptyStructure; end

    # The override status is not valid. Valid statuses are OVERRIDE and
    # REVOKE.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidOverrideStatusException AWS API Documentation
    #
    class InvalidOverrideStatusException < Aws::EmptyStructure; end

    # The parent commit ID is not valid. The commit ID cannot be empty, and
    # must match the head commit ID for the branch of the repository where
    # you want to add or update a file.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidParentCommitIdException AWS API Documentation
    #
    class InvalidParentCommitIdException < Aws::EmptyStructure; end

    # The specified path is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidPathException AWS API Documentation
    #
    class InvalidPathException < Aws::EmptyStructure; end

    # The pull request event type is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidPullRequestEventTypeException AWS API Documentation
    #
    class InvalidPullRequestEventTypeException < Aws::EmptyStructure; end

    # The pull request ID is not valid. Make sure that you have provided the
    # full ID and that the pull request is in the specified repository, and
    # then try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidPullRequestIdException AWS API Documentation
    #
    class InvalidPullRequestIdException < Aws::EmptyStructure; end

    # The pull request status is not valid. The only valid values are `OPEN`
    # and `CLOSED`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidPullRequestStatusException AWS API Documentation
    #
    class InvalidPullRequestStatusException < Aws::EmptyStructure; end

    # The pull request status update is not valid. The only valid update is
    # from `OPEN` to `CLOSED`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidPullRequestStatusUpdateException AWS API Documentation
    #
    class InvalidPullRequestStatusUpdateException < Aws::EmptyStructure; end

    # The Amazon Resource Name (ARN) of the user or identity is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidReactionUserArnException AWS API Documentation
    #
    class InvalidReactionUserArnException < Aws::EmptyStructure; end

    # The value of the reaction is not valid. For more information, see the
    # [AWS CodeCommit User Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidReactionValueException AWS API Documentation
    #
    class InvalidReactionValueException < Aws::EmptyStructure; end

    # The specified reference name format is not valid. Reference names must
    # conform to the Git references format (for example, refs/heads/master).
    # For more information, see [Git Internals - Git References][1] or
    # consult your Git documentation.
    #
    #
    #
    # [1]: https://git-scm.com/book/en/v2/Git-Internals-Git-References
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidReferenceNameException AWS API Documentation
    #
    class InvalidReferenceNameException < Aws::EmptyStructure; end

    # Either the enum is not in a valid format, or the specified file
    # version enum is not valid in respect to the current file version.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidRelativeFileVersionEnumException AWS API Documentation
    #
    class InvalidRelativeFileVersionEnumException < Aws::EmptyStructure; end

    # Automerge was specified for resolving the conflict, but the
    # replacement type is not valid or content is missing.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidReplacementContentException AWS API Documentation
    #
    class InvalidReplacementContentException < Aws::EmptyStructure; end

    # Automerge was specified for resolving the conflict, but the specified
    # replacement type is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidReplacementTypeException AWS API Documentation
    #
    class InvalidReplacementTypeException < Aws::EmptyStructure; end

    # The specified repository description is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidRepositoryDescriptionException AWS API Documentation
    #
    class InvalidRepositoryDescriptionException < Aws::EmptyStructure; end

    # A specified repository name is not valid.
    #
    # <note markdown="1"> This exception occurs only when a specified repository name is not
    # valid. Other exceptions occur when a required repository parameter is
    # missing, or when a specified repository does not exist.
    #
    #  </note>
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidRepositoryNameException AWS API Documentation
    #
    class InvalidRepositoryNameException < Aws::EmptyStructure; end

    # One or more branch names specified for the trigger is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidRepositoryTriggerBranchNameException AWS API Documentation
    #
    class InvalidRepositoryTriggerBranchNameException < Aws::EmptyStructure; end

    # The custom data provided for the trigger is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidRepositoryTriggerCustomDataException AWS API Documentation
    #
    class InvalidRepositoryTriggerCustomDataException < Aws::EmptyStructure; end

    # The Amazon Resource Name (ARN) for the trigger is not valid for the
    # specified destination. The most common reason for this error is that
    # the ARN does not meet the requirements for the service type.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidRepositoryTriggerDestinationArnException AWS API Documentation
    #
    class InvalidRepositoryTriggerDestinationArnException < Aws::EmptyStructure; end

    # One or more events specified for the trigger is not valid. Check to
    # make sure that all events specified match the requirements for allowed
    # events.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidRepositoryTriggerEventsException AWS API Documentation
    #
    class InvalidRepositoryTriggerEventsException < Aws::EmptyStructure; end

    # The name of the trigger is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidRepositoryTriggerNameException AWS API Documentation
    #
    class InvalidRepositoryTriggerNameException < Aws::EmptyStructure; end

    # The AWS Region for the trigger target does not match the AWS Region
    # for the repository. Triggers must be created in the same Region as the
    # target for the trigger.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidRepositoryTriggerRegionException AWS API Documentation
    #
    class InvalidRepositoryTriggerRegionException < Aws::EmptyStructure; end

    # The value for the resource ARN is not valid. For more information
    # about resources in AWS CodeCommit, see [CodeCommit Resources and
    # Operations][1] in the AWS CodeCommit User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidResourceArnException AWS API Documentation
    #
    class InvalidResourceArnException < Aws::EmptyStructure; end

    # The revision ID is not valid. Use GetPullRequest to determine the
    # value.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidRevisionIdException AWS API Documentation
    #
    class InvalidRevisionIdException < Aws::EmptyStructure; end

    # The SHA-256 hash signature for the rule content is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidRuleContentSha256Exception AWS API Documentation
    #
    class InvalidRuleContentSha256Exception < Aws::EmptyStructure; end

    # The specified sort by value is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidSortByException AWS API Documentation
    #
    class InvalidSortByException < Aws::EmptyStructure; end

    # The source commit specifier is not valid. You must provide a valid
    # branch name, tag, or full commit ID.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidSourceCommitSpecifierException AWS API Documentation
    #
    class InvalidSourceCommitSpecifierException < Aws::EmptyStructure; end

    # The specified tag is not valid. Key names cannot be prefixed with
    # aws:.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidSystemTagUsageException AWS API Documentation
    #
    class InvalidSystemTagUsageException < Aws::EmptyStructure; end

    # The list of tags is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidTagKeysListException AWS API Documentation
    #
    class InvalidTagKeysListException < Aws::EmptyStructure; end

    # The map of tags is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidTagsMapException AWS API Documentation
    #
    class InvalidTagsMapException < Aws::EmptyStructure; end

    # The specified target branch is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidTargetBranchException AWS API Documentation
    #
    class InvalidTargetBranchException < Aws::EmptyStructure; end

    # The target for the pull request is not valid. A target must contain
    # the full values for the repository name, source branch, and
    # destination branch for the pull request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidTargetException AWS API Documentation
    #
    class InvalidTargetException < Aws::EmptyStructure; end

    # The targets for the pull request is not valid or not in a valid
    # format. Targets are a list of target objects. Each target object must
    # contain the full values for the repository name, source branch, and
    # destination branch for a pull request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidTargetsException AWS API Documentation
    #
    class InvalidTargetsException < Aws::EmptyStructure; end

    # The title of the pull request is not valid. Pull request titles cannot
    # exceed 100 characters in length.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/InvalidTitleException AWS API Documentation
    #
    class InvalidTitleException < Aws::EmptyStructure; end

    # Information about whether a file is binary or textual in a merge or
    # pull request operation.
    #
    # @!attribute [rw] source
    #   The binary or non-binary status of file in the source of a merge or
    #   pull request.
    #   @return [Boolean]
    #
    # @!attribute [rw] destination
    #   The binary or non-binary status of a file in the destination of a
    #   merge or pull request.
    #   @return [Boolean]
    #
    # @!attribute [rw] base
    #   The binary or non-binary status of a file in the base of a merge or
    #   pull request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/IsBinaryFile AWS API Documentation
    #
    class IsBinaryFile < Struct.new(
      :source,
      :destination,
      :base)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListApprovalRuleTemplatesInput
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-zero, non-negative integer used to limit the number of
    #   returned results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListApprovalRuleTemplatesInput AWS API Documentation
    #
    class ListApprovalRuleTemplatesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approval_rule_template_names
    #   The names of all the approval rule templates found in the AWS Region
    #   for your AWS account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that allows the operation to batch the next
    #   results of the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListApprovalRuleTemplatesOutput AWS API Documentation
    #
    class ListApprovalRuleTemplatesOutput < Struct.new(
      :approval_rule_template_names,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssociatedApprovalRuleTemplatesForRepositoryInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository for which you want to list all associated
    #   approval rule templates.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-zero, non-negative integer used to limit the number of
    #   returned results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListAssociatedApprovalRuleTemplatesForRepositoryInput AWS API Documentation
    #
    class ListAssociatedApprovalRuleTemplatesForRepositoryInput < Struct.new(
      :repository_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approval_rule_template_names
    #   The names of all approval rule templates associated with the
    #   repository.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that allows the operation to batch the next
    #   results of the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListAssociatedApprovalRuleTemplatesForRepositoryOutput AWS API Documentation
    #
    class ListAssociatedApprovalRuleTemplatesForRepositoryOutput < Struct.new(
      :approval_rule_template_names,
      :next_token)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-zero, non-negative integer used to limit the number of
    #   returned results.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pull_request_ids
    #   The system-generated IDs of the pull requests.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that allows the operation to batch the next
    #   results of the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListPullRequestsOutput AWS API Documentation
    #
    class ListPullRequestsOutput < Struct.new(
      :pull_request_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRepositoriesForApprovalRuleTemplateInput
    #   data as a hash:
    #
    #       {
    #         approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] approval_rule_template_name
    #   The name of the approval rule template for which you want to list
    #   repositories that are associated with that template.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   A non-zero, non-negative integer used to limit the number of
    #   returned results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListRepositoriesForApprovalRuleTemplateInput AWS API Documentation
    #
    class ListRepositoriesForApprovalRuleTemplateInput < Struct.new(
      :approval_rule_template_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_names
    #   A list of repository names that are associated with the specified
    #   approval rule template.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that allows the operation to batch the next
    #   results of the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListRepositoriesForApprovalRuleTemplateOutput AWS API Documentation
    #
    class ListRepositoriesForApprovalRuleTemplateOutput < Struct.new(
      :repository_names,
      :next_token)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   get information about tags, if any.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that, when provided in a request, returns the
    #   next batch of the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tag key and value pairs associated with the specified
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next_token
    #   An enumeration token that allows the operation to batch the next
    #   results of the operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
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
    #   The position of a change in a compared file, in line number format.
    #   @return [Integer]
    #
    # @!attribute [rw] relative_file_version
    #   In a comparison of commits or a pull request, whether the change is
    #   in the before or after of that comparison.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/Location AWS API Documentation
    #
    class Location < Struct.new(
      :file_path,
      :file_position,
      :relative_file_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The pull request cannot be merged automatically into the destination
    # branch. You must manually merge the branches and resolve any
    # conflicts.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ManualMergeRequiredException AWS API Documentation
    #
    class ManualMergeRequiredException < Aws::EmptyStructure; end

    # The number of branches for the trigger was exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MaximumBranchesExceededException AWS API Documentation
    #
    class MaximumBranchesExceededException < Aws::EmptyStructure; end

    # The number of allowed conflict resolution entries was exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MaximumConflictResolutionEntriesExceededException AWS API Documentation
    #
    class MaximumConflictResolutionEntriesExceededException < Aws::EmptyStructure; end

    # The number of files to load exceeds the allowed limit.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MaximumFileContentToLoadExceededException AWS API Documentation
    #
    class MaximumFileContentToLoadExceededException < Aws::EmptyStructure; end

    # The number of specified files to change as part of this commit exceeds
    # the maximum number of files that can be changed in a single commit.
    # Consider using a Git client for these changes.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MaximumFileEntriesExceededException AWS API Documentation
    #
    class MaximumFileEntriesExceededException < Aws::EmptyStructure; end

    # The number of items to compare between the source or destination
    # branches and the merge base has exceeded the maximum allowed.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MaximumItemsToCompareExceededException AWS API Documentation
    #
    class MaximumItemsToCompareExceededException < Aws::EmptyStructure; end

    # The number of approvals required for the approval rule exceeds the
    # maximum number allowed.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MaximumNumberOfApprovalsExceededException AWS API Documentation
    #
    class MaximumNumberOfApprovalsExceededException < Aws::EmptyStructure; end

    # You cannot create the pull request because the repository has too many
    # open pull requests. The maximum number of open pull requests for a
    # repository is 1,000. Close one or more open pull requests, and then
    # try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MaximumOpenPullRequestsExceededException AWS API Documentation
    #
    class MaximumOpenPullRequestsExceededException < Aws::EmptyStructure; end

    # The maximum number of allowed repository names was exceeded.
    # Currently, this number is 100.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MaximumRepositoryNamesExceededException AWS API Documentation
    #
    class MaximumRepositoryNamesExceededException < Aws::EmptyStructure; end

    # The number of triggers allowed for the repository was exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MaximumRepositoryTriggersExceededException AWS API Documentation
    #
    class MaximumRepositoryTriggersExceededException < Aws::EmptyStructure; end

    # The maximum number of approval rule templates for a repository has
    # been exceeded. You cannot associate more than 25 approval rule
    # templates with a repository.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MaximumRuleTemplatesAssociatedWithRepositoryException AWS API Documentation
    #
    class MaximumRuleTemplatesAssociatedWithRepositoryException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass MergeBranchesByFastForwardInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         source_commit_specifier: "CommitName", # required
    #         destination_commit_specifier: "CommitName", # required
    #         target_branch: "BranchName",
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where you want to merge two branches.
    #   @return [String]
    #
    # @!attribute [rw] source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] target_branch
    #   The branch where the merge is applied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergeBranchesByFastForwardInput AWS API Documentation
    #
    class MergeBranchesByFastForwardInput < Struct.new(
      :repository_name,
      :source_commit_specifier,
      :destination_commit_specifier,
      :target_branch)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] commit_id
    #   The commit ID of the merge in the destination or target branch.
    #   @return [String]
    #
    # @!attribute [rw] tree_id
    #   The tree ID of the merge in the destination or target branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergeBranchesByFastForwardOutput AWS API Documentation
    #
    class MergeBranchesByFastForwardOutput < Struct.new(
      :commit_id,
      :tree_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass MergeBranchesBySquashInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         source_commit_specifier: "CommitName", # required
    #         destination_commit_specifier: "CommitName", # required
    #         target_branch: "BranchName",
    #         conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #         conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #         author_name: "Name",
    #         email: "Email",
    #         commit_message: "Message",
    #         keep_empty_folders: false,
    #         conflict_resolution: {
    #           replace_contents: [
    #             {
    #               file_path: "Path", # required
    #               replacement_type: "KEEP_BASE", # required, accepts KEEP_BASE, KEEP_SOURCE, KEEP_DESTINATION, USE_NEW_CONTENT
    #               content: "data",
    #               file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #             },
    #           ],
    #           delete_files: [
    #             {
    #               file_path: "Path", # required
    #             },
    #           ],
    #           set_file_modes: [
    #             {
    #               file_path: "Path", # required
    #               file_mode: "EXECUTABLE", # required, accepts EXECUTABLE, NORMAL, SYMLINK
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where you want to merge two branches.
    #   @return [String]
    #
    # @!attribute [rw] source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] target_branch
    #   The branch where the merge is applied.
    #   @return [String]
    #
    # @!attribute [rw] conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the
    #   same file has differences in both branches. If LINE\_LEVEL is
    #   specified, a conflict is considered not mergeable if the same file
    #   in both branches has differences on the same line.
    #   @return [String]
    #
    # @!attribute [rw] conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether
    #   to attempt automatically merging two versions of a file. The default
    #   is NONE, which requires any conflicts to be resolved manually before
    #   the merge operation is successful.
    #   @return [String]
    #
    # @!attribute [rw] author_name
    #   The name of the author who created the commit. This information is
    #   used as both the author and committer for the commit.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the person merging the branches. This
    #   information is used in the commit information for the merge.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   The commit message for the merge.
    #   @return [String]
    #
    # @!attribute [rw] keep_empty_folders
    #   If the commit contains deletions, whether to keep a folder or folder
    #   structure if the changes leave the folders empty. If this is
    #   specified as true, a .gitkeep file is created for empty folders. The
    #   default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] conflict_resolution
    #   If AUTOMERGE is the conflict resolution strategy, a list of inputs
    #   to use when resolving conflicts during a merge.
    #   @return [Types::ConflictResolution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergeBranchesBySquashInput AWS API Documentation
    #
    class MergeBranchesBySquashInput < Struct.new(
      :repository_name,
      :source_commit_specifier,
      :destination_commit_specifier,
      :target_branch,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :author_name,
      :email,
      :commit_message,
      :keep_empty_folders,
      :conflict_resolution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] commit_id
    #   The commit ID of the merge in the destination or target branch.
    #   @return [String]
    #
    # @!attribute [rw] tree_id
    #   The tree ID of the merge in the destination or target branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergeBranchesBySquashOutput AWS API Documentation
    #
    class MergeBranchesBySquashOutput < Struct.new(
      :commit_id,
      :tree_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass MergeBranchesByThreeWayInput
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #         source_commit_specifier: "CommitName", # required
    #         destination_commit_specifier: "CommitName", # required
    #         target_branch: "BranchName",
    #         conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #         conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #         author_name: "Name",
    #         email: "Email",
    #         commit_message: "Message",
    #         keep_empty_folders: false,
    #         conflict_resolution: {
    #           replace_contents: [
    #             {
    #               file_path: "Path", # required
    #               replacement_type: "KEEP_BASE", # required, accepts KEEP_BASE, KEEP_SOURCE, KEEP_DESTINATION, USE_NEW_CONTENT
    #               content: "data",
    #               file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #             },
    #           ],
    #           delete_files: [
    #             {
    #               file_path: "Path", # required
    #             },
    #           ],
    #           set_file_modes: [
    #             {
    #               file_path: "Path", # required
    #               file_mode: "EXECUTABLE", # required, accepts EXECUTABLE, NORMAL, SYMLINK
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where you want to merge two branches.
    #   @return [String]
    #
    # @!attribute [rw] source_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] destination_commit_specifier
    #   The branch, tag, HEAD, or other fully qualified reference used to
    #   identify a commit (for example, a branch name or a full commit ID).
    #   @return [String]
    #
    # @!attribute [rw] target_branch
    #   The branch where the merge is applied.
    #   @return [String]
    #
    # @!attribute [rw] conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the
    #   same file has differences in both branches. If LINE\_LEVEL is
    #   specified, a conflict is considered not mergeable if the same file
    #   in both branches has differences on the same line.
    #   @return [String]
    #
    # @!attribute [rw] conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether
    #   to attempt automatically merging two versions of a file. The default
    #   is NONE, which requires any conflicts to be resolved manually before
    #   the merge operation is successful.
    #   @return [String]
    #
    # @!attribute [rw] author_name
    #   The name of the author who created the commit. This information is
    #   used as both the author and committer for the commit.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the person merging the branches. This
    #   information is used in the commit information for the merge.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   The commit message to include in the commit information for the
    #   merge.
    #   @return [String]
    #
    # @!attribute [rw] keep_empty_folders
    #   If the commit contains deletions, whether to keep a folder or folder
    #   structure if the changes leave the folders empty. If true, a
    #   .gitkeep file is created for empty folders. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] conflict_resolution
    #   If AUTOMERGE is the conflict resolution strategy, a list of inputs
    #   to use when resolving conflicts during a merge.
    #   @return [Types::ConflictResolution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergeBranchesByThreeWayInput AWS API Documentation
    #
    class MergeBranchesByThreeWayInput < Struct.new(
      :repository_name,
      :source_commit_specifier,
      :destination_commit_specifier,
      :target_branch,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :author_name,
      :email,
      :commit_message,
      :keep_empty_folders,
      :conflict_resolution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] commit_id
    #   The commit ID of the merge in the destination or target branch.
    #   @return [String]
    #
    # @!attribute [rw] tree_id
    #   The tree ID of the merge in the destination or target branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergeBranchesByThreeWayOutput AWS API Documentation
    #
    class MergeBranchesByThreeWayOutput < Struct.new(
      :commit_id,
      :tree_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about merge hunks in a merge or pull request operation.
    #
    # @!attribute [rw] is_conflict
    #   A Boolean value indicating whether a combination of hunks contains a
    #   conflict. Conflicts occur when the same file or the same lines in a
    #   file were modified in both the source and destination of a merge or
    #   pull request. Valid values include true, false, and null. True when
    #   the hunk represents a conflict and one or more files contains a line
    #   conflict. File mode conflicts in a merge do not set this to true.
    #   @return [Boolean]
    #
    # @!attribute [rw] source
    #   Information about the merge hunk in the source of a merge or pull
    #   request.
    #   @return [Types::MergeHunkDetail]
    #
    # @!attribute [rw] destination
    #   Information about the merge hunk in the destination of a merge or
    #   pull request.
    #   @return [Types::MergeHunkDetail]
    #
    # @!attribute [rw] base
    #   Information about the merge hunk in the base of a merge or pull
    #   request.
    #   @return [Types::MergeHunkDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergeHunk AWS API Documentation
    #
    class MergeHunk < Struct.new(
      :is_conflict,
      :source,
      :destination,
      :base)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the details of a merge hunk that contains a conflict
    # in a merge or pull request operation.
    #
    # @!attribute [rw] start_line
    #   The start position of the hunk in the merge result.
    #   @return [Integer]
    #
    # @!attribute [rw] end_line
    #   The end position of the hunk in the merge result.
    #   @return [Integer]
    #
    # @!attribute [rw] hunk_content
    #   The base-64 encoded content of the hunk merged region that might
    #   contain a conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergeHunkDetail AWS API Documentation
    #
    class MergeHunkDetail < Struct.new(
      :start_line,
      :end_line,
      :hunk_content)
      SENSITIVE = []
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
    # @!attribute [rw] merge_commit_id
    #   The commit ID for the merge commit, if any.
    #   @return [String]
    #
    # @!attribute [rw] merge_option
    #   The merge strategy used in the merge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergeMetadata AWS API Documentation
    #
    class MergeMetadata < Struct.new(
      :is_merged,
      :merged_by,
      :merge_commit_id,
      :merge_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the file operation conflicts in a merge operation.
    #
    # @!attribute [rw] source
    #   The operation (add, modify, or delete) on a file in the source of a
    #   merge or pull request.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The operation on a file in the destination of a merge or pull
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergeOperations AWS API Documentation
    #
    class MergeOperations < Struct.new(
      :source,
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # A merge option or stategy is required, and none was provided.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergeOptionRequiredException AWS API Documentation
    #
    class MergeOptionRequiredException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass MergePullRequestByFastForwardInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         repository_name: "RepositoryName", # required
    #         source_commit_id: "ObjectId",
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pull_request
    #   Information about the specified pull request, including the merge.
    #   @return [Types::PullRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergePullRequestByFastForwardOutput AWS API Documentation
    #
    class MergePullRequestByFastForwardOutput < Struct.new(
      :pull_request)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass MergePullRequestBySquashInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         repository_name: "RepositoryName", # required
    #         source_commit_id: "ObjectId",
    #         conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #         conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #         commit_message: "Message",
    #         author_name: "Name",
    #         email: "Email",
    #         keep_empty_folders: false,
    #         conflict_resolution: {
    #           replace_contents: [
    #             {
    #               file_path: "Path", # required
    #               replacement_type: "KEEP_BASE", # required, accepts KEEP_BASE, KEEP_SOURCE, KEEP_DESTINATION, USE_NEW_CONTENT
    #               content: "data",
    #               file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #             },
    #           ],
    #           delete_files: [
    #             {
    #               file_path: "Path", # required
    #             },
    #           ],
    #           set_file_modes: [
    #             {
    #               file_path: "Path", # required
    #               file_mode: "EXECUTABLE", # required, accepts EXECUTABLE, NORMAL, SYMLINK
    #             },
    #           ],
    #         },
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
    # @!attribute [rw] conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the
    #   same file has differences in both branches. If LINE\_LEVEL is
    #   specified, a conflict is considered not mergeable if the same file
    #   in both branches has differences on the same line.
    #   @return [String]
    #
    # @!attribute [rw] conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether
    #   to attempt automatically merging two versions of a file. The default
    #   is NONE, which requires any conflicts to be resolved manually before
    #   the merge operation is successful.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   The commit message to include in the commit information for the
    #   merge.
    #   @return [String]
    #
    # @!attribute [rw] author_name
    #   The name of the author who created the commit. This information is
    #   used as both the author and committer for the commit.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the person merging the branches. This
    #   information is used in the commit information for the merge.
    #   @return [String]
    #
    # @!attribute [rw] keep_empty_folders
    #   If the commit contains deletions, whether to keep a folder or folder
    #   structure if the changes leave the folders empty. If true, a
    #   .gitkeep file is created for empty folders. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] conflict_resolution
    #   If AUTOMERGE is the conflict resolution strategy, a list of inputs
    #   to use when resolving conflicts during a merge.
    #   @return [Types::ConflictResolution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergePullRequestBySquashInput AWS API Documentation
    #
    class MergePullRequestBySquashInput < Struct.new(
      :pull_request_id,
      :repository_name,
      :source_commit_id,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :commit_message,
      :author_name,
      :email,
      :keep_empty_folders,
      :conflict_resolution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pull_request
    #   Returns information about a pull request.
    #   @return [Types::PullRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergePullRequestBySquashOutput AWS API Documentation
    #
    class MergePullRequestBySquashOutput < Struct.new(
      :pull_request)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass MergePullRequestByThreeWayInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         repository_name: "RepositoryName", # required
    #         source_commit_id: "ObjectId",
    #         conflict_detail_level: "FILE_LEVEL", # accepts FILE_LEVEL, LINE_LEVEL
    #         conflict_resolution_strategy: "NONE", # accepts NONE, ACCEPT_SOURCE, ACCEPT_DESTINATION, AUTOMERGE
    #         commit_message: "Message",
    #         author_name: "Name",
    #         email: "Email",
    #         keep_empty_folders: false,
    #         conflict_resolution: {
    #           replace_contents: [
    #             {
    #               file_path: "Path", # required
    #               replacement_type: "KEEP_BASE", # required, accepts KEEP_BASE, KEEP_SOURCE, KEEP_DESTINATION, USE_NEW_CONTENT
    #               content: "data",
    #               file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #             },
    #           ],
    #           delete_files: [
    #             {
    #               file_path: "Path", # required
    #             },
    #           ],
    #           set_file_modes: [
    #             {
    #               file_path: "Path", # required
    #               file_mode: "EXECUTABLE", # required, accepts EXECUTABLE, NORMAL, SYMLINK
    #             },
    #           ],
    #         },
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
    # @!attribute [rw] conflict_detail_level
    #   The level of conflict detail to use. If unspecified, the default
    #   FILE\_LEVEL is used, which returns a not-mergeable result if the
    #   same file has differences in both branches. If LINE\_LEVEL is
    #   specified, a conflict is considered not mergeable if the same file
    #   in both branches has differences on the same line.
    #   @return [String]
    #
    # @!attribute [rw] conflict_resolution_strategy
    #   Specifies which branch to use when resolving conflicts, or whether
    #   to attempt automatically merging two versions of a file. The default
    #   is NONE, which requires any conflicts to be resolved manually before
    #   the merge operation is successful.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   The commit message to include in the commit information for the
    #   merge.
    #   @return [String]
    #
    # @!attribute [rw] author_name
    #   The name of the author who created the commit. This information is
    #   used as both the author and committer for the commit.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the person merging the branches. This
    #   information is used in the commit information for the merge.
    #   @return [String]
    #
    # @!attribute [rw] keep_empty_folders
    #   If the commit contains deletions, whether to keep a folder or folder
    #   structure if the changes leave the folders empty. If true, a
    #   .gitkeep file is created for empty folders. The default is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] conflict_resolution
    #   If AUTOMERGE is the conflict resolution strategy, a list of inputs
    #   to use when resolving conflicts during a merge.
    #   @return [Types::ConflictResolution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergePullRequestByThreeWayInput AWS API Documentation
    #
    class MergePullRequestByThreeWayInput < Struct.new(
      :pull_request_id,
      :repository_name,
      :source_commit_id,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :commit_message,
      :author_name,
      :email,
      :keep_empty_folders,
      :conflict_resolution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pull_request
    #   Returns information about a pull request.
    #   @return [Types::PullRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MergePullRequestByThreeWayOutput AWS API Documentation
    #
    class MergePullRequestByThreeWayOutput < Struct.new(
      :pull_request)
      SENSITIVE = []
      include Aws::Structure
    end

    # More than one conflict resolution entries exists for the conflict. A
    # conflict can have only one conflict resolution entry.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MultipleConflictResolutionEntriesException AWS API Documentation
    #
    class MultipleConflictResolutionEntriesException < Aws::EmptyStructure; end

    # You cannot include more than one repository in a pull request. Make
    # sure you have specified only one repository name in your request, and
    # then try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/MultipleRepositoriesInPullRequestException AWS API Documentation
    #
    class MultipleRepositoriesInPullRequestException < Aws::EmptyStructure; end

    # The user name is not valid because it has exceeded the character limit
    # for author names.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/NameLengthExceededException AWS API Documentation
    #
    class NameLengthExceededException < Aws::EmptyStructure; end

    # The commit cannot be created because no changes will be made to the
    # repository as a result of this commit. A commit must contain at least
    # one change.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/NoChangeException AWS API Documentation
    #
    class NoChangeException < Aws::EmptyStructure; end

    # The maximum number of approval rule templates has been exceeded for
    # this AWS Region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/NumberOfRuleTemplatesExceededException AWS API Documentation
    #
    class NumberOfRuleTemplatesExceededException < Aws::EmptyStructure; end

    # The approval rule cannot be added. The pull request has the maximum
    # number of approval rules associated with it.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/NumberOfRulesExceededException AWS API Documentation
    #
    class NumberOfRulesExceededException < Aws::EmptyStructure; end

    # Information about the type of an object in a merge operation.
    #
    # @!attribute [rw] source
    #   The type of the object in the source branch.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The type of the object in the destination branch.
    #   @return [String]
    #
    # @!attribute [rw] base
    #   The type of the object in the base commit of the merge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ObjectTypes AWS API Documentation
    #
    class ObjectTypes < Struct.new(
      :source,
      :destination,
      :base)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the template that created the approval rule
    # for a pull request.
    #
    # @!attribute [rw] approval_rule_template_id
    #   The ID of the template that created the approval rule.
    #   @return [String]
    #
    # @!attribute [rw] approval_rule_template_name
    #   The name of the template that created the approval rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/OriginApprovalRuleTemplate AWS API Documentation
    #
    class OriginApprovalRuleTemplate < Struct.new(
      :approval_rule_template_id,
      :approval_rule_template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The pull request has already had its approval rules set to override.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/OverrideAlreadySetException AWS API Documentation
    #
    class OverrideAlreadySetException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass OverridePullRequestApprovalRulesInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         revision_id: "RevisionId", # required
    #         override_status: "OVERRIDE", # required, accepts OVERRIDE, REVOKE
    #       }
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request for which you want to
    #   override all approval rule requirements. To get this information,
    #   use GetPullRequest.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The system-generated ID of the most recent revision of the pull
    #   request. You cannot override approval rules for anything but the
    #   most recent revision of a pull request. To get the revision ID, use
    #   GetPullRequest.
    #   @return [String]
    #
    # @!attribute [rw] override_status
    #   Whether you want to set aside approval rule requirements for the
    #   pull request (OVERRIDE) or revoke a previous override and apply
    #   approval rule requirements (REVOKE). REVOKE status is not stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/OverridePullRequestApprovalRulesInput AWS API Documentation
    #
    class OverridePullRequestApprovalRulesInput < Struct.new(
      :pull_request_id,
      :revision_id,
      :override_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An override status is required, but no value was provided. Valid
    # values include OVERRIDE and REVOKE.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/OverrideStatusRequiredException AWS API Documentation
    #
    class OverrideStatusRequiredException < Aws::EmptyStructure; end

    # The parent commit ID is not valid because it does not exist. The
    # specified parent commit ID does not exist in the specified branch of
    # the repository.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ParentCommitDoesNotExistException AWS API Documentation
    #
    class ParentCommitDoesNotExistException < Aws::EmptyStructure; end

    # The file could not be added because the provided parent commit ID is
    # not the current tip of the specified branch. To view the full commit
    # ID of the current head of the branch, use GetBranch.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ParentCommitIdOutdatedException AWS API Documentation
    #
    class ParentCommitIdOutdatedException < Aws::EmptyStructure; end

    # A parent commit ID is required. To view the full commit ID of a branch
    # in a repository, use GetBranch or a Git command (for example, git pull
    # or git log).
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ParentCommitIdRequiredException AWS API Documentation
    #
    class ParentCommitIdRequiredException < Aws::EmptyStructure; end

    # The specified path does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PathDoesNotExistException AWS API Documentation
    #
    class PathDoesNotExistException < Aws::EmptyStructure; end

    # The folderPath for a location cannot be null.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PathRequiredException AWS API Documentation
    #
    class PathRequiredException < Aws::EmptyStructure; end

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
    #   ID of the before commit. Required for commenting on any commit
    #   unless that commit is the initial commit.
    #   @return [String]
    #
    # @!attribute [rw] after_commit_id
    #   To establish the directionality of the comparison, the full commit
    #   ID of the after commit.
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
    #   A unique, client-generated idempotency token that, when provided in
    #   a request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request returns information about the initial
    #   request that used that token.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_name
    #   The name of the repository where you posted a comment on the
    #   comparison between commits.
    #   @return [String]
    #
    # @!attribute [rw] before_commit_id
    #   In the directionality you established, the full commit ID of the
    #   before commit.
    #   @return [String]
    #
    # @!attribute [rw] after_commit_id
    #   In the directionality you established, the full commit ID of the
    #   after commit.
    #   @return [String]
    #
    # @!attribute [rw] before_blob_id
    #   In the directionality you established, the blob ID of the before
    #   blob.
    #   @return [String]
    #
    # @!attribute [rw] after_blob_id
    #   In the directionality you established, the blob ID of the after
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
      SENSITIVE = []
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
    #   no location is provided, the comment is posted as a general comment
    #   on the pull request difference between the before commit ID and the
    #   after commit ID.
    #   @return [Types::Location]
    #
    # @!attribute [rw] content
    #   The content of your comment on the change.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique, client-generated idempotency token that, when provided in
    #   a request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request returns information about the initial
    #   request that used that token.
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
      SENSITIVE = []
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
    #   pull request is merged.
    #   @return [String]
    #
    # @!attribute [rw] before_blob_id
    #   In the directionality of the pull request, the blob ID of the before
    #   blob.
    #   @return [String]
    #
    # @!attribute [rw] after_blob_id
    #   In the directionality of the pull request, the blob ID of the after
    #   blob.
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
      SENSITIVE = []
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
    #   A unique, client-generated idempotency token that, when provided in
    #   a request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request returns information about the initial
    #   request that used that token.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   in the list of pull requests to other repository users.
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
    #   A unique, client-generated idempotency token that, when provided in
    #   a request, ensures the request cannot be repeated with a changed
    #   parameter. If a request is received with the same parameters and a
    #   token is included, the request returns information about the initial
    #   request that used that token.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The system-generated revision ID for the pull request.
    #   @return [String]
    #
    # @!attribute [rw] approval_rules
    #   The approval rules applied to the pull request.
    #   @return [Array<Types::ApprovalRule>]
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
      :client_request_token,
      :revision_id,
      :approval_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # The pull request status cannot be updated because it is already
    # closed.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PullRequestAlreadyClosedException AWS API Documentation
    #
    class PullRequestAlreadyClosedException < Aws::EmptyStructure; end

    # The pull request cannot be merged because one or more approval rules
    # applied to the pull request have conditions that have not been met.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PullRequestApprovalRulesNotSatisfiedException AWS API Documentation
    #
    class PullRequestApprovalRulesNotSatisfiedException < Aws::EmptyStructure; end

    # The approval cannot be applied because the user approving the pull
    # request matches the user who created the pull request. You cannot
    # approve a pull request that you created.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PullRequestCannotBeApprovedByAuthorException AWS API Documentation
    #
    class PullRequestCannotBeApprovedByAuthorException < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # The pull request ID could not be found. Make sure that you have
    # specified the correct repository name and pull request ID, and then
    # try again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PullRequestDoesNotExistException AWS API Documentation
    #
    class PullRequestDoesNotExistException < Aws::EmptyStructure; end

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
    #   The type of the pull request event (for example, a status change
    #   event (PULL\_REQUEST\_STATUS\_CHANGED) or update event
    #   (PULL\_REQUEST\_SOURCE\_REFERENCE\_UPDATED)).
    #   @return [String]
    #
    # @!attribute [rw] actor_arn
    #   The Amazon Resource Name (ARN) of the user whose actions resulted in
    #   the event. Examples include updating the pull request with more
    #   commits or changing the status of a pull request.
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
    # @!attribute [rw] approval_rule_event_metadata
    #   Information about a pull request event.
    #   @return [Types::ApprovalRuleEventMetadata]
    #
    # @!attribute [rw] approval_state_changed_event_metadata
    #   Information about an approval state change for a pull request.
    #   @return [Types::ApprovalStateChangedEventMetadata]
    #
    # @!attribute [rw] approval_rule_overridden_event_metadata
    #   Information about an approval rule override event for a pull
    #   request.
    #   @return [Types::ApprovalRuleOverriddenEventMetadata]
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
      :pull_request_merged_state_changed_event_metadata,
      :approval_rule_event_metadata,
      :approval_state_changed_event_metadata,
      :approval_rule_overridden_event_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pull request ID is required, but none was provided.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PullRequestIdRequiredException AWS API Documentation
    #
    class PullRequestIdRequiredException < Aws::EmptyStructure; end

    # Returns information about the change in the merge state for a pull
    # request event.
    #
    # @!attribute [rw] repository_name
    #   The name of the repository where the pull request was created.
    #   @return [String]
    #
    # @!attribute [rw] destination_reference
    #   The name of the branch that the pull request is merged into.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A pull request status is required, but none was provided.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PullRequestStatusRequiredException AWS API Documentation
    #
    class PullRequestStatusRequiredException < Aws::EmptyStructure; end

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
    #   The branch of the repository where the pull request changes are
    #   merged. Also known as the destination branch.
    #   @return [String]
    #
    # @!attribute [rw] destination_commit
    #   The full commit ID that is the tip of the destination branch. This
    #   is the commit where the pull request was or will be merged.
    #   @return [String]
    #
    # @!attribute [rw] source_commit
    #   The full commit ID of the tip of the source branch used to create
    #   the pull request. If the pull request branch is updated by a push
    #   while the pull request is open, the commit ID changes to reflect the
    #   new tip of the branch.
    #   @return [String]
    #
    # @!attribute [rw] merge_base
    #   The commit ID of the most recent commit that the source branch and
    #   the destination branch have in common.
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
      :source_commit,
      :merge_base,
      :merge_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutCommentReactionInput
    #   data as a hash:
    #
    #       {
    #         comment_id: "CommentId", # required
    #         reaction_value: "ReactionValue", # required
    #       }
    #
    # @!attribute [rw] comment_id
    #   The ID of the comment to which you want to add or update a reaction.
    #   @return [String]
    #
    # @!attribute [rw] reaction_value
    #   The emoji reaction you want to add or update. To remove a reaction,
    #   provide a value of blank or null. You can also provide the value of
    #   none. For information about emoji reaction values supported in AWS
    #   CodeCommit, see the [AWS CodeCommit User Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/how-to-commit-comment.html#emoji-reaction-table
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PutCommentReactionInput AWS API Documentation
    #
    class PutCommentReactionInput < Struct.new(
      :comment_id,
      :reaction_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a file added or updated as part of a commit.
    #
    # @note When making an API call, you may pass PutFileEntry
    #   data as a hash:
    #
    #       {
    #         file_path: "Path", # required
    #         file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #         file_content: "data",
    #         source_file: {
    #           file_path: "Path", # required
    #           is_move: false,
    #         },
    #       }
    #
    # @!attribute [rw] file_path
    #   The full path to the file in the repository, including the name of
    #   the file.
    #   @return [String]
    #
    # @!attribute [rw] file_mode
    #   The extrapolated file mode permissions for the file. Valid values
    #   include EXECUTABLE and NORMAL.
    #   @return [String]
    #
    # @!attribute [rw] file_content
    #   The content of the file, if a source file is not specified.
    #   @return [String]
    #
    # @!attribute [rw] source_file
    #   The name and full path of the file that contains the changes you
    #   want to make as part of the commit, if you are not providing the
    #   file content directly.
    #   @return [Types::SourceFileSpecifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PutFileEntry AWS API Documentation
    #
    class PutFileEntry < Struct.new(
      :file_path,
      :file_mode,
      :file_content,
      :source_file)
      SENSITIVE = []
      include Aws::Structure
    end

    # The commit cannot be created because one or more files specified in
    # the commit reference both a file and a folder.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/PutFileEntryConflictException AWS API Documentation
    #
    class PutFileEntryConflictException < Aws::EmptyStructure; end

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
    #   this is an empty repository, this branch is created.
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
    #   <note markdown="1"> If the path does not currently exist in the repository, the path is
    #   created as part of adding the file.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] file_mode
    #   The file mode permissions of the blob. Valid file mode permissions
    #   are listed here.
    #   @return [String]
    #
    # @!attribute [rw] parent_commit_id
    #   The full commit ID of the head commit in the branch where you want
    #   to add or update the file. If this is an empty repository, no commit
    #   ID is required. If this is not an empty repository, a commit ID is
    #   required.
    #
    #   The commit ID must match the ID of the head commit at the time of
    #   the operation. Otherwise, an error occurs, and the file is not added
    #   or updated.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   A message about why this file was added or updated. Although it is
    #   optional, a message makes the commit history for your repository
    #   more useful.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the person adding or updating the file. Although it is
    #   optional, a name makes the commit history for your repository more
    #   useful.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] commit_id
    #   The full SHA ID of the commit that contains this file change.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a put repository triggers operation.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the reaction values provided by users on a comment.
    #
    # @!attribute [rw] reaction
    #   The reaction for a specified comment.
    #   @return [Types::ReactionValueFormats]
    #
    # @!attribute [rw] reaction_users
    #   The Amazon Resource Names (ARNs) of users who have provided
    #   reactions to the comment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] reactions_from_deleted_users_count
    #   A numerical count of users who reacted with the specified emoji
    #   whose identities have been subsequently deleted from IAM. While
    #   these IAM users or roles no longer exist, the reactions might still
    #   appear in total reaction counts.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ReactionForComment AWS API Documentation
    #
    class ReactionForComment < Struct.new(
      :reaction,
      :reaction_users,
      :reactions_from_deleted_users_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of reactions has been exceeded. Reactions are limited to
    # one reaction per user for each individual comment ID.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ReactionLimitExceededException AWS API Documentation
    #
    class ReactionLimitExceededException < Aws::EmptyStructure; end

    # Information about the values for reactions to a comment. AWS
    # CodeCommit supports a limited set of reactions.
    #
    # @!attribute [rw] emoji
    #   The Emoji Version 1.0 graphic of the reaction. These graphics are
    #   interpreted slightly differently on different operating systems.
    #   @return [String]
    #
    # @!attribute [rw] short_code
    #   The emoji short code for the reaction. Short codes are interpreted
    #   slightly differently on different operating systems.
    #   @return [String]
    #
    # @!attribute [rw] unicode
    #   The Unicode codepoint for the reaction.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ReactionValueFormats AWS API Documentation
    #
    class ReactionValueFormats < Struct.new(
      :emoji,
      :short_code,
      :unicode)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reaction value is required.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ReactionValueRequiredException AWS API Documentation
    #
    class ReactionValueRequiredException < Aws::EmptyStructure; end

    # The specified reference does not exist. You must provide a full commit
    # ID.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ReferenceDoesNotExistException AWS API Documentation
    #
    class ReferenceDoesNotExistException < Aws::EmptyStructure; end

    # A reference name is required, but none was provided.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ReferenceNameRequiredException AWS API Documentation
    #
    class ReferenceNameRequiredException < Aws::EmptyStructure; end

    # The specified reference is not a supported type.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ReferenceTypeNotSupportedException AWS API Documentation
    #
    class ReferenceTypeNotSupportedException < Aws::EmptyStructure; end

    # Information about a replacement content entry in the conflict of a
    # merge or pull request operation.
    #
    # @note When making an API call, you may pass ReplaceContentEntry
    #   data as a hash:
    #
    #       {
    #         file_path: "Path", # required
    #         replacement_type: "KEEP_BASE", # required, accepts KEEP_BASE, KEEP_SOURCE, KEEP_DESTINATION, USE_NEW_CONTENT
    #         content: "data",
    #         file_mode: "EXECUTABLE", # accepts EXECUTABLE, NORMAL, SYMLINK
    #       }
    #
    # @!attribute [rw] file_path
    #   The path of the conflicting file.
    #   @return [String]
    #
    # @!attribute [rw] replacement_type
    #   The replacement type to use when determining how to resolve the
    #   conflict.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The base-64 encoded content to use when the replacement type is
    #   USE\_NEW\_CONTENT.
    #   @return [String]
    #
    # @!attribute [rw] file_mode
    #   The file mode to apply during conflict resoltion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ReplaceContentEntry AWS API Documentation
    #
    class ReplaceContentEntry < Struct.new(
      :file_path,
      :replacement_type,
      :content,
      :file_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # USE\_NEW\_CONTENT was specified, but no replacement content has been
    # provided.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ReplacementContentRequiredException AWS API Documentation
    #
    class ReplacementContentRequiredException < Aws::EmptyStructure; end

    # A replacement type is required.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ReplacementTypeRequiredException AWS API Documentation
    #
    class ReplacementTypeRequiredException < Aws::EmptyStructure; end

    # The specified repository does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RepositoryDoesNotExistException AWS API Documentation
    #
    class RepositoryDoesNotExistException < Aws::EmptyStructure; end

    # A repository resource limit was exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RepositoryLimitExceededException AWS API Documentation
    #
    class RepositoryLimitExceededException < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified repository name already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RepositoryNameExistsException AWS API Documentation
    #
    class RepositoryNameExistsException < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # A repository name is required, but was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RepositoryNameRequiredException AWS API Documentation
    #
    class RepositoryNameRequiredException < Aws::EmptyStructure; end

    # At least one repository name object is required, but was not
    # specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RepositoryNamesRequiredException AWS API Documentation
    #
    class RepositoryNamesRequiredException < Aws::EmptyStructure; end

    # The repository does not contain any pull requests with that pull
    # request ID. Use GetPullRequest to verify the correct repository name
    # for the pull request ID.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RepositoryNotAssociatedWithPullRequestException AWS API Documentation
    #
    class RepositoryNotAssociatedWithPullRequestException < Aws::EmptyStructure; end

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
    #   The ARN of the resource that is the target for a trigger (for
    #   example, the ARN of a topic in Amazon SNS).
    #   @return [String]
    #
    # @!attribute [rw] custom_data
    #   Any custom data associated with the trigger to be included in the
    #   information sent to the target of the trigger.
    #   @return [String]
    #
    # @!attribute [rw] branches
    #   The branches to be included in the trigger configuration. If you
    #   specify an empty array, the trigger applies to all branches.
    #
    #   <note markdown="1"> Although no content is required in the array, you must include the
    #   array itself.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] events
    #   The repository events that cause the trigger to run actions in
    #   another service, such as sending a notification through Amazon SNS.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # At least one branch name is required, but was not specified in the
    # trigger configuration.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RepositoryTriggerBranchNameListRequiredException AWS API Documentation
    #
    class RepositoryTriggerBranchNameListRequiredException < Aws::EmptyStructure; end

    # A destination ARN for the target service for the trigger is required,
    # but was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RepositoryTriggerDestinationArnRequiredException AWS API Documentation
    #
    class RepositoryTriggerDestinationArnRequiredException < Aws::EmptyStructure; end

    # At least one event for the trigger is required, but was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RepositoryTriggerEventsListRequiredException AWS API Documentation
    #
    class RepositoryTriggerEventsListRequiredException < Aws::EmptyStructure; end

    # A trigger failed to run.
    #
    # @!attribute [rw] trigger
    #   The name of the trigger that did not run.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   Message information about the trigger that did not run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RepositoryTriggerExecutionFailure AWS API Documentation
    #
    class RepositoryTriggerExecutionFailure < Struct.new(
      :trigger,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A name for the trigger is required, but was not specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RepositoryTriggerNameRequiredException AWS API Documentation
    #
    class RepositoryTriggerNameRequiredException < Aws::EmptyStructure; end

    # The list of triggers for the repository is required, but was not
    # specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RepositoryTriggersListRequiredException AWS API Documentation
    #
    class RepositoryTriggersListRequiredException < Aws::EmptyStructure; end

    # A valid Amazon Resource Name (ARN) for an AWS CodeCommit resource is
    # required. For a list of valid resources in AWS CodeCommit, see
    # [CodeCommit Resources and Operations][1] in the AWS CodeCommit User
    # Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/ResourceArnRequiredException AWS API Documentation
    #
    class ResourceArnRequiredException < Aws::EmptyStructure; end

    # The commit cannot be created because one of the changes specifies
    # copying or moving a .gitkeep file.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RestrictedSourceFileException AWS API Documentation
    #
    class RestrictedSourceFileException < Aws::EmptyStructure; end

    # A revision ID is required, but was not provided.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RevisionIdRequiredException AWS API Documentation
    #
    class RevisionIdRequiredException < Aws::EmptyStructure; end

    # The revision ID provided in the request does not match the current
    # revision ID. Use GetPullRequest to retrieve the current revision ID.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/RevisionNotCurrentException AWS API Documentation
    #
    class RevisionNotCurrentException < Aws::EmptyStructure; end

    # The file was not added or updated because the content of the file is
    # exactly the same as the content of that file in the repository and
    # branch that you specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/SameFileContentException AWS API Documentation
    #
    class SameFileContentException < Aws::EmptyStructure; end

    # The commit cannot be created because one or more changes in this
    # commit duplicate actions in the same file path. For example, you
    # cannot make the same delete request to the same file in the same file
    # path twice, or make a delete request and a move request to the same
    # file as part of the same commit.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/SamePathRequestException AWS API Documentation
    #
    class SamePathRequestException < Aws::EmptyStructure; end

    # Information about the file mode changes.
    #
    # @note When making an API call, you may pass SetFileModeEntry
    #   data as a hash:
    #
    #       {
    #         file_path: "Path", # required
    #         file_mode: "EXECUTABLE", # required, accepts EXECUTABLE, NORMAL, SYMLINK
    #       }
    #
    # @!attribute [rw] file_path
    #   The full path to the file, including the name of the file.
    #   @return [String]
    #
    # @!attribute [rw] file_mode
    #   The file mode for the file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/SetFileModeEntry AWS API Documentation
    #
    class SetFileModeEntry < Struct.new(
      :file_path,
      :file_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source branch and destination branch for the pull request are the
    # same. You must specify different branches for the source and
    # destination.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/SourceAndDestinationAreSameException AWS API Documentation
    #
    class SourceAndDestinationAreSameException < Aws::EmptyStructure; end

    # The commit cannot be created because no source files or file content
    # have been specified for the commit.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/SourceFileOrContentRequiredException AWS API Documentation
    #
    class SourceFileOrContentRequiredException < Aws::EmptyStructure; end

    # Information about a source file that is part of changes made in a
    # commit.
    #
    # @note When making an API call, you may pass SourceFileSpecifier
    #   data as a hash:
    #
    #       {
    #         file_path: "Path", # required
    #         is_move: false,
    #       }
    #
    # @!attribute [rw] file_path
    #   The full path to the file, including the name of the file.
    #   @return [String]
    #
    # @!attribute [rw] is_move
    #   Whether to remove the source file from the parent commit.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/SourceFileSpecifier AWS API Documentation
    #
    class SourceFileSpecifier < Struct.new(
      :file_path,
      :is_move)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a submodule reference in a repository
    # folder.
    #
    # @!attribute [rw] commit_id
    #   The commit ID that contains the reference to the submodule.
    #   @return [String]
    #
    # @!attribute [rw] absolute_path
    #   The fully qualified path to the folder that contains the reference
    #   to the submodule.
    #   @return [String]
    #
    # @!attribute [rw] relative_path
    #   The relative path of the submodule from the folder where the query
    #   originated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/SubModule AWS API Documentation
    #
    class SubModule < Struct.new(
      :commit_id,
      :absolute_path,
      :relative_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a symbolic link in a repository folder.
    #
    # @!attribute [rw] blob_id
    #   The blob ID that contains the information about the symbolic link.
    #   @return [String]
    #
    # @!attribute [rw] absolute_path
    #   The fully qualified path to the folder that contains the symbolic
    #   link.
    #   @return [String]
    #
    # @!attribute [rw] relative_path
    #   The relative path of the symbolic link from the folder where the
    #   query originated.
    #   @return [String]
    #
    # @!attribute [rw] file_mode
    #   The file mode permissions of the blob that cotains information about
    #   the symbolic link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/SymbolicLink AWS API Documentation
    #
    class SymbolicLink < Struct.new(
      :blob_id,
      :absolute_path,
      :relative_path,
      :file_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of tag keys is required. The list cannot be empty or null.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/TagKeysListRequiredException AWS API Documentation
    #
    class TagKeysListRequiredException < Aws::EmptyStructure; end

    # The tag policy is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/TagPolicyException AWS API Documentation
    #
    class TagPolicyException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass TagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which you want to
    #   add or update tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pair to use when tagging this repository.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A map of tags is required.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/TagsMapRequiredException AWS API Documentation
    #
    class TagsMapRequiredException < Aws::EmptyStructure; end

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
    #   The branch of the repository where the pull request changes are
    #   merged. Also known as the destination branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/Target AWS API Documentation
    #
    class Target < Struct.new(
      :repository_name,
      :source_reference,
      :destination_reference)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pull request target is required. It cannot be empty or null. A pull
    # request target must contain the full values for the repository name,
    # source branch, and destination branch for the pull request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/TargetRequiredException AWS API Documentation
    #
    class TargetRequiredException < Aws::EmptyStructure; end

    # An array of target objects is required. It cannot be empty or null.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/TargetsRequiredException AWS API Documentation
    #
    class TargetsRequiredException < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
    #   The list of triggers that were not tested. This list provides the
    #   names of the triggers that could not be tested, separated by commas.
    #   @return [Array<Types::RepositoryTriggerExecutionFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/TestRepositoryTriggersOutput AWS API Documentation
    #
    class TestRepositoryTriggersOutput < Struct.new(
      :successful_executions,
      :failed_executions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tip of the source branch in the destination repository does not
    # match the tip of the source branch specified in your request. The pull
    # request might have been updated. Make sure that you have the latest
    # changes.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/TipOfSourceReferenceIsDifferentException AWS API Documentation
    #
    class TipOfSourceReferenceIsDifferentException < Aws::EmptyStructure; end

    # The divergence between the tips of the provided commit specifiers is
    # too great to determine whether there might be any merge conflicts.
    # Locally compare the specifiers using `git diff` or a diff tool.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/TipsDivergenceExceededException AWS API Documentation
    #
    class TipsDivergenceExceededException < Aws::EmptyStructure; end

    # A pull request title is required. It cannot be empty or null.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/TitleRequiredException AWS API Documentation
    #
    class TitleRequiredException < Aws::EmptyStructure; end

    # The maximum number of tags for an AWS CodeCommit resource has been
    # exceeded.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which you want to
    #   remove tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag key for each tag that you want to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApprovalRuleTemplateContentInput
    #   data as a hash:
    #
    #       {
    #         approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #         new_rule_content: "ApprovalRuleTemplateContent", # required
    #         existing_rule_content_sha_256: "RuleContentSha256",
    #       }
    #
    # @!attribute [rw] approval_rule_template_name
    #   The name of the approval rule template where you want to update the
    #   content of the rule.
    #   @return [String]
    #
    # @!attribute [rw] new_rule_content
    #   The content that replaces the existing content of the rule. Content
    #   statements must be complete. You cannot provide only the changes.
    #   @return [String]
    #
    # @!attribute [rw] existing_rule_content_sha_256
    #   The SHA-256 hash signature for the content of the approval rule. You
    #   can retrieve this information by using GetPullRequest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateApprovalRuleTemplateContentInput AWS API Documentation
    #
    class UpdateApprovalRuleTemplateContentInput < Struct.new(
      :approval_rule_template_name,
      :new_rule_content,
      :existing_rule_content_sha_256)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approval_rule_template
    #   Returns information about an approval rule template.
    #   @return [Types::ApprovalRuleTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateApprovalRuleTemplateContentOutput AWS API Documentation
    #
    class UpdateApprovalRuleTemplateContentOutput < Struct.new(
      :approval_rule_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApprovalRuleTemplateDescriptionInput
    #   data as a hash:
    #
    #       {
    #         approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #         approval_rule_template_description: "ApprovalRuleTemplateDescription", # required
    #       }
    #
    # @!attribute [rw] approval_rule_template_name
    #   The name of the template for which you want to update the
    #   description.
    #   @return [String]
    #
    # @!attribute [rw] approval_rule_template_description
    #   The updated description of the approval rule template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateApprovalRuleTemplateDescriptionInput AWS API Documentation
    #
    class UpdateApprovalRuleTemplateDescriptionInput < Struct.new(
      :approval_rule_template_name,
      :approval_rule_template_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approval_rule_template
    #   The structure and content of the updated approval rule template.
    #   @return [Types::ApprovalRuleTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateApprovalRuleTemplateDescriptionOutput AWS API Documentation
    #
    class UpdateApprovalRuleTemplateDescriptionOutput < Struct.new(
      :approval_rule_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateApprovalRuleTemplateNameInput
    #   data as a hash:
    #
    #       {
    #         old_approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #         new_approval_rule_template_name: "ApprovalRuleTemplateName", # required
    #       }
    #
    # @!attribute [rw] old_approval_rule_template_name
    #   The current name of the approval rule template.
    #   @return [String]
    #
    # @!attribute [rw] new_approval_rule_template_name
    #   The new name you want to apply to the approval rule template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateApprovalRuleTemplateNameInput AWS API Documentation
    #
    class UpdateApprovalRuleTemplateNameInput < Struct.new(
      :old_approval_rule_template_name,
      :new_approval_rule_template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approval_rule_template
    #   The structure and content of the updated approval rule template.
    #   @return [Types::ApprovalRuleTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateApprovalRuleTemplateNameOutput AWS API Documentation
    #
    class UpdateApprovalRuleTemplateNameOutput < Struct.new(
      :approval_rule_template)
      SENSITIVE = []
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
    #   The updated content to replace the existing content of the comment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdateCommentInput AWS API Documentation
    #
    class UpdateCommentInput < Struct.new(
      :comment_id,
      :content)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePullRequestApprovalRuleContentInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         approval_rule_name: "ApprovalRuleName", # required
    #         existing_rule_content_sha_256: "RuleContentSha256",
    #         new_rule_content: "ApprovalRuleContent", # required
    #       }
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request.
    #   @return [String]
    #
    # @!attribute [rw] approval_rule_name
    #   The name of the approval rule you want to update.
    #   @return [String]
    #
    # @!attribute [rw] existing_rule_content_sha_256
    #   The SHA-256 hash signature for the content of the approval rule. You
    #   can retrieve this information by using GetPullRequest.
    #   @return [String]
    #
    # @!attribute [rw] new_rule_content
    #   The updated content for the approval rule.
    #
    #   <note markdown="1"> When you update the content of the approval rule, you can specify
    #   approvers in an approval pool in one of two ways:
    #
    #    * **CodeCommitApprovers**\: This option only requires an AWS account
    #     and a resource. It can be used for both IAM users and federated
    #     access users whose name matches the provided resource name. This
    #     is a very powerful option that offers a great deal of flexibility.
    #     For example, if you specify the AWS account *123456789012* and
    #     *Mary\_Major*, all of the following are counted as approvals
    #     coming from that user:
    #
    #     * An IAM user in the account
    #       (arn:aws:iam::*123456789012*\:user/*Mary\_Major*)
    #
    #     * A federated user identified in IAM as Mary\_Major
    #       (arn:aws:sts::*123456789012*\:federated-user/*Mary\_Major*)
    #
    #     This option does not recognize an active session of someone
    #     assuming the role of CodeCommitReview with a role session name of
    #     *Mary\_Major*
    #     (arn:aws:sts::*123456789012*\:assumed-role/CodeCommitReview/*Mary\_Major*)
    #     unless you include a wildcard (*Mary\_Major).
    #
    #   * **Fully qualified ARN**\: This option allows you to specify the
    #     fully qualified Amazon Resource Name (ARN) of the IAM user or
    #     role.
    #
    #    For more information about IAM ARNs, wildcards, and formats, see
    #   [IAM Identifiers][1] in the *IAM User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestApprovalRuleContentInput AWS API Documentation
    #
    class UpdatePullRequestApprovalRuleContentInput < Struct.new(
      :pull_request_id,
      :approval_rule_name,
      :existing_rule_content_sha_256,
      :new_rule_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approval_rule
    #   Information about the updated approval rule.
    #   @return [Types::ApprovalRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestApprovalRuleContentOutput AWS API Documentation
    #
    class UpdatePullRequestApprovalRuleContentOutput < Struct.new(
      :approval_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePullRequestApprovalStateInput
    #   data as a hash:
    #
    #       {
    #         pull_request_id: "PullRequestId", # required
    #         revision_id: "RevisionId", # required
    #         approval_state: "APPROVE", # required, accepts APPROVE, REVOKE
    #       }
    #
    # @!attribute [rw] pull_request_id
    #   The system-generated ID of the pull request.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The system-generated ID of the revision.
    #   @return [String]
    #
    # @!attribute [rw] approval_state
    #   The approval state to associate with the user on the pull request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestApprovalStateInput AWS API Documentation
    #
    class UpdatePullRequestApprovalStateInput < Struct.new(
      :pull_request_id,
      :revision_id,
      :approval_state)
      SENSITIVE = []
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
    #   content replaces the existing description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestDescriptionInput AWS API Documentation
    #
    class UpdatePullRequestDescriptionInput < Struct.new(
      :pull_request_id,
      :description)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   `CLOSED` to `CLOSED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestStatusInput AWS API Documentation
    #
    class UpdatePullRequestStatusInput < Struct.new(
      :pull_request_id,
      :pull_request_status)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The updated title of the pull request. This replaces the existing
    #   title.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codecommit-2015-04-13/UpdatePullRequestTitleInput AWS API Documentation
    #
    class UpdatePullRequestTitleInput < Struct.new(
      :pull_request_id,
      :title)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The current name of the repository.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
