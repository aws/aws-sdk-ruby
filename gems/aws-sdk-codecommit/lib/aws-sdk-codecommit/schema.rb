# frozen_string_literal: true

# This is generated code!

module Aws::CodeCommit
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#AccountId", name: "AccountId")
    ActorDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ActorDoesNotExistException", name: "ActorDoesNotExistException", traits: {"smithy.api#error" => "client"})
    AdditionalData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#AdditionalData", name: "AdditionalData")
    Approval = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#Approval", name: "Approval")
    ApprovalList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#ApprovalList", name: "ApprovalList")
    ApprovalRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ApprovalRule", name: "ApprovalRule")
    ApprovalRuleContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ApprovalRuleContent", name: "ApprovalRuleContent", traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}})
    ApprovalRuleContentRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ApprovalRuleContentRequiredException", name: "ApprovalRuleContentRequiredException", traits: {"smithy.api#error" => "client"})
    ApprovalRuleDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ApprovalRuleDoesNotExistException", name: "ApprovalRuleDoesNotExistException", traits: {"smithy.api#error" => "client"})
    ApprovalRuleEventMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ApprovalRuleEventMetadata", name: "ApprovalRuleEventMetadata")
    ApprovalRuleId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ApprovalRuleId", name: "ApprovalRuleId")
    ApprovalRuleName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ApprovalRuleName", name: "ApprovalRuleName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ApprovalRuleNameAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ApprovalRuleNameAlreadyExistsException", name: "ApprovalRuleNameAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    ApprovalRuleNameRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ApprovalRuleNameRequiredException", name: "ApprovalRuleNameRequiredException", traits: {"smithy.api#error" => "client"})
    ApprovalRuleOverriddenEventMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ApprovalRuleOverriddenEventMetadata", name: "ApprovalRuleOverriddenEventMetadata")
    ApprovalRuleTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ApprovalRuleTemplate", name: "ApprovalRuleTemplate")
    ApprovalRuleTemplateContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ApprovalRuleTemplateContent", name: "ApprovalRuleTemplateContent", traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}})
    ApprovalRuleTemplateContentRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ApprovalRuleTemplateContentRequiredException", name: "ApprovalRuleTemplateContentRequiredException", traits: {"smithy.api#error" => "client"})
    ApprovalRuleTemplateDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ApprovalRuleTemplateDescription", name: "ApprovalRuleTemplateDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    ApprovalRuleTemplateDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ApprovalRuleTemplateDoesNotExistException", name: "ApprovalRuleTemplateDoesNotExistException", traits: {"smithy.api#error" => "client"})
    ApprovalRuleTemplateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ApprovalRuleTemplateId", name: "ApprovalRuleTemplateId")
    ApprovalRuleTemplateInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ApprovalRuleTemplateInUseException", name: "ApprovalRuleTemplateInUseException", traits: {"smithy.api#error" => "client"})
    ApprovalRuleTemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ApprovalRuleTemplateName", name: "ApprovalRuleTemplateName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ApprovalRuleTemplateNameAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ApprovalRuleTemplateNameAlreadyExistsException", name: "ApprovalRuleTemplateNameAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    ApprovalRuleTemplateNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#ApprovalRuleTemplateNameList", name: "ApprovalRuleTemplateNameList")
    ApprovalRuleTemplateNameRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ApprovalRuleTemplateNameRequiredException", name: "ApprovalRuleTemplateNameRequiredException", traits: {"smithy.api#error" => "client"})
    ApprovalRulesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#ApprovalRulesList", name: "ApprovalRulesList")
    ApprovalRulesNotSatisfiedList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#ApprovalRulesNotSatisfiedList", name: "ApprovalRulesNotSatisfiedList")
    ApprovalRulesSatisfiedList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#ApprovalRulesSatisfiedList", name: "ApprovalRulesSatisfiedList")
    ApprovalState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#ApprovalState", name: "ApprovalState")
    ApprovalStateChangedEventMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ApprovalStateChangedEventMetadata", name: "ApprovalStateChangedEventMetadata")
    ApprovalStateRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ApprovalStateRequiredException", name: "ApprovalStateRequiredException", traits: {"smithy.api#error" => "client"})
    Approved = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codecommit#Approved", name: "Approved", traits: {"smithy.api#default" => false})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#Arn", name: "Arn")
    AssociateApprovalRuleTemplateWithRepositoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#AssociateApprovalRuleTemplateWithRepositoryInput", name: "AssociateApprovalRuleTemplateWithRepositoryInput")
    AuthorDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#AuthorDoesNotExistException", name: "AuthorDoesNotExistException", traits: {"smithy.api#error" => "client"})
    BatchAssociateApprovalRuleTemplateWithRepositoriesError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BatchAssociateApprovalRuleTemplateWithRepositoriesError", name: "BatchAssociateApprovalRuleTemplateWithRepositoriesError")
    BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList", name: "BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList")
    BatchAssociateApprovalRuleTemplateWithRepositoriesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BatchAssociateApprovalRuleTemplateWithRepositoriesInput", name: "BatchAssociateApprovalRuleTemplateWithRepositoriesInput")
    BatchAssociateApprovalRuleTemplateWithRepositoriesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BatchAssociateApprovalRuleTemplateWithRepositoriesOutput", name: "BatchAssociateApprovalRuleTemplateWithRepositoriesOutput")
    BatchDescribeMergeConflictsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BatchDescribeMergeConflictsError", name: "BatchDescribeMergeConflictsError")
    BatchDescribeMergeConflictsErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#BatchDescribeMergeConflictsErrors", name: "BatchDescribeMergeConflictsErrors")
    BatchDescribeMergeConflictsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BatchDescribeMergeConflictsInput", name: "BatchDescribeMergeConflictsInput")
    BatchDescribeMergeConflictsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BatchDescribeMergeConflictsOutput", name: "BatchDescribeMergeConflictsOutput")
    BatchDisassociateApprovalRuleTemplateFromRepositoriesError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BatchDisassociateApprovalRuleTemplateFromRepositoriesError", name: "BatchDisassociateApprovalRuleTemplateFromRepositoriesError")
    BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList", name: "BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList")
    BatchDisassociateApprovalRuleTemplateFromRepositoriesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BatchDisassociateApprovalRuleTemplateFromRepositoriesInput", name: "BatchDisassociateApprovalRuleTemplateFromRepositoriesInput")
    BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput", name: "BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput")
    BatchGetCommitsError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BatchGetCommitsError", name: "BatchGetCommitsError")
    BatchGetCommitsErrorsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#BatchGetCommitsErrorsList", name: "BatchGetCommitsErrorsList")
    BatchGetCommitsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BatchGetCommitsInput", name: "BatchGetCommitsInput")
    BatchGetCommitsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BatchGetCommitsOutput", name: "BatchGetCommitsOutput")
    BatchGetRepositoriesError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BatchGetRepositoriesError", name: "BatchGetRepositoriesError")
    BatchGetRepositoriesErrorCodeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#BatchGetRepositoriesErrorCodeEnum", name: "BatchGetRepositoriesErrorCodeEnum")
    BatchGetRepositoriesErrorsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#BatchGetRepositoriesErrorsList", name: "BatchGetRepositoriesErrorsList")
    BatchGetRepositoriesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BatchGetRepositoriesInput", name: "BatchGetRepositoriesInput")
    BatchGetRepositoriesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BatchGetRepositoriesOutput", name: "BatchGetRepositoriesOutput")
    BeforeCommitIdAndAfterCommitIdAreSameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BeforeCommitIdAndAfterCommitIdAreSameException", name: "BeforeCommitIdAndAfterCommitIdAreSameException", traits: {"smithy.api#error" => "client"})
    BlobIdDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BlobIdDoesNotExistException", name: "BlobIdDoesNotExistException", traits: {"smithy.api#error" => "client"})
    BlobIdRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BlobIdRequiredException", name: "BlobIdRequiredException", traits: {"smithy.api#error" => "client"})
    BlobMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BlobMetadata", name: "BlobMetadata")
    BranchDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BranchDoesNotExistException", name: "BranchDoesNotExistException", traits: {"smithy.api#error" => "client"})
    BranchInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BranchInfo", name: "BranchInfo")
    BranchName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#BranchName", name: "BranchName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    BranchNameExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BranchNameExistsException", name: "BranchNameExistsException", traits: {"smithy.api#error" => "client"})
    BranchNameIsTagNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BranchNameIsTagNameException", name: "BranchNameIsTagNameException", traits: {"smithy.api#error" => "client"})
    BranchNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#BranchNameList", name: "BranchNameList")
    BranchNameRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#BranchNameRequiredException", name: "BranchNameRequiredException", traits: {"smithy.api#error" => "client"})
    CallerReactions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#CallerReactions", name: "CallerReactions")
    CannotDeleteApprovalRuleFromTemplateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CannotDeleteApprovalRuleFromTemplateException", name: "CannotDeleteApprovalRuleFromTemplateException", traits: {"smithy.api#error" => "client"})
    CannotModifyApprovalRuleFromTemplateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CannotModifyApprovalRuleFromTemplateException", name: "CannotModifyApprovalRuleFromTemplateException", traits: {"smithy.api#error" => "client"})
    CapitalBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codecommit#CapitalBoolean", name: "CapitalBoolean")
    ChangeTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#ChangeTypeEnum", name: "ChangeTypeEnum")
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ClientRequestToken", name: "ClientRequestToken")
    ClientRequestTokenRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ClientRequestTokenRequiredException", name: "ClientRequestTokenRequiredException", traits: {"smithy.api#error" => "client"})
    CloneUrlHttp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#CloneUrlHttp", name: "CloneUrlHttp")
    CloneUrlSsh = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#CloneUrlSsh", name: "CloneUrlSsh")
    Comment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#Comment", name: "Comment")
    CommentContentRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CommentContentRequiredException", name: "CommentContentRequiredException", traits: {"smithy.api#error" => "client"})
    CommentContentSizeLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CommentContentSizeLimitExceededException", name: "CommentContentSizeLimitExceededException", traits: {"smithy.api#error" => "client"})
    CommentDeletedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CommentDeletedException", name: "CommentDeletedException", traits: {"smithy.api#error" => "client"})
    CommentDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CommentDoesNotExistException", name: "CommentDoesNotExistException", traits: {"smithy.api#error" => "client"})
    CommentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#CommentId", name: "CommentId")
    CommentIdRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CommentIdRequiredException", name: "CommentIdRequiredException", traits: {"smithy.api#error" => "client"})
    CommentNotCreatedByCallerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CommentNotCreatedByCallerException", name: "CommentNotCreatedByCallerException", traits: {"smithy.api#error" => "client"})
    Comments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#Comments", name: "Comments")
    CommentsForComparedCommit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CommentsForComparedCommit", name: "CommentsForComparedCommit")
    CommentsForComparedCommitData = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#CommentsForComparedCommitData", name: "CommentsForComparedCommitData")
    CommentsForPullRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CommentsForPullRequest", name: "CommentsForPullRequest")
    CommentsForPullRequestData = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#CommentsForPullRequestData", name: "CommentsForPullRequestData")
    Commit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#Commit", name: "Commit")
    CommitDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CommitDoesNotExistException", name: "CommitDoesNotExistException", traits: {"smithy.api#error" => "client"})
    CommitId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#CommitId", name: "CommitId")
    CommitIdDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CommitIdDoesNotExistException", name: "CommitIdDoesNotExistException", traits: {"smithy.api#error" => "client"})
    CommitIdRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CommitIdRequiredException", name: "CommitIdRequiredException", traits: {"smithy.api#error" => "client"})
    CommitIdsInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#CommitIdsInputList", name: "CommitIdsInputList")
    CommitIdsLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CommitIdsLimitExceededException", name: "CommitIdsLimitExceededException", traits: {"smithy.api#error" => "client"})
    CommitIdsListRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CommitIdsListRequiredException", name: "CommitIdsListRequiredException", traits: {"smithy.api#error" => "client"})
    CommitMessageLengthExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CommitMessageLengthExceededException", name: "CommitMessageLengthExceededException", traits: {"smithy.api#error" => "client"})
    CommitName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#CommitName", name: "CommitName")
    CommitObjectsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#CommitObjectsList", name: "CommitObjectsList")
    CommitRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CommitRequiredException", name: "CommitRequiredException", traits: {"smithy.api#error" => "client"})
    ConcurrentReferenceUpdateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ConcurrentReferenceUpdateException", name: "ConcurrentReferenceUpdateException", traits: {"smithy.api#error" => "client"})
    Conflict = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#Conflict", name: "Conflict")
    ConflictDetailLevelTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#ConflictDetailLevelTypeEnum", name: "ConflictDetailLevelTypeEnum")
    ConflictMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ConflictMetadata", name: "ConflictMetadata")
    ConflictMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#ConflictMetadataList", name: "ConflictMetadataList")
    ConflictResolution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ConflictResolution", name: "ConflictResolution")
    ConflictResolutionStrategyTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#ConflictResolutionStrategyTypeEnum", name: "ConflictResolutionStrategyTypeEnum")
    Conflicts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#Conflicts", name: "Conflicts")
    Content = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#Content", name: "Content")
    Count = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codecommit#Count", name: "Count")
    CreateApprovalRuleTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CreateApprovalRuleTemplateInput", name: "CreateApprovalRuleTemplateInput")
    CreateApprovalRuleTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CreateApprovalRuleTemplateOutput", name: "CreateApprovalRuleTemplateOutput")
    CreateBranchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CreateBranchInput", name: "CreateBranchInput")
    CreateCommitInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CreateCommitInput", name: "CreateCommitInput")
    CreateCommitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CreateCommitOutput", name: "CreateCommitOutput")
    CreatePullRequestApprovalRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CreatePullRequestApprovalRuleInput", name: "CreatePullRequestApprovalRuleInput")
    CreatePullRequestApprovalRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CreatePullRequestApprovalRuleOutput", name: "CreatePullRequestApprovalRuleOutput")
    CreatePullRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CreatePullRequestInput", name: "CreatePullRequestInput")
    CreatePullRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CreatePullRequestOutput", name: "CreatePullRequestOutput")
    CreateRepositoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CreateRepositoryInput", name: "CreateRepositoryInput")
    CreateRepositoryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CreateRepositoryOutput", name: "CreateRepositoryOutput")
    CreateUnreferencedMergeCommitInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CreateUnreferencedMergeCommitInput", name: "CreateUnreferencedMergeCommitInput")
    CreateUnreferencedMergeCommitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#CreateUnreferencedMergeCommitOutput", name: "CreateUnreferencedMergeCommitOutput")
    CreationDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codecommit#CreationDate", name: "CreationDate")
    Date = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#Date", name: "Date")
    DefaultBranchCannotBeDeletedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DefaultBranchCannotBeDeletedException", name: "DefaultBranchCannotBeDeletedException", traits: {"smithy.api#error" => "client"})
    DeleteApprovalRuleTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DeleteApprovalRuleTemplateInput", name: "DeleteApprovalRuleTemplateInput")
    DeleteApprovalRuleTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DeleteApprovalRuleTemplateOutput", name: "DeleteApprovalRuleTemplateOutput")
    DeleteBranchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DeleteBranchInput", name: "DeleteBranchInput")
    DeleteBranchOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DeleteBranchOutput", name: "DeleteBranchOutput")
    DeleteCommentContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DeleteCommentContentInput", name: "DeleteCommentContentInput")
    DeleteCommentContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DeleteCommentContentOutput", name: "DeleteCommentContentOutput")
    DeleteFileEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#DeleteFileEntries", name: "DeleteFileEntries")
    DeleteFileEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DeleteFileEntry", name: "DeleteFileEntry")
    DeleteFileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DeleteFileInput", name: "DeleteFileInput")
    DeleteFileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DeleteFileOutput", name: "DeleteFileOutput")
    DeletePullRequestApprovalRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DeletePullRequestApprovalRuleInput", name: "DeletePullRequestApprovalRuleInput")
    DeletePullRequestApprovalRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DeletePullRequestApprovalRuleOutput", name: "DeletePullRequestApprovalRuleOutput")
    DeleteRepositoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DeleteRepositoryInput", name: "DeleteRepositoryInput")
    DeleteRepositoryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DeleteRepositoryOutput", name: "DeleteRepositoryOutput")
    DescribeMergeConflictsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DescribeMergeConflictsInput", name: "DescribeMergeConflictsInput")
    DescribeMergeConflictsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DescribeMergeConflictsOutput", name: "DescribeMergeConflictsOutput")
    DescribePullRequestEventsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DescribePullRequestEventsInput", name: "DescribePullRequestEventsInput")
    DescribePullRequestEventsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DescribePullRequestEventsOutput", name: "DescribePullRequestEventsOutput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}})
    DiffChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DiffChange", name: "DiffChange")
    DiffChangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#DiffChangeList", name: "DiffChangeList", traits: {"smithy.api#length" => {"min" => 0, "max" => 25000}})
    DiffChangeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#DiffChangeType", name: "DiffChangeType")
    DiffContext = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codecommit#DiffContext", name: "DiffContext")
    DiffHunk = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DiffHunk", name: "DiffHunk")
    DiffHunkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#DiffHunkList", name: "DiffHunkList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    Difference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#Difference", name: "Difference")
    DifferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#DifferenceList", name: "DifferenceList")
    DirectoryNameConflictsWithFileNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DirectoryNameConflictsWithFileNameException", name: "DirectoryNameConflictsWithFileNameException", traits: {"smithy.api#error" => "client"})
    DisassociateApprovalRuleTemplateFromRepositoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#DisassociateApprovalRuleTemplateFromRepositoryInput", name: "DisassociateApprovalRuleTemplateFromRepositoryInput")
    Email = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#Email", name: "Email")
    EncryptionIntegrityChecksFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#EncryptionIntegrityChecksFailedException", name: "EncryptionIntegrityChecksFailedException", traits: {"smithy.api#error" => "server"})
    EncryptionKeyAccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#EncryptionKeyAccessDeniedException", name: "EncryptionKeyAccessDeniedException", traits: {"smithy.api#error" => "client"})
    EncryptionKeyDisabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#EncryptionKeyDisabledException", name: "EncryptionKeyDisabledException", traits: {"smithy.api#error" => "client"})
    EncryptionKeyInvalidIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#EncryptionKeyInvalidIdException", name: "EncryptionKeyInvalidIdException", traits: {"smithy.api#error" => "client"})
    EncryptionKeyInvalidUsageException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#EncryptionKeyInvalidUsageException", name: "EncryptionKeyInvalidUsageException", traits: {"smithy.api#error" => "client"})
    EncryptionKeyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#EncryptionKeyNotFoundException", name: "EncryptionKeyNotFoundException", traits: {"smithy.api#error" => "client"})
    EncryptionKeyRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#EncryptionKeyRequiredException", name: "EncryptionKeyRequiredException", traits: {"smithy.api#error" => "client"})
    EncryptionKeyUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#EncryptionKeyUnavailableException", name: "EncryptionKeyUnavailableException", traits: {"smithy.api#error" => "client"})
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ErrorMessage", name: "ErrorMessage")
    EvaluatePullRequestApprovalRulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#EvaluatePullRequestApprovalRulesInput", name: "EvaluatePullRequestApprovalRulesInput")
    EvaluatePullRequestApprovalRulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#EvaluatePullRequestApprovalRulesOutput", name: "EvaluatePullRequestApprovalRulesOutput")
    Evaluation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#Evaluation", name: "Evaluation")
    EventDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codecommit#EventDate", name: "EventDate")
    ExceptionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ExceptionName", name: "ExceptionName")
    File = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#File", name: "File")
    FileContent = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.codecommit#FileContent", name: "FileContent", traits: {"smithy.api#length" => {"min" => 0, "max" => 6291456}})
    FileContentAndSourceFileSpecifiedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#FileContentAndSourceFileSpecifiedException", name: "FileContentAndSourceFileSpecifiedException", traits: {"smithy.api#error" => "client"})
    FileContentRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#FileContentRequiredException", name: "FileContentRequiredException", traits: {"smithy.api#error" => "client"})
    FileContentSizeLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#FileContentSizeLimitExceededException", name: "FileContentSizeLimitExceededException", traits: {"smithy.api#error" => "client"})
    FileDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#FileDoesNotExistException", name: "FileDoesNotExistException", traits: {"smithy.api#error" => "client"})
    FileEntryRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#FileEntryRequiredException", name: "FileEntryRequiredException", traits: {"smithy.api#error" => "client"})
    FileList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#FileList", name: "FileList")
    FileMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#FileMetadata", name: "FileMetadata")
    FileModeRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#FileModeRequiredException", name: "FileModeRequiredException", traits: {"smithy.api#error" => "client"})
    FileModeTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#FileModeTypeEnum", name: "FileModeTypeEnum")
    FileModes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#FileModes", name: "FileModes")
    FileNameConflictsWithDirectoryNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#FileNameConflictsWithDirectoryNameException", name: "FileNameConflictsWithDirectoryNameException", traits: {"smithy.api#error" => "client"})
    FilePathConflictsWithSubmodulePathException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#FilePathConflictsWithSubmodulePathException", name: "FilePathConflictsWithSubmodulePathException", traits: {"smithy.api#error" => "client"})
    FilePaths = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#FilePaths", name: "FilePaths")
    FileSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codecommit#FileSize", name: "FileSize", traits: {"smithy.api#default" => 0})
    FileSizes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#FileSizes", name: "FileSizes")
    FileTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#FileTooLargeException", name: "FileTooLargeException", traits: {"smithy.api#error" => "client"})
    FileVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#FileVersion", name: "FileVersion")
    FilesMetadata = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#FilesMetadata", name: "FilesMetadata")
    Folder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#Folder", name: "Folder")
    FolderContentSizeLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#FolderContentSizeLimitExceededException", name: "FolderContentSizeLimitExceededException", traits: {"smithy.api#error" => "client"})
    FolderDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#FolderDoesNotExistException", name: "FolderDoesNotExistException", traits: {"smithy.api#error" => "client"})
    FolderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#FolderList", name: "FolderList")
    GetApprovalRuleTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetApprovalRuleTemplateInput", name: "GetApprovalRuleTemplateInput")
    GetApprovalRuleTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetApprovalRuleTemplateOutput", name: "GetApprovalRuleTemplateOutput")
    GetBlobDifferencesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetBlobDifferencesInput", name: "GetBlobDifferencesInput")
    GetBlobDifferencesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetBlobDifferencesOutput", name: "GetBlobDifferencesOutput")
    GetBlobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetBlobInput", name: "GetBlobInput")
    GetBlobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetBlobOutput", name: "GetBlobOutput")
    GetBranchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetBranchInput", name: "GetBranchInput")
    GetBranchOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetBranchOutput", name: "GetBranchOutput")
    GetCommentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetCommentInput", name: "GetCommentInput")
    GetCommentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetCommentOutput", name: "GetCommentOutput")
    GetCommentReactionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetCommentReactionsInput", name: "GetCommentReactionsInput")
    GetCommentReactionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetCommentReactionsOutput", name: "GetCommentReactionsOutput")
    GetCommentsForComparedCommitInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetCommentsForComparedCommitInput", name: "GetCommentsForComparedCommitInput")
    GetCommentsForComparedCommitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetCommentsForComparedCommitOutput", name: "GetCommentsForComparedCommitOutput")
    GetCommentsForPullRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetCommentsForPullRequestInput", name: "GetCommentsForPullRequestInput")
    GetCommentsForPullRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetCommentsForPullRequestOutput", name: "GetCommentsForPullRequestOutput")
    GetCommitInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetCommitInput", name: "GetCommitInput")
    GetCommitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetCommitOutput", name: "GetCommitOutput")
    GetDifferencesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetDifferencesInput", name: "GetDifferencesInput")
    GetDifferencesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetDifferencesOutput", name: "GetDifferencesOutput")
    GetFileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetFileInput", name: "GetFileInput")
    GetFileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetFileOutput", name: "GetFileOutput")
    GetFolderInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetFolderInput", name: "GetFolderInput")
    GetFolderOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetFolderOutput", name: "GetFolderOutput")
    GetMergeCommitInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetMergeCommitInput", name: "GetMergeCommitInput")
    GetMergeCommitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetMergeCommitOutput", name: "GetMergeCommitOutput")
    GetMergeConflictsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetMergeConflictsInput", name: "GetMergeConflictsInput")
    GetMergeConflictsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetMergeConflictsOutput", name: "GetMergeConflictsOutput")
    GetMergeOptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetMergeOptionsInput", name: "GetMergeOptionsInput")
    GetMergeOptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetMergeOptionsOutput", name: "GetMergeOptionsOutput")
    GetPullRequestApprovalStatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetPullRequestApprovalStatesInput", name: "GetPullRequestApprovalStatesInput")
    GetPullRequestApprovalStatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetPullRequestApprovalStatesOutput", name: "GetPullRequestApprovalStatesOutput")
    GetPullRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetPullRequestInput", name: "GetPullRequestInput")
    GetPullRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetPullRequestOutput", name: "GetPullRequestOutput")
    GetPullRequestOverrideStateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetPullRequestOverrideStateInput", name: "GetPullRequestOverrideStateInput")
    GetPullRequestOverrideStateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetPullRequestOverrideStateOutput", name: "GetPullRequestOverrideStateOutput")
    GetRepositoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetRepositoryInput", name: "GetRepositoryInput")
    GetRepositoryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetRepositoryOutput", name: "GetRepositoryOutput")
    GetRepositoryTriggersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetRepositoryTriggersInput", name: "GetRepositoryTriggersInput")
    GetRepositoryTriggersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#GetRepositoryTriggersOutput", name: "GetRepositoryTriggersOutput")
    HunkContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#HunkContent", name: "HunkContent")
    IdempotencyParameterMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#IdempotencyParameterMismatchException", name: "IdempotencyParameterMismatchException", traits: {"smithy.api#error" => "client"})
    IgnoreWhiteSpaces = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codecommit#IgnoreWhiteSpaces", name: "IgnoreWhiteSpaces")
    InvalidActorArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidActorArnException", name: "InvalidActorArnException", traits: {"smithy.api#error" => "client"})
    InvalidApprovalRuleContentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidApprovalRuleContentException", name: "InvalidApprovalRuleContentException", traits: {"smithy.api#error" => "client"})
    InvalidApprovalRuleNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidApprovalRuleNameException", name: "InvalidApprovalRuleNameException", traits: {"smithy.api#error" => "client"})
    InvalidApprovalRuleTemplateContentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidApprovalRuleTemplateContentException", name: "InvalidApprovalRuleTemplateContentException", traits: {"smithy.api#error" => "client"})
    InvalidApprovalRuleTemplateDescriptionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidApprovalRuleTemplateDescriptionException", name: "InvalidApprovalRuleTemplateDescriptionException", traits: {"smithy.api#error" => "client"})
    InvalidApprovalRuleTemplateNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidApprovalRuleTemplateNameException", name: "InvalidApprovalRuleTemplateNameException", traits: {"smithy.api#error" => "client"})
    InvalidApprovalStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidApprovalStateException", name: "InvalidApprovalStateException", traits: {"smithy.api#error" => "client"})
    InvalidAuthorArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidAuthorArnException", name: "InvalidAuthorArnException", traits: {"smithy.api#error" => "client"})
    InvalidBlobIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidBlobIdException", name: "InvalidBlobIdException", traits: {"smithy.api#error" => "client"})
    InvalidBranchNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidBranchNameException", name: "InvalidBranchNameException", traits: {"smithy.api#error" => "client"})
    InvalidClientRequestTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidClientRequestTokenException", name: "InvalidClientRequestTokenException", traits: {"smithy.api#error" => "client"})
    InvalidCommentIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidCommentIdException", name: "InvalidCommentIdException", traits: {"smithy.api#error" => "client"})
    InvalidCommitException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidCommitException", name: "InvalidCommitException", traits: {"smithy.api#error" => "client"})
    InvalidCommitIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidCommitIdException", name: "InvalidCommitIdException", traits: {"smithy.api#error" => "client"})
    InvalidConflictDetailLevelException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidConflictDetailLevelException", name: "InvalidConflictDetailLevelException", traits: {"smithy.api#error" => "client"})
    InvalidConflictResolutionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidConflictResolutionException", name: "InvalidConflictResolutionException", traits: {"smithy.api#error" => "client"})
    InvalidConflictResolutionStrategyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidConflictResolutionStrategyException", name: "InvalidConflictResolutionStrategyException", traits: {"smithy.api#error" => "client"})
    InvalidContinuationTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidContinuationTokenException", name: "InvalidContinuationTokenException", traits: {"smithy.api#error" => "client"})
    InvalidDeletionParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidDeletionParameterException", name: "InvalidDeletionParameterException", traits: {"smithy.api#error" => "client"})
    InvalidDescriptionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidDescriptionException", name: "InvalidDescriptionException", traits: {"smithy.api#error" => "client"})
    InvalidDestinationCommitSpecifierException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidDestinationCommitSpecifierException", name: "InvalidDestinationCommitSpecifierException", traits: {"smithy.api#error" => "client"})
    InvalidEmailException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidEmailException", name: "InvalidEmailException", traits: {"smithy.api#error" => "client"})
    InvalidFileLocationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidFileLocationException", name: "InvalidFileLocationException", traits: {"smithy.api#error" => "client"})
    InvalidFileModeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidFileModeException", name: "InvalidFileModeException", traits: {"smithy.api#error" => "client"})
    InvalidFilePositionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidFilePositionException", name: "InvalidFilePositionException", traits: {"smithy.api#error" => "client"})
    InvalidMaxConflictFilesException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidMaxConflictFilesException", name: "InvalidMaxConflictFilesException", traits: {"smithy.api#error" => "client"})
    InvalidMaxMergeHunksException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidMaxMergeHunksException", name: "InvalidMaxMergeHunksException", traits: {"smithy.api#error" => "client"})
    InvalidMaxResultsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidMaxResultsException", name: "InvalidMaxResultsException", traits: {"smithy.api#error" => "client"})
    InvalidMergeOptionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidMergeOptionException", name: "InvalidMergeOptionException", traits: {"smithy.api#error" => "client"})
    InvalidOrderException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidOrderException", name: "InvalidOrderException", traits: {"smithy.api#error" => "client"})
    InvalidOverrideStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidOverrideStatusException", name: "InvalidOverrideStatusException", traits: {"smithy.api#error" => "client"})
    InvalidParentCommitIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidParentCommitIdException", name: "InvalidParentCommitIdException", traits: {"smithy.api#error" => "client"})
    InvalidPathException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidPathException", name: "InvalidPathException", traits: {"smithy.api#error" => "client"})
    InvalidPullRequestEventTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidPullRequestEventTypeException", name: "InvalidPullRequestEventTypeException", traits: {"smithy.api#error" => "client"})
    InvalidPullRequestIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidPullRequestIdException", name: "InvalidPullRequestIdException", traits: {"smithy.api#error" => "client"})
    InvalidPullRequestStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidPullRequestStatusException", name: "InvalidPullRequestStatusException", traits: {"smithy.api#error" => "client"})
    InvalidPullRequestStatusUpdateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidPullRequestStatusUpdateException", name: "InvalidPullRequestStatusUpdateException", traits: {"smithy.api#error" => "client"})
    InvalidReactionUserArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidReactionUserArnException", name: "InvalidReactionUserArnException", traits: {"smithy.api#error" => "client"})
    InvalidReactionValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidReactionValueException", name: "InvalidReactionValueException", traits: {"smithy.api#error" => "client"})
    InvalidReferenceNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidReferenceNameException", name: "InvalidReferenceNameException", traits: {"smithy.api#error" => "client"})
    InvalidRelativeFileVersionEnumException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidRelativeFileVersionEnumException", name: "InvalidRelativeFileVersionEnumException", traits: {"smithy.api#error" => "client"})
    InvalidReplacementContentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidReplacementContentException", name: "InvalidReplacementContentException", traits: {"smithy.api#error" => "client"})
    InvalidReplacementTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidReplacementTypeException", name: "InvalidReplacementTypeException", traits: {"smithy.api#error" => "client"})
    InvalidRepositoryDescriptionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidRepositoryDescriptionException", name: "InvalidRepositoryDescriptionException", traits: {"smithy.api#error" => "client"})
    InvalidRepositoryNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidRepositoryNameException", name: "InvalidRepositoryNameException", traits: {"smithy.api#error" => "client"})
    InvalidRepositoryTriggerBranchNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidRepositoryTriggerBranchNameException", name: "InvalidRepositoryTriggerBranchNameException", traits: {"smithy.api#error" => "client"})
    InvalidRepositoryTriggerCustomDataException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidRepositoryTriggerCustomDataException", name: "InvalidRepositoryTriggerCustomDataException", traits: {"smithy.api#error" => "client"})
    InvalidRepositoryTriggerDestinationArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidRepositoryTriggerDestinationArnException", name: "InvalidRepositoryTriggerDestinationArnException", traits: {"smithy.api#error" => "client"})
    InvalidRepositoryTriggerEventsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidRepositoryTriggerEventsException", name: "InvalidRepositoryTriggerEventsException", traits: {"smithy.api#error" => "client"})
    InvalidRepositoryTriggerNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidRepositoryTriggerNameException", name: "InvalidRepositoryTriggerNameException", traits: {"smithy.api#error" => "client"})
    InvalidRepositoryTriggerRegionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidRepositoryTriggerRegionException", name: "InvalidRepositoryTriggerRegionException", traits: {"smithy.api#error" => "client"})
    InvalidResourceArnException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidResourceArnException", name: "InvalidResourceArnException", traits: {"smithy.api#error" => "client"})
    InvalidRevisionIdException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidRevisionIdException", name: "InvalidRevisionIdException", traits: {"smithy.api#error" => "client"})
    InvalidRuleContentSha256Exception = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidRuleContentSha256Exception", name: "InvalidRuleContentSha256Exception", traits: {"smithy.api#error" => "client"})
    InvalidSortByException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidSortByException", name: "InvalidSortByException", traits: {"smithy.api#error" => "client"})
    InvalidSourceCommitSpecifierException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidSourceCommitSpecifierException", name: "InvalidSourceCommitSpecifierException", traits: {"smithy.api#error" => "client"})
    InvalidSystemTagUsageException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidSystemTagUsageException", name: "InvalidSystemTagUsageException", traits: {"smithy.api#error" => "client"})
    InvalidTagKeysListException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidTagKeysListException", name: "InvalidTagKeysListException", traits: {"smithy.api#error" => "client"})
    InvalidTagsMapException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidTagsMapException", name: "InvalidTagsMapException", traits: {"smithy.api#error" => "client"})
    InvalidTargetBranchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidTargetBranchException", name: "InvalidTargetBranchException", traits: {"smithy.api#error" => "client"})
    InvalidTargetException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidTargetException", name: "InvalidTargetException", traits: {"smithy.api#error" => "client"})
    InvalidTargetsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidTargetsException", name: "InvalidTargetsException", traits: {"smithy.api#error" => "client"})
    InvalidTitleException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#InvalidTitleException", name: "InvalidTitleException", traits: {"smithy.api#error" => "client"})
    IsBinaryFile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#IsBinaryFile", name: "IsBinaryFile")
    IsCommentDeleted = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codecommit#IsCommentDeleted", name: "IsCommentDeleted", traits: {"smithy.api#default" => false})
    IsContentConflict = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codecommit#IsContentConflict", name: "IsContentConflict", traits: {"smithy.api#default" => false})
    IsFileModeConflict = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codecommit#IsFileModeConflict", name: "IsFileModeConflict", traits: {"smithy.api#default" => false})
    IsHunkConflict = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codecommit#IsHunkConflict", name: "IsHunkConflict", traits: {"smithy.api#default" => false})
    IsMergeable = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codecommit#IsMergeable", name: "IsMergeable", traits: {"smithy.api#default" => false})
    IsMerged = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codecommit#IsMerged", name: "IsMerged", traits: {"smithy.api#default" => false})
    IsMove = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codecommit#IsMove", name: "IsMove", traits: {"smithy.api#default" => false})
    IsObjectTypeConflict = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codecommit#IsObjectTypeConflict", name: "IsObjectTypeConflict", traits: {"smithy.api#default" => false})
    KeepEmptyFolders = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codecommit#KeepEmptyFolders", name: "KeepEmptyFolders", traits: {"smithy.api#default" => false})
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#KmsKeyId", name: "KmsKeyId", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9:/_-]+$"})
    LastModifiedDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codecommit#LastModifiedDate", name: "LastModifiedDate")
    Limit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codecommit#Limit", name: "Limit")
    LineContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#LineContent", name: "LineContent")
    LineNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codecommit#LineNumber", name: "LineNumber")
    ListApprovalRuleTemplatesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ListApprovalRuleTemplatesInput", name: "ListApprovalRuleTemplatesInput")
    ListApprovalRuleTemplatesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ListApprovalRuleTemplatesOutput", name: "ListApprovalRuleTemplatesOutput")
    ListAssociatedApprovalRuleTemplatesForRepositoryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ListAssociatedApprovalRuleTemplatesForRepositoryInput", name: "ListAssociatedApprovalRuleTemplatesForRepositoryInput")
    ListAssociatedApprovalRuleTemplatesForRepositoryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ListAssociatedApprovalRuleTemplatesForRepositoryOutput", name: "ListAssociatedApprovalRuleTemplatesForRepositoryOutput")
    ListBranchesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ListBranchesInput", name: "ListBranchesInput")
    ListBranchesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ListBranchesOutput", name: "ListBranchesOutput")
    ListFileCommitHistoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ListFileCommitHistoryRequest", name: "ListFileCommitHistoryRequest")
    ListFileCommitHistoryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ListFileCommitHistoryResponse", name: "ListFileCommitHistoryResponse")
    ListPullRequestsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ListPullRequestsInput", name: "ListPullRequestsInput")
    ListPullRequestsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ListPullRequestsOutput", name: "ListPullRequestsOutput")
    ListRepositoriesForApprovalRuleTemplateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ListRepositoriesForApprovalRuleTemplateInput", name: "ListRepositoriesForApprovalRuleTemplateInput")
    ListRepositoriesForApprovalRuleTemplateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ListRepositoriesForApprovalRuleTemplateOutput", name: "ListRepositoriesForApprovalRuleTemplateOutput")
    ListRepositoriesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ListRepositoriesInput", name: "ListRepositoriesInput")
    ListRepositoriesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ListRepositoriesOutput", name: "ListRepositoriesOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#Location", name: "Location")
    ManualMergeRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ManualMergeRequiredException", name: "ManualMergeRequiredException", traits: {"smithy.api#error" => "client"})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codecommit#MaxResults", name: "MaxResults")
    MaximumBranchesExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MaximumBranchesExceededException", name: "MaximumBranchesExceededException", traits: {"smithy.api#error" => "client"})
    MaximumConflictResolutionEntriesExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MaximumConflictResolutionEntriesExceededException", name: "MaximumConflictResolutionEntriesExceededException", traits: {"smithy.api#error" => "client"})
    MaximumFileContentToLoadExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MaximumFileContentToLoadExceededException", name: "MaximumFileContentToLoadExceededException", traits: {"smithy.api#error" => "client"})
    MaximumFileEntriesExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MaximumFileEntriesExceededException", name: "MaximumFileEntriesExceededException", traits: {"smithy.api#error" => "client"})
    MaximumItemsToCompareExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MaximumItemsToCompareExceededException", name: "MaximumItemsToCompareExceededException", traits: {"smithy.api#error" => "client"})
    MaximumNumberOfApprovalsExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MaximumNumberOfApprovalsExceededException", name: "MaximumNumberOfApprovalsExceededException", traits: {"smithy.api#error" => "client"})
    MaximumOpenPullRequestsExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MaximumOpenPullRequestsExceededException", name: "MaximumOpenPullRequestsExceededException", traits: {"smithy.api#error" => "client"})
    MaximumRepositoryNamesExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MaximumRepositoryNamesExceededException", name: "MaximumRepositoryNamesExceededException", traits: {"smithy.api#error" => "client"})
    MaximumRepositoryTriggersExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MaximumRepositoryTriggersExceededException", name: "MaximumRepositoryTriggersExceededException", traits: {"smithy.api#error" => "client"})
    MaximumRuleTemplatesAssociatedWithRepositoryException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MaximumRuleTemplatesAssociatedWithRepositoryException", name: "MaximumRuleTemplatesAssociatedWithRepositoryException", traits: {"smithy.api#error" => "client"})
    MergeBranchesByFastForwardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergeBranchesByFastForwardInput", name: "MergeBranchesByFastForwardInput")
    MergeBranchesByFastForwardOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergeBranchesByFastForwardOutput", name: "MergeBranchesByFastForwardOutput")
    MergeBranchesBySquashInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergeBranchesBySquashInput", name: "MergeBranchesBySquashInput")
    MergeBranchesBySquashOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergeBranchesBySquashOutput", name: "MergeBranchesBySquashOutput")
    MergeBranchesByThreeWayInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergeBranchesByThreeWayInput", name: "MergeBranchesByThreeWayInput")
    MergeBranchesByThreeWayOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergeBranchesByThreeWayOutput", name: "MergeBranchesByThreeWayOutput")
    MergeHunk = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergeHunk", name: "MergeHunk")
    MergeHunkDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergeHunkDetail", name: "MergeHunkDetail")
    MergeHunks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#MergeHunks", name: "MergeHunks")
    MergeMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergeMetadata", name: "MergeMetadata")
    MergeOperations = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergeOperations", name: "MergeOperations")
    MergeOptionRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergeOptionRequiredException", name: "MergeOptionRequiredException", traits: {"smithy.api#error" => "client"})
    MergeOptionTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#MergeOptionTypeEnum", name: "MergeOptionTypeEnum")
    MergeOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#MergeOptions", name: "MergeOptions")
    MergePullRequestByFastForwardInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergePullRequestByFastForwardInput", name: "MergePullRequestByFastForwardInput")
    MergePullRequestByFastForwardOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergePullRequestByFastForwardOutput", name: "MergePullRequestByFastForwardOutput")
    MergePullRequestBySquashInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergePullRequestBySquashInput", name: "MergePullRequestBySquashInput")
    MergePullRequestBySquashOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergePullRequestBySquashOutput", name: "MergePullRequestBySquashOutput")
    MergePullRequestByThreeWayInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergePullRequestByThreeWayInput", name: "MergePullRequestByThreeWayInput")
    MergePullRequestByThreeWayOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MergePullRequestByThreeWayOutput", name: "MergePullRequestByThreeWayOutput")
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#Message", name: "Message")
    Mode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#Mode", name: "Mode")
    MultipleConflictResolutionEntriesException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MultipleConflictResolutionEntriesException", name: "MultipleConflictResolutionEntriesException", traits: {"smithy.api#error" => "client"})
    MultipleRepositoriesInPullRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#MultipleRepositoriesInPullRequestException", name: "MultipleRepositoriesInPullRequestException", traits: {"smithy.api#error" => "client"})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#Name", name: "Name")
    NameLengthExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#NameLengthExceededException", name: "NameLengthExceededException", traits: {"smithy.api#error" => "client"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#NextToken", name: "NextToken")
    NoChangeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#NoChangeException", name: "NoChangeException", traits: {"smithy.api#error" => "client"})
    NumberOfConflicts = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codecommit#NumberOfConflicts", name: "NumberOfConflicts", traits: {"smithy.api#default" => 0})
    NumberOfRuleTemplatesExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#NumberOfRuleTemplatesExceededException", name: "NumberOfRuleTemplatesExceededException", traits: {"smithy.api#error" => "client"})
    NumberOfRulesExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#NumberOfRulesExceededException", name: "NumberOfRulesExceededException", traits: {"smithy.api#error" => "client"})
    ObjectId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ObjectId", name: "ObjectId")
    ObjectSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codecommit#ObjectSize", name: "ObjectSize", traits: {"smithy.api#default" => 0})
    ObjectTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#ObjectTypeEnum", name: "ObjectTypeEnum")
    ObjectTypes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ObjectTypes", name: "ObjectTypes")
    OperationNotAllowedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#OperationNotAllowedException", name: "OperationNotAllowedException", traits: {"smithy.api#error" => "client"})
    OrderEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#OrderEnum", name: "OrderEnum")
    OriginApprovalRuleTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#OriginApprovalRuleTemplate", name: "OriginApprovalRuleTemplate")
    Overridden = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codecommit#Overridden", name: "Overridden", traits: {"smithy.api#default" => false})
    OverrideAlreadySetException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#OverrideAlreadySetException", name: "OverrideAlreadySetException", traits: {"smithy.api#error" => "client"})
    OverridePullRequestApprovalRulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#OverridePullRequestApprovalRulesInput", name: "OverridePullRequestApprovalRulesInput")
    OverrideStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#OverrideStatus", name: "OverrideStatus")
    OverrideStatusRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#OverrideStatusRequiredException", name: "OverrideStatusRequiredException", traits: {"smithy.api#error" => "client"})
    ParentCommitDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ParentCommitDoesNotExistException", name: "ParentCommitDoesNotExistException", traits: {"smithy.api#error" => "client"})
    ParentCommitIdOutdatedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ParentCommitIdOutdatedException", name: "ParentCommitIdOutdatedException", traits: {"smithy.api#error" => "client"})
    ParentCommitIdRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ParentCommitIdRequiredException", name: "ParentCommitIdRequiredException", traits: {"smithy.api#error" => "client"})
    ParentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#ParentList", name: "ParentList")
    Path = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#Path", name: "Path")
    PathDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PathDoesNotExistException", name: "PathDoesNotExistException", traits: {"smithy.api#error" => "client"})
    PathRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PathRequiredException", name: "PathRequiredException", traits: {"smithy.api#error" => "client"})
    Position = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codecommit#Position", name: "Position")
    PostCommentForComparedCommitInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PostCommentForComparedCommitInput", name: "PostCommentForComparedCommitInput")
    PostCommentForComparedCommitOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PostCommentForComparedCommitOutput", name: "PostCommentForComparedCommitOutput")
    PostCommentForPullRequestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PostCommentForPullRequestInput", name: "PostCommentForPullRequestInput")
    PostCommentForPullRequestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PostCommentForPullRequestOutput", name: "PostCommentForPullRequestOutput")
    PostCommentReplyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PostCommentReplyInput", name: "PostCommentReplyInput")
    PostCommentReplyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PostCommentReplyOutput", name: "PostCommentReplyOutput")
    PullRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PullRequest", name: "PullRequest")
    PullRequestAlreadyClosedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PullRequestAlreadyClosedException", name: "PullRequestAlreadyClosedException", traits: {"smithy.api#error" => "client"})
    PullRequestApprovalRulesNotSatisfiedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PullRequestApprovalRulesNotSatisfiedException", name: "PullRequestApprovalRulesNotSatisfiedException", traits: {"smithy.api#error" => "client"})
    PullRequestCannotBeApprovedByAuthorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PullRequestCannotBeApprovedByAuthorException", name: "PullRequestCannotBeApprovedByAuthorException", traits: {"smithy.api#error" => "client"})
    PullRequestCreatedEventMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PullRequestCreatedEventMetadata", name: "PullRequestCreatedEventMetadata")
    PullRequestDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PullRequestDoesNotExistException", name: "PullRequestDoesNotExistException", traits: {"smithy.api#error" => "client"})
    PullRequestEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PullRequestEvent", name: "PullRequestEvent")
    PullRequestEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#PullRequestEventList", name: "PullRequestEventList")
    PullRequestEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#PullRequestEventType", name: "PullRequestEventType")
    PullRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#PullRequestId", name: "PullRequestId")
    PullRequestIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#PullRequestIdList", name: "PullRequestIdList")
    PullRequestIdRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PullRequestIdRequiredException", name: "PullRequestIdRequiredException", traits: {"smithy.api#error" => "client"})
    PullRequestMergedStateChangedEventMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PullRequestMergedStateChangedEventMetadata", name: "PullRequestMergedStateChangedEventMetadata")
    PullRequestSourceReferenceUpdatedEventMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PullRequestSourceReferenceUpdatedEventMetadata", name: "PullRequestSourceReferenceUpdatedEventMetadata")
    PullRequestStatusChangedEventMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PullRequestStatusChangedEventMetadata", name: "PullRequestStatusChangedEventMetadata")
    PullRequestStatusEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#PullRequestStatusEnum", name: "PullRequestStatusEnum")
    PullRequestStatusRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PullRequestStatusRequiredException", name: "PullRequestStatusRequiredException", traits: {"smithy.api#error" => "client"})
    PullRequestTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PullRequestTarget", name: "PullRequestTarget")
    PullRequestTargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#PullRequestTargetList", name: "PullRequestTargetList")
    PutCommentReactionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PutCommentReactionInput", name: "PutCommentReactionInput")
    PutFileEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#PutFileEntries", name: "PutFileEntries")
    PutFileEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PutFileEntry", name: "PutFileEntry")
    PutFileEntryConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PutFileEntryConflictException", name: "PutFileEntryConflictException", traits: {"smithy.api#error" => "client"})
    PutFileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PutFileInput", name: "PutFileInput")
    PutFileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PutFileOutput", name: "PutFileOutput")
    PutRepositoryTriggersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PutRepositoryTriggersInput", name: "PutRepositoryTriggersInput")
    PutRepositoryTriggersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#PutRepositoryTriggersOutput", name: "PutRepositoryTriggersOutput")
    ReactionCountsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codecommit#ReactionCountsMap", name: "ReactionCountsMap")
    ReactionEmoji = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ReactionEmoji", name: "ReactionEmoji")
    ReactionForComment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ReactionForComment", name: "ReactionForComment")
    ReactionLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ReactionLimitExceededException", name: "ReactionLimitExceededException", traits: {"smithy.api#error" => "client"})
    ReactionShortCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ReactionShortCode", name: "ReactionShortCode")
    ReactionUnicode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ReactionUnicode", name: "ReactionUnicode")
    ReactionUsersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#ReactionUsersList", name: "ReactionUsersList")
    ReactionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ReactionValue", name: "ReactionValue")
    ReactionValueFormats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ReactionValueFormats", name: "ReactionValueFormats")
    ReactionValueRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ReactionValueRequiredException", name: "ReactionValueRequiredException", traits: {"smithy.api#error" => "client"})
    ReactionsForCommentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#ReactionsForCommentList", name: "ReactionsForCommentList")
    ReferenceDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ReferenceDoesNotExistException", name: "ReferenceDoesNotExistException", traits: {"smithy.api#error" => "client"})
    ReferenceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ReferenceName", name: "ReferenceName")
    ReferenceNameRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ReferenceNameRequiredException", name: "ReferenceNameRequiredException", traits: {"smithy.api#error" => "client"})
    ReferenceTypeNotSupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ReferenceTypeNotSupportedException", name: "ReferenceTypeNotSupportedException", traits: {"smithy.api#error" => "client"})
    RelativeFileVersionEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#RelativeFileVersionEnum", name: "RelativeFileVersionEnum")
    ReplaceContentEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#ReplaceContentEntries", name: "ReplaceContentEntries")
    ReplaceContentEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ReplaceContentEntry", name: "ReplaceContentEntry")
    ReplacementContentRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ReplacementContentRequiredException", name: "ReplacementContentRequiredException", traits: {"smithy.api#error" => "client"})
    ReplacementTypeEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#ReplacementTypeEnum", name: "ReplacementTypeEnum")
    ReplacementTypeRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ReplacementTypeRequiredException", name: "ReplacementTypeRequiredException", traits: {"smithy.api#error" => "client"})
    RepositoryDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#RepositoryDescription", name: "RepositoryDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    RepositoryDoesNotExistException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RepositoryDoesNotExistException", name: "RepositoryDoesNotExistException", traits: {"smithy.api#error" => "client"})
    RepositoryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#RepositoryId", name: "RepositoryId")
    RepositoryLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RepositoryLimitExceededException", name: "RepositoryLimitExceededException", traits: {"smithy.api#error" => "client"})
    RepositoryMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RepositoryMetadata", name: "RepositoryMetadata")
    RepositoryMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#RepositoryMetadataList", name: "RepositoryMetadataList")
    RepositoryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#RepositoryName", name: "RepositoryName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\w\\.-]+$"})
    RepositoryNameExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RepositoryNameExistsException", name: "RepositoryNameExistsException", traits: {"smithy.api#error" => "client"})
    RepositoryNameIdPair = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RepositoryNameIdPair", name: "RepositoryNameIdPair")
    RepositoryNameIdPairList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#RepositoryNameIdPairList", name: "RepositoryNameIdPairList")
    RepositoryNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#RepositoryNameList", name: "RepositoryNameList")
    RepositoryNameRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RepositoryNameRequiredException", name: "RepositoryNameRequiredException", traits: {"smithy.api#error" => "client"})
    RepositoryNamesRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RepositoryNamesRequiredException", name: "RepositoryNamesRequiredException", traits: {"smithy.api#error" => "client"})
    RepositoryNotAssociatedWithPullRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RepositoryNotAssociatedWithPullRequestException", name: "RepositoryNotAssociatedWithPullRequestException", traits: {"smithy.api#error" => "client"})
    RepositoryNotFoundList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#RepositoryNotFoundList", name: "RepositoryNotFoundList")
    RepositoryTrigger = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RepositoryTrigger", name: "RepositoryTrigger")
    RepositoryTriggerBranchNameListRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RepositoryTriggerBranchNameListRequiredException", name: "RepositoryTriggerBranchNameListRequiredException", traits: {"smithy.api#error" => "client"})
    RepositoryTriggerCustomData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#RepositoryTriggerCustomData", name: "RepositoryTriggerCustomData")
    RepositoryTriggerDestinationArnRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RepositoryTriggerDestinationArnRequiredException", name: "RepositoryTriggerDestinationArnRequiredException", traits: {"smithy.api#error" => "client"})
    RepositoryTriggerEventEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#RepositoryTriggerEventEnum", name: "RepositoryTriggerEventEnum")
    RepositoryTriggerEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#RepositoryTriggerEventList", name: "RepositoryTriggerEventList")
    RepositoryTriggerEventsListRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RepositoryTriggerEventsListRequiredException", name: "RepositoryTriggerEventsListRequiredException", traits: {"smithy.api#error" => "client"})
    RepositoryTriggerExecutionFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RepositoryTriggerExecutionFailure", name: "RepositoryTriggerExecutionFailure")
    RepositoryTriggerExecutionFailureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#RepositoryTriggerExecutionFailureList", name: "RepositoryTriggerExecutionFailureList")
    RepositoryTriggerExecutionFailureMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#RepositoryTriggerExecutionFailureMessage", name: "RepositoryTriggerExecutionFailureMessage")
    RepositoryTriggerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#RepositoryTriggerName", name: "RepositoryTriggerName")
    RepositoryTriggerNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#RepositoryTriggerNameList", name: "RepositoryTriggerNameList")
    RepositoryTriggerNameRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RepositoryTriggerNameRequiredException", name: "RepositoryTriggerNameRequiredException", traits: {"smithy.api#error" => "client"})
    RepositoryTriggersConfigurationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#RepositoryTriggersConfigurationId", name: "RepositoryTriggersConfigurationId")
    RepositoryTriggersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#RepositoryTriggersList", name: "RepositoryTriggersList")
    RepositoryTriggersListRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RepositoryTriggersListRequiredException", name: "RepositoryTriggersListRequiredException", traits: {"smithy.api#error" => "client"})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#ResourceArn", name: "ResourceArn")
    ResourceArnRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ResourceArnRequiredException", name: "ResourceArnRequiredException", traits: {"smithy.api#error" => "client"})
    RestrictedSourceFileException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RestrictedSourceFileException", name: "RestrictedSourceFileException", traits: {"smithy.api#error" => "client"})
    RevisionChildren = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#RevisionChildren", name: "RevisionChildren")
    RevisionDag = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#RevisionDag", name: "RevisionDag")
    RevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#RevisionId", name: "RevisionId")
    RevisionIdRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RevisionIdRequiredException", name: "RevisionIdRequiredException", traits: {"smithy.api#error" => "client"})
    RevisionNotCurrentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#RevisionNotCurrentException", name: "RevisionNotCurrentException", traits: {"smithy.api#error" => "client"})
    RuleContentSha256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#RuleContentSha256", name: "RuleContentSha256")
    SameFileContentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#SameFileContentException", name: "SameFileContentException", traits: {"smithy.api#error" => "client"})
    SamePathRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#SamePathRequestException", name: "SamePathRequestException", traits: {"smithy.api#error" => "client"})
    SetFileModeEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#SetFileModeEntries", name: "SetFileModeEntries")
    SetFileModeEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#SetFileModeEntry", name: "SetFileModeEntry")
    SortByEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codecommit#SortByEnum", name: "SortByEnum")
    SourceAndDestinationAreSameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#SourceAndDestinationAreSameException", name: "SourceAndDestinationAreSameException", traits: {"smithy.api#error" => "client"})
    SourceFileOrContentRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#SourceFileOrContentRequiredException", name: "SourceFileOrContentRequiredException", traits: {"smithy.api#error" => "client"})
    SourceFileSpecifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#SourceFileSpecifier", name: "SourceFileSpecifier")
    SubModule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#SubModule", name: "SubModule")
    SubModuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#SubModuleList", name: "SubModuleList")
    SymbolicLink = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#SymbolicLink", name: "SymbolicLink")
    SymbolicLinkList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#SymbolicLinkList", name: "SymbolicLinkList")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeysList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#TagKeysList", name: "TagKeysList")
    TagKeysListRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#TagKeysListRequiredException", name: "TagKeysListRequiredException", traits: {"smithy.api#error" => "client"})
    TagPolicyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#TagPolicyException", name: "TagPolicyException", traits: {"smithy.api#error" => "client"})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#TagResourceInput", name: "TagResourceInput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codecommit#TagsMap", name: "TagsMap")
    TagsMapRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#TagsMapRequiredException", name: "TagsMapRequiredException", traits: {"smithy.api#error" => "client"})
    Target = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#Target", name: "Target")
    TargetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codecommit#TargetList", name: "TargetList")
    TargetRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#TargetRequiredException", name: "TargetRequiredException", traits: {"smithy.api#error" => "client"})
    TargetsRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#TargetsRequiredException", name: "TargetsRequiredException", traits: {"smithy.api#error" => "client"})
    TestRepositoryTriggersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#TestRepositoryTriggersInput", name: "TestRepositoryTriggersInput")
    TestRepositoryTriggersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#TestRepositoryTriggersOutput", name: "TestRepositoryTriggersOutput")
    TipOfSourceReferenceIsDifferentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#TipOfSourceReferenceIsDifferentException", name: "TipOfSourceReferenceIsDifferentException", traits: {"smithy.api#error" => "client"})
    TipsDivergenceExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#TipsDivergenceExceededException", name: "TipsDivergenceExceededException", traits: {"smithy.api#error" => "client"})
    Title = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codecommit#Title", name: "Title", traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    TitleRequiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#TitleRequiredException", name: "TitleRequiredException", traits: {"smithy.api#error" => "client"})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client"})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UntagResourceInput", name: "UntagResourceInput")
    UpdateApprovalRuleTemplateContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdateApprovalRuleTemplateContentInput", name: "UpdateApprovalRuleTemplateContentInput")
    UpdateApprovalRuleTemplateContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdateApprovalRuleTemplateContentOutput", name: "UpdateApprovalRuleTemplateContentOutput")
    UpdateApprovalRuleTemplateDescriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdateApprovalRuleTemplateDescriptionInput", name: "UpdateApprovalRuleTemplateDescriptionInput")
    UpdateApprovalRuleTemplateDescriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdateApprovalRuleTemplateDescriptionOutput", name: "UpdateApprovalRuleTemplateDescriptionOutput")
    UpdateApprovalRuleTemplateNameInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdateApprovalRuleTemplateNameInput", name: "UpdateApprovalRuleTemplateNameInput")
    UpdateApprovalRuleTemplateNameOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdateApprovalRuleTemplateNameOutput", name: "UpdateApprovalRuleTemplateNameOutput")
    UpdateCommentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdateCommentInput", name: "UpdateCommentInput")
    UpdateCommentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdateCommentOutput", name: "UpdateCommentOutput")
    UpdateDefaultBranchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdateDefaultBranchInput", name: "UpdateDefaultBranchInput")
    UpdatePullRequestApprovalRuleContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdatePullRequestApprovalRuleContentInput", name: "UpdatePullRequestApprovalRuleContentInput")
    UpdatePullRequestApprovalRuleContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdatePullRequestApprovalRuleContentOutput", name: "UpdatePullRequestApprovalRuleContentOutput")
    UpdatePullRequestApprovalStateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdatePullRequestApprovalStateInput", name: "UpdatePullRequestApprovalStateInput")
    UpdatePullRequestDescriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdatePullRequestDescriptionInput", name: "UpdatePullRequestDescriptionInput")
    UpdatePullRequestDescriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdatePullRequestDescriptionOutput", name: "UpdatePullRequestDescriptionOutput")
    UpdatePullRequestStatusInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdatePullRequestStatusInput", name: "UpdatePullRequestStatusInput")
    UpdatePullRequestStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdatePullRequestStatusOutput", name: "UpdatePullRequestStatusOutput")
    UpdatePullRequestTitleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdatePullRequestTitleInput", name: "UpdatePullRequestTitleInput")
    UpdatePullRequestTitleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdatePullRequestTitleOutput", name: "UpdatePullRequestTitleOutput")
    UpdateRepositoryDescriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdateRepositoryDescriptionInput", name: "UpdateRepositoryDescriptionInput")
    UpdateRepositoryEncryptionKeyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdateRepositoryEncryptionKeyInput", name: "UpdateRepositoryEncryptionKeyInput")
    UpdateRepositoryEncryptionKeyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdateRepositoryEncryptionKeyOutput", name: "UpdateRepositoryEncryptionKeyOutput")
    UpdateRepositoryNameInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UpdateRepositoryNameInput", name: "UpdateRepositoryNameInput")
    UserInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#UserInfo", name: "UserInfo")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codecommit#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.codecommit#blob", name: "Blob")

    ActorDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ActorDoesNotExistException.type = Types::ActorDoesNotExistException
    Approval.add_member(:user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "userArn"))
    Approval.add_member(:approval_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalState, name: "approvalState"))
    Approval.type = Types::Approval
    ApprovalList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Approval, name: "member"))
    ApprovalRule.add_member(:approval_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleId, name: "approvalRuleId"))
    ApprovalRule.add_member(:approval_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleName, name: "approvalRuleName"))
    ApprovalRule.add_member(:approval_rule_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleContent, name: "approvalRuleContent"))
    ApprovalRule.add_member(:rule_content_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleContentSha256, name: "ruleContentSha256"))
    ApprovalRule.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedDate, name: "lastModifiedDate"))
    ApprovalRule.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationDate, name: "creationDate"))
    ApprovalRule.add_member(:last_modified_user, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "lastModifiedUser"))
    ApprovalRule.add_member(:origin_approval_rule_template, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginApprovalRuleTemplate, name: "originApprovalRuleTemplate"))
    ApprovalRule.type = Types::ApprovalRule
    ApprovalRuleContentRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ApprovalRuleContentRequiredException.type = Types::ApprovalRuleContentRequiredException
    ApprovalRuleDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ApprovalRuleDoesNotExistException.type = Types::ApprovalRuleDoesNotExistException
    ApprovalRuleEventMetadata.add_member(:approval_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleName, name: "approvalRuleName"))
    ApprovalRuleEventMetadata.add_member(:approval_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleId, name: "approvalRuleId"))
    ApprovalRuleEventMetadata.add_member(:approval_rule_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleContent, name: "approvalRuleContent"))
    ApprovalRuleEventMetadata.type = Types::ApprovalRuleEventMetadata
    ApprovalRuleNameAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ApprovalRuleNameAlreadyExistsException.type = Types::ApprovalRuleNameAlreadyExistsException
    ApprovalRuleNameRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ApprovalRuleNameRequiredException.type = Types::ApprovalRuleNameRequiredException
    ApprovalRuleOverriddenEventMetadata.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId"))
    ApprovalRuleOverriddenEventMetadata.add_member(:override_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OverrideStatus, name: "overrideStatus"))
    ApprovalRuleOverriddenEventMetadata.type = Types::ApprovalRuleOverriddenEventMetadata
    ApprovalRuleTemplate.add_member(:approval_rule_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateId, name: "approvalRuleTemplateId"))
    ApprovalRuleTemplate.add_member(:approval_rule_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateName, name: "approvalRuleTemplateName"))
    ApprovalRuleTemplate.add_member(:approval_rule_template_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateDescription, name: "approvalRuleTemplateDescription"))
    ApprovalRuleTemplate.add_member(:approval_rule_template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateContent, name: "approvalRuleTemplateContent"))
    ApprovalRuleTemplate.add_member(:rule_content_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleContentSha256, name: "ruleContentSha256"))
    ApprovalRuleTemplate.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedDate, name: "lastModifiedDate"))
    ApprovalRuleTemplate.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationDate, name: "creationDate"))
    ApprovalRuleTemplate.add_member(:last_modified_user, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "lastModifiedUser"))
    ApprovalRuleTemplate.type = Types::ApprovalRuleTemplate
    ApprovalRuleTemplateContentRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ApprovalRuleTemplateContentRequiredException.type = Types::ApprovalRuleTemplateContentRequiredException
    ApprovalRuleTemplateDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ApprovalRuleTemplateDoesNotExistException.type = Types::ApprovalRuleTemplateDoesNotExistException
    ApprovalRuleTemplateInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ApprovalRuleTemplateInUseException.type = Types::ApprovalRuleTemplateInUseException
    ApprovalRuleTemplateNameAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ApprovalRuleTemplateNameAlreadyExistsException.type = Types::ApprovalRuleTemplateNameAlreadyExistsException
    ApprovalRuleTemplateNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateName, name: "member"))
    ApprovalRuleTemplateNameRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ApprovalRuleTemplateNameRequiredException.type = Types::ApprovalRuleTemplateNameRequiredException
    ApprovalRulesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRule, name: "member"))
    ApprovalRulesNotSatisfiedList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleName, name: "member"))
    ApprovalRulesSatisfiedList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleName, name: "member"))
    ApprovalState.add_member(:approve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVE", traits: {"smithy.api#enumValue" => "APPROVE"}))
    ApprovalState.add_member(:revoke, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKE", traits: {"smithy.api#enumValue" => "REVOKE"}))
    ApprovalStateChangedEventMetadata.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId"))
    ApprovalStateChangedEventMetadata.add_member(:approval_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalState, name: "approvalStatus"))
    ApprovalStateChangedEventMetadata.type = Types::ApprovalStateChangedEventMetadata
    ApprovalStateRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ApprovalStateRequiredException.type = Types::ApprovalStateRequiredException
    AssociateApprovalRuleTemplateWithRepositoryInput.add_member(:approval_rule_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateName, name: "approvalRuleTemplateName", traits: {"smithy.api#required" => {}}))
    AssociateApprovalRuleTemplateWithRepositoryInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    AssociateApprovalRuleTemplateWithRepositoryInput.type = Types::AssociateApprovalRuleTemplateWithRepositoryInput
    AuthorDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    AuthorDoesNotExistException.type = Types::AuthorDoesNotExistException
    BatchAssociateApprovalRuleTemplateWithRepositoriesError.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    BatchAssociateApprovalRuleTemplateWithRepositoriesError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode"))
    BatchAssociateApprovalRuleTemplateWithRepositoriesError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    BatchAssociateApprovalRuleTemplateWithRepositoriesError.type = Types::BatchAssociateApprovalRuleTemplateWithRepositoriesError
    BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAssociateApprovalRuleTemplateWithRepositoriesError, name: "member"))
    BatchAssociateApprovalRuleTemplateWithRepositoriesInput.add_member(:approval_rule_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateName, name: "approvalRuleTemplateName", traits: {"smithy.api#required" => {}}))
    BatchAssociateApprovalRuleTemplateWithRepositoriesInput.add_member(:repository_names, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryNameList, name: "repositoryNames", traits: {"smithy.api#required" => {}}))
    BatchAssociateApprovalRuleTemplateWithRepositoriesInput.type = Types::BatchAssociateApprovalRuleTemplateWithRepositoriesInput
    BatchAssociateApprovalRuleTemplateWithRepositoriesOutput.add_member(:associated_repository_names, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryNameList, name: "associatedRepositoryNames", traits: {"smithy.api#required" => {}}))
    BatchAssociateApprovalRuleTemplateWithRepositoriesOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchAssociateApprovalRuleTemplateWithRepositoriesOutput.type = Types::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput
    BatchDescribeMergeConflictsError.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "filePath", traits: {"smithy.api#required" => {}}))
    BatchDescribeMergeConflictsError.add_member(:exception_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionName, name: "exceptionName", traits: {"smithy.api#required" => {}}))
    BatchDescribeMergeConflictsError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message", traits: {"smithy.api#required" => {}}))
    BatchDescribeMergeConflictsError.type = Types::BatchDescribeMergeConflictsError
    BatchDescribeMergeConflictsErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDescribeMergeConflictsError, name: "member"))
    BatchDescribeMergeConflictsInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    BatchDescribeMergeConflictsInput.add_member(:destination_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "destinationCommitSpecifier", traits: {"smithy.api#required" => {}}))
    BatchDescribeMergeConflictsInput.add_member(:source_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "sourceCommitSpecifier", traits: {"smithy.api#required" => {}}))
    BatchDescribeMergeConflictsInput.add_member(:merge_option, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeOptionTypeEnum, name: "mergeOption", traits: {"smithy.api#required" => {}}))
    BatchDescribeMergeConflictsInput.add_member(:max_merge_hunks, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxMergeHunks"))
    BatchDescribeMergeConflictsInput.add_member(:max_conflict_files, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxConflictFiles"))
    BatchDescribeMergeConflictsInput.add_member(:file_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: FilePaths, name: "filePaths"))
    BatchDescribeMergeConflictsInput.add_member(:conflict_detail_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictDetailLevelTypeEnum, name: "conflictDetailLevel"))
    BatchDescribeMergeConflictsInput.add_member(:conflict_resolution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolutionStrategyTypeEnum, name: "conflictResolutionStrategy"))
    BatchDescribeMergeConflictsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    BatchDescribeMergeConflictsInput.type = Types::BatchDescribeMergeConflictsInput
    BatchDescribeMergeConflictsOutput.add_member(:conflicts, ::Smithy::Schema::Shapes::MemberShape.new(target: Conflicts, name: "conflicts", traits: {"smithy.api#required" => {}}))
    BatchDescribeMergeConflictsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    BatchDescribeMergeConflictsOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDescribeMergeConflictsErrors, name: "errors"))
    BatchDescribeMergeConflictsOutput.add_member(:destination_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "destinationCommitId", traits: {"smithy.api#required" => {}}))
    BatchDescribeMergeConflictsOutput.add_member(:source_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "sourceCommitId", traits: {"smithy.api#required" => {}}))
    BatchDescribeMergeConflictsOutput.add_member(:base_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "baseCommitId"))
    BatchDescribeMergeConflictsOutput.type = Types::BatchDescribeMergeConflictsOutput
    BatchDisassociateApprovalRuleTemplateFromRepositoriesError.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    BatchDisassociateApprovalRuleTemplateFromRepositoriesError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode"))
    BatchDisassociateApprovalRuleTemplateFromRepositoriesError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    BatchDisassociateApprovalRuleTemplateFromRepositoriesError.type = Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesError
    BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDisassociateApprovalRuleTemplateFromRepositoriesError, name: "member"))
    BatchDisassociateApprovalRuleTemplateFromRepositoriesInput.add_member(:approval_rule_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateName, name: "approvalRuleTemplateName", traits: {"smithy.api#required" => {}}))
    BatchDisassociateApprovalRuleTemplateFromRepositoriesInput.add_member(:repository_names, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryNameList, name: "repositoryNames", traits: {"smithy.api#required" => {}}))
    BatchDisassociateApprovalRuleTemplateFromRepositoriesInput.type = Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesInput
    BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput.add_member(:disassociated_repository_names, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryNameList, name: "disassociatedRepositoryNames", traits: {"smithy.api#required" => {}}))
    BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput.type = Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput
    BatchGetCommitsError.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "commitId"))
    BatchGetCommitsError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "errorCode"))
    BatchGetCommitsError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    BatchGetCommitsError.type = Types::BatchGetCommitsError
    BatchGetCommitsErrorsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetCommitsError, name: "member"))
    BatchGetCommitsInput.add_member(:commit_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitIdsInputList, name: "commitIds", traits: {"smithy.api#required" => {}}))
    BatchGetCommitsInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    BatchGetCommitsInput.type = Types::BatchGetCommitsInput
    BatchGetCommitsOutput.add_member(:commits, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitObjectsList, name: "commits"))
    BatchGetCommitsOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetCommitsErrorsList, name: "errors"))
    BatchGetCommitsOutput.type = Types::BatchGetCommitsOutput
    BatchGetRepositoriesError.add_member(:repository_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryId, name: "repositoryId"))
    BatchGetRepositoriesError.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    BatchGetRepositoriesError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRepositoriesErrorCodeEnum, name: "errorCode"))
    BatchGetRepositoriesError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    BatchGetRepositoriesError.type = Types::BatchGetRepositoriesError
    BatchGetRepositoriesErrorCodeEnum.add_member(:encryption_integrity_checks_failed_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENCRYPTION_INTEGRITY_CHECKS_FAILED_EXCEPTION", traits: {"smithy.api#enumValue" => "EncryptionIntegrityChecksFailedException"}))
    BatchGetRepositoriesErrorCodeEnum.add_member(:encryption_key_access_denied_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENCRYPTION_KEY_ACCESS_DENIED_EXCEPTION", traits: {"smithy.api#enumValue" => "EncryptionKeyAccessDeniedException"}))
    BatchGetRepositoriesErrorCodeEnum.add_member(:encryption_key_disabled_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENCRYPTION_KEY_DISABLED_EXCEPTION", traits: {"smithy.api#enumValue" => "EncryptionKeyDisabledException"}))
    BatchGetRepositoriesErrorCodeEnum.add_member(:encryption_key_not_found_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENCRYPTION_KEY_NOT_FOUND_EXCEPTION", traits: {"smithy.api#enumValue" => "EncryptionKeyNotFoundException"}))
    BatchGetRepositoriesErrorCodeEnum.add_member(:encryption_key_unavailable_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENCRYPTION_KEY_UNAVAILABLE_EXCEPTION", traits: {"smithy.api#enumValue" => "EncryptionKeyUnavailableException"}))
    BatchGetRepositoriesErrorCodeEnum.add_member(:repository_does_not_exist_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPOSITORY_DOES_NOT_EXIST_EXCEPTION", traits: {"smithy.api#enumValue" => "RepositoryDoesNotExistException"}))
    BatchGetRepositoriesErrorsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRepositoriesError, name: "member"))
    BatchGetRepositoriesInput.add_member(:repository_names, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryNameList, name: "repositoryNames", traits: {"smithy.api#required" => {}}))
    BatchGetRepositoriesInput.type = Types::BatchGetRepositoriesInput
    BatchGetRepositoriesOutput.add_member(:repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryMetadataList, name: "repositories"))
    BatchGetRepositoriesOutput.add_member(:repositories_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryNotFoundList, name: "repositoriesNotFound"))
    BatchGetRepositoriesOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetRepositoriesErrorsList, name: "errors"))
    BatchGetRepositoriesOutput.type = Types::BatchGetRepositoriesOutput
    BeforeCommitIdAndAfterCommitIdAreSameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    BeforeCommitIdAndAfterCommitIdAreSameException.type = Types::BeforeCommitIdAndAfterCommitIdAreSameException
    BlobIdDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    BlobIdDoesNotExistException.type = Types::BlobIdDoesNotExistException
    BlobIdRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    BlobIdRequiredException.type = Types::BlobIdRequiredException
    BlobMetadata.add_member(:blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "blobId"))
    BlobMetadata.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "path"))
    BlobMetadata.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: Mode, name: "mode"))
    BlobMetadata.type = Types::BlobMetadata
    BranchDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    BranchDoesNotExistException.type = Types::BranchDoesNotExistException
    BranchInfo.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "branchName"))
    BranchInfo.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "commitId"))
    BranchInfo.type = Types::BranchInfo
    BranchNameExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    BranchNameExistsException.type = Types::BranchNameExistsException
    BranchNameIsTagNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    BranchNameIsTagNameException.type = Types::BranchNameIsTagNameException
    BranchNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "member"))
    BranchNameRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    BranchNameRequiredException.type = Types::BranchNameRequiredException
    CallerReactions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactionValue, name: "member"))
    CannotDeleteApprovalRuleFromTemplateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    CannotDeleteApprovalRuleFromTemplateException.type = Types::CannotDeleteApprovalRuleFromTemplateException
    CannotModifyApprovalRuleFromTemplateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    CannotModifyApprovalRuleFromTemplateException.type = Types::CannotModifyApprovalRuleFromTemplateException
    ChangeTypeEnum.add_member(:added, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDED", traits: {"smithy.api#enumValue" => "A"}))
    ChangeTypeEnum.add_member(:modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFIED", traits: {"smithy.api#enumValue" => "M"}))
    ChangeTypeEnum.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "D"}))
    ClientRequestTokenRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ClientRequestTokenRequiredException.type = Types::ClientRequestTokenRequiredException
    Comment.add_member(:comment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentId, name: "commentId"))
    Comment.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, name: "content"))
    Comment.add_member(:in_reply_to, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentId, name: "inReplyTo"))
    Comment.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationDate, name: "creationDate"))
    Comment.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedDate, name: "lastModifiedDate"))
    Comment.add_member(:author_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "authorArn"))
    Comment.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: IsCommentDeleted, name: "deleted", traits: {"smithy.api#default" => false}))
    Comment.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "clientRequestToken"))
    Comment.add_member(:caller_reactions, ::Smithy::Schema::Shapes::MemberShape.new(target: CallerReactions, name: "callerReactions"))
    Comment.add_member(:reaction_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactionCountsMap, name: "reactionCounts"))
    Comment.type = Types::Comment
    CommentContentRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    CommentContentRequiredException.type = Types::CommentContentRequiredException
    CommentContentSizeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    CommentContentSizeLimitExceededException.type = Types::CommentContentSizeLimitExceededException
    CommentDeletedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    CommentDeletedException.type = Types::CommentDeletedException
    CommentDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    CommentDoesNotExistException.type = Types::CommentDoesNotExistException
    CommentIdRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    CommentIdRequiredException.type = Types::CommentIdRequiredException
    CommentNotCreatedByCallerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    CommentNotCreatedByCallerException.type = Types::CommentNotCreatedByCallerException
    Comments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Comment, name: "member"))
    CommentsForComparedCommit.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    CommentsForComparedCommit.add_member(:before_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "beforeCommitId"))
    CommentsForComparedCommit.add_member(:after_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "afterCommitId"))
    CommentsForComparedCommit.add_member(:before_blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "beforeBlobId"))
    CommentsForComparedCommit.add_member(:after_blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "afterBlobId"))
    CommentsForComparedCommit.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "location"))
    CommentsForComparedCommit.add_member(:comments, ::Smithy::Schema::Shapes::MemberShape.new(target: Comments, name: "comments"))
    CommentsForComparedCommit.type = Types::CommentsForComparedCommit
    CommentsForComparedCommitData.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentsForComparedCommit, name: "member"))
    CommentsForPullRequest.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId"))
    CommentsForPullRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    CommentsForPullRequest.add_member(:before_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "beforeCommitId"))
    CommentsForPullRequest.add_member(:after_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "afterCommitId"))
    CommentsForPullRequest.add_member(:before_blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "beforeBlobId"))
    CommentsForPullRequest.add_member(:after_blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "afterBlobId"))
    CommentsForPullRequest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "location"))
    CommentsForPullRequest.add_member(:comments, ::Smithy::Schema::Shapes::MemberShape.new(target: Comments, name: "comments"))
    CommentsForPullRequest.type = Types::CommentsForPullRequest
    CommentsForPullRequestData.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentsForPullRequest, name: "member"))
    Commit.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "commitId"))
    Commit.add_member(:tree_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "treeId"))
    Commit.add_member(:parents, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentList, name: "parents"))
    Commit.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    Commit.add_member(:author, ::Smithy::Schema::Shapes::MemberShape.new(target: UserInfo, name: "author"))
    Commit.add_member(:committer, ::Smithy::Schema::Shapes::MemberShape.new(target: UserInfo, name: "committer"))
    Commit.add_member(:additional_data, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalData, name: "additionalData"))
    Commit.type = Types::Commit
    CommitDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    CommitDoesNotExistException.type = Types::CommitDoesNotExistException
    CommitIdDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    CommitIdDoesNotExistException.type = Types::CommitIdDoesNotExistException
    CommitIdRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    CommitIdRequiredException.type = Types::CommitIdRequiredException
    CommitIdsInputList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "member"))
    CommitIdsLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    CommitIdsLimitExceededException.type = Types::CommitIdsLimitExceededException
    CommitIdsListRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    CommitIdsListRequiredException.type = Types::CommitIdsListRequiredException
    CommitMessageLengthExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    CommitMessageLengthExceededException.type = Types::CommitMessageLengthExceededException
    CommitObjectsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Commit, name: "member"))
    CommitRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    CommitRequiredException.type = Types::CommitRequiredException
    ConcurrentReferenceUpdateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ConcurrentReferenceUpdateException.type = Types::ConcurrentReferenceUpdateException
    Conflict.add_member(:conflict_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictMetadata, name: "conflictMetadata"))
    Conflict.add_member(:merge_hunks, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeHunks, name: "mergeHunks"))
    Conflict.type = Types::Conflict
    ConflictDetailLevelTypeEnum.add_member(:file_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_LEVEL", traits: {"smithy.api#enumValue" => "FILE_LEVEL"}))
    ConflictDetailLevelTypeEnum.add_member(:line_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINE_LEVEL", traits: {"smithy.api#enumValue" => "LINE_LEVEL"}))
    ConflictMetadata.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "filePath"))
    ConflictMetadata.add_member(:file_sizes, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSizes, name: "fileSizes"))
    ConflictMetadata.add_member(:file_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: FileModes, name: "fileModes"))
    ConflictMetadata.add_member(:object_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectTypes, name: "objectTypes"))
    ConflictMetadata.add_member(:number_of_conflicts, ::Smithy::Schema::Shapes::MemberShape.new(target: NumberOfConflicts, name: "numberOfConflicts", traits: {"smithy.api#default" => 0}))
    ConflictMetadata.add_member(:is_binary_file, ::Smithy::Schema::Shapes::MemberShape.new(target: IsBinaryFile, name: "isBinaryFile"))
    ConflictMetadata.add_member(:content_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: IsContentConflict, name: "contentConflict", traits: {"smithy.api#default" => false}))
    ConflictMetadata.add_member(:file_mode_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: IsFileModeConflict, name: "fileModeConflict", traits: {"smithy.api#default" => false}))
    ConflictMetadata.add_member(:object_type_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: IsObjectTypeConflict, name: "objectTypeConflict", traits: {"smithy.api#default" => false}))
    ConflictMetadata.add_member(:merge_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeOperations, name: "mergeOperations"))
    ConflictMetadata.type = Types::ConflictMetadata
    ConflictMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictMetadata, name: "member"))
    ConflictResolution.add_member(:replace_contents, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplaceContentEntries, name: "replaceContents"))
    ConflictResolution.add_member(:delete_files, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteFileEntries, name: "deleteFiles"))
    ConflictResolution.add_member(:set_file_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: SetFileModeEntries, name: "setFileModes"))
    ConflictResolution.type = Types::ConflictResolution
    ConflictResolutionStrategyTypeEnum.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ConflictResolutionStrategyTypeEnum.add_member(:accept_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCEPT_SOURCE", traits: {"smithy.api#enumValue" => "ACCEPT_SOURCE"}))
    ConflictResolutionStrategyTypeEnum.add_member(:accept_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCEPT_DESTINATION", traits: {"smithy.api#enumValue" => "ACCEPT_DESTINATION"}))
    ConflictResolutionStrategyTypeEnum.add_member(:automerge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMERGE", traits: {"smithy.api#enumValue" => "AUTOMERGE"}))
    Conflicts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Conflict, name: "member"))
    CreateApprovalRuleTemplateInput.add_member(:approval_rule_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateName, name: "approvalRuleTemplateName", traits: {"smithy.api#required" => {}}))
    CreateApprovalRuleTemplateInput.add_member(:approval_rule_template_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateContent, name: "approvalRuleTemplateContent", traits: {"smithy.api#required" => {}}))
    CreateApprovalRuleTemplateInput.add_member(:approval_rule_template_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateDescription, name: "approvalRuleTemplateDescription"))
    CreateApprovalRuleTemplateInput.type = Types::CreateApprovalRuleTemplateInput
    CreateApprovalRuleTemplateOutput.add_member(:approval_rule_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplate, name: "approvalRuleTemplate", traits: {"smithy.api#required" => {}}))
    CreateApprovalRuleTemplateOutput.type = Types::CreateApprovalRuleTemplateOutput
    CreateBranchInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    CreateBranchInput.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "branchName", traits: {"smithy.api#required" => {}}))
    CreateBranchInput.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "commitId", traits: {"smithy.api#required" => {}}))
    CreateBranchInput.type = Types::CreateBranchInput
    CreateCommitInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    CreateCommitInput.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "branchName", traits: {"smithy.api#required" => {}}))
    CreateCommitInput.add_member(:parent_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "parentCommitId"))
    CreateCommitInput.add_member(:author_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "authorName"))
    CreateCommitInput.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "email"))
    CreateCommitInput.add_member(:commit_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "commitMessage"))
    CreateCommitInput.add_member(:keep_empty_folders, ::Smithy::Schema::Shapes::MemberShape.new(target: KeepEmptyFolders, name: "keepEmptyFolders", traits: {"smithy.api#default" => false}))
    CreateCommitInput.add_member(:put_files, ::Smithy::Schema::Shapes::MemberShape.new(target: PutFileEntries, name: "putFiles"))
    CreateCommitInput.add_member(:delete_files, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteFileEntries, name: "deleteFiles"))
    CreateCommitInput.add_member(:set_file_modes, ::Smithy::Schema::Shapes::MemberShape.new(target: SetFileModeEntries, name: "setFileModes"))
    CreateCommitInput.type = Types::CreateCommitInput
    CreateCommitOutput.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "commitId"))
    CreateCommitOutput.add_member(:tree_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "treeId"))
    CreateCommitOutput.add_member(:files_added, ::Smithy::Schema::Shapes::MemberShape.new(target: FilesMetadata, name: "filesAdded"))
    CreateCommitOutput.add_member(:files_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: FilesMetadata, name: "filesUpdated"))
    CreateCommitOutput.add_member(:files_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: FilesMetadata, name: "filesDeleted"))
    CreateCommitOutput.type = Types::CreateCommitOutput
    CreatePullRequestApprovalRuleInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    CreatePullRequestApprovalRuleInput.add_member(:approval_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleName, name: "approvalRuleName", traits: {"smithy.api#required" => {}}))
    CreatePullRequestApprovalRuleInput.add_member(:approval_rule_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleContent, name: "approvalRuleContent", traits: {"smithy.api#required" => {}}))
    CreatePullRequestApprovalRuleInput.type = Types::CreatePullRequestApprovalRuleInput
    CreatePullRequestApprovalRuleOutput.add_member(:approval_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRule, name: "approvalRule", traits: {"smithy.api#required" => {}}))
    CreatePullRequestApprovalRuleOutput.type = Types::CreatePullRequestApprovalRuleOutput
    CreatePullRequestInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: Title, name: "title", traits: {"smithy.api#required" => {}}))
    CreatePullRequestInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreatePullRequestInput.add_member(:targets, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetList, name: "targets", traits: {"smithy.api#required" => {}}))
    CreatePullRequestInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreatePullRequestInput.type = Types::CreatePullRequestInput
    CreatePullRequestOutput.add_member(:pull_request, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequest, name: "pullRequest", traits: {"smithy.api#required" => {}}))
    CreatePullRequestOutput.type = Types::CreatePullRequestOutput
    CreateRepositoryInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    CreateRepositoryInput.add_member(:repository_description, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryDescription, name: "repositoryDescription"))
    CreateRepositoryInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateRepositoryInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    CreateRepositoryInput.type = Types::CreateRepositoryInput
    CreateRepositoryOutput.add_member(:repository_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryMetadata, name: "repositoryMetadata"))
    CreateRepositoryOutput.type = Types::CreateRepositoryOutput
    CreateUnreferencedMergeCommitInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    CreateUnreferencedMergeCommitInput.add_member(:source_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "sourceCommitSpecifier", traits: {"smithy.api#required" => {}}))
    CreateUnreferencedMergeCommitInput.add_member(:destination_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "destinationCommitSpecifier", traits: {"smithy.api#required" => {}}))
    CreateUnreferencedMergeCommitInput.add_member(:merge_option, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeOptionTypeEnum, name: "mergeOption", traits: {"smithy.api#required" => {}}))
    CreateUnreferencedMergeCommitInput.add_member(:conflict_detail_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictDetailLevelTypeEnum, name: "conflictDetailLevel"))
    CreateUnreferencedMergeCommitInput.add_member(:conflict_resolution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolutionStrategyTypeEnum, name: "conflictResolutionStrategy"))
    CreateUnreferencedMergeCommitInput.add_member(:author_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "authorName"))
    CreateUnreferencedMergeCommitInput.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "email"))
    CreateUnreferencedMergeCommitInput.add_member(:commit_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "commitMessage"))
    CreateUnreferencedMergeCommitInput.add_member(:keep_empty_folders, ::Smithy::Schema::Shapes::MemberShape.new(target: KeepEmptyFolders, name: "keepEmptyFolders", traits: {"smithy.api#default" => false}))
    CreateUnreferencedMergeCommitInput.add_member(:conflict_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolution, name: "conflictResolution"))
    CreateUnreferencedMergeCommitInput.type = Types::CreateUnreferencedMergeCommitInput
    CreateUnreferencedMergeCommitOutput.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "commitId"))
    CreateUnreferencedMergeCommitOutput.add_member(:tree_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "treeId"))
    CreateUnreferencedMergeCommitOutput.type = Types::CreateUnreferencedMergeCommitOutput
    DefaultBranchCannotBeDeletedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DefaultBranchCannotBeDeletedException.type = Types::DefaultBranchCannotBeDeletedException
    DeleteApprovalRuleTemplateInput.add_member(:approval_rule_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateName, name: "approvalRuleTemplateName", traits: {"smithy.api#required" => {}}))
    DeleteApprovalRuleTemplateInput.type = Types::DeleteApprovalRuleTemplateInput
    DeleteApprovalRuleTemplateOutput.add_member(:approval_rule_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateId, name: "approvalRuleTemplateId", traits: {"smithy.api#required" => {}}))
    DeleteApprovalRuleTemplateOutput.type = Types::DeleteApprovalRuleTemplateOutput
    DeleteBranchInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DeleteBranchInput.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "branchName", traits: {"smithy.api#required" => {}}))
    DeleteBranchInput.type = Types::DeleteBranchInput
    DeleteBranchOutput.add_member(:deleted_branch, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchInfo, name: "deletedBranch"))
    DeleteBranchOutput.type = Types::DeleteBranchOutput
    DeleteCommentContentInput.add_member(:comment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentId, name: "commentId", traits: {"smithy.api#required" => {}}))
    DeleteCommentContentInput.type = Types::DeleteCommentContentInput
    DeleteCommentContentOutput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Comment, name: "comment"))
    DeleteCommentContentOutput.type = Types::DeleteCommentContentOutput
    DeleteFileEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteFileEntry, name: "member"))
    DeleteFileEntry.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "filePath", traits: {"smithy.api#required" => {}}))
    DeleteFileEntry.type = Types::DeleteFileEntry
    DeleteFileInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DeleteFileInput.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "branchName", traits: {"smithy.api#required" => {}}))
    DeleteFileInput.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "filePath", traits: {"smithy.api#required" => {}}))
    DeleteFileInput.add_member(:parent_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "parentCommitId", traits: {"smithy.api#required" => {}}))
    DeleteFileInput.add_member(:keep_empty_folders, ::Smithy::Schema::Shapes::MemberShape.new(target: KeepEmptyFolders, name: "keepEmptyFolders", traits: {"smithy.api#default" => false}))
    DeleteFileInput.add_member(:commit_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "commitMessage"))
    DeleteFileInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    DeleteFileInput.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "email"))
    DeleteFileInput.type = Types::DeleteFileInput
    DeleteFileOutput.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "commitId", traits: {"smithy.api#required" => {}}))
    DeleteFileOutput.add_member(:blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "blobId", traits: {"smithy.api#required" => {}}))
    DeleteFileOutput.add_member(:tree_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "treeId", traits: {"smithy.api#required" => {}}))
    DeleteFileOutput.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "filePath", traits: {"smithy.api#required" => {}}))
    DeleteFileOutput.type = Types::DeleteFileOutput
    DeletePullRequestApprovalRuleInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    DeletePullRequestApprovalRuleInput.add_member(:approval_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleName, name: "approvalRuleName", traits: {"smithy.api#required" => {}}))
    DeletePullRequestApprovalRuleInput.type = Types::DeletePullRequestApprovalRuleInput
    DeletePullRequestApprovalRuleOutput.add_member(:approval_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleId, name: "approvalRuleId", traits: {"smithy.api#required" => {}}))
    DeletePullRequestApprovalRuleOutput.type = Types::DeletePullRequestApprovalRuleOutput
    DeleteRepositoryInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DeleteRepositoryInput.type = Types::DeleteRepositoryInput
    DeleteRepositoryOutput.add_member(:repository_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryId, name: "repositoryId"))
    DeleteRepositoryOutput.type = Types::DeleteRepositoryOutput
    DescribeMergeConflictsInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DescribeMergeConflictsInput.add_member(:destination_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "destinationCommitSpecifier", traits: {"smithy.api#required" => {}}))
    DescribeMergeConflictsInput.add_member(:source_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "sourceCommitSpecifier", traits: {"smithy.api#required" => {}}))
    DescribeMergeConflictsInput.add_member(:merge_option, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeOptionTypeEnum, name: "mergeOption", traits: {"smithy.api#required" => {}}))
    DescribeMergeConflictsInput.add_member(:max_merge_hunks, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxMergeHunks"))
    DescribeMergeConflictsInput.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "filePath", traits: {"smithy.api#required" => {}}))
    DescribeMergeConflictsInput.add_member(:conflict_detail_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictDetailLevelTypeEnum, name: "conflictDetailLevel"))
    DescribeMergeConflictsInput.add_member(:conflict_resolution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolutionStrategyTypeEnum, name: "conflictResolutionStrategy"))
    DescribeMergeConflictsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeMergeConflictsInput.type = Types::DescribeMergeConflictsInput
    DescribeMergeConflictsOutput.add_member(:conflict_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictMetadata, name: "conflictMetadata", traits: {"smithy.api#required" => {}}))
    DescribeMergeConflictsOutput.add_member(:merge_hunks, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeHunks, name: "mergeHunks", traits: {"smithy.api#required" => {}}))
    DescribeMergeConflictsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribeMergeConflictsOutput.add_member(:destination_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "destinationCommitId", traits: {"smithy.api#required" => {}}))
    DescribeMergeConflictsOutput.add_member(:source_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "sourceCommitId", traits: {"smithy.api#required" => {}}))
    DescribeMergeConflictsOutput.add_member(:base_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "baseCommitId"))
    DescribeMergeConflictsOutput.type = Types::DescribeMergeConflictsOutput
    DescribePullRequestEventsInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    DescribePullRequestEventsInput.add_member(:pull_request_event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestEventType, name: "pullRequestEventType"))
    DescribePullRequestEventsInput.add_member(:actor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "actorArn"))
    DescribePullRequestEventsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribePullRequestEventsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    DescribePullRequestEventsInput.type = Types::DescribePullRequestEventsInput
    DescribePullRequestEventsOutput.add_member(:pull_request_events, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestEventList, name: "pullRequestEvents", traits: {"smithy.api#required" => {}}))
    DescribePullRequestEventsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    DescribePullRequestEventsOutput.type = Types::DescribePullRequestEventsOutput
    DiffChange.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DiffChangeType, name: "type"))
    DiffChange.add_member(:before_line_number, ::Smithy::Schema::Shapes::MemberShape.new(target: LineNumber, name: "beforeLineNumber"))
    DiffChange.add_member(:after_line_number, ::Smithy::Schema::Shapes::MemberShape.new(target: LineNumber, name: "afterLineNumber"))
    DiffChange.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: LineContent, name: "content"))
    DiffChange.type = Types::DiffChange
    DiffChangeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DiffChange, name: "member"))
    DiffChangeType.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTEXT", traits: {"smithy.api#enumValue" => "CONTEXT"}))
    DiffChangeType.add_member(:add, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADD", traits: {"smithy.api#enumValue" => "ADD"}))
    DiffChangeType.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    DiffHunk.add_member(:before_start_line, ::Smithy::Schema::Shapes::MemberShape.new(target: LineNumber, name: "beforeStartLine"))
    DiffHunk.add_member(:before_line_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "beforeLineCount"))
    DiffHunk.add_member(:after_start_line, ::Smithy::Schema::Shapes::MemberShape.new(target: LineNumber, name: "afterStartLine"))
    DiffHunk.add_member(:after_line_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "afterLineCount"))
    DiffHunk.add_member(:changes, ::Smithy::Schema::Shapes::MemberShape.new(target: DiffChangeList, name: "changes"))
    DiffHunk.type = Types::DiffHunk
    DiffHunkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DiffHunk, name: "member"))
    Difference.add_member(:before_blob, ::Smithy::Schema::Shapes::MemberShape.new(target: BlobMetadata, name: "beforeBlob"))
    Difference.add_member(:after_blob, ::Smithy::Schema::Shapes::MemberShape.new(target: BlobMetadata, name: "afterBlob"))
    Difference.add_member(:change_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeTypeEnum, name: "changeType"))
    Difference.type = Types::Difference
    DifferenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Difference, name: "member"))
    DirectoryNameConflictsWithFileNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    DirectoryNameConflictsWithFileNameException.type = Types::DirectoryNameConflictsWithFileNameException
    DisassociateApprovalRuleTemplateFromRepositoryInput.add_member(:approval_rule_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateName, name: "approvalRuleTemplateName", traits: {"smithy.api#required" => {}}))
    DisassociateApprovalRuleTemplateFromRepositoryInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    DisassociateApprovalRuleTemplateFromRepositoryInput.type = Types::DisassociateApprovalRuleTemplateFromRepositoryInput
    EncryptionIntegrityChecksFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    EncryptionIntegrityChecksFailedException.type = Types::EncryptionIntegrityChecksFailedException
    EncryptionKeyAccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    EncryptionKeyAccessDeniedException.type = Types::EncryptionKeyAccessDeniedException
    EncryptionKeyDisabledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    EncryptionKeyDisabledException.type = Types::EncryptionKeyDisabledException
    EncryptionKeyInvalidIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    EncryptionKeyInvalidIdException.type = Types::EncryptionKeyInvalidIdException
    EncryptionKeyInvalidUsageException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    EncryptionKeyInvalidUsageException.type = Types::EncryptionKeyInvalidUsageException
    EncryptionKeyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    EncryptionKeyNotFoundException.type = Types::EncryptionKeyNotFoundException
    EncryptionKeyRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    EncryptionKeyRequiredException.type = Types::EncryptionKeyRequiredException
    EncryptionKeyUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    EncryptionKeyUnavailableException.type = Types::EncryptionKeyUnavailableException
    EvaluatePullRequestApprovalRulesInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    EvaluatePullRequestApprovalRulesInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId", traits: {"smithy.api#required" => {}}))
    EvaluatePullRequestApprovalRulesInput.type = Types::EvaluatePullRequestApprovalRulesInput
    EvaluatePullRequestApprovalRulesOutput.add_member(:evaluation, ::Smithy::Schema::Shapes::MemberShape.new(target: Evaluation, name: "evaluation", traits: {"smithy.api#required" => {}}))
    EvaluatePullRequestApprovalRulesOutput.type = Types::EvaluatePullRequestApprovalRulesOutput
    Evaluation.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: Approved, name: "approved", traits: {"smithy.api#default" => false}))
    Evaluation.add_member(:overridden, ::Smithy::Schema::Shapes::MemberShape.new(target: Overridden, name: "overridden", traits: {"smithy.api#default" => false}))
    Evaluation.add_member(:approval_rules_satisfied, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRulesSatisfiedList, name: "approvalRulesSatisfied"))
    Evaluation.add_member(:approval_rules_not_satisfied, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRulesNotSatisfiedList, name: "approvalRulesNotSatisfied"))
    Evaluation.type = Types::Evaluation
    File.add_member(:blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "blobId"))
    File.add_member(:absolute_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "absolutePath"))
    File.add_member(:relative_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "relativePath"))
    File.add_member(:file_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FileModeTypeEnum, name: "fileMode"))
    File.type = Types::File
    FileContentAndSourceFileSpecifiedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    FileContentAndSourceFileSpecifiedException.type = Types::FileContentAndSourceFileSpecifiedException
    FileContentRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    FileContentRequiredException.type = Types::FileContentRequiredException
    FileContentSizeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    FileContentSizeLimitExceededException.type = Types::FileContentSizeLimitExceededException
    FileDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    FileDoesNotExistException.type = Types::FileDoesNotExistException
    FileEntryRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    FileEntryRequiredException.type = Types::FileEntryRequiredException
    FileList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: File, name: "member"))
    FileMetadata.add_member(:absolute_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "absolutePath"))
    FileMetadata.add_member(:blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "blobId"))
    FileMetadata.add_member(:file_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FileModeTypeEnum, name: "fileMode"))
    FileMetadata.type = Types::FileMetadata
    FileModeRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    FileModeRequiredException.type = Types::FileModeRequiredException
    FileModeTypeEnum.add_member(:executable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTABLE", traits: {"smithy.api#enumValue" => "EXECUTABLE"}))
    FileModeTypeEnum.add_member(:normal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NORMAL", traits: {"smithy.api#enumValue" => "NORMAL"}))
    FileModeTypeEnum.add_member(:symlink, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYMLINK", traits: {"smithy.api#enumValue" => "SYMLINK"}))
    FileModes.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: FileModeTypeEnum, name: "source"))
    FileModes.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: FileModeTypeEnum, name: "destination"))
    FileModes.add_member(:base, ::Smithy::Schema::Shapes::MemberShape.new(target: FileModeTypeEnum, name: "base"))
    FileModes.type = Types::FileModes
    FileNameConflictsWithDirectoryNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    FileNameConflictsWithDirectoryNameException.type = Types::FileNameConflictsWithDirectoryNameException
    FilePathConflictsWithSubmodulePathException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    FilePathConflictsWithSubmodulePathException.type = Types::FilePathConflictsWithSubmodulePathException
    FilePaths.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "member"))
    FileSizes.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSize, name: "source", traits: {"smithy.api#default" => 0}))
    FileSizes.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSize, name: "destination", traits: {"smithy.api#default" => 0}))
    FileSizes.add_member(:base, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSize, name: "base", traits: {"smithy.api#default" => 0}))
    FileSizes.type = Types::FileSizes
    FileTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    FileTooLargeException.type = Types::FileTooLargeException
    FileVersion.add_member(:commit, ::Smithy::Schema::Shapes::MemberShape.new(target: Commit, name: "commit"))
    FileVersion.add_member(:blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "blobId"))
    FileVersion.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "path"))
    FileVersion.add_member(:revision_children, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionChildren, name: "revisionChildren"))
    FileVersion.type = Types::FileVersion
    FilesMetadata.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FileMetadata, name: "member"))
    Folder.add_member(:tree_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "treeId"))
    Folder.add_member(:absolute_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "absolutePath"))
    Folder.add_member(:relative_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "relativePath"))
    Folder.type = Types::Folder
    FolderContentSizeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    FolderContentSizeLimitExceededException.type = Types::FolderContentSizeLimitExceededException
    FolderDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    FolderDoesNotExistException.type = Types::FolderDoesNotExistException
    FolderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Folder, name: "member"))
    GetApprovalRuleTemplateInput.add_member(:approval_rule_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateName, name: "approvalRuleTemplateName", traits: {"smithy.api#required" => {}}))
    GetApprovalRuleTemplateInput.type = Types::GetApprovalRuleTemplateInput
    GetApprovalRuleTemplateOutput.add_member(:approval_rule_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplate, name: "approvalRuleTemplate", traits: {"smithy.api#required" => {}}))
    GetApprovalRuleTemplateOutput.type = Types::GetApprovalRuleTemplateOutput
    GetBlobDifferencesInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetBlobDifferencesInput.add_member(:after_blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "afterBlobId", traits: {"smithy.api#required" => {}}))
    GetBlobDifferencesInput.add_member(:before_blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "beforeBlobId"))
    GetBlobDifferencesInput.add_member(:context_lines, ::Smithy::Schema::Shapes::MemberShape.new(target: DiffContext, name: "contextLines"))
    GetBlobDifferencesInput.add_member(:ignore_whitespace, ::Smithy::Schema::Shapes::MemberShape.new(target: IgnoreWhiteSpaces, name: "ignoreWhitespace"))
    GetBlobDifferencesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "MaxResults"))
    GetBlobDifferencesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetBlobDifferencesInput.type = Types::GetBlobDifferencesInput
    GetBlobDifferencesOutput.add_member(:hunks, ::Smithy::Schema::Shapes::MemberShape.new(target: DiffHunkList, name: "hunks", traits: {"smithy.api#required" => {}}))
    GetBlobDifferencesOutput.add_member(:is_binary, ::Smithy::Schema::Shapes::MemberShape.new(target: CapitalBoolean, name: "isBinary", traits: {"smithy.api#required" => {}}))
    GetBlobDifferencesOutput.add_member(:before_blob_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSize, name: "beforeBlobSize", traits: {"smithy.api#default" => 0}))
    GetBlobDifferencesOutput.add_member(:after_blob_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSize, name: "afterBlobSize", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    GetBlobDifferencesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetBlobDifferencesOutput.type = Types::GetBlobDifferencesOutput
    GetBlobInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetBlobInput.add_member(:blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "blobId", traits: {"smithy.api#required" => {}}))
    GetBlobInput.type = Types::GetBlobInput
    GetBlobOutput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Blob, name: "content", traits: {"smithy.api#required" => {}}))
    GetBlobOutput.type = Types::GetBlobOutput
    GetBranchInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    GetBranchInput.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "branchName"))
    GetBranchInput.type = Types::GetBranchInput
    GetBranchOutput.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchInfo, name: "branch"))
    GetBranchOutput.type = Types::GetBranchOutput
    GetCommentInput.add_member(:comment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentId, name: "commentId", traits: {"smithy.api#required" => {}}))
    GetCommentInput.type = Types::GetCommentInput
    GetCommentOutput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Comment, name: "comment"))
    GetCommentOutput.type = Types::GetCommentOutput
    GetCommentReactionsInput.add_member(:comment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentId, name: "commentId", traits: {"smithy.api#required" => {}}))
    GetCommentReactionsInput.add_member(:reaction_user_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "reactionUserArn"))
    GetCommentReactionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetCommentReactionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetCommentReactionsInput.type = Types::GetCommentReactionsInput
    GetCommentReactionsOutput.add_member(:reactions_for_comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactionsForCommentList, name: "reactionsForComment", traits: {"smithy.api#required" => {}}))
    GetCommentReactionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetCommentReactionsOutput.type = Types::GetCommentReactionsOutput
    GetCommentsForComparedCommitInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetCommentsForComparedCommitInput.add_member(:before_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "beforeCommitId"))
    GetCommentsForComparedCommitInput.add_member(:after_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "afterCommitId", traits: {"smithy.api#required" => {}}))
    GetCommentsForComparedCommitInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetCommentsForComparedCommitInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetCommentsForComparedCommitInput.type = Types::GetCommentsForComparedCommitInput
    GetCommentsForComparedCommitOutput.add_member(:comments_for_compared_commit_data, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentsForComparedCommitData, name: "commentsForComparedCommitData"))
    GetCommentsForComparedCommitOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetCommentsForComparedCommitOutput.type = Types::GetCommentsForComparedCommitOutput
    GetCommentsForPullRequestInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    GetCommentsForPullRequestInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    GetCommentsForPullRequestInput.add_member(:before_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "beforeCommitId"))
    GetCommentsForPullRequestInput.add_member(:after_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "afterCommitId"))
    GetCommentsForPullRequestInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetCommentsForPullRequestInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    GetCommentsForPullRequestInput.type = Types::GetCommentsForPullRequestInput
    GetCommentsForPullRequestOutput.add_member(:comments_for_pull_request_data, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentsForPullRequestData, name: "commentsForPullRequestData"))
    GetCommentsForPullRequestOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetCommentsForPullRequestOutput.type = Types::GetCommentsForPullRequestOutput
    GetCommitInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetCommitInput.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "commitId", traits: {"smithy.api#required" => {}}))
    GetCommitInput.type = Types::GetCommitInput
    GetCommitOutput.add_member(:commit, ::Smithy::Schema::Shapes::MemberShape.new(target: Commit, name: "commit", traits: {"smithy.api#required" => {}}))
    GetCommitOutput.type = Types::GetCommitOutput
    GetDifferencesInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetDifferencesInput.add_member(:before_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "beforeCommitSpecifier"))
    GetDifferencesInput.add_member(:after_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "afterCommitSpecifier", traits: {"smithy.api#required" => {}}))
    GetDifferencesInput.add_member(:before_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "beforePath"))
    GetDifferencesInput.add_member(:after_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "afterPath"))
    GetDifferencesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "MaxResults"))
    GetDifferencesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetDifferencesInput.type = Types::GetDifferencesInput
    GetDifferencesOutput.add_member(:differences, ::Smithy::Schema::Shapes::MemberShape.new(target: DifferenceList, name: "differences"))
    GetDifferencesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetDifferencesOutput.type = Types::GetDifferencesOutput
    GetFileInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetFileInput.add_member(:commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "commitSpecifier"))
    GetFileInput.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "filePath", traits: {"smithy.api#required" => {}}))
    GetFileInput.type = Types::GetFileInput
    GetFileOutput.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "commitId", traits: {"smithy.api#required" => {}}))
    GetFileOutput.add_member(:blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "blobId", traits: {"smithy.api#required" => {}}))
    GetFileOutput.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "filePath", traits: {"smithy.api#required" => {}}))
    GetFileOutput.add_member(:file_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FileModeTypeEnum, name: "fileMode", traits: {"smithy.api#required" => {}}))
    GetFileOutput.add_member(:file_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSize, name: "fileSize", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    GetFileOutput.add_member(:file_content, ::Smithy::Schema::Shapes::MemberShape.new(target: FileContent, name: "fileContent", traits: {"smithy.api#required" => {}}))
    GetFileOutput.type = Types::GetFileOutput
    GetFolderInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetFolderInput.add_member(:commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "commitSpecifier"))
    GetFolderInput.add_member(:folder_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "folderPath", traits: {"smithy.api#required" => {}}))
    GetFolderInput.type = Types::GetFolderInput
    GetFolderOutput.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "commitId", traits: {"smithy.api#required" => {}}))
    GetFolderOutput.add_member(:folder_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "folderPath", traits: {"smithy.api#required" => {}}))
    GetFolderOutput.add_member(:tree_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "treeId"))
    GetFolderOutput.add_member(:sub_folders, ::Smithy::Schema::Shapes::MemberShape.new(target: FolderList, name: "subFolders"))
    GetFolderOutput.add_member(:files, ::Smithy::Schema::Shapes::MemberShape.new(target: FileList, name: "files"))
    GetFolderOutput.add_member(:symbolic_links, ::Smithy::Schema::Shapes::MemberShape.new(target: SymbolicLinkList, name: "symbolicLinks"))
    GetFolderOutput.add_member(:sub_modules, ::Smithy::Schema::Shapes::MemberShape.new(target: SubModuleList, name: "subModules"))
    GetFolderOutput.type = Types::GetFolderOutput
    GetMergeCommitInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetMergeCommitInput.add_member(:source_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "sourceCommitSpecifier", traits: {"smithy.api#required" => {}}))
    GetMergeCommitInput.add_member(:destination_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "destinationCommitSpecifier", traits: {"smithy.api#required" => {}}))
    GetMergeCommitInput.add_member(:conflict_detail_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictDetailLevelTypeEnum, name: "conflictDetailLevel"))
    GetMergeCommitInput.add_member(:conflict_resolution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolutionStrategyTypeEnum, name: "conflictResolutionStrategy"))
    GetMergeCommitInput.type = Types::GetMergeCommitInput
    GetMergeCommitOutput.add_member(:source_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "sourceCommitId"))
    GetMergeCommitOutput.add_member(:destination_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "destinationCommitId"))
    GetMergeCommitOutput.add_member(:base_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "baseCommitId"))
    GetMergeCommitOutput.add_member(:merged_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "mergedCommitId"))
    GetMergeCommitOutput.type = Types::GetMergeCommitOutput
    GetMergeConflictsInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetMergeConflictsInput.add_member(:destination_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "destinationCommitSpecifier", traits: {"smithy.api#required" => {}}))
    GetMergeConflictsInput.add_member(:source_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "sourceCommitSpecifier", traits: {"smithy.api#required" => {}}))
    GetMergeConflictsInput.add_member(:merge_option, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeOptionTypeEnum, name: "mergeOption", traits: {"smithy.api#required" => {}}))
    GetMergeConflictsInput.add_member(:conflict_detail_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictDetailLevelTypeEnum, name: "conflictDetailLevel"))
    GetMergeConflictsInput.add_member(:max_conflict_files, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxConflictFiles"))
    GetMergeConflictsInput.add_member(:conflict_resolution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolutionStrategyTypeEnum, name: "conflictResolutionStrategy"))
    GetMergeConflictsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetMergeConflictsInput.type = Types::GetMergeConflictsInput
    GetMergeConflictsOutput.add_member(:mergeable, ::Smithy::Schema::Shapes::MemberShape.new(target: IsMergeable, name: "mergeable", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    GetMergeConflictsOutput.add_member(:destination_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "destinationCommitId", traits: {"smithy.api#required" => {}}))
    GetMergeConflictsOutput.add_member(:source_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "sourceCommitId", traits: {"smithy.api#required" => {}}))
    GetMergeConflictsOutput.add_member(:base_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "baseCommitId"))
    GetMergeConflictsOutput.add_member(:conflict_metadata_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictMetadataList, name: "conflictMetadataList", traits: {"smithy.api#required" => {}}))
    GetMergeConflictsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    GetMergeConflictsOutput.type = Types::GetMergeConflictsOutput
    GetMergeOptionsInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetMergeOptionsInput.add_member(:source_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "sourceCommitSpecifier", traits: {"smithy.api#required" => {}}))
    GetMergeOptionsInput.add_member(:destination_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "destinationCommitSpecifier", traits: {"smithy.api#required" => {}}))
    GetMergeOptionsInput.add_member(:conflict_detail_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictDetailLevelTypeEnum, name: "conflictDetailLevel"))
    GetMergeOptionsInput.add_member(:conflict_resolution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolutionStrategyTypeEnum, name: "conflictResolutionStrategy"))
    GetMergeOptionsInput.type = Types::GetMergeOptionsInput
    GetMergeOptionsOutput.add_member(:merge_options, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeOptions, name: "mergeOptions", traits: {"smithy.api#required" => {}}))
    GetMergeOptionsOutput.add_member(:source_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "sourceCommitId", traits: {"smithy.api#required" => {}}))
    GetMergeOptionsOutput.add_member(:destination_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "destinationCommitId", traits: {"smithy.api#required" => {}}))
    GetMergeOptionsOutput.add_member(:base_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "baseCommitId", traits: {"smithy.api#required" => {}}))
    GetMergeOptionsOutput.type = Types::GetMergeOptionsOutput
    GetPullRequestApprovalStatesInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    GetPullRequestApprovalStatesInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId", traits: {"smithy.api#required" => {}}))
    GetPullRequestApprovalStatesInput.type = Types::GetPullRequestApprovalStatesInput
    GetPullRequestApprovalStatesOutput.add_member(:approvals, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalList, name: "approvals"))
    GetPullRequestApprovalStatesOutput.type = Types::GetPullRequestApprovalStatesOutput
    GetPullRequestInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    GetPullRequestInput.type = Types::GetPullRequestInput
    GetPullRequestOutput.add_member(:pull_request, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequest, name: "pullRequest", traits: {"smithy.api#required" => {}}))
    GetPullRequestOutput.type = Types::GetPullRequestOutput
    GetPullRequestOverrideStateInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    GetPullRequestOverrideStateInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId", traits: {"smithy.api#required" => {}}))
    GetPullRequestOverrideStateInput.type = Types::GetPullRequestOverrideStateInput
    GetPullRequestOverrideStateOutput.add_member(:overridden, ::Smithy::Schema::Shapes::MemberShape.new(target: Overridden, name: "overridden", traits: {"smithy.api#default" => false}))
    GetPullRequestOverrideStateOutput.add_member(:overrider, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "overrider"))
    GetPullRequestOverrideStateOutput.type = Types::GetPullRequestOverrideStateOutput
    GetRepositoryInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetRepositoryInput.type = Types::GetRepositoryInput
    GetRepositoryOutput.add_member(:repository_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryMetadata, name: "repositoryMetadata"))
    GetRepositoryOutput.type = Types::GetRepositoryOutput
    GetRepositoryTriggersInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    GetRepositoryTriggersInput.type = Types::GetRepositoryTriggersInput
    GetRepositoryTriggersOutput.add_member(:configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTriggersConfigurationId, name: "configurationId"))
    GetRepositoryTriggersOutput.add_member(:triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTriggersList, name: "triggers"))
    GetRepositoryTriggersOutput.type = Types::GetRepositoryTriggersOutput
    IdempotencyParameterMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    IdempotencyParameterMismatchException.type = Types::IdempotencyParameterMismatchException
    InvalidActorArnException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidActorArnException.type = Types::InvalidActorArnException
    InvalidApprovalRuleContentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidApprovalRuleContentException.type = Types::InvalidApprovalRuleContentException
    InvalidApprovalRuleNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidApprovalRuleNameException.type = Types::InvalidApprovalRuleNameException
    InvalidApprovalRuleTemplateContentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidApprovalRuleTemplateContentException.type = Types::InvalidApprovalRuleTemplateContentException
    InvalidApprovalRuleTemplateDescriptionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidApprovalRuleTemplateDescriptionException.type = Types::InvalidApprovalRuleTemplateDescriptionException
    InvalidApprovalRuleTemplateNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidApprovalRuleTemplateNameException.type = Types::InvalidApprovalRuleTemplateNameException
    InvalidApprovalStateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidApprovalStateException.type = Types::InvalidApprovalStateException
    InvalidAuthorArnException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidAuthorArnException.type = Types::InvalidAuthorArnException
    InvalidBlobIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidBlobIdException.type = Types::InvalidBlobIdException
    InvalidBranchNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidBranchNameException.type = Types::InvalidBranchNameException
    InvalidClientRequestTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidClientRequestTokenException.type = Types::InvalidClientRequestTokenException
    InvalidCommentIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidCommentIdException.type = Types::InvalidCommentIdException
    InvalidCommitException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidCommitException.type = Types::InvalidCommitException
    InvalidCommitIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidCommitIdException.type = Types::InvalidCommitIdException
    InvalidConflictDetailLevelException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidConflictDetailLevelException.type = Types::InvalidConflictDetailLevelException
    InvalidConflictResolutionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidConflictResolutionException.type = Types::InvalidConflictResolutionException
    InvalidConflictResolutionStrategyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidConflictResolutionStrategyException.type = Types::InvalidConflictResolutionStrategyException
    InvalidContinuationTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidContinuationTokenException.type = Types::InvalidContinuationTokenException
    InvalidDeletionParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidDeletionParameterException.type = Types::InvalidDeletionParameterException
    InvalidDescriptionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidDescriptionException.type = Types::InvalidDescriptionException
    InvalidDestinationCommitSpecifierException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidDestinationCommitSpecifierException.type = Types::InvalidDestinationCommitSpecifierException
    InvalidEmailException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidEmailException.type = Types::InvalidEmailException
    InvalidFileLocationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidFileLocationException.type = Types::InvalidFileLocationException
    InvalidFileModeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidFileModeException.type = Types::InvalidFileModeException
    InvalidFilePositionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidFilePositionException.type = Types::InvalidFilePositionException
    InvalidMaxConflictFilesException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidMaxConflictFilesException.type = Types::InvalidMaxConflictFilesException
    InvalidMaxMergeHunksException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidMaxMergeHunksException.type = Types::InvalidMaxMergeHunksException
    InvalidMaxResultsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidMaxResultsException.type = Types::InvalidMaxResultsException
    InvalidMergeOptionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidMergeOptionException.type = Types::InvalidMergeOptionException
    InvalidOrderException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidOrderException.type = Types::InvalidOrderException
    InvalidOverrideStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidOverrideStatusException.type = Types::InvalidOverrideStatusException
    InvalidParentCommitIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidParentCommitIdException.type = Types::InvalidParentCommitIdException
    InvalidPathException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidPathException.type = Types::InvalidPathException
    InvalidPullRequestEventTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidPullRequestEventTypeException.type = Types::InvalidPullRequestEventTypeException
    InvalidPullRequestIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidPullRequestIdException.type = Types::InvalidPullRequestIdException
    InvalidPullRequestStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidPullRequestStatusException.type = Types::InvalidPullRequestStatusException
    InvalidPullRequestStatusUpdateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidPullRequestStatusUpdateException.type = Types::InvalidPullRequestStatusUpdateException
    InvalidReactionUserArnException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidReactionUserArnException.type = Types::InvalidReactionUserArnException
    InvalidReactionValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidReactionValueException.type = Types::InvalidReactionValueException
    InvalidReferenceNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidReferenceNameException.type = Types::InvalidReferenceNameException
    InvalidRelativeFileVersionEnumException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidRelativeFileVersionEnumException.type = Types::InvalidRelativeFileVersionEnumException
    InvalidReplacementContentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidReplacementContentException.type = Types::InvalidReplacementContentException
    InvalidReplacementTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidReplacementTypeException.type = Types::InvalidReplacementTypeException
    InvalidRepositoryDescriptionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidRepositoryDescriptionException.type = Types::InvalidRepositoryDescriptionException
    InvalidRepositoryNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidRepositoryNameException.type = Types::InvalidRepositoryNameException
    InvalidRepositoryTriggerBranchNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidRepositoryTriggerBranchNameException.type = Types::InvalidRepositoryTriggerBranchNameException
    InvalidRepositoryTriggerCustomDataException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidRepositoryTriggerCustomDataException.type = Types::InvalidRepositoryTriggerCustomDataException
    InvalidRepositoryTriggerDestinationArnException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidRepositoryTriggerDestinationArnException.type = Types::InvalidRepositoryTriggerDestinationArnException
    InvalidRepositoryTriggerEventsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidRepositoryTriggerEventsException.type = Types::InvalidRepositoryTriggerEventsException
    InvalidRepositoryTriggerNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidRepositoryTriggerNameException.type = Types::InvalidRepositoryTriggerNameException
    InvalidRepositoryTriggerRegionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidRepositoryTriggerRegionException.type = Types::InvalidRepositoryTriggerRegionException
    InvalidResourceArnException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidResourceArnException.type = Types::InvalidResourceArnException
    InvalidRevisionIdException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidRevisionIdException.type = Types::InvalidRevisionIdException
    InvalidRuleContentSha256Exception.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidRuleContentSha256Exception.type = Types::InvalidRuleContentSha256Exception
    InvalidSortByException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidSortByException.type = Types::InvalidSortByException
    InvalidSourceCommitSpecifierException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidSourceCommitSpecifierException.type = Types::InvalidSourceCommitSpecifierException
    InvalidSystemTagUsageException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidSystemTagUsageException.type = Types::InvalidSystemTagUsageException
    InvalidTagKeysListException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidTagKeysListException.type = Types::InvalidTagKeysListException
    InvalidTagsMapException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidTagsMapException.type = Types::InvalidTagsMapException
    InvalidTargetBranchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidTargetBranchException.type = Types::InvalidTargetBranchException
    InvalidTargetException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidTargetException.type = Types::InvalidTargetException
    InvalidTargetsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidTargetsException.type = Types::InvalidTargetsException
    InvalidTitleException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InvalidTitleException.type = Types::InvalidTitleException
    IsBinaryFile.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: CapitalBoolean, name: "source"))
    IsBinaryFile.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CapitalBoolean, name: "destination"))
    IsBinaryFile.add_member(:base, ::Smithy::Schema::Shapes::MemberShape.new(target: CapitalBoolean, name: "base"))
    IsBinaryFile.type = Types::IsBinaryFile
    ListApprovalRuleTemplatesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListApprovalRuleTemplatesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListApprovalRuleTemplatesInput.type = Types::ListApprovalRuleTemplatesInput
    ListApprovalRuleTemplatesOutput.add_member(:approval_rule_template_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateNameList, name: "approvalRuleTemplateNames"))
    ListApprovalRuleTemplatesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListApprovalRuleTemplatesOutput.type = Types::ListApprovalRuleTemplatesOutput
    ListAssociatedApprovalRuleTemplatesForRepositoryInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    ListAssociatedApprovalRuleTemplatesForRepositoryInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssociatedApprovalRuleTemplatesForRepositoryInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAssociatedApprovalRuleTemplatesForRepositoryInput.type = Types::ListAssociatedApprovalRuleTemplatesForRepositoryInput
    ListAssociatedApprovalRuleTemplatesForRepositoryOutput.add_member(:approval_rule_template_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateNameList, name: "approvalRuleTemplateNames"))
    ListAssociatedApprovalRuleTemplatesForRepositoryOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAssociatedApprovalRuleTemplatesForRepositoryOutput.type = Types::ListAssociatedApprovalRuleTemplatesForRepositoryOutput
    ListBranchesInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    ListBranchesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBranchesInput.type = Types::ListBranchesInput
    ListBranchesOutput.add_member(:branches, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchNameList, name: "branches"))
    ListBranchesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListBranchesOutput.type = Types::ListBranchesOutput
    ListFileCommitHistoryRequest.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    ListFileCommitHistoryRequest.add_member(:commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "commitSpecifier"))
    ListFileCommitHistoryRequest.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "filePath", traits: {"smithy.api#required" => {}}))
    ListFileCommitHistoryRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Limit, name: "maxResults"))
    ListFileCommitHistoryRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFileCommitHistoryRequest.type = Types::ListFileCommitHistoryRequest
    ListFileCommitHistoryResponse.add_member(:revision_dag, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionDag, name: "revisionDag", traits: {"smithy.api#required" => {}}))
    ListFileCommitHistoryResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFileCommitHistoryResponse.type = Types::ListFileCommitHistoryResponse
    ListPullRequestsInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    ListPullRequestsInput.add_member(:author_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "authorArn"))
    ListPullRequestsInput.add_member(:pull_request_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestStatusEnum, name: "pullRequestStatus"))
    ListPullRequestsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPullRequestsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListPullRequestsInput.type = Types::ListPullRequestsInput
    ListPullRequestsOutput.add_member(:pull_request_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestIdList, name: "pullRequestIds", traits: {"smithy.api#required" => {}}))
    ListPullRequestsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPullRequestsOutput.type = Types::ListPullRequestsOutput
    ListRepositoriesForApprovalRuleTemplateInput.add_member(:approval_rule_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateName, name: "approvalRuleTemplateName", traits: {"smithy.api#required" => {}}))
    ListRepositoriesForApprovalRuleTemplateInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRepositoriesForApprovalRuleTemplateInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListRepositoriesForApprovalRuleTemplateInput.type = Types::ListRepositoriesForApprovalRuleTemplateInput
    ListRepositoriesForApprovalRuleTemplateOutput.add_member(:repository_names, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryNameList, name: "repositoryNames"))
    ListRepositoriesForApprovalRuleTemplateOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRepositoriesForApprovalRuleTemplateOutput.type = Types::ListRepositoriesForApprovalRuleTemplateOutput
    ListRepositoriesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRepositoriesInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SortByEnum, name: "sortBy"))
    ListRepositoriesInput.add_member(:order, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderEnum, name: "order"))
    ListRepositoriesInput.type = Types::ListRepositoriesInput
    ListRepositoriesOutput.add_member(:repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryNameIdPairList, name: "repositories"))
    ListRepositoriesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListRepositoriesOutput.type = Types::ListRepositoriesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ListTagsForResourceOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    Location.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "filePath"))
    Location.add_member(:file_position, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "filePosition"))
    Location.add_member(:relative_file_version, ::Smithy::Schema::Shapes::MemberShape.new(target: RelativeFileVersionEnum, name: "relativeFileVersion"))
    Location.type = Types::Location
    ManualMergeRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ManualMergeRequiredException.type = Types::ManualMergeRequiredException
    MaximumBranchesExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    MaximumBranchesExceededException.type = Types::MaximumBranchesExceededException
    MaximumConflictResolutionEntriesExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    MaximumConflictResolutionEntriesExceededException.type = Types::MaximumConflictResolutionEntriesExceededException
    MaximumFileContentToLoadExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    MaximumFileContentToLoadExceededException.type = Types::MaximumFileContentToLoadExceededException
    MaximumFileEntriesExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    MaximumFileEntriesExceededException.type = Types::MaximumFileEntriesExceededException
    MaximumItemsToCompareExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    MaximumItemsToCompareExceededException.type = Types::MaximumItemsToCompareExceededException
    MaximumNumberOfApprovalsExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    MaximumNumberOfApprovalsExceededException.type = Types::MaximumNumberOfApprovalsExceededException
    MaximumOpenPullRequestsExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    MaximumOpenPullRequestsExceededException.type = Types::MaximumOpenPullRequestsExceededException
    MaximumRepositoryNamesExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    MaximumRepositoryNamesExceededException.type = Types::MaximumRepositoryNamesExceededException
    MaximumRepositoryTriggersExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    MaximumRepositoryTriggersExceededException.type = Types::MaximumRepositoryTriggersExceededException
    MaximumRuleTemplatesAssociatedWithRepositoryException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    MaximumRuleTemplatesAssociatedWithRepositoryException.type = Types::MaximumRuleTemplatesAssociatedWithRepositoryException
    MergeBranchesByFastForwardInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    MergeBranchesByFastForwardInput.add_member(:source_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "sourceCommitSpecifier", traits: {"smithy.api#required" => {}}))
    MergeBranchesByFastForwardInput.add_member(:destination_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "destinationCommitSpecifier", traits: {"smithy.api#required" => {}}))
    MergeBranchesByFastForwardInput.add_member(:target_branch, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "targetBranch"))
    MergeBranchesByFastForwardInput.type = Types::MergeBranchesByFastForwardInput
    MergeBranchesByFastForwardOutput.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "commitId"))
    MergeBranchesByFastForwardOutput.add_member(:tree_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "treeId"))
    MergeBranchesByFastForwardOutput.type = Types::MergeBranchesByFastForwardOutput
    MergeBranchesBySquashInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    MergeBranchesBySquashInput.add_member(:source_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "sourceCommitSpecifier", traits: {"smithy.api#required" => {}}))
    MergeBranchesBySquashInput.add_member(:destination_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "destinationCommitSpecifier", traits: {"smithy.api#required" => {}}))
    MergeBranchesBySquashInput.add_member(:target_branch, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "targetBranch"))
    MergeBranchesBySquashInput.add_member(:conflict_detail_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictDetailLevelTypeEnum, name: "conflictDetailLevel"))
    MergeBranchesBySquashInput.add_member(:conflict_resolution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolutionStrategyTypeEnum, name: "conflictResolutionStrategy"))
    MergeBranchesBySquashInput.add_member(:author_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "authorName"))
    MergeBranchesBySquashInput.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "email"))
    MergeBranchesBySquashInput.add_member(:commit_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "commitMessage"))
    MergeBranchesBySquashInput.add_member(:keep_empty_folders, ::Smithy::Schema::Shapes::MemberShape.new(target: KeepEmptyFolders, name: "keepEmptyFolders", traits: {"smithy.api#default" => false}))
    MergeBranchesBySquashInput.add_member(:conflict_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolution, name: "conflictResolution"))
    MergeBranchesBySquashInput.type = Types::MergeBranchesBySquashInput
    MergeBranchesBySquashOutput.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "commitId"))
    MergeBranchesBySquashOutput.add_member(:tree_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "treeId"))
    MergeBranchesBySquashOutput.type = Types::MergeBranchesBySquashOutput
    MergeBranchesByThreeWayInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    MergeBranchesByThreeWayInput.add_member(:source_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "sourceCommitSpecifier", traits: {"smithy.api#required" => {}}))
    MergeBranchesByThreeWayInput.add_member(:destination_commit_specifier, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitName, name: "destinationCommitSpecifier", traits: {"smithy.api#required" => {}}))
    MergeBranchesByThreeWayInput.add_member(:target_branch, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "targetBranch"))
    MergeBranchesByThreeWayInput.add_member(:conflict_detail_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictDetailLevelTypeEnum, name: "conflictDetailLevel"))
    MergeBranchesByThreeWayInput.add_member(:conflict_resolution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolutionStrategyTypeEnum, name: "conflictResolutionStrategy"))
    MergeBranchesByThreeWayInput.add_member(:author_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "authorName"))
    MergeBranchesByThreeWayInput.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "email"))
    MergeBranchesByThreeWayInput.add_member(:commit_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "commitMessage"))
    MergeBranchesByThreeWayInput.add_member(:keep_empty_folders, ::Smithy::Schema::Shapes::MemberShape.new(target: KeepEmptyFolders, name: "keepEmptyFolders", traits: {"smithy.api#default" => false}))
    MergeBranchesByThreeWayInput.add_member(:conflict_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolution, name: "conflictResolution"))
    MergeBranchesByThreeWayInput.type = Types::MergeBranchesByThreeWayInput
    MergeBranchesByThreeWayOutput.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "commitId"))
    MergeBranchesByThreeWayOutput.add_member(:tree_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "treeId"))
    MergeBranchesByThreeWayOutput.type = Types::MergeBranchesByThreeWayOutput
    MergeHunk.add_member(:is_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: IsHunkConflict, name: "isConflict", traits: {"smithy.api#default" => false}))
    MergeHunk.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeHunkDetail, name: "source"))
    MergeHunk.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeHunkDetail, name: "destination"))
    MergeHunk.add_member(:base, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeHunkDetail, name: "base"))
    MergeHunk.type = Types::MergeHunk
    MergeHunkDetail.add_member(:start_line, ::Smithy::Schema::Shapes::MemberShape.new(target: LineNumber, name: "startLine"))
    MergeHunkDetail.add_member(:end_line, ::Smithy::Schema::Shapes::MemberShape.new(target: LineNumber, name: "endLine"))
    MergeHunkDetail.add_member(:hunk_content, ::Smithy::Schema::Shapes::MemberShape.new(target: HunkContent, name: "hunkContent"))
    MergeHunkDetail.type = Types::MergeHunkDetail
    MergeHunks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeHunk, name: "member"))
    MergeMetadata.add_member(:is_merged, ::Smithy::Schema::Shapes::MemberShape.new(target: IsMerged, name: "isMerged", traits: {"smithy.api#default" => false}))
    MergeMetadata.add_member(:merged_by, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "mergedBy"))
    MergeMetadata.add_member(:merge_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "mergeCommitId"))
    MergeMetadata.add_member(:merge_option, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeOptionTypeEnum, name: "mergeOption"))
    MergeMetadata.type = Types::MergeMetadata
    MergeOperations.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeTypeEnum, name: "source"))
    MergeOperations.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ChangeTypeEnum, name: "destination"))
    MergeOperations.type = Types::MergeOperations
    MergeOptionRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    MergeOptionRequiredException.type = Types::MergeOptionRequiredException
    MergeOptionTypeEnum.add_member(:fast_forward_merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAST_FORWARD_MERGE", traits: {"smithy.api#enumValue" => "FAST_FORWARD_MERGE"}))
    MergeOptionTypeEnum.add_member(:squash_merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQUASH_MERGE", traits: {"smithy.api#enumValue" => "SQUASH_MERGE"}))
    MergeOptionTypeEnum.add_member(:three_way_merge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THREE_WAY_MERGE", traits: {"smithy.api#enumValue" => "THREE_WAY_MERGE"}))
    MergeOptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeOptionTypeEnum, name: "member"))
    MergePullRequestByFastForwardInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    MergePullRequestByFastForwardInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    MergePullRequestByFastForwardInput.add_member(:source_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "sourceCommitId"))
    MergePullRequestByFastForwardInput.type = Types::MergePullRequestByFastForwardInput
    MergePullRequestByFastForwardOutput.add_member(:pull_request, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequest, name: "pullRequest"))
    MergePullRequestByFastForwardOutput.type = Types::MergePullRequestByFastForwardOutput
    MergePullRequestBySquashInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    MergePullRequestBySquashInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    MergePullRequestBySquashInput.add_member(:source_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "sourceCommitId"))
    MergePullRequestBySquashInput.add_member(:conflict_detail_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictDetailLevelTypeEnum, name: "conflictDetailLevel"))
    MergePullRequestBySquashInput.add_member(:conflict_resolution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolutionStrategyTypeEnum, name: "conflictResolutionStrategy"))
    MergePullRequestBySquashInput.add_member(:commit_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "commitMessage"))
    MergePullRequestBySquashInput.add_member(:author_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "authorName"))
    MergePullRequestBySquashInput.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "email"))
    MergePullRequestBySquashInput.add_member(:keep_empty_folders, ::Smithy::Schema::Shapes::MemberShape.new(target: KeepEmptyFolders, name: "keepEmptyFolders", traits: {"smithy.api#default" => false}))
    MergePullRequestBySquashInput.add_member(:conflict_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolution, name: "conflictResolution"))
    MergePullRequestBySquashInput.type = Types::MergePullRequestBySquashInput
    MergePullRequestBySquashOutput.add_member(:pull_request, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequest, name: "pullRequest"))
    MergePullRequestBySquashOutput.type = Types::MergePullRequestBySquashOutput
    MergePullRequestByThreeWayInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    MergePullRequestByThreeWayInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    MergePullRequestByThreeWayInput.add_member(:source_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "sourceCommitId"))
    MergePullRequestByThreeWayInput.add_member(:conflict_detail_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictDetailLevelTypeEnum, name: "conflictDetailLevel"))
    MergePullRequestByThreeWayInput.add_member(:conflict_resolution_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolutionStrategyTypeEnum, name: "conflictResolutionStrategy"))
    MergePullRequestByThreeWayInput.add_member(:commit_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "commitMessage"))
    MergePullRequestByThreeWayInput.add_member(:author_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "authorName"))
    MergePullRequestByThreeWayInput.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "email"))
    MergePullRequestByThreeWayInput.add_member(:keep_empty_folders, ::Smithy::Schema::Shapes::MemberShape.new(target: KeepEmptyFolders, name: "keepEmptyFolders", traits: {"smithy.api#default" => false}))
    MergePullRequestByThreeWayInput.add_member(:conflict_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictResolution, name: "conflictResolution"))
    MergePullRequestByThreeWayInput.type = Types::MergePullRequestByThreeWayInput
    MergePullRequestByThreeWayOutput.add_member(:pull_request, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequest, name: "pullRequest"))
    MergePullRequestByThreeWayOutput.type = Types::MergePullRequestByThreeWayOutput
    MultipleConflictResolutionEntriesException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    MultipleConflictResolutionEntriesException.type = Types::MultipleConflictResolutionEntriesException
    MultipleRepositoriesInPullRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    MultipleRepositoriesInPullRequestException.type = Types::MultipleRepositoriesInPullRequestException
    NameLengthExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    NameLengthExceededException.type = Types::NameLengthExceededException
    NoChangeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    NoChangeException.type = Types::NoChangeException
    NumberOfRuleTemplatesExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    NumberOfRuleTemplatesExceededException.type = Types::NumberOfRuleTemplatesExceededException
    NumberOfRulesExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    NumberOfRulesExceededException.type = Types::NumberOfRulesExceededException
    ObjectTypeEnum.add_member(:file, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE", traits: {"smithy.api#enumValue" => "FILE"}))
    ObjectTypeEnum.add_member(:directory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECTORY", traits: {"smithy.api#enumValue" => "DIRECTORY"}))
    ObjectTypeEnum.add_member(:git_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIT_LINK", traits: {"smithy.api#enumValue" => "GIT_LINK"}))
    ObjectTypeEnum.add_member(:symbolic_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYMBOLIC_LINK", traits: {"smithy.api#enumValue" => "SYMBOLIC_LINK"}))
    ObjectTypes.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectTypeEnum, name: "source"))
    ObjectTypes.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectTypeEnum, name: "destination"))
    ObjectTypes.add_member(:base, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectTypeEnum, name: "base"))
    ObjectTypes.type = Types::ObjectTypes
    OperationNotAllowedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    OperationNotAllowedException.type = Types::OperationNotAllowedException
    OrderEnum.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ascending"}))
    OrderEnum.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "descending"}))
    OriginApprovalRuleTemplate.add_member(:approval_rule_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateId, name: "approvalRuleTemplateId"))
    OriginApprovalRuleTemplate.add_member(:approval_rule_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateName, name: "approvalRuleTemplateName"))
    OriginApprovalRuleTemplate.type = Types::OriginApprovalRuleTemplate
    OverrideAlreadySetException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    OverrideAlreadySetException.type = Types::OverrideAlreadySetException
    OverridePullRequestApprovalRulesInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    OverridePullRequestApprovalRulesInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId", traits: {"smithy.api#required" => {}}))
    OverridePullRequestApprovalRulesInput.add_member(:override_status, ::Smithy::Schema::Shapes::MemberShape.new(target: OverrideStatus, name: "overrideStatus", traits: {"smithy.api#required" => {}}))
    OverridePullRequestApprovalRulesInput.type = Types::OverridePullRequestApprovalRulesInput
    OverrideStatus.add_member(:override, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERRIDE", traits: {"smithy.api#enumValue" => "OVERRIDE"}))
    OverrideStatus.add_member(:revoke, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVOKE", traits: {"smithy.api#enumValue" => "REVOKE"}))
    OverrideStatusRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    OverrideStatusRequiredException.type = Types::OverrideStatusRequiredException
    ParentCommitDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ParentCommitDoesNotExistException.type = Types::ParentCommitDoesNotExistException
    ParentCommitIdOutdatedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ParentCommitIdOutdatedException.type = Types::ParentCommitIdOutdatedException
    ParentCommitIdRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ParentCommitIdRequiredException.type = Types::ParentCommitIdRequiredException
    ParentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "member"))
    PathDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    PathDoesNotExistException.type = Types::PathDoesNotExistException
    PathRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    PathRequiredException.type = Types::PathRequiredException
    PostCommentForComparedCommitInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    PostCommentForComparedCommitInput.add_member(:before_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "beforeCommitId"))
    PostCommentForComparedCommitInput.add_member(:after_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "afterCommitId", traits: {"smithy.api#required" => {}}))
    PostCommentForComparedCommitInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "location"))
    PostCommentForComparedCommitInput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, name: "content", traits: {"smithy.api#required" => {}}))
    PostCommentForComparedCommitInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    PostCommentForComparedCommitInput.type = Types::PostCommentForComparedCommitInput
    PostCommentForComparedCommitOutput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    PostCommentForComparedCommitOutput.add_member(:before_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "beforeCommitId"))
    PostCommentForComparedCommitOutput.add_member(:after_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "afterCommitId"))
    PostCommentForComparedCommitOutput.add_member(:before_blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "beforeBlobId"))
    PostCommentForComparedCommitOutput.add_member(:after_blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "afterBlobId"))
    PostCommentForComparedCommitOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "location"))
    PostCommentForComparedCommitOutput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Comment, name: "comment"))
    PostCommentForComparedCommitOutput.type = Types::PostCommentForComparedCommitOutput
    PostCommentForPullRequestInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    PostCommentForPullRequestInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    PostCommentForPullRequestInput.add_member(:before_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "beforeCommitId", traits: {"smithy.api#required" => {}}))
    PostCommentForPullRequestInput.add_member(:after_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "afterCommitId", traits: {"smithy.api#required" => {}}))
    PostCommentForPullRequestInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "location"))
    PostCommentForPullRequestInput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, name: "content", traits: {"smithy.api#required" => {}}))
    PostCommentForPullRequestInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    PostCommentForPullRequestInput.type = Types::PostCommentForPullRequestInput
    PostCommentForPullRequestOutput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    PostCommentForPullRequestOutput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId"))
    PostCommentForPullRequestOutput.add_member(:before_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "beforeCommitId"))
    PostCommentForPullRequestOutput.add_member(:after_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "afterCommitId"))
    PostCommentForPullRequestOutput.add_member(:before_blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "beforeBlobId"))
    PostCommentForPullRequestOutput.add_member(:after_blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "afterBlobId"))
    PostCommentForPullRequestOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "location"))
    PostCommentForPullRequestOutput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Comment, name: "comment"))
    PostCommentForPullRequestOutput.type = Types::PostCommentForPullRequestOutput
    PostCommentReplyInput.add_member(:in_reply_to, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentId, name: "inReplyTo", traits: {"smithy.api#required" => {}}))
    PostCommentReplyInput.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "clientRequestToken", traits: {"smithy.api#idempotencyToken" => {}}))
    PostCommentReplyInput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, name: "content", traits: {"smithy.api#required" => {}}))
    PostCommentReplyInput.type = Types::PostCommentReplyInput
    PostCommentReplyOutput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Comment, name: "comment"))
    PostCommentReplyOutput.type = Types::PostCommentReplyOutput
    PullRequest.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId"))
    PullRequest.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: Title, name: "title"))
    PullRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    PullRequest.add_member(:last_activity_date, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedDate, name: "lastActivityDate"))
    PullRequest.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationDate, name: "creationDate"))
    PullRequest.add_member(:pull_request_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestStatusEnum, name: "pullRequestStatus"))
    PullRequest.add_member(:author_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "authorArn"))
    PullRequest.add_member(:pull_request_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestTargetList, name: "pullRequestTargets"))
    PullRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "clientRequestToken"))
    PullRequest.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId"))
    PullRequest.add_member(:approval_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRulesList, name: "approvalRules"))
    PullRequest.type = Types::PullRequest
    PullRequestAlreadyClosedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    PullRequestAlreadyClosedException.type = Types::PullRequestAlreadyClosedException
    PullRequestApprovalRulesNotSatisfiedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    PullRequestApprovalRulesNotSatisfiedException.type = Types::PullRequestApprovalRulesNotSatisfiedException
    PullRequestCannotBeApprovedByAuthorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    PullRequestCannotBeApprovedByAuthorException.type = Types::PullRequestCannotBeApprovedByAuthorException
    PullRequestCreatedEventMetadata.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    PullRequestCreatedEventMetadata.add_member(:source_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "sourceCommitId"))
    PullRequestCreatedEventMetadata.add_member(:destination_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "destinationCommitId"))
    PullRequestCreatedEventMetadata.add_member(:merge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "mergeBase"))
    PullRequestCreatedEventMetadata.type = Types::PullRequestCreatedEventMetadata
    PullRequestDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    PullRequestDoesNotExistException.type = Types::PullRequestDoesNotExistException
    PullRequestEvent.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId"))
    PullRequestEvent.add_member(:event_date, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDate, name: "eventDate"))
    PullRequestEvent.add_member(:pull_request_event_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestEventType, name: "pullRequestEventType"))
    PullRequestEvent.add_member(:actor_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "actorArn"))
    PullRequestEvent.add_member(:pull_request_created_event_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestCreatedEventMetadata, name: "pullRequestCreatedEventMetadata"))
    PullRequestEvent.add_member(:pull_request_status_changed_event_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestStatusChangedEventMetadata, name: "pullRequestStatusChangedEventMetadata"))
    PullRequestEvent.add_member(:pull_request_source_reference_updated_event_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestSourceReferenceUpdatedEventMetadata, name: "pullRequestSourceReferenceUpdatedEventMetadata"))
    PullRequestEvent.add_member(:pull_request_merged_state_changed_event_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestMergedStateChangedEventMetadata, name: "pullRequestMergedStateChangedEventMetadata"))
    PullRequestEvent.add_member(:approval_rule_event_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleEventMetadata, name: "approvalRuleEventMetadata"))
    PullRequestEvent.add_member(:approval_state_changed_event_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalStateChangedEventMetadata, name: "approvalStateChangedEventMetadata"))
    PullRequestEvent.add_member(:approval_rule_overridden_event_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleOverriddenEventMetadata, name: "approvalRuleOverriddenEventMetadata"))
    PullRequestEvent.type = Types::PullRequestEvent
    PullRequestEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestEvent, name: "member"))
    PullRequestEventType.add_member(:pull_request_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PULL_REQUEST_CREATED", traits: {"smithy.api#enumValue" => "PULL_REQUEST_CREATED"}))
    PullRequestEventType.add_member(:pull_request_status_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PULL_REQUEST_STATUS_CHANGED", traits: {"smithy.api#enumValue" => "PULL_REQUEST_STATUS_CHANGED"}))
    PullRequestEventType.add_member(:pull_request_source_reference_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PULL_REQUEST_SOURCE_REFERENCE_UPDATED", traits: {"smithy.api#enumValue" => "PULL_REQUEST_SOURCE_REFERENCE_UPDATED"}))
    PullRequestEventType.add_member(:pull_request_merge_state_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PULL_REQUEST_MERGE_STATE_CHANGED", traits: {"smithy.api#enumValue" => "PULL_REQUEST_MERGE_STATE_CHANGED"}))
    PullRequestEventType.add_member(:pull_request_approval_rule_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PULL_REQUEST_APPROVAL_RULE_CREATED", traits: {"smithy.api#enumValue" => "PULL_REQUEST_APPROVAL_RULE_CREATED"}))
    PullRequestEventType.add_member(:pull_request_approval_rule_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PULL_REQUEST_APPROVAL_RULE_UPDATED", traits: {"smithy.api#enumValue" => "PULL_REQUEST_APPROVAL_RULE_UPDATED"}))
    PullRequestEventType.add_member(:pull_request_approval_rule_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PULL_REQUEST_APPROVAL_RULE_DELETED", traits: {"smithy.api#enumValue" => "PULL_REQUEST_APPROVAL_RULE_DELETED"}))
    PullRequestEventType.add_member(:pull_request_approval_rule_overridden, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN", traits: {"smithy.api#enumValue" => "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN"}))
    PullRequestEventType.add_member(:pull_request_approval_state_changed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PULL_REQUEST_APPROVAL_STATE_CHANGED", traits: {"smithy.api#enumValue" => "PULL_REQUEST_APPROVAL_STATE_CHANGED"}))
    PullRequestIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "member"))
    PullRequestIdRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    PullRequestIdRequiredException.type = Types::PullRequestIdRequiredException
    PullRequestMergedStateChangedEventMetadata.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    PullRequestMergedStateChangedEventMetadata.add_member(:destination_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceName, name: "destinationReference"))
    PullRequestMergedStateChangedEventMetadata.add_member(:merge_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeMetadata, name: "mergeMetadata"))
    PullRequestMergedStateChangedEventMetadata.type = Types::PullRequestMergedStateChangedEventMetadata
    PullRequestSourceReferenceUpdatedEventMetadata.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    PullRequestSourceReferenceUpdatedEventMetadata.add_member(:before_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "beforeCommitId"))
    PullRequestSourceReferenceUpdatedEventMetadata.add_member(:after_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "afterCommitId"))
    PullRequestSourceReferenceUpdatedEventMetadata.add_member(:merge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "mergeBase"))
    PullRequestSourceReferenceUpdatedEventMetadata.type = Types::PullRequestSourceReferenceUpdatedEventMetadata
    PullRequestStatusChangedEventMetadata.add_member(:pull_request_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestStatusEnum, name: "pullRequestStatus"))
    PullRequestStatusChangedEventMetadata.type = Types::PullRequestStatusChangedEventMetadata
    PullRequestStatusEnum.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    PullRequestStatusEnum.add_member(:closed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED", traits: {"smithy.api#enumValue" => "CLOSED"}))
    PullRequestStatusRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    PullRequestStatusRequiredException.type = Types::PullRequestStatusRequiredException
    PullRequestTarget.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    PullRequestTarget.add_member(:source_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceName, name: "sourceReference"))
    PullRequestTarget.add_member(:destination_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceName, name: "destinationReference"))
    PullRequestTarget.add_member(:destination_commit, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "destinationCommit"))
    PullRequestTarget.add_member(:source_commit, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "sourceCommit"))
    PullRequestTarget.add_member(:merge_base, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "mergeBase"))
    PullRequestTarget.add_member(:merge_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MergeMetadata, name: "mergeMetadata"))
    PullRequestTarget.type = Types::PullRequestTarget
    PullRequestTargetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestTarget, name: "member"))
    PutCommentReactionInput.add_member(:comment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentId, name: "commentId", traits: {"smithy.api#required" => {}}))
    PutCommentReactionInput.add_member(:reaction_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactionValue, name: "reactionValue", traits: {"smithy.api#required" => {}}))
    PutCommentReactionInput.type = Types::PutCommentReactionInput
    PutFileEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PutFileEntry, name: "member"))
    PutFileEntry.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "filePath", traits: {"smithy.api#required" => {}}))
    PutFileEntry.add_member(:file_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FileModeTypeEnum, name: "fileMode"))
    PutFileEntry.add_member(:file_content, ::Smithy::Schema::Shapes::MemberShape.new(target: FileContent, name: "fileContent"))
    PutFileEntry.add_member(:source_file, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFileSpecifier, name: "sourceFile"))
    PutFileEntry.type = Types::PutFileEntry
    PutFileEntryConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    PutFileEntryConflictException.type = Types::PutFileEntryConflictException
    PutFileInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    PutFileInput.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "branchName", traits: {"smithy.api#required" => {}}))
    PutFileInput.add_member(:file_content, ::Smithy::Schema::Shapes::MemberShape.new(target: FileContent, name: "fileContent", traits: {"smithy.api#required" => {}}))
    PutFileInput.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "filePath", traits: {"smithy.api#required" => {}}))
    PutFileInput.add_member(:file_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FileModeTypeEnum, name: "fileMode"))
    PutFileInput.add_member(:parent_commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, name: "parentCommitId"))
    PutFileInput.add_member(:commit_message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "commitMessage"))
    PutFileInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    PutFileInput.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "email"))
    PutFileInput.type = Types::PutFileInput
    PutFileOutput.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "commitId", traits: {"smithy.api#required" => {}}))
    PutFileOutput.add_member(:blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "blobId", traits: {"smithy.api#required" => {}}))
    PutFileOutput.add_member(:tree_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "treeId", traits: {"smithy.api#required" => {}}))
    PutFileOutput.type = Types::PutFileOutput
    PutRepositoryTriggersInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    PutRepositoryTriggersInput.add_member(:triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTriggersList, name: "triggers", traits: {"smithy.api#required" => {}}))
    PutRepositoryTriggersInput.type = Types::PutRepositoryTriggersInput
    PutRepositoryTriggersOutput.add_member(:configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTriggersConfigurationId, name: "configurationId"))
    PutRepositoryTriggersOutput.type = Types::PutRepositoryTriggersOutput
    ReactionCountsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactionValue, name: "key"))
    ReactionCountsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "value"))
    ReactionForComment.add_member(:reaction, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactionValueFormats, name: "reaction"))
    ReactionForComment.add_member(:reaction_users, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactionUsersList, name: "reactionUsers"))
    ReactionForComment.add_member(:reactions_from_deleted_users_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Count, name: "reactionsFromDeletedUsersCount"))
    ReactionForComment.type = Types::ReactionForComment
    ReactionLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ReactionLimitExceededException.type = Types::ReactionLimitExceededException
    ReactionUsersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member"))
    ReactionValueFormats.add_member(:emoji, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactionEmoji, name: "emoji"))
    ReactionValueFormats.add_member(:short_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactionShortCode, name: "shortCode"))
    ReactionValueFormats.add_member(:unicode, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactionUnicode, name: "unicode"))
    ReactionValueFormats.type = Types::ReactionValueFormats
    ReactionValueRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ReactionValueRequiredException.type = Types::ReactionValueRequiredException
    ReactionsForCommentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReactionForComment, name: "member"))
    ReferenceDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ReferenceDoesNotExistException.type = Types::ReferenceDoesNotExistException
    ReferenceNameRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ReferenceNameRequiredException.type = Types::ReferenceNameRequiredException
    ReferenceTypeNotSupportedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ReferenceTypeNotSupportedException.type = Types::ReferenceTypeNotSupportedException
    RelativeFileVersionEnum.add_member(:before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEFORE", traits: {"smithy.api#enumValue" => "BEFORE"}))
    RelativeFileVersionEnum.add_member(:after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFTER", traits: {"smithy.api#enumValue" => "AFTER"}))
    ReplaceContentEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplaceContentEntry, name: "member"))
    ReplaceContentEntry.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "filePath", traits: {"smithy.api#required" => {}}))
    ReplaceContentEntry.add_member(:replacement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplacementTypeEnum, name: "replacementType", traits: {"smithy.api#required" => {}}))
    ReplaceContentEntry.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: FileContent, name: "content"))
    ReplaceContentEntry.add_member(:file_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FileModeTypeEnum, name: "fileMode"))
    ReplaceContentEntry.type = Types::ReplaceContentEntry
    ReplacementContentRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ReplacementContentRequiredException.type = Types::ReplacementContentRequiredException
    ReplacementTypeEnum.add_member(:keep_base, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEEP_BASE", traits: {"smithy.api#enumValue" => "KEEP_BASE"}))
    ReplacementTypeEnum.add_member(:keep_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEEP_SOURCE", traits: {"smithy.api#enumValue" => "KEEP_SOURCE"}))
    ReplacementTypeEnum.add_member(:keep_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KEEP_DESTINATION", traits: {"smithy.api#enumValue" => "KEEP_DESTINATION"}))
    ReplacementTypeEnum.add_member(:use_new_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USE_NEW_CONTENT", traits: {"smithy.api#enumValue" => "USE_NEW_CONTENT"}))
    ReplacementTypeRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ReplacementTypeRequiredException.type = Types::ReplacementTypeRequiredException
    RepositoryDoesNotExistException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RepositoryDoesNotExistException.type = Types::RepositoryDoesNotExistException
    RepositoryLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RepositoryLimitExceededException.type = Types::RepositoryLimitExceededException
    RepositoryMetadata.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    RepositoryMetadata.add_member(:repository_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryId, name: "repositoryId"))
    RepositoryMetadata.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    RepositoryMetadata.add_member(:repository_description, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryDescription, name: "repositoryDescription"))
    RepositoryMetadata.add_member(:default_branch, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "defaultBranch"))
    RepositoryMetadata.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedDate, name: "lastModifiedDate"))
    RepositoryMetadata.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationDate, name: "creationDate"))
    RepositoryMetadata.add_member(:clone_url_http, ::Smithy::Schema::Shapes::MemberShape.new(target: CloneUrlHttp, name: "cloneUrlHttp"))
    RepositoryMetadata.add_member(:clone_url_ssh, ::Smithy::Schema::Shapes::MemberShape.new(target: CloneUrlSsh, name: "cloneUrlSsh"))
    RepositoryMetadata.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    RepositoryMetadata.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    RepositoryMetadata.type = Types::RepositoryMetadata
    RepositoryMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryMetadata, name: "member"))
    RepositoryNameExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RepositoryNameExistsException.type = Types::RepositoryNameExistsException
    RepositoryNameIdPair.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    RepositoryNameIdPair.add_member(:repository_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryId, name: "repositoryId"))
    RepositoryNameIdPair.type = Types::RepositoryNameIdPair
    RepositoryNameIdPairList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryNameIdPair, name: "member"))
    RepositoryNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "member"))
    RepositoryNameRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RepositoryNameRequiredException.type = Types::RepositoryNameRequiredException
    RepositoryNamesRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RepositoryNamesRequiredException.type = Types::RepositoryNamesRequiredException
    RepositoryNotAssociatedWithPullRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RepositoryNotAssociatedWithPullRequestException.type = Types::RepositoryNotAssociatedWithPullRequestException
    RepositoryNotFoundList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "member"))
    RepositoryTrigger.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTriggerName, name: "name", traits: {"smithy.api#required" => {}}))
    RepositoryTrigger.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "destinationArn", traits: {"smithy.api#required" => {}}))
    RepositoryTrigger.add_member(:custom_data, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTriggerCustomData, name: "customData"))
    RepositoryTrigger.add_member(:branches, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchNameList, name: "branches"))
    RepositoryTrigger.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTriggerEventList, name: "events", traits: {"smithy.api#required" => {}}))
    RepositoryTrigger.type = Types::RepositoryTrigger
    RepositoryTriggerBranchNameListRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RepositoryTriggerBranchNameListRequiredException.type = Types::RepositoryTriggerBranchNameListRequiredException
    RepositoryTriggerDestinationArnRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RepositoryTriggerDestinationArnRequiredException.type = Types::RepositoryTriggerDestinationArnRequiredException
    RepositoryTriggerEventEnum.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "all"}))
    RepositoryTriggerEventEnum.add_member(:update_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_REFERENCE", traits: {"smithy.api#enumValue" => "updateReference"}))
    RepositoryTriggerEventEnum.add_member(:create_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_REFERENCE", traits: {"smithy.api#enumValue" => "createReference"}))
    RepositoryTriggerEventEnum.add_member(:delete_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_REFERENCE", traits: {"smithy.api#enumValue" => "deleteReference"}))
    RepositoryTriggerEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTriggerEventEnum, name: "member"))
    RepositoryTriggerEventsListRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RepositoryTriggerEventsListRequiredException.type = Types::RepositoryTriggerEventsListRequiredException
    RepositoryTriggerExecutionFailure.add_member(:trigger, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTriggerName, name: "trigger"))
    RepositoryTriggerExecutionFailure.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTriggerExecutionFailureMessage, name: "failureMessage"))
    RepositoryTriggerExecutionFailure.type = Types::RepositoryTriggerExecutionFailure
    RepositoryTriggerExecutionFailureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTriggerExecutionFailure, name: "member"))
    RepositoryTriggerNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTriggerName, name: "member"))
    RepositoryTriggerNameRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RepositoryTriggerNameRequiredException.type = Types::RepositoryTriggerNameRequiredException
    RepositoryTriggersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTrigger, name: "member"))
    RepositoryTriggersListRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RepositoryTriggersListRequiredException.type = Types::RepositoryTriggersListRequiredException
    ResourceArnRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ResourceArnRequiredException.type = Types::ResourceArnRequiredException
    RestrictedSourceFileException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RestrictedSourceFileException.type = Types::RestrictedSourceFileException
    RevisionChildren.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "member"))
    RevisionDag.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FileVersion, name: "member"))
    RevisionIdRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RevisionIdRequiredException.type = Types::RevisionIdRequiredException
    RevisionNotCurrentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    RevisionNotCurrentException.type = Types::RevisionNotCurrentException
    SameFileContentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    SameFileContentException.type = Types::SameFileContentException
    SamePathRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    SamePathRequestException.type = Types::SamePathRequestException
    SetFileModeEntries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SetFileModeEntry, name: "member"))
    SetFileModeEntry.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "filePath", traits: {"smithy.api#required" => {}}))
    SetFileModeEntry.add_member(:file_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FileModeTypeEnum, name: "fileMode", traits: {"smithy.api#required" => {}}))
    SetFileModeEntry.type = Types::SetFileModeEntry
    SortByEnum.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPOSITORY_NAME", traits: {"smithy.api#enumValue" => "repositoryName"}))
    SortByEnum.add_member(:modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFIED_DATE", traits: {"smithy.api#enumValue" => "lastModifiedDate"}))
    SourceAndDestinationAreSameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    SourceAndDestinationAreSameException.type = Types::SourceAndDestinationAreSameException
    SourceFileOrContentRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    SourceFileOrContentRequiredException.type = Types::SourceFileOrContentRequiredException
    SourceFileSpecifier.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "filePath", traits: {"smithy.api#required" => {}}))
    SourceFileSpecifier.add_member(:is_move, ::Smithy::Schema::Shapes::MemberShape.new(target: IsMove, name: "isMove", traits: {"smithy.api#default" => false}))
    SourceFileSpecifier.type = Types::SourceFileSpecifier
    SubModule.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "commitId"))
    SubModule.add_member(:absolute_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "absolutePath"))
    SubModule.add_member(:relative_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "relativePath"))
    SubModule.type = Types::SubModule
    SubModuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubModule, name: "member"))
    SymbolicLink.add_member(:blob_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectId, name: "blobId"))
    SymbolicLink.add_member(:absolute_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "absolutePath"))
    SymbolicLink.add_member(:relative_path, ::Smithy::Schema::Shapes::MemberShape.new(target: Path, name: "relativePath"))
    SymbolicLink.add_member(:file_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FileModeTypeEnum, name: "fileMode"))
    SymbolicLink.type = Types::SymbolicLink
    SymbolicLinkList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SymbolicLink, name: "member"))
    TagKeysList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagKeysListRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    TagKeysListRequiredException.type = Types::TagKeysListRequiredException
    TagPolicyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    TagPolicyException.type = Types::TagPolicyException
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagsMapRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    TagsMapRequiredException.type = Types::TagsMapRequiredException
    Target.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    Target.add_member(:source_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceName, name: "sourceReference", traits: {"smithy.api#required" => {}}))
    Target.add_member(:destination_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceName, name: "destinationReference"))
    Target.type = Types::Target
    TargetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, name: "member"))
    TargetRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    TargetRequiredException.type = Types::TargetRequiredException
    TargetsRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    TargetsRequiredException.type = Types::TargetsRequiredException
    TestRepositoryTriggersInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    TestRepositoryTriggersInput.add_member(:triggers, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTriggersList, name: "triggers", traits: {"smithy.api#required" => {}}))
    TestRepositoryTriggersInput.type = Types::TestRepositoryTriggersInput
    TestRepositoryTriggersOutput.add_member(:successful_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTriggerNameList, name: "successfulExecutions"))
    TestRepositoryTriggersOutput.add_member(:failed_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryTriggerExecutionFailureList, name: "failedExecutions"))
    TestRepositoryTriggersOutput.type = Types::TestRepositoryTriggersOutput
    TipOfSourceReferenceIsDifferentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    TipOfSourceReferenceIsDifferentException.type = Types::TipOfSourceReferenceIsDifferentException
    TipsDivergenceExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    TipsDivergenceExceededException.type = Types::TipsDivergenceExceededException
    TitleRequiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    TitleRequiredException.type = Types::TitleRequiredException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeysList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateApprovalRuleTemplateContentInput.add_member(:approval_rule_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateName, name: "approvalRuleTemplateName", traits: {"smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateContentInput.add_member(:new_rule_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateContent, name: "newRuleContent", traits: {"smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateContentInput.add_member(:existing_rule_content_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleContentSha256, name: "existingRuleContentSha256"))
    UpdateApprovalRuleTemplateContentInput.type = Types::UpdateApprovalRuleTemplateContentInput
    UpdateApprovalRuleTemplateContentOutput.add_member(:approval_rule_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplate, name: "approvalRuleTemplate", traits: {"smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateContentOutput.type = Types::UpdateApprovalRuleTemplateContentOutput
    UpdateApprovalRuleTemplateDescriptionInput.add_member(:approval_rule_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateName, name: "approvalRuleTemplateName", traits: {"smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateDescriptionInput.add_member(:approval_rule_template_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateDescription, name: "approvalRuleTemplateDescription", traits: {"smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateDescriptionInput.type = Types::UpdateApprovalRuleTemplateDescriptionInput
    UpdateApprovalRuleTemplateDescriptionOutput.add_member(:approval_rule_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplate, name: "approvalRuleTemplate", traits: {"smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateDescriptionOutput.type = Types::UpdateApprovalRuleTemplateDescriptionOutput
    UpdateApprovalRuleTemplateNameInput.add_member(:old_approval_rule_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateName, name: "oldApprovalRuleTemplateName", traits: {"smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateNameInput.add_member(:new_approval_rule_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplateName, name: "newApprovalRuleTemplateName", traits: {"smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateNameInput.type = Types::UpdateApprovalRuleTemplateNameInput
    UpdateApprovalRuleTemplateNameOutput.add_member(:approval_rule_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleTemplate, name: "approvalRuleTemplate", traits: {"smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateNameOutput.type = Types::UpdateApprovalRuleTemplateNameOutput
    UpdateCommentInput.add_member(:comment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentId, name: "commentId", traits: {"smithy.api#required" => {}}))
    UpdateCommentInput.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, name: "content", traits: {"smithy.api#required" => {}}))
    UpdateCommentInput.type = Types::UpdateCommentInput
    UpdateCommentOutput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Comment, name: "comment"))
    UpdateCommentOutput.type = Types::UpdateCommentOutput
    UpdateDefaultBranchInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    UpdateDefaultBranchInput.add_member(:default_branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, name: "defaultBranchName", traits: {"smithy.api#required" => {}}))
    UpdateDefaultBranchInput.type = Types::UpdateDefaultBranchInput
    UpdatePullRequestApprovalRuleContentInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    UpdatePullRequestApprovalRuleContentInput.add_member(:approval_rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleName, name: "approvalRuleName", traits: {"smithy.api#required" => {}}))
    UpdatePullRequestApprovalRuleContentInput.add_member(:existing_rule_content_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleContentSha256, name: "existingRuleContentSha256"))
    UpdatePullRequestApprovalRuleContentInput.add_member(:new_rule_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRuleContent, name: "newRuleContent", traits: {"smithy.api#required" => {}}))
    UpdatePullRequestApprovalRuleContentInput.type = Types::UpdatePullRequestApprovalRuleContentInput
    UpdatePullRequestApprovalRuleContentOutput.add_member(:approval_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalRule, name: "approvalRule", traits: {"smithy.api#required" => {}}))
    UpdatePullRequestApprovalRuleContentOutput.type = Types::UpdatePullRequestApprovalRuleContentOutput
    UpdatePullRequestApprovalStateInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    UpdatePullRequestApprovalStateInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId", traits: {"smithy.api#required" => {}}))
    UpdatePullRequestApprovalStateInput.add_member(:approval_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ApprovalState, name: "approvalState", traits: {"smithy.api#required" => {}}))
    UpdatePullRequestApprovalStateInput.type = Types::UpdatePullRequestApprovalStateInput
    UpdatePullRequestDescriptionInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    UpdatePullRequestDescriptionInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description", traits: {"smithy.api#required" => {}}))
    UpdatePullRequestDescriptionInput.type = Types::UpdatePullRequestDescriptionInput
    UpdatePullRequestDescriptionOutput.add_member(:pull_request, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequest, name: "pullRequest", traits: {"smithy.api#required" => {}}))
    UpdatePullRequestDescriptionOutput.type = Types::UpdatePullRequestDescriptionOutput
    UpdatePullRequestStatusInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    UpdatePullRequestStatusInput.add_member(:pull_request_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestStatusEnum, name: "pullRequestStatus", traits: {"smithy.api#required" => {}}))
    UpdatePullRequestStatusInput.type = Types::UpdatePullRequestStatusInput
    UpdatePullRequestStatusOutput.add_member(:pull_request, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequest, name: "pullRequest", traits: {"smithy.api#required" => {}}))
    UpdatePullRequestStatusOutput.type = Types::UpdatePullRequestStatusOutput
    UpdatePullRequestTitleInput.add_member(:pull_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestId, name: "pullRequestId", traits: {"smithy.api#required" => {}}))
    UpdatePullRequestTitleInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: Title, name: "title", traits: {"smithy.api#required" => {}}))
    UpdatePullRequestTitleInput.type = Types::UpdatePullRequestTitleInput
    UpdatePullRequestTitleOutput.add_member(:pull_request, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequest, name: "pullRequest", traits: {"smithy.api#required" => {}}))
    UpdatePullRequestTitleOutput.type = Types::UpdatePullRequestTitleOutput
    UpdateRepositoryDescriptionInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    UpdateRepositoryDescriptionInput.add_member(:repository_description, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryDescription, name: "repositoryDescription"))
    UpdateRepositoryDescriptionInput.type = Types::UpdateRepositoryDescriptionInput
    UpdateRepositoryEncryptionKeyInput.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    UpdateRepositoryEncryptionKeyInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId", traits: {"smithy.api#required" => {}}))
    UpdateRepositoryEncryptionKeyInput.type = Types::UpdateRepositoryEncryptionKeyInput
    UpdateRepositoryEncryptionKeyOutput.add_member(:repository_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryId, name: "repositoryId"))
    UpdateRepositoryEncryptionKeyOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    UpdateRepositoryEncryptionKeyOutput.add_member(:original_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "originalKmsKeyId"))
    UpdateRepositoryEncryptionKeyOutput.type = Types::UpdateRepositoryEncryptionKeyOutput
    UpdateRepositoryNameInput.add_member(:old_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "oldName", traits: {"smithy.api#required" => {}}))
    UpdateRepositoryNameInput.add_member(:new_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "newName", traits: {"smithy.api#required" => {}}))
    UpdateRepositoryNameInput.type = Types::UpdateRepositoryNameInput
    UserInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name"))
    UserInfo.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "email"))
    UserInfo.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "date"))
    UserInfo.type = Types::UserInfo
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ValidationException.type = Types::ValidationException

    CodeCommit20150413 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codecommit#CodeCommit_20150413"
      service.name = "CodeCommit20150413"
      service.version = "2015-04-13"
      service.traits = {"aws.api#service" => {"sdkId" => "CodeCommit", "arnNamespace" => "codecommit", "cloudFormationName" => "CodeCommit", "cloudTrailEventSource" => "codecommit.amazonaws.com", "endpointPrefix" => "codecommit"}, "aws.auth#sigv4" => {"name" => "codecommit"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS CodeCommit", "smithy.api#xmlNamespace" => {"uri" => "http://codecommit.amazonaws.com/doc/2015-04-13"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://codecommit-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://codecommit-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://codecommit.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://codecommit.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:associate_approval_rule_template_with_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#AssociateApprovalRuleTemplateWithRepository"
        operation.name = "AssociateApprovalRuleTemplateWithRepository"
        operation.input = AssociateApprovalRuleTemplateWithRepositoryInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ApprovalRuleTemplateDoesNotExistException
        operation.errors << ApprovalRuleTemplateNameRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidApprovalRuleTemplateNameException
        operation.errors << InvalidRepositoryNameException
        operation.errors << MaximumRuleTemplatesAssociatedWithRepositoryException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:batch_associate_approval_rule_template_with_repositories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#BatchAssociateApprovalRuleTemplateWithRepositories"
        operation.name = "BatchAssociateApprovalRuleTemplateWithRepositories"
        operation.input = BatchAssociateApprovalRuleTemplateWithRepositoriesInput
        operation.output = BatchAssociateApprovalRuleTemplateWithRepositoriesOutput
        operation.errors << ApprovalRuleTemplateDoesNotExistException
        operation.errors << ApprovalRuleTemplateNameRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidApprovalRuleTemplateNameException
        operation.errors << MaximumRepositoryNamesExceededException
        operation.errors << RepositoryNamesRequiredException
        operation.traits = {}
      end)
      service.add_operation(:batch_describe_merge_conflicts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#BatchDescribeMergeConflicts"
        operation.name = "BatchDescribeMergeConflicts"
        operation.input = BatchDescribeMergeConflictsInput
        operation.output = BatchDescribeMergeConflictsOutput
        operation.errors << CommitDoesNotExistException
        operation.errors << CommitRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidCommitException
        operation.errors << InvalidConflictDetailLevelException
        operation.errors << InvalidConflictResolutionStrategyException
        operation.errors << InvalidContinuationTokenException
        operation.errors << InvalidMaxConflictFilesException
        operation.errors << InvalidMaxMergeHunksException
        operation.errors << InvalidMergeOptionException
        operation.errors << InvalidRepositoryNameException
        operation.errors << MaximumFileContentToLoadExceededException
        operation.errors << MaximumItemsToCompareExceededException
        operation.errors << MergeOptionRequiredException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << TipsDivergenceExceededException
        operation.traits = {}
      end)
      service.add_operation(:batch_disassociate_approval_rule_template_from_repositories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#BatchDisassociateApprovalRuleTemplateFromRepositories"
        operation.name = "BatchDisassociateApprovalRuleTemplateFromRepositories"
        operation.input = BatchDisassociateApprovalRuleTemplateFromRepositoriesInput
        operation.output = BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput
        operation.errors << ApprovalRuleTemplateDoesNotExistException
        operation.errors << ApprovalRuleTemplateNameRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidApprovalRuleTemplateNameException
        operation.errors << MaximumRepositoryNamesExceededException
        operation.errors << RepositoryNamesRequiredException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_commits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#BatchGetCommits"
        operation.name = "BatchGetCommits"
        operation.input = BatchGetCommitsInput
        operation.output = BatchGetCommitsOutput
        operation.errors << CommitIdsLimitExceededException
        operation.errors << CommitIdsListRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_repositories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#BatchGetRepositories"
        operation.name = "BatchGetRepositories"
        operation.input = BatchGetRepositoriesInput
        operation.output = BatchGetRepositoriesOutput
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidRepositoryNameException
        operation.errors << MaximumRepositoryNamesExceededException
        operation.errors << RepositoryNamesRequiredException
        operation.traits = {}
      end)
      service.add_operation(:create_approval_rule_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#CreateApprovalRuleTemplate"
        operation.name = "CreateApprovalRuleTemplate"
        operation.input = CreateApprovalRuleTemplateInput
        operation.output = CreateApprovalRuleTemplateOutput
        operation.errors << ApprovalRuleTemplateContentRequiredException
        operation.errors << ApprovalRuleTemplateNameAlreadyExistsException
        operation.errors << ApprovalRuleTemplateNameRequiredException
        operation.errors << InvalidApprovalRuleTemplateContentException
        operation.errors << InvalidApprovalRuleTemplateDescriptionException
        operation.errors << InvalidApprovalRuleTemplateNameException
        operation.errors << NumberOfRuleTemplatesExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_branch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#CreateBranch"
        operation.name = "CreateBranch"
        operation.input = CreateBranchInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BranchNameExistsException
        operation.errors << BranchNameRequiredException
        operation.errors << CommitDoesNotExistException
        operation.errors << CommitIdRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidBranchNameException
        operation.errors << InvalidCommitIdException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:create_commit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#CreateCommit"
        operation.name = "CreateCommit"
        operation.input = CreateCommitInput
        operation.output = CreateCommitOutput
        operation.errors << BranchDoesNotExistException
        operation.errors << BranchNameIsTagNameException
        operation.errors << BranchNameRequiredException
        operation.errors << CommitMessageLengthExceededException
        operation.errors << DirectoryNameConflictsWithFileNameException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << FileContentAndSourceFileSpecifiedException
        operation.errors << FileContentSizeLimitExceededException
        operation.errors << FileDoesNotExistException
        operation.errors << FileEntryRequiredException
        operation.errors << FileModeRequiredException
        operation.errors << FileNameConflictsWithDirectoryNameException
        operation.errors << FilePathConflictsWithSubmodulePathException
        operation.errors << FolderContentSizeLimitExceededException
        operation.errors << InvalidBranchNameException
        operation.errors << InvalidDeletionParameterException
        operation.errors << InvalidEmailException
        operation.errors << InvalidFileModeException
        operation.errors << InvalidParentCommitIdException
        operation.errors << InvalidPathException
        operation.errors << InvalidRepositoryNameException
        operation.errors << MaximumFileEntriesExceededException
        operation.errors << NameLengthExceededException
        operation.errors << NoChangeException
        operation.errors << ParentCommitDoesNotExistException
        operation.errors << ParentCommitIdOutdatedException
        operation.errors << ParentCommitIdRequiredException
        operation.errors << PathRequiredException
        operation.errors << PutFileEntryConflictException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << RestrictedSourceFileException
        operation.errors << SamePathRequestException
        operation.errors << SourceFileOrContentRequiredException
        operation.traits = {}
      end)
      service.add_operation(:create_pull_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#CreatePullRequest"
        operation.name = "CreatePullRequest"
        operation.input = CreatePullRequestInput
        operation.output = CreatePullRequestOutput
        operation.errors << ClientRequestTokenRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << IdempotencyParameterMismatchException
        operation.errors << InvalidClientRequestTokenException
        operation.errors << InvalidDescriptionException
        operation.errors << InvalidReferenceNameException
        operation.errors << InvalidRepositoryNameException
        operation.errors << InvalidTargetException
        operation.errors << InvalidTargetsException
        operation.errors << InvalidTitleException
        operation.errors << MaximumOpenPullRequestsExceededException
        operation.errors << MultipleRepositoriesInPullRequestException
        operation.errors << ReferenceDoesNotExistException
        operation.errors << ReferenceNameRequiredException
        operation.errors << ReferenceTypeNotSupportedException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << SourceAndDestinationAreSameException
        operation.errors << TargetRequiredException
        operation.errors << TargetsRequiredException
        operation.errors << TitleRequiredException
        operation.traits = {}
      end)
      service.add_operation(:create_pull_request_approval_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#CreatePullRequestApprovalRule"
        operation.name = "CreatePullRequestApprovalRule"
        operation.input = CreatePullRequestApprovalRuleInput
        operation.output = CreatePullRequestApprovalRuleOutput
        operation.errors << ApprovalRuleContentRequiredException
        operation.errors << ApprovalRuleNameAlreadyExistsException
        operation.errors << ApprovalRuleNameRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidApprovalRuleContentException
        operation.errors << InvalidApprovalRuleNameException
        operation.errors << InvalidPullRequestIdException
        operation.errors << NumberOfRulesExceededException
        operation.errors << PullRequestAlreadyClosedException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.traits = {}
      end)
      service.add_operation(:create_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#CreateRepository"
        operation.name = "CreateRepository"
        operation.input = CreateRepositoryInput
        operation.output = CreateRepositoryOutput
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyInvalidIdException
        operation.errors << EncryptionKeyInvalidUsageException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidRepositoryDescriptionException
        operation.errors << InvalidRepositoryNameException
        operation.errors << InvalidSystemTagUsageException
        operation.errors << InvalidTagsMapException
        operation.errors << OperationNotAllowedException
        operation.errors << RepositoryLimitExceededException
        operation.errors << RepositoryNameExistsException
        operation.errors << RepositoryNameRequiredException
        operation.errors << TagPolicyException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:create_unreferenced_merge_commit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#CreateUnreferencedMergeCommit"
        operation.name = "CreateUnreferencedMergeCommit"
        operation.input = CreateUnreferencedMergeCommitInput
        operation.output = CreateUnreferencedMergeCommitOutput
        operation.errors << CommitDoesNotExistException
        operation.errors << CommitMessageLengthExceededException
        operation.errors << CommitRequiredException
        operation.errors << ConcurrentReferenceUpdateException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << FileContentSizeLimitExceededException
        operation.errors << FileModeRequiredException
        operation.errors << FolderContentSizeLimitExceededException
        operation.errors << InvalidCommitException
        operation.errors << InvalidConflictDetailLevelException
        operation.errors << InvalidConflictResolutionException
        operation.errors << InvalidConflictResolutionStrategyException
        operation.errors << InvalidEmailException
        operation.errors << InvalidFileModeException
        operation.errors << InvalidMergeOptionException
        operation.errors << InvalidPathException
        operation.errors << InvalidReplacementContentException
        operation.errors << InvalidReplacementTypeException
        operation.errors << InvalidRepositoryNameException
        operation.errors << ManualMergeRequiredException
        operation.errors << MaximumConflictResolutionEntriesExceededException
        operation.errors << MaximumFileContentToLoadExceededException
        operation.errors << MaximumItemsToCompareExceededException
        operation.errors << MergeOptionRequiredException
        operation.errors << MultipleConflictResolutionEntriesException
        operation.errors << NameLengthExceededException
        operation.errors << PathRequiredException
        operation.errors << ReplacementContentRequiredException
        operation.errors << ReplacementTypeRequiredException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << TipsDivergenceExceededException
        operation.traits = {}
      end)
      service.add_operation(:delete_approval_rule_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DeleteApprovalRuleTemplate"
        operation.name = "DeleteApprovalRuleTemplate"
        operation.input = DeleteApprovalRuleTemplateInput
        operation.output = DeleteApprovalRuleTemplateOutput
        operation.errors << ApprovalRuleTemplateInUseException
        operation.errors << ApprovalRuleTemplateNameRequiredException
        operation.errors << InvalidApprovalRuleTemplateNameException
        operation.traits = {}
      end)
      service.add_operation(:delete_branch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DeleteBranch"
        operation.name = "DeleteBranch"
        operation.input = DeleteBranchInput
        operation.output = DeleteBranchOutput
        operation.errors << BranchNameRequiredException
        operation.errors << DefaultBranchCannotBeDeletedException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidBranchNameException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:delete_comment_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DeleteCommentContent"
        operation.name = "DeleteCommentContent"
        operation.input = DeleteCommentContentInput
        operation.output = DeleteCommentContentOutput
        operation.errors << CommentDeletedException
        operation.errors << CommentDoesNotExistException
        operation.errors << CommentIdRequiredException
        operation.errors << InvalidCommentIdException
        operation.traits = {}
      end)
      service.add_operation(:delete_file, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DeleteFile"
        operation.name = "DeleteFile"
        operation.input = DeleteFileInput
        operation.output = DeleteFileOutput
        operation.errors << BranchDoesNotExistException
        operation.errors << BranchNameIsTagNameException
        operation.errors << BranchNameRequiredException
        operation.errors << CommitMessageLengthExceededException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << FileDoesNotExistException
        operation.errors << InvalidBranchNameException
        operation.errors << InvalidEmailException
        operation.errors << InvalidParentCommitIdException
        operation.errors << InvalidPathException
        operation.errors << InvalidRepositoryNameException
        operation.errors << NameLengthExceededException
        operation.errors << ParentCommitDoesNotExistException
        operation.errors << ParentCommitIdOutdatedException
        operation.errors << ParentCommitIdRequiredException
        operation.errors << PathRequiredException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:delete_pull_request_approval_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DeletePullRequestApprovalRule"
        operation.name = "DeletePullRequestApprovalRule"
        operation.input = DeletePullRequestApprovalRuleInput
        operation.output = DeletePullRequestApprovalRuleOutput
        operation.errors << ApprovalRuleNameRequiredException
        operation.errors << CannotDeleteApprovalRuleFromTemplateException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidApprovalRuleNameException
        operation.errors << InvalidPullRequestIdException
        operation.errors << PullRequestAlreadyClosedException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.traits = {}
      end)
      service.add_operation(:delete_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DeleteRepository"
        operation.name = "DeleteRepository"
        operation.input = DeleteRepositoryInput
        operation.output = DeleteRepositoryOutput
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:describe_merge_conflicts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DescribeMergeConflicts"
        operation.name = "DescribeMergeConflicts"
        operation.input = DescribeMergeConflictsInput
        operation.output = DescribeMergeConflictsOutput
        operation.errors << CommitDoesNotExistException
        operation.errors << CommitRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << FileDoesNotExistException
        operation.errors << InvalidCommitException
        operation.errors << InvalidConflictDetailLevelException
        operation.errors << InvalidConflictResolutionStrategyException
        operation.errors << InvalidContinuationTokenException
        operation.errors << InvalidMaxMergeHunksException
        operation.errors << InvalidMergeOptionException
        operation.errors << InvalidPathException
        operation.errors << InvalidRepositoryNameException
        operation.errors << MaximumFileContentToLoadExceededException
        operation.errors << MaximumItemsToCompareExceededException
        operation.errors << MergeOptionRequiredException
        operation.errors << PathRequiredException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << TipsDivergenceExceededException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMergeConflicts.new
      end)
      service.add_operation(:describe_pull_request_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DescribePullRequestEvents"
        operation.name = "DescribePullRequestEvents"
        operation.input = DescribePullRequestEventsInput
        operation.output = DescribePullRequestEventsOutput
        operation.errors << ActorDoesNotExistException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidActorArnException
        operation.errors << InvalidContinuationTokenException
        operation.errors << InvalidMaxResultsException
        operation.errors << InvalidPullRequestEventTypeException
        operation.errors << InvalidPullRequestIdException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePullRequestEvents.new
      end)
      service.add_operation(:disassociate_approval_rule_template_from_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DisassociateApprovalRuleTemplateFromRepository"
        operation.name = "DisassociateApprovalRuleTemplateFromRepository"
        operation.input = DisassociateApprovalRuleTemplateFromRepositoryInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ApprovalRuleTemplateDoesNotExistException
        operation.errors << ApprovalRuleTemplateNameRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidApprovalRuleTemplateNameException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:evaluate_pull_request_approval_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#EvaluatePullRequestApprovalRules"
        operation.name = "EvaluatePullRequestApprovalRules"
        operation.input = EvaluatePullRequestApprovalRulesInput
        operation.output = EvaluatePullRequestApprovalRulesOutput
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidPullRequestIdException
        operation.errors << InvalidRevisionIdException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.errors << RevisionIdRequiredException
        operation.errors << RevisionNotCurrentException
        operation.traits = {}
      end)
      service.add_operation(:get_approval_rule_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetApprovalRuleTemplate"
        operation.name = "GetApprovalRuleTemplate"
        operation.input = GetApprovalRuleTemplateInput
        operation.output = GetApprovalRuleTemplateOutput
        operation.errors << ApprovalRuleTemplateDoesNotExistException
        operation.errors << ApprovalRuleTemplateNameRequiredException
        operation.errors << InvalidApprovalRuleTemplateNameException
        operation.traits = {}
      end)
      service.add_operation(:get_blob, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetBlob"
        operation.name = "GetBlob"
        operation.input = GetBlobInput
        operation.output = GetBlobOutput
        operation.errors << BlobIdDoesNotExistException
        operation.errors << BlobIdRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << FileTooLargeException
        operation.errors << InvalidBlobIdException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:get_blob_differences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetBlobDifferences"
        operation.name = "GetBlobDifferences"
        operation.input = GetBlobDifferencesInput
        operation.output = GetBlobDifferencesOutput
        operation.errors << BlobIdDoesNotExistException
        operation.errors << BlobIdRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << FileTooLargeException
        operation.errors << InvalidBlobIdException
        operation.errors << InvalidContinuationTokenException
        operation.errors << InvalidMaxResultsException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::GetBlobDifferences.new
      end)
      service.add_operation(:get_branch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetBranch"
        operation.name = "GetBranch"
        operation.input = GetBranchInput
        operation.output = GetBranchOutput
        operation.errors << BranchDoesNotExistException
        operation.errors << BranchNameRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidBranchNameException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:get_comment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetComment"
        operation.name = "GetComment"
        operation.input = GetCommentInput
        operation.output = GetCommentOutput
        operation.errors << CommentDeletedException
        operation.errors << CommentDoesNotExistException
        operation.errors << CommentIdRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidCommentIdException
        operation.traits = {}
      end)
      service.add_operation(:get_comment_reactions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetCommentReactions"
        operation.name = "GetCommentReactions"
        operation.input = GetCommentReactionsInput
        operation.output = GetCommentReactionsOutput
        operation.errors << CommentDeletedException
        operation.errors << CommentDoesNotExistException
        operation.errors << CommentIdRequiredException
        operation.errors << InvalidCommentIdException
        operation.errors << InvalidContinuationTokenException
        operation.errors << InvalidMaxResultsException
        operation.errors << InvalidReactionUserArnException
        operation.traits = {}
        operation[:paginator] = Paginators::GetCommentReactions.new
      end)
      service.add_operation(:get_comments_for_compared_commit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetCommentsForComparedCommit"
        operation.name = "GetCommentsForComparedCommit"
        operation.input = GetCommentsForComparedCommitInput
        operation.output = GetCommentsForComparedCommitOutput
        operation.errors << CommitDoesNotExistException
        operation.errors << CommitIdRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidCommitIdException
        operation.errors << InvalidContinuationTokenException
        operation.errors << InvalidMaxResultsException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
        operation[:paginator] = Paginators::GetCommentsForComparedCommit.new
      end)
      service.add_operation(:get_comments_for_pull_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetCommentsForPullRequest"
        operation.name = "GetCommentsForPullRequest"
        operation.input = GetCommentsForPullRequestInput
        operation.output = GetCommentsForPullRequestOutput
        operation.errors << CommitDoesNotExistException
        operation.errors << CommitIdRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidCommitIdException
        operation.errors << InvalidContinuationTokenException
        operation.errors << InvalidMaxResultsException
        operation.errors << InvalidPullRequestIdException
        operation.errors << InvalidRepositoryNameException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << RepositoryNotAssociatedWithPullRequestException
        operation.traits = {}
        operation[:paginator] = Paginators::GetCommentsForPullRequest.new
      end)
      service.add_operation(:get_commit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetCommit"
        operation.name = "GetCommit"
        operation.input = GetCommitInput
        operation.output = GetCommitOutput
        operation.errors << CommitIdDoesNotExistException
        operation.errors << CommitIdRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidCommitIdException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:get_differences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetDifferences"
        operation.name = "GetDifferences"
        operation.input = GetDifferencesInput
        operation.output = GetDifferencesOutput
        operation.errors << CommitDoesNotExistException
        operation.errors << CommitRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidCommitException
        operation.errors << InvalidCommitIdException
        operation.errors << InvalidContinuationTokenException
        operation.errors << InvalidMaxResultsException
        operation.errors << InvalidPathException
        operation.errors << InvalidRepositoryNameException
        operation.errors << PathDoesNotExistException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
        operation[:paginator] = Paginators::GetDifferences.new
      end)
      service.add_operation(:get_file, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetFile"
        operation.name = "GetFile"
        operation.input = GetFileInput
        operation.output = GetFileOutput
        operation.errors << CommitDoesNotExistException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << FileDoesNotExistException
        operation.errors << FileTooLargeException
        operation.errors << InvalidCommitException
        operation.errors << InvalidPathException
        operation.errors << InvalidRepositoryNameException
        operation.errors << PathRequiredException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:get_folder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetFolder"
        operation.name = "GetFolder"
        operation.input = GetFolderInput
        operation.output = GetFolderOutput
        operation.errors << CommitDoesNotExistException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << FolderDoesNotExistException
        operation.errors << InvalidCommitException
        operation.errors << InvalidPathException
        operation.errors << InvalidRepositoryNameException
        operation.errors << PathRequiredException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:get_merge_commit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetMergeCommit"
        operation.name = "GetMergeCommit"
        operation.input = GetMergeCommitInput
        operation.output = GetMergeCommitOutput
        operation.errors << CommitDoesNotExistException
        operation.errors << CommitRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidCommitException
        operation.errors << InvalidConflictDetailLevelException
        operation.errors << InvalidConflictResolutionStrategyException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:get_merge_conflicts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetMergeConflicts"
        operation.name = "GetMergeConflicts"
        operation.input = GetMergeConflictsInput
        operation.output = GetMergeConflictsOutput
        operation.errors << CommitDoesNotExistException
        operation.errors << CommitRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidCommitException
        operation.errors << InvalidConflictDetailLevelException
        operation.errors << InvalidConflictResolutionStrategyException
        operation.errors << InvalidContinuationTokenException
        operation.errors << InvalidDestinationCommitSpecifierException
        operation.errors << InvalidMaxConflictFilesException
        operation.errors << InvalidMergeOptionException
        operation.errors << InvalidRepositoryNameException
        operation.errors << InvalidSourceCommitSpecifierException
        operation.errors << MaximumFileContentToLoadExceededException
        operation.errors << MaximumItemsToCompareExceededException
        operation.errors << MergeOptionRequiredException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << TipsDivergenceExceededException
        operation.traits = {}
        operation[:paginator] = Paginators::GetMergeConflicts.new
      end)
      service.add_operation(:get_merge_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetMergeOptions"
        operation.name = "GetMergeOptions"
        operation.input = GetMergeOptionsInput
        operation.output = GetMergeOptionsOutput
        operation.errors << CommitDoesNotExistException
        operation.errors << CommitRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidCommitException
        operation.errors << InvalidConflictDetailLevelException
        operation.errors << InvalidConflictResolutionStrategyException
        operation.errors << InvalidRepositoryNameException
        operation.errors << MaximumFileContentToLoadExceededException
        operation.errors << MaximumItemsToCompareExceededException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << TipsDivergenceExceededException
        operation.traits = {}
      end)
      service.add_operation(:get_pull_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetPullRequest"
        operation.name = "GetPullRequest"
        operation.input = GetPullRequestInput
        operation.output = GetPullRequestOutput
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidPullRequestIdException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.traits = {}
      end)
      service.add_operation(:get_pull_request_approval_states, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetPullRequestApprovalStates"
        operation.name = "GetPullRequestApprovalStates"
        operation.input = GetPullRequestApprovalStatesInput
        operation.output = GetPullRequestApprovalStatesOutput
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidPullRequestIdException
        operation.errors << InvalidRevisionIdException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.errors << RevisionIdRequiredException
        operation.traits = {}
      end)
      service.add_operation(:get_pull_request_override_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetPullRequestOverrideState"
        operation.name = "GetPullRequestOverrideState"
        operation.input = GetPullRequestOverrideStateInput
        operation.output = GetPullRequestOverrideStateOutput
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidPullRequestIdException
        operation.errors << InvalidRevisionIdException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.errors << RevisionIdRequiredException
        operation.traits = {}
      end)
      service.add_operation(:get_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetRepository"
        operation.name = "GetRepository"
        operation.input = GetRepositoryInput
        operation.output = GetRepositoryOutput
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:get_repository_triggers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetRepositoryTriggers"
        operation.name = "GetRepositoryTriggers"
        operation.input = GetRepositoryTriggersInput
        operation.output = GetRepositoryTriggersOutput
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:list_approval_rule_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#ListApprovalRuleTemplates"
        operation.name = "ListApprovalRuleTemplates"
        operation.input = ListApprovalRuleTemplatesInput
        operation.output = ListApprovalRuleTemplatesOutput
        operation.errors << InvalidContinuationTokenException
        operation.errors << InvalidMaxResultsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListApprovalRuleTemplates.new
      end)
      service.add_operation(:list_associated_approval_rule_templates_for_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#ListAssociatedApprovalRuleTemplatesForRepository"
        operation.name = "ListAssociatedApprovalRuleTemplatesForRepository"
        operation.input = ListAssociatedApprovalRuleTemplatesForRepositoryInput
        operation.output = ListAssociatedApprovalRuleTemplatesForRepositoryOutput
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidContinuationTokenException
        operation.errors << InvalidMaxResultsException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAssociatedApprovalRuleTemplatesForRepository.new
      end)
      service.add_operation(:list_branches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#ListBranches"
        operation.name = "ListBranches"
        operation.input = ListBranchesInput
        operation.output = ListBranchesOutput
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidContinuationTokenException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListBranchesFailure", "params" => {"repositoryName" => "fake-repo"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"failure" => {}}}]}
        operation[:paginator] = Paginators::ListBranches.new
      end)
      service.add_operation(:list_file_commit_history, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#ListFileCommitHistory"
        operation.name = "ListFileCommitHistory"
        operation.input = ListFileCommitHistoryRequest
        operation.output = ListFileCommitHistoryResponse
        operation.errors << CommitDoesNotExistException
        operation.errors << CommitRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidCommitException
        operation.errors << InvalidContinuationTokenException
        operation.errors << InvalidMaxResultsException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << TipsDivergenceExceededException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFileCommitHistory.new
      end)
      service.add_operation(:list_pull_requests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#ListPullRequests"
        operation.name = "ListPullRequests"
        operation.input = ListPullRequestsInput
        operation.output = ListPullRequestsOutput
        operation.errors << AuthorDoesNotExistException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidAuthorArnException
        operation.errors << InvalidContinuationTokenException
        operation.errors << InvalidMaxResultsException
        operation.errors << InvalidPullRequestStatusException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
        operation[:paginator] = Paginators::ListPullRequests.new
      end)
      service.add_operation(:list_repositories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#ListRepositories"
        operation.name = "ListRepositories"
        operation.input = ListRepositoriesInput
        operation.output = ListRepositoriesOutput
        operation.errors << InvalidContinuationTokenException
        operation.errors << InvalidOrderException
        operation.errors << InvalidSortByException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListRepositoriesSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListRepositories.new
      end)
      service.add_operation(:list_repositories_for_approval_rule_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#ListRepositoriesForApprovalRuleTemplate"
        operation.name = "ListRepositoriesForApprovalRuleTemplate"
        operation.input = ListRepositoriesForApprovalRuleTemplateInput
        operation.output = ListRepositoriesForApprovalRuleTemplateOutput
        operation.errors << ApprovalRuleTemplateDoesNotExistException
        operation.errors << ApprovalRuleTemplateNameRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidApprovalRuleTemplateNameException
        operation.errors << InvalidContinuationTokenException
        operation.errors << InvalidMaxResultsException
        operation.traits = {}
        operation[:paginator] = Paginators::ListRepositoriesForApprovalRuleTemplate.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InvalidRepositoryNameException
        operation.errors << InvalidResourceArnException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << ResourceArnRequiredException
        operation.traits = {}
      end)
      service.add_operation(:merge_branches_by_fast_forward, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#MergeBranchesByFastForward"
        operation.name = "MergeBranchesByFastForward"
        operation.input = MergeBranchesByFastForwardInput
        operation.output = MergeBranchesByFastForwardOutput
        operation.errors << BranchDoesNotExistException
        operation.errors << BranchNameIsTagNameException
        operation.errors << BranchNameRequiredException
        operation.errors << CommitDoesNotExistException
        operation.errors << CommitRequiredException
        operation.errors << ConcurrentReferenceUpdateException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidBranchNameException
        operation.errors << InvalidCommitException
        operation.errors << InvalidRepositoryNameException
        operation.errors << InvalidTargetBranchException
        operation.errors << ManualMergeRequiredException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << TipsDivergenceExceededException
        operation.traits = {}
      end)
      service.add_operation(:merge_branches_by_squash, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#MergeBranchesBySquash"
        operation.name = "MergeBranchesBySquash"
        operation.input = MergeBranchesBySquashInput
        operation.output = MergeBranchesBySquashOutput
        operation.errors << BranchDoesNotExistException
        operation.errors << BranchNameIsTagNameException
        operation.errors << BranchNameRequiredException
        operation.errors << CommitDoesNotExistException
        operation.errors << CommitMessageLengthExceededException
        operation.errors << CommitRequiredException
        operation.errors << ConcurrentReferenceUpdateException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << FileContentSizeLimitExceededException
        operation.errors << FileModeRequiredException
        operation.errors << FolderContentSizeLimitExceededException
        operation.errors << InvalidBranchNameException
        operation.errors << InvalidCommitException
        operation.errors << InvalidConflictDetailLevelException
        operation.errors << InvalidConflictResolutionException
        operation.errors << InvalidConflictResolutionStrategyException
        operation.errors << InvalidEmailException
        operation.errors << InvalidFileModeException
        operation.errors << InvalidPathException
        operation.errors << InvalidReplacementContentException
        operation.errors << InvalidReplacementTypeException
        operation.errors << InvalidRepositoryNameException
        operation.errors << InvalidTargetBranchException
        operation.errors << ManualMergeRequiredException
        operation.errors << MaximumConflictResolutionEntriesExceededException
        operation.errors << MaximumFileContentToLoadExceededException
        operation.errors << MaximumItemsToCompareExceededException
        operation.errors << MultipleConflictResolutionEntriesException
        operation.errors << NameLengthExceededException
        operation.errors << PathRequiredException
        operation.errors << ReplacementContentRequiredException
        operation.errors << ReplacementTypeRequiredException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << TipsDivergenceExceededException
        operation.traits = {}
      end)
      service.add_operation(:merge_branches_by_three_way, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#MergeBranchesByThreeWay"
        operation.name = "MergeBranchesByThreeWay"
        operation.input = MergeBranchesByThreeWayInput
        operation.output = MergeBranchesByThreeWayOutput
        operation.errors << BranchDoesNotExistException
        operation.errors << BranchNameIsTagNameException
        operation.errors << BranchNameRequiredException
        operation.errors << CommitDoesNotExistException
        operation.errors << CommitMessageLengthExceededException
        operation.errors << CommitRequiredException
        operation.errors << ConcurrentReferenceUpdateException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << FileContentSizeLimitExceededException
        operation.errors << FileModeRequiredException
        operation.errors << FolderContentSizeLimitExceededException
        operation.errors << InvalidBranchNameException
        operation.errors << InvalidCommitException
        operation.errors << InvalidConflictDetailLevelException
        operation.errors << InvalidConflictResolutionException
        operation.errors << InvalidConflictResolutionStrategyException
        operation.errors << InvalidEmailException
        operation.errors << InvalidFileModeException
        operation.errors << InvalidPathException
        operation.errors << InvalidReplacementContentException
        operation.errors << InvalidReplacementTypeException
        operation.errors << InvalidRepositoryNameException
        operation.errors << InvalidTargetBranchException
        operation.errors << ManualMergeRequiredException
        operation.errors << MaximumConflictResolutionEntriesExceededException
        operation.errors << MaximumFileContentToLoadExceededException
        operation.errors << MaximumItemsToCompareExceededException
        operation.errors << MultipleConflictResolutionEntriesException
        operation.errors << NameLengthExceededException
        operation.errors << PathRequiredException
        operation.errors << ReplacementContentRequiredException
        operation.errors << ReplacementTypeRequiredException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << TipsDivergenceExceededException
        operation.traits = {}
      end)
      service.add_operation(:merge_pull_request_by_fast_forward, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#MergePullRequestByFastForward"
        operation.name = "MergePullRequestByFastForward"
        operation.input = MergePullRequestByFastForwardInput
        operation.output = MergePullRequestByFastForwardOutput
        operation.errors << ConcurrentReferenceUpdateException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidCommitIdException
        operation.errors << InvalidPullRequestIdException
        operation.errors << InvalidRepositoryNameException
        operation.errors << ManualMergeRequiredException
        operation.errors << PullRequestAlreadyClosedException
        operation.errors << PullRequestApprovalRulesNotSatisfiedException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.errors << ReferenceDoesNotExistException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << RepositoryNotAssociatedWithPullRequestException
        operation.errors << TipOfSourceReferenceIsDifferentException
        operation.traits = {}
      end)
      service.add_operation(:merge_pull_request_by_squash, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#MergePullRequestBySquash"
        operation.name = "MergePullRequestBySquash"
        operation.input = MergePullRequestBySquashInput
        operation.output = MergePullRequestBySquashOutput
        operation.errors << CommitMessageLengthExceededException
        operation.errors << ConcurrentReferenceUpdateException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << FileContentSizeLimitExceededException
        operation.errors << FolderContentSizeLimitExceededException
        operation.errors << InvalidCommitIdException
        operation.errors << InvalidConflictDetailLevelException
        operation.errors << InvalidConflictResolutionException
        operation.errors << InvalidConflictResolutionStrategyException
        operation.errors << InvalidEmailException
        operation.errors << InvalidFileModeException
        operation.errors << InvalidPathException
        operation.errors << InvalidPullRequestIdException
        operation.errors << InvalidReplacementContentException
        operation.errors << InvalidReplacementTypeException
        operation.errors << InvalidRepositoryNameException
        operation.errors << ManualMergeRequiredException
        operation.errors << MaximumConflictResolutionEntriesExceededException
        operation.errors << MaximumFileContentToLoadExceededException
        operation.errors << MaximumItemsToCompareExceededException
        operation.errors << MultipleConflictResolutionEntriesException
        operation.errors << NameLengthExceededException
        operation.errors << PathRequiredException
        operation.errors << PullRequestAlreadyClosedException
        operation.errors << PullRequestApprovalRulesNotSatisfiedException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.errors << ReplacementContentRequiredException
        operation.errors << ReplacementTypeRequiredException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << RepositoryNotAssociatedWithPullRequestException
        operation.errors << TipOfSourceReferenceIsDifferentException
        operation.errors << TipsDivergenceExceededException
        operation.traits = {}
      end)
      service.add_operation(:merge_pull_request_by_three_way, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#MergePullRequestByThreeWay"
        operation.name = "MergePullRequestByThreeWay"
        operation.input = MergePullRequestByThreeWayInput
        operation.output = MergePullRequestByThreeWayOutput
        operation.errors << CommitMessageLengthExceededException
        operation.errors << ConcurrentReferenceUpdateException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << FileContentSizeLimitExceededException
        operation.errors << FolderContentSizeLimitExceededException
        operation.errors << InvalidCommitIdException
        operation.errors << InvalidConflictDetailLevelException
        operation.errors << InvalidConflictResolutionException
        operation.errors << InvalidConflictResolutionStrategyException
        operation.errors << InvalidEmailException
        operation.errors << InvalidFileModeException
        operation.errors << InvalidPathException
        operation.errors << InvalidPullRequestIdException
        operation.errors << InvalidReplacementContentException
        operation.errors << InvalidReplacementTypeException
        operation.errors << InvalidRepositoryNameException
        operation.errors << ManualMergeRequiredException
        operation.errors << MaximumConflictResolutionEntriesExceededException
        operation.errors << MaximumFileContentToLoadExceededException
        operation.errors << MaximumItemsToCompareExceededException
        operation.errors << MultipleConflictResolutionEntriesException
        operation.errors << NameLengthExceededException
        operation.errors << PathRequiredException
        operation.errors << PullRequestAlreadyClosedException
        operation.errors << PullRequestApprovalRulesNotSatisfiedException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.errors << ReplacementContentRequiredException
        operation.errors << ReplacementTypeRequiredException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << RepositoryNotAssociatedWithPullRequestException
        operation.errors << TipOfSourceReferenceIsDifferentException
        operation.errors << TipsDivergenceExceededException
        operation.traits = {}
      end)
      service.add_operation(:override_pull_request_approval_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#OverridePullRequestApprovalRules"
        operation.name = "OverridePullRequestApprovalRules"
        operation.input = OverridePullRequestApprovalRulesInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidOverrideStatusException
        operation.errors << InvalidPullRequestIdException
        operation.errors << InvalidRevisionIdException
        operation.errors << OverrideAlreadySetException
        operation.errors << OverrideStatusRequiredException
        operation.errors << PullRequestAlreadyClosedException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.errors << RevisionIdRequiredException
        operation.errors << RevisionNotCurrentException
        operation.traits = {}
      end)
      service.add_operation(:post_comment_for_compared_commit, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#PostCommentForComparedCommit"
        operation.name = "PostCommentForComparedCommit"
        operation.input = PostCommentForComparedCommitInput
        operation.output = PostCommentForComparedCommitOutput
        operation.errors << BeforeCommitIdAndAfterCommitIdAreSameException
        operation.errors << ClientRequestTokenRequiredException
        operation.errors << CommentContentRequiredException
        operation.errors << CommentContentSizeLimitExceededException
        operation.errors << CommitDoesNotExistException
        operation.errors << CommitIdRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << IdempotencyParameterMismatchException
        operation.errors << InvalidClientRequestTokenException
        operation.errors << InvalidCommitIdException
        operation.errors << InvalidFileLocationException
        operation.errors << InvalidFilePositionException
        operation.errors << InvalidPathException
        operation.errors << InvalidRelativeFileVersionEnumException
        operation.errors << InvalidRepositoryNameException
        operation.errors << PathDoesNotExistException
        operation.errors << PathRequiredException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:post_comment_for_pull_request, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#PostCommentForPullRequest"
        operation.name = "PostCommentForPullRequest"
        operation.input = PostCommentForPullRequestInput
        operation.output = PostCommentForPullRequestOutput
        operation.errors << BeforeCommitIdAndAfterCommitIdAreSameException
        operation.errors << ClientRequestTokenRequiredException
        operation.errors << CommentContentRequiredException
        operation.errors << CommentContentSizeLimitExceededException
        operation.errors << CommitDoesNotExistException
        operation.errors << CommitIdRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << IdempotencyParameterMismatchException
        operation.errors << InvalidClientRequestTokenException
        operation.errors << InvalidCommitIdException
        operation.errors << InvalidFileLocationException
        operation.errors << InvalidFilePositionException
        operation.errors << InvalidPathException
        operation.errors << InvalidPullRequestIdException
        operation.errors << InvalidRelativeFileVersionEnumException
        operation.errors << InvalidRepositoryNameException
        operation.errors << PathDoesNotExistException
        operation.errors << PathRequiredException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << RepositoryNotAssociatedWithPullRequestException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:post_comment_reply, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#PostCommentReply"
        operation.name = "PostCommentReply"
        operation.input = PostCommentReplyInput
        operation.output = PostCommentReplyOutput
        operation.errors << ClientRequestTokenRequiredException
        operation.errors << CommentContentRequiredException
        operation.errors << CommentContentSizeLimitExceededException
        operation.errors << CommentDoesNotExistException
        operation.errors << CommentIdRequiredException
        operation.errors << IdempotencyParameterMismatchException
        operation.errors << InvalidClientRequestTokenException
        operation.errors << InvalidCommentIdException
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_comment_reaction, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#PutCommentReaction"
        operation.name = "PutCommentReaction"
        operation.input = PutCommentReactionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << CommentDeletedException
        operation.errors << CommentDoesNotExistException
        operation.errors << CommentIdRequiredException
        operation.errors << InvalidCommentIdException
        operation.errors << InvalidReactionValueException
        operation.errors << ReactionLimitExceededException
        operation.errors << ReactionValueRequiredException
        operation.traits = {}
      end)
      service.add_operation(:put_file, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#PutFile"
        operation.name = "PutFile"
        operation.input = PutFileInput
        operation.output = PutFileOutput
        operation.errors << BranchDoesNotExistException
        operation.errors << BranchNameIsTagNameException
        operation.errors << BranchNameRequiredException
        operation.errors << CommitMessageLengthExceededException
        operation.errors << DirectoryNameConflictsWithFileNameException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << FileContentRequiredException
        operation.errors << FileContentSizeLimitExceededException
        operation.errors << FileNameConflictsWithDirectoryNameException
        operation.errors << FilePathConflictsWithSubmodulePathException
        operation.errors << FolderContentSizeLimitExceededException
        operation.errors << InvalidBranchNameException
        operation.errors << InvalidDeletionParameterException
        operation.errors << InvalidEmailException
        operation.errors << InvalidFileModeException
        operation.errors << InvalidParentCommitIdException
        operation.errors << InvalidPathException
        operation.errors << InvalidRepositoryNameException
        operation.errors << NameLengthExceededException
        operation.errors << ParentCommitDoesNotExistException
        operation.errors << ParentCommitIdOutdatedException
        operation.errors << ParentCommitIdRequiredException
        operation.errors << PathRequiredException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << SameFileContentException
        operation.traits = {}
      end)
      service.add_operation(:put_repository_triggers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#PutRepositoryTriggers"
        operation.name = "PutRepositoryTriggers"
        operation.input = PutRepositoryTriggersInput
        operation.output = PutRepositoryTriggersOutput
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidRepositoryNameException
        operation.errors << InvalidRepositoryTriggerBranchNameException
        operation.errors << InvalidRepositoryTriggerCustomDataException
        operation.errors << InvalidRepositoryTriggerDestinationArnException
        operation.errors << InvalidRepositoryTriggerEventsException
        operation.errors << InvalidRepositoryTriggerNameException
        operation.errors << InvalidRepositoryTriggerRegionException
        operation.errors << MaximumBranchesExceededException
        operation.errors << MaximumRepositoryTriggersExceededException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << RepositoryTriggerBranchNameListRequiredException
        operation.errors << RepositoryTriggerDestinationArnRequiredException
        operation.errors << RepositoryTriggerEventsListRequiredException
        operation.errors << RepositoryTriggerNameRequiredException
        operation.errors << RepositoryTriggersListRequiredException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidRepositoryNameException
        operation.errors << InvalidResourceArnException
        operation.errors << InvalidSystemTagUsageException
        operation.errors << InvalidTagsMapException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << ResourceArnRequiredException
        operation.errors << TagPolicyException
        operation.errors << TagsMapRequiredException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:test_repository_triggers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#TestRepositoryTriggers"
        operation.name = "TestRepositoryTriggers"
        operation.input = TestRepositoryTriggersInput
        operation.output = TestRepositoryTriggersOutput
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidRepositoryNameException
        operation.errors << InvalidRepositoryTriggerBranchNameException
        operation.errors << InvalidRepositoryTriggerCustomDataException
        operation.errors << InvalidRepositoryTriggerDestinationArnException
        operation.errors << InvalidRepositoryTriggerEventsException
        operation.errors << InvalidRepositoryTriggerNameException
        operation.errors << InvalidRepositoryTriggerRegionException
        operation.errors << MaximumBranchesExceededException
        operation.errors << MaximumRepositoryTriggersExceededException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.errors << RepositoryTriggerBranchNameListRequiredException
        operation.errors << RepositoryTriggerDestinationArnRequiredException
        operation.errors << RepositoryTriggerEventsListRequiredException
        operation.errors << RepositoryTriggerNameRequiredException
        operation.errors << RepositoryTriggersListRequiredException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidRepositoryNameException
        operation.errors << InvalidResourceArnException
        operation.errors << InvalidSystemTagUsageException
        operation.errors << InvalidTagKeysListException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << ResourceArnRequiredException
        operation.errors << TagKeysListRequiredException
        operation.errors << TagPolicyException
        operation.errors << TooManyTagsException
        operation.traits = {}
      end)
      service.add_operation(:update_approval_rule_template_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdateApprovalRuleTemplateContent"
        operation.name = "UpdateApprovalRuleTemplateContent"
        operation.input = UpdateApprovalRuleTemplateContentInput
        operation.output = UpdateApprovalRuleTemplateContentOutput
        operation.errors << ApprovalRuleTemplateContentRequiredException
        operation.errors << ApprovalRuleTemplateDoesNotExistException
        operation.errors << ApprovalRuleTemplateNameRequiredException
        operation.errors << InvalidApprovalRuleTemplateContentException
        operation.errors << InvalidApprovalRuleTemplateNameException
        operation.errors << InvalidRuleContentSha256Exception
        operation.traits = {}
      end)
      service.add_operation(:update_approval_rule_template_description, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdateApprovalRuleTemplateDescription"
        operation.name = "UpdateApprovalRuleTemplateDescription"
        operation.input = UpdateApprovalRuleTemplateDescriptionInput
        operation.output = UpdateApprovalRuleTemplateDescriptionOutput
        operation.errors << ApprovalRuleTemplateDoesNotExistException
        operation.errors << ApprovalRuleTemplateNameRequiredException
        operation.errors << InvalidApprovalRuleTemplateDescriptionException
        operation.errors << InvalidApprovalRuleTemplateNameException
        operation.traits = {}
      end)
      service.add_operation(:update_approval_rule_template_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdateApprovalRuleTemplateName"
        operation.name = "UpdateApprovalRuleTemplateName"
        operation.input = UpdateApprovalRuleTemplateNameInput
        operation.output = UpdateApprovalRuleTemplateNameOutput
        operation.errors << ApprovalRuleTemplateDoesNotExistException
        operation.errors << ApprovalRuleTemplateNameAlreadyExistsException
        operation.errors << ApprovalRuleTemplateNameRequiredException
        operation.errors << InvalidApprovalRuleTemplateNameException
        operation.traits = {}
      end)
      service.add_operation(:update_comment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdateComment"
        operation.name = "UpdateComment"
        operation.input = UpdateCommentInput
        operation.output = UpdateCommentOutput
        operation.errors << CommentContentRequiredException
        operation.errors << CommentContentSizeLimitExceededException
        operation.errors << CommentDeletedException
        operation.errors << CommentDoesNotExistException
        operation.errors << CommentIdRequiredException
        operation.errors << CommentNotCreatedByCallerException
        operation.errors << InvalidCommentIdException
        operation.traits = {}
      end)
      service.add_operation(:update_default_branch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdateDefaultBranch"
        operation.name = "UpdateDefaultBranch"
        operation.input = UpdateDefaultBranchInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BranchDoesNotExistException
        operation.errors << BranchNameRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidBranchNameException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:update_pull_request_approval_rule_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdatePullRequestApprovalRuleContent"
        operation.name = "UpdatePullRequestApprovalRuleContent"
        operation.input = UpdatePullRequestApprovalRuleContentInput
        operation.output = UpdatePullRequestApprovalRuleContentOutput
        operation.errors << ApprovalRuleContentRequiredException
        operation.errors << ApprovalRuleDoesNotExistException
        operation.errors << ApprovalRuleNameRequiredException
        operation.errors << CannotModifyApprovalRuleFromTemplateException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidApprovalRuleContentException
        operation.errors << InvalidApprovalRuleNameException
        operation.errors << InvalidPullRequestIdException
        operation.errors << InvalidRuleContentSha256Exception
        operation.errors << PullRequestAlreadyClosedException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.traits = {}
      end)
      service.add_operation(:update_pull_request_approval_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdatePullRequestApprovalState"
        operation.name = "UpdatePullRequestApprovalState"
        operation.input = UpdatePullRequestApprovalStateInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ApprovalStateRequiredException
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidApprovalStateException
        operation.errors << InvalidPullRequestIdException
        operation.errors << InvalidRevisionIdException
        operation.errors << MaximumNumberOfApprovalsExceededException
        operation.errors << PullRequestAlreadyClosedException
        operation.errors << PullRequestCannotBeApprovedByAuthorException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.errors << RevisionIdRequiredException
        operation.errors << RevisionNotCurrentException
        operation.traits = {}
      end)
      service.add_operation(:update_pull_request_description, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdatePullRequestDescription"
        operation.name = "UpdatePullRequestDescription"
        operation.input = UpdatePullRequestDescriptionInput
        operation.output = UpdatePullRequestDescriptionOutput
        operation.errors << InvalidDescriptionException
        operation.errors << InvalidPullRequestIdException
        operation.errors << PullRequestAlreadyClosedException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.traits = {}
      end)
      service.add_operation(:update_pull_request_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdatePullRequestStatus"
        operation.name = "UpdatePullRequestStatus"
        operation.input = UpdatePullRequestStatusInput
        operation.output = UpdatePullRequestStatusOutput
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidPullRequestIdException
        operation.errors << InvalidPullRequestStatusException
        operation.errors << InvalidPullRequestStatusUpdateException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.errors << PullRequestStatusRequiredException
        operation.traits = {}
      end)
      service.add_operation(:update_pull_request_title, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdatePullRequestTitle"
        operation.name = "UpdatePullRequestTitle"
        operation.input = UpdatePullRequestTitleInput
        operation.output = UpdatePullRequestTitleOutput
        operation.errors << InvalidPullRequestIdException
        operation.errors << InvalidTitleException
        operation.errors << PullRequestAlreadyClosedException
        operation.errors << PullRequestDoesNotExistException
        operation.errors << PullRequestIdRequiredException
        operation.errors << TitleRequiredException
        operation.traits = {}
      end)
      service.add_operation(:update_repository_description, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdateRepositoryDescription"
        operation.name = "UpdateRepositoryDescription"
        operation.input = UpdateRepositoryDescriptionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidRepositoryDescriptionException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:update_repository_encryption_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdateRepositoryEncryptionKey"
        operation.name = "UpdateRepositoryEncryptionKey"
        operation.input = UpdateRepositoryEncryptionKeyInput
        operation.output = UpdateRepositoryEncryptionKeyOutput
        operation.errors << EncryptionIntegrityChecksFailedException
        operation.errors << EncryptionKeyAccessDeniedException
        operation.errors << EncryptionKeyDisabledException
        operation.errors << EncryptionKeyInvalidIdException
        operation.errors << EncryptionKeyInvalidUsageException
        operation.errors << EncryptionKeyNotFoundException
        operation.errors << EncryptionKeyRequiredException
        operation.errors << EncryptionKeyUnavailableException
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
      end)
      service.add_operation(:update_repository_name, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdateRepositoryName"
        operation.name = "UpdateRepositoryName"
        operation.input = UpdateRepositoryNameInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidRepositoryNameException
        operation.errors << RepositoryDoesNotExistException
        operation.errors << RepositoryNameExistsException
        operation.errors << RepositoryNameRequiredException
        operation.traits = {}
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
