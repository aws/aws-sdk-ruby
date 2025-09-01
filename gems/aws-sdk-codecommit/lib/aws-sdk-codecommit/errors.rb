# frozen_string_literal: true

# This is generated code!

module Aws::CodeCommit
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CodeCommit::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CodeCommit::Errors::ServiceError
  #       # rescues all API errors
  #     end
  #
  # ## Request Context
  #
  # ServiceError objects have a {Smithy::Client::ServiceError#context #context} method
  # that returns information about the request that generated the error.
  # See {Smithy::Client::HandlerContext} for more information.
  #
  # ## Error Classes
  #
  # * {ActorDoesNotExistException}
  # * {ApprovalRuleContentRequiredException}
  # * {ApprovalRuleDoesNotExistException}
  # * {ApprovalRuleNameAlreadyExistsException}
  # * {ApprovalRuleNameRequiredException}
  # * {ApprovalRuleTemplateContentRequiredException}
  # * {ApprovalRuleTemplateDoesNotExistException}
  # * {ApprovalRuleTemplateInUseException}
  # * {ApprovalRuleTemplateNameAlreadyExistsException}
  # * {ApprovalRuleTemplateNameRequiredException}
  # * {ApprovalStateRequiredException}
  # * {AuthorDoesNotExistException}
  # * {BeforeCommitIdAndAfterCommitIdAreSameException}
  # * {BlobIdDoesNotExistException}
  # * {BlobIdRequiredException}
  # * {BranchDoesNotExistException}
  # * {BranchNameExistsException}
  # * {BranchNameIsTagNameException}
  # * {BranchNameRequiredException}
  # * {CannotDeleteApprovalRuleFromTemplateException}
  # * {CannotModifyApprovalRuleFromTemplateException}
  # * {ClientRequestTokenRequiredException}
  # * {CommentContentRequiredException}
  # * {CommentContentSizeLimitExceededException}
  # * {CommentDeletedException}
  # * {CommentDoesNotExistException}
  # * {CommentIdRequiredException}
  # * {CommentNotCreatedByCallerException}
  # * {CommitDoesNotExistException}
  # * {CommitIdDoesNotExistException}
  # * {CommitIdRequiredException}
  # * {CommitIdsLimitExceededException}
  # * {CommitIdsListRequiredException}
  # * {CommitMessageLengthExceededException}
  # * {CommitRequiredException}
  # * {ConcurrentReferenceUpdateException}
  # * {DefaultBranchCannotBeDeletedException}
  # * {DirectoryNameConflictsWithFileNameException}
  # * {EncryptionIntegrityChecksFailedException}
  # * {EncryptionKeyAccessDeniedException}
  # * {EncryptionKeyDisabledException}
  # * {EncryptionKeyInvalidIdException}
  # * {EncryptionKeyInvalidUsageException}
  # * {EncryptionKeyNotFoundException}
  # * {EncryptionKeyRequiredException}
  # * {EncryptionKeyUnavailableException}
  # * {FileContentAndSourceFileSpecifiedException}
  # * {FileContentRequiredException}
  # * {FileContentSizeLimitExceededException}
  # * {FileDoesNotExistException}
  # * {FileEntryRequiredException}
  # * {FileModeRequiredException}
  # * {FileNameConflictsWithDirectoryNameException}
  # * {FilePathConflictsWithSubmodulePathException}
  # * {FileTooLargeException}
  # * {FolderContentSizeLimitExceededException}
  # * {FolderDoesNotExistException}
  # * {IdempotencyParameterMismatchException}
  # * {InvalidActorArnException}
  # * {InvalidApprovalRuleContentException}
  # * {InvalidApprovalRuleNameException}
  # * {InvalidApprovalRuleTemplateContentException}
  # * {InvalidApprovalRuleTemplateDescriptionException}
  # * {InvalidApprovalRuleTemplateNameException}
  # * {InvalidApprovalStateException}
  # * {InvalidAuthorArnException}
  # * {InvalidBlobIdException}
  # * {InvalidBranchNameException}
  # * {InvalidClientRequestTokenException}
  # * {InvalidCommentIdException}
  # * {InvalidCommitException}
  # * {InvalidCommitIdException}
  # * {InvalidConflictDetailLevelException}
  # * {InvalidConflictResolutionException}
  # * {InvalidConflictResolutionStrategyException}
  # * {InvalidContinuationTokenException}
  # * {InvalidDeletionParameterException}
  # * {InvalidDescriptionException}
  # * {InvalidDestinationCommitSpecifierException}
  # * {InvalidEmailException}
  # * {InvalidFileLocationException}
  # * {InvalidFileModeException}
  # * {InvalidFilePositionException}
  # * {InvalidMaxConflictFilesException}
  # * {InvalidMaxMergeHunksException}
  # * {InvalidMaxResultsException}
  # * {InvalidMergeOptionException}
  # * {InvalidOrderException}
  # * {InvalidOverrideStatusException}
  # * {InvalidParentCommitIdException}
  # * {InvalidPathException}
  # * {InvalidPullRequestEventTypeException}
  # * {InvalidPullRequestIdException}
  # * {InvalidPullRequestStatusException}
  # * {InvalidPullRequestStatusUpdateException}
  # * {InvalidReactionUserArnException}
  # * {InvalidReactionValueException}
  # * {InvalidReferenceNameException}
  # * {InvalidRelativeFileVersionEnumException}
  # * {InvalidReplacementContentException}
  # * {InvalidReplacementTypeException}
  # * {InvalidRepositoryDescriptionException}
  # * {InvalidRepositoryNameException}
  # * {InvalidRepositoryTriggerBranchNameException}
  # * {InvalidRepositoryTriggerCustomDataException}
  # * {InvalidRepositoryTriggerDestinationArnException}
  # * {InvalidRepositoryTriggerEventsException}
  # * {InvalidRepositoryTriggerNameException}
  # * {InvalidRepositoryTriggerRegionException}
  # * {InvalidResourceArnException}
  # * {InvalidRevisionIdException}
  # * {InvalidRuleContentSha256Exception}
  # * {InvalidSortByException}
  # * {InvalidSourceCommitSpecifierException}
  # * {InvalidSystemTagUsageException}
  # * {InvalidTagKeysListException}
  # * {InvalidTagsMapException}
  # * {InvalidTargetBranchException}
  # * {InvalidTargetException}
  # * {InvalidTargetsException}
  # * {InvalidTitleException}
  # * {ManualMergeRequiredException}
  # * {MaximumBranchesExceededException}
  # * {MaximumConflictResolutionEntriesExceededException}
  # * {MaximumFileContentToLoadExceededException}
  # * {MaximumFileEntriesExceededException}
  # * {MaximumItemsToCompareExceededException}
  # * {MaximumNumberOfApprovalsExceededException}
  # * {MaximumOpenPullRequestsExceededException}
  # * {MaximumRepositoryNamesExceededException}
  # * {MaximumRepositoryTriggersExceededException}
  # * {MaximumRuleTemplatesAssociatedWithRepositoryException}
  # * {MergeOptionRequiredException}
  # * {MultipleConflictResolutionEntriesException}
  # * {MultipleRepositoriesInPullRequestException}
  # * {NameLengthExceededException}
  # * {NoChangeException}
  # * {NumberOfRuleTemplatesExceededException}
  # * {NumberOfRulesExceededException}
  # * {OperationNotAllowedException}
  # * {OverrideAlreadySetException}
  # * {OverrideStatusRequiredException}
  # * {ParentCommitDoesNotExistException}
  # * {ParentCommitIdOutdatedException}
  # * {ParentCommitIdRequiredException}
  # * {PathDoesNotExistException}
  # * {PathRequiredException}
  # * {PullRequestAlreadyClosedException}
  # * {PullRequestApprovalRulesNotSatisfiedException}
  # * {PullRequestCannotBeApprovedByAuthorException}
  # * {PullRequestDoesNotExistException}
  # * {PullRequestIdRequiredException}
  # * {PullRequestStatusRequiredException}
  # * {PutFileEntryConflictException}
  # * {ReactionLimitExceededException}
  # * {ReactionValueRequiredException}
  # * {ReferenceDoesNotExistException}
  # * {ReferenceNameRequiredException}
  # * {ReferenceTypeNotSupportedException}
  # * {ReplacementContentRequiredException}
  # * {ReplacementTypeRequiredException}
  # * {RepositoryDoesNotExistException}
  # * {RepositoryLimitExceededException}
  # * {RepositoryNameExistsException}
  # * {RepositoryNameRequiredException}
  # * {RepositoryNamesRequiredException}
  # * {RepositoryNotAssociatedWithPullRequestException}
  # * {RepositoryTriggerBranchNameListRequiredException}
  # * {RepositoryTriggerDestinationArnRequiredException}
  # * {RepositoryTriggerEventsListRequiredException}
  # * {RepositoryTriggerNameRequiredException}
  # * {RepositoryTriggersListRequiredException}
  # * {ResourceArnRequiredException}
  # * {RestrictedSourceFileException}
  # * {RevisionIdRequiredException}
  # * {RevisionNotCurrentException}
  # * {SameFileContentException}
  # * {SamePathRequestException}
  # * {SourceAndDestinationAreSameException}
  # * {SourceFileOrContentRequiredException}
  # * {TagKeysListRequiredException}
  # * {TagPolicyException}
  # * {TagsMapRequiredException}
  # * {TargetRequiredException}
  # * {TargetsRequiredException}
  # * {TipOfSourceReferenceIsDifferentException}
  # * {TipsDivergenceExceededException}
  # * {TitleRequiredException}
  # * {TooManyTagsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The specified Amazon Resource Name (ARN) does not exist in the Amazon Web Services account.</p>
    class ActorDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ActorDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The content for the approval rule is empty. You must provide some content for an approval rule. The content cannot be null.</p>
    class ApprovalRuleContentRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ApprovalRuleContentRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified approval rule does not exist.</p>
    class ApprovalRuleDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ApprovalRuleDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>An approval rule with that name already exists. Approval rule names must be unique
    #             within the scope of a pull request.</p>
    class ApprovalRuleNameAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ApprovalRuleNameAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>An approval rule name is required, but was not specified.</p>
    class ApprovalRuleNameRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ApprovalRuleNameRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The content for the approval rule template is empty. You must provide some content for an approval rule template. The content cannot be null.</p>
    class ApprovalRuleTemplateContentRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ApprovalRuleTemplateContentRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified approval rule template does not exist. Verify that the name is correct and that you are signed in to the Amazon Web Services Region where the template
    #         was created, and then try again.</p>
    class ApprovalRuleTemplateDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ApprovalRuleTemplateDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The approval rule template is associated with one or more repositories. You cannot delete a template that is associated with a repository. Remove
    #         all associations, and then try again.</p>
    class ApprovalRuleTemplateInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ApprovalRuleTemplateInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>You cannot create an approval rule template with that name because a template with
    #             that name already exists in this Amazon Web Services Region for your Amazon Web Services account. Approval rule template
    #             names must be unique.</p>
    class ApprovalRuleTemplateNameAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ApprovalRuleTemplateNameAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>An approval rule template name is required, but was not specified.</p>
    class ApprovalRuleTemplateNameRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ApprovalRuleTemplateNameRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>An approval state is required, but was not specified.</p>
    class ApprovalStateRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ApprovalStateRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified Amazon Resource Name (ARN) does not exist in the Amazon Web Services account.</p>
    class AuthorDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::AuthorDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The before commit ID and the after commit ID are the same, which is not valid. The before commit ID and the after commit ID must be different commit IDs.</p>
    class BeforeCommitIdAndAfterCommitIdAreSameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::BeforeCommitIdAndAfterCommitIdAreSameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified blob does not exist.</p>
    class BlobIdDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::BlobIdDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A blob ID is required, but was not specified.</p>
    class BlobIdRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::BlobIdRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified branch does not exist.</p>
    class BranchDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::BranchDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Cannot create the branch with the specified name because the commit conflicts with an existing branch with the same name. 
    # 
    #             Branch names must be unique.</p>
    class BranchNameExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::BranchNameExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified branch name is not valid because it is a tag name. Enter the name of a
    #             branch in the repository. For a list of valid branch names, use <a>ListBranches</a>.</p>
    class BranchNameIsTagNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::BranchNameIsTagNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A branch name is required, but was not specified.</p>
    class BranchNameRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::BranchNameRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The approval rule cannot be deleted from the pull request because it was created by an
    #             approval rule template and applied to the pull request automatically.</p>
    class CannotDeleteApprovalRuleFromTemplateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::CannotDeleteApprovalRuleFromTemplateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The approval rule cannot be modified for the pull request because it was created by an
    #             approval rule template and applied to the pull request automatically.</p>
    class CannotModifyApprovalRuleFromTemplateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::CannotModifyApprovalRuleFromTemplateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A client request token is required. A client request token is an unique,
    #             client-generated idempotency token that, when provided in a request, ensures the request
    #             cannot be repeated with a changed parameter. If a request is received with the same
    #             parameters and a token is included, the request returns information about the initial
    #             request that used that token.</p>
    class ClientRequestTokenRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ClientRequestTokenRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The comment is empty. You must provide some content for a comment. The content cannot be null.</p>
    class CommentContentRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::CommentContentRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The comment is too large. Comments are limited to 10,240 characters.</p>
    class CommentContentSizeLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::CommentContentSizeLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>This comment has already been deleted. You cannot edit or delete a deleted comment.</p>
    class CommentDeletedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::CommentDeletedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>No comment exists with the provided ID. Verify that you have used the correct ID, and
    #             then try again.</p>
    class CommentDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::CommentDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The comment ID is missing or null. A comment ID is required.</p>
    class CommentIdRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::CommentIdRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>You cannot modify or delete this comment. Only comment authors can modify or delete their comments.</p>
    class CommentNotCreatedByCallerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::CommentNotCreatedByCallerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified commit does not exist or no commit was specified, and the specified repository has no default branch.</p>
    class CommitDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::CommitDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified commit ID does not exist.</p>
    class CommitIdDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::CommitIdDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A commit ID was not specified.</p>
    class CommitIdRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::CommitIdRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The maximum number of allowed commit IDs in a batch request is 100. Verify that your batch requests contains no more than 100 commit IDs, and then try again.</p>
    class CommitIdsLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::CommitIdsLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A list of commit IDs is required, but was either not specified or the list was empty.</p>
    class CommitIdsListRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::CommitIdsListRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The commit message is too long. Provide a shorter string. </p>
    class CommitMessageLengthExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::CommitMessageLengthExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A commit was not specified.</p>
    class CommitRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::CommitRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The merge cannot be completed because the target branch has been modified. Another user might have modified the target branch while the merge was in progress. Wait a few minutes, and then try again.</p>
    class ConcurrentReferenceUpdateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ConcurrentReferenceUpdateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified branch is the default branch for the repository, and cannot be deleted. To delete this branch, you must first set another branch as the default branch.</p>
    class DefaultBranchCannotBeDeletedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::DefaultBranchCannotBeDeletedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A file cannot be added to the repository because the specified path name has the same name as a file that already exists in this repository. 
    #         Either provide a different name for the file, or specify a different path for the file.</p>
    class DirectoryNameConflictsWithFileNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::DirectoryNameConflictsWithFileNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>An encryption integrity check failed.</p>
    class EncryptionIntegrityChecksFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::EncryptionIntegrityChecksFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>An encryption key could not be accessed.</p>
    class EncryptionKeyAccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::EncryptionKeyAccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The encryption key is disabled.</p>
    class EncryptionKeyDisabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::EncryptionKeyDisabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The Key Management Service encryption key is not valid.</p>
    class EncryptionKeyInvalidIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::EncryptionKeyInvalidIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A KMS encryption key was used to try and encrypt or decrypt a repository, but either the repository or the key was not
    #         in a valid state to support the operation.</p>
    class EncryptionKeyInvalidUsageException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::EncryptionKeyInvalidUsageException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>No encryption key was found.</p>
    class EncryptionKeyNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::EncryptionKeyNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A KMS encryption key ID is required but was not specified.</p>
    class EncryptionKeyRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::EncryptionKeyRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The encryption key is not available.</p>
    class EncryptionKeyUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::EncryptionKeyUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The commit cannot be created because both a source file and file content have been
    #             specified for the same file. You cannot provide both. Either specify a source file or
    #             provide the file content directly.</p>
    class FileContentAndSourceFileSpecifiedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::FileContentAndSourceFileSpecifiedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The file cannot be added because it is empty. Empty files cannot be added to the repository with this API.</p>
    class FileContentRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::FileContentRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The file cannot be added because it is too large. The maximum file size is 6 MB, and
    #             the combined file content change size is 7 MB. Consider making these changes using a Git
    #             client.</p>
    class FileContentSizeLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::FileContentSizeLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified file does not exist. Verify that you have used the correct file name,
    #             full path, and extension.</p>
    class FileDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::FileDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The commit cannot be created because no files have been specified as added, updated, or changed (PutFile or DeleteFile) for the commit.</p>
    class FileEntryRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::FileEntryRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The commit cannot be created because no file mode has been specified. A file mode is
    #             required to update mode permissions for a file.</p>
    class FileModeRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::FileModeRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A file cannot be added to the repository because the specified file name has the same name as a directory in this repository. Either provide
    #         another name for the file, or add the file in a directory that does not match the file name.</p>
    class FileNameConflictsWithDirectoryNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::FileNameConflictsWithDirectoryNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The commit cannot be created because a specified file path points to a submodule. Verify that the destination files
    #         have valid file paths that do not point to a submodule.</p>
    class FilePathConflictsWithSubmodulePathException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::FilePathConflictsWithSubmodulePathException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified file exceeds the file size limit for CodeCommit. For more information about limits in CodeCommit, see
    #             <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Quotas</a> in the <i>CodeCommit User Guide</i>.</p>
    class FileTooLargeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::FileTooLargeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The commit cannot be created because at least one of the overall changes in the commit results in a 
    #             folder whose contents exceed the limit of 6 MB. Either reduce the number and size of your changes,
    #         or split the changes across multiple folders.</p>
    class FolderContentSizeLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::FolderContentSizeLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified folder does not exist. Either the folder name is not correct, or you did
    #             not enter the full path to the folder.</p>
    class FolderDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::FolderDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The client request token is not valid. Either the token is not in a valid format, or
    #             the token has been used in a previous request and cannot be reused.</p>
    class IdempotencyParameterMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::IdempotencyParameterMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The Amazon Resource Name (ARN) is not valid. Make sure that you have provided the full ARN for the user who initiated the change for the pull request,
    #             and then try again.</p>
    class InvalidActorArnException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidActorArnException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The content for the approval rule is not valid.</p>
    class InvalidApprovalRuleContentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidApprovalRuleContentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The name for the approval rule is not valid.</p>
    class InvalidApprovalRuleNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidApprovalRuleNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The content of the approval rule template is not valid.</p>
    class InvalidApprovalRuleTemplateContentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidApprovalRuleTemplateContentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The description for the approval rule template is not valid because it exceeds the
    #             maximum characters allowed for a description. For more information about limits in CodeCommit, 
    #             see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Quotas</a> in the <i>CodeCommit User Guide</i>.</p>
    class InvalidApprovalRuleTemplateDescriptionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidApprovalRuleTemplateDescriptionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The name of the approval rule template is not valid. Template names must be between 1
    #             and 100 valid characters in length. For more information about limits in CodeCommit,
    #             see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Quotas</a> in the <i>CodeCommit User Guide</i>.</p>
    class InvalidApprovalRuleTemplateNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidApprovalRuleTemplateNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The state for the approval is not valid. Valid values include APPROVE and REVOKE. </p>
    class InvalidApprovalStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidApprovalStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The Amazon Resource Name (ARN) is not valid. Make sure that you have provided the full ARN for the author of the pull request, and then try again.</p>
    class InvalidAuthorArnException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidAuthorArnException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified blob is not valid.</p>
    class InvalidBlobIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidBlobIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified reference name is not valid.</p>
    class InvalidBranchNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidBranchNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The client request token is not valid.</p>
    class InvalidClientRequestTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidClientRequestTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The comment ID is not in a valid format. Make sure that you have provided the full comment ID.</p>
    class InvalidCommentIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidCommentIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified commit is not valid.</p>
    class InvalidCommitException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidCommitException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified commit ID is not valid.</p>
    class InvalidCommitIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidCommitIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified conflict detail level is not valid.</p>
    class InvalidConflictDetailLevelException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidConflictDetailLevelException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified conflict resolution list is not valid.</p>
    class InvalidConflictResolutionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidConflictResolutionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified conflict resolution strategy is not valid.</p>
    class InvalidConflictResolutionStrategyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidConflictResolutionStrategyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified continuation token is not valid.</p>
    class InvalidContinuationTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidContinuationTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified deletion parameter is not valid.</p>
    class InvalidDeletionParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidDeletionParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The pull request description is not valid. Descriptions cannot be more than 1,000
    #             characters.</p>
    class InvalidDescriptionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidDescriptionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The destination commit specifier is not valid. You must provide a valid branch name, tag, or full commit ID. </p>
    class InvalidDestinationCommitSpecifierException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidDestinationCommitSpecifierException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified email address either contains one or more characters that are not allowed, or it exceeds the maximum number of characters
    #         allowed for an email address.</p>
    class InvalidEmailException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidEmailException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The location of the file is not valid. Make sure that you include the file name and
    #             extension.</p>
    class InvalidFileLocationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidFileLocationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified file mode permission is not valid. For a list of valid file mode permissions, see <a>PutFile</a>. </p>
    class InvalidFileModeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidFileModeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The position is not valid. Make sure that the line number exists in the version of the file you want to comment on.</p>
    class InvalidFilePositionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidFilePositionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified value for the number of conflict files to return is not valid.</p>
    class InvalidMaxConflictFilesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidMaxConflictFilesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified value for the number of merge hunks to return is not valid.</p>
    class InvalidMaxMergeHunksException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidMaxMergeHunksException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified number of maximum results is not valid.</p>
    class InvalidMaxResultsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidMaxResultsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified merge option is not valid for this operation. Not all merge strategies are supported for all operations.</p>
    class InvalidMergeOptionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidMergeOptionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified sort order is not valid.</p>
    class InvalidOrderException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidOrderException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The override status is not valid. Valid statuses are OVERRIDE and REVOKE.</p>
    class InvalidOverrideStatusException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidOverrideStatusException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The parent commit ID is not valid. The commit ID cannot be empty, and must match the head commit ID for the branch of the repository where you 
    #         want to add or update a file.</p>
    class InvalidParentCommitIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidParentCommitIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified path is not valid.</p>
    class InvalidPathException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidPathException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The pull request event type is not valid. </p>
    class InvalidPullRequestEventTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidPullRequestEventTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The pull request ID is not valid. Make sure that you have provided the full ID and that the pull request is in the specified repository, and then try again.</p>
    class InvalidPullRequestIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidPullRequestIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The pull request status is not valid. The only valid values are <code>OPEN</code> and <code>CLOSED</code>.</p>
    class InvalidPullRequestStatusException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidPullRequestStatusException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The pull request status update is not valid. The only valid update is from <code>OPEN</code> to <code>CLOSED</code>.</p>
    class InvalidPullRequestStatusUpdateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidPullRequestStatusUpdateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The Amazon Resource Name (ARN) of the user or identity is not valid.</p>
    class InvalidReactionUserArnException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidReactionUserArnException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The value of the reaction is not valid. For more information, see the <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html">CodeCommit User Guide</a>.</p>
    class InvalidReactionValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidReactionValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified reference name format is not valid. Reference names must conform to the
    #             Git references format (for example, refs/heads/main). For more information, see <a href="https://git-scm.com/book/en/v2/Git-Internals-Git-References">Git Internals -
    #                 Git References</a> or consult your Git documentation.</p>
    class InvalidReferenceNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidReferenceNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Either the enum is not in a valid format, or the specified file version enum is not valid in respect to the current file version.</p>
    class InvalidRelativeFileVersionEnumException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidRelativeFileVersionEnumException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Automerge was specified for resolving the conflict, but the replacement type is not valid or content is missing. </p>
    class InvalidReplacementContentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidReplacementContentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>Automerge was specified for resolving the conflict, but the specified replacement type is not valid.</p>
    class InvalidReplacementTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidReplacementTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified repository description is not valid.</p>
    class InvalidRepositoryDescriptionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidRepositoryDescriptionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A specified repository name is not valid.</p>
    #          <note>
    #             <p>This exception occurs only when a specified repository name is not valid. Other
    #                 exceptions occur when a required repository parameter is missing, or when a
    #                 specified repository does not exist.</p>
    #          </note>
    class InvalidRepositoryNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidRepositoryNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>One or more branch names specified for the trigger is not valid.</p>
    class InvalidRepositoryTriggerBranchNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidRepositoryTriggerBranchNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The custom data provided for the trigger is not valid.</p>
    class InvalidRepositoryTriggerCustomDataException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidRepositoryTriggerCustomDataException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The Amazon Resource Name (ARN) for the trigger is not valid for the specified destination. The most common reason for this error is that the ARN does not meet the requirements for the service type.</p>
    class InvalidRepositoryTriggerDestinationArnException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidRepositoryTriggerDestinationArnException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>One or more events specified for the trigger is not valid. Check to make sure that all events specified match the requirements for allowed events.</p>
    class InvalidRepositoryTriggerEventsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidRepositoryTriggerEventsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The name of the trigger is not valid.</p>
    class InvalidRepositoryTriggerNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidRepositoryTriggerNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The Amazon Web Services Region for the trigger target does not match the Amazon Web Services Region for the
    #             repository. Triggers must be created in the same Amazon Web Services Region as the target for the
    #             trigger.</p>
    class InvalidRepositoryTriggerRegionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidRepositoryTriggerRegionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The value for the resource ARN is not valid. For more information about resources in CodeCommit, see 
    #             <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats">CodeCommit Resources and Operations</a>
    #             in the CodeCommit User Guide.</p>
    class InvalidResourceArnException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidResourceArnException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The revision ID is not valid. Use GetPullRequest to determine the value.</p>
    class InvalidRevisionIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidRevisionIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The SHA-256 hash signature for the rule content is not valid.</p>
    class InvalidRuleContentSha256Exception < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidRuleContentSha256Exception] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified sort by value is not valid.</p>
    class InvalidSortByException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidSortByException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The source commit specifier is not valid. You must provide a valid branch name, tag, or full commit ID.</p>
    class InvalidSourceCommitSpecifierException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidSourceCommitSpecifierException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified tag is not valid. Key names cannot be prefixed with aws:.</p>
    class InvalidSystemTagUsageException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidSystemTagUsageException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The list of tags is not valid.</p>
    class InvalidTagKeysListException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidTagKeysListException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The map of tags is not valid.</p>
    class InvalidTagsMapException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidTagsMapException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified target branch is not valid.</p>
    class InvalidTargetBranchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidTargetBranchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The target for the pull request is not valid. A target must contain the full values for the repository name, source branch, and destination branch for the pull request.</p>
    class InvalidTargetException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidTargetException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The targets for the pull request is not valid or not in a valid format. Targets are a list of target objects. Each target object must contain the full values for 
    #             the repository name, source branch, and destination branch for a pull request.</p>
    class InvalidTargetsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidTargetsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The title of the pull request is not valid. Pull request titles cannot exceed 100 characters in length.</p>
    class InvalidTitleException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::InvalidTitleException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The pull request cannot be merged automatically into the destination branch. You must manually merge the branches and resolve any conflicts.</p>
    class ManualMergeRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ManualMergeRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The number of branches for the trigger was exceeded.</p>
    class MaximumBranchesExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::MaximumBranchesExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The number of allowed conflict resolution entries was exceeded.</p>
    class MaximumConflictResolutionEntriesExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::MaximumConflictResolutionEntriesExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The number of files to load exceeds the allowed limit.</p>
    class MaximumFileContentToLoadExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::MaximumFileContentToLoadExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The number of specified files to change as part of this commit exceeds the maximum number of files 
    #         that can be changed in a single commit. Consider using a Git client for these changes.</p>
    class MaximumFileEntriesExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::MaximumFileEntriesExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The number of items to compare between the source or destination branches and the merge base has exceeded the maximum allowed.</p>
    class MaximumItemsToCompareExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::MaximumItemsToCompareExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The number of approvals required for the approval rule exceeds the maximum number allowed.</p>
    class MaximumNumberOfApprovalsExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::MaximumNumberOfApprovalsExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>You cannot create the pull request because the repository has too many open pull requests. 
    #             The maximum number of open pull requests for a repository is 1,000. Close one or more open pull requests, and then try again.</p>
    class MaximumOpenPullRequestsExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::MaximumOpenPullRequestsExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The maximum number of allowed repository names was exceeded. Currently, this number is 100.</p>
    class MaximumRepositoryNamesExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::MaximumRepositoryNamesExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The number of triggers allowed for the repository was exceeded.</p>
    class MaximumRepositoryTriggersExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::MaximumRepositoryTriggersExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The maximum number of approval rule templates for a repository has been exceeded. You cannot associate more than 25 
    #         approval rule templates with a repository.</p>
    class MaximumRuleTemplatesAssociatedWithRepositoryException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::MaximumRuleTemplatesAssociatedWithRepositoryException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A merge option or stategy is required, and none was provided.</p>
    class MergeOptionRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::MergeOptionRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>More than one conflict resolution entries exists for the conflict. A conflict can have only one conflict resolution entry.</p>
    class MultipleConflictResolutionEntriesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::MultipleConflictResolutionEntriesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>You cannot include more than one repository in a pull request. Make sure you have specified only one repository name in your request, and then try again.</p>
    class MultipleRepositoriesInPullRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::MultipleRepositoriesInPullRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The user name is not valid because it has exceeded the character limit for author names. </p>
    class NameLengthExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::NameLengthExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The commit cannot be created because no changes will be made to the repository as a result of this commit. A commit must contain at least one change.</p>
    class NoChangeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::NoChangeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The maximum number of approval rule templates has been exceeded for this Amazon Web Services Region. </p>
    class NumberOfRuleTemplatesExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::NumberOfRuleTemplatesExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The approval rule cannot be added. The pull request has the maximum number of approval rules associated with it.</p>
    class NumberOfRulesExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::NumberOfRulesExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The requested action is not allowed.</p>
    class OperationNotAllowedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::OperationNotAllowedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The pull request has already had its approval rules set to override.</p>
    class OverrideAlreadySetException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::OverrideAlreadySetException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>An override status is required, but no value was provided. Valid values include OVERRIDE and REVOKE.</p>
    class OverrideStatusRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::OverrideStatusRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The parent commit ID is not valid because it does not exist. The specified parent commit ID does not exist in the specified branch of the repository.</p>
    class ParentCommitDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ParentCommitDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The file could not be added because the provided parent commit ID is not the current tip of the specified branch. To view the full commit ID of the current head
    #         of the branch, use <a>GetBranch</a>.</p>
    class ParentCommitIdOutdatedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ParentCommitIdOutdatedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A parent commit ID is required. To view the full commit ID of a branch in a repository, use <a>GetBranch</a> or a Git command 
    #         (for example, git pull or git log).</p>
    class ParentCommitIdRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ParentCommitIdRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified path does not exist.</p>
    class PathDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::PathDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The folderPath for a location cannot be null.</p>
    class PathRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::PathRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The pull request status cannot be updated because it is already closed.</p>
    class PullRequestAlreadyClosedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::PullRequestAlreadyClosedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The pull request cannot be merged because one or more approval rules applied to the pull request have conditions that have not been met.</p>
    class PullRequestApprovalRulesNotSatisfiedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::PullRequestApprovalRulesNotSatisfiedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The approval cannot be applied because the user approving the pull request matches the user who created the pull request. You cannot approve a pull 
    #         request that you created.</p>
    class PullRequestCannotBeApprovedByAuthorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::PullRequestCannotBeApprovedByAuthorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The pull request ID could not be found. Make sure that you have specified the correct repository name and pull request ID, and then try again.</p>
    class PullRequestDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::PullRequestDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A pull request ID is required, but none was provided.</p>
    class PullRequestIdRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::PullRequestIdRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A pull request status is required, but none was provided.</p>
    class PullRequestStatusRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::PullRequestStatusRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The commit cannot be created because one or more files specified in the commit reference both a file and a folder.</p>
    class PutFileEntryConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::PutFileEntryConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The number of reactions has been exceeded. Reactions are limited to one reaction per user for each individual comment ID.</p>
    class ReactionLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ReactionLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A reaction value is required. </p>
    class ReactionValueRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ReactionValueRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified reference does not exist. You must provide a full commit ID.</p>
    class ReferenceDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ReferenceDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A reference name is required, but none was provided.</p>
    class ReferenceNameRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ReferenceNameRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified reference is not a supported type. </p>
    class ReferenceTypeNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ReferenceTypeNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>USE_NEW_CONTENT was specified, but no replacement content has been provided.</p>
    class ReplacementContentRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ReplacementContentRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A replacement type is required.</p>
    class ReplacementTypeRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ReplacementTypeRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified repository does not exist.</p>
    class RepositoryDoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::RepositoryDoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A repository resource limit was exceeded.</p>
    class RepositoryLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::RepositoryLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified repository name already exists.</p>
    class RepositoryNameExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::RepositoryNameExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A repository name is required, but was not specified.</p>
    class RepositoryNameRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::RepositoryNameRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>At least one repository name object is required, but was not specified.</p>
    class RepositoryNamesRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::RepositoryNamesRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The repository does not contain any pull requests with that pull request ID. Use GetPullRequest to verify the correct repository name for the pull request ID.</p>
    class RepositoryNotAssociatedWithPullRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::RepositoryNotAssociatedWithPullRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>At least one branch name is required, but was not specified in the trigger
    #             configuration.</p>
    class RepositoryTriggerBranchNameListRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::RepositoryTriggerBranchNameListRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A destination ARN for the target service for the trigger is required, but was not
    #             specified.</p>
    class RepositoryTriggerDestinationArnRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::RepositoryTriggerDestinationArnRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>At least one event for the trigger is required, but was not specified.</p>
    class RepositoryTriggerEventsListRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::RepositoryTriggerEventsListRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A name for the trigger is required, but was not specified.</p>
    class RepositoryTriggerNameRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::RepositoryTriggerNameRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The list of triggers for the repository is required, but was not specified.</p>
    class RepositoryTriggersListRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::RepositoryTriggersListRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A valid Amazon Resource Name (ARN) for an CodeCommit resource is required. For a list of valid resources in CodeCommit, see 
    #             <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats">CodeCommit Resources and Operations</a>
    #             in the CodeCommit User Guide.</p>
    class ResourceArnRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::ResourceArnRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The commit cannot be created because one of the changes specifies copying or moving a .gitkeep file.</p>
    class RestrictedSourceFileException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::RestrictedSourceFileException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A revision ID is required, but was not provided.</p>
    class RevisionIdRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::RevisionIdRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The revision ID provided in the request does not match the current revision ID. Use GetPullRequest to retrieve the current revision ID.</p>
    class RevisionNotCurrentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::RevisionNotCurrentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The file was not added or updated because the content of the file is exactly the same as the content of that file in the repository and branch
    #         that you specified.</p>
    class SameFileContentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::SameFileContentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The commit cannot be created because one or more changes in this commit duplicate actions in the same file path. For example,
    #         you cannot make the same delete request to the same file in the same file path twice, or make a delete request and a move request to the same
    #         file as part of the same commit.</p>
    class SamePathRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::SamePathRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The source branch and destination branch for the pull request are the same. You must
    #             specify different branches for the source and destination.</p>
    class SourceAndDestinationAreSameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::SourceAndDestinationAreSameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The commit cannot be created because no source files or file content have been specified for the commit.</p>
    class SourceFileOrContentRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::SourceFileOrContentRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A list of tag keys is required. The list cannot be empty or null.</p>
    class TagKeysListRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::TagKeysListRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The tag policy is not valid.</p>
    class TagPolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::TagPolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A map of tags is required.</p>
    class TagsMapRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::TagsMapRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A pull request target is required. It cannot be empty or null. A pull request target must contain the full values for the repository name, source branch, and destination branch for the pull request.</p>
    class TargetRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::TargetRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>An array of target objects is required. It cannot be empty or null.</p>
    class TargetsRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::TargetsRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The tip of the source branch in the destination repository does not match the tip of the source branch specified in your request. 
    #             The pull request might have been updated. Make sure that you have the latest changes.</p>
    class TipOfSourceReferenceIsDifferentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::TipOfSourceReferenceIsDifferentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The divergence between the tips of the provided commit specifiers is too great to determine whether there might be 
    #             any merge conflicts. Locally compare the specifiers using <code>git diff</code> or a diff tool.</p>
    class TipsDivergenceExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::TipsDivergenceExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>A pull request title is required. It cannot be empty or null.</p>
    class TitleRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::TitleRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end

    # <p>The maximum number of tags for an CodeCommit resource has been exceeded.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CodeCommit::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Any message associated with the exception.</p>
      def message
        @data[:message]
      end
    end
  end
end
