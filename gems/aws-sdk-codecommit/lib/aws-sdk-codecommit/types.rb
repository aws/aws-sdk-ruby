# frozen_string_literal: true

# This is generated code!

module Aws::CodeCommit
  # This module contains the types returned by client operations.
  module Types

    # <p>The specified Amazon Resource Name (ARN) does not exist in the Amazon Web Services account.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ActorDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a specific approval on a pull request.</p>
    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user.</p>
    #   @return [String]
    # @!attribute approval_state
    #   <p>The state of the approval, APPROVE or REVOKE. REVOKE states are not stored.</p>
    #   @return [String]
    class Approval < Struct.new(
      nil,
      :user_arn,
      :approval_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an approval rule.</p>
    # @!attribute approval_rule_id
    #   <p>The system-generated ID of the approval rule.</p>
    #   @return [String]
    # @!attribute approval_rule_name
    #   <p>The name of the approval rule.</p>
    #   @return [String]
    # @!attribute approval_rule_content
    #   <p>The content of the approval rule.</p>
    #   @return [String]
    # @!attribute rule_content_sha256
    #   <p>The SHA-256 hash signature for the content of the approval rule.</p>
    #   @return [String]
    # @!attribute last_modified_date
    #   <p>The date the approval rule was most recently changed, in timestamp format.</p>
    #   @return [Time]
    # @!attribute creation_date
    #   <p>The date the approval rule was created, in timestamp format.</p>
    #   @return [Time]
    # @!attribute last_modified_user
    #   <p>The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule.</p>
    #   @return [String]
    # @!attribute origin_approval_rule_template
    #   <p>The approval rule template used to create the rule.</p>
    #   @return [Types::OriginApprovalRuleTemplate]
    class ApprovalRule < Struct.new(
      nil,
      :approval_rule_id,
      :approval_rule_name,
      :approval_rule_content,
      :rule_content_sha256,
      :last_modified_date,
      :creation_date,
      :last_modified_user,
      :origin_approval_rule_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The content for the approval rule is empty. You must provide some content for an approval rule. The content cannot be null.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ApprovalRuleContentRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified approval rule does not exist.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ApprovalRuleDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an event for an approval rule.</p>
    # @!attribute approval_rule_name
    #   <p>The name of the approval rule.</p>
    #   @return [String]
    # @!attribute approval_rule_id
    #   <p>The system-generated ID of the approval rule.</p>
    #   @return [String]
    # @!attribute approval_rule_content
    #   <p>The content of the approval rule.</p>
    #   @return [String]
    class ApprovalRuleEventMetadata < Struct.new(
      nil,
      :approval_rule_name,
      :approval_rule_id,
      :approval_rule_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An approval rule with that name already exists. Approval rule names must be unique
    #             within the scope of a pull request.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ApprovalRuleNameAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An approval rule name is required, but was not specified.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ApprovalRuleNameRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an override event for approval rules for a pull request.</p>
    # @!attribute revision_id
    #   <p>The revision ID of the pull request when the override event occurred.</p>
    #   @return [String]
    # @!attribute override_status
    #   <p>The status of the override event.</p>
    #   @return [String]
    class ApprovalRuleOverriddenEventMetadata < Struct.new(
      nil,
      :revision_id,
      :override_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an approval rule template.</p>
    # @!attribute approval_rule_template_id
    #   <p>The system-generated ID of the approval rule template.</p>
    #   @return [String]
    # @!attribute approval_rule_template_name
    #   <p>The name of the approval rule template.</p>
    #   @return [String]
    # @!attribute approval_rule_template_description
    #   <p>The description of the approval rule template.</p>
    #   @return [String]
    # @!attribute approval_rule_template_content
    #   <p>The content of the approval rule template.</p>
    #   @return [String]
    # @!attribute rule_content_sha256
    #   <p>The SHA-256 hash signature for the content of the approval rule template.</p>
    #   @return [String]
    # @!attribute last_modified_date
    #   <p>The date the approval rule template was most recently changed, in timestamp format.</p>
    #   @return [Time]
    # @!attribute creation_date
    #   <p>The date the approval rule template was created, in timestamp format.</p>
    #   @return [Time]
    # @!attribute last_modified_user
    #   <p>The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule template.</p>
    #   @return [String]
    class ApprovalRuleTemplate < Struct.new(
      nil,
      :approval_rule_template_id,
      :approval_rule_template_name,
      :approval_rule_template_description,
      :approval_rule_template_content,
      :rule_content_sha256,
      :last_modified_date,
      :creation_date,
      :last_modified_user,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The content for the approval rule template is empty. You must provide some content for an approval rule template. The content cannot be null.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ApprovalRuleTemplateContentRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified approval rule template does not exist. Verify that the name is correct and that you are signed in to the Amazon Web Services Region where the template
    #         was created, and then try again.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ApprovalRuleTemplateDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The approval rule template is associated with one or more repositories. You cannot delete a template that is associated with a repository. Remove
    #         all associations, and then try again.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ApprovalRuleTemplateInUseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You cannot create an approval rule template with that name because a template with
    #             that name already exists in this Amazon Web Services Region for your Amazon Web Services account. Approval rule template
    #             names must be unique.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ApprovalRuleTemplateNameAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An approval rule template name is required, but was not specified.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ApprovalRuleTemplateNameRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a change in the approval state for a pull request.</p>
    # @!attribute revision_id
    #   <p>The revision ID of the pull request when the approval state changed.</p>
    #   @return [String]
    # @!attribute approval_status
    #   <p>The approval status for the pull request.</p>
    #   @return [String]
    class ApprovalStateChangedEventMetadata < Struct.new(
      nil,
      :revision_id,
      :approval_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An approval state is required, but was not specified.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ApprovalStateRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name for the approval rule template. </p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository that you want to associate with the template.</p>
    #   @return [String]
    class AssociateApprovalRuleTemplateWithRepositoryInput < Struct.new(
      nil,
      :approval_rule_template_name,
      :repository_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified Amazon Resource Name (ARN) does not exist in the Amazon Web Services account.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class AuthorDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about errors in a BatchAssociateApprovalRuleTemplateWithRepositories operation.</p>
    # @!attribute repository_name
    #   <p>The name of the repository where the association was not made.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>An error code that specifies whether the repository name was not valid or not found.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message that provides details about why the repository name was not found or not valid.</p>
    #   @return [String]
    class BatchAssociateApprovalRuleTemplateWithRepositoriesError < Struct.new(
      nil,
      :repository_name,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the template you want to associate with one or more repositories.</p>
    #   @return [String]
    # @!attribute repository_names
    #   <p>The names of the repositories you want to associate with the template.</p>
    #            <note>
    #               <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>
    #            </note>
    #   @return [Array<String>]
    class BatchAssociateApprovalRuleTemplateWithRepositoriesInput < Struct.new(
      nil,
      :approval_rule_template_name,
      :repository_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute associated_repository_names
    #   <p>A list of names of the repositories that have been associated with the template.</p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p>A list of any errors that might have occurred while attempting to create the association between the template and the repositories.</p>
    #   @return [Array<Types::BatchAssociateApprovalRuleTemplateWithRepositoriesError>]
    class BatchAssociateApprovalRuleTemplateWithRepositoriesOutput < Struct.new(
      nil,
      :associated_repository_names,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about errors in a BatchDescribeMergeConflicts operation.</p>
    # @!attribute file_path
    #   <p>The path to the file.</p>
    #   @return [String]
    # @!attribute exception_name
    #   <p>The name of the exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message provided by the exception.</p>
    #   @return [String]
    class BatchDescribeMergeConflictsError < Struct.new(
      nil,
      :file_path,
      :exception_name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository that contains the merge conflicts you want to review.</p>
    #   @return [String]
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute merge_option
    #   <p>The merge option or strategy you want to use to merge the code.</p>
    #   @return [String]
    # @!attribute max_merge_hunks
    #   <p>The maximum number of merge hunks to include in the output.</p>
    #   @return [Integer]
    # @!attribute max_conflict_files
    #   <p>The maximum number of files to include in the output.</p>
    #   @return [Integer]
    # @!attribute file_paths
    #   <p>The path of the target files used to describe the conflicts. If not specified, the default is all conflict files.</p>
    #   @return [Array<String>]
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #   @return [String]
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #   @return [String]
    class BatchDescribeMergeConflictsInput < Struct.new(
      nil,
      :repository_name,
      :destination_commit_specifier,
      :source_commit_specifier,
      :merge_option,
      :max_merge_hunks,
      :max_conflict_files,
      :file_paths,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute conflicts
    #   <p>A list of conflicts for each file, including the conflict metadata and the hunks of the differences between the files.</p>
    #   @return [Array<Types::Conflict>]
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #   @return [String]
    # @!attribute errors
    #   <p>A list of any errors returned while describing the merge conflicts for each file.</p>
    #   @return [Array<Types::BatchDescribeMergeConflictsError>]
    # @!attribute destination_commit_id
    #   <p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>
    #   @return [String]
    # @!attribute source_commit_id
    #   <p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>
    #   @return [String]
    # @!attribute base_commit_id
    #   <p>The commit ID of the merge base.</p>
    #   @return [String]
    class BatchDescribeMergeConflictsOutput < Struct.new(
      nil,
      :conflicts,
      :next_token,
      :errors,
      :destination_commit_id,
      :source_commit_id,
      :base_commit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about errors in a BatchDisassociateApprovalRuleTemplateFromRepositories operation.</p>
    # @!attribute repository_name
    #   <p>The name of the repository where the association with the template was not able to be removed.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>An error code that specifies whether the repository name was not valid or not
    #               found.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message that provides details about why the repository name was either not found or not valid.</p>
    #   @return [String]
    class BatchDisassociateApprovalRuleTemplateFromRepositoriesError < Struct.new(
      nil,
      :repository_name,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the template that you want to disassociate from one or more repositories.</p>
    #   @return [String]
    # @!attribute repository_names
    #   <p>The repository names that you want to disassociate from the approval rule
    #               template.</p>
    #            <note>
    #               <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>
    #            </note>
    #   @return [Array<String>]
    class BatchDisassociateApprovalRuleTemplateFromRepositoriesInput < Struct.new(
      nil,
      :approval_rule_template_name,
      :repository_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute disassociated_repository_names
    #   <p>A list of repository names that have had their association with the template
    #               removed.</p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p>A list of any errors that might have occurred while attempting to remove the association between the template and the repositories.</p>
    #   @return [Array<Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesError>]
    class BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput < Struct.new(
      nil,
      :disassociated_repository_names,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about errors in a BatchGetCommits operation.</p>
    # @!attribute commit_id
    #   <p>A commit ID that either could not be found or was not in a valid format.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>An error code that specifies whether the commit ID was not valid or not found.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message that provides detail about why the commit ID either was not found or was not valid.</p>
    #   @return [String]
    class BatchGetCommitsError < Struct.new(
      nil,
      :commit_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute commit_ids
    #   <p>The full commit IDs of the commits to get information about.</p>
    #            <note>
    #               <p>You must supply the full SHA IDs of each commit. You cannot use shortened SHA
    #                   IDs.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute repository_name
    #   <p>The name of the repository that contains the commits.</p>
    #   @return [String]
    class BatchGetCommitsInput < Struct.new(
      nil,
      :commit_ids,
      :repository_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute commits
    #   <p>An array of commit data type objects, each of which contains information about a specified commit.</p>
    #   @return [Array<Types::Commit>]
    # @!attribute errors
    #   <p>Returns any commit IDs for which information could not be found. For example, if one
    #               of the commit IDs was a shortened SHA ID or that commit was not found in the specified
    #               repository, the ID returns an error object with more information.</p>
    #   @return [Array<Types::BatchGetCommitsError>]
    class BatchGetCommitsOutput < Struct.new(
      nil,
      :commits,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about errors in a BatchGetRepositories operation.</p>
    # @!attribute repository_id
    #   <p>The ID of a repository that either could not be found or was not in a valid state.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of a repository that either could not be found or was not in a valid state.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>An error code that specifies the type of failure.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message that provides detail about why the repository either was not found or was not in a valid state.</p>
    #   @return [String]
    class BatchGetRepositoriesError < Struct.new(
      nil,
      :repository_id,
      :repository_name,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a batch get repositories operation.</p>
    # @!attribute repository_names
    #   <p>The names of the repositories to get information about.</p>
    #            <note>
    #               <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>
    #            </note>
    #   @return [Array<String>]
    class BatchGetRepositoriesInput < Struct.new(
      nil,
      :repository_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a batch get repositories operation.</p>
    # @!attribute repositories
    #   <p>A list of repositories returned by the batch get repositories operation.</p>
    #   @return [Array<Types::RepositoryMetadata>]
    # @!attribute repositories_not_found
    #   <p>Returns a list of repository names for which information could not be found.</p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p>Returns information about any errors returned when attempting to retrieve information about the repositories.</p>
    #   @return [Array<Types::BatchGetRepositoriesError>]
    class BatchGetRepositoriesOutput < Struct.new(
      nil,
      :repositories,
      :repositories_not_found,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The before commit ID and the after commit ID are the same, which is not valid. The before commit ID and the after commit ID must be different commit IDs.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class BeforeCommitIdAndAfterCommitIdAreSameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified blob does not exist.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class BlobIdDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A blob ID is required, but was not specified.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class BlobIdRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a specific Git blob object.</p>
    # @!attribute blob_id
    #   <p>The full ID of the blob.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path to the blob and associated file name, if any.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The file mode permissions of the blob. File mode permission codes include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>100644</code> indicates read/write</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>100755</code> indicates read/write/execute</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>160000</code> indicates a submodule</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>120000</code> indicates a symlink</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class BlobMetadata < Struct.new(
      nil,
      :blob_id,
      :path,
      :mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified branch does not exist.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class BranchDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a branch.</p>
    # @!attribute branch_name
    #   <p>The name of the branch.</p>
    #   @return [String]
    # @!attribute commit_id
    #   <p>The ID of the last commit made to the branch.</p>
    #   @return [String]
    class BranchInfo < Struct.new(
      nil,
      :branch_name,
      :commit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Cannot create the branch with the specified name because the commit conflicts with an existing branch with the same name. 
    # 
    #             Branch names must be unique.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class BranchNameExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified branch name is not valid because it is a tag name. Enter the name of a
    #             branch in the repository. For a list of valid branch names, use <a>ListBranches</a>.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class BranchNameIsTagNameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A branch name is required, but was not specified.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class BranchNameRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The approval rule cannot be deleted from the pull request because it was created by an
    #             approval rule template and applied to the pull request automatically.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class CannotDeleteApprovalRuleFromTemplateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The approval rule cannot be modified for the pull request because it was created by an
    #             approval rule template and applied to the pull request automatically.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class CannotModifyApprovalRuleFromTemplateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A client request token is required. A client request token is an unique,
    #             client-generated idempotency token that, when provided in a request, ensures the request
    #             cannot be repeated with a changed parameter. If a request is received with the same
    #             parameters and a token is included, the request returns information about the initial
    #             request that used that token.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ClientRequestTokenRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a specific comment.</p>
    # @!attribute comment_id
    #   <p>The system-generated comment ID.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the comment.</p>
    #   @return [String]
    # @!attribute in_reply_to
    #   <p>The ID of the comment for which this comment is a reply, if any.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>The date and time the comment was created, in timestamp format.</p>
    #   @return [Time]
    # @!attribute last_modified_date
    #   <p>The date and time the comment was most recently modified, in timestamp format.</p>
    #   @return [Time]
    # @!attribute author_arn
    #   <p>The Amazon Resource Name (ARN) of the person who posted the comment.</p>
    #   @return [String]
    # @!attribute deleted
    #   <p>A Boolean value indicating whether the comment has been deleted.</p>
    #   @return [Boolean]
    # @!attribute client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #   @return [String]
    # @!attribute caller_reactions
    #   <p>The emoji reactions to a comment, if any, submitted by the user whose credentials are associated with the call to the API.</p>
    #   @return [Array<String>]
    # @!attribute reaction_counts
    #   <p>A string to integer map that represents the number of individual users who have responded to a comment with the specified reactions.</p>
    #   @return [Hash<String, Integer>]
    class Comment < Struct.new(
      nil,
      :comment_id,
      :content,
      :in_reply_to,
      :creation_date,
      :last_modified_date,
      :author_arn,
      :deleted,
      :client_request_token,
      :caller_reactions,
      :reaction_counts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deleted] = false unless options.key?(:deleted)
        super
      end
    end

    # <p>The comment is empty. You must provide some content for a comment. The content cannot be null.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class CommentContentRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The comment is too large. Comments are limited to 10,240 characters.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class CommentContentSizeLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This comment has already been deleted. You cannot edit or delete a deleted comment.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class CommentDeletedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>No comment exists with the provided ID. Verify that you have used the correct ID, and
    #             then try again.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class CommentDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The comment ID is missing or null. A comment ID is required.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class CommentIdRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You cannot modify or delete this comment. Only comment authors can modify or delete their comments.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class CommentNotCreatedByCallerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about comments on the comparison between two commits.</p>
    # @!attribute repository_name
    #   <p>The name of the repository that contains the compared commits.</p>
    #   @return [String]
    # @!attribute before_commit_id
    #   <p>The full commit ID of the commit used to establish the before of the
    #               comparison.</p>
    #   @return [String]
    # @!attribute after_commit_id
    #   <p>The full commit ID of the commit used to establish the after of the comparison.</p>
    #   @return [String]
    # @!attribute before_blob_id
    #   <p>The full blob ID of the commit used to establish the before of the comparison.</p>
    #   @return [String]
    # @!attribute after_blob_id
    #   <p>The full blob ID of the commit used to establish the after of the comparison.</p>
    #   @return [String]
    # @!attribute location
    #   <p>Location information about the comment on the comparison, including the file name,
    #               line number, and whether the version of the file where the comment was made is BEFORE or
    #               AFTER.</p>
    #   @return [Types::Location]
    # @!attribute comments
    #   <p>An array of comment objects. Each comment object contains information about a comment on the comparison
    #            between commits.</p>
    #   @return [Array<Types::Comment>]
    class CommentsForComparedCommit < Struct.new(
      nil,
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :before_blob_id,
      :after_blob_id,
      :location,
      :comments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about comments on a pull request.</p>
    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository that contains the pull request.</p>
    #   @return [String]
    # @!attribute before_commit_id
    #   <p>The full commit ID of the commit that was the tip of the destination branch when the
    #               pull request was created. This commit is superceded by the after commit in the source
    #               branch when and if you merge the source branch into the destination branch.</p>
    #   @return [String]
    # @!attribute after_commit_id
    #   <p>The full commit ID of the commit that was the tip of the source branch at the time the
    #               comment was made. </p>
    #   @return [String]
    # @!attribute before_blob_id
    #   <p>The full blob ID of the file on which you want to comment on the destination commit.</p>
    #   @return [String]
    # @!attribute after_blob_id
    #   <p>The full blob ID of the file on which you want to comment on the source commit.</p>
    #   @return [String]
    # @!attribute location
    #   <p>Location information about the comment on the pull request, including the file name,
    #               line number, and whether the version of the file where the comment was made is BEFORE
    #               (destination branch) or AFTER (source branch).</p>
    #   @return [Types::Location]
    # @!attribute comments
    #   <p>An array of comment objects. Each comment object contains information about a comment on the pull request.</p>
    #   @return [Array<Types::Comment>]
    class CommentsForPullRequest < Struct.new(
      nil,
      :pull_request_id,
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :before_blob_id,
      :after_blob_id,
      :location,
      :comments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a specific commit.</p>
    # @!attribute commit_id
    #   <p>The full SHA ID of the specified commit. </p>
    #   @return [String]
    # @!attribute tree_id
    #   <p>Tree information for the specified commit.</p>
    #   @return [String]
    # @!attribute parents
    #   <p>A list of parent commits for the specified commit. Each parent commit ID is the full commit ID.</p>
    #   @return [Array<String>]
    # @!attribute message
    #   <p>The commit message associated with the specified commit.</p>
    #   @return [String]
    # @!attribute author
    #   <p>Information about the author of the specified commit. Information includes 
    #               the date in timestamp format with GMT offset, the name of the author, and the email address for the author, as configured 
    #               in Git.</p>
    #   @return [Types::UserInfo]
    # @!attribute committer
    #   <p>Information about the person who committed the specified commit, also known as the committer. Information includes 
    #           the date in timestamp format with GMT offset, the name of the committer, and the email address for the committer, as configured 
    #           in Git.</p>
    #            <p>For more information
    #               about the difference between an author and a committer in Git, see <a href="http://git-scm.com/book/ch2-3.html">Viewing the Commit History</a> in Pro Git
    #               by Scott Chacon and Ben Straub.</p>
    #   @return [Types::UserInfo]
    # @!attribute additional_data
    #   <p>Any other data associated with the specified commit.</p>
    #   @return [String]
    class Commit < Struct.new(
      nil,
      :commit_id,
      :tree_id,
      :parents,
      :message,
      :author,
      :committer,
      :additional_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified commit does not exist or no commit was specified, and the specified repository has no default branch.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class CommitDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified commit ID does not exist.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class CommitIdDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A commit ID was not specified.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class CommitIdRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of allowed commit IDs in a batch request is 100. Verify that your batch requests contains no more than 100 commit IDs, and then try again.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class CommitIdsLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of commit IDs is required, but was either not specified or the list was empty.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class CommitIdsListRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The commit message is too long. Provide a shorter string. </p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class CommitMessageLengthExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A commit was not specified.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class CommitRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The merge cannot be completed because the target branch has been modified. Another user might have modified the target branch while the merge was in progress. Wait a few minutes, and then try again.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ConcurrentReferenceUpdateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about conflicts in a merge operation.</p>
    # @!attribute conflict_metadata
    #   <p>Metadata about a conflict in a merge operation.</p>
    #   @return [Types::ConflictMetadata]
    # @!attribute merge_hunks
    #   <p>A list of hunks that contain the differences between files or lines causing the conflict.</p>
    #   @return [Array<Types::MergeHunk>]
    class Conflict < Struct.new(
      nil,
      :conflict_metadata,
      :merge_hunks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the metadata for a conflict in a merge operation.</p>
    # @!attribute file_path
    #   <p>The path of the file that contains conflicts.</p>
    #   @return [String]
    # @!attribute file_sizes
    #   <p>The file sizes of the file in the source, destination, and base of the merge.</p>
    #   @return [Types::FileSizes]
    # @!attribute file_modes
    #   <p>The file modes of the file in the source, destination, and base of the merge.</p>
    #   @return [Types::FileModes]
    # @!attribute object_types
    #   <p>Information about any object type conflicts in a merge operation.</p>
    #   @return [Types::ObjectTypes]
    # @!attribute number_of_conflicts
    #   <p>The number of conflicts, including both hunk conflicts and metadata conflicts.</p>
    #   @return [Integer]
    # @!attribute is_binary_file
    #   <p>A boolean value (true or false) indicating whether the file is binary or textual in the source, destination, and base of the merge.</p>
    #   @return [Types::IsBinaryFile]
    # @!attribute content_conflict
    #   <p>A boolean value indicating whether there are conflicts in the content of a file.</p>
    #   @return [Boolean]
    # @!attribute file_mode_conflict
    #   <p>A boolean value indicating whether there are conflicts in the file mode of a file.</p>
    #   @return [Boolean]
    # @!attribute object_type_conflict
    #   <p>A boolean value (true or false) indicating whether there are conflicts between the branches in the object type of a file, folder, or submodule.</p>
    #   @return [Boolean]
    # @!attribute merge_operations
    #   <p>Whether an add, modify, or delete operation caused the conflict between the source and destination of the merge.</p>
    #   @return [Types::MergeOperations]
    class ConflictMetadata < Struct.new(
      nil,
      :file_path,
      :file_sizes,
      :file_modes,
      :object_types,
      :number_of_conflicts,
      :is_binary_file,
      :content_conflict,
      :file_mode_conflict,
      :object_type_conflict,
      :merge_operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_conflicts] = 0 unless options.key?(:number_of_conflicts)
        options[:content_conflict] = false unless options.key?(:content_conflict)
        options[:file_mode_conflict] = false unless options.key?(:file_mode_conflict)
        options[:object_type_conflict] = false unless options.key?(:object_type_conflict)
        super
      end
    end

    # <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #             resolving conflicts during a merge.</p>
    # @!attribute replace_contents
    #   <p>Files to have content replaced as part of the merge conflict resolution.</p>
    #   @return [Array<Types::ReplaceContentEntry>]
    # @!attribute delete_files
    #   <p>Files to be deleted as part of the merge conflict resolution.</p>
    #   @return [Array<Types::DeleteFileEntry>]
    # @!attribute set_file_modes
    #   <p>File modes that are set as part of the merge conflict resolution.</p>
    #   @return [Array<Types::SetFileModeEntry>]
    class ConflictResolution < Struct.new(
      nil,
      :replace_contents,
      :delete_files,
      :set_file_modes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the approval rule template. Provide descriptive names, because this name
    #               is applied to the approval rules created automatically in associated
    #               repositories.</p>
    #   @return [String]
    # @!attribute approval_rule_template_content
    #   <p>The content of the approval rule that is created on pull requests in associated
    #               repositories. If you specify one or more destination references (branches), approval
    #               rules are created in an associated repository only if their destination references
    #               (branches) match those specified in the template.</p>
    #            <note>
    #               <p>When you create the content of the approval rule template, you can specify
    #                   approvers in an approval pool in one of two ways:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>CodeCommitApprovers</b>: This option only
    #                           requires an Amazon Web Services account and a resource. It can be used for both IAM users
    #                           and federated access users whose name matches the provided resource name.
    #                           This is a very powerful option that offers a great deal of flexibility. For
    #                           example, if you specify the Amazon Web Services account <i>123456789012</i>
    #                           and <i>Mary_Major</i>, all of the following are counted as
    #                           approvals coming from that user:</p>
    #                     <ul>
    #                        <li>
    #                           <p>An IAM user in the account
    #                                   (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p>
    #                        </li>
    #                        <li>
    #                           <p>A federated user identified in IAM as Mary_Major
    #                                   (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p>
    #                        </li>
    #                     </ul>
    #                     <p>This option does not recognize an active session of someone assuming the
    #                           role of CodeCommitReview with a role session name of
    #                               <i>Mary_Major</i>
    #                               (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>)
    #                           unless you include a wildcard (*Mary_Major).</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Fully qualified ARN</b>: This option allows
    #                           you to specify the fully qualified Amazon Resource Name (ARN) of the IAM
    #                           user or role. </p>
    #                  </li>
    #               </ul>
    #               <p>For more information about IAM ARNs, wildcards, and formats, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
    #                       Identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute approval_rule_template_description
    #   <p>The description of the approval rule template. Consider providing a description that
    #               explains what this template does and when it might be appropriate to associate it with
    #               repositories.</p>
    #   @return [String]
    class CreateApprovalRuleTemplateInput < Struct.new(
      nil,
      :approval_rule_template_name,
      :approval_rule_template_content,
      :approval_rule_template_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template
    #   <p>The content and structure of the created approval rule template.</p>
    #   @return [Types::ApprovalRuleTemplate]
    class CreateApprovalRuleTemplateOutput < Struct.new(
      nil,
      :approval_rule_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a create branch operation.</p>
    # @!attribute repository_name
    #   <p>The name of the repository in which you want to create the new branch.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the new branch to create.</p>
    #   @return [String]
    # @!attribute commit_id
    #   <p>The ID of the commit to point the new branch to.</p>
    #   @return [String]
    class CreateBranchInput < Struct.new(
      nil,
      :repository_name,
      :branch_name,
      :commit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you create the commit.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch where you create the commit.</p>
    #   @return [String]
    # @!attribute parent_commit_id
    #   <p>The ID of the commit that is the parent of the commit you create. Not required if this
    #               is an empty repository.</p>
    #   @return [String]
    # @!attribute author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address of the person who created the commit.</p>
    #   @return [String]
    # @!attribute commit_message
    #   <p>The commit message you want to include in the commit. Commit messages are limited to
    #               256 KB. If no message is specified, a default message is used.</p>
    #   @return [String]
    # @!attribute keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If true, a ..gitkeep file is created for empty folders.
    #               The default is false.</p>
    #   @return [Boolean]
    # @!attribute put_files
    #   <p>The files to add or update in this commit.</p>
    #   @return [Array<Types::PutFileEntry>]
    # @!attribute delete_files
    #   <p>The files to delete in this commit. These files still exist in earlier commits.</p>
    #   @return [Array<Types::DeleteFileEntry>]
    # @!attribute set_file_modes
    #   <p>The file modes to update for files in this commit.</p>
    #   @return [Array<Types::SetFileModeEntry>]
    class CreateCommitInput < Struct.new(
      nil,
      :repository_name,
      :branch_name,
      :parent_commit_id,
      :author_name,
      :email,
      :commit_message,
      :keep_empty_folders,
      :put_files,
      :delete_files,
      :set_file_modes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute commit_id
    #   <p>The full commit ID of the commit that contains your committed file changes.</p>
    #   @return [String]
    # @!attribute tree_id
    #   <p>The full SHA-1 pointer of the tree information for the commit that contains the commited file changes.</p>
    #   @return [String]
    # @!attribute files_added
    #   <p>The files added as part of the committed file changes.</p>
    #   @return [Array<Types::FileMetadata>]
    # @!attribute files_updated
    #   <p>The files updated as part of the commited file changes.</p>
    #   @return [Array<Types::FileMetadata>]
    # @!attribute files_deleted
    #   <p>The files deleted as part of the committed file changes.</p>
    #   @return [Array<Types::FileMetadata>]
    class CreateCommitOutput < Struct.new(
      nil,
      :commit_id,
      :tree_id,
      :files_added,
      :files_updated,
      :files_deleted,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request for which you want to create the approval rule.</p>
    #   @return [String]
    # @!attribute approval_rule_name
    #   <p>The name for the approval rule.</p>
    #   @return [String]
    # @!attribute approval_rule_content
    #   <p>The content of the approval rule, including the number of approvals needed and the structure of an approval pool defined for approvals, if any. For more information
    #           about approval pools, see the CodeCommit User Guide.</p>
    #            <note>
    #               <p>When you create the content of the approval rule, you can specify approvers in an
    #                   approval pool in one of two ways:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>CodeCommitApprovers</b>: This option only
    #                           requires an Amazon Web Services account and a resource. It can be used for both IAM users
    #                           and federated access users whose name matches the provided resource name.
    #                           This is a very powerful option that offers a great deal of flexibility. For
    #                           example, if you specify the Amazon Web Services account <i>123456789012</i>
    #                           and <i>Mary_Major</i>, all of the following would be counted
    #                           as approvals coming from that user:</p>
    #                     <ul>
    #                        <li>
    #                           <p>An IAM user in the account
    #                                       (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p>
    #                        </li>
    #                        <li>
    #                           <p>A federated user identified in IAM as Mary_Major
    #                                       (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p>
    #                        </li>
    #                     </ul>
    #                     <p>This option does not recognize an active session of someone assuming the
    #                           role of CodeCommitReview with a role session name of
    #                               <i>Mary_Major</i>
    #                               (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>)
    #                           unless you include a wildcard (*Mary_Major).</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Fully qualified ARN</b>: This option allows
    #                           you to specify the fully qualified Amazon Resource Name (ARN) of the IAM
    #                           user or role. </p>
    #                  </li>
    #               </ul>
    #               <p>For more information about IAM ARNs, wildcards, and formats, see
    #                  <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
    #                   Identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            </note>
    #   @return [String]
    class CreatePullRequestApprovalRuleInput < Struct.new(
      nil,
      :pull_request_id,
      :approval_rule_name,
      :approval_rule_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule
    #   <p>Information about the created approval rule.</p>
    #   @return [Types::ApprovalRule]
    class CreatePullRequestApprovalRuleOutput < Struct.new(
      nil,
      :approval_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute title
    #   <p>The title of the pull request. This title is used to identify the pull request to
    #               other users in the repository.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the pull request.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The targets for the pull request, including the source of the code to be reviewed (the
    #               source branch) and the destination where the creator of the pull request intends the
    #               code to be merged after the pull request is closed (the destination branch).</p>
    #   @return [Array<Types::Target>]
    # @!attribute client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #            <note>
    #               <p>The Amazon Web ServicesSDKs prepopulate client request tokens. If you are using an Amazon Web ServicesSDK, an
    #                   idempotency token is created for you.</p>
    #            </note>
    #   @return [String]
    class CreatePullRequestInput < Struct.new(
      nil,
      :title,
      :description,
      :targets,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request
    #   <p>Information about the newly created pull request.</p>
    #   @return [Types::PullRequest]
    class CreatePullRequestOutput < Struct.new(
      nil,
      :pull_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a create repository operation.</p>
    # @!attribute repository_name
    #   <p>The name of the new repository to be created.</p>
    #            <note>
    #               <p>The repository name must be unique across the calling Amazon Web Services account. Repository names
    #                   are limited to 100 alphanumeric, dash, and underscore characters, and cannot include
    #                   certain characters. For more information about the limits on repository names, see
    #                       <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Quotas</a> in the <i>CodeCommit User Guide</i>. The
    #                   suffix .git is prohibited.</p>
    #            </note>
    #   @return [String]
    # @!attribute repository_description
    #   <p>A comment or description about the new repository.</p>
    #            <note>
    #               <p>The description field for a repository accepts all HTML characters and all valid
    #                   Unicode characters. Applications that do not HTML-encode the description and display
    #                   it in a webpage can expose users to potentially malicious code. Make sure that you
    #                   HTML-encode the description field in any application that uses this API to display
    #                   the repository description on a webpage.</p>
    #            </note>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tag key-value pairs to use when tagging this repository.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_id
    #   <p>The ID of the encryption key. You can view the ID of an encryption key in the KMS console, or use the KMS APIs to
    #               programmatically retrieve a key ID. For more information about acceptable values for kmsKeyID, see 
    #               <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Decrypt.html#KMS-Decrypt-request-KeyId">KeyId</a> in the Decrypt API description in 
    #               the <i>Key Management Service API Reference</i>.</p>
    #            <p>If no key is specified, the default <code>aws/codecommit</code> Amazon Web Services managed key is used.</p>
    #   @return [String]
    class CreateRepositoryInput < Struct.new(
      nil,
      :repository_name,
      :repository_description,
      :tags,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a create repository operation.</p>
    # @!attribute repository_metadata
    #   <p>Information about the newly created repository.</p>
    #   @return [Types::RepositoryMetadata]
    class CreateRepositoryOutput < Struct.new(
      nil,
      :repository_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to create the unreferenced merge commit.</p>
    #   @return [String]
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute merge_option
    #   <p>The merge option or strategy you want to use to merge the code.</p>
    #   @return [String]
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #   @return [String]
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #   @return [String]
    # @!attribute author_name
    #   <p>The name of the author who created the unreferenced commit. This information is used
    #               as both the author and committer for the commit.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address for the person who created the unreferenced commit.</p>
    #   @return [String]
    # @!attribute commit_message
    #   <p>The commit message for the unreferenced commit.</p>
    #   @return [String]
    # @!attribute keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If this is specified as true, a .gitkeep file is
    #               created for empty folders. The default is false.</p>
    #   @return [Boolean]
    # @!attribute conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    #   @return [Types::ConflictResolution]
    class CreateUnreferencedMergeCommitInput < Struct.new(
      nil,
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
      :conflict_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute commit_id
    #   <p>The full commit ID of the commit that contains your merge results.</p>
    #   @return [String]
    # @!attribute tree_id
    #   <p>The full SHA-1 pointer of the tree information for the commit that contains the merge results.</p>
    #   @return [String]
    class CreateUnreferencedMergeCommitOutput < Struct.new(
      nil,
      :commit_id,
      :tree_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified branch is the default branch for the repository, and cannot be deleted. To delete this branch, you must first set another branch as the default branch.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class DefaultBranchCannotBeDeletedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the approval rule template to delete.</p>
    #   @return [String]
    class DeleteApprovalRuleTemplateInput < Struct.new(
      nil,
      :approval_rule_template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template_id
    #   <p>The system-generated ID of the deleted approval rule template. If the template has
    #               been previously deleted, the only response is a 200 OK.</p>
    #   @return [String]
    class DeleteApprovalRuleTemplateOutput < Struct.new(
      nil,
      :approval_rule_template_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a delete branch operation.</p>
    # @!attribute repository_name
    #   <p>The name of the repository that contains the branch to be deleted.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch to delete.</p>
    #   @return [String]
    class DeleteBranchInput < Struct.new(
      nil,
      :repository_name,
      :branch_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a delete branch operation.</p>
    # @!attribute deleted_branch
    #   <p>Information about the branch deleted by the operation, including the branch name and the commit ID that was the tip of the branch.</p>
    #   @return [Types::BranchInfo]
    class DeleteBranchOutput < Struct.new(
      nil,
      :deleted_branch,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comment_id
    #   <p>The unique, system-generated ID of the comment. To get this ID, use  <a>GetCommentsForComparedCommit</a>
    #            or <a>GetCommentsForPullRequest</a>.</p>
    #   @return [String]
    class DeleteCommentContentInput < Struct.new(
      nil,
      :comment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comment
    #   <p>Information about the comment you just deleted.</p>
    #   @return [Types::Comment]
    class DeleteCommentContentOutput < Struct.new(
      nil,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A file that is deleted as part of a commit.</p>
    # @!attribute file_path
    #   <p>The full path of the file to be deleted, including the name of the file.</p>
    #   @return [String]
    class DeleteFileEntry < Struct.new(
      nil,
      :file_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository that contains the file to delete.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch where the commit that deletes the file is made.</p>
    #   @return [String]
    # @!attribute file_path
    #   <p>The fully qualified path to the file that to be deleted, including the full name and
    #               extension of that file. For example, /examples/file.md is a fully qualified path to a
    #               file named file.md in a folder named examples.</p>
    #   @return [String]
    # @!attribute parent_commit_id
    #   <p>The ID of the commit that is the tip of the branch where you want to create the commit
    #               that deletes the file. This must be the HEAD commit for the branch. The commit that
    #               deletes the file is created from this commit ID.</p>
    #   @return [String]
    # @!attribute keep_empty_folders
    #   <p>If a file is the only object in the folder or directory, specifies whether to delete
    #               the folder or directory that contains the file. By default, empty folders are deleted.
    #               This includes empty folders that are part of the directory structure. For example, if
    #               the path to a file is dir1/dir2/dir3/dir4, and dir2 and dir3 are empty, deleting the
    #               last file in dir4 also deletes the empty folders dir4, dir3, and dir2.</p>
    #   @return [Boolean]
    # @!attribute commit_message
    #   <p>The commit message you want to include as part of deleting the file. Commit messages
    #               are limited to 256 KB. If no message is specified, a default message is used.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the author of the commit that deletes the file. If no name is specified,
    #               the user's ARN is used as the author name and committer name.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address for the commit that deletes the file. If no email address is
    #               specified, the email address is left blank.</p>
    #   @return [String]
    class DeleteFileInput < Struct.new(
      nil,
      :repository_name,
      :branch_name,
      :file_path,
      :parent_commit_id,
      :keep_empty_folders,
      :commit_message,
      :name,
      :email,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute commit_id
    #   <p>The full commit ID of the commit that contains the change that deletes the file.</p>
    #   @return [String]
    # @!attribute blob_id
    #   <p>The blob ID removed from the tree as part of deleting the file.</p>
    #   @return [String]
    # @!attribute tree_id
    #   <p>The full SHA-1 pointer of the tree information for the commit that contains the delete file change.</p>
    #   @return [String]
    # @!attribute file_path
    #   <p>The fully qualified path to the file to be deleted, including the full name and
    #               extension of that file.</p>
    #   @return [String]
    class DeleteFileOutput < Struct.new(
      nil,
      :commit_id,
      :blob_id,
      :tree_id,
      :file_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request that contains the approval rule you want to delete.</p>
    #   @return [String]
    # @!attribute approval_rule_name
    #   <p>The name of the approval rule you want to delete.</p>
    #   @return [String]
    class DeletePullRequestApprovalRuleInput < Struct.new(
      nil,
      :pull_request_id,
      :approval_rule_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_id
    #   <p>The ID of the deleted approval rule. </p>
    #            <note>
    #               <p>If the approval rule was deleted in an earlier API call, the response is 200 OK without
    #                   content.</p>
    #            </note>
    #   @return [String]
    class DeletePullRequestApprovalRuleOutput < Struct.new(
      nil,
      :approval_rule_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a delete repository operation.</p>
    # @!attribute repository_name
    #   <p>The name of the repository to delete.</p>
    #   @return [String]
    class DeleteRepositoryInput < Struct.new(
      nil,
      :repository_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a delete repository operation.</p>
    # @!attribute repository_id
    #   <p>The ID of the repository that was deleted.</p>
    #   @return [String]
    class DeleteRepositoryOutput < Struct.new(
      nil,
      :repository_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to get information about a merge conflict.</p>
    #   @return [String]
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute merge_option
    #   <p>The merge option or strategy you want to use to merge the code.</p>
    #   @return [String]
    # @!attribute max_merge_hunks
    #   <p>The maximum number of merge hunks to include in the output.</p>
    #   @return [Integer]
    # @!attribute file_path
    #   <p>The path of the target files used to describe the conflicts. </p>
    #   @return [String]
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #   @return [String]
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #   @return [String]
    class DescribeMergeConflictsInput < Struct.new(
      nil,
      :repository_name,
      :destination_commit_specifier,
      :source_commit_specifier,
      :merge_option,
      :max_merge_hunks,
      :file_path,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute conflict_metadata
    #   <p>Contains metadata about the conflicts found in the merge.</p>
    #   @return [Types::ConflictMetadata]
    # @!attribute merge_hunks
    #   <p>A list of merge hunks of the differences between the files or lines.</p>
    #   @return [Array<Types::MergeHunk>]
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #   @return [String]
    # @!attribute destination_commit_id
    #   <p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>
    #   @return [String]
    # @!attribute source_commit_id
    #   <p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>
    #   @return [String]
    # @!attribute base_commit_id
    #   <p>The commit ID of the merge base.</p>
    #   @return [String]
    class DescribeMergeConflictsOutput < Struct.new(
      nil,
      :conflict_metadata,
      :merge_hunks,
      :next_token,
      :destination_commit_id,
      :source_commit_id,
      :base_commit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #   @return [String]
    # @!attribute pull_request_event_type
    #   <p>Optional. The pull request event type about which you want to return information.</p>
    #   @return [String]
    # @!attribute actor_arn
    #   <p>The Amazon Resource Name (ARN) of the user whose actions resulted in the event.
    #               Examples include updating the pull request with more commits or changing the status of a
    #               pull request.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results. 
    #               The default is 100 events, which is also the maximum number of events that can be returned in a result.</p>
    #   @return [Integer]
    class DescribePullRequestEventsInput < Struct.new(
      nil,
      :pull_request_id,
      :pull_request_event_type,
      :actor_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_events
    #   <p>Information about the pull request events.</p>
    #   @return [Array<Types::PullRequestEvent>]
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #   @return [String]
    class DescribePullRequestEventsOutput < Struct.new(
      nil,
      :pull_request_events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a set of differences for a commit specifier.</p>
    # @!attribute before_blob
    #   <p>Information about a <code>beforeBlob</code> data type object, including the ID, 
    #               the file mode permission code, and the path.</p>
    #   @return [Types::BlobMetadata]
    # @!attribute after_blob
    #   <p>Information about an <code>afterBlob</code> data type object, including the ID, 
    #               the file mode permission code, and the path.</p>
    #   @return [Types::BlobMetadata]
    # @!attribute change_type
    #   <p>Whether the change type of the difference is an addition (A), deletion (D), or modification (M).</p>
    #   @return [String]
    class Difference < Struct.new(
      nil,
      :before_blob,
      :after_blob,
      :change_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A file cannot be added to the repository because the specified path name has the same name as a file that already exists in this repository. 
    #         Either provide a different name for the file, or specify a different path for the file.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class DirectoryNameConflictsWithFileNameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the approval rule template to disassociate from a specified repository.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository you want to disassociate from the template.</p>
    #   @return [String]
    class DisassociateApprovalRuleTemplateFromRepositoryInput < Struct.new(
      nil,
      :approval_rule_template_name,
      :repository_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An encryption integrity check failed.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class EncryptionIntegrityChecksFailedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An encryption key could not be accessed.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class EncryptionKeyAccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The encryption key is disabled.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class EncryptionKeyDisabledException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Key Management Service encryption key is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class EncryptionKeyInvalidIdException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A KMS encryption key was used to try and encrypt or decrypt a repository, but either the repository or the key was not
    #         in a valid state to support the operation.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class EncryptionKeyInvalidUsageException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>No encryption key was found.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class EncryptionKeyNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A KMS encryption key ID is required but was not specified.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class EncryptionKeyRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The encryption key is not available.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class EncryptionKeyUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request you want to evaluate.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The system-generated ID for the pull request revision. To retrieve the most recent
    #               revision ID for a pull request, use
    #               <a>GetPullRequest</a>.</p>
    #   @return [String]
    class EvaluatePullRequestApprovalRulesInput < Struct.new(
      nil,
      :pull_request_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluation
    #   <p>The result of the evaluation, including the names of the rules whose conditions have been met (if any), the names of the rules whose conditions have 
    #           not been met (if any), whether the pull request is in the approved state, and whether the pull request approval rule has been set aside by an override. </p>
    #   @return [Types::Evaluation]
    class EvaluatePullRequestApprovalRulesOutput < Struct.new(
      nil,
      :evaluation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about the approval rules applied to a pull request and whether conditions have been met.</p>
    # @!attribute approved
    #   <p>Whether the state of the pull request is approved.</p>
    #   @return [Boolean]
    # @!attribute overridden
    #   <p>Whether the approval rule requirements for the pull request have been overridden and no longer need to be met.</p>
    #   @return [Boolean]
    # @!attribute approval_rules_satisfied
    #   <p>The names of the approval rules that have had their conditions met.</p>
    #   @return [Array<String>]
    # @!attribute approval_rules_not_satisfied
    #   <p>The names of the approval rules that have not had their conditions met.</p>
    #   @return [Array<String>]
    class Evaluation < Struct.new(
      nil,
      :approved,
      :overridden,
      :approval_rules_satisfied,
      :approval_rules_not_satisfied,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:approved] = false unless options.key?(:approved)
        options[:overridden] = false unless options.key?(:overridden)
        super
      end
    end

    # <p>Returns information about a file in a repository.</p>
    # @!attribute blob_id
    #   <p>The blob ID that contains the file information.</p>
    #   @return [String]
    # @!attribute absolute_path
    #   <p>The fully qualified path to the file in the repository.</p>
    #   @return [String]
    # @!attribute relative_path
    #   <p>The relative path of the file from the folder where the query originated.</p>
    #   @return [String]
    # @!attribute file_mode
    #   <p>The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.</p>
    #   @return [String]
    class File < Struct.new(
      nil,
      :blob_id,
      :absolute_path,
      :relative_path,
      :file_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The commit cannot be created because both a source file and file content have been
    #             specified for the same file. You cannot provide both. Either specify a source file or
    #             provide the file content directly.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class FileContentAndSourceFileSpecifiedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The file cannot be added because it is empty. Empty files cannot be added to the repository with this API.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class FileContentRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The file cannot be added because it is too large. The maximum file size is 6 MB, and
    #             the combined file content change size is 7 MB. Consider making these changes using a Git
    #             client.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class FileContentSizeLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified file does not exist. Verify that you have used the correct file name,
    #             full path, and extension.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class FileDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The commit cannot be created because no files have been specified as added, updated, or changed (PutFile or DeleteFile) for the commit.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class FileEntryRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A file to be added, updated, or deleted as part of a commit.</p>
    # @!attribute absolute_path
    #   <p>The full path to the file to be added or updated, including the name of the
    #               file.</p>
    #   @return [String]
    # @!attribute blob_id
    #   <p>The blob ID that contains the file information.</p>
    #   @return [String]
    # @!attribute file_mode
    #   <p>The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.</p>
    #   @return [String]
    class FileMetadata < Struct.new(
      nil,
      :absolute_path,
      :blob_id,
      :file_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The commit cannot be created because no file mode has been specified. A file mode is
    #             required to update mode permissions for a file.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class FileModeRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about file modes in a merge or pull request.</p>
    # @!attribute source
    #   <p>The file mode of a file in the source of a merge or pull request.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The file mode of a file in the destination of a merge or pull request.</p>
    #   @return [String]
    # @!attribute base
    #   <p>The file mode of a file in the base of a merge or pull request.</p>
    #   @return [String]
    class FileModes < Struct.new(
      nil,
      :source,
      :destination,
      :base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A file cannot be added to the repository because the specified file name has the same name as a directory in this repository. Either provide
    #         another name for the file, or add the file in a directory that does not match the file name.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class FileNameConflictsWithDirectoryNameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The commit cannot be created because a specified file path points to a submodule. Verify that the destination files
    #         have valid file paths that do not point to a submodule.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class FilePathConflictsWithSubmodulePathException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the size of files in a merge or pull request.</p>
    # @!attribute source
    #   <p>The  size of a file in the source of a merge or pull request.</p>
    #   @return [Integer]
    # @!attribute destination
    #   <p>The size of a file in the destination of a merge or pull request.</p>
    #   @return [Integer]
    # @!attribute base
    #   <p>The size of a file in the base of a merge or pull request.</p>
    #   @return [Integer]
    class FileSizes < Struct.new(
      nil,
      :source,
      :destination,
      :base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:source] = 0 unless options.key?(:source)
        options[:destination] = 0 unless options.key?(:destination)
        options[:base] = 0 unless options.key?(:base)
        super
      end
    end

    # <p>The specified file exceeds the file size limit for CodeCommit. For more information about limits in CodeCommit, see
    #             <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Quotas</a> in the <i>CodeCommit User Guide</i>.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class FileTooLargeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a version of a file.</p>
    # @!attribute commit
    #   <p>Returns information about a specific commit.</p>
    #   @return [Types::Commit]
    # @!attribute blob_id
    #   <p>The blob ID of the object that represents the content of the file in this version.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The name and path of the file at which this blob is indexed which contains the data for this version of the file. This value will 
    #           vary between file versions if a file is renamed or if its path changes.</p>
    #   @return [String]
    # @!attribute revision_children
    #   <p>An array of commit IDs that contain more recent versions of this file. If there are no additional versions of the file, this array will be empty.</p>
    #   @return [Array<String>]
    class FileVersion < Struct.new(
      nil,
      :commit,
      :blob_id,
      :path,
      :revision_children,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a folder in a repository.</p>
    # @!attribute tree_id
    #   <p>The full SHA-1 pointer of the tree information for the commit that contains the folder.</p>
    #   @return [String]
    # @!attribute absolute_path
    #   <p>The fully qualified path of the folder in the repository.</p>
    #   @return [String]
    # @!attribute relative_path
    #   <p>The relative path of the specified folder from the folder where the query originated.</p>
    #   @return [String]
    class Folder < Struct.new(
      nil,
      :tree_id,
      :absolute_path,
      :relative_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The commit cannot be created because at least one of the overall changes in the commit results in a 
    #             folder whose contents exceed the limit of 6 MB. Either reduce the number and size of your changes,
    #         or split the changes across multiple folders.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class FolderContentSizeLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified folder does not exist. Either the folder name is not correct, or you did
    #             not enter the full path to the folder.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class FolderDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the approval rule template for which you want to get information.</p>
    #   @return [String]
    class GetApprovalRuleTemplateInput < Struct.new(
      nil,
      :approval_rule_template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template
    #   <p>The content and structure of the approval rule template.</p>
    #   @return [Types::ApprovalRuleTemplate]
    class GetApprovalRuleTemplateOutput < Struct.new(
      nil,
      :approval_rule_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a get blob operation.</p>
    # @!attribute repository_name
    #   <p>The name of the repository that contains the blob.</p>
    #   @return [String]
    # @!attribute blob_id
    #   <p>The ID of the blob, which is its SHA-1 pointer.</p>
    #   @return [String]
    class GetBlobInput < Struct.new(
      nil,
      :repository_name,
      :blob_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a get blob operation.</p>
    # @!attribute content
    #   <p>The content of the blob, usually a file.</p>
    #   @return [String]
    class GetBlobOutput < Struct.new(
      nil,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a get branch operation.</p>
    # @!attribute repository_name
    #   <p>The name of the repository that contains the branch for which you want to retrieve information.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch for which you want to retrieve information.</p>
    #   @return [String]
    class GetBranchInput < Struct.new(
      nil,
      :repository_name,
      :branch_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a get branch operation.</p>
    # @!attribute branch
    #   <p>The name of the branch.</p>
    #   @return [Types::BranchInfo]
    class GetBranchOutput < Struct.new(
      nil,
      :branch,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comment_id
    #   <p>The unique, system-generated ID of the comment. To get this ID, use  <a>GetCommentsForComparedCommit</a>
    #               or <a>GetCommentsForPullRequest</a>.</p>
    #   @return [String]
    class GetCommentInput < Struct.new(
      nil,
      :comment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comment
    #   <p>The contents of the comment.</p>
    #   @return [Types::Comment]
    class GetCommentOutput < Struct.new(
      nil,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comment_id
    #   <p>The ID of the comment for which you want to get reactions information.</p>
    #   @return [String]
    # @!attribute reaction_user_arn
    #   <p>Optional. The Amazon Resource Name (ARN) of the user or identity for which you want to get reaction information.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.  The default is the same as the allowed maximum, 1,000.</p>
    #   @return [Integer]
    class GetCommentReactionsInput < Struct.new(
      nil,
      :comment_id,
      :reaction_user_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reactions_for_comment
    #   <p>An array of reactions to the specified comment.</p>
    #   @return [Array<Types::ReactionForComment>]
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #   @return [String]
    class GetCommentReactionsOutput < Struct.new(
      nil,
      :reactions_for_comment,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to compare commits.</p>
    #   @return [String]
    # @!attribute before_commit_id
    #   <p>To establish the directionality of the comparison, the full commit ID of the before
    #               commit.</p>
    #   @return [String]
    # @!attribute after_commit_id
    #   <p>To establish the directionality of the comparison, the full commit ID of the after
    #               commit.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An enumeration token that when provided in a request, returns the next batch of the results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results. The
    #               default is 100 comments, but you can configure up to 500.</p>
    #   @return [Integer]
    class GetCommentsForComparedCommitInput < Struct.new(
      nil,
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comments_for_compared_commit_data
    #   <p>A list of comment objects on the compared commit.</p>
    #   @return [Array<Types::CommentsForComparedCommit>]
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #   @return [String]
    class GetCommentsForComparedCommitOutput < Struct.new(
      nil,
      :comments_for_compared_commit_data,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository that contains the pull request. Requirement is conditional: <code>repositoryName</code> must be specified when 
    #               <code>beforeCommitId</code> and <code>afterCommitId</code> are included.</p>
    #   @return [String]
    # @!attribute before_commit_id
    #   <p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created. Requirement is conditional: 
    #               <code>beforeCommitId</code> must be specified when <code>repositoryName</code> is included.</p>
    #   @return [String]
    # @!attribute after_commit_id
    #   <p>The full commit ID of the commit in the source branch that was the tip of the branch at the time the comment was made. Requirement is conditional: 
    #               <code>afterCommitId</code> must be specified when <code>repositoryName</code> is included.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results. The default is 100 comments.
    #               You can return up to 500 comments with a single request.</p>
    #   @return [Integer]
    class GetCommentsForPullRequestInput < Struct.new(
      nil,
      :pull_request_id,
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comments_for_pull_request_data
    #   <p>An array of comment objects on the pull request.</p>
    #   @return [Array<Types::CommentsForPullRequest>]
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #   @return [String]
    class GetCommentsForPullRequestOutput < Struct.new(
      nil,
      :comments_for_pull_request_data,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a get commit operation.</p>
    # @!attribute repository_name
    #   <p>The name of the repository to which the commit was made.</p>
    #   @return [String]
    # @!attribute commit_id
    #   <p>The commit ID. Commit IDs are the full SHA ID of the commit.</p>
    #   @return [String]
    class GetCommitInput < Struct.new(
      nil,
      :repository_name,
      :commit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a get commit operation.</p>
    # @!attribute commit
    #   <p>A commit data type object that contains information about the specified commit.</p>
    #   @return [Types::Commit]
    class GetCommitOutput < Struct.new(
      nil,
      :commit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to get differences.</p>
    #   @return [String]
    # @!attribute before_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, the full commit ID). Optional. If not specified, all changes before the
    #                   <code>afterCommitSpecifier</code> value are shown. If you do not use
    #                   <code>beforeCommitSpecifier</code> in your request, consider limiting the results
    #               with <code>maxResults</code>.</p>
    #   @return [String]
    # @!attribute after_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit.</p>
    #   @return [String]
    # @!attribute before_path
    #   <p>The file path in which to check for differences. Limits the results to this path. Can
    #               also be used to specify the previous name of a directory or folder. If
    #                   <code>beforePath</code> and <code>afterPath</code> are not specified, differences
    #               are shown for all paths.</p>
    #   @return [String]
    # @!attribute after_path
    #   <p>The file path in which to check differences. Limits the results to this path. Can also
    #               be used to specify the changed name of a directory or folder, if it has changed. If not
    #               specified, differences are shown for all paths.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #   @return [String]
    class GetDifferencesInput < Struct.new(
      nil,
      :repository_name,
      :before_commit_specifier,
      :after_commit_specifier,
      :before_path,
      :after_path,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute differences
    #   <p>A data type object that contains information about the differences, including whether
    #               the difference is added, modified, or deleted (A, D, M).</p>
    #   @return [Array<Types::Difference>]
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #   @return [String]
    class GetDifferencesOutput < Struct.new(
      nil,
      :differences,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository that contains the file.</p>
    #   @return [String]
    # @!attribute commit_specifier
    #   <p>The fully quaified reference that identifies the commit that contains the file. For
    #               example, you can specify a full commit ID, a tag, a branch name, or a reference such as
    #               refs/heads/main. If none is provided, the head commit is used.</p>
    #   @return [String]
    # @!attribute file_path
    #   <p>The fully qualified path to the file, including the full name and extension of the
    #               file. For example, /examples/file.md is the fully qualified path to a file named file.md
    #               in a folder named examples.</p>
    #   @return [String]
    class GetFileInput < Struct.new(
      nil,
      :repository_name,
      :commit_specifier,
      :file_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute commit_id
    #   <p>The full commit ID of the commit that contains the content returned by GetFile.</p>
    #   @return [String]
    # @!attribute blob_id
    #   <p>The blob ID of the object that represents the file content.</p>
    #   @return [String]
    # @!attribute file_path
    #   <p>The fully qualified path to the specified file. Returns the name and extension of the
    #               file.</p>
    #   @return [String]
    # @!attribute file_mode
    #   <p>The extrapolated file mode permissions of the blob. Valid values include strings such as EXECUTABLE and not numeric values.</p>
    #            <note>
    #               <p>The file mode permissions returned by this API are not the standard file mode
    #                   permission values, such as 100644, but rather extrapolated values. See the supported
    #                   return values.</p>
    #            </note>
    #   @return [String]
    # @!attribute file_size
    #   <p>The size of the contents of the file, in bytes.</p>
    #   @return [Integer]
    # @!attribute file_content
    #   <p>The base-64 encoded binary data object that represents the content of the file.</p>
    #   @return [String]
    class GetFileOutput < Struct.new(
      nil,
      :commit_id,
      :blob_id,
      :file_path,
      :file_mode,
      :file_size,
      :file_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:file_size] = 0 unless options.key?(:file_size)
        super
      end
    end

    # @!attribute repository_name
    #   <p>The name of the repository.</p>
    #   @return [String]
    # @!attribute commit_specifier
    #   <p>A fully qualified reference used to identify a commit that contains the version of the
    #               folder's content to return. A fully qualified reference can be a commit ID, branch name,
    #               tag, or reference such as HEAD. If no specifier is provided, the folder content is
    #               returned as it exists in the HEAD commit.</p>
    #   @return [String]
    # @!attribute folder_path
    #   <p>The fully qualified path to the folder whose contents are returned, including the
    #               folder name. For example, /examples is a fully-qualified path to a folder named examples
    #               that was created off of the root directory (/) of a repository. </p>
    #   @return [String]
    class GetFolderInput < Struct.new(
      nil,
      :repository_name,
      :commit_specifier,
      :folder_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute commit_id
    #   <p>The full commit ID used as a reference for the returned version of the folder
    #               content.</p>
    #   @return [String]
    # @!attribute folder_path
    #   <p>The fully qualified path of the folder whose contents are returned.</p>
    #   @return [String]
    # @!attribute tree_id
    #   <p>The full SHA-1 pointer of the tree information for the commit that contains the folder.</p>
    #   @return [String]
    # @!attribute sub_folders
    #   <p>The list of folders that exist under the specified folder, if any.</p>
    #   @return [Array<Types::Folder>]
    # @!attribute files
    #   <p>The list of files in the specified folder, if any.</p>
    #   @return [Array<Types::File>]
    # @!attribute symbolic_links
    #   <p>The list of symbolic links to other files and folders in the specified folder, if
    #               any.</p>
    #   @return [Array<Types::SymbolicLink>]
    # @!attribute sub_modules
    #   <p>The list of submodules in the specified folder, if any.</p>
    #   @return [Array<Types::SubModule>]
    class GetFolderOutput < Struct.new(
      nil,
      :commit_id,
      :folder_path,
      :tree_id,
      :sub_folders,
      :files,
      :symbolic_links,
      :sub_modules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository that contains the merge commit about which you want to get information.</p>
    #   @return [String]
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #   @return [String]
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #   @return [String]
    class GetMergeCommitInput < Struct.new(
      nil,
      :repository_name,
      :source_commit_specifier,
      :destination_commit_specifier,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_commit_id
    #   <p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>
    #   @return [String]
    # @!attribute destination_commit_id
    #   <p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>
    #   @return [String]
    # @!attribute base_commit_id
    #   <p>The commit ID of the merge base.</p>
    #   @return [String]
    # @!attribute merged_commit_id
    #   <p>The commit ID for the merge commit created when the source branch was merged into the
    #               destination branch. If the fast-forward merge strategy was used, there is no merge
    #               commit.</p>
    #   @return [String]
    class GetMergeCommitOutput < Struct.new(
      nil,
      :source_commit_id,
      :destination_commit_id,
      :base_commit_id,
      :merged_commit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    #   @return [String]
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute merge_option
    #   <p>The merge option or strategy you want to use to merge the code.  </p>
    #   @return [String]
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #   @return [String]
    # @!attribute max_conflict_files
    #   <p>The maximum number of files to include in the output.</p>
    #   @return [Integer]
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #   @return [String]
    class GetMergeConflictsInput < Struct.new(
      nil,
      :repository_name,
      :destination_commit_specifier,
      :source_commit_specifier,
      :merge_option,
      :conflict_detail_level,
      :max_conflict_files,
      :conflict_resolution_strategy,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute mergeable
    #   <p>A Boolean value that indicates whether the code is mergeable by the specified merge option.</p>
    #   @return [Boolean]
    # @!attribute destination_commit_id
    #   <p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>
    #   @return [String]
    # @!attribute source_commit_id
    #   <p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>
    #   @return [String]
    # @!attribute base_commit_id
    #   <p>The commit ID of the merge base.</p>
    #   @return [String]
    # @!attribute conflict_metadata_list
    #   <p>A list of metadata for any conflicting files. If the specified merge strategy is
    #               FAST_FORWARD_MERGE, this list is always empty.</p>
    #   @return [Array<Types::ConflictMetadata>]
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #   @return [String]
    class GetMergeConflictsOutput < Struct.new(
      nil,
      :mergeable,
      :destination_commit_id,
      :source_commit_id,
      :base_commit_id,
      :conflict_metadata_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:mergeable] = false unless options.key?(:mergeable)
        super
      end
    end

    # @!attribute repository_name
    #   <p>The name of the repository that contains the commits about which you want to get merge options.</p>
    #   @return [String]
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #   @return [String]
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #   @return [String]
    class GetMergeOptionsInput < Struct.new(
      nil,
      :repository_name,
      :source_commit_specifier,
      :destination_commit_specifier,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute merge_options
    #   <p>The merge option or strategy used to merge the code.</p>
    #   @return [Array<String>]
    # @!attribute source_commit_id
    #   <p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>
    #   @return [String]
    # @!attribute destination_commit_id
    #   <p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>
    #   @return [String]
    # @!attribute base_commit_id
    #   <p>The commit ID of the merge base.</p>
    #   @return [String]
    class GetMergeOptionsOutput < Struct.new(
      nil,
      :merge_options,
      :source_commit_id,
      :destination_commit_id,
      :base_commit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID for the pull request.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The system-generated ID for the pull request revision.</p>
    #   @return [String]
    class GetPullRequestApprovalStatesInput < Struct.new(
      nil,
      :pull_request_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approvals
    #   <p>Information about users who have approved the pull request.</p>
    #   @return [Array<Types::Approval>]
    class GetPullRequestApprovalStatesOutput < Struct.new(
      nil,
      :approvals,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #   @return [String]
    class GetPullRequestInput < Struct.new(
      nil,
      :pull_request_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request
    #   <p>Information about the specified pull request.</p>
    #   @return [Types::PullRequest]
    class GetPullRequestOutput < Struct.new(
      nil,
      :pull_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The ID of the pull request for which you want to get information about whether approval rules have been set aside (overridden).</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The system-generated ID of the revision for the pull request. To retrieve the most
    #               recent revision ID, use
    #               <a>GetPullRequest</a>.</p>
    #   @return [String]
    class GetPullRequestOverrideStateInput < Struct.new(
      nil,
      :pull_request_id,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute overridden
    #   <p>A Boolean value that indicates whether a pull request has had its rules set aside (TRUE) or whether all approval rules still apply (FALSE).</p>
    #   @return [Boolean]
    # @!attribute overrider
    #   <p>The Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.</p>
    #   @return [String]
    class GetPullRequestOverrideStateOutput < Struct.new(
      nil,
      :overridden,
      :overrider,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:overridden] = false unless options.key?(:overridden)
        super
      end
    end

    # <p>Represents the input of a get repository operation.</p>
    # @!attribute repository_name
    #   <p>The name of the repository to get information about.</p>
    #   @return [String]
    class GetRepositoryInput < Struct.new(
      nil,
      :repository_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a get repository operation.</p>
    # @!attribute repository_metadata
    #   <p>Information about the repository.</p>
    #   @return [Types::RepositoryMetadata]
    class GetRepositoryOutput < Struct.new(
      nil,
      :repository_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a get repository triggers operation.</p>
    # @!attribute repository_name
    #   <p>The name of the repository for which the trigger is configured.</p>
    #   @return [String]
    class GetRepositoryTriggersInput < Struct.new(
      nil,
      :repository_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a get repository triggers operation.</p>
    # @!attribute configuration_id
    #   <p>The system-generated unique ID for the trigger.</p>
    #   @return [String]
    # @!attribute triggers
    #   <p>The JSON block of configuration information for each trigger.</p>
    #   @return [Array<Types::RepositoryTrigger>]
    class GetRepositoryTriggersOutput < Struct.new(
      nil,
      :configuration_id,
      :triggers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client request token is not valid. Either the token is not in a valid format, or
    #             the token has been used in a previous request and cannot be reused.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class IdempotencyParameterMismatchException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Resource Name (ARN) is not valid. Make sure that you have provided the full ARN for the user who initiated the change for the pull request,
    #             and then try again.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidActorArnException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The content for the approval rule is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidApprovalRuleContentException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The name for the approval rule is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidApprovalRuleNameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The content of the approval rule template is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidApprovalRuleTemplateContentException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description for the approval rule template is not valid because it exceeds the
    #             maximum characters allowed for a description. For more information about limits in CodeCommit, 
    #             see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Quotas</a> in the <i>CodeCommit User Guide</i>.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidApprovalRuleTemplateDescriptionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The name of the approval rule template is not valid. Template names must be between 1
    #             and 100 valid characters in length. For more information about limits in CodeCommit,
    #             see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Quotas</a> in the <i>CodeCommit User Guide</i>.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidApprovalRuleTemplateNameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The state for the approval is not valid. Valid values include APPROVE and REVOKE. </p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidApprovalStateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Resource Name (ARN) is not valid. Make sure that you have provided the full ARN for the author of the pull request, and then try again.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidAuthorArnException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified blob is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidBlobIdException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified reference name is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidBranchNameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client request token is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidClientRequestTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The comment ID is not in a valid format. Make sure that you have provided the full comment ID.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidCommentIdException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified commit is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidCommitException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified commit ID is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidCommitIdException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified conflict detail level is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidConflictDetailLevelException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified conflict resolution list is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidConflictResolutionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified conflict resolution strategy is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidConflictResolutionStrategyException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified continuation token is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidContinuationTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified deletion parameter is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidDeletionParameterException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pull request description is not valid. Descriptions cannot be more than 1,000
    #             characters.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidDescriptionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The destination commit specifier is not valid. You must provide a valid branch name, tag, or full commit ID. </p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidDestinationCommitSpecifierException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified email address either contains one or more characters that are not allowed, or it exceeds the maximum number of characters
    #         allowed for an email address.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidEmailException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The location of the file is not valid. Make sure that you include the file name and
    #             extension.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidFileLocationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified file mode permission is not valid. For a list of valid file mode permissions, see <a>PutFile</a>. </p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidFileModeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The position is not valid. Make sure that the line number exists in the version of the file you want to comment on.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidFilePositionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified value for the number of conflict files to return is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidMaxConflictFilesException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified value for the number of merge hunks to return is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidMaxMergeHunksException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified number of maximum results is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidMaxResultsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified merge option is not valid for this operation. Not all merge strategies are supported for all operations.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidMergeOptionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified sort order is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidOrderException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The override status is not valid. Valid statuses are OVERRIDE and REVOKE.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidOverrideStatusException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parent commit ID is not valid. The commit ID cannot be empty, and must match the head commit ID for the branch of the repository where you 
    #         want to add or update a file.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidParentCommitIdException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified path is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidPathException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pull request event type is not valid. </p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidPullRequestEventTypeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pull request ID is not valid. Make sure that you have provided the full ID and that the pull request is in the specified repository, and then try again.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidPullRequestIdException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pull request status is not valid. The only valid values are <code>OPEN</code> and <code>CLOSED</code>.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidPullRequestStatusException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pull request status update is not valid. The only valid update is from <code>OPEN</code> to <code>CLOSED</code>.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidPullRequestStatusUpdateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Resource Name (ARN) of the user or identity is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidReactionUserArnException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The value of the reaction is not valid. For more information, see the <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html">CodeCommit User Guide</a>.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidReactionValueException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified reference name format is not valid. Reference names must conform to the
    #             Git references format (for example, refs/heads/main). For more information, see <a href="https://git-scm.com/book/en/v2/Git-Internals-Git-References">Git Internals -
    #                 Git References</a> or consult your Git documentation.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidReferenceNameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Either the enum is not in a valid format, or the specified file version enum is not valid in respect to the current file version.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidRelativeFileVersionEnumException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Automerge was specified for resolving the conflict, but the replacement type is not valid or content is missing. </p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidReplacementContentException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Automerge was specified for resolving the conflict, but the specified replacement type is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidReplacementTypeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified repository description is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidRepositoryDescriptionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A specified repository name is not valid.</p>
    #          <note>
    #             <p>This exception occurs only when a specified repository name is not valid. Other
    #                 exceptions occur when a required repository parameter is missing, or when a
    #                 specified repository does not exist.</p>
    #          </note>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidRepositoryNameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more branch names specified for the trigger is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidRepositoryTriggerBranchNameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The custom data provided for the trigger is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidRepositoryTriggerCustomDataException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Resource Name (ARN) for the trigger is not valid for the specified destination. The most common reason for this error is that the ARN does not meet the requirements for the service type.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidRepositoryTriggerDestinationArnException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more events specified for the trigger is not valid. Check to make sure that all events specified match the requirements for allowed events.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidRepositoryTriggerEventsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The name of the trigger is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidRepositoryTriggerNameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services Region for the trigger target does not match the Amazon Web Services Region for the
    #             repository. Triggers must be created in the same Amazon Web Services Region as the target for the
    #             trigger.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidRepositoryTriggerRegionException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The value for the resource ARN is not valid. For more information about resources in CodeCommit, see 
    #             <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats">CodeCommit Resources and Operations</a>
    #             in the CodeCommit User Guide.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidResourceArnException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The revision ID is not valid. Use GetPullRequest to determine the value.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidRevisionIdException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The SHA-256 hash signature for the rule content is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidRuleContentSha256Exception < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified sort by value is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidSortByException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source commit specifier is not valid. You must provide a valid branch name, tag, or full commit ID.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidSourceCommitSpecifierException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified tag is not valid. Key names cannot be prefixed with aws:.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidSystemTagUsageException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The list of tags is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidTagKeysListException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The map of tags is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidTagsMapException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified target branch is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidTargetBranchException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The target for the pull request is not valid. A target must contain the full values for the repository name, source branch, and destination branch for the pull request.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidTargetException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The targets for the pull request is not valid or not in a valid format. Targets are a list of target objects. Each target object must contain the full values for 
    #             the repository name, source branch, and destination branch for a pull request.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidTargetsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The title of the pull request is not valid. Pull request titles cannot exceed 100 characters in length.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class InvalidTitleException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about whether a file is binary or textual in a merge or pull request operation.</p>
    # @!attribute source
    #   <p>The binary or non-binary status of file in the source of a merge or pull request.</p>
    #   @return [Boolean]
    # @!attribute destination
    #   <p>The binary or non-binary status of a file in the destination of a merge or pull request.</p>
    #   @return [Boolean]
    # @!attribute base
    #   <p>The binary or non-binary status of a file in the base of a merge or pull request.</p>
    #   @return [Boolean]
    class IsBinaryFile < Struct.new(
      nil,
      :source,
      :destination,
      :base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #   @return [Integer]
    class ListApprovalRuleTemplatesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template_names
    #   <p>The names of all the approval rule templates found in the Amazon Web Services Region for your Amazon Web Services account.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the next results of the operation.</p>
    #   @return [String]
    class ListApprovalRuleTemplatesOutput < Struct.new(
      nil,
      :approval_rule_template_names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository for which you want to list all associated approval rule templates.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #   @return [Integer]
    class ListAssociatedApprovalRuleTemplatesForRepositoryInput < Struct.new(
      nil,
      :repository_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template_names
    #   <p>The names of all approval rule templates associated with the repository.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the next results of the operation.</p>
    #   @return [String]
    class ListAssociatedApprovalRuleTemplatesForRepositoryOutput < Struct.new(
      nil,
      :approval_rule_template_names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a list branches operation.</p>
    # @!attribute repository_name
    #   <p>The name of the repository that contains the branches.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the results.</p>
    #   @return [String]
    class ListBranchesInput < Struct.new(
      nil,
      :repository_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a list branches operation.</p>
    # @!attribute branches
    #   <p>The list of branch names.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>An enumeration token that returns the batch of the results.</p>
    #   @return [String]
    class ListBranchesOutput < Struct.new(
      nil,
      :branches,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository that contains the file.</p>
    #   @return [String]
    # @!attribute commit_specifier
    #   <p>The fully quaified reference that identifies the commit that contains the file. For
    #               example, you can specify a full commit ID, a tag, a branch name, or a reference such as
    #               <code>refs/heads/main</code>. If none is provided, the head commit is used.</p>
    #   @return [String]
    # @!attribute file_path
    #   <p>The full path of the file whose history you want to retrieve, including the name of the file.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the results.</p>
    #   @return [String]
    class ListFileCommitHistoryRequest < Struct.new(
      nil,
      :repository_name,
      :commit_specifier,
      :file_path,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute revision_dag
    #   <p>An array of FileVersion objects that form a directed acyclic graph (DAG) of the changes to the file made by the commits that changed the file.</p>
    #   @return [Array<Types::FileVersion>]
    # @!attribute next_token
    #   <p>An enumeration token that can be used to return the next batch of results.</p>
    #   @return [String]
    class ListFileCommitHistoryResponse < Struct.new(
      nil,
      :revision_dag,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository for which you want to list pull requests.</p>
    #   @return [String]
    # @!attribute author_arn
    #   <p>Optional. The Amazon Resource Name (ARN) of the user who created the pull request. If used, this filters the results 
    #           to pull requests created by that user.</p>
    #   @return [String]
    # @!attribute pull_request_status
    #   <p>Optional. The status of the pull request. If used, this refines the results to the pull requests that match the specified status.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #   @return [Integer]
    class ListPullRequestsInput < Struct.new(
      nil,
      :repository_name,
      :author_arn,
      :pull_request_status,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_ids
    #   <p>The system-generated IDs of the pull requests.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the next results of the operation.</p>
    #   @return [String]
    class ListPullRequestsOutput < Struct.new(
      nil,
      :pull_request_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the approval rule template for which you want to list repositories that are associated with that template.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #   @return [Integer]
    class ListRepositoriesForApprovalRuleTemplateInput < Struct.new(
      nil,
      :approval_rule_template_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_names
    #   <p>A list of repository names that are associated with the specified approval rule template.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the next results of the operation.</p>
    #   @return [String]
    class ListRepositoriesForApprovalRuleTemplateOutput < Struct.new(
      nil,
      :repository_names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a list repositories operation.</p>
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the results of the operation. 
    #               Batch sizes are 1,000 for list repository operations. When the client sends the token back to CodeCommit,
    #               another page of 1,000 records is retrieved.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The criteria used to sort the results of a list repositories operation.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order in which to sort the results of a list repositories operation.</p>
    #   @return [String]
    class ListRepositoriesInput < Struct.new(
      nil,
      :next_token,
      :sort_by,
      :order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a list repositories operation.</p>
    # @!attribute repositories
    #   <p>Lists the repositories called by the list repositories operation.</p>
    #   @return [Array<Types::RepositoryNameIdPair>]
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the results of the operation. 
    #               Batch sizes are 1,000 for list repository operations. When the client sends the token back to CodeCommit, 
    #               another page of 1,000 records is retrieved.</p>
    #   @return [String]
    class ListRepositoriesOutput < Struct.new(
      nil,
      :repositories,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to get information
    #               about tags, if any.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tag key and value pairs associated with the specified resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the next results of the operation.</p>
    #   @return [String]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about the location of a change or comment in the comparison between two commits or a pull request.</p>
    # @!attribute file_path
    #   <p>The name of the file being compared, including its extension and subdirectory, if any.</p>
    #   @return [String]
    # @!attribute file_position
    #   <p>The position of a change in a compared file, in line number format.</p>
    #   @return [Integer]
    # @!attribute relative_file_version
    #   <p>In a comparison of commits or a pull request, whether the change is in the before or
    #               after of that comparison.</p>
    #   @return [String]
    class Location < Struct.new(
      nil,
      :file_path,
      :file_position,
      :relative_file_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pull request cannot be merged automatically into the destination branch. You must manually merge the branches and resolve any conflicts.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ManualMergeRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of branches for the trigger was exceeded.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class MaximumBranchesExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of allowed conflict resolution entries was exceeded.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class MaximumConflictResolutionEntriesExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of files to load exceeds the allowed limit.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class MaximumFileContentToLoadExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of specified files to change as part of this commit exceeds the maximum number of files 
    #         that can be changed in a single commit. Consider using a Git client for these changes.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class MaximumFileEntriesExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of items to compare between the source or destination branches and the merge base has exceeded the maximum allowed.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class MaximumItemsToCompareExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of approvals required for the approval rule exceeds the maximum number allowed.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class MaximumNumberOfApprovalsExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You cannot create the pull request because the repository has too many open pull requests. 
    #             The maximum number of open pull requests for a repository is 1,000. Close one or more open pull requests, and then try again.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class MaximumOpenPullRequestsExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of allowed repository names was exceeded. Currently, this number is 100.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class MaximumRepositoryNamesExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of triggers allowed for the repository was exceeded.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class MaximumRepositoryTriggersExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of approval rule templates for a repository has been exceeded. You cannot associate more than 25 
    #         approval rule templates with a repository.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class MaximumRuleTemplatesAssociatedWithRepositoryException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to merge two branches.</p>
    #   @return [String]
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute target_branch
    #   <p>The branch where the merge is applied.</p>
    #   @return [String]
    class MergeBranchesByFastForwardInput < Struct.new(
      nil,
      :repository_name,
      :source_commit_specifier,
      :destination_commit_specifier,
      :target_branch,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute commit_id
    #   <p>The commit ID of the merge in the destination or target branch.</p>
    #   @return [String]
    # @!attribute tree_id
    #   <p>The tree ID of the merge in the destination or target branch.</p>
    #   @return [String]
    class MergeBranchesByFastForwardOutput < Struct.new(
      nil,
      :commit_id,
      :tree_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to merge two branches.</p>
    #   @return [String]
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute target_branch
    #   <p>The branch where the merge is applied. </p>
    #   @return [String]
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #   @return [String]
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #   @return [String]
    # @!attribute author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address of the person merging the branches. This information is used in the
    #               commit information for the merge.</p>
    #   @return [String]
    # @!attribute commit_message
    #   <p>The commit message for the merge.</p>
    #   @return [String]
    # @!attribute keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If this is specified as true, a .gitkeep file is
    #               created for empty folders. The default is false.</p>
    #   @return [Boolean]
    # @!attribute conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    #   @return [Types::ConflictResolution]
    class MergeBranchesBySquashInput < Struct.new(
      nil,
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
      :conflict_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute commit_id
    #   <p>The commit ID of the merge in the destination or target branch.</p>
    #   @return [String]
    # @!attribute tree_id
    #   <p>The tree ID of the merge in the destination or target branch.</p>
    #   @return [String]
    class MergeBranchesBySquashOutput < Struct.new(
      nil,
      :commit_id,
      :tree_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to merge two branches.</p>
    #   @return [String]
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #   @return [String]
    # @!attribute target_branch
    #   <p>The branch where the merge is applied. </p>
    #   @return [String]
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #   @return [String]
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #   @return [String]
    # @!attribute author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address of the person merging the branches. This information is used in the
    #               commit information for the merge.</p>
    #   @return [String]
    # @!attribute commit_message
    #   <p>The commit message to include in the commit information for the merge.</p>
    #   @return [String]
    # @!attribute keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If true, a .gitkeep file is created for empty folders.
    #               The default is false.</p>
    #   @return [Boolean]
    # @!attribute conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    #   @return [Types::ConflictResolution]
    class MergeBranchesByThreeWayInput < Struct.new(
      nil,
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
      :conflict_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute commit_id
    #   <p>The commit ID of the merge in the destination or target branch.</p>
    #   @return [String]
    # @!attribute tree_id
    #   <p>The tree ID of the merge in the destination or target branch.</p>
    #   @return [String]
    class MergeBranchesByThreeWayOutput < Struct.new(
      nil,
      :commit_id,
      :tree_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about merge hunks in a merge or pull request operation.</p>
    # @!attribute is_conflict
    #   <p>A Boolean value indicating whether a combination of hunks contains a conflict.
    #               Conflicts occur when the same file or the same lines in a file were modified in both the
    #               source and destination of a merge or pull request. Valid values include true, false, and
    #               null. True when the hunk represents a conflict and one or more files contains a line
    #               conflict. File mode conflicts in a merge do not set this to true.</p>
    #   @return [Boolean]
    # @!attribute source
    #   <p>Information about the merge hunk in the source of a merge or pull request.</p>
    #   @return [Types::MergeHunkDetail]
    # @!attribute destination
    #   <p>Information about the merge hunk in the destination of a merge or pull request.</p>
    #   @return [Types::MergeHunkDetail]
    # @!attribute base
    #   <p>Information about the merge hunk in the base of a merge or pull request.</p>
    #   @return [Types::MergeHunkDetail]
    class MergeHunk < Struct.new(
      nil,
      :is_conflict,
      :source,
      :destination,
      :base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_conflict] = false unless options.key?(:is_conflict)
        super
      end
    end

    # <p>Information about the details of a merge hunk that contains a conflict in a merge or pull request operation.</p>
    # @!attribute start_line
    #   <p>The start position of the hunk in the merge result.</p>
    #   @return [Integer]
    # @!attribute end_line
    #   <p>The end position of the hunk in the merge result.</p>
    #   @return [Integer]
    # @!attribute hunk_content
    #   <p>The base-64 encoded content of the hunk merged region that might contain a
    #               conflict.</p>
    #   @return [String]
    class MergeHunkDetail < Struct.new(
      nil,
      :start_line,
      :end_line,
      :hunk_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a merge or potential merge between a source reference and a destination reference in a pull request.</p>
    # @!attribute is_merged
    #   <p>A Boolean value indicating whether the merge has been made.</p>
    #   @return [Boolean]
    # @!attribute merged_by
    #   <p>The Amazon Resource Name (ARN) of the user who merged the branches.</p>
    #   @return [String]
    # @!attribute merge_commit_id
    #   <p>The commit ID for the merge commit, if any.</p>
    #   @return [String]
    # @!attribute merge_option
    #   <p>The merge strategy used in the merge.</p>
    #   @return [String]
    class MergeMetadata < Struct.new(
      nil,
      :is_merged,
      :merged_by,
      :merge_commit_id,
      :merge_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_merged] = false unless options.key?(:is_merged)
        super
      end
    end

    # <p>Information about the file operation conflicts in a merge operation.</p>
    # @!attribute source
    #   <p>The operation (add, modify, or delete) on a file in the source of a merge or pull
    #               request.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The operation on a file in the destination of a merge or pull request.</p>
    #   @return [String]
    class MergeOperations < Struct.new(
      nil,
      :source,
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A merge option or stategy is required, and none was provided.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class MergeOptionRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    #   @return [String]
    # @!attribute source_commit_id
    #   <p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an 
    #           exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>
    #   @return [String]
    class MergePullRequestByFastForwardInput < Struct.new(
      nil,
      :pull_request_id,
      :repository_name,
      :source_commit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request
    #   <p>Information about the specified pull request, including the merge.</p>
    #   @return [Types::PullRequest]
    class MergePullRequestByFastForwardOutput < Struct.new(
      nil,
      :pull_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    #   @return [String]
    # @!attribute source_commit_id
    #   <p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an 
    #               exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>
    #   @return [String]
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #   @return [String]
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #   @return [String]
    # @!attribute commit_message
    #   <p>The commit message to include in the commit information for the merge.</p>
    #   @return [String]
    # @!attribute author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address of the person merging the branches. This information is used in the
    #               commit information for the merge.</p>
    #   @return [String]
    # @!attribute keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If true, a .gitkeep file is created for empty folders.
    #               The default is false.</p>
    #   @return [Boolean]
    # @!attribute conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    #   @return [Types::ConflictResolution]
    class MergePullRequestBySquashInput < Struct.new(
      nil,
      :pull_request_id,
      :repository_name,
      :source_commit_id,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :commit_message,
      :author_name,
      :email,
      :keep_empty_folders,
      :conflict_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request
    #   <p>Returns information about a pull request.</p>
    #   @return [Types::PullRequest]
    class MergePullRequestBySquashOutput < Struct.new(
      nil,
      :pull_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    #   @return [String]
    # @!attribute source_commit_id
    #   <p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an 
    #               exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>
    #   @return [String]
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #   @return [String]
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #   @return [String]
    # @!attribute commit_message
    #   <p>The commit message to include in the commit information for the merge.</p>
    #   @return [String]
    # @!attribute author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address of the person merging the branches. This information is used in the
    #               commit information for the merge.</p>
    #   @return [String]
    # @!attribute keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If true, a .gitkeep file is created for empty folders.
    #               The default is false.</p>
    #   @return [Boolean]
    # @!attribute conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    #   @return [Types::ConflictResolution]
    class MergePullRequestByThreeWayInput < Struct.new(
      nil,
      :pull_request_id,
      :repository_name,
      :source_commit_id,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :commit_message,
      :author_name,
      :email,
      :keep_empty_folders,
      :conflict_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request
    #   <p>Returns information about a pull request.</p>
    #   @return [Types::PullRequest]
    class MergePullRequestByThreeWayOutput < Struct.new(
      nil,
      :pull_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>More than one conflict resolution entries exists for the conflict. A conflict can have only one conflict resolution entry.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class MultipleConflictResolutionEntriesException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You cannot include more than one repository in a pull request. Make sure you have specified only one repository name in your request, and then try again.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class MultipleRepositoriesInPullRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The user name is not valid because it has exceeded the character limit for author names. </p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class NameLengthExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The commit cannot be created because no changes will be made to the repository as a result of this commit. A commit must contain at least one change.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class NoChangeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of approval rule templates has been exceeded for this Amazon Web Services Region. </p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class NumberOfRuleTemplatesExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The approval rule cannot be added. The pull request has the maximum number of approval rules associated with it.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class NumberOfRulesExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the type of an object in a merge operation.</p>
    # @!attribute source
    #   <p>The type of the object in the source branch.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The type of the object in the destination branch.</p>
    #   @return [String]
    # @!attribute base
    #   <p>The type of the object in the base commit of the merge.</p>
    #   @return [String]
    class ObjectTypes < Struct.new(
      nil,
      :source,
      :destination,
      :base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested action is not allowed.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class OperationNotAllowedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about the template that created the approval rule for a pull request.</p>
    # @!attribute approval_rule_template_id
    #   <p>The ID of the template that created the approval rule.</p>
    #   @return [String]
    # @!attribute approval_rule_template_name
    #   <p>The name of the template that created the approval rule.</p>
    #   @return [String]
    class OriginApprovalRuleTemplate < Struct.new(
      nil,
      :approval_rule_template_id,
      :approval_rule_template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pull request has already had its approval rules set to override.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class OverrideAlreadySetException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request for which you want to override all
    #               approval rule requirements. To get this information, use
    #               <a>GetPullRequest</a>.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The system-generated ID of the most recent revision of the pull request. You cannot override approval rules for anything but the most recent revision of a pull request.
    #               To get the revision ID, use GetPullRequest.</p>
    #   @return [String]
    # @!attribute override_status
    #   <p>Whether you want to set aside approval rule requirements for the pull request (OVERRIDE) or revoke a previous override and apply 
    #           approval rule requirements (REVOKE). REVOKE status is not stored.</p>
    #   @return [String]
    class OverridePullRequestApprovalRulesInput < Struct.new(
      nil,
      :pull_request_id,
      :revision_id,
      :override_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An override status is required, but no value was provided. Valid values include OVERRIDE and REVOKE.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class OverrideStatusRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parent commit ID is not valid because it does not exist. The specified parent commit ID does not exist in the specified branch of the repository.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ParentCommitDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The file could not be added because the provided parent commit ID is not the current tip of the specified branch. To view the full commit ID of the current head
    #         of the branch, use <a>GetBranch</a>.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ParentCommitIdOutdatedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A parent commit ID is required. To view the full commit ID of a branch in a repository, use <a>GetBranch</a> or a Git command 
    #         (for example, git pull or git log).</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ParentCommitIdRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified path does not exist.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class PathDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The folderPath for a location cannot be null.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class PathRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to post a comment on the comparison between commits.</p>
    #   @return [String]
    # @!attribute before_commit_id
    #   <p>To establish the directionality of the comparison, the full commit ID of the before
    #               commit. Required for commenting on any commit unless that commit is the initial
    #               commit.</p>
    #   @return [String]
    # @!attribute after_commit_id
    #   <p>To establish the directionality of the comparison, the full commit ID of the after
    #               commit.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the comparison where you want to comment.</p>
    #   @return [Types::Location]
    # @!attribute content
    #   <p>The content of the comment you want to make.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #   @return [String]
    class PostCommentForComparedCommitInput < Struct.new(
      nil,
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :location,
      :content,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you posted a comment on the comparison between commits.</p>
    #   @return [String]
    # @!attribute before_commit_id
    #   <p>In the directionality you established, the full commit ID of the before commit.</p>
    #   @return [String]
    # @!attribute after_commit_id
    #   <p>In the directionality you established, the full commit ID of the after commit.</p>
    #   @return [String]
    # @!attribute before_blob_id
    #   <p>In the directionality you established, the blob ID of the before blob.</p>
    #   @return [String]
    # @!attribute after_blob_id
    #   <p>In the directionality you established, the blob ID of the after blob.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the comment in the comparison between the two commits.</p>
    #   @return [Types::Location]
    # @!attribute comment
    #   <p>The content of the comment you posted.</p>
    #   @return [Types::Comment]
    class PostCommentForComparedCommitOutput < Struct.new(
      nil,
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :before_blob_id,
      :after_blob_id,
      :location,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository where you want to post a comment on a pull request.</p>
    #   @return [String]
    # @!attribute before_commit_id
    #   <p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.</p>
    #   @return [String]
    # @!attribute after_commit_id
    #   <p>The full commit ID of the commit in the source branch that is the current tip of the branch for the pull request when you post the comment.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the change where you want to post your comment. If no location is
    #               provided, the comment is posted as a general comment on the pull request difference
    #               between the before commit ID and the after commit ID.</p>
    #   @return [Types::Location]
    # @!attribute content
    #   <p>The content of your comment on the change.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #   @return [String]
    class PostCommentForPullRequestInput < Struct.new(
      nil,
      :pull_request_id,
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :location,
      :content,
      :client_request_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you posted a comment on a pull request.</p>
    #   @return [String]
    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. </p>
    #   @return [String]
    # @!attribute before_commit_id
    #   <p>The full commit ID of the commit in the source branch used to create the pull request, 
    #               or in the case of an updated pull request, the full commit ID of the commit used to update the pull request.</p>
    #   @return [String]
    # @!attribute after_commit_id
    #   <p>The full commit ID of the commit in the destination branch where the pull request is
    #               merged.</p>
    #   @return [String]
    # @!attribute before_blob_id
    #   <p>In the directionality of the pull request, the blob ID of the before blob.</p>
    #   @return [String]
    # @!attribute after_blob_id
    #   <p>In the directionality of the pull request, the blob ID of the after blob.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the change where you posted your comment.</p>
    #   @return [Types::Location]
    # @!attribute comment
    #   <p>The content of the comment you posted.</p>
    #   @return [Types::Comment]
    class PostCommentForPullRequestOutput < Struct.new(
      nil,
      :repository_name,
      :pull_request_id,
      :before_commit_id,
      :after_commit_id,
      :before_blob_id,
      :after_blob_id,
      :location,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute in_reply_to
    #   <p>The system-generated ID of the comment to which you want to reply. To get this ID, use <a>GetCommentsForComparedCommit</a> 
    #           or <a>GetCommentsForPullRequest</a>.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The contents of your reply to a comment.</p>
    #   @return [String]
    class PostCommentReplyInput < Struct.new(
      nil,
      :in_reply_to,
      :client_request_token,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comment
    #   <p>Information about the reply to a comment.</p>
    #   @return [Types::Comment]
    class PostCommentReplyOutput < Struct.new(
      nil,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a pull request.</p>
    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. </p>
    #   @return [String]
    # @!attribute title
    #   <p>The user-defined title of the pull request. This title is displayed in the list of
    #               pull requests to other repository users.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The user-defined description of the pull request. This description can be used to clarify what should be reviewed and other details of the request.</p>
    #   @return [String]
    # @!attribute last_activity_date
    #   <p>The day and time of the last user or system activity on the pull request, in timestamp format.</p>
    #   @return [Time]
    # @!attribute creation_date
    #   <p>The date and time the pull request was originally created, in timestamp format.</p>
    #   @return [Time]
    # @!attribute pull_request_status
    #   <p>The status of the pull request. Pull request status can only change from <code>OPEN</code> to <code>CLOSED</code>.</p>
    #   @return [String]
    # @!attribute author_arn
    #   <p>The Amazon Resource Name (ARN) of the user who created the pull request.</p>
    #   @return [String]
    # @!attribute pull_request_targets
    #   <p>The targets of the pull request, including the source branch and destination branch for the pull request.</p>
    #   @return [Array<Types::PullRequestTarget>]
    # @!attribute client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The system-generated revision ID for the pull request.</p>
    #   @return [String]
    # @!attribute approval_rules
    #   <p>The approval rules applied to the pull request.</p>
    #   @return [Array<Types::ApprovalRule>]
    class PullRequest < Struct.new(
      nil,
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
      :approval_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pull request status cannot be updated because it is already closed.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class PullRequestAlreadyClosedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pull request cannot be merged because one or more approval rules applied to the pull request have conditions that have not been met.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class PullRequestApprovalRulesNotSatisfiedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The approval cannot be applied because the user approving the pull request matches the user who created the pull request. You cannot approve a pull 
    #         request that you created.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class PullRequestCannotBeApprovedByAuthorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata about the pull request that is used when comparing the pull request source with its destination.</p>
    # @!attribute repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    #   @return [String]
    # @!attribute source_commit_id
    #   <p>The commit ID on the source branch used when the pull request was created.</p>
    #   @return [String]
    # @!attribute destination_commit_id
    #   <p>The commit ID of the tip of the branch specified as the destination branch when the pull request was created.</p>
    #   @return [String]
    # @!attribute merge_base
    #   <p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>
    #   @return [String]
    class PullRequestCreatedEventMetadata < Struct.new(
      nil,
      :repository_name,
      :source_commit_id,
      :destination_commit_id,
      :merge_base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pull request ID could not be found. Make sure that you have specified the correct repository name and pull request ID, and then try again.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class PullRequestDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a pull request event.</p>
    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request.</p>
    #   @return [String]
    # @!attribute event_date
    #   <p>The day and time of the pull request event, in timestamp format.</p>
    #   @return [Time]
    # @!attribute pull_request_event_type
    #   <p>The type of the pull request event (for example, a status change event
    #               (PULL_REQUEST_STATUS_CHANGED) or update event
    #               (PULL_REQUEST_SOURCE_REFERENCE_UPDATED)).</p>
    #   @return [String]
    # @!attribute actor_arn
    #   <p>The Amazon Resource Name (ARN) of the user whose actions resulted in the event.
    #               Examples include updating the pull request with more commits or changing the status of a
    #               pull request.</p>
    #   @return [String]
    # @!attribute pull_request_created_event_metadata
    #   <p>Information about the source and destination branches for the pull request.</p>
    #   @return [Types::PullRequestCreatedEventMetadata]
    # @!attribute pull_request_status_changed_event_metadata
    #   <p>Information about the change in status for the pull request event.</p>
    #   @return [Types::PullRequestStatusChangedEventMetadata]
    # @!attribute pull_request_source_reference_updated_event_metadata
    #   <p>Information about the updated source branch for the pull request event. </p>
    #   @return [Types::PullRequestSourceReferenceUpdatedEventMetadata]
    # @!attribute pull_request_merged_state_changed_event_metadata
    #   <p>Information about the change in mergability state for the pull request event.</p>
    #   @return [Types::PullRequestMergedStateChangedEventMetadata]
    # @!attribute approval_rule_event_metadata
    #   <p>Information about a pull request event.</p>
    #   @return [Types::ApprovalRuleEventMetadata]
    # @!attribute approval_state_changed_event_metadata
    #   <p>Information about an approval state change for a pull request.</p>
    #   @return [Types::ApprovalStateChangedEventMetadata]
    # @!attribute approval_rule_overridden_event_metadata
    #   <p>Information about an approval rule override event for a pull request.</p>
    #   @return [Types::ApprovalRuleOverriddenEventMetadata]
    class PullRequestEvent < Struct.new(
      nil,
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
      :approval_rule_overridden_event_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A pull request ID is required, but none was provided.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class PullRequestIdRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about the change in the merge state for a pull request event. </p>
    # @!attribute repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    #   @return [String]
    # @!attribute destination_reference
    #   <p>The name of the branch that the pull request is merged into.</p>
    #   @return [String]
    # @!attribute merge_metadata
    #   <p>Information about the merge state change event.</p>
    #   @return [Types::MergeMetadata]
    class PullRequestMergedStateChangedEventMetadata < Struct.new(
      nil,
      :repository_name,
      :destination_reference,
      :merge_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an update to the source branch of a pull request.</p>
    # @!attribute repository_name
    #   <p>The name of the repository where the pull request was updated.</p>
    #   @return [String]
    # @!attribute before_commit_id
    #   <p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was updated.</p>
    #   @return [String]
    # @!attribute after_commit_id
    #   <p>The full commit ID of the commit in the source branch that was the tip of the branch at the time the pull request was updated.</p>
    #   @return [String]
    # @!attribute merge_base
    #   <p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>
    #   @return [String]
    class PullRequestSourceReferenceUpdatedEventMetadata < Struct.new(
      nil,
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :merge_base,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a change to the status of a pull request.</p>
    # @!attribute pull_request_status
    #   <p>The changed status of the pull request.</p>
    #   @return [String]
    class PullRequestStatusChangedEventMetadata < Struct.new(
      nil,
      :pull_request_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A pull request status is required, but none was provided.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class PullRequestStatusRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a pull request target.</p>
    # @!attribute repository_name
    #   <p>The name of the repository that contains the pull request source and destination branches.</p>
    #   @return [String]
    # @!attribute source_reference
    #   <p>The branch of the repository that contains the changes for the pull request. Also known as the source branch.</p>
    #   @return [String]
    # @!attribute destination_reference
    #   <p>The branch of the repository where the pull request changes are merged. Also known as
    #               the destination branch. </p>
    #   @return [String]
    # @!attribute destination_commit
    #   <p>The full commit ID that is the tip of the destination branch. This is the commit where the pull request was or will be merged.</p>
    #   @return [String]
    # @!attribute source_commit
    #   <p>The full commit ID of the tip of the source branch used to create the pull request. If
    #               the pull request branch is updated by a push while the pull request is open, the commit
    #               ID changes to reflect the new tip of the branch.</p>
    #   @return [String]
    # @!attribute merge_base
    #   <p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>
    #   @return [String]
    # @!attribute merge_metadata
    #   <p>Returns metadata about the state of the merge, including whether the merge has been made.</p>
    #   @return [Types::MergeMetadata]
    class PullRequestTarget < Struct.new(
      nil,
      :repository_name,
      :source_reference,
      :destination_reference,
      :destination_commit,
      :source_commit,
      :merge_base,
      :merge_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comment_id
    #   <p>The ID of the comment to which you want to add or update a reaction.</p>
    #   @return [String]
    # @!attribute reaction_value
    #   <p>The emoji reaction you want to add or update. To remove a reaction, provide a value of blank or null. You can also provide the value of none.
    #               For information about emoji reaction values supported in CodeCommit, see the <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/how-to-commit-comment.html#emoji-reaction-table">CodeCommit User Guide</a>.</p>
    #   @return [String]
    class PutCommentReactionInput < Struct.new(
      nil,
      :comment_id,
      :reaction_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a file added or updated as part of a commit.</p>
    # @!attribute file_path
    #   <p>The full path to the file in the repository, including the name of the file.</p>
    #   @return [String]
    # @!attribute file_mode
    #   <p>The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.</p>
    #   @return [String]
    # @!attribute file_content
    #   <p>The content of the file, if a source file is not specified.</p>
    #   @return [String]
    # @!attribute source_file
    #   <p>The name and full path of the file that contains the changes you want to make as part of the commit, 
    #           if you are not providing the file content directly.</p>
    #   @return [Types::SourceFileSpecifier]
    class PutFileEntry < Struct.new(
      nil,
      :file_path,
      :file_mode,
      :file_content,
      :source_file,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The commit cannot be created because one or more files specified in the commit reference both a file and a folder.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class PutFileEntryConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to add or update the file.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch where you want to add or update the file. If this is an empty
    #               repository, this branch is created.</p>
    #   @return [String]
    # @!attribute file_content
    #   <p>The content of the file, in binary object format. </p>
    #   @return [String]
    # @!attribute file_path
    #   <p>The name of the file you want to add or update, including the relative path to the file in the repository.</p>
    #            <note>
    #               <p>If the path does not currently exist in the repository, the path is created as part of adding
    #                   the file.</p>
    #            </note>
    #   @return [String]
    # @!attribute file_mode
    #   <p>The file mode permissions of the blob. Valid file mode permissions are listed
    #               here.</p>
    #   @return [String]
    # @!attribute parent_commit_id
    #   <p>The full commit ID of the head commit in the branch where you want to add or update the file. If this is an empty repository, 
    #               no commit ID is required. If this is not an empty repository, a commit ID is required. </p>
    #            <p>The commit ID must match the ID of the head commit at the time of the operation.
    #               Otherwise, an error occurs, and the file is not added or updated.</p>
    #   @return [String]
    # @!attribute commit_message
    #   <p>A message about why this file was added or updated. Although it is optional, a message
    #               makes the commit history for your repository more useful.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the person adding or updating the file. Although it is optional, a name
    #               makes the commit history for your repository more useful.</p>
    #   @return [String]
    # @!attribute email
    #   <p>An email address for the person adding or updating the file.</p>
    #   @return [String]
    class PutFileInput < Struct.new(
      nil,
      :repository_name,
      :branch_name,
      :file_content,
      :file_path,
      :file_mode,
      :parent_commit_id,
      :commit_message,
      :name,
      :email,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute commit_id
    #   <p>The full SHA ID of the commit that contains this file change.</p>
    #   @return [String]
    # @!attribute blob_id
    #   <p>The ID of the blob, which is its SHA-1 pointer.</p>
    #   @return [String]
    # @!attribute tree_id
    #   <p>The full SHA-1 pointer of the tree information for the commit that contains this file change.</p>
    #   @return [String]
    class PutFileOutput < Struct.new(
      nil,
      :commit_id,
      :blob_id,
      :tree_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a put repository triggers operation.</p>
    # @!attribute repository_name
    #   <p>The name of the repository where you want to create or update the trigger.</p>
    #   @return [String]
    # @!attribute triggers
    #   <p>The JSON block of configuration information for each trigger.</p>
    #   @return [Array<Types::RepositoryTrigger>]
    class PutRepositoryTriggersInput < Struct.new(
      nil,
      :repository_name,
      :triggers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a put repository triggers operation.</p>
    # @!attribute configuration_id
    #   <p>The system-generated unique ID for the create or update operation.</p>
    #   @return [String]
    class PutRepositoryTriggersOutput < Struct.new(
      nil,
      :configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the reaction values provided by users on a comment.</p>
    # @!attribute reaction
    #   <p>The reaction for a specified comment.</p>
    #   @return [Types::ReactionValueFormats]
    # @!attribute reaction_users
    #   <p>The Amazon Resource Names (ARNs) of users who have provided reactions to the comment.</p>
    #   @return [Array<String>]
    # @!attribute reactions_from_deleted_users_count
    #   <p>A numerical count of users who reacted with the specified emoji whose identities have been subsequently deleted
    #               from IAM. While these IAM users or roles no longer exist, the reactions might still appear in total reaction counts.</p>
    #   @return [Integer]
    class ReactionForComment < Struct.new(
      nil,
      :reaction,
      :reaction_users,
      :reactions_from_deleted_users_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of reactions has been exceeded. Reactions are limited to one reaction per user for each individual comment ID.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ReactionLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the values for reactions to a comment. CodeCommit supports a limited set of reactions.</p>
    # @!attribute emoji
    #   <p>The Emoji Version 1.0 graphic of the reaction. These graphics are interpreted slightly differently on different operating systems.</p>
    #   @return [String]
    # @!attribute short_code
    #   <p>The emoji short code for the reaction. Short codes are interpreted slightly differently on different operating systems. </p>
    #   @return [String]
    # @!attribute unicode
    #   <p>The Unicode codepoint for the reaction.</p>
    #   @return [String]
    class ReactionValueFormats < Struct.new(
      nil,
      :emoji,
      :short_code,
      :unicode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reaction value is required. </p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ReactionValueRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified reference does not exist. You must provide a full commit ID.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ReferenceDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference name is required, but none was provided.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ReferenceNameRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified reference is not a supported type. </p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ReferenceTypeNotSupportedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a replacement content entry in the conflict of a merge or pull request operation.</p>
    # @!attribute file_path
    #   <p>The path of the conflicting file.</p>
    #   @return [String]
    # @!attribute replacement_type
    #   <p>The replacement type to use when determining how to resolve the conflict.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The base-64 encoded content to use when the replacement type is USE_NEW_CONTENT.</p>
    #   @return [String]
    # @!attribute file_mode
    #   <p>The file mode to apply during conflict resoltion.</p>
    #   @return [String]
    class ReplaceContentEntry < Struct.new(
      nil,
      :file_path,
      :replacement_type,
      :content,
      :file_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>USE_NEW_CONTENT was specified, but no replacement content has been provided.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ReplacementContentRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A replacement type is required.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ReplacementTypeRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified repository does not exist.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class RepositoryDoesNotExistException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A repository resource limit was exceeded.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class RepositoryLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a repository.</p>
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account associated with the repository.</p>
    #   @return [String]
    # @!attribute repository_id
    #   <p>The ID of the repository.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The repository's name.</p>
    #   @return [String]
    # @!attribute repository_description
    #   <p>A comment or description about the repository.</p>
    #   @return [String]
    # @!attribute default_branch
    #   <p>The repository's default branch name.</p>
    #   @return [String]
    # @!attribute last_modified_date
    #   <p>The date and time the repository was last modified, in timestamp format.</p>
    #   @return [Time]
    # @!attribute creation_date
    #   <p>The date and time the repository was created, in timestamp format.</p>
    #   @return [Time]
    # @!attribute clone_url_http
    #   <p>The URL to use for cloning the repository over HTTPS.</p>
    #   @return [String]
    # @!attribute clone_url_ssh
    #   <p>The URL to use for cloning the repository over SSH.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the repository.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID of the Key Management Service encryption key used to encrypt and decrypt the repository.</p>
    #   @return [String]
    class RepositoryMetadata < Struct.new(
      nil,
      :account_id,
      :repository_id,
      :repository_name,
      :repository_description,
      :default_branch,
      :last_modified_date,
      :creation_date,
      :clone_url_http,
      :clone_url_ssh,
      :arn,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified repository name already exists.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class RepositoryNameExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a repository name and ID.</p>
    # @!attribute repository_name
    #   <p>The name associated with the repository.</p>
    #   @return [String]
    # @!attribute repository_id
    #   <p>The ID associated with the repository.</p>
    #   @return [String]
    class RepositoryNameIdPair < Struct.new(
      nil,
      :repository_name,
      :repository_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A repository name is required, but was not specified.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class RepositoryNameRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>At least one repository name object is required, but was not specified.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class RepositoryNamesRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The repository does not contain any pull requests with that pull request ID. Use GetPullRequest to verify the correct repository name for the pull request ID.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class RepositoryNotAssociatedWithPullRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a trigger for a repository. </p>
    #          <note>
    #             <p>If you want to receive notifications about repository events, consider using notifications instead of 
    #             triggers.  For more information, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/how-to-repository-email.html">Configuring
    #             notifications for repository events</a>.</p>
    #          </note>
    # @!attribute name
    #   <p>The name of the trigger.</p>
    #   @return [String]
    # @!attribute destination_arn
    #   <p>The ARN of the resource that is the target for a trigger (for example, the ARN of a
    #               topic in Amazon SNS).</p>
    #   @return [String]
    # @!attribute custom_data
    #   <p>Any custom data associated with the trigger to be included in the information sent to
    #               the target of the trigger.</p>
    #   @return [String]
    # @!attribute branches
    #   <p>The branches to be included in the trigger configuration. If you specify an empty
    #               array, the trigger applies to all branches.</p>
    #            <note>
    #               <p>Although no content is required in the array, you must include the array itself.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute events
    #   <p>The repository events that cause the trigger to run actions in another service, such
    #               as sending a notification through Amazon SNS. 
    #               
    #           </p>
    #            <note>
    #               <p>The valid value "all" cannot be used with any other values.</p>
    #            </note>
    #   @return [Array<String>]
    class RepositoryTrigger < Struct.new(
      nil,
      :name,
      :destination_arn,
      :custom_data,
      :branches,
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>At least one branch name is required, but was not specified in the trigger
    #             configuration.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class RepositoryTriggerBranchNameListRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A destination ARN for the target service for the trigger is required, but was not
    #             specified.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class RepositoryTriggerDestinationArnRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>At least one event for the trigger is required, but was not specified.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class RepositoryTriggerEventsListRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A trigger failed to run.</p>
    # @!attribute trigger
    #   <p>The name of the trigger that did not run.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>Message information about the trigger that did not run.</p>
    #   @return [String]
    class RepositoryTriggerExecutionFailure < Struct.new(
      nil,
      :trigger,
      :failure_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A name for the trigger is required, but was not specified.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class RepositoryTriggerNameRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The list of triggers for the repository is required, but was not specified.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class RepositoryTriggersListRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A valid Amazon Resource Name (ARN) for an CodeCommit resource is required. For a list of valid resources in CodeCommit, see 
    #             <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats">CodeCommit Resources and Operations</a>
    #             in the CodeCommit User Guide.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class ResourceArnRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The commit cannot be created because one of the changes specifies copying or moving a .gitkeep file.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class RestrictedSourceFileException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A revision ID is required, but was not provided.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class RevisionIdRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The revision ID provided in the request does not match the current revision ID. Use GetPullRequest to retrieve the current revision ID.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class RevisionNotCurrentException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The file was not added or updated because the content of the file is exactly the same as the content of that file in the repository and branch
    #         that you specified.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class SameFileContentException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The commit cannot be created because one or more changes in this commit duplicate actions in the same file path. For example,
    #         you cannot make the same delete request to the same file in the same file path twice, or make a delete request and a move request to the same
    #         file as part of the same commit.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class SamePathRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the file mode changes.</p>
    # @!attribute file_path
    #   <p>The full path to the file, including the name of the file.</p>
    #   @return [String]
    # @!attribute file_mode
    #   <p>The file mode for the file.</p>
    #   @return [String]
    class SetFileModeEntry < Struct.new(
      nil,
      :file_path,
      :file_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source branch and destination branch for the pull request are the same. You must
    #             specify different branches for the source and destination.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class SourceAndDestinationAreSameException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The commit cannot be created because no source files or file content have been specified for the commit.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class SourceFileOrContentRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a source file that is part of changes made in a commit.</p>
    # @!attribute file_path
    #   <p>The full path to the file, including the name of the file.</p>
    #   @return [String]
    # @!attribute is_move
    #   <p>Whether to remove the source file from the parent commit.</p>
    #   @return [Boolean]
    class SourceFileSpecifier < Struct.new(
      nil,
      :file_path,
      :is_move,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_move] = false unless options.key?(:is_move)
        super
      end
    end

    # <p>Returns information about a submodule reference in a repository folder.</p>
    # @!attribute commit_id
    #   <p>The commit ID that contains the reference to the submodule.</p>
    #   @return [String]
    # @!attribute absolute_path
    #   <p>The fully qualified path to the folder that contains the reference to the submodule.</p>
    #   @return [String]
    # @!attribute relative_path
    #   <p>The relative path of the submodule from the folder where the query originated.</p>
    #   @return [String]
    class SubModule < Struct.new(
      nil,
      :commit_id,
      :absolute_path,
      :relative_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a symbolic link in a repository folder.</p>
    # @!attribute blob_id
    #   <p>The blob ID that contains the information about the symbolic link.</p>
    #   @return [String]
    # @!attribute absolute_path
    #   <p>The fully qualified path to the folder that contains the symbolic link.</p>
    #   @return [String]
    # @!attribute relative_path
    #   <p>The relative path of the symbolic link from the folder where the query originated.</p>
    #   @return [String]
    # @!attribute file_mode
    #   <p>The file mode permissions of the blob that cotains information about the symbolic link.</p>
    #   @return [String]
    class SymbolicLink < Struct.new(
      nil,
      :blob_id,
      :absolute_path,
      :relative_path,
      :file_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of tag keys is required. The list cannot be empty or null.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class TagKeysListRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tag policy is not valid.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class TagPolicyException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pair to use when tagging this repository.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A map of tags is required.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class TagsMapRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a target for a pull request.</p>
    # @!attribute repository_name
    #   <p>The name of the repository that contains the pull request.</p>
    #   @return [String]
    # @!attribute source_reference
    #   <p>The branch of the repository that contains the changes for the pull request. Also known as the source branch.</p>
    #   @return [String]
    # @!attribute destination_reference
    #   <p>The branch of the repository where the pull request changes are merged. Also known as
    #               the destination branch.</p>
    #   @return [String]
    class Target < Struct.new(
      nil,
      :repository_name,
      :source_reference,
      :destination_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A pull request target is required. It cannot be empty or null. A pull request target must contain the full values for the repository name, source branch, and destination branch for the pull request.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class TargetRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An array of target objects is required. It cannot be empty or null.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class TargetsRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a test repository triggers operation.</p>
    # @!attribute repository_name
    #   <p>The name of the repository in which to test the triggers.</p>
    #   @return [String]
    # @!attribute triggers
    #   <p>The list of triggers to test.</p>
    #   @return [Array<Types::RepositoryTrigger>]
    class TestRepositoryTriggersInput < Struct.new(
      nil,
      :repository_name,
      :triggers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a test repository triggers operation.</p>
    # @!attribute successful_executions
    #   <p>The list of triggers that were successfully tested. This list provides the names of the triggers that were successfully tested, separated by commas.</p>
    #   @return [Array<String>]
    # @!attribute failed_executions
    #   <p>The list of triggers that were not tested. This list provides the names of the
    #               triggers that could not be tested, separated by commas.</p>
    #   @return [Array<Types::RepositoryTriggerExecutionFailure>]
    class TestRepositoryTriggersOutput < Struct.new(
      nil,
      :successful_executions,
      :failed_executions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tip of the source branch in the destination repository does not match the tip of the source branch specified in your request. 
    #             The pull request might have been updated. Make sure that you have the latest changes.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class TipOfSourceReferenceIsDifferentException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The divergence between the tips of the provided commit specifiers is too great to determine whether there might be 
    #             any merge conflicts. Locally compare the specifiers using <code>git diff</code> or a diff tool.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class TipsDivergenceExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A pull request title is required. It cannot be empty or null.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class TitleRequiredException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of tags for an CodeCommit resource has been exceeded.</p>
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #   @return [String]
    class TooManyTagsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to remove tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag key for each tag that you want to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the approval rule template where you want to update the content of the rule. </p>
    #   @return [String]
    # @!attribute new_rule_content
    #   <p>The content that replaces the existing content of the rule. Content statements must be
    #               complete. You cannot provide only the changes.</p>
    #   @return [String]
    # @!attribute existing_rule_content_sha256
    #   <p>The SHA-256 hash signature for the content of the approval rule. You can retrieve this
    #               information by using
    #               <a>GetPullRequest</a>.</p>
    #   @return [String]
    class UpdateApprovalRuleTemplateContentInput < Struct.new(
      nil,
      :approval_rule_template_name,
      :new_rule_content,
      :existing_rule_content_sha256,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template
    #   <p>Returns information about an approval rule template.</p>
    #   @return [Types::ApprovalRuleTemplate]
    class UpdateApprovalRuleTemplateContentOutput < Struct.new(
      nil,
      :approval_rule_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the template for which you want to update the description.</p>
    #   @return [String]
    # @!attribute approval_rule_template_description
    #   <p>The updated description of the approval rule template.</p>
    #   @return [String]
    class UpdateApprovalRuleTemplateDescriptionInput < Struct.new(
      nil,
      :approval_rule_template_name,
      :approval_rule_template_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template
    #   <p>The structure and content of the updated approval rule template.</p>
    #   @return [Types::ApprovalRuleTemplate]
    class UpdateApprovalRuleTemplateDescriptionOutput < Struct.new(
      nil,
      :approval_rule_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute old_approval_rule_template_name
    #   <p>The current name of the approval rule template.</p>
    #   @return [String]
    # @!attribute new_approval_rule_template_name
    #   <p>The new name you want to apply to the approval rule template.</p>
    #   @return [String]
    class UpdateApprovalRuleTemplateNameInput < Struct.new(
      nil,
      :old_approval_rule_template_name,
      :new_approval_rule_template_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule_template
    #   <p>The structure and content of the updated approval rule template.</p>
    #   @return [Types::ApprovalRuleTemplate]
    class UpdateApprovalRuleTemplateNameOutput < Struct.new(
      nil,
      :approval_rule_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comment_id
    #   <p>The system-generated ID of the comment you want to update. To get this ID, use <a>GetCommentsForComparedCommit</a> 
    #               or <a>GetCommentsForPullRequest</a>.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The updated content to replace the existing content of the comment.</p>
    #   @return [String]
    class UpdateCommentInput < Struct.new(
      nil,
      :comment_id,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comment
    #   <p>Information about the updated comment.</p>
    #   @return [Types::Comment]
    class UpdateCommentOutput < Struct.new(
      nil,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of an update default branch operation.</p>
    # @!attribute repository_name
    #   <p>The name of the repository for which you want to set or change the default branch.</p>
    #   @return [String]
    # @!attribute default_branch_name
    #   <p>The name of the branch to set as the default branch.</p>
    #   @return [String]
    class UpdateDefaultBranchInput < Struct.new(
      nil,
      :repository_name,
      :default_branch_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request.</p>
    #   @return [String]
    # @!attribute approval_rule_name
    #   <p>The name of the approval rule you want to update.</p>
    #   @return [String]
    # @!attribute existing_rule_content_sha256
    #   <p>The SHA-256 hash signature for the content of the approval rule. You can retrieve this
    #               information by using
    #               <a>GetPullRequest</a>.</p>
    #   @return [String]
    # @!attribute new_rule_content
    #   <p>The updated content for the approval rule.</p>
    #            <note>
    #               <p>When you update the content of the approval rule, you can specify approvers in an
    #                   approval pool in one of two ways:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>CodeCommitApprovers</b>: This option only
    #                           requires an Amazon Web Services account and a resource. It can be used for both IAM users
    #                           and federated access users whose name matches the provided resource name.
    #                           This is a very powerful option that offers a great deal of flexibility. For
    #                           example, if you specify the Amazon Web Services account <i>123456789012</i>
    #                           and <i>Mary_Major</i>, all of the following are counted as
    #                           approvals coming from that user:</p>
    #                     <ul>
    #                        <li>
    #                           <p>An IAM user in the account
    #                                   (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p>
    #                        </li>
    #                        <li>
    #                           <p>A federated user identified in IAM as Mary_Major
    #                                   (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p>
    #                        </li>
    #                     </ul>
    #                     <p>This option does not recognize an active session of someone assuming the
    #                           role of CodeCommitReview with a role session name of
    #                               <i>Mary_Major</i>
    #                               (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>)
    #                           unless you include a wildcard (*Mary_Major).</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Fully qualified ARN</b>: This option allows
    #                           you to specify the fully qualified Amazon Resource Name (ARN) of the IAM
    #                           user or role. </p>
    #                  </li>
    #               </ul>
    #               <p>For more information about IAM ARNs, wildcards, and formats, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
    #                       Identifiers</a> in the <i>IAM User Guide</i>.</p>
    #            </note>
    #   @return [String]
    class UpdatePullRequestApprovalRuleContentInput < Struct.new(
      nil,
      :pull_request_id,
      :approval_rule_name,
      :existing_rule_content_sha256,
      :new_rule_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute approval_rule
    #   <p>Information about the updated approval rule.</p>
    #   @return [Types::ApprovalRule]
    class UpdatePullRequestApprovalRuleContentOutput < Struct.new(
      nil,
      :approval_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The system-generated ID of the revision.</p>
    #   @return [String]
    # @!attribute approval_state
    #   <p>The approval state to associate with the user on the pull request.</p>
    #   @return [String]
    class UpdatePullRequestApprovalStateInput < Struct.new(
      nil,
      :pull_request_id,
      :revision_id,
      :approval_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated content of the description for the pull request. This content replaces the
    #               existing description.</p>
    #   @return [String]
    class UpdatePullRequestDescriptionInput < Struct.new(
      nil,
      :pull_request_id,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request
    #   <p>Information about the updated pull request.</p>
    #   @return [Types::PullRequest]
    class UpdatePullRequestDescriptionOutput < Struct.new(
      nil,
      :pull_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #   @return [String]
    # @!attribute pull_request_status
    #   <p>The status of the pull request. The only valid operations are to update the status
    #               from <code>OPEN</code> to <code>OPEN</code>, <code>OPEN</code> to <code>CLOSED</code> or
    #               from <code>CLOSED</code> to <code>CLOSED</code>.</p>
    #   @return [String]
    class UpdatePullRequestStatusInput < Struct.new(
      nil,
      :pull_request_id,
      :pull_request_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request
    #   <p>Information about the pull request.</p>
    #   @return [Types::PullRequest]
    class UpdatePullRequestStatusOutput < Struct.new(
      nil,
      :pull_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The updated title of the pull request. This replaces the existing title.</p>
    #   @return [String]
    class UpdatePullRequestTitleInput < Struct.new(
      nil,
      :pull_request_id,
      :title,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pull_request
    #   <p>Information about the updated pull request.</p>
    #   @return [Types::PullRequest]
    class UpdatePullRequestTitleOutput < Struct.new(
      nil,
      :pull_request,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of an update repository description operation.</p>
    # @!attribute repository_name
    #   <p>The name of the repository to set or change the comment or description for.</p>
    #   @return [String]
    # @!attribute repository_description
    #   <p>The new comment or description for the specified repository. Repository descriptions are limited to 1,000 characters.</p>
    #   @return [String]
    class UpdateRepositoryDescriptionInput < Struct.new(
      nil,
      :repository_name,
      :repository_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository for which you want to update the KMS encryption key used to encrypt and decrypt the repository.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID of the encryption key. You can view the ID of an encryption key in the KMS console, or use the KMS APIs to
    #               programmatically retrieve a key ID. For more information about acceptable values for keyID, see 
    #               <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Decrypt.html#KMS-Decrypt-request-KeyId">KeyId</a> in the Decrypt API description in 
    #           the <i>Key Management Service API Reference</i>.</p>
    #   @return [String]
    class UpdateRepositoryEncryptionKeyInput < Struct.new(
      nil,
      :repository_name,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_id
    #   <p>The ID of the repository.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID of the encryption key.</p>
    #   @return [String]
    # @!attribute original_kms_key_id
    #   <p>The ID of the encryption key formerly used to encrypt and decrypt the repository.</p>
    #   @return [String]
    class UpdateRepositoryEncryptionKeyOutput < Struct.new(
      nil,
      :repository_id,
      :kms_key_id,
      :original_kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of an update repository description operation.</p>
    # @!attribute old_name
    #   <p>The current name of the repository.</p>
    #   @return [String]
    # @!attribute new_name
    #   <p>The new name for the repository.</p>
    #   @return [String]
    class UpdateRepositoryNameInput < Struct.new(
      nil,
      :old_name,
      :new_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the user who made a specified commit.</p>
    # @!attribute name
    #   <p>The name of the user who made the specified commit.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address associated with the user who made the commit, if any.</p>
    #   @return [String]
    # @!attribute date
    #   <p>The date when the specified commit was commited, in timestamp format with GMT offset.</p>
    #   @return [String]
    class UserInfo < Struct.new(
      nil,
      :name,
      :email,
      :date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
