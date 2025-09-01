# frozen_string_literal: true

# This is generated code!

module Aws::CodeCommit
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#AccountId', name: 'AccountId')
    ActorDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ActorDoesNotExistException', name: 'ActorDoesNotExistException', traits: {"smithy.api#error" => "client"})
    AdditionalData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#AdditionalData', name: 'AdditionalData')
    Approval = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#Approval', name: 'Approval')
    ApprovalList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#ApprovalList', name: 'ApprovalList')
    ApprovalRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ApprovalRule', name: 'ApprovalRule')
    ApprovalRuleContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleContent', name: 'ApprovalRuleContent', traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}})
    ApprovalRuleContentRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleContentRequiredException', name: 'ApprovalRuleContentRequiredException', traits: {"smithy.api#error" => "client"})
    ApprovalRuleDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleDoesNotExistException', name: 'ApprovalRuleDoesNotExistException', traits: {"smithy.api#error" => "client"})
    ApprovalRuleEventMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleEventMetadata', name: 'ApprovalRuleEventMetadata')
    ApprovalRuleId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleId', name: 'ApprovalRuleId')
    ApprovalRuleName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleName', name: 'ApprovalRuleName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ApprovalRuleNameAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleNameAlreadyExistsException', name: 'ApprovalRuleNameAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    ApprovalRuleNameRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleNameRequiredException', name: 'ApprovalRuleNameRequiredException', traits: {"smithy.api#error" => "client"})
    ApprovalRuleOverriddenEventMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleOverriddenEventMetadata', name: 'ApprovalRuleOverriddenEventMetadata')
    ApprovalRuleTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleTemplate', name: 'ApprovalRuleTemplate')
    ApprovalRuleTemplateContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleTemplateContent', name: 'ApprovalRuleTemplateContent', traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}})
    ApprovalRuleTemplateContentRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleTemplateContentRequiredException', name: 'ApprovalRuleTemplateContentRequiredException', traits: {"smithy.api#error" => "client"})
    ApprovalRuleTemplateDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleTemplateDescription', name: 'ApprovalRuleTemplateDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    ApprovalRuleTemplateDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleTemplateDoesNotExistException', name: 'ApprovalRuleTemplateDoesNotExistException', traits: {"smithy.api#error" => "client"})
    ApprovalRuleTemplateId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleTemplateId', name: 'ApprovalRuleTemplateId')
    ApprovalRuleTemplateInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleTemplateInUseException', name: 'ApprovalRuleTemplateInUseException', traits: {"smithy.api#error" => "client"})
    ApprovalRuleTemplateName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleTemplateName', name: 'ApprovalRuleTemplateName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ApprovalRuleTemplateNameAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleTemplateNameAlreadyExistsException', name: 'ApprovalRuleTemplateNameAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    ApprovalRuleTemplateNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleTemplateNameList', name: 'ApprovalRuleTemplateNameList')
    ApprovalRuleTemplateNameRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ApprovalRuleTemplateNameRequiredException', name: 'ApprovalRuleTemplateNameRequiredException', traits: {"smithy.api#error" => "client"})
    ApprovalRulesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#ApprovalRulesList', name: 'ApprovalRulesList')
    ApprovalRulesNotSatisfiedList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#ApprovalRulesNotSatisfiedList', name: 'ApprovalRulesNotSatisfiedList')
    ApprovalRulesSatisfiedList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#ApprovalRulesSatisfiedList', name: 'ApprovalRulesSatisfiedList')
    ApprovalState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codecommit#ApprovalState', name: 'ApprovalState')
    ApprovalStateChangedEventMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ApprovalStateChangedEventMetadata', name: 'ApprovalStateChangedEventMetadata')
    ApprovalStateRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ApprovalStateRequiredException', name: 'ApprovalStateRequiredException', traits: {"smithy.api#error" => "client"})
    Approved = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codecommit#Approved', name: 'Approved', traits: {"smithy.api#default" => false})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#Arn', name: 'Arn')
    AssociateApprovalRuleTemplateWithRepositoryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#AssociateApprovalRuleTemplateWithRepositoryInput', name: 'AssociateApprovalRuleTemplateWithRepositoryInput')
    AuthorDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#AuthorDoesNotExistException', name: 'AuthorDoesNotExistException', traits: {"smithy.api#error" => "client"})
    BatchAssociateApprovalRuleTemplateWithRepositoriesError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BatchAssociateApprovalRuleTemplateWithRepositoriesError', name: 'BatchAssociateApprovalRuleTemplateWithRepositoriesError')
    BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList', name: 'BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList')
    BatchAssociateApprovalRuleTemplateWithRepositoriesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BatchAssociateApprovalRuleTemplateWithRepositoriesInput', name: 'BatchAssociateApprovalRuleTemplateWithRepositoriesInput')
    BatchAssociateApprovalRuleTemplateWithRepositoriesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BatchAssociateApprovalRuleTemplateWithRepositoriesOutput', name: 'BatchAssociateApprovalRuleTemplateWithRepositoriesOutput')
    BatchDescribeMergeConflictsError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BatchDescribeMergeConflictsError', name: 'BatchDescribeMergeConflictsError')
    BatchDescribeMergeConflictsErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#BatchDescribeMergeConflictsErrors', name: 'BatchDescribeMergeConflictsErrors')
    BatchDescribeMergeConflictsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BatchDescribeMergeConflictsInput', name: 'BatchDescribeMergeConflictsInput')
    BatchDescribeMergeConflictsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BatchDescribeMergeConflictsOutput', name: 'BatchDescribeMergeConflictsOutput')
    BatchDisassociateApprovalRuleTemplateFromRepositoriesError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BatchDisassociateApprovalRuleTemplateFromRepositoriesError', name: 'BatchDisassociateApprovalRuleTemplateFromRepositoriesError')
    BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList', name: 'BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList')
    BatchDisassociateApprovalRuleTemplateFromRepositoriesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BatchDisassociateApprovalRuleTemplateFromRepositoriesInput', name: 'BatchDisassociateApprovalRuleTemplateFromRepositoriesInput')
    BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput', name: 'BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput')
    BatchGetCommitsError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BatchGetCommitsError', name: 'BatchGetCommitsError')
    BatchGetCommitsErrorsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#BatchGetCommitsErrorsList', name: 'BatchGetCommitsErrorsList')
    BatchGetCommitsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BatchGetCommitsInput', name: 'BatchGetCommitsInput')
    BatchGetCommitsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BatchGetCommitsOutput', name: 'BatchGetCommitsOutput')
    BatchGetRepositoriesError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BatchGetRepositoriesError', name: 'BatchGetRepositoriesError')
    BatchGetRepositoriesErrorCodeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codecommit#BatchGetRepositoriesErrorCodeEnum', name: 'BatchGetRepositoriesErrorCodeEnum')
    BatchGetRepositoriesErrorsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#BatchGetRepositoriesErrorsList', name: 'BatchGetRepositoriesErrorsList')
    BatchGetRepositoriesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BatchGetRepositoriesInput', name: 'BatchGetRepositoriesInput')
    BatchGetRepositoriesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BatchGetRepositoriesOutput', name: 'BatchGetRepositoriesOutput')
    BeforeCommitIdAndAfterCommitIdAreSameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BeforeCommitIdAndAfterCommitIdAreSameException', name: 'BeforeCommitIdAndAfterCommitIdAreSameException', traits: {"smithy.api#error" => "client"})
    BlobIdDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BlobIdDoesNotExistException', name: 'BlobIdDoesNotExistException', traits: {"smithy.api#error" => "client"})
    BlobIdRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BlobIdRequiredException', name: 'BlobIdRequiredException', traits: {"smithy.api#error" => "client"})
    BlobMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BlobMetadata', name: 'BlobMetadata')
    BranchDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BranchDoesNotExistException', name: 'BranchDoesNotExistException', traits: {"smithy.api#error" => "client"})
    BranchInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BranchInfo', name: 'BranchInfo')
    BranchName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#BranchName', name: 'BranchName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    BranchNameExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BranchNameExistsException', name: 'BranchNameExistsException', traits: {"smithy.api#error" => "client"})
    BranchNameIsTagNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BranchNameIsTagNameException', name: 'BranchNameIsTagNameException', traits: {"smithy.api#error" => "client"})
    BranchNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#BranchNameList', name: 'BranchNameList')
    BranchNameRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#BranchNameRequiredException', name: 'BranchNameRequiredException', traits: {"smithy.api#error" => "client"})
    CallerReactions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#CallerReactions', name: 'CallerReactions')
    CannotDeleteApprovalRuleFromTemplateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CannotDeleteApprovalRuleFromTemplateException', name: 'CannotDeleteApprovalRuleFromTemplateException', traits: {"smithy.api#error" => "client"})
    CannotModifyApprovalRuleFromTemplateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CannotModifyApprovalRuleFromTemplateException', name: 'CannotModifyApprovalRuleFromTemplateException', traits: {"smithy.api#error" => "client"})
    CapitalBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codecommit#CapitalBoolean', name: 'CapitalBoolean')
    ChangeTypeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codecommit#ChangeTypeEnum', name: 'ChangeTypeEnum')
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ClientRequestToken', name: 'ClientRequestToken')
    ClientRequestTokenRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ClientRequestTokenRequiredException', name: 'ClientRequestTokenRequiredException', traits: {"smithy.api#error" => "client"})
    CloneUrlHttp = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#CloneUrlHttp', name: 'CloneUrlHttp')
    CloneUrlSsh = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#CloneUrlSsh', name: 'CloneUrlSsh')
    Comment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#Comment', name: 'Comment')
    CommentContentRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CommentContentRequiredException', name: 'CommentContentRequiredException', traits: {"smithy.api#error" => "client"})
    CommentContentSizeLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CommentContentSizeLimitExceededException', name: 'CommentContentSizeLimitExceededException', traits: {"smithy.api#error" => "client"})
    CommentDeletedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CommentDeletedException', name: 'CommentDeletedException', traits: {"smithy.api#error" => "client"})
    CommentDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CommentDoesNotExistException', name: 'CommentDoesNotExistException', traits: {"smithy.api#error" => "client"})
    CommentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#CommentId', name: 'CommentId')
    CommentIdRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CommentIdRequiredException', name: 'CommentIdRequiredException', traits: {"smithy.api#error" => "client"})
    CommentNotCreatedByCallerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CommentNotCreatedByCallerException', name: 'CommentNotCreatedByCallerException', traits: {"smithy.api#error" => "client"})
    Comments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#Comments', name: 'Comments')
    CommentsForComparedCommit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CommentsForComparedCommit', name: 'CommentsForComparedCommit')
    CommentsForComparedCommitData = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#CommentsForComparedCommitData', name: 'CommentsForComparedCommitData')
    CommentsForPullRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CommentsForPullRequest', name: 'CommentsForPullRequest')
    CommentsForPullRequestData = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#CommentsForPullRequestData', name: 'CommentsForPullRequestData')
    Commit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#Commit', name: 'Commit')
    CommitDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CommitDoesNotExistException', name: 'CommitDoesNotExistException', traits: {"smithy.api#error" => "client"})
    CommitId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#CommitId', name: 'CommitId')
    CommitIdDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CommitIdDoesNotExistException', name: 'CommitIdDoesNotExistException', traits: {"smithy.api#error" => "client"})
    CommitIdRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CommitIdRequiredException', name: 'CommitIdRequiredException', traits: {"smithy.api#error" => "client"})
    CommitIdsInputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#CommitIdsInputList', name: 'CommitIdsInputList')
    CommitIdsLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CommitIdsLimitExceededException', name: 'CommitIdsLimitExceededException', traits: {"smithy.api#error" => "client"})
    CommitIdsListRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CommitIdsListRequiredException', name: 'CommitIdsListRequiredException', traits: {"smithy.api#error" => "client"})
    CommitMessageLengthExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CommitMessageLengthExceededException', name: 'CommitMessageLengthExceededException', traits: {"smithy.api#error" => "client"})
    CommitName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#CommitName', name: 'CommitName')
    CommitObjectsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#CommitObjectsList', name: 'CommitObjectsList')
    CommitRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CommitRequiredException', name: 'CommitRequiredException', traits: {"smithy.api#error" => "client"})
    ConcurrentReferenceUpdateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ConcurrentReferenceUpdateException', name: 'ConcurrentReferenceUpdateException', traits: {"smithy.api#error" => "client"})
    Conflict = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#Conflict', name: 'Conflict')
    ConflictDetailLevelTypeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codecommit#ConflictDetailLevelTypeEnum', name: 'ConflictDetailLevelTypeEnum')
    ConflictMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ConflictMetadata', name: 'ConflictMetadata')
    ConflictMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#ConflictMetadataList', name: 'ConflictMetadataList')
    ConflictResolution = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ConflictResolution', name: 'ConflictResolution')
    ConflictResolutionStrategyTypeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codecommit#ConflictResolutionStrategyTypeEnum', name: 'ConflictResolutionStrategyTypeEnum')
    Conflicts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#Conflicts', name: 'Conflicts')
    Content = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#Content', name: 'Content')
    Count = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codecommit#Count', name: 'Count')
    CreateApprovalRuleTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CreateApprovalRuleTemplateInput', name: 'CreateApprovalRuleTemplateInput')
    CreateApprovalRuleTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CreateApprovalRuleTemplateOutput', name: 'CreateApprovalRuleTemplateOutput')
    CreateBranchInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CreateBranchInput', name: 'CreateBranchInput')
    CreateCommitInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CreateCommitInput', name: 'CreateCommitInput')
    CreateCommitOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CreateCommitOutput', name: 'CreateCommitOutput')
    CreatePullRequestApprovalRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CreatePullRequestApprovalRuleInput', name: 'CreatePullRequestApprovalRuleInput')
    CreatePullRequestApprovalRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CreatePullRequestApprovalRuleOutput', name: 'CreatePullRequestApprovalRuleOutput')
    CreatePullRequestInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CreatePullRequestInput', name: 'CreatePullRequestInput')
    CreatePullRequestOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CreatePullRequestOutput', name: 'CreatePullRequestOutput')
    CreateRepositoryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CreateRepositoryInput', name: 'CreateRepositoryInput')
    CreateRepositoryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CreateRepositoryOutput', name: 'CreateRepositoryOutput')
    CreateUnreferencedMergeCommitInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CreateUnreferencedMergeCommitInput', name: 'CreateUnreferencedMergeCommitInput')
    CreateUnreferencedMergeCommitOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#CreateUnreferencedMergeCommitOutput', name: 'CreateUnreferencedMergeCommitOutput')
    CreationDate = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.codecommit#CreationDate', name: 'CreationDate')
    Date = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#Date', name: 'Date')
    DefaultBranchCannotBeDeletedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DefaultBranchCannotBeDeletedException', name: 'DefaultBranchCannotBeDeletedException', traits: {"smithy.api#error" => "client"})
    DeleteApprovalRuleTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DeleteApprovalRuleTemplateInput', name: 'DeleteApprovalRuleTemplateInput')
    DeleteApprovalRuleTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DeleteApprovalRuleTemplateOutput', name: 'DeleteApprovalRuleTemplateOutput')
    DeleteBranchInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DeleteBranchInput', name: 'DeleteBranchInput')
    DeleteBranchOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DeleteBranchOutput', name: 'DeleteBranchOutput')
    DeleteCommentContentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DeleteCommentContentInput', name: 'DeleteCommentContentInput')
    DeleteCommentContentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DeleteCommentContentOutput', name: 'DeleteCommentContentOutput')
    DeleteFileEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#DeleteFileEntries', name: 'DeleteFileEntries')
    DeleteFileEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DeleteFileEntry', name: 'DeleteFileEntry')
    DeleteFileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DeleteFileInput', name: 'DeleteFileInput')
    DeleteFileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DeleteFileOutput', name: 'DeleteFileOutput')
    DeletePullRequestApprovalRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DeletePullRequestApprovalRuleInput', name: 'DeletePullRequestApprovalRuleInput')
    DeletePullRequestApprovalRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DeletePullRequestApprovalRuleOutput', name: 'DeletePullRequestApprovalRuleOutput')
    DeleteRepositoryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DeleteRepositoryInput', name: 'DeleteRepositoryInput')
    DeleteRepositoryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DeleteRepositoryOutput', name: 'DeleteRepositoryOutput')
    DescribeMergeConflictsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DescribeMergeConflictsInput', name: 'DescribeMergeConflictsInput')
    DescribeMergeConflictsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DescribeMergeConflictsOutput', name: 'DescribeMergeConflictsOutput')
    DescribePullRequestEventsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DescribePullRequestEventsInput', name: 'DescribePullRequestEventsInput')
    DescribePullRequestEventsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DescribePullRequestEventsOutput', name: 'DescribePullRequestEventsOutput')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}})
    Difference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#Difference', name: 'Difference')
    DifferenceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#DifferenceList', name: 'DifferenceList')
    DirectoryNameConflictsWithFileNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DirectoryNameConflictsWithFileNameException', name: 'DirectoryNameConflictsWithFileNameException', traits: {"smithy.api#error" => "client"})
    DisassociateApprovalRuleTemplateFromRepositoryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#DisassociateApprovalRuleTemplateFromRepositoryInput', name: 'DisassociateApprovalRuleTemplateFromRepositoryInput')
    Email = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#Email', name: 'Email')
    EncryptionIntegrityChecksFailedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#EncryptionIntegrityChecksFailedException', name: 'EncryptionIntegrityChecksFailedException', traits: {"smithy.api#error" => "server"})
    EncryptionKeyAccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#EncryptionKeyAccessDeniedException', name: 'EncryptionKeyAccessDeniedException', traits: {"smithy.api#error" => "client"})
    EncryptionKeyDisabledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#EncryptionKeyDisabledException', name: 'EncryptionKeyDisabledException', traits: {"smithy.api#error" => "client"})
    EncryptionKeyInvalidIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#EncryptionKeyInvalidIdException', name: 'EncryptionKeyInvalidIdException', traits: {"smithy.api#error" => "client"})
    EncryptionKeyInvalidUsageException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#EncryptionKeyInvalidUsageException', name: 'EncryptionKeyInvalidUsageException', traits: {"smithy.api#error" => "client"})
    EncryptionKeyNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#EncryptionKeyNotFoundException', name: 'EncryptionKeyNotFoundException', traits: {"smithy.api#error" => "client"})
    EncryptionKeyRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#EncryptionKeyRequiredException', name: 'EncryptionKeyRequiredException', traits: {"smithy.api#error" => "client"})
    EncryptionKeyUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#EncryptionKeyUnavailableException', name: 'EncryptionKeyUnavailableException', traits: {"smithy.api#error" => "client"})
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ErrorCode', name: 'ErrorCode')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ErrorMessage', name: 'ErrorMessage')
    EvaluatePullRequestApprovalRulesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#EvaluatePullRequestApprovalRulesInput', name: 'EvaluatePullRequestApprovalRulesInput')
    EvaluatePullRequestApprovalRulesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#EvaluatePullRequestApprovalRulesOutput', name: 'EvaluatePullRequestApprovalRulesOutput')
    Evaluation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#Evaluation', name: 'Evaluation')
    EventDate = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.codecommit#EventDate', name: 'EventDate')
    ExceptionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ExceptionName', name: 'ExceptionName')
    File = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#File', name: 'File')
    FileContent = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.codecommit#FileContent', name: 'FileContent', traits: {"smithy.api#length" => {"min" => 0, "max" => 6291456}})
    FileContentAndSourceFileSpecifiedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#FileContentAndSourceFileSpecifiedException', name: 'FileContentAndSourceFileSpecifiedException', traits: {"smithy.api#error" => "client"})
    FileContentRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#FileContentRequiredException', name: 'FileContentRequiredException', traits: {"smithy.api#error" => "client"})
    FileContentSizeLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#FileContentSizeLimitExceededException', name: 'FileContentSizeLimitExceededException', traits: {"smithy.api#error" => "client"})
    FileDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#FileDoesNotExistException', name: 'FileDoesNotExistException', traits: {"smithy.api#error" => "client"})
    FileEntryRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#FileEntryRequiredException', name: 'FileEntryRequiredException', traits: {"smithy.api#error" => "client"})
    FileList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#FileList', name: 'FileList')
    FileMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#FileMetadata', name: 'FileMetadata')
    FileModeRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#FileModeRequiredException', name: 'FileModeRequiredException', traits: {"smithy.api#error" => "client"})
    FileModeTypeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codecommit#FileModeTypeEnum', name: 'FileModeTypeEnum')
    FileModes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#FileModes', name: 'FileModes')
    FileNameConflictsWithDirectoryNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#FileNameConflictsWithDirectoryNameException', name: 'FileNameConflictsWithDirectoryNameException', traits: {"smithy.api#error" => "client"})
    FilePathConflictsWithSubmodulePathException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#FilePathConflictsWithSubmodulePathException', name: 'FilePathConflictsWithSubmodulePathException', traits: {"smithy.api#error" => "client"})
    FilePaths = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#FilePaths', name: 'FilePaths')
    FileSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codecommit#FileSize', name: 'FileSize', traits: {"smithy.api#default" => 0})
    FileSizes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#FileSizes', name: 'FileSizes')
    FileTooLargeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#FileTooLargeException', name: 'FileTooLargeException', traits: {"smithy.api#error" => "client"})
    FileVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#FileVersion', name: 'FileVersion')
    FilesMetadata = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#FilesMetadata', name: 'FilesMetadata')
    Folder = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#Folder', name: 'Folder')
    FolderContentSizeLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#FolderContentSizeLimitExceededException', name: 'FolderContentSizeLimitExceededException', traits: {"smithy.api#error" => "client"})
    FolderDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#FolderDoesNotExistException', name: 'FolderDoesNotExistException', traits: {"smithy.api#error" => "client"})
    FolderList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#FolderList', name: 'FolderList')
    GetApprovalRuleTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetApprovalRuleTemplateInput', name: 'GetApprovalRuleTemplateInput')
    GetApprovalRuleTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetApprovalRuleTemplateOutput', name: 'GetApprovalRuleTemplateOutput')
    GetBlobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetBlobInput', name: 'GetBlobInput')
    GetBlobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetBlobOutput', name: 'GetBlobOutput')
    GetBranchInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetBranchInput', name: 'GetBranchInput')
    GetBranchOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetBranchOutput', name: 'GetBranchOutput')
    GetCommentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetCommentInput', name: 'GetCommentInput')
    GetCommentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetCommentOutput', name: 'GetCommentOutput')
    GetCommentReactionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetCommentReactionsInput', name: 'GetCommentReactionsInput')
    GetCommentReactionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetCommentReactionsOutput', name: 'GetCommentReactionsOutput')
    GetCommentsForComparedCommitInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetCommentsForComparedCommitInput', name: 'GetCommentsForComparedCommitInput')
    GetCommentsForComparedCommitOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetCommentsForComparedCommitOutput', name: 'GetCommentsForComparedCommitOutput')
    GetCommentsForPullRequestInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetCommentsForPullRequestInput', name: 'GetCommentsForPullRequestInput')
    GetCommentsForPullRequestOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetCommentsForPullRequestOutput', name: 'GetCommentsForPullRequestOutput')
    GetCommitInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetCommitInput', name: 'GetCommitInput')
    GetCommitOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetCommitOutput', name: 'GetCommitOutput')
    GetDifferencesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetDifferencesInput', name: 'GetDifferencesInput')
    GetDifferencesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetDifferencesOutput', name: 'GetDifferencesOutput')
    GetFileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetFileInput', name: 'GetFileInput')
    GetFileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetFileOutput', name: 'GetFileOutput')
    GetFolderInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetFolderInput', name: 'GetFolderInput')
    GetFolderOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetFolderOutput', name: 'GetFolderOutput')
    GetMergeCommitInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetMergeCommitInput', name: 'GetMergeCommitInput')
    GetMergeCommitOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetMergeCommitOutput', name: 'GetMergeCommitOutput')
    GetMergeConflictsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetMergeConflictsInput', name: 'GetMergeConflictsInput')
    GetMergeConflictsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetMergeConflictsOutput', name: 'GetMergeConflictsOutput')
    GetMergeOptionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetMergeOptionsInput', name: 'GetMergeOptionsInput')
    GetMergeOptionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetMergeOptionsOutput', name: 'GetMergeOptionsOutput')
    GetPullRequestApprovalStatesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetPullRequestApprovalStatesInput', name: 'GetPullRequestApprovalStatesInput')
    GetPullRequestApprovalStatesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetPullRequestApprovalStatesOutput', name: 'GetPullRequestApprovalStatesOutput')
    GetPullRequestInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetPullRequestInput', name: 'GetPullRequestInput')
    GetPullRequestOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetPullRequestOutput', name: 'GetPullRequestOutput')
    GetPullRequestOverrideStateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetPullRequestOverrideStateInput', name: 'GetPullRequestOverrideStateInput')
    GetPullRequestOverrideStateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetPullRequestOverrideStateOutput', name: 'GetPullRequestOverrideStateOutput')
    GetRepositoryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetRepositoryInput', name: 'GetRepositoryInput')
    GetRepositoryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetRepositoryOutput', name: 'GetRepositoryOutput')
    GetRepositoryTriggersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetRepositoryTriggersInput', name: 'GetRepositoryTriggersInput')
    GetRepositoryTriggersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#GetRepositoryTriggersOutput', name: 'GetRepositoryTriggersOutput')
    HunkContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#HunkContent', name: 'HunkContent')
    IdempotencyParameterMismatchException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#IdempotencyParameterMismatchException', name: 'IdempotencyParameterMismatchException', traits: {"smithy.api#error" => "client"})
    InvalidActorArnException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidActorArnException', name: 'InvalidActorArnException', traits: {"smithy.api#error" => "client"})
    InvalidApprovalRuleContentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidApprovalRuleContentException', name: 'InvalidApprovalRuleContentException', traits: {"smithy.api#error" => "client"})
    InvalidApprovalRuleNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidApprovalRuleNameException', name: 'InvalidApprovalRuleNameException', traits: {"smithy.api#error" => "client"})
    InvalidApprovalRuleTemplateContentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidApprovalRuleTemplateContentException', name: 'InvalidApprovalRuleTemplateContentException', traits: {"smithy.api#error" => "client"})
    InvalidApprovalRuleTemplateDescriptionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidApprovalRuleTemplateDescriptionException', name: 'InvalidApprovalRuleTemplateDescriptionException', traits: {"smithy.api#error" => "client"})
    InvalidApprovalRuleTemplateNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidApprovalRuleTemplateNameException', name: 'InvalidApprovalRuleTemplateNameException', traits: {"smithy.api#error" => "client"})
    InvalidApprovalStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidApprovalStateException', name: 'InvalidApprovalStateException', traits: {"smithy.api#error" => "client"})
    InvalidAuthorArnException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidAuthorArnException', name: 'InvalidAuthorArnException', traits: {"smithy.api#error" => "client"})
    InvalidBlobIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidBlobIdException', name: 'InvalidBlobIdException', traits: {"smithy.api#error" => "client"})
    InvalidBranchNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidBranchNameException', name: 'InvalidBranchNameException', traits: {"smithy.api#error" => "client"})
    InvalidClientRequestTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidClientRequestTokenException', name: 'InvalidClientRequestTokenException', traits: {"smithy.api#error" => "client"})
    InvalidCommentIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidCommentIdException', name: 'InvalidCommentIdException', traits: {"smithy.api#error" => "client"})
    InvalidCommitException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidCommitException', name: 'InvalidCommitException', traits: {"smithy.api#error" => "client"})
    InvalidCommitIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidCommitIdException', name: 'InvalidCommitIdException', traits: {"smithy.api#error" => "client"})
    InvalidConflictDetailLevelException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidConflictDetailLevelException', name: 'InvalidConflictDetailLevelException', traits: {"smithy.api#error" => "client"})
    InvalidConflictResolutionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidConflictResolutionException', name: 'InvalidConflictResolutionException', traits: {"smithy.api#error" => "client"})
    InvalidConflictResolutionStrategyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidConflictResolutionStrategyException', name: 'InvalidConflictResolutionStrategyException', traits: {"smithy.api#error" => "client"})
    InvalidContinuationTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidContinuationTokenException', name: 'InvalidContinuationTokenException', traits: {"smithy.api#error" => "client"})
    InvalidDeletionParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidDeletionParameterException', name: 'InvalidDeletionParameterException', traits: {"smithy.api#error" => "client"})
    InvalidDescriptionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidDescriptionException', name: 'InvalidDescriptionException', traits: {"smithy.api#error" => "client"})
    InvalidDestinationCommitSpecifierException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidDestinationCommitSpecifierException', name: 'InvalidDestinationCommitSpecifierException', traits: {"smithy.api#error" => "client"})
    InvalidEmailException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidEmailException', name: 'InvalidEmailException', traits: {"smithy.api#error" => "client"})
    InvalidFileLocationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidFileLocationException', name: 'InvalidFileLocationException', traits: {"smithy.api#error" => "client"})
    InvalidFileModeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidFileModeException', name: 'InvalidFileModeException', traits: {"smithy.api#error" => "client"})
    InvalidFilePositionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidFilePositionException', name: 'InvalidFilePositionException', traits: {"smithy.api#error" => "client"})
    InvalidMaxConflictFilesException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidMaxConflictFilesException', name: 'InvalidMaxConflictFilesException', traits: {"smithy.api#error" => "client"})
    InvalidMaxMergeHunksException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidMaxMergeHunksException', name: 'InvalidMaxMergeHunksException', traits: {"smithy.api#error" => "client"})
    InvalidMaxResultsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidMaxResultsException', name: 'InvalidMaxResultsException', traits: {"smithy.api#error" => "client"})
    InvalidMergeOptionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidMergeOptionException', name: 'InvalidMergeOptionException', traits: {"smithy.api#error" => "client"})
    InvalidOrderException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidOrderException', name: 'InvalidOrderException', traits: {"smithy.api#error" => "client"})
    InvalidOverrideStatusException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidOverrideStatusException', name: 'InvalidOverrideStatusException', traits: {"smithy.api#error" => "client"})
    InvalidParentCommitIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidParentCommitIdException', name: 'InvalidParentCommitIdException', traits: {"smithy.api#error" => "client"})
    InvalidPathException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidPathException', name: 'InvalidPathException', traits: {"smithy.api#error" => "client"})
    InvalidPullRequestEventTypeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidPullRequestEventTypeException', name: 'InvalidPullRequestEventTypeException', traits: {"smithy.api#error" => "client"})
    InvalidPullRequestIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidPullRequestIdException', name: 'InvalidPullRequestIdException', traits: {"smithy.api#error" => "client"})
    InvalidPullRequestStatusException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidPullRequestStatusException', name: 'InvalidPullRequestStatusException', traits: {"smithy.api#error" => "client"})
    InvalidPullRequestStatusUpdateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidPullRequestStatusUpdateException', name: 'InvalidPullRequestStatusUpdateException', traits: {"smithy.api#error" => "client"})
    InvalidReactionUserArnException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidReactionUserArnException', name: 'InvalidReactionUserArnException', traits: {"smithy.api#error" => "client"})
    InvalidReactionValueException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidReactionValueException', name: 'InvalidReactionValueException', traits: {"smithy.api#error" => "client"})
    InvalidReferenceNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidReferenceNameException', name: 'InvalidReferenceNameException', traits: {"smithy.api#error" => "client"})
    InvalidRelativeFileVersionEnumException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidRelativeFileVersionEnumException', name: 'InvalidRelativeFileVersionEnumException', traits: {"smithy.api#error" => "client"})
    InvalidReplacementContentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidReplacementContentException', name: 'InvalidReplacementContentException', traits: {"smithy.api#error" => "client"})
    InvalidReplacementTypeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidReplacementTypeException', name: 'InvalidReplacementTypeException', traits: {"smithy.api#error" => "client"})
    InvalidRepositoryDescriptionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidRepositoryDescriptionException', name: 'InvalidRepositoryDescriptionException', traits: {"smithy.api#error" => "client"})
    InvalidRepositoryNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidRepositoryNameException', name: 'InvalidRepositoryNameException', traits: {"smithy.api#error" => "client"})
    InvalidRepositoryTriggerBranchNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidRepositoryTriggerBranchNameException', name: 'InvalidRepositoryTriggerBranchNameException', traits: {"smithy.api#error" => "client"})
    InvalidRepositoryTriggerCustomDataException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidRepositoryTriggerCustomDataException', name: 'InvalidRepositoryTriggerCustomDataException', traits: {"smithy.api#error" => "client"})
    InvalidRepositoryTriggerDestinationArnException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidRepositoryTriggerDestinationArnException', name: 'InvalidRepositoryTriggerDestinationArnException', traits: {"smithy.api#error" => "client"})
    InvalidRepositoryTriggerEventsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidRepositoryTriggerEventsException', name: 'InvalidRepositoryTriggerEventsException', traits: {"smithy.api#error" => "client"})
    InvalidRepositoryTriggerNameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidRepositoryTriggerNameException', name: 'InvalidRepositoryTriggerNameException', traits: {"smithy.api#error" => "client"})
    InvalidRepositoryTriggerRegionException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidRepositoryTriggerRegionException', name: 'InvalidRepositoryTriggerRegionException', traits: {"smithy.api#error" => "client"})
    InvalidResourceArnException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidResourceArnException', name: 'InvalidResourceArnException', traits: {"smithy.api#error" => "client"})
    InvalidRevisionIdException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidRevisionIdException', name: 'InvalidRevisionIdException', traits: {"smithy.api#error" => "client"})
    InvalidRuleContentSha256Exception = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidRuleContentSha256Exception', name: 'InvalidRuleContentSha256Exception', traits: {"smithy.api#error" => "client"})
    InvalidSortByException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidSortByException', name: 'InvalidSortByException', traits: {"smithy.api#error" => "client"})
    InvalidSourceCommitSpecifierException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidSourceCommitSpecifierException', name: 'InvalidSourceCommitSpecifierException', traits: {"smithy.api#error" => "client"})
    InvalidSystemTagUsageException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidSystemTagUsageException', name: 'InvalidSystemTagUsageException', traits: {"smithy.api#error" => "client"})
    InvalidTagKeysListException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidTagKeysListException', name: 'InvalidTagKeysListException', traits: {"smithy.api#error" => "client"})
    InvalidTagsMapException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidTagsMapException', name: 'InvalidTagsMapException', traits: {"smithy.api#error" => "client"})
    InvalidTargetBranchException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidTargetBranchException', name: 'InvalidTargetBranchException', traits: {"smithy.api#error" => "client"})
    InvalidTargetException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidTargetException', name: 'InvalidTargetException', traits: {"smithy.api#error" => "client"})
    InvalidTargetsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidTargetsException', name: 'InvalidTargetsException', traits: {"smithy.api#error" => "client"})
    InvalidTitleException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#InvalidTitleException', name: 'InvalidTitleException', traits: {"smithy.api#error" => "client"})
    IsBinaryFile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#IsBinaryFile', name: 'IsBinaryFile')
    IsCommentDeleted = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codecommit#IsCommentDeleted', name: 'IsCommentDeleted', traits: {"smithy.api#default" => false})
    IsContentConflict = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codecommit#IsContentConflict', name: 'IsContentConflict', traits: {"smithy.api#default" => false})
    IsFileModeConflict = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codecommit#IsFileModeConflict', name: 'IsFileModeConflict', traits: {"smithy.api#default" => false})
    IsHunkConflict = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codecommit#IsHunkConflict', name: 'IsHunkConflict', traits: {"smithy.api#default" => false})
    IsMergeable = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codecommit#IsMergeable', name: 'IsMergeable', traits: {"smithy.api#default" => false})
    IsMerged = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codecommit#IsMerged', name: 'IsMerged', traits: {"smithy.api#default" => false})
    IsMove = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codecommit#IsMove', name: 'IsMove', traits: {"smithy.api#default" => false})
    IsObjectTypeConflict = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codecommit#IsObjectTypeConflict', name: 'IsObjectTypeConflict', traits: {"smithy.api#default" => false})
    KeepEmptyFolders = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codecommit#KeepEmptyFolders', name: 'KeepEmptyFolders', traits: {"smithy.api#default" => false})
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9:/_-]+$"})
    LastModifiedDate = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.codecommit#LastModifiedDate', name: 'LastModifiedDate')
    Limit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codecommit#Limit', name: 'Limit')
    LineNumber = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codecommit#LineNumber', name: 'LineNumber')
    ListApprovalRuleTemplatesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ListApprovalRuleTemplatesInput', name: 'ListApprovalRuleTemplatesInput')
    ListApprovalRuleTemplatesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ListApprovalRuleTemplatesOutput', name: 'ListApprovalRuleTemplatesOutput')
    ListAssociatedApprovalRuleTemplatesForRepositoryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ListAssociatedApprovalRuleTemplatesForRepositoryInput', name: 'ListAssociatedApprovalRuleTemplatesForRepositoryInput')
    ListAssociatedApprovalRuleTemplatesForRepositoryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ListAssociatedApprovalRuleTemplatesForRepositoryOutput', name: 'ListAssociatedApprovalRuleTemplatesForRepositoryOutput')
    ListBranchesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ListBranchesInput', name: 'ListBranchesInput')
    ListBranchesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ListBranchesOutput', name: 'ListBranchesOutput')
    ListFileCommitHistoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ListFileCommitHistoryRequest', name: 'ListFileCommitHistoryRequest')
    ListFileCommitHistoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ListFileCommitHistoryResponse', name: 'ListFileCommitHistoryResponse')
    ListPullRequestsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ListPullRequestsInput', name: 'ListPullRequestsInput')
    ListPullRequestsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ListPullRequestsOutput', name: 'ListPullRequestsOutput')
    ListRepositoriesForApprovalRuleTemplateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ListRepositoriesForApprovalRuleTemplateInput', name: 'ListRepositoriesForApprovalRuleTemplateInput')
    ListRepositoriesForApprovalRuleTemplateOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ListRepositoriesForApprovalRuleTemplateOutput', name: 'ListRepositoriesForApprovalRuleTemplateOutput')
    ListRepositoriesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ListRepositoriesInput', name: 'ListRepositoriesInput')
    ListRepositoriesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ListRepositoriesOutput', name: 'ListRepositoriesOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#Location', name: 'Location')
    ManualMergeRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ManualMergeRequiredException', name: 'ManualMergeRequiredException', traits: {"smithy.api#error" => "client"})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codecommit#MaxResults', name: 'MaxResults')
    MaximumBranchesExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MaximumBranchesExceededException', name: 'MaximumBranchesExceededException', traits: {"smithy.api#error" => "client"})
    MaximumConflictResolutionEntriesExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MaximumConflictResolutionEntriesExceededException', name: 'MaximumConflictResolutionEntriesExceededException', traits: {"smithy.api#error" => "client"})
    MaximumFileContentToLoadExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MaximumFileContentToLoadExceededException', name: 'MaximumFileContentToLoadExceededException', traits: {"smithy.api#error" => "client"})
    MaximumFileEntriesExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MaximumFileEntriesExceededException', name: 'MaximumFileEntriesExceededException', traits: {"smithy.api#error" => "client"})
    MaximumItemsToCompareExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MaximumItemsToCompareExceededException', name: 'MaximumItemsToCompareExceededException', traits: {"smithy.api#error" => "client"})
    MaximumNumberOfApprovalsExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MaximumNumberOfApprovalsExceededException', name: 'MaximumNumberOfApprovalsExceededException', traits: {"smithy.api#error" => "client"})
    MaximumOpenPullRequestsExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MaximumOpenPullRequestsExceededException', name: 'MaximumOpenPullRequestsExceededException', traits: {"smithy.api#error" => "client"})
    MaximumRepositoryNamesExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MaximumRepositoryNamesExceededException', name: 'MaximumRepositoryNamesExceededException', traits: {"smithy.api#error" => "client"})
    MaximumRepositoryTriggersExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MaximumRepositoryTriggersExceededException', name: 'MaximumRepositoryTriggersExceededException', traits: {"smithy.api#error" => "client"})
    MaximumRuleTemplatesAssociatedWithRepositoryException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MaximumRuleTemplatesAssociatedWithRepositoryException', name: 'MaximumRuleTemplatesAssociatedWithRepositoryException', traits: {"smithy.api#error" => "client"})
    MergeBranchesByFastForwardInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergeBranchesByFastForwardInput', name: 'MergeBranchesByFastForwardInput')
    MergeBranchesByFastForwardOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergeBranchesByFastForwardOutput', name: 'MergeBranchesByFastForwardOutput')
    MergeBranchesBySquashInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergeBranchesBySquashInput', name: 'MergeBranchesBySquashInput')
    MergeBranchesBySquashOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergeBranchesBySquashOutput', name: 'MergeBranchesBySquashOutput')
    MergeBranchesByThreeWayInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergeBranchesByThreeWayInput', name: 'MergeBranchesByThreeWayInput')
    MergeBranchesByThreeWayOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergeBranchesByThreeWayOutput', name: 'MergeBranchesByThreeWayOutput')
    MergeHunk = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergeHunk', name: 'MergeHunk')
    MergeHunkDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergeHunkDetail', name: 'MergeHunkDetail')
    MergeHunks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#MergeHunks', name: 'MergeHunks')
    MergeMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergeMetadata', name: 'MergeMetadata')
    MergeOperations = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergeOperations', name: 'MergeOperations')
    MergeOptionRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergeOptionRequiredException', name: 'MergeOptionRequiredException', traits: {"smithy.api#error" => "client"})
    MergeOptionTypeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codecommit#MergeOptionTypeEnum', name: 'MergeOptionTypeEnum')
    MergeOptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#MergeOptions', name: 'MergeOptions')
    MergePullRequestByFastForwardInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergePullRequestByFastForwardInput', name: 'MergePullRequestByFastForwardInput')
    MergePullRequestByFastForwardOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergePullRequestByFastForwardOutput', name: 'MergePullRequestByFastForwardOutput')
    MergePullRequestBySquashInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergePullRequestBySquashInput', name: 'MergePullRequestBySquashInput')
    MergePullRequestBySquashOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergePullRequestBySquashOutput', name: 'MergePullRequestBySquashOutput')
    MergePullRequestByThreeWayInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergePullRequestByThreeWayInput', name: 'MergePullRequestByThreeWayInput')
    MergePullRequestByThreeWayOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MergePullRequestByThreeWayOutput', name: 'MergePullRequestByThreeWayOutput')
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#Message', name: 'Message')
    Mode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#Mode', name: 'Mode')
    MultipleConflictResolutionEntriesException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MultipleConflictResolutionEntriesException', name: 'MultipleConflictResolutionEntriesException', traits: {"smithy.api#error" => "client"})
    MultipleRepositoriesInPullRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#MultipleRepositoriesInPullRequestException', name: 'MultipleRepositoriesInPullRequestException', traits: {"smithy.api#error" => "client"})
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#Name', name: 'Name')
    NameLengthExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#NameLengthExceededException', name: 'NameLengthExceededException', traits: {"smithy.api#error" => "client"})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#NextToken', name: 'NextToken')
    NoChangeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#NoChangeException', name: 'NoChangeException', traits: {"smithy.api#error" => "client"})
    NumberOfConflicts = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codecommit#NumberOfConflicts', name: 'NumberOfConflicts', traits: {"smithy.api#default" => 0})
    NumberOfRuleTemplatesExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#NumberOfRuleTemplatesExceededException', name: 'NumberOfRuleTemplatesExceededException', traits: {"smithy.api#error" => "client"})
    NumberOfRulesExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#NumberOfRulesExceededException', name: 'NumberOfRulesExceededException', traits: {"smithy.api#error" => "client"})
    ObjectId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ObjectId', name: 'ObjectId')
    ObjectSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codecommit#ObjectSize', name: 'ObjectSize', traits: {"smithy.api#default" => 0})
    ObjectTypeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codecommit#ObjectTypeEnum', name: 'ObjectTypeEnum')
    ObjectTypes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ObjectTypes', name: 'ObjectTypes')
    OperationNotAllowedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#OperationNotAllowedException', name: 'OperationNotAllowedException', traits: {"smithy.api#error" => "client"})
    OrderEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codecommit#OrderEnum', name: 'OrderEnum')
    OriginApprovalRuleTemplate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#OriginApprovalRuleTemplate', name: 'OriginApprovalRuleTemplate')
    Overridden = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codecommit#Overridden', name: 'Overridden', traits: {"smithy.api#default" => false})
    OverrideAlreadySetException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#OverrideAlreadySetException', name: 'OverrideAlreadySetException', traits: {"smithy.api#error" => "client"})
    OverridePullRequestApprovalRulesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#OverridePullRequestApprovalRulesInput', name: 'OverridePullRequestApprovalRulesInput')
    OverrideStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codecommit#OverrideStatus', name: 'OverrideStatus')
    OverrideStatusRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#OverrideStatusRequiredException', name: 'OverrideStatusRequiredException', traits: {"smithy.api#error" => "client"})
    ParentCommitDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ParentCommitDoesNotExistException', name: 'ParentCommitDoesNotExistException', traits: {"smithy.api#error" => "client"})
    ParentCommitIdOutdatedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ParentCommitIdOutdatedException', name: 'ParentCommitIdOutdatedException', traits: {"smithy.api#error" => "client"})
    ParentCommitIdRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ParentCommitIdRequiredException', name: 'ParentCommitIdRequiredException', traits: {"smithy.api#error" => "client"})
    ParentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#ParentList', name: 'ParentList')
    Path = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#Path', name: 'Path')
    PathDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PathDoesNotExistException', name: 'PathDoesNotExistException', traits: {"smithy.api#error" => "client"})
    PathRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PathRequiredException', name: 'PathRequiredException', traits: {"smithy.api#error" => "client"})
    Position = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codecommit#Position', name: 'Position')
    PostCommentForComparedCommitInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PostCommentForComparedCommitInput', name: 'PostCommentForComparedCommitInput')
    PostCommentForComparedCommitOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PostCommentForComparedCommitOutput', name: 'PostCommentForComparedCommitOutput')
    PostCommentForPullRequestInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PostCommentForPullRequestInput', name: 'PostCommentForPullRequestInput')
    PostCommentForPullRequestOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PostCommentForPullRequestOutput', name: 'PostCommentForPullRequestOutput')
    PostCommentReplyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PostCommentReplyInput', name: 'PostCommentReplyInput')
    PostCommentReplyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PostCommentReplyOutput', name: 'PostCommentReplyOutput')
    PullRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PullRequest', name: 'PullRequest')
    PullRequestAlreadyClosedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PullRequestAlreadyClosedException', name: 'PullRequestAlreadyClosedException', traits: {"smithy.api#error" => "client"})
    PullRequestApprovalRulesNotSatisfiedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PullRequestApprovalRulesNotSatisfiedException', name: 'PullRequestApprovalRulesNotSatisfiedException', traits: {"smithy.api#error" => "client"})
    PullRequestCannotBeApprovedByAuthorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PullRequestCannotBeApprovedByAuthorException', name: 'PullRequestCannotBeApprovedByAuthorException', traits: {"smithy.api#error" => "client"})
    PullRequestCreatedEventMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PullRequestCreatedEventMetadata', name: 'PullRequestCreatedEventMetadata')
    PullRequestDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PullRequestDoesNotExistException', name: 'PullRequestDoesNotExistException', traits: {"smithy.api#error" => "client"})
    PullRequestEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PullRequestEvent', name: 'PullRequestEvent')
    PullRequestEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#PullRequestEventList', name: 'PullRequestEventList')
    PullRequestEventType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codecommit#PullRequestEventType', name: 'PullRequestEventType')
    PullRequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#PullRequestId', name: 'PullRequestId')
    PullRequestIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#PullRequestIdList', name: 'PullRequestIdList')
    PullRequestIdRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PullRequestIdRequiredException', name: 'PullRequestIdRequiredException', traits: {"smithy.api#error" => "client"})
    PullRequestMergedStateChangedEventMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PullRequestMergedStateChangedEventMetadata', name: 'PullRequestMergedStateChangedEventMetadata')
    PullRequestSourceReferenceUpdatedEventMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PullRequestSourceReferenceUpdatedEventMetadata', name: 'PullRequestSourceReferenceUpdatedEventMetadata')
    PullRequestStatusChangedEventMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PullRequestStatusChangedEventMetadata', name: 'PullRequestStatusChangedEventMetadata')
    PullRequestStatusEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codecommit#PullRequestStatusEnum', name: 'PullRequestStatusEnum')
    PullRequestStatusRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PullRequestStatusRequiredException', name: 'PullRequestStatusRequiredException', traits: {"smithy.api#error" => "client"})
    PullRequestTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PullRequestTarget', name: 'PullRequestTarget')
    PullRequestTargetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#PullRequestTargetList', name: 'PullRequestTargetList')
    PutCommentReactionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PutCommentReactionInput', name: 'PutCommentReactionInput')
    PutFileEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#PutFileEntries', name: 'PutFileEntries')
    PutFileEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PutFileEntry', name: 'PutFileEntry')
    PutFileEntryConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PutFileEntryConflictException', name: 'PutFileEntryConflictException', traits: {"smithy.api#error" => "client"})
    PutFileInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PutFileInput', name: 'PutFileInput')
    PutFileOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PutFileOutput', name: 'PutFileOutput')
    PutRepositoryTriggersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PutRepositoryTriggersInput', name: 'PutRepositoryTriggersInput')
    PutRepositoryTriggersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#PutRepositoryTriggersOutput', name: 'PutRepositoryTriggersOutput')
    ReactionCountsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codecommit#ReactionCountsMap', name: 'ReactionCountsMap')
    ReactionEmoji = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ReactionEmoji', name: 'ReactionEmoji')
    ReactionForComment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ReactionForComment', name: 'ReactionForComment')
    ReactionLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ReactionLimitExceededException', name: 'ReactionLimitExceededException', traits: {"smithy.api#error" => "client"})
    ReactionShortCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ReactionShortCode', name: 'ReactionShortCode')
    ReactionUnicode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ReactionUnicode', name: 'ReactionUnicode')
    ReactionUsersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#ReactionUsersList', name: 'ReactionUsersList')
    ReactionValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ReactionValue', name: 'ReactionValue')
    ReactionValueFormats = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ReactionValueFormats', name: 'ReactionValueFormats')
    ReactionValueRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ReactionValueRequiredException', name: 'ReactionValueRequiredException', traits: {"smithy.api#error" => "client"})
    ReactionsForCommentList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#ReactionsForCommentList', name: 'ReactionsForCommentList')
    ReferenceDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ReferenceDoesNotExistException', name: 'ReferenceDoesNotExistException', traits: {"smithy.api#error" => "client"})
    ReferenceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ReferenceName', name: 'ReferenceName')
    ReferenceNameRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ReferenceNameRequiredException', name: 'ReferenceNameRequiredException', traits: {"smithy.api#error" => "client"})
    ReferenceTypeNotSupportedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ReferenceTypeNotSupportedException', name: 'ReferenceTypeNotSupportedException', traits: {"smithy.api#error" => "client"})
    RelativeFileVersionEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codecommit#RelativeFileVersionEnum', name: 'RelativeFileVersionEnum')
    ReplaceContentEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#ReplaceContentEntries', name: 'ReplaceContentEntries')
    ReplaceContentEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ReplaceContentEntry', name: 'ReplaceContentEntry')
    ReplacementContentRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ReplacementContentRequiredException', name: 'ReplacementContentRequiredException', traits: {"smithy.api#error" => "client"})
    ReplacementTypeEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codecommit#ReplacementTypeEnum', name: 'ReplacementTypeEnum')
    ReplacementTypeRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ReplacementTypeRequiredException', name: 'ReplacementTypeRequiredException', traits: {"smithy.api#error" => "client"})
    RepositoryDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#RepositoryDescription', name: 'RepositoryDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    RepositoryDoesNotExistException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RepositoryDoesNotExistException', name: 'RepositoryDoesNotExistException', traits: {"smithy.api#error" => "client"})
    RepositoryId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#RepositoryId', name: 'RepositoryId')
    RepositoryLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RepositoryLimitExceededException', name: 'RepositoryLimitExceededException', traits: {"smithy.api#error" => "client"})
    RepositoryMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RepositoryMetadata', name: 'RepositoryMetadata')
    RepositoryMetadataList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#RepositoryMetadataList', name: 'RepositoryMetadataList')
    RepositoryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#RepositoryName', name: 'RepositoryName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\w\\.-]+$"})
    RepositoryNameExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RepositoryNameExistsException', name: 'RepositoryNameExistsException', traits: {"smithy.api#error" => "client"})
    RepositoryNameIdPair = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RepositoryNameIdPair', name: 'RepositoryNameIdPair')
    RepositoryNameIdPairList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#RepositoryNameIdPairList', name: 'RepositoryNameIdPairList')
    RepositoryNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#RepositoryNameList', name: 'RepositoryNameList')
    RepositoryNameRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RepositoryNameRequiredException', name: 'RepositoryNameRequiredException', traits: {"smithy.api#error" => "client"})
    RepositoryNamesRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RepositoryNamesRequiredException', name: 'RepositoryNamesRequiredException', traits: {"smithy.api#error" => "client"})
    RepositoryNotAssociatedWithPullRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RepositoryNotAssociatedWithPullRequestException', name: 'RepositoryNotAssociatedWithPullRequestException', traits: {"smithy.api#error" => "client"})
    RepositoryNotFoundList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#RepositoryNotFoundList', name: 'RepositoryNotFoundList')
    RepositoryTrigger = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RepositoryTrigger', name: 'RepositoryTrigger')
    RepositoryTriggerBranchNameListRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RepositoryTriggerBranchNameListRequiredException', name: 'RepositoryTriggerBranchNameListRequiredException', traits: {"smithy.api#error" => "client"})
    RepositoryTriggerCustomData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#RepositoryTriggerCustomData', name: 'RepositoryTriggerCustomData')
    RepositoryTriggerDestinationArnRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RepositoryTriggerDestinationArnRequiredException', name: 'RepositoryTriggerDestinationArnRequiredException', traits: {"smithy.api#error" => "client"})
    RepositoryTriggerEventEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codecommit#RepositoryTriggerEventEnum', name: 'RepositoryTriggerEventEnum')
    RepositoryTriggerEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#RepositoryTriggerEventList', name: 'RepositoryTriggerEventList')
    RepositoryTriggerEventsListRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RepositoryTriggerEventsListRequiredException', name: 'RepositoryTriggerEventsListRequiredException', traits: {"smithy.api#error" => "client"})
    RepositoryTriggerExecutionFailure = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RepositoryTriggerExecutionFailure', name: 'RepositoryTriggerExecutionFailure')
    RepositoryTriggerExecutionFailureList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#RepositoryTriggerExecutionFailureList', name: 'RepositoryTriggerExecutionFailureList')
    RepositoryTriggerExecutionFailureMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#RepositoryTriggerExecutionFailureMessage', name: 'RepositoryTriggerExecutionFailureMessage')
    RepositoryTriggerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#RepositoryTriggerName', name: 'RepositoryTriggerName')
    RepositoryTriggerNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#RepositoryTriggerNameList', name: 'RepositoryTriggerNameList')
    RepositoryTriggerNameRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RepositoryTriggerNameRequiredException', name: 'RepositoryTriggerNameRequiredException', traits: {"smithy.api#error" => "client"})
    RepositoryTriggersConfigurationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#RepositoryTriggersConfigurationId', name: 'RepositoryTriggersConfigurationId')
    RepositoryTriggersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#RepositoryTriggersList', name: 'RepositoryTriggersList')
    RepositoryTriggersListRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RepositoryTriggersListRequiredException', name: 'RepositoryTriggersListRequiredException', traits: {"smithy.api#error" => "client"})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#ResourceArn', name: 'ResourceArn')
    ResourceArnRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#ResourceArnRequiredException', name: 'ResourceArnRequiredException', traits: {"smithy.api#error" => "client"})
    RestrictedSourceFileException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RestrictedSourceFileException', name: 'RestrictedSourceFileException', traits: {"smithy.api#error" => "client"})
    RevisionChildren = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#RevisionChildren', name: 'RevisionChildren')
    RevisionDag = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#RevisionDag', name: 'RevisionDag')
    RevisionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#RevisionId', name: 'RevisionId')
    RevisionIdRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RevisionIdRequiredException', name: 'RevisionIdRequiredException', traits: {"smithy.api#error" => "client"})
    RevisionNotCurrentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#RevisionNotCurrentException', name: 'RevisionNotCurrentException', traits: {"smithy.api#error" => "client"})
    RuleContentSha256 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#RuleContentSha256', name: 'RuleContentSha256')
    SameFileContentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#SameFileContentException', name: 'SameFileContentException', traits: {"smithy.api#error" => "client"})
    SamePathRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#SamePathRequestException', name: 'SamePathRequestException', traits: {"smithy.api#error" => "client"})
    SetFileModeEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#SetFileModeEntries', name: 'SetFileModeEntries')
    SetFileModeEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#SetFileModeEntry', name: 'SetFileModeEntry')
    SortByEnum = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codecommit#SortByEnum', name: 'SortByEnum')
    SourceAndDestinationAreSameException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#SourceAndDestinationAreSameException', name: 'SourceAndDestinationAreSameException', traits: {"smithy.api#error" => "client"})
    SourceFileOrContentRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#SourceFileOrContentRequiredException', name: 'SourceFileOrContentRequiredException', traits: {"smithy.api#error" => "client"})
    SourceFileSpecifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#SourceFileSpecifier', name: 'SourceFileSpecifier')
    SubModule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#SubModule', name: 'SubModule')
    SubModuleList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#SubModuleList', name: 'SubModuleList')
    SymbolicLink = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#SymbolicLink', name: 'SymbolicLink')
    SymbolicLinkList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#SymbolicLinkList', name: 'SymbolicLinkList')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeysList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#TagKeysList', name: 'TagKeysList')
    TagKeysListRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#TagKeysListRequiredException', name: 'TagKeysListRequiredException', traits: {"smithy.api#error" => "client"})
    TagPolicyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#TagPolicyException', name: 'TagPolicyException', traits: {"smithy.api#error" => "client"})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#TagResourceInput', name: 'TagResourceInput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TagsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codecommit#TagsMap', name: 'TagsMap')
    TagsMapRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#TagsMapRequiredException', name: 'TagsMapRequiredException', traits: {"smithy.api#error" => "client"})
    Target = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#Target', name: 'Target')
    TargetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecommit#TargetList', name: 'TargetList')
    TargetRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#TargetRequiredException', name: 'TargetRequiredException', traits: {"smithy.api#error" => "client"})
    TargetsRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#TargetsRequiredException', name: 'TargetsRequiredException', traits: {"smithy.api#error" => "client"})
    TestRepositoryTriggersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#TestRepositoryTriggersInput', name: 'TestRepositoryTriggersInput')
    TestRepositoryTriggersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#TestRepositoryTriggersOutput', name: 'TestRepositoryTriggersOutput')
    TipOfSourceReferenceIsDifferentException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#TipOfSourceReferenceIsDifferentException', name: 'TipOfSourceReferenceIsDifferentException', traits: {"smithy.api#error" => "client"})
    TipsDivergenceExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#TipsDivergenceExceededException', name: 'TipsDivergenceExceededException', traits: {"smithy.api#error" => "client"})
    Title = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecommit#Title', name: 'Title', traits: {"smithy.api#length" => {"min" => 0, "max" => 150}})
    TitleRequiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#TitleRequiredException', name: 'TitleRequiredException', traits: {"smithy.api#error" => "client"})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client"})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UntagResourceInput', name: 'UntagResourceInput')
    UpdateApprovalRuleTemplateContentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdateApprovalRuleTemplateContentInput', name: 'UpdateApprovalRuleTemplateContentInput')
    UpdateApprovalRuleTemplateContentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdateApprovalRuleTemplateContentOutput', name: 'UpdateApprovalRuleTemplateContentOutput')
    UpdateApprovalRuleTemplateDescriptionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdateApprovalRuleTemplateDescriptionInput', name: 'UpdateApprovalRuleTemplateDescriptionInput')
    UpdateApprovalRuleTemplateDescriptionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdateApprovalRuleTemplateDescriptionOutput', name: 'UpdateApprovalRuleTemplateDescriptionOutput')
    UpdateApprovalRuleTemplateNameInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdateApprovalRuleTemplateNameInput', name: 'UpdateApprovalRuleTemplateNameInput')
    UpdateApprovalRuleTemplateNameOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdateApprovalRuleTemplateNameOutput', name: 'UpdateApprovalRuleTemplateNameOutput')
    UpdateCommentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdateCommentInput', name: 'UpdateCommentInput')
    UpdateCommentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdateCommentOutput', name: 'UpdateCommentOutput')
    UpdateDefaultBranchInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdateDefaultBranchInput', name: 'UpdateDefaultBranchInput')
    UpdatePullRequestApprovalRuleContentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdatePullRequestApprovalRuleContentInput', name: 'UpdatePullRequestApprovalRuleContentInput')
    UpdatePullRequestApprovalRuleContentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdatePullRequestApprovalRuleContentOutput', name: 'UpdatePullRequestApprovalRuleContentOutput')
    UpdatePullRequestApprovalStateInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdatePullRequestApprovalStateInput', name: 'UpdatePullRequestApprovalStateInput')
    UpdatePullRequestDescriptionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdatePullRequestDescriptionInput', name: 'UpdatePullRequestDescriptionInput')
    UpdatePullRequestDescriptionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdatePullRequestDescriptionOutput', name: 'UpdatePullRequestDescriptionOutput')
    UpdatePullRequestStatusInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdatePullRequestStatusInput', name: 'UpdatePullRequestStatusInput')
    UpdatePullRequestStatusOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdatePullRequestStatusOutput', name: 'UpdatePullRequestStatusOutput')
    UpdatePullRequestTitleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdatePullRequestTitleInput', name: 'UpdatePullRequestTitleInput')
    UpdatePullRequestTitleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdatePullRequestTitleOutput', name: 'UpdatePullRequestTitleOutput')
    UpdateRepositoryDescriptionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdateRepositoryDescriptionInput', name: 'UpdateRepositoryDescriptionInput')
    UpdateRepositoryEncryptionKeyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdateRepositoryEncryptionKeyInput', name: 'UpdateRepositoryEncryptionKeyInput')
    UpdateRepositoryEncryptionKeyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdateRepositoryEncryptionKeyOutput', name: 'UpdateRepositoryEncryptionKeyOutput')
    UpdateRepositoryNameInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UpdateRepositoryNameInput', name: 'UpdateRepositoryNameInput')
    UserInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecommit#UserInfo', name: 'UserInfo')
    Blob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.codecommit#blob', name: 'Blob')

    ActorDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ActorDoesNotExistException.type = Types::ActorDoesNotExistException
    Approval.add_member(:user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'userArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user.</p>"}))
    Approval.add_member(:approval_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalState, location_name: 'approvalState', traits: {"smithy.api#documentation" => "<p>The state of the approval, APPROVE or REVOKE. REVOKE states are not stored.</p>"}))
    Approval.type = Types::Approval
    ApprovalList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Approval)
    ApprovalRule.add_member(:approval_rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleId, location_name: 'approvalRuleId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the approval rule.</p>"}))
    ApprovalRule.add_member(:approval_rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleName, location_name: 'approvalRuleName', traits: {"smithy.api#documentation" => "<p>The name of the approval rule.</p>"}))
    ApprovalRule.add_member(:approval_rule_content, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleContent, location_name: 'approvalRuleContent', traits: {"smithy.api#documentation" => "<p>The content of the approval rule.</p>"}))
    ApprovalRule.add_member(:rule_content_sha256, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleContentSha256, location_name: 'ruleContentSha256', traits: {"smithy.api#documentation" => "<p>The SHA-256 hash signature for the content of the approval rule.</p>"}))
    ApprovalRule.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedDate, location_name: 'lastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date the approval rule was most recently changed, in timestamp format.</p>"}))
    ApprovalRule.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the approval rule was created, in timestamp format.</p>"}))
    ApprovalRule.add_member(:last_modified_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'lastModifiedUser', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule.</p>"}))
    ApprovalRule.add_member(:origin_approval_rule_template, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginApprovalRuleTemplate, location_name: 'originApprovalRuleTemplate', traits: {"smithy.api#documentation" => "<p>The approval rule template used to create the rule.</p>"}))
    ApprovalRule.type = Types::ApprovalRule
    ApprovalRuleContentRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ApprovalRuleContentRequiredException.type = Types::ApprovalRuleContentRequiredException
    ApprovalRuleDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ApprovalRuleDoesNotExistException.type = Types::ApprovalRuleDoesNotExistException
    ApprovalRuleEventMetadata.add_member(:approval_rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleName, location_name: 'approvalRuleName', traits: {"smithy.api#documentation" => "<p>The name of the approval rule.</p>"}))
    ApprovalRuleEventMetadata.add_member(:approval_rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleId, location_name: 'approvalRuleId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the approval rule.</p>"}))
    ApprovalRuleEventMetadata.add_member(:approval_rule_content, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleContent, location_name: 'approvalRuleContent', traits: {"smithy.api#documentation" => "<p>The content of the approval rule.</p>"}))
    ApprovalRuleEventMetadata.type = Types::ApprovalRuleEventMetadata
    ApprovalRuleNameAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ApprovalRuleNameAlreadyExistsException.type = Types::ApprovalRuleNameAlreadyExistsException
    ApprovalRuleNameRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ApprovalRuleNameRequiredException.type = Types::ApprovalRuleNameRequiredException
    ApprovalRuleOverriddenEventMetadata.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision ID of the pull request when the override event occurred.</p>"}))
    ApprovalRuleOverriddenEventMetadata.add_member(:override_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OverrideStatus, location_name: 'overrideStatus', traits: {"smithy.api#documentation" => "<p>The status of the override event.</p>"}))
    ApprovalRuleOverriddenEventMetadata.type = Types::ApprovalRuleOverriddenEventMetadata
    ApprovalRuleTemplate.add_member(:approval_rule_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateId, location_name: 'approvalRuleTemplateId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the approval rule template.</p>"}))
    ApprovalRuleTemplate.add_member(:approval_rule_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateName, location_name: 'approvalRuleTemplateName', traits: {"smithy.api#documentation" => "<p>The name of the approval rule template.</p>"}))
    ApprovalRuleTemplate.add_member(:approval_rule_template_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateDescription, location_name: 'approvalRuleTemplateDescription', traits: {"smithy.api#documentation" => "<p>The description of the approval rule template.</p>"}))
    ApprovalRuleTemplate.add_member(:approval_rule_template_content, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateContent, location_name: 'approvalRuleTemplateContent', traits: {"smithy.api#documentation" => "<p>The content of the approval rule template.</p>"}))
    ApprovalRuleTemplate.add_member(:rule_content_sha256, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleContentSha256, location_name: 'ruleContentSha256', traits: {"smithy.api#documentation" => "<p>The SHA-256 hash signature for the content of the approval rule template.</p>"}))
    ApprovalRuleTemplate.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedDate, location_name: 'lastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date the approval rule template was most recently changed, in timestamp format.</p>"}))
    ApprovalRuleTemplate.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date the approval rule template was created, in timestamp format.</p>"}))
    ApprovalRuleTemplate.add_member(:last_modified_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'lastModifiedUser', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule template.</p>"}))
    ApprovalRuleTemplate.type = Types::ApprovalRuleTemplate
    ApprovalRuleTemplateContentRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ApprovalRuleTemplateContentRequiredException.type = Types::ApprovalRuleTemplateContentRequiredException
    ApprovalRuleTemplateDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ApprovalRuleTemplateDoesNotExistException.type = Types::ApprovalRuleTemplateDoesNotExistException
    ApprovalRuleTemplateInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ApprovalRuleTemplateInUseException.type = Types::ApprovalRuleTemplateInUseException
    ApprovalRuleTemplateNameAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ApprovalRuleTemplateNameAlreadyExistsException.type = Types::ApprovalRuleTemplateNameAlreadyExistsException
    ApprovalRuleTemplateNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateName)
    ApprovalRuleTemplateNameRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ApprovalRuleTemplateNameRequiredException.type = Types::ApprovalRuleTemplateNameRequiredException
    ApprovalRulesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRule)
    ApprovalRulesNotSatisfiedList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleName)
    ApprovalRulesSatisfiedList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleName)
    ApprovalState.add_member(:approve, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVE', traits: {"smithy.api#enumValue" => "APPROVE"}))
    ApprovalState.add_member(:revoke, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVOKE', traits: {"smithy.api#enumValue" => "REVOKE"}))
    ApprovalStateChangedEventMetadata.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The revision ID of the pull request when the approval state changed.</p>"}))
    ApprovalStateChangedEventMetadata.add_member(:approval_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalState, location_name: 'approvalStatus', traits: {"smithy.api#documentation" => "<p>The approval status for the pull request.</p>"}))
    ApprovalStateChangedEventMetadata.type = Types::ApprovalStateChangedEventMetadata
    ApprovalStateRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ApprovalStateRequiredException.type = Types::ApprovalStateRequiredException
    AssociateApprovalRuleTemplateWithRepositoryInput.add_member(:approval_rule_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateName, location_name: 'approvalRuleTemplateName', traits: {"smithy.api#documentation" => "<p>The name for the approval rule template. </p>", "smithy.api#required" => {}}))
    AssociateApprovalRuleTemplateWithRepositoryInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that you want to associate with the template.</p>", "smithy.api#required" => {}}))
    AssociateApprovalRuleTemplateWithRepositoryInput.type = Types::AssociateApprovalRuleTemplateWithRepositoryInput
    AuthorDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    AuthorDoesNotExistException.type = Types::AuthorDoesNotExistException
    BatchAssociateApprovalRuleTemplateWithRepositoriesError.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where the association was not made.</p>"}))
    BatchAssociateApprovalRuleTemplateWithRepositoriesError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>An error code that specifies whether the repository name was not valid or not found.</p>"}))
    BatchAssociateApprovalRuleTemplateWithRepositoriesError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>An error message that provides details about why the repository name was not found or not valid.</p>"}))
    BatchAssociateApprovalRuleTemplateWithRepositoriesError.type = Types::BatchAssociateApprovalRuleTemplateWithRepositoriesError
    BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateApprovalRuleTemplateWithRepositoriesError)
    BatchAssociateApprovalRuleTemplateWithRepositoriesInput.add_member(:approval_rule_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateName, location_name: 'approvalRuleTemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template you want to associate with one or more repositories.</p>", "smithy.api#required" => {}}))
    BatchAssociateApprovalRuleTemplateWithRepositoriesInput.add_member(:repository_names, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameList, location_name: 'repositoryNames', traits: {"smithy.api#documentation" => "<p>The names of the repositories you want to associate with the template.</p>\n         <note>\n            <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>\n         </note>", "smithy.api#required" => {}}))
    BatchAssociateApprovalRuleTemplateWithRepositoriesInput.type = Types::BatchAssociateApprovalRuleTemplateWithRepositoriesInput
    BatchAssociateApprovalRuleTemplateWithRepositoriesOutput.add_member(:associated_repository_names, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameList, location_name: 'associatedRepositoryNames', traits: {"smithy.api#documentation" => "<p>A list of names of the repositories that have been associated with the template.</p>", "smithy.api#required" => {}}))
    BatchAssociateApprovalRuleTemplateWithRepositoriesOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>A list of any errors that might have occurred while attempting to create the association between the template and the repositories.</p>", "smithy.api#required" => {}}))
    BatchAssociateApprovalRuleTemplateWithRepositoriesOutput.type = Types::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput
    BatchDescribeMergeConflictsError.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The path to the file.</p>", "smithy.api#required" => {}}))
    BatchDescribeMergeConflictsError.add_member(:exception_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionName, location_name: 'exceptionName', traits: {"smithy.api#documentation" => "<p>The name of the exception.</p>", "smithy.api#required" => {}}))
    BatchDescribeMergeConflictsError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message provided by the exception.</p>", "smithy.api#required" => {}}))
    BatchDescribeMergeConflictsError.type = Types::BatchDescribeMergeConflictsError
    BatchDescribeMergeConflictsErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeMergeConflictsError)
    BatchDescribeMergeConflictsInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the merge conflicts you want to review.</p>", "smithy.api#required" => {}}))
    BatchDescribeMergeConflictsInput.add_member(:destination_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'destinationCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    BatchDescribeMergeConflictsInput.add_member(:source_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'sourceCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    BatchDescribeMergeConflictsInput.add_member(:merge_option, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeOptionTypeEnum, location_name: 'mergeOption', traits: {"smithy.api#documentation" => "<p>The merge option or strategy you want to use to merge the code.</p>", "smithy.api#required" => {}}))
    BatchDescribeMergeConflictsInput.add_member(:max_merge_hunks, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxMergeHunks', traits: {"smithy.api#documentation" => "<p>The maximum number of merge hunks to include in the output.</p>"}))
    BatchDescribeMergeConflictsInput.add_member(:max_conflict_files, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxConflictFiles', traits: {"smithy.api#documentation" => "<p>The maximum number of files to include in the output.</p>"}))
    BatchDescribeMergeConflictsInput.add_member(:file_paths, Smithy::Schema::Shapes::ShapeRef.new(shape: FilePaths, location_name: 'filePaths', traits: {"smithy.api#documentation" => "<p>The path of the target files used to describe the conflicts. If not specified, the default is all conflict files.</p>"}))
    BatchDescribeMergeConflictsInput.add_member(:conflict_detail_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: 'conflictDetailLevel', traits: {"smithy.api#documentation" => "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,\n            which returns a not-mergeable result if the same file has differences in both branches.\n            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in\n            both branches has differences on the same line.</p>"}))
    BatchDescribeMergeConflictsInput.add_member(:conflict_resolution_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: 'conflictResolutionStrategy', traits: {"smithy.api#documentation" => "<p>Specifies which branch to use when resolving conflicts, or whether to attempt\n            automatically merging two versions of a file. The default is NONE, which requires any\n            conflicts to be resolved manually before the merge operation is successful.</p>"}))
    BatchDescribeMergeConflictsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the\n            results.</p>"}))
    BatchDescribeMergeConflictsInput.type = Types::BatchDescribeMergeConflictsInput
    BatchDescribeMergeConflictsOutput.add_member(:conflicts, Smithy::Schema::Shapes::ShapeRef.new(shape: Conflicts, location_name: 'conflicts', traits: {"smithy.api#documentation" => "<p>A list of conflicts for each file, including the conflict metadata and the hunks of the differences between the files.</p>", "smithy.api#required" => {}}))
    BatchDescribeMergeConflictsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"}))
    BatchDescribeMergeConflictsOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeMergeConflictsErrors, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>A list of any errors returned while describing the merge conflicts for each file.</p>"}))
    BatchDescribeMergeConflictsOutput.add_member(:destination_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'destinationCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>", "smithy.api#required" => {}}))
    BatchDescribeMergeConflictsOutput.add_member(:source_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'sourceCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>", "smithy.api#required" => {}}))
    BatchDescribeMergeConflictsOutput.add_member(:base_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'baseCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the merge base.</p>"}))
    BatchDescribeMergeConflictsOutput.type = Types::BatchDescribeMergeConflictsOutput
    BatchDisassociateApprovalRuleTemplateFromRepositoriesError.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where the association with the template was not able to be removed.</p>"}))
    BatchDisassociateApprovalRuleTemplateFromRepositoriesError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>An error code that specifies whether the repository name was not valid or not\n            found.</p>"}))
    BatchDisassociateApprovalRuleTemplateFromRepositoriesError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>An error message that provides details about why the repository name was either not found or not valid.</p>"}))
    BatchDisassociateApprovalRuleTemplateFromRepositoriesError.type = Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesError
    BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateApprovalRuleTemplateFromRepositoriesError)
    BatchDisassociateApprovalRuleTemplateFromRepositoriesInput.add_member(:approval_rule_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateName, location_name: 'approvalRuleTemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template that you want to disassociate from one or more repositories.</p>", "smithy.api#required" => {}}))
    BatchDisassociateApprovalRuleTemplateFromRepositoriesInput.add_member(:repository_names, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameList, location_name: 'repositoryNames', traits: {"smithy.api#documentation" => "<p>The repository names that you want to disassociate from the approval rule\n            template.</p>\n         <note>\n            <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>\n         </note>", "smithy.api#required" => {}}))
    BatchDisassociateApprovalRuleTemplateFromRepositoriesInput.type = Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesInput
    BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput.add_member(:disassociated_repository_names, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameList, location_name: 'disassociatedRepositoryNames', traits: {"smithy.api#documentation" => "<p>A list of repository names that have had their association with the template\n            removed.</p>", "smithy.api#required" => {}}))
    BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>A list of any errors that might have occurred while attempting to remove the association between the template and the repositories.</p>", "smithy.api#required" => {}}))
    BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput.type = Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput
    BatchGetCommitsError.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p>A commit ID that either could not be found or was not in a valid format.</p>"}))
    BatchGetCommitsError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>An error code that specifies whether the commit ID was not valid or not found.</p>"}))
    BatchGetCommitsError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>An error message that provides detail about why the commit ID either was not found or was not valid.</p>"}))
    BatchGetCommitsError.type = Types::BatchGetCommitsError
    BatchGetCommitsErrorsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCommitsError)
    BatchGetCommitsInput.add_member(:commit_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitIdsInputList, location_name: 'commitIds', traits: {"smithy.api#documentation" => "<p>The full commit IDs of the commits to get information about.</p>\n         <note>\n            <p>You must supply the full SHA IDs of each commit. You cannot use shortened SHA\n                IDs.</p>\n         </note>", "smithy.api#required" => {}}))
    BatchGetCommitsInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the commits.</p>", "smithy.api#required" => {}}))
    BatchGetCommitsInput.type = Types::BatchGetCommitsInput
    BatchGetCommitsOutput.add_member(:commits, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitObjectsList, location_name: 'commits', traits: {"smithy.api#documentation" => "<p>An array of commit data type objects, each of which contains information about a specified commit.</p>"}))
    BatchGetCommitsOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCommitsErrorsList, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>Returns any commit IDs for which information could not be found. For example, if one\n            of the commit IDs was a shortened SHA ID or that commit was not found in the specified\n            repository, the ID returns an error object with more information.</p>"}))
    BatchGetCommitsOutput.type = Types::BatchGetCommitsOutput
    BatchGetRepositoriesError.add_member(:repository_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryId, location_name: 'repositoryId', traits: {"smithy.api#documentation" => "<p>The ID of a repository that either could not be found or was not in a valid state.</p>"}))
    BatchGetRepositoriesError.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of a repository that either could not be found or was not in a valid state.</p>"}))
    BatchGetRepositoriesError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRepositoriesErrorCodeEnum, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>An error code that specifies the type of failure.</p>"}))
    BatchGetRepositoriesError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>An error message that provides detail about why the repository either was not found or was not in a valid state.</p>"}))
    BatchGetRepositoriesError.type = Types::BatchGetRepositoriesError
    BatchGetRepositoriesErrorCodeEnum.add_member(:encryption_integrity_checks_failed_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENCRYPTION_INTEGRITY_CHECKS_FAILED_EXCEPTION', traits: {"smithy.api#enumValue" => "EncryptionIntegrityChecksFailedException"}))
    BatchGetRepositoriesErrorCodeEnum.add_member(:encryption_key_access_denied_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENCRYPTION_KEY_ACCESS_DENIED_EXCEPTION', traits: {"smithy.api#enumValue" => "EncryptionKeyAccessDeniedException"}))
    BatchGetRepositoriesErrorCodeEnum.add_member(:encryption_key_disabled_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENCRYPTION_KEY_DISABLED_EXCEPTION', traits: {"smithy.api#enumValue" => "EncryptionKeyDisabledException"}))
    BatchGetRepositoriesErrorCodeEnum.add_member(:encryption_key_not_found_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENCRYPTION_KEY_NOT_FOUND_EXCEPTION', traits: {"smithy.api#enumValue" => "EncryptionKeyNotFoundException"}))
    BatchGetRepositoriesErrorCodeEnum.add_member(:encryption_key_unavailable_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENCRYPTION_KEY_UNAVAILABLE_EXCEPTION', traits: {"smithy.api#enumValue" => "EncryptionKeyUnavailableException"}))
    BatchGetRepositoriesErrorCodeEnum.add_member(:repository_does_not_exist_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPOSITORY_DOES_NOT_EXIST_EXCEPTION', traits: {"smithy.api#enumValue" => "RepositoryDoesNotExistException"}))
    BatchGetRepositoriesErrorsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRepositoriesError)
    BatchGetRepositoriesInput.add_member(:repository_names, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameList, location_name: 'repositoryNames', traits: {"smithy.api#documentation" => "<p>The names of the repositories to get information about.</p>\n         <note>\n            <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>\n         </note>", "smithy.api#required" => {}}))
    BatchGetRepositoriesInput.type = Types::BatchGetRepositoriesInput
    BatchGetRepositoriesOutput.add_member(:repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryMetadataList, location_name: 'repositories', traits: {"smithy.api#documentation" => "<p>A list of repositories returned by the batch get repositories operation.</p>"}))
    BatchGetRepositoriesOutput.add_member(:repositories_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotFoundList, location_name: 'repositoriesNotFound', traits: {"smithy.api#documentation" => "<p>Returns a list of repository names for which information could not be found.</p>"}))
    BatchGetRepositoriesOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRepositoriesErrorsList, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>Returns information about any errors returned when attempting to retrieve information about the repositories.</p>"}))
    BatchGetRepositoriesOutput.type = Types::BatchGetRepositoriesOutput
    BeforeCommitIdAndAfterCommitIdAreSameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    BeforeCommitIdAndAfterCommitIdAreSameException.type = Types::BeforeCommitIdAndAfterCommitIdAreSameException
    BlobIdDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    BlobIdDoesNotExistException.type = Types::BlobIdDoesNotExistException
    BlobIdRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    BlobIdRequiredException.type = Types::BlobIdRequiredException
    BlobMetadata.add_member(:blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'blobId', traits: {"smithy.api#documentation" => "<p>The full ID of the blob.</p>"}))
    BlobMetadata.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The path to the blob and associated file name, if any.</p>"}))
    BlobMetadata.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: Mode, location_name: 'mode', traits: {"smithy.api#documentation" => "<p>The file mode permissions of the blob. File mode permission codes include:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>100644</code> indicates read/write</p>\n            </li>\n            <li>\n               <p>\n                  <code>100755</code> indicates read/write/execute</p>\n            </li>\n            <li>\n               <p>\n                  <code>160000</code> indicates a submodule</p>\n            </li>\n            <li>\n               <p>\n                  <code>120000</code> indicates a symlink</p>\n            </li>\n         </ul>"}))
    BlobMetadata.type = Types::BlobMetadata
    BranchDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    BranchDoesNotExistException.type = Types::BranchDoesNotExistException
    BranchInfo.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch.</p>"}))
    BranchInfo.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p>The ID of the last commit made to the branch.</p>"}))
    BranchInfo.type = Types::BranchInfo
    BranchNameExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    BranchNameExistsException.type = Types::BranchNameExistsException
    BranchNameIsTagNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    BranchNameIsTagNameException.type = Types::BranchNameIsTagNameException
    BranchNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName)
    BranchNameRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    BranchNameRequiredException.type = Types::BranchNameRequiredException
    CallerReactions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReactionValue)
    CannotDeleteApprovalRuleFromTemplateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    CannotDeleteApprovalRuleFromTemplateException.type = Types::CannotDeleteApprovalRuleFromTemplateException
    CannotModifyApprovalRuleFromTemplateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    CannotModifyApprovalRuleFromTemplateException.type = Types::CannotModifyApprovalRuleFromTemplateException
    ChangeTypeEnum.add_member(:added, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDED', traits: {"smithy.api#enumValue" => "A"}))
    ChangeTypeEnum.add_member(:modified, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFIED', traits: {"smithy.api#enumValue" => "M"}))
    ChangeTypeEnum.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "D"}))
    ClientRequestTokenRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ClientRequestTokenRequiredException.type = Types::ClientRequestTokenRequiredException
    Comment.add_member(:comment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommentId, location_name: 'commentId', traits: {"smithy.api#documentation" => "<p>The system-generated comment ID.</p>"}))
    Comment.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of the comment.</p>"}))
    Comment.add_member(:in_reply_to, Smithy::Schema::Shapes::ShapeRef.new(shape: CommentId, location_name: 'inReplyTo', traits: {"smithy.api#documentation" => "<p>The ID of the comment for which this comment is a reply, if any.</p>"}))
    Comment.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date and time the comment was created, in timestamp format.</p>"}))
    Comment.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedDate, location_name: 'lastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time the comment was most recently modified, in timestamp format.</p>"}))
    Comment.add_member(:author_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'authorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the person who posted the comment.</p>"}))
    Comment.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: IsCommentDeleted, location_name: 'deleted', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean value indicating whether the comment has been deleted.</p>"}))
    Comment.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique, client-generated idempotency token that, when provided in a request, ensures\n            the request cannot be repeated with a changed parameter. If a request is received with\n            the same parameters and a token is included, the request returns information about the\n            initial request that used that token.</p>"}))
    Comment.add_member(:caller_reactions, Smithy::Schema::Shapes::ShapeRef.new(shape: CallerReactions, location_name: 'callerReactions', traits: {"smithy.api#documentation" => "<p>The emoji reactions to a comment, if any, submitted by the user whose credentials are associated with the call to the API.</p>"}))
    Comment.add_member(:reaction_counts, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactionCountsMap, location_name: 'reactionCounts', traits: {"smithy.api#documentation" => "<p>A string to integer map that represents the number of individual users who have responded to a comment with the specified reactions.</p>"}))
    Comment.type = Types::Comment
    CommentContentRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    CommentContentRequiredException.type = Types::CommentContentRequiredException
    CommentContentSizeLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    CommentContentSizeLimitExceededException.type = Types::CommentContentSizeLimitExceededException
    CommentDeletedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    CommentDeletedException.type = Types::CommentDeletedException
    CommentDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    CommentDoesNotExistException.type = Types::CommentDoesNotExistException
    CommentIdRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    CommentIdRequiredException.type = Types::CommentIdRequiredException
    CommentNotCreatedByCallerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    CommentNotCreatedByCallerException.type = Types::CommentNotCreatedByCallerException
    Comments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Comment)
    CommentsForComparedCommit.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the compared commits.</p>"}))
    CommentsForComparedCommit.add_member(:before_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'beforeCommitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the commit used to establish the before of the\n            comparison.</p>"}))
    CommentsForComparedCommit.add_member(:after_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'afterCommitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the commit used to establish the after of the comparison.</p>"}))
    CommentsForComparedCommit.add_member(:before_blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'beforeBlobId', traits: {"smithy.api#documentation" => "<p>The full blob ID of the commit used to establish the before of the comparison.</p>"}))
    CommentsForComparedCommit.add_member(:after_blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'afterBlobId', traits: {"smithy.api#documentation" => "<p>The full blob ID of the commit used to establish the after of the comparison.</p>"}))
    CommentsForComparedCommit.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'location', traits: {"smithy.api#documentation" => "<p>Location information about the comment on the comparison, including the file name,\n            line number, and whether the version of the file where the comment was made is BEFORE or\n            AFTER.</p>"}))
    CommentsForComparedCommit.add_member(:comments, Smithy::Schema::Shapes::ShapeRef.new(shape: Comments, location_name: 'comments', traits: {"smithy.api#documentation" => "<p>An array of comment objects. Each comment object contains information about a comment on the comparison\n         between commits.</p>"}))
    CommentsForComparedCommit.type = Types::CommentsForComparedCommit
    CommentsForComparedCommitData.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CommentsForComparedCommit)
    CommentsForPullRequest.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request.</p>"}))
    CommentsForPullRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the pull request.</p>"}))
    CommentsForPullRequest.add_member(:before_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'beforeCommitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the commit that was the tip of the destination branch when the\n            pull request was created. This commit is superceded by the after commit in the source\n            branch when and if you merge the source branch into the destination branch.</p>"}))
    CommentsForPullRequest.add_member(:after_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'afterCommitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the commit that was the tip of the source branch at the time the\n            comment was made. </p>"}))
    CommentsForPullRequest.add_member(:before_blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'beforeBlobId', traits: {"smithy.api#documentation" => "<p>The full blob ID of the file on which you want to comment on the destination commit.</p>"}))
    CommentsForPullRequest.add_member(:after_blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'afterBlobId', traits: {"smithy.api#documentation" => "<p>The full blob ID of the file on which you want to comment on the source commit.</p>"}))
    CommentsForPullRequest.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'location', traits: {"smithy.api#documentation" => "<p>Location information about the comment on the pull request, including the file name,\n            line number, and whether the version of the file where the comment was made is BEFORE\n            (destination branch) or AFTER (source branch).</p>"}))
    CommentsForPullRequest.add_member(:comments, Smithy::Schema::Shapes::ShapeRef.new(shape: Comments, location_name: 'comments', traits: {"smithy.api#documentation" => "<p>An array of comment objects. Each comment object contains information about a comment on the pull request.</p>"}))
    CommentsForPullRequest.type = Types::CommentsForPullRequest
    CommentsForPullRequestData.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CommentsForPullRequest)
    Commit.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p>The full SHA ID of the specified commit. </p>"}))
    Commit.add_member(:tree_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'treeId', traits: {"smithy.api#documentation" => "<p>Tree information for the specified commit.</p>"}))
    Commit.add_member(:parents, Smithy::Schema::Shapes::ShapeRef.new(shape: ParentList, location_name: 'parents', traits: {"smithy.api#documentation" => "<p>A list of parent commits for the specified commit. Each parent commit ID is the full commit ID.</p>"}))
    Commit.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The commit message associated with the specified commit.</p>"}))
    Commit.add_member(:author, Smithy::Schema::Shapes::ShapeRef.new(shape: UserInfo, location_name: 'author', traits: {"smithy.api#documentation" => "<p>Information about the author of the specified commit. Information includes \n            the date in timestamp format with GMT offset, the name of the author, and the email address for the author, as configured \n            in Git.</p>"}))
    Commit.add_member(:committer, Smithy::Schema::Shapes::ShapeRef.new(shape: UserInfo, location_name: 'committer', traits: {"smithy.api#documentation" => "<p>Information about the person who committed the specified commit, also known as the committer. Information includes \n        the date in timestamp format with GMT offset, the name of the committer, and the email address for the committer, as configured \n        in Git.</p>\n         <p>For more information\n            about the difference between an author and a committer in Git, see <a href=\"http://git-scm.com/book/ch2-3.html\">Viewing the Commit History</a> in Pro Git\n            by Scott Chacon and Ben Straub.</p>"}))
    Commit.add_member(:additional_data, Smithy::Schema::Shapes::ShapeRef.new(shape: AdditionalData, location_name: 'additionalData', traits: {"smithy.api#documentation" => "<p>Any other data associated with the specified commit.</p>"}))
    Commit.type = Types::Commit
    CommitDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    CommitDoesNotExistException.type = Types::CommitDoesNotExistException
    CommitIdDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    CommitIdDoesNotExistException.type = Types::CommitIdDoesNotExistException
    CommitIdRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    CommitIdRequiredException.type = Types::CommitIdRequiredException
    CommitIdsInputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId)
    CommitIdsLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    CommitIdsLimitExceededException.type = Types::CommitIdsLimitExceededException
    CommitIdsListRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    CommitIdsListRequiredException.type = Types::CommitIdsListRequiredException
    CommitMessageLengthExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    CommitMessageLengthExceededException.type = Types::CommitMessageLengthExceededException
    CommitObjectsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Commit)
    CommitRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    CommitRequiredException.type = Types::CommitRequiredException
    ConcurrentReferenceUpdateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ConcurrentReferenceUpdateException.type = Types::ConcurrentReferenceUpdateException
    Conflict.add_member(:conflict_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictMetadata, location_name: 'conflictMetadata', traits: {"smithy.api#documentation" => "<p>Metadata about a conflict in a merge operation.</p>"}))
    Conflict.add_member(:merge_hunks, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeHunks, location_name: 'mergeHunks', traits: {"smithy.api#documentation" => "<p>A list of hunks that contain the differences between files or lines causing the conflict.</p>"}))
    Conflict.type = Types::Conflict
    ConflictDetailLevelTypeEnum.add_member(:file_level, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE_LEVEL', traits: {"smithy.api#enumValue" => "FILE_LEVEL"}))
    ConflictDetailLevelTypeEnum.add_member(:line_level, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINE_LEVEL', traits: {"smithy.api#enumValue" => "LINE_LEVEL"}))
    ConflictMetadata.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The path of the file that contains conflicts.</p>"}))
    ConflictMetadata.add_member(:file_sizes, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSizes, location_name: 'fileSizes', traits: {"smithy.api#documentation" => "<p>The file sizes of the file in the source, destination, and base of the merge.</p>"}))
    ConflictMetadata.add_member(:file_modes, Smithy::Schema::Shapes::ShapeRef.new(shape: FileModes, location_name: 'fileModes', traits: {"smithy.api#documentation" => "<p>The file modes of the file in the source, destination, and base of the merge.</p>"}))
    ConflictMetadata.add_member(:object_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectTypes, location_name: 'objectTypes', traits: {"smithy.api#documentation" => "<p>Information about any object type conflicts in a merge operation.</p>"}))
    ConflictMetadata.add_member(:number_of_conflicts, Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfConflicts, location_name: 'numberOfConflicts', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of conflicts, including both hunk conflicts and metadata conflicts.</p>"}))
    ConflictMetadata.add_member(:is_binary_file, Smithy::Schema::Shapes::ShapeRef.new(shape: IsBinaryFile, location_name: 'isBinaryFile', traits: {"smithy.api#documentation" => "<p>A boolean value (true or false) indicating whether the file is binary or textual in the source, destination, and base of the merge.</p>"}))
    ConflictMetadata.add_member(:content_conflict, Smithy::Schema::Shapes::ShapeRef.new(shape: IsContentConflict, location_name: 'contentConflict', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A boolean value indicating whether there are conflicts in the content of a file.</p>"}))
    ConflictMetadata.add_member(:file_mode_conflict, Smithy::Schema::Shapes::ShapeRef.new(shape: IsFileModeConflict, location_name: 'fileModeConflict', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A boolean value indicating whether there are conflicts in the file mode of a file.</p>"}))
    ConflictMetadata.add_member(:object_type_conflict, Smithy::Schema::Shapes::ShapeRef.new(shape: IsObjectTypeConflict, location_name: 'objectTypeConflict', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A boolean value (true or false) indicating whether there are conflicts between the branches in the object type of a file, folder, or submodule.</p>"}))
    ConflictMetadata.add_member(:merge_operations, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeOperations, location_name: 'mergeOperations', traits: {"smithy.api#documentation" => "<p>Whether an add, modify, or delete operation caused the conflict between the source and destination of the merge.</p>"}))
    ConflictMetadata.type = Types::ConflictMetadata
    ConflictMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictMetadata)
    ConflictResolution.add_member(:replace_contents, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplaceContentEntries, location_name: 'replaceContents', traits: {"smithy.api#documentation" => "<p>Files to have content replaced as part of the merge conflict resolution.</p>"}))
    ConflictResolution.add_member(:delete_files, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFileEntries, location_name: 'deleteFiles', traits: {"smithy.api#documentation" => "<p>Files to be deleted as part of the merge conflict resolution.</p>"}))
    ConflictResolution.add_member(:set_file_modes, Smithy::Schema::Shapes::ShapeRef.new(shape: SetFileModeEntries, location_name: 'setFileModes', traits: {"smithy.api#documentation" => "<p>File modes that are set as part of the merge conflict resolution.</p>"}))
    ConflictResolution.type = Types::ConflictResolution
    ConflictResolutionStrategyTypeEnum.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ConflictResolutionStrategyTypeEnum.add_member(:accept_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCEPT_SOURCE', traits: {"smithy.api#enumValue" => "ACCEPT_SOURCE"}))
    ConflictResolutionStrategyTypeEnum.add_member(:accept_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCEPT_DESTINATION', traits: {"smithy.api#enumValue" => "ACCEPT_DESTINATION"}))
    ConflictResolutionStrategyTypeEnum.add_member(:automerge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMERGE', traits: {"smithy.api#enumValue" => "AUTOMERGE"}))
    Conflicts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Conflict)
    CreateApprovalRuleTemplateInput.add_member(:approval_rule_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateName, location_name: 'approvalRuleTemplateName', traits: {"smithy.api#documentation" => "<p>The name of the approval rule template. Provide descriptive names, because this name\n            is applied to the approval rules created automatically in associated\n            repositories.</p>", "smithy.api#required" => {}}))
    CreateApprovalRuleTemplateInput.add_member(:approval_rule_template_content, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateContent, location_name: 'approvalRuleTemplateContent', traits: {"smithy.api#documentation" => "<p>The content of the approval rule that is created on pull requests in associated\n            repositories. If you specify one or more destination references (branches), approval\n            rules are created in an associated repository only if their destination references\n            (branches) match those specified in the template.</p>\n         <note>\n            <p>When you create the content of the approval rule template, you can specify\n                approvers in an approval pool in one of two ways:</p>\n            <ul>\n               <li>\n                  <p>\n                     <b>CodeCommitApprovers</b>: This option only\n                        requires an Amazon Web Services account and a resource. It can be used for both IAM users\n                        and federated access users whose name matches the provided resource name.\n                        This is a very powerful option that offers a great deal of flexibility. For\n                        example, if you specify the Amazon Web Services account <i>123456789012</i>\n                        and <i>Mary_Major</i>, all of the following are counted as\n                        approvals coming from that user:</p>\n                  <ul>\n                     <li>\n                        <p>An IAM user in the account\n                                (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p>\n                     </li>\n                     <li>\n                        <p>A federated user identified in IAM as Mary_Major\n                                (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p>\n                     </li>\n                  </ul>\n                  <p>This option does not recognize an active session of someone assuming the\n                        role of CodeCommitReview with a role session name of\n                            <i>Mary_Major</i>\n                            (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>)\n                        unless you include a wildcard (*Mary_Major).</p>\n               </li>\n               <li>\n                  <p>\n                     <b>Fully qualified ARN</b>: This option allows\n                        you to specify the fully qualified Amazon Resource Name (ARN) of the IAM\n                        user or role. </p>\n               </li>\n            </ul>\n            <p>For more information about IAM ARNs, wildcards, and formats, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM\n                    Identifiers</a> in the <i>IAM User Guide</i>.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateApprovalRuleTemplateInput.add_member(:approval_rule_template_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateDescription, location_name: 'approvalRuleTemplateDescription', traits: {"smithy.api#documentation" => "<p>The description of the approval rule template. Consider providing a description that\n            explains what this template does and when it might be appropriate to associate it with\n            repositories.</p>"}))
    CreateApprovalRuleTemplateInput.type = Types::CreateApprovalRuleTemplateInput
    CreateApprovalRuleTemplateOutput.add_member(:approval_rule_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplate, location_name: 'approvalRuleTemplate', traits: {"smithy.api#documentation" => "<p>The content and structure of the created approval rule template.</p>", "smithy.api#required" => {}}))
    CreateApprovalRuleTemplateOutput.type = Types::CreateApprovalRuleTemplateOutput
    CreateBranchInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository in which you want to create the new branch.</p>", "smithy.api#required" => {}}))
    CreateBranchInput.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the new branch to create.</p>", "smithy.api#required" => {}}))
    CreateBranchInput.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p>The ID of the commit to point the new branch to.</p>", "smithy.api#required" => {}}))
    CreateBranchInput.type = Types::CreateBranchInput
    CreateCommitInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where you create the commit.</p>", "smithy.api#required" => {}}))
    CreateCommitInput.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch where you create the commit.</p>", "smithy.api#required" => {}}))
    CreateCommitInput.add_member(:parent_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'parentCommitId', traits: {"smithy.api#documentation" => "<p>The ID of the commit that is the parent of the commit you create. Not required if this\n            is an empty repository.</p>"}))
    CreateCommitInput.add_member(:author_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'authorName', traits: {"smithy.api#documentation" => "<p>The name of the author who created the commit. This information is used as both the\n            author and committer for the commit.</p>"}))
    CreateCommitInput.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'email', traits: {"smithy.api#documentation" => "<p>The email address of the person who created the commit.</p>"}))
    CreateCommitInput.add_member(:commit_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'commitMessage', traits: {"smithy.api#documentation" => "<p>The commit message you want to include in the commit. Commit messages are limited to\n            256 KB. If no message is specified, a default message is used.</p>"}))
    CreateCommitInput.add_member(:keep_empty_folders, Smithy::Schema::Shapes::ShapeRef.new(shape: KeepEmptyFolders, location_name: 'keepEmptyFolders', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If the commit contains deletions, whether to keep a folder or folder structure if the\n            changes leave the folders empty. If true, a ..gitkeep file is created for empty folders.\n            The default is false.</p>"}))
    CreateCommitInput.add_member(:put_files, Smithy::Schema::Shapes::ShapeRef.new(shape: PutFileEntries, location_name: 'putFiles', traits: {"smithy.api#documentation" => "<p>The files to add or update in this commit.</p>"}))
    CreateCommitInput.add_member(:delete_files, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFileEntries, location_name: 'deleteFiles', traits: {"smithy.api#documentation" => "<p>The files to delete in this commit. These files still exist in earlier commits.</p>"}))
    CreateCommitInput.add_member(:set_file_modes, Smithy::Schema::Shapes::ShapeRef.new(shape: SetFileModeEntries, location_name: 'setFileModes', traits: {"smithy.api#documentation" => "<p>The file modes to update for files in this commit.</p>"}))
    CreateCommitInput.type = Types::CreateCommitInput
    CreateCommitOutput.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the commit that contains your committed file changes.</p>"}))
    CreateCommitOutput.add_member(:tree_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'treeId', traits: {"smithy.api#documentation" => "<p>The full SHA-1 pointer of the tree information for the commit that contains the commited file changes.</p>"}))
    CreateCommitOutput.add_member(:files_added, Smithy::Schema::Shapes::ShapeRef.new(shape: FilesMetadata, location_name: 'filesAdded', traits: {"smithy.api#documentation" => "<p>The files added as part of the committed file changes.</p>"}))
    CreateCommitOutput.add_member(:files_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: FilesMetadata, location_name: 'filesUpdated', traits: {"smithy.api#documentation" => "<p>The files updated as part of the commited file changes.</p>"}))
    CreateCommitOutput.add_member(:files_deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: FilesMetadata, location_name: 'filesDeleted', traits: {"smithy.api#documentation" => "<p>The files deleted as part of the committed file changes.</p>"}))
    CreateCommitOutput.type = Types::CreateCommitOutput
    CreatePullRequestApprovalRuleInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request for which you want to create the approval rule.</p>", "smithy.api#required" => {}}))
    CreatePullRequestApprovalRuleInput.add_member(:approval_rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleName, location_name: 'approvalRuleName', traits: {"smithy.api#documentation" => "<p>The name for the approval rule.</p>", "smithy.api#required" => {}}))
    CreatePullRequestApprovalRuleInput.add_member(:approval_rule_content, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleContent, location_name: 'approvalRuleContent', traits: {"smithy.api#documentation" => "<p>The content of the approval rule, including the number of approvals needed and the structure of an approval pool defined for approvals, if any. For more information\n        about approval pools, see the CodeCommit User Guide.</p>\n         <note>\n            <p>When you create the content of the approval rule, you can specify approvers in an\n                approval pool in one of two ways:</p>\n            <ul>\n               <li>\n                  <p>\n                     <b>CodeCommitApprovers</b>: This option only\n                        requires an Amazon Web Services account and a resource. It can be used for both IAM users\n                        and federated access users whose name matches the provided resource name.\n                        This is a very powerful option that offers a great deal of flexibility. For\n                        example, if you specify the Amazon Web Services account <i>123456789012</i>\n                        and <i>Mary_Major</i>, all of the following would be counted\n                        as approvals coming from that user:</p>\n                  <ul>\n                     <li>\n                        <p>An IAM user in the account\n                                    (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p>\n                     </li>\n                     <li>\n                        <p>A federated user identified in IAM as Mary_Major\n                                    (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p>\n                     </li>\n                  </ul>\n                  <p>This option does not recognize an active session of someone assuming the\n                        role of CodeCommitReview with a role session name of\n                            <i>Mary_Major</i>\n                            (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>)\n                        unless you include a wildcard (*Mary_Major).</p>\n               </li>\n               <li>\n                  <p>\n                     <b>Fully qualified ARN</b>: This option allows\n                        you to specify the fully qualified Amazon Resource Name (ARN) of the IAM\n                        user or role. </p>\n               </li>\n            </ul>\n            <p>For more information about IAM ARNs, wildcards, and formats, see\n               <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM\n                Identifiers</a> in the <i>IAM User Guide</i>.</p>\n         </note>", "smithy.api#required" => {}}))
    CreatePullRequestApprovalRuleInput.type = Types::CreatePullRequestApprovalRuleInput
    CreatePullRequestApprovalRuleOutput.add_member(:approval_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRule, location_name: 'approvalRule', traits: {"smithy.api#documentation" => "<p>Information about the created approval rule.</p>", "smithy.api#required" => {}}))
    CreatePullRequestApprovalRuleOutput.type = Types::CreatePullRequestApprovalRuleOutput
    CreatePullRequestInput.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The title of the pull request. This title is used to identify the pull request to\n            other users in the repository.</p>", "smithy.api#required" => {}}))
    CreatePullRequestInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the pull request.</p>"}))
    CreatePullRequestInput.add_member(:targets, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetList, location_name: 'targets', traits: {"smithy.api#documentation" => "<p>The targets for the pull request, including the source of the code to be reviewed (the\n            source branch) and the destination where the creator of the pull request intends the\n            code to be merged after the pull request is closed (the destination branch).</p>", "smithy.api#required" => {}}))
    CreatePullRequestInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique, client-generated idempotency token that, when provided in a request, ensures\n            the request cannot be repeated with a changed parameter. If a request is received with\n            the same parameters and a token is included, the request returns information about the\n            initial request that used that token.</p>\n         <note>\n            <p>The Amazon Web ServicesSDKs prepopulate client request tokens. If you are using an Amazon Web ServicesSDK, an\n                idempotency token is created for you.</p>\n         </note>", "smithy.api#idempotencyToken" => {}}))
    CreatePullRequestInput.type = Types::CreatePullRequestInput
    CreatePullRequestOutput.add_member(:pull_request, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequest, location_name: 'pullRequest', traits: {"smithy.api#documentation" => "<p>Information about the newly created pull request.</p>", "smithy.api#required" => {}}))
    CreatePullRequestOutput.type = Types::CreatePullRequestOutput
    CreateRepositoryInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the new repository to be created.</p>\n         <note>\n            <p>The repository name must be unique across the calling Amazon Web Services account. Repository names\n                are limited to 100 alphanumeric, dash, and underscore characters, and cannot include\n                certain characters. For more information about the limits on repository names, see\n                    <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html\">Quotas</a> in the <i>CodeCommit User Guide</i>. The\n                suffix .git is prohibited.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateRepositoryInput.add_member(:repository_description, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: 'repositoryDescription', traits: {"smithy.api#documentation" => "<p>A comment or description about the new repository.</p>\n         <note>\n            <p>The description field for a repository accepts all HTML characters and all valid\n                Unicode characters. Applications that do not HTML-encode the description and display\n                it in a webpage can expose users to potentially malicious code. Make sure that you\n                HTML-encode the description field in any application that uses this API to display\n                the repository description on a webpage.</p>\n         </note>"}))
    CreateRepositoryInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>One or more tag key-value pairs to use when tagging this repository.</p>"}))
    CreateRepositoryInput.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the encryption key. You can view the ID of an encryption key in the KMS console, or use the KMS APIs to\n            programmatically retrieve a key ID. For more information about acceptable values for kmsKeyID, see \n            <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_Decrypt.html#KMS-Decrypt-request-KeyId\">KeyId</a> in the Decrypt API description in \n            the <i>Key Management Service API Reference</i>.</p>\n         <p>If no key is specified, the default <code>aws/codecommit</code> Amazon Web Services managed key is used.</p>"}))
    CreateRepositoryInput.type = Types::CreateRepositoryInput
    CreateRepositoryOutput.add_member(:repository_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryMetadata, location_name: 'repositoryMetadata', traits: {"smithy.api#documentation" => "<p>Information about the newly created repository.</p>"}))
    CreateRepositoryOutput.type = Types::CreateRepositoryOutput
    CreateUnreferencedMergeCommitInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where you want to create the unreferenced merge commit.</p>", "smithy.api#required" => {}}))
    CreateUnreferencedMergeCommitInput.add_member(:source_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'sourceCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    CreateUnreferencedMergeCommitInput.add_member(:destination_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'destinationCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    CreateUnreferencedMergeCommitInput.add_member(:merge_option, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeOptionTypeEnum, location_name: 'mergeOption', traits: {"smithy.api#documentation" => "<p>The merge option or strategy you want to use to merge the code.</p>", "smithy.api#required" => {}}))
    CreateUnreferencedMergeCommitInput.add_member(:conflict_detail_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: 'conflictDetailLevel', traits: {"smithy.api#documentation" => "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,\n            which returns a not-mergeable result if the same file has differences in both branches.\n            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in\n            both branches has differences on the same line.</p>"}))
    CreateUnreferencedMergeCommitInput.add_member(:conflict_resolution_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: 'conflictResolutionStrategy', traits: {"smithy.api#documentation" => "<p>Specifies which branch to use when resolving conflicts, or whether to attempt\n            automatically merging two versions of a file. The default is NONE, which requires any\n            conflicts to be resolved manually before the merge operation is successful.</p>"}))
    CreateUnreferencedMergeCommitInput.add_member(:author_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'authorName', traits: {"smithy.api#documentation" => "<p>The name of the author who created the unreferenced commit. This information is used\n            as both the author and committer for the commit.</p>"}))
    CreateUnreferencedMergeCommitInput.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'email', traits: {"smithy.api#documentation" => "<p>The email address for the person who created the unreferenced commit.</p>"}))
    CreateUnreferencedMergeCommitInput.add_member(:commit_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'commitMessage', traits: {"smithy.api#documentation" => "<p>The commit message for the unreferenced commit.</p>"}))
    CreateUnreferencedMergeCommitInput.add_member(:keep_empty_folders, Smithy::Schema::Shapes::ShapeRef.new(shape: KeepEmptyFolders, location_name: 'keepEmptyFolders', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If the commit contains deletions, whether to keep a folder or folder structure if the\n            changes leave the folders empty. If this is specified as true, a .gitkeep file is\n            created for empty folders. The default is false.</p>"}))
    CreateUnreferencedMergeCommitInput.add_member(:conflict_resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictResolution, location_name: 'conflictResolution', traits: {"smithy.api#documentation" => "<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when\n            resolving conflicts during a merge.</p>"}))
    CreateUnreferencedMergeCommitInput.type = Types::CreateUnreferencedMergeCommitInput
    CreateUnreferencedMergeCommitOutput.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the commit that contains your merge results.</p>"}))
    CreateUnreferencedMergeCommitOutput.add_member(:tree_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'treeId', traits: {"smithy.api#documentation" => "<p>The full SHA-1 pointer of the tree information for the commit that contains the merge results.</p>"}))
    CreateUnreferencedMergeCommitOutput.type = Types::CreateUnreferencedMergeCommitOutput
    DefaultBranchCannotBeDeletedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    DefaultBranchCannotBeDeletedException.type = Types::DefaultBranchCannotBeDeletedException
    DeleteApprovalRuleTemplateInput.add_member(:approval_rule_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateName, location_name: 'approvalRuleTemplateName', traits: {"smithy.api#documentation" => "<p>The name of the approval rule template to delete.</p>", "smithy.api#required" => {}}))
    DeleteApprovalRuleTemplateInput.type = Types::DeleteApprovalRuleTemplateInput
    DeleteApprovalRuleTemplateOutput.add_member(:approval_rule_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateId, location_name: 'approvalRuleTemplateId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the deleted approval rule template. If the template has\n            been previously deleted, the only response is a 200 OK.</p>", "smithy.api#required" => {}}))
    DeleteApprovalRuleTemplateOutput.type = Types::DeleteApprovalRuleTemplateOutput
    DeleteBranchInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the branch to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteBranchInput.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch to delete.</p>", "smithy.api#required" => {}}))
    DeleteBranchInput.type = Types::DeleteBranchInput
    DeleteBranchOutput.add_member(:deleted_branch, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchInfo, location_name: 'deletedBranch', traits: {"smithy.api#documentation" => "<p>Information about the branch deleted by the operation, including the branch name and the commit ID that was the tip of the branch.</p>"}))
    DeleteBranchOutput.type = Types::DeleteBranchOutput
    DeleteCommentContentInput.add_member(:comment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommentId, location_name: 'commentId', traits: {"smithy.api#documentation" => "<p>The unique, system-generated ID of the comment. To get this ID, use  <a>GetCommentsForComparedCommit</a>\n         or <a>GetCommentsForPullRequest</a>.</p>", "smithy.api#required" => {}}))
    DeleteCommentContentInput.type = Types::DeleteCommentContentInput
    DeleteCommentContentOutput.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Comment, location_name: 'comment', traits: {"smithy.api#documentation" => "<p>Information about the comment you just deleted.</p>"}))
    DeleteCommentContentOutput.type = Types::DeleteCommentContentOutput
    DeleteFileEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFileEntry)
    DeleteFileEntry.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The full path of the file to be deleted, including the name of the file.</p>", "smithy.api#required" => {}}))
    DeleteFileEntry.type = Types::DeleteFileEntry
    DeleteFileInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the file to delete.</p>", "smithy.api#required" => {}}))
    DeleteFileInput.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch where the commit that deletes the file is made.</p>", "smithy.api#required" => {}}))
    DeleteFileInput.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The fully qualified path to the file that to be deleted, including the full name and\n            extension of that file. For example, /examples/file.md is a fully qualified path to a\n            file named file.md in a folder named examples.</p>", "smithy.api#required" => {}}))
    DeleteFileInput.add_member(:parent_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'parentCommitId', traits: {"smithy.api#documentation" => "<p>The ID of the commit that is the tip of the branch where you want to create the commit\n            that deletes the file. This must be the HEAD commit for the branch. The commit that\n            deletes the file is created from this commit ID.</p>", "smithy.api#required" => {}}))
    DeleteFileInput.add_member(:keep_empty_folders, Smithy::Schema::Shapes::ShapeRef.new(shape: KeepEmptyFolders, location_name: 'keepEmptyFolders', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If a file is the only object in the folder or directory, specifies whether to delete\n            the folder or directory that contains the file. By default, empty folders are deleted.\n            This includes empty folders that are part of the directory structure. For example, if\n            the path to a file is dir1/dir2/dir3/dir4, and dir2 and dir3 are empty, deleting the\n            last file in dir4 also deletes the empty folders dir4, dir3, and dir2.</p>"}))
    DeleteFileInput.add_member(:commit_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'commitMessage', traits: {"smithy.api#documentation" => "<p>The commit message you want to include as part of deleting the file. Commit messages\n            are limited to 256 KB. If no message is specified, a default message is used.</p>"}))
    DeleteFileInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the author of the commit that deletes the file. If no name is specified,\n            the user's ARN is used as the author name and committer name.</p>"}))
    DeleteFileInput.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'email', traits: {"smithy.api#documentation" => "<p>The email address for the commit that deletes the file. If no email address is\n            specified, the email address is left blank.</p>"}))
    DeleteFileInput.type = Types::DeleteFileInput
    DeleteFileOutput.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the commit that contains the change that deletes the file.</p>", "smithy.api#required" => {}}))
    DeleteFileOutput.add_member(:blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'blobId', traits: {"smithy.api#documentation" => "<p>The blob ID removed from the tree as part of deleting the file.</p>", "smithy.api#required" => {}}))
    DeleteFileOutput.add_member(:tree_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'treeId', traits: {"smithy.api#documentation" => "<p>The full SHA-1 pointer of the tree information for the commit that contains the delete file change.</p>", "smithy.api#required" => {}}))
    DeleteFileOutput.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The fully qualified path to the file to be deleted, including the full name and\n            extension of that file.</p>", "smithy.api#required" => {}}))
    DeleteFileOutput.type = Types::DeleteFileOutput
    DeletePullRequestApprovalRuleInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request that contains the approval rule you want to delete.</p>", "smithy.api#required" => {}}))
    DeletePullRequestApprovalRuleInput.add_member(:approval_rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleName, location_name: 'approvalRuleName', traits: {"smithy.api#documentation" => "<p>The name of the approval rule you want to delete.</p>", "smithy.api#required" => {}}))
    DeletePullRequestApprovalRuleInput.type = Types::DeletePullRequestApprovalRuleInput
    DeletePullRequestApprovalRuleOutput.add_member(:approval_rule_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleId, location_name: 'approvalRuleId', traits: {"smithy.api#documentation" => "<p>The ID of the deleted approval rule. </p>\n         <note>\n            <p>If the approval rule was deleted in an earlier API call, the response is 200 OK without\n                content.</p>\n         </note>", "smithy.api#required" => {}}))
    DeletePullRequestApprovalRuleOutput.type = Types::DeletePullRequestApprovalRuleOutput
    DeleteRepositoryInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository to delete.</p>", "smithy.api#required" => {}}))
    DeleteRepositoryInput.type = Types::DeleteRepositoryInput
    DeleteRepositoryOutput.add_member(:repository_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryId, location_name: 'repositoryId', traits: {"smithy.api#documentation" => "<p>The ID of the repository that was deleted.</p>"}))
    DeleteRepositoryOutput.type = Types::DeleteRepositoryOutput
    DescribeMergeConflictsInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where you want to get information about a merge conflict.</p>", "smithy.api#required" => {}}))
    DescribeMergeConflictsInput.add_member(:destination_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'destinationCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    DescribeMergeConflictsInput.add_member(:source_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'sourceCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    DescribeMergeConflictsInput.add_member(:merge_option, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeOptionTypeEnum, location_name: 'mergeOption', traits: {"smithy.api#documentation" => "<p>The merge option or strategy you want to use to merge the code.</p>", "smithy.api#required" => {}}))
    DescribeMergeConflictsInput.add_member(:max_merge_hunks, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxMergeHunks', traits: {"smithy.api#documentation" => "<p>The maximum number of merge hunks to include in the output.</p>"}))
    DescribeMergeConflictsInput.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The path of the target files used to describe the conflicts. </p>", "smithy.api#required" => {}}))
    DescribeMergeConflictsInput.add_member(:conflict_detail_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: 'conflictDetailLevel', traits: {"smithy.api#documentation" => "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,\n            which returns a not-mergeable result if the same file has differences in both branches.\n            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in\n            both branches has differences on the same line.</p>"}))
    DescribeMergeConflictsInput.add_member(:conflict_resolution_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: 'conflictResolutionStrategy', traits: {"smithy.api#documentation" => "<p>Specifies which branch to use when resolving conflicts, or whether to attempt\n            automatically merging two versions of a file. The default is NONE, which requires any\n            conflicts to be resolved manually before the merge operation is successful.</p>"}))
    DescribeMergeConflictsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the\n            results.</p>"}))
    DescribeMergeConflictsInput.type = Types::DescribeMergeConflictsInput
    DescribeMergeConflictsOutput.add_member(:conflict_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictMetadata, location_name: 'conflictMetadata', traits: {"smithy.api#documentation" => "<p>Contains metadata about the conflicts found in the merge.</p>", "smithy.api#required" => {}}))
    DescribeMergeConflictsOutput.add_member(:merge_hunks, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeHunks, location_name: 'mergeHunks', traits: {"smithy.api#documentation" => "<p>A list of merge hunks of the differences between the files or lines.</p>", "smithy.api#required" => {}}))
    DescribeMergeConflictsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"}))
    DescribeMergeConflictsOutput.add_member(:destination_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'destinationCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>", "smithy.api#required" => {}}))
    DescribeMergeConflictsOutput.add_member(:source_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'sourceCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>", "smithy.api#required" => {}}))
    DescribeMergeConflictsOutput.add_member(:base_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'baseCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the merge base.</p>"}))
    DescribeMergeConflictsOutput.type = Types::DescribeMergeConflictsOutput
    DescribePullRequestEventsInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>", "smithy.api#required" => {}}))
    DescribePullRequestEventsInput.add_member(:pull_request_event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestEventType, location_name: 'pullRequestEventType', traits: {"smithy.api#documentation" => "<p>Optional. The pull request event type about which you want to return information.</p>"}))
    DescribePullRequestEventsInput.add_member(:actor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'actorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user whose actions resulted in the event.\n            Examples include updating the pull request with more commits or changing the status of a\n            pull request.</p>"}))
    DescribePullRequestEventsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the\n            results.</p>"}))
    DescribePullRequestEventsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>A non-zero, non-negative integer used to limit the number of returned results. \n            The default is 100 events, which is also the maximum number of events that can be returned in a result.</p>"}))
    DescribePullRequestEventsInput.type = Types::DescribePullRequestEventsInput
    DescribePullRequestEventsOutput.add_member(:pull_request_events, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestEventList, location_name: 'pullRequestEvents', traits: {"smithy.api#documentation" => "<p>Information about the pull request events.</p>", "smithy.api#required" => {}}))
    DescribePullRequestEventsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"}))
    DescribePullRequestEventsOutput.type = Types::DescribePullRequestEventsOutput
    Difference.add_member(:before_blob, Smithy::Schema::Shapes::ShapeRef.new(shape: BlobMetadata, location_name: 'beforeBlob', traits: {"smithy.api#documentation" => "<p>Information about a <code>beforeBlob</code> data type object, including the ID, \n            the file mode permission code, and the path.</p>"}))
    Difference.add_member(:after_blob, Smithy::Schema::Shapes::ShapeRef.new(shape: BlobMetadata, location_name: 'afterBlob', traits: {"smithy.api#documentation" => "<p>Information about an <code>afterBlob</code> data type object, including the ID, \n            the file mode permission code, and the path.</p>"}))
    Difference.add_member(:change_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeTypeEnum, location_name: 'changeType', traits: {"smithy.api#documentation" => "<p>Whether the change type of the difference is an addition (A), deletion (D), or modification (M).</p>"}))
    Difference.type = Types::Difference
    DifferenceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Difference)
    DirectoryNameConflictsWithFileNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    DirectoryNameConflictsWithFileNameException.type = Types::DirectoryNameConflictsWithFileNameException
    DisassociateApprovalRuleTemplateFromRepositoryInput.add_member(:approval_rule_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateName, location_name: 'approvalRuleTemplateName', traits: {"smithy.api#documentation" => "<p>The name of the approval rule template to disassociate from a specified repository.</p>", "smithy.api#required" => {}}))
    DisassociateApprovalRuleTemplateFromRepositoryInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository you want to disassociate from the template.</p>", "smithy.api#required" => {}}))
    DisassociateApprovalRuleTemplateFromRepositoryInput.type = Types::DisassociateApprovalRuleTemplateFromRepositoryInput
    EncryptionIntegrityChecksFailedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    EncryptionIntegrityChecksFailedException.type = Types::EncryptionIntegrityChecksFailedException
    EncryptionKeyAccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    EncryptionKeyAccessDeniedException.type = Types::EncryptionKeyAccessDeniedException
    EncryptionKeyDisabledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    EncryptionKeyDisabledException.type = Types::EncryptionKeyDisabledException
    EncryptionKeyInvalidIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    EncryptionKeyInvalidIdException.type = Types::EncryptionKeyInvalidIdException
    EncryptionKeyInvalidUsageException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    EncryptionKeyInvalidUsageException.type = Types::EncryptionKeyInvalidUsageException
    EncryptionKeyNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    EncryptionKeyNotFoundException.type = Types::EncryptionKeyNotFoundException
    EncryptionKeyRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    EncryptionKeyRequiredException.type = Types::EncryptionKeyRequiredException
    EncryptionKeyUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    EncryptionKeyUnavailableException.type = Types::EncryptionKeyUnavailableException
    EvaluatePullRequestApprovalRulesInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request you want to evaluate.</p>", "smithy.api#required" => {}}))
    EvaluatePullRequestApprovalRulesInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The system-generated ID for the pull request revision. To retrieve the most recent\n            revision ID for a pull request, use\n            <a>GetPullRequest</a>.</p>", "smithy.api#required" => {}}))
    EvaluatePullRequestApprovalRulesInput.type = Types::EvaluatePullRequestApprovalRulesInput
    EvaluatePullRequestApprovalRulesOutput.add_member(:evaluation, Smithy::Schema::Shapes::ShapeRef.new(shape: Evaluation, location_name: 'evaluation', traits: {"smithy.api#documentation" => "<p>The result of the evaluation, including the names of the rules whose conditions have been met (if any), the names of the rules whose conditions have \n        not been met (if any), whether the pull request is in the approved state, and whether the pull request approval rule has been set aside by an override. </p>", "smithy.api#required" => {}}))
    EvaluatePullRequestApprovalRulesOutput.type = Types::EvaluatePullRequestApprovalRulesOutput
    Evaluation.add_member(:approved, Smithy::Schema::Shapes::ShapeRef.new(shape: Approved, location_name: 'approved', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the state of the pull request is approved.</p>"}))
    Evaluation.add_member(:overridden, Smithy::Schema::Shapes::ShapeRef.new(shape: Overridden, location_name: 'overridden', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the approval rule requirements for the pull request have been overridden and no longer need to be met.</p>"}))
    Evaluation.add_member(:approval_rules_satisfied, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRulesSatisfiedList, location_name: 'approvalRulesSatisfied', traits: {"smithy.api#documentation" => "<p>The names of the approval rules that have had their conditions met.</p>"}))
    Evaluation.add_member(:approval_rules_not_satisfied, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRulesNotSatisfiedList, location_name: 'approvalRulesNotSatisfied', traits: {"smithy.api#documentation" => "<p>The names of the approval rules that have not had their conditions met.</p>"}))
    Evaluation.type = Types::Evaluation
    File.add_member(:blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'blobId', traits: {"smithy.api#documentation" => "<p>The blob ID that contains the file information.</p>"}))
    File.add_member(:absolute_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'absolutePath', traits: {"smithy.api#documentation" => "<p>The fully qualified path to the file in the repository.</p>"}))
    File.add_member(:relative_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'relativePath', traits: {"smithy.api#documentation" => "<p>The relative path of the file from the folder where the query originated.</p>"}))
    File.add_member(:file_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: 'fileMode', traits: {"smithy.api#documentation" => "<p>The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.</p>"}))
    File.type = Types::File
    FileContentAndSourceFileSpecifiedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    FileContentAndSourceFileSpecifiedException.type = Types::FileContentAndSourceFileSpecifiedException
    FileContentRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    FileContentRequiredException.type = Types::FileContentRequiredException
    FileContentSizeLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    FileContentSizeLimitExceededException.type = Types::FileContentSizeLimitExceededException
    FileDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    FileDoesNotExistException.type = Types::FileDoesNotExistException
    FileEntryRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    FileEntryRequiredException.type = Types::FileEntryRequiredException
    FileList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: File)
    FileMetadata.add_member(:absolute_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'absolutePath', traits: {"smithy.api#documentation" => "<p>The full path to the file to be added or updated, including the name of the\n            file.</p>"}))
    FileMetadata.add_member(:blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'blobId', traits: {"smithy.api#documentation" => "<p>The blob ID that contains the file information.</p>"}))
    FileMetadata.add_member(:file_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: 'fileMode', traits: {"smithy.api#documentation" => "<p>The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.</p>"}))
    FileMetadata.type = Types::FileMetadata
    FileModeRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    FileModeRequiredException.type = Types::FileModeRequiredException
    FileModeTypeEnum.add_member(:executable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTABLE', traits: {"smithy.api#enumValue" => "EXECUTABLE"}))
    FileModeTypeEnum.add_member(:normal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NORMAL', traits: {"smithy.api#enumValue" => "NORMAL"}))
    FileModeTypeEnum.add_member(:symlink, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYMLINK', traits: {"smithy.api#enumValue" => "SYMLINK"}))
    FileModes.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The file mode of a file in the source of a merge or pull request.</p>"}))
    FileModes.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The file mode of a file in the destination of a merge or pull request.</p>"}))
    FileModes.add_member(:base, Smithy::Schema::Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: 'base', traits: {"smithy.api#documentation" => "<p>The file mode of a file in the base of a merge or pull request.</p>"}))
    FileModes.type = Types::FileModes
    FileNameConflictsWithDirectoryNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    FileNameConflictsWithDirectoryNameException.type = Types::FileNameConflictsWithDirectoryNameException
    FilePathConflictsWithSubmodulePathException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    FilePathConflictsWithSubmodulePathException.type = Types::FilePathConflictsWithSubmodulePathException
    FilePaths.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Path)
    FileSizes.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSize, location_name: 'source', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The  size of a file in the source of a merge or pull request.</p>"}))
    FileSizes.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSize, location_name: 'destination', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of a file in the destination of a merge or pull request.</p>"}))
    FileSizes.add_member(:base, Smithy::Schema::Shapes::ShapeRef.new(shape: FileSize, location_name: 'base', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of a file in the base of a merge or pull request.</p>"}))
    FileSizes.type = Types::FileSizes
    FileTooLargeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    FileTooLargeException.type = Types::FileTooLargeException
    FileVersion.add_member(:commit, Smithy::Schema::Shapes::ShapeRef.new(shape: Commit, location_name: 'commit'))
    FileVersion.add_member(:blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'blobId', traits: {"smithy.api#documentation" => "<p>The blob ID of the object that represents the content of the file in this version.</p>"}))
    FileVersion.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The name and path of the file at which this blob is indexed which contains the data for this version of the file. This value will \n        vary between file versions if a file is renamed or if its path changes.</p>"}))
    FileVersion.add_member(:revision_children, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionChildren, location_name: 'revisionChildren', traits: {"smithy.api#documentation" => "<p>An array of commit IDs that contain more recent versions of this file. If there are no additional versions of the file, this array will be empty.</p>"}))
    FileVersion.type = Types::FileVersion
    FilesMetadata.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FileMetadata)
    Folder.add_member(:tree_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'treeId', traits: {"smithy.api#documentation" => "<p>The full SHA-1 pointer of the tree information for the commit that contains the folder.</p>"}))
    Folder.add_member(:absolute_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'absolutePath', traits: {"smithy.api#documentation" => "<p>The fully qualified path of the folder in the repository.</p>"}))
    Folder.add_member(:relative_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'relativePath', traits: {"smithy.api#documentation" => "<p>The relative path of the specified folder from the folder where the query originated.</p>"}))
    Folder.type = Types::Folder
    FolderContentSizeLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    FolderContentSizeLimitExceededException.type = Types::FolderContentSizeLimitExceededException
    FolderDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    FolderDoesNotExistException.type = Types::FolderDoesNotExistException
    FolderList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Folder)
    GetApprovalRuleTemplateInput.add_member(:approval_rule_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateName, location_name: 'approvalRuleTemplateName', traits: {"smithy.api#documentation" => "<p>The name of the approval rule template for which you want to get information.</p>", "smithy.api#required" => {}}))
    GetApprovalRuleTemplateInput.type = Types::GetApprovalRuleTemplateInput
    GetApprovalRuleTemplateOutput.add_member(:approval_rule_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplate, location_name: 'approvalRuleTemplate', traits: {"smithy.api#documentation" => "<p>The content and structure of the approval rule template.</p>", "smithy.api#required" => {}}))
    GetApprovalRuleTemplateOutput.type = Types::GetApprovalRuleTemplateOutput
    GetBlobInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the blob.</p>", "smithy.api#required" => {}}))
    GetBlobInput.add_member(:blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'blobId', traits: {"smithy.api#documentation" => "<p>The ID of the blob, which is its SHA-1 pointer.</p>", "smithy.api#required" => {}}))
    GetBlobInput.type = Types::GetBlobInput
    GetBlobOutput.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of the blob, usually a file.</p>", "smithy.api#required" => {}}))
    GetBlobOutput.type = Types::GetBlobOutput
    GetBranchInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the branch for which you want to retrieve information.</p>"}))
    GetBranchInput.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch for which you want to retrieve information.</p>"}))
    GetBranchInput.type = Types::GetBranchInput
    GetBranchOutput.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchInfo, location_name: 'branch', traits: {"smithy.api#documentation" => "<p>The name of the branch.</p>"}))
    GetBranchOutput.type = Types::GetBranchOutput
    GetCommentInput.add_member(:comment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommentId, location_name: 'commentId', traits: {"smithy.api#documentation" => "<p>The unique, system-generated ID of the comment. To get this ID, use  <a>GetCommentsForComparedCommit</a>\n            or <a>GetCommentsForPullRequest</a>.</p>", "smithy.api#required" => {}}))
    GetCommentInput.type = Types::GetCommentInput
    GetCommentOutput.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Comment, location_name: 'comment', traits: {"smithy.api#documentation" => "<p>The contents of the comment.</p>"}))
    GetCommentOutput.type = Types::GetCommentOutput
    GetCommentReactionsInput.add_member(:comment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommentId, location_name: 'commentId', traits: {"smithy.api#documentation" => "<p>The ID of the comment for which you want to get reactions information.</p>", "smithy.api#required" => {}}))
    GetCommentReactionsInput.add_member(:reaction_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'reactionUserArn', traits: {"smithy.api#documentation" => "<p>Optional. The Amazon Resource Name (ARN) of the user or identity for which you want to get reaction information.</p>"}))
    GetCommentReactionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the results. </p>"}))
    GetCommentReactionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>A non-zero, non-negative integer used to limit the number of returned results.  The default is the same as the allowed maximum, 1,000.</p>"}))
    GetCommentReactionsInput.type = Types::GetCommentReactionsInput
    GetCommentReactionsOutput.add_member(:reactions_for_comment, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactionsForCommentList, location_name: 'reactionsForComment', traits: {"smithy.api#documentation" => "<p>An array of reactions to the specified comment.</p>", "smithy.api#required" => {}}))
    GetCommentReactionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"}))
    GetCommentReactionsOutput.type = Types::GetCommentReactionsOutput
    GetCommentsForComparedCommitInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where you want to compare commits.</p>", "smithy.api#required" => {}}))
    GetCommentsForComparedCommitInput.add_member(:before_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'beforeCommitId', traits: {"smithy.api#documentation" => "<p>To establish the directionality of the comparison, the full commit ID of the before\n            commit.</p>"}))
    GetCommentsForComparedCommitInput.add_member(:after_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'afterCommitId', traits: {"smithy.api#documentation" => "<p>To establish the directionality of the comparison, the full commit ID of the after\n            commit.</p>", "smithy.api#required" => {}}))
    GetCommentsForComparedCommitInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that when provided in a request, returns the next batch of the results. </p>"}))
    GetCommentsForComparedCommitInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>A non-zero, non-negative integer used to limit the number of returned results. The\n            default is 100 comments, but you can configure up to 500.</p>"}))
    GetCommentsForComparedCommitInput.type = Types::GetCommentsForComparedCommitInput
    GetCommentsForComparedCommitOutput.add_member(:comments_for_compared_commit_data, Smithy::Schema::Shapes::ShapeRef.new(shape: CommentsForComparedCommitData, location_name: 'commentsForComparedCommitData', traits: {"smithy.api#documentation" => "<p>A list of comment objects on the compared commit.</p>"}))
    GetCommentsForComparedCommitOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"}))
    GetCommentsForComparedCommitOutput.type = Types::GetCommentsForComparedCommitOutput
    GetCommentsForPullRequestInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>", "smithy.api#required" => {}}))
    GetCommentsForPullRequestInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the pull request. Requirement is conditional: <code>repositoryName</code> must be specified when \n            <code>beforeCommitId</code> and <code>afterCommitId</code> are included.</p>"}))
    GetCommentsForPullRequestInput.add_member(:before_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'beforeCommitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created. Requirement is conditional: \n            <code>beforeCommitId</code> must be specified when <code>repositoryName</code> is included.</p>"}))
    GetCommentsForPullRequestInput.add_member(:after_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'afterCommitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the commit in the source branch that was the tip of the branch at the time the comment was made. Requirement is conditional: \n            <code>afterCommitId</code> must be specified when <code>repositoryName</code> is included.</p>"}))
    GetCommentsForPullRequestInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the\n            results.</p>"}))
    GetCommentsForPullRequestInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>A non-zero, non-negative integer used to limit the number of returned results. The default is 100 comments.\n            You can return up to 500 comments with a single request.</p>"}))
    GetCommentsForPullRequestInput.type = Types::GetCommentsForPullRequestInput
    GetCommentsForPullRequestOutput.add_member(:comments_for_pull_request_data, Smithy::Schema::Shapes::ShapeRef.new(shape: CommentsForPullRequestData, location_name: 'commentsForPullRequestData', traits: {"smithy.api#documentation" => "<p>An array of comment objects on the pull request.</p>"}))
    GetCommentsForPullRequestOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"}))
    GetCommentsForPullRequestOutput.type = Types::GetCommentsForPullRequestOutput
    GetCommitInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository to which the commit was made.</p>", "smithy.api#required" => {}}))
    GetCommitInput.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p>The commit ID. Commit IDs are the full SHA ID of the commit.</p>", "smithy.api#required" => {}}))
    GetCommitInput.type = Types::GetCommitInput
    GetCommitOutput.add_member(:commit, Smithy::Schema::Shapes::ShapeRef.new(shape: Commit, location_name: 'commit', traits: {"smithy.api#documentation" => "<p>A commit data type object that contains information about the specified commit.</p>", "smithy.api#required" => {}}))
    GetCommitOutput.type = Types::GetCommitOutput
    GetDifferencesInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where you want to get differences.</p>", "smithy.api#required" => {}}))
    GetDifferencesInput.add_member(:before_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'beforeCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, the full commit ID). Optional. If not specified, all changes before the\n                <code>afterCommitSpecifier</code> value are shown. If you do not use\n                <code>beforeCommitSpecifier</code> in your request, consider limiting the results\n            with <code>maxResults</code>.</p>"}))
    GetDifferencesInput.add_member(:after_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'afterCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit.</p>", "smithy.api#required" => {}}))
    GetDifferencesInput.add_member(:before_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'beforePath', traits: {"smithy.api#documentation" => "<p>The file path in which to check for differences. Limits the results to this path. Can\n            also be used to specify the previous name of a directory or folder. If\n                <code>beforePath</code> and <code>afterPath</code> are not specified, differences\n            are shown for all paths.</p>"}))
    GetDifferencesInput.add_member(:after_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'afterPath', traits: {"smithy.api#documentation" => "<p>The file path in which to check differences. Limits the results to this path. Can also\n            be used to specify the changed name of a directory or folder, if it has changed. If not\n            specified, differences are shown for all paths.</p>"}))
    GetDifferencesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"}))
    GetDifferencesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the\n            results.</p>"}))
    GetDifferencesInput.type = Types::GetDifferencesInput
    GetDifferencesOutput.add_member(:differences, Smithy::Schema::Shapes::ShapeRef.new(shape: DifferenceList, location_name: 'differences', traits: {"smithy.api#documentation" => "<p>A data type object that contains information about the differences, including whether\n            the difference is added, modified, or deleted (A, D, M).</p>"}))
    GetDifferencesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"}))
    GetDifferencesOutput.type = Types::GetDifferencesOutput
    GetFileInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the file.</p>", "smithy.api#required" => {}}))
    GetFileInput.add_member(:commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'commitSpecifier', traits: {"smithy.api#documentation" => "<p>The fully quaified reference that identifies the commit that contains the file. For\n            example, you can specify a full commit ID, a tag, a branch name, or a reference such as\n            refs/heads/main. If none is provided, the head commit is used.</p>"}))
    GetFileInput.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The fully qualified path to the file, including the full name and extension of the\n            file. For example, /examples/file.md is the fully qualified path to a file named file.md\n            in a folder named examples.</p>", "smithy.api#required" => {}}))
    GetFileInput.type = Types::GetFileInput
    GetFileOutput.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the commit that contains the content returned by GetFile.</p>", "smithy.api#required" => {}}))
    GetFileOutput.add_member(:blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'blobId', traits: {"smithy.api#documentation" => "<p>The blob ID of the object that represents the file content.</p>", "smithy.api#required" => {}}))
    GetFileOutput.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The fully qualified path to the specified file. Returns the name and extension of the\n            file.</p>", "smithy.api#required" => {}}))
    GetFileOutput.add_member(:file_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: 'fileMode', traits: {"smithy.api#documentation" => "<p>The extrapolated file mode permissions of the blob. Valid values include strings such as EXECUTABLE and not numeric values.</p>\n         <note>\n            <p>The file mode permissions returned by this API are not the standard file mode\n                permission values, such as 100644, but rather extrapolated values. See the supported\n                return values.</p>\n         </note>", "smithy.api#required" => {}}))
    GetFileOutput.add_member(:file_size, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectSize, location_name: 'fileSize', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the contents of the file, in bytes.</p>", "smithy.api#required" => {}}))
    GetFileOutput.add_member(:file_content, Smithy::Schema::Shapes::ShapeRef.new(shape: FileContent, location_name: 'fileContent', traits: {"smithy.api#documentation" => "<p>The base-64 encoded binary data object that represents the content of the file.</p>", "smithy.api#required" => {}}))
    GetFileOutput.type = Types::GetFileOutput
    GetFolderInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository.</p>", "smithy.api#required" => {}}))
    GetFolderInput.add_member(:commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'commitSpecifier', traits: {"smithy.api#documentation" => "<p>A fully qualified reference used to identify a commit that contains the version of the\n            folder's content to return. A fully qualified reference can be a commit ID, branch name,\n            tag, or reference such as HEAD. If no specifier is provided, the folder content is\n            returned as it exists in the HEAD commit.</p>"}))
    GetFolderInput.add_member(:folder_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'folderPath', traits: {"smithy.api#documentation" => "<p>The fully qualified path to the folder whose contents are returned, including the\n            folder name. For example, /examples is a fully-qualified path to a folder named examples\n            that was created off of the root directory (/) of a repository. </p>", "smithy.api#required" => {}}))
    GetFolderInput.type = Types::GetFolderInput
    GetFolderOutput.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p>The full commit ID used as a reference for the returned version of the folder\n            content.</p>", "smithy.api#required" => {}}))
    GetFolderOutput.add_member(:folder_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'folderPath', traits: {"smithy.api#documentation" => "<p>The fully qualified path of the folder whose contents are returned.</p>", "smithy.api#required" => {}}))
    GetFolderOutput.add_member(:tree_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'treeId', traits: {"smithy.api#documentation" => "<p>The full SHA-1 pointer of the tree information for the commit that contains the folder.</p>"}))
    GetFolderOutput.add_member(:sub_folders, Smithy::Schema::Shapes::ShapeRef.new(shape: FolderList, location_name: 'subFolders', traits: {"smithy.api#documentation" => "<p>The list of folders that exist under the specified folder, if any.</p>"}))
    GetFolderOutput.add_member(:files, Smithy::Schema::Shapes::ShapeRef.new(shape: FileList, location_name: 'files', traits: {"smithy.api#documentation" => "<p>The list of files in the specified folder, if any.</p>"}))
    GetFolderOutput.add_member(:symbolic_links, Smithy::Schema::Shapes::ShapeRef.new(shape: SymbolicLinkList, location_name: 'symbolicLinks', traits: {"smithy.api#documentation" => "<p>The list of symbolic links to other files and folders in the specified folder, if\n            any.</p>"}))
    GetFolderOutput.add_member(:sub_modules, Smithy::Schema::Shapes::ShapeRef.new(shape: SubModuleList, location_name: 'subModules', traits: {"smithy.api#documentation" => "<p>The list of submodules in the specified folder, if any.</p>"}))
    GetFolderOutput.type = Types::GetFolderOutput
    GetMergeCommitInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the merge commit about which you want to get information.</p>", "smithy.api#required" => {}}))
    GetMergeCommitInput.add_member(:source_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'sourceCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    GetMergeCommitInput.add_member(:destination_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'destinationCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    GetMergeCommitInput.add_member(:conflict_detail_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: 'conflictDetailLevel', traits: {"smithy.api#documentation" => "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,\n            which returns a not-mergeable result if the same file has differences in both branches.\n            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in\n            both branches has differences on the same line.</p>"}))
    GetMergeCommitInput.add_member(:conflict_resolution_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: 'conflictResolutionStrategy', traits: {"smithy.api#documentation" => "<p>Specifies which branch to use when resolving conflicts, or whether to attempt\n            automatically merging two versions of a file. The default is NONE, which requires any\n            conflicts to be resolved manually before the merge operation is successful.</p>"}))
    GetMergeCommitInput.type = Types::GetMergeCommitInput
    GetMergeCommitOutput.add_member(:source_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'sourceCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>"}))
    GetMergeCommitOutput.add_member(:destination_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'destinationCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>"}))
    GetMergeCommitOutput.add_member(:base_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'baseCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the merge base.</p>"}))
    GetMergeCommitOutput.add_member(:merged_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'mergedCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID for the merge commit created when the source branch was merged into the\n            destination branch. If the fast-forward merge strategy was used, there is no merge\n            commit.</p>"}))
    GetMergeCommitOutput.type = Types::GetMergeCommitOutput
    GetMergeConflictsInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where the pull request was created.</p>", "smithy.api#required" => {}}))
    GetMergeConflictsInput.add_member(:destination_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'destinationCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    GetMergeConflictsInput.add_member(:source_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'sourceCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    GetMergeConflictsInput.add_member(:merge_option, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeOptionTypeEnum, location_name: 'mergeOption', traits: {"smithy.api#documentation" => "<p>The merge option or strategy you want to use to merge the code.  </p>", "smithy.api#required" => {}}))
    GetMergeConflictsInput.add_member(:conflict_detail_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: 'conflictDetailLevel', traits: {"smithy.api#documentation" => "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,\n            which returns a not-mergeable result if the same file has differences in both branches.\n            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in\n            both branches has differences on the same line.</p>"}))
    GetMergeConflictsInput.add_member(:max_conflict_files, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxConflictFiles', traits: {"smithy.api#documentation" => "<p>The maximum number of files to include in the output.</p>"}))
    GetMergeConflictsInput.add_member(:conflict_resolution_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: 'conflictResolutionStrategy', traits: {"smithy.api#documentation" => "<p>Specifies which branch to use when resolving conflicts, or whether to attempt\n            automatically merging two versions of a file. The default is NONE, which requires any\n            conflicts to be resolved manually before the merge operation is successful.</p>"}))
    GetMergeConflictsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the\n            results.</p>"}))
    GetMergeConflictsInput.type = Types::GetMergeConflictsInput
    GetMergeConflictsOutput.add_member(:mergeable, Smithy::Schema::Shapes::ShapeRef.new(shape: IsMergeable, location_name: 'mergeable', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean value that indicates whether the code is mergeable by the specified merge option.</p>", "smithy.api#required" => {}}))
    GetMergeConflictsOutput.add_member(:destination_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'destinationCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>", "smithy.api#required" => {}}))
    GetMergeConflictsOutput.add_member(:source_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'sourceCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>", "smithy.api#required" => {}}))
    GetMergeConflictsOutput.add_member(:base_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'baseCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the merge base.</p>"}))
    GetMergeConflictsOutput.add_member(:conflict_metadata_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictMetadataList, location_name: 'conflictMetadataList', traits: {"smithy.api#documentation" => "<p>A list of metadata for any conflicting files. If the specified merge strategy is\n            FAST_FORWARD_MERGE, this list is always empty.</p>", "smithy.api#required" => {}}))
    GetMergeConflictsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"}))
    GetMergeConflictsOutput.type = Types::GetMergeConflictsOutput
    GetMergeOptionsInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the commits about which you want to get merge options.</p>", "smithy.api#required" => {}}))
    GetMergeOptionsInput.add_member(:source_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'sourceCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    GetMergeOptionsInput.add_member(:destination_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'destinationCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    GetMergeOptionsInput.add_member(:conflict_detail_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: 'conflictDetailLevel', traits: {"smithy.api#documentation" => "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,\n            which returns a not-mergeable result if the same file has differences in both branches.\n            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in\n            both branches has differences on the same line.</p>"}))
    GetMergeOptionsInput.add_member(:conflict_resolution_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: 'conflictResolutionStrategy', traits: {"smithy.api#documentation" => "<p>Specifies which branch to use when resolving conflicts, or whether to attempt\n            automatically merging two versions of a file. The default is NONE, which requires any\n            conflicts to be resolved manually before the merge operation is successful.</p>"}))
    GetMergeOptionsInput.type = Types::GetMergeOptionsInput
    GetMergeOptionsOutput.add_member(:merge_options, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeOptions, location_name: 'mergeOptions', traits: {"smithy.api#documentation" => "<p>The merge option or strategy used to merge the code.</p>", "smithy.api#required" => {}}))
    GetMergeOptionsOutput.add_member(:source_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'sourceCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>", "smithy.api#required" => {}}))
    GetMergeOptionsOutput.add_member(:destination_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'destinationCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>", "smithy.api#required" => {}}))
    GetMergeOptionsOutput.add_member(:base_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'baseCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the merge base.</p>", "smithy.api#required" => {}}))
    GetMergeOptionsOutput.type = Types::GetMergeOptionsOutput
    GetPullRequestApprovalStatesInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID for the pull request.</p>", "smithy.api#required" => {}}))
    GetPullRequestApprovalStatesInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The system-generated ID for the pull request revision.</p>", "smithy.api#required" => {}}))
    GetPullRequestApprovalStatesInput.type = Types::GetPullRequestApprovalStatesInput
    GetPullRequestApprovalStatesOutput.add_member(:approvals, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalList, location_name: 'approvals', traits: {"smithy.api#documentation" => "<p>Information about users who have approved the pull request.</p>"}))
    GetPullRequestApprovalStatesOutput.type = Types::GetPullRequestApprovalStatesOutput
    GetPullRequestInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>", "smithy.api#required" => {}}))
    GetPullRequestInput.type = Types::GetPullRequestInput
    GetPullRequestOutput.add_member(:pull_request, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequest, location_name: 'pullRequest', traits: {"smithy.api#documentation" => "<p>Information about the specified pull request.</p>", "smithy.api#required" => {}}))
    GetPullRequestOutput.type = Types::GetPullRequestOutput
    GetPullRequestOverrideStateInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The ID of the pull request for which you want to get information about whether approval rules have been set aside (overridden).</p>", "smithy.api#required" => {}}))
    GetPullRequestOverrideStateInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the revision for the pull request. To retrieve the most\n            recent revision ID, use\n            <a>GetPullRequest</a>.</p>", "smithy.api#required" => {}}))
    GetPullRequestOverrideStateInput.type = Types::GetPullRequestOverrideStateInput
    GetPullRequestOverrideStateOutput.add_member(:overridden, Smithy::Schema::Shapes::ShapeRef.new(shape: Overridden, location_name: 'overridden', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean value that indicates whether a pull request has had its rules set aside (TRUE) or whether all approval rules still apply (FALSE).</p>"}))
    GetPullRequestOverrideStateOutput.add_member(:overrider, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'overrider', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.</p>"}))
    GetPullRequestOverrideStateOutput.type = Types::GetPullRequestOverrideStateOutput
    GetRepositoryInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository to get information about.</p>", "smithy.api#required" => {}}))
    GetRepositoryInput.type = Types::GetRepositoryInput
    GetRepositoryOutput.add_member(:repository_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryMetadata, location_name: 'repositoryMetadata', traits: {"smithy.api#documentation" => "<p>Information about the repository.</p>"}))
    GetRepositoryOutput.type = Types::GetRepositoryOutput
    GetRepositoryTriggersInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository for which the trigger is configured.</p>", "smithy.api#required" => {}}))
    GetRepositoryTriggersInput.type = Types::GetRepositoryTriggersInput
    GetRepositoryTriggersOutput.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggersConfigurationId, location_name: 'configurationId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID for the trigger.</p>"}))
    GetRepositoryTriggersOutput.add_member(:triggers, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggersList, location_name: 'triggers', traits: {"smithy.api#documentation" => "<p>The JSON block of configuration information for each trigger.</p>"}))
    GetRepositoryTriggersOutput.type = Types::GetRepositoryTriggersOutput
    IdempotencyParameterMismatchException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    IdempotencyParameterMismatchException.type = Types::IdempotencyParameterMismatchException
    InvalidActorArnException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidActorArnException.type = Types::InvalidActorArnException
    InvalidApprovalRuleContentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidApprovalRuleContentException.type = Types::InvalidApprovalRuleContentException
    InvalidApprovalRuleNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidApprovalRuleNameException.type = Types::InvalidApprovalRuleNameException
    InvalidApprovalRuleTemplateContentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidApprovalRuleTemplateContentException.type = Types::InvalidApprovalRuleTemplateContentException
    InvalidApprovalRuleTemplateDescriptionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidApprovalRuleTemplateDescriptionException.type = Types::InvalidApprovalRuleTemplateDescriptionException
    InvalidApprovalRuleTemplateNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidApprovalRuleTemplateNameException.type = Types::InvalidApprovalRuleTemplateNameException
    InvalidApprovalStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidApprovalStateException.type = Types::InvalidApprovalStateException
    InvalidAuthorArnException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidAuthorArnException.type = Types::InvalidAuthorArnException
    InvalidBlobIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidBlobIdException.type = Types::InvalidBlobIdException
    InvalidBranchNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidBranchNameException.type = Types::InvalidBranchNameException
    InvalidClientRequestTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidClientRequestTokenException.type = Types::InvalidClientRequestTokenException
    InvalidCommentIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidCommentIdException.type = Types::InvalidCommentIdException
    InvalidCommitException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidCommitException.type = Types::InvalidCommitException
    InvalidCommitIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidCommitIdException.type = Types::InvalidCommitIdException
    InvalidConflictDetailLevelException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidConflictDetailLevelException.type = Types::InvalidConflictDetailLevelException
    InvalidConflictResolutionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidConflictResolutionException.type = Types::InvalidConflictResolutionException
    InvalidConflictResolutionStrategyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidConflictResolutionStrategyException.type = Types::InvalidConflictResolutionStrategyException
    InvalidContinuationTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidContinuationTokenException.type = Types::InvalidContinuationTokenException
    InvalidDeletionParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidDeletionParameterException.type = Types::InvalidDeletionParameterException
    InvalidDescriptionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidDescriptionException.type = Types::InvalidDescriptionException
    InvalidDestinationCommitSpecifierException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidDestinationCommitSpecifierException.type = Types::InvalidDestinationCommitSpecifierException
    InvalidEmailException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidEmailException.type = Types::InvalidEmailException
    InvalidFileLocationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidFileLocationException.type = Types::InvalidFileLocationException
    InvalidFileModeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidFileModeException.type = Types::InvalidFileModeException
    InvalidFilePositionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidFilePositionException.type = Types::InvalidFilePositionException
    InvalidMaxConflictFilesException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidMaxConflictFilesException.type = Types::InvalidMaxConflictFilesException
    InvalidMaxMergeHunksException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidMaxMergeHunksException.type = Types::InvalidMaxMergeHunksException
    InvalidMaxResultsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidMaxResultsException.type = Types::InvalidMaxResultsException
    InvalidMergeOptionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidMergeOptionException.type = Types::InvalidMergeOptionException
    InvalidOrderException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidOrderException.type = Types::InvalidOrderException
    InvalidOverrideStatusException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidOverrideStatusException.type = Types::InvalidOverrideStatusException
    InvalidParentCommitIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidParentCommitIdException.type = Types::InvalidParentCommitIdException
    InvalidPathException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidPathException.type = Types::InvalidPathException
    InvalidPullRequestEventTypeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidPullRequestEventTypeException.type = Types::InvalidPullRequestEventTypeException
    InvalidPullRequestIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidPullRequestIdException.type = Types::InvalidPullRequestIdException
    InvalidPullRequestStatusException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidPullRequestStatusException.type = Types::InvalidPullRequestStatusException
    InvalidPullRequestStatusUpdateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidPullRequestStatusUpdateException.type = Types::InvalidPullRequestStatusUpdateException
    InvalidReactionUserArnException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidReactionUserArnException.type = Types::InvalidReactionUserArnException
    InvalidReactionValueException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidReactionValueException.type = Types::InvalidReactionValueException
    InvalidReferenceNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidReferenceNameException.type = Types::InvalidReferenceNameException
    InvalidRelativeFileVersionEnumException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidRelativeFileVersionEnumException.type = Types::InvalidRelativeFileVersionEnumException
    InvalidReplacementContentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidReplacementContentException.type = Types::InvalidReplacementContentException
    InvalidReplacementTypeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidReplacementTypeException.type = Types::InvalidReplacementTypeException
    InvalidRepositoryDescriptionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidRepositoryDescriptionException.type = Types::InvalidRepositoryDescriptionException
    InvalidRepositoryNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidRepositoryNameException.type = Types::InvalidRepositoryNameException
    InvalidRepositoryTriggerBranchNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidRepositoryTriggerBranchNameException.type = Types::InvalidRepositoryTriggerBranchNameException
    InvalidRepositoryTriggerCustomDataException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidRepositoryTriggerCustomDataException.type = Types::InvalidRepositoryTriggerCustomDataException
    InvalidRepositoryTriggerDestinationArnException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidRepositoryTriggerDestinationArnException.type = Types::InvalidRepositoryTriggerDestinationArnException
    InvalidRepositoryTriggerEventsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidRepositoryTriggerEventsException.type = Types::InvalidRepositoryTriggerEventsException
    InvalidRepositoryTriggerNameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidRepositoryTriggerNameException.type = Types::InvalidRepositoryTriggerNameException
    InvalidRepositoryTriggerRegionException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidRepositoryTriggerRegionException.type = Types::InvalidRepositoryTriggerRegionException
    InvalidResourceArnException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidResourceArnException.type = Types::InvalidResourceArnException
    InvalidRevisionIdException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidRevisionIdException.type = Types::InvalidRevisionIdException
    InvalidRuleContentSha256Exception.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidRuleContentSha256Exception.type = Types::InvalidRuleContentSha256Exception
    InvalidSortByException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidSortByException.type = Types::InvalidSortByException
    InvalidSourceCommitSpecifierException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidSourceCommitSpecifierException.type = Types::InvalidSourceCommitSpecifierException
    InvalidSystemTagUsageException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidSystemTagUsageException.type = Types::InvalidSystemTagUsageException
    InvalidTagKeysListException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidTagKeysListException.type = Types::InvalidTagKeysListException
    InvalidTagsMapException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidTagsMapException.type = Types::InvalidTagsMapException
    InvalidTargetBranchException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidTargetBranchException.type = Types::InvalidTargetBranchException
    InvalidTargetException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidTargetException.type = Types::InvalidTargetException
    InvalidTargetsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidTargetsException.type = Types::InvalidTargetsException
    InvalidTitleException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    InvalidTitleException.type = Types::InvalidTitleException
    IsBinaryFile.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: CapitalBoolean, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The binary or non-binary status of file in the source of a merge or pull request.</p>"}))
    IsBinaryFile.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: CapitalBoolean, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The binary or non-binary status of a file in the destination of a merge or pull request.</p>"}))
    IsBinaryFile.add_member(:base, Smithy::Schema::Shapes::ShapeRef.new(shape: CapitalBoolean, location_name: 'base', traits: {"smithy.api#documentation" => "<p>The binary or non-binary status of a file in the base of a merge or pull request.</p>"}))
    IsBinaryFile.type = Types::IsBinaryFile
    ListApprovalRuleTemplatesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the\n            results.</p>"}))
    ListApprovalRuleTemplatesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"}))
    ListApprovalRuleTemplatesInput.type = Types::ListApprovalRuleTemplatesInput
    ListApprovalRuleTemplatesOutput.add_member(:approval_rule_template_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateNameList, location_name: 'approvalRuleTemplateNames', traits: {"smithy.api#documentation" => "<p>The names of all the approval rule templates found in the Amazon Web Services Region for your Amazon Web Services account.</p>"}))
    ListApprovalRuleTemplatesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that allows the operation to batch the next results of the operation.</p>"}))
    ListApprovalRuleTemplatesOutput.type = Types::ListApprovalRuleTemplatesOutput
    ListAssociatedApprovalRuleTemplatesForRepositoryInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository for which you want to list all associated approval rule templates.</p>", "smithy.api#required" => {}}))
    ListAssociatedApprovalRuleTemplatesForRepositoryInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the\n            results.</p>"}))
    ListAssociatedApprovalRuleTemplatesForRepositoryInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"}))
    ListAssociatedApprovalRuleTemplatesForRepositoryInput.type = Types::ListAssociatedApprovalRuleTemplatesForRepositoryInput
    ListAssociatedApprovalRuleTemplatesForRepositoryOutput.add_member(:approval_rule_template_names, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateNameList, location_name: 'approvalRuleTemplateNames', traits: {"smithy.api#documentation" => "<p>The names of all approval rule templates associated with the repository.</p>"}))
    ListAssociatedApprovalRuleTemplatesForRepositoryOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that allows the operation to batch the next results of the operation.</p>"}))
    ListAssociatedApprovalRuleTemplatesForRepositoryOutput.type = Types::ListAssociatedApprovalRuleTemplatesForRepositoryOutput
    ListBranchesInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the branches.</p>", "smithy.api#required" => {}}))
    ListBranchesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that allows the operation to batch the results.</p>"}))
    ListBranchesInput.type = Types::ListBranchesInput
    ListBranchesOutput.add_member(:branches, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameList, location_name: 'branches', traits: {"smithy.api#documentation" => "<p>The list of branch names.</p>"}))
    ListBranchesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that returns the batch of the results.</p>"}))
    ListBranchesOutput.type = Types::ListBranchesOutput
    ListFileCommitHistoryRequest.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the file.</p>", "smithy.api#required" => {}}))
    ListFileCommitHistoryRequest.add_member(:commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'commitSpecifier', traits: {"smithy.api#documentation" => "<p>The fully quaified reference that identifies the commit that contains the file. For\n            example, you can specify a full commit ID, a tag, a branch name, or a reference such as\n            <code>refs/heads/main</code>. If none is provided, the head commit is used.</p>"}))
    ListFileCommitHistoryRequest.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The full path of the file whose history you want to retrieve, including the name of the file.</p>", "smithy.api#required" => {}}))
    ListFileCommitHistoryRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Limit, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"}))
    ListFileCommitHistoryRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that allows the operation to batch the results.</p>"}))
    ListFileCommitHistoryRequest.type = Types::ListFileCommitHistoryRequest
    ListFileCommitHistoryResponse.add_member(:revision_dag, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionDag, location_name: 'revisionDag', traits: {"smithy.api#documentation" => "<p>An array of FileVersion objects that form a directed acyclic graph (DAG) of the changes to the file made by the commits that changed the file.</p>", "smithy.api#required" => {}}))
    ListFileCommitHistoryResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that can be used to return the next batch of results.</p>"}))
    ListFileCommitHistoryResponse.type = Types::ListFileCommitHistoryResponse
    ListPullRequestsInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository for which you want to list pull requests.</p>", "smithy.api#required" => {}}))
    ListPullRequestsInput.add_member(:author_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'authorArn', traits: {"smithy.api#documentation" => "<p>Optional. The Amazon Resource Name (ARN) of the user who created the pull request. If used, this filters the results \n        to pull requests created by that user.</p>"}))
    ListPullRequestsInput.add_member(:pull_request_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestStatusEnum, location_name: 'pullRequestStatus', traits: {"smithy.api#documentation" => "<p>Optional. The status of the pull request. If used, this refines the results to the pull requests that match the specified status.</p>"}))
    ListPullRequestsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the\n            results.</p>"}))
    ListPullRequestsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"}))
    ListPullRequestsInput.type = Types::ListPullRequestsInput
    ListPullRequestsOutput.add_member(:pull_request_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdList, location_name: 'pullRequestIds', traits: {"smithy.api#documentation" => "<p>The system-generated IDs of the pull requests.</p>", "smithy.api#required" => {}}))
    ListPullRequestsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that allows the operation to batch the next results of the operation.</p>"}))
    ListPullRequestsOutput.type = Types::ListPullRequestsOutput
    ListRepositoriesForApprovalRuleTemplateInput.add_member(:approval_rule_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateName, location_name: 'approvalRuleTemplateName', traits: {"smithy.api#documentation" => "<p>The name of the approval rule template for which you want to list repositories that are associated with that template.</p>", "smithy.api#required" => {}}))
    ListRepositoriesForApprovalRuleTemplateInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the\n            results.</p>"}))
    ListRepositoriesForApprovalRuleTemplateInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"}))
    ListRepositoriesForApprovalRuleTemplateInput.type = Types::ListRepositoriesForApprovalRuleTemplateInput
    ListRepositoriesForApprovalRuleTemplateOutput.add_member(:repository_names, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameList, location_name: 'repositoryNames', traits: {"smithy.api#documentation" => "<p>A list of repository names that are associated with the specified approval rule template.</p>"}))
    ListRepositoriesForApprovalRuleTemplateOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that allows the operation to batch the next results of the operation.</p>"}))
    ListRepositoriesForApprovalRuleTemplateOutput.type = Types::ListRepositoriesForApprovalRuleTemplateOutput
    ListRepositoriesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that allows the operation to batch the results of the operation. \n            Batch sizes are 1,000 for list repository operations. When the client sends the token back to CodeCommit,\n            another page of 1,000 records is retrieved.</p>"}))
    ListRepositoriesInput.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: SortByEnum, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The criteria used to sort the results of a list repositories operation.</p>"}))
    ListRepositoriesInput.add_member(:order, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderEnum, location_name: 'order', traits: {"smithy.api#documentation" => "<p>The order in which to sort the results of a list repositories operation.</p>"}))
    ListRepositoriesInput.type = Types::ListRepositoriesInput
    ListRepositoriesOutput.add_member(:repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameIdPairList, location_name: 'repositories', traits: {"smithy.api#documentation" => "<p>Lists the repositories called by the list repositories operation.</p>"}))
    ListRepositoriesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that allows the operation to batch the results of the operation. \n            Batch sizes are 1,000 for list repository operations. When the client sends the token back to CodeCommit, \n            another page of 1,000 records is retrieved.</p>"}))
    ListRepositoriesOutput.type = Types::ListRepositoriesOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource for which you want to get information\n            about tags, if any.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that, when provided in a request, returns the next batch of the\n            results.</p>"}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tag key and value pairs associated with the specified resource.</p>"}))
    ListTagsForResourceOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>An enumeration token that allows the operation to batch the next results of the operation.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    Location.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The name of the file being compared, including its extension and subdirectory, if any.</p>"}))
    Location.add_member(:file_position, Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'filePosition', traits: {"smithy.api#documentation" => "<p>The position of a change in a compared file, in line number format.</p>"}))
    Location.add_member(:relative_file_version, Smithy::Schema::Shapes::ShapeRef.new(shape: RelativeFileVersionEnum, location_name: 'relativeFileVersion', traits: {"smithy.api#documentation" => "<p>In a comparison of commits or a pull request, whether the change is in the before or\n            after of that comparison.</p>"}))
    Location.type = Types::Location
    ManualMergeRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ManualMergeRequiredException.type = Types::ManualMergeRequiredException
    MaximumBranchesExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    MaximumBranchesExceededException.type = Types::MaximumBranchesExceededException
    MaximumConflictResolutionEntriesExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    MaximumConflictResolutionEntriesExceededException.type = Types::MaximumConflictResolutionEntriesExceededException
    MaximumFileContentToLoadExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    MaximumFileContentToLoadExceededException.type = Types::MaximumFileContentToLoadExceededException
    MaximumFileEntriesExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    MaximumFileEntriesExceededException.type = Types::MaximumFileEntriesExceededException
    MaximumItemsToCompareExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    MaximumItemsToCompareExceededException.type = Types::MaximumItemsToCompareExceededException
    MaximumNumberOfApprovalsExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    MaximumNumberOfApprovalsExceededException.type = Types::MaximumNumberOfApprovalsExceededException
    MaximumOpenPullRequestsExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    MaximumOpenPullRequestsExceededException.type = Types::MaximumOpenPullRequestsExceededException
    MaximumRepositoryNamesExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    MaximumRepositoryNamesExceededException.type = Types::MaximumRepositoryNamesExceededException
    MaximumRepositoryTriggersExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    MaximumRepositoryTriggersExceededException.type = Types::MaximumRepositoryTriggersExceededException
    MaximumRuleTemplatesAssociatedWithRepositoryException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    MaximumRuleTemplatesAssociatedWithRepositoryException.type = Types::MaximumRuleTemplatesAssociatedWithRepositoryException
    MergeBranchesByFastForwardInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where you want to merge two branches.</p>", "smithy.api#required" => {}}))
    MergeBranchesByFastForwardInput.add_member(:source_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'sourceCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    MergeBranchesByFastForwardInput.add_member(:destination_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'destinationCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    MergeBranchesByFastForwardInput.add_member(:target_branch, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'targetBranch', traits: {"smithy.api#documentation" => "<p>The branch where the merge is applied.</p>"}))
    MergeBranchesByFastForwardInput.type = Types::MergeBranchesByFastForwardInput
    MergeBranchesByFastForwardOutput.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the merge in the destination or target branch.</p>"}))
    MergeBranchesByFastForwardOutput.add_member(:tree_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'treeId', traits: {"smithy.api#documentation" => "<p>The tree ID of the merge in the destination or target branch.</p>"}))
    MergeBranchesByFastForwardOutput.type = Types::MergeBranchesByFastForwardOutput
    MergeBranchesBySquashInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where you want to merge two branches.</p>", "smithy.api#required" => {}}))
    MergeBranchesBySquashInput.add_member(:source_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'sourceCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    MergeBranchesBySquashInput.add_member(:destination_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'destinationCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    MergeBranchesBySquashInput.add_member(:target_branch, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'targetBranch', traits: {"smithy.api#documentation" => "<p>The branch where the merge is applied. </p>"}))
    MergeBranchesBySquashInput.add_member(:conflict_detail_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: 'conflictDetailLevel', traits: {"smithy.api#documentation" => "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,\n            which returns a not-mergeable result if the same file has differences in both branches.\n            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in\n            both branches has differences on the same line.</p>"}))
    MergeBranchesBySquashInput.add_member(:conflict_resolution_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: 'conflictResolutionStrategy', traits: {"smithy.api#documentation" => "<p>Specifies which branch to use when resolving conflicts, or whether to attempt\n            automatically merging two versions of a file. The default is NONE, which requires any\n            conflicts to be resolved manually before the merge operation is successful.</p>"}))
    MergeBranchesBySquashInput.add_member(:author_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'authorName', traits: {"smithy.api#documentation" => "<p>The name of the author who created the commit. This information is used as both the\n            author and committer for the commit.</p>"}))
    MergeBranchesBySquashInput.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'email', traits: {"smithy.api#documentation" => "<p>The email address of the person merging the branches. This information is used in the\n            commit information for the merge.</p>"}))
    MergeBranchesBySquashInput.add_member(:commit_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'commitMessage', traits: {"smithy.api#documentation" => "<p>The commit message for the merge.</p>"}))
    MergeBranchesBySquashInput.add_member(:keep_empty_folders, Smithy::Schema::Shapes::ShapeRef.new(shape: KeepEmptyFolders, location_name: 'keepEmptyFolders', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If the commit contains deletions, whether to keep a folder or folder structure if the\n            changes leave the folders empty. If this is specified as true, a .gitkeep file is\n            created for empty folders. The default is false.</p>"}))
    MergeBranchesBySquashInput.add_member(:conflict_resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictResolution, location_name: 'conflictResolution', traits: {"smithy.api#documentation" => "<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when\n            resolving conflicts during a merge.</p>"}))
    MergeBranchesBySquashInput.type = Types::MergeBranchesBySquashInput
    MergeBranchesBySquashOutput.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the merge in the destination or target branch.</p>"}))
    MergeBranchesBySquashOutput.add_member(:tree_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'treeId', traits: {"smithy.api#documentation" => "<p>The tree ID of the merge in the destination or target branch.</p>"}))
    MergeBranchesBySquashOutput.type = Types::MergeBranchesBySquashOutput
    MergeBranchesByThreeWayInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where you want to merge two branches.</p>", "smithy.api#required" => {}}))
    MergeBranchesByThreeWayInput.add_member(:source_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'sourceCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    MergeBranchesByThreeWayInput.add_member(:destination_commit_specifier, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitName, location_name: 'destinationCommitSpecifier', traits: {"smithy.api#documentation" => "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit\n            (for example, a branch name or a full commit ID).</p>", "smithy.api#required" => {}}))
    MergeBranchesByThreeWayInput.add_member(:target_branch, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'targetBranch', traits: {"smithy.api#documentation" => "<p>The branch where the merge is applied. </p>"}))
    MergeBranchesByThreeWayInput.add_member(:conflict_detail_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: 'conflictDetailLevel', traits: {"smithy.api#documentation" => "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,\n            which returns a not-mergeable result if the same file has differences in both branches.\n            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in\n            both branches has differences on the same line.</p>"}))
    MergeBranchesByThreeWayInput.add_member(:conflict_resolution_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: 'conflictResolutionStrategy', traits: {"smithy.api#documentation" => "<p>Specifies which branch to use when resolving conflicts, or whether to attempt\n            automatically merging two versions of a file. The default is NONE, which requires any\n            conflicts to be resolved manually before the merge operation is successful.</p>"}))
    MergeBranchesByThreeWayInput.add_member(:author_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'authorName', traits: {"smithy.api#documentation" => "<p>The name of the author who created the commit. This information is used as both the\n            author and committer for the commit.</p>"}))
    MergeBranchesByThreeWayInput.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'email', traits: {"smithy.api#documentation" => "<p>The email address of the person merging the branches. This information is used in the\n            commit information for the merge.</p>"}))
    MergeBranchesByThreeWayInput.add_member(:commit_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'commitMessage', traits: {"smithy.api#documentation" => "<p>The commit message to include in the commit information for the merge.</p>"}))
    MergeBranchesByThreeWayInput.add_member(:keep_empty_folders, Smithy::Schema::Shapes::ShapeRef.new(shape: KeepEmptyFolders, location_name: 'keepEmptyFolders', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If the commit contains deletions, whether to keep a folder or folder structure if the\n            changes leave the folders empty. If true, a .gitkeep file is created for empty folders.\n            The default is false.</p>"}))
    MergeBranchesByThreeWayInput.add_member(:conflict_resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictResolution, location_name: 'conflictResolution', traits: {"smithy.api#documentation" => "<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when\n            resolving conflicts during a merge.</p>"}))
    MergeBranchesByThreeWayInput.type = Types::MergeBranchesByThreeWayInput
    MergeBranchesByThreeWayOutput.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the merge in the destination or target branch.</p>"}))
    MergeBranchesByThreeWayOutput.add_member(:tree_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'treeId', traits: {"smithy.api#documentation" => "<p>The tree ID of the merge in the destination or target branch.</p>"}))
    MergeBranchesByThreeWayOutput.type = Types::MergeBranchesByThreeWayOutput
    MergeHunk.add_member(:is_conflict, Smithy::Schema::Shapes::ShapeRef.new(shape: IsHunkConflict, location_name: 'isConflict', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean value indicating whether a combination of hunks contains a conflict.\n            Conflicts occur when the same file or the same lines in a file were modified in both the\n            source and destination of a merge or pull request. Valid values include true, false, and\n            null. True when the hunk represents a conflict and one or more files contains a line\n            conflict. File mode conflicts in a merge do not set this to true.</p>"}))
    MergeHunk.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeHunkDetail, location_name: 'source', traits: {"smithy.api#documentation" => "<p>Information about the merge hunk in the source of a merge or pull request.</p>"}))
    MergeHunk.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeHunkDetail, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>Information about the merge hunk in the destination of a merge or pull request.</p>"}))
    MergeHunk.add_member(:base, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeHunkDetail, location_name: 'base', traits: {"smithy.api#documentation" => "<p>Information about the merge hunk in the base of a merge or pull request.</p>"}))
    MergeHunk.type = Types::MergeHunk
    MergeHunkDetail.add_member(:start_line, Smithy::Schema::Shapes::ShapeRef.new(shape: LineNumber, location_name: 'startLine', traits: {"smithy.api#documentation" => "<p>The start position of the hunk in the merge result.</p>"}))
    MergeHunkDetail.add_member(:end_line, Smithy::Schema::Shapes::ShapeRef.new(shape: LineNumber, location_name: 'endLine', traits: {"smithy.api#documentation" => "<p>The end position of the hunk in the merge result.</p>"}))
    MergeHunkDetail.add_member(:hunk_content, Smithy::Schema::Shapes::ShapeRef.new(shape: HunkContent, location_name: 'hunkContent', traits: {"smithy.api#documentation" => "<p>The base-64 encoded content of the hunk merged region that might contain a\n            conflict.</p>"}))
    MergeHunkDetail.type = Types::MergeHunkDetail
    MergeHunks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MergeHunk)
    MergeMetadata.add_member(:is_merged, Smithy::Schema::Shapes::ShapeRef.new(shape: IsMerged, location_name: 'isMerged', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A Boolean value indicating whether the merge has been made.</p>"}))
    MergeMetadata.add_member(:merged_by, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'mergedBy', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who merged the branches.</p>"}))
    MergeMetadata.add_member(:merge_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'mergeCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID for the merge commit, if any.</p>"}))
    MergeMetadata.add_member(:merge_option, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeOptionTypeEnum, location_name: 'mergeOption', traits: {"smithy.api#documentation" => "<p>The merge strategy used in the merge.</p>"}))
    MergeMetadata.type = Types::MergeMetadata
    MergeOperations.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeTypeEnum, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The operation (add, modify, or delete) on a file in the source of a merge or pull\n            request.</p>"}))
    MergeOperations.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: ChangeTypeEnum, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The operation on a file in the destination of a merge or pull request.</p>"}))
    MergeOperations.type = Types::MergeOperations
    MergeOptionRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    MergeOptionRequiredException.type = Types::MergeOptionRequiredException
    MergeOptionTypeEnum.add_member(:fast_forward_merge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAST_FORWARD_MERGE', traits: {"smithy.api#enumValue" => "FAST_FORWARD_MERGE"}))
    MergeOptionTypeEnum.add_member(:squash_merge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQUASH_MERGE', traits: {"smithy.api#enumValue" => "SQUASH_MERGE"}))
    MergeOptionTypeEnum.add_member(:three_way_merge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THREE_WAY_MERGE', traits: {"smithy.api#enumValue" => "THREE_WAY_MERGE"}))
    MergeOptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MergeOptionTypeEnum)
    MergePullRequestByFastForwardInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>", "smithy.api#required" => {}}))
    MergePullRequestByFastForwardInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where the pull request was created.</p>", "smithy.api#required" => {}}))
    MergePullRequestByFastForwardInput.add_member(:source_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'sourceCommitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an \n        exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>"}))
    MergePullRequestByFastForwardInput.type = Types::MergePullRequestByFastForwardInput
    MergePullRequestByFastForwardOutput.add_member(:pull_request, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequest, location_name: 'pullRequest', traits: {"smithy.api#documentation" => "<p>Information about the specified pull request, including the merge.</p>"}))
    MergePullRequestByFastForwardOutput.type = Types::MergePullRequestByFastForwardOutput
    MergePullRequestBySquashInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>", "smithy.api#required" => {}}))
    MergePullRequestBySquashInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where the pull request was created.</p>", "smithy.api#required" => {}}))
    MergePullRequestBySquashInput.add_member(:source_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'sourceCommitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an \n            exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>"}))
    MergePullRequestBySquashInput.add_member(:conflict_detail_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: 'conflictDetailLevel', traits: {"smithy.api#documentation" => "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,\n            which returns a not-mergeable result if the same file has differences in both branches.\n            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in\n            both branches has differences on the same line.</p>"}))
    MergePullRequestBySquashInput.add_member(:conflict_resolution_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: 'conflictResolutionStrategy', traits: {"smithy.api#documentation" => "<p>Specifies which branch to use when resolving conflicts, or whether to attempt\n            automatically merging two versions of a file. The default is NONE, which requires any\n            conflicts to be resolved manually before the merge operation is successful.</p>"}))
    MergePullRequestBySquashInput.add_member(:commit_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'commitMessage', traits: {"smithy.api#documentation" => "<p>The commit message to include in the commit information for the merge.</p>"}))
    MergePullRequestBySquashInput.add_member(:author_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'authorName', traits: {"smithy.api#documentation" => "<p>The name of the author who created the commit. This information is used as both the\n            author and committer for the commit.</p>"}))
    MergePullRequestBySquashInput.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'email', traits: {"smithy.api#documentation" => "<p>The email address of the person merging the branches. This information is used in the\n            commit information for the merge.</p>"}))
    MergePullRequestBySquashInput.add_member(:keep_empty_folders, Smithy::Schema::Shapes::ShapeRef.new(shape: KeepEmptyFolders, location_name: 'keepEmptyFolders', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If the commit contains deletions, whether to keep a folder or folder structure if the\n            changes leave the folders empty. If true, a .gitkeep file is created for empty folders.\n            The default is false.</p>"}))
    MergePullRequestBySquashInput.add_member(:conflict_resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictResolution, location_name: 'conflictResolution', traits: {"smithy.api#documentation" => "<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when\n            resolving conflicts during a merge.</p>"}))
    MergePullRequestBySquashInput.type = Types::MergePullRequestBySquashInput
    MergePullRequestBySquashOutput.add_member(:pull_request, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequest, location_name: 'pullRequest'))
    MergePullRequestBySquashOutput.type = Types::MergePullRequestBySquashOutput
    MergePullRequestByThreeWayInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>", "smithy.api#required" => {}}))
    MergePullRequestByThreeWayInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where the pull request was created.</p>", "smithy.api#required" => {}}))
    MergePullRequestByThreeWayInput.add_member(:source_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'sourceCommitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an \n            exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>"}))
    MergePullRequestByThreeWayInput.add_member(:conflict_detail_level, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: 'conflictDetailLevel', traits: {"smithy.api#documentation" => "<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,\n            which returns a not-mergeable result if the same file has differences in both branches.\n            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in\n            both branches has differences on the same line.</p>"}))
    MergePullRequestByThreeWayInput.add_member(:conflict_resolution_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: 'conflictResolutionStrategy', traits: {"smithy.api#documentation" => "<p>Specifies which branch to use when resolving conflicts, or whether to attempt\n            automatically merging two versions of a file. The default is NONE, which requires any\n            conflicts to be resolved manually before the merge operation is successful.</p>"}))
    MergePullRequestByThreeWayInput.add_member(:commit_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'commitMessage', traits: {"smithy.api#documentation" => "<p>The commit message to include in the commit information for the merge.</p>"}))
    MergePullRequestByThreeWayInput.add_member(:author_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'authorName', traits: {"smithy.api#documentation" => "<p>The name of the author who created the commit. This information is used as both the\n            author and committer for the commit.</p>"}))
    MergePullRequestByThreeWayInput.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'email', traits: {"smithy.api#documentation" => "<p>The email address of the person merging the branches. This information is used in the\n            commit information for the merge.</p>"}))
    MergePullRequestByThreeWayInput.add_member(:keep_empty_folders, Smithy::Schema::Shapes::ShapeRef.new(shape: KeepEmptyFolders, location_name: 'keepEmptyFolders', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If the commit contains deletions, whether to keep a folder or folder structure if the\n            changes leave the folders empty. If true, a .gitkeep file is created for empty folders.\n            The default is false.</p>"}))
    MergePullRequestByThreeWayInput.add_member(:conflict_resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictResolution, location_name: 'conflictResolution', traits: {"smithy.api#documentation" => "<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when\n            resolving conflicts during a merge.</p>"}))
    MergePullRequestByThreeWayInput.type = Types::MergePullRequestByThreeWayInput
    MergePullRequestByThreeWayOutput.add_member(:pull_request, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequest, location_name: 'pullRequest'))
    MergePullRequestByThreeWayOutput.type = Types::MergePullRequestByThreeWayOutput
    MultipleConflictResolutionEntriesException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    MultipleConflictResolutionEntriesException.type = Types::MultipleConflictResolutionEntriesException
    MultipleRepositoriesInPullRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    MultipleRepositoriesInPullRequestException.type = Types::MultipleRepositoriesInPullRequestException
    NameLengthExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    NameLengthExceededException.type = Types::NameLengthExceededException
    NoChangeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    NoChangeException.type = Types::NoChangeException
    NumberOfRuleTemplatesExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    NumberOfRuleTemplatesExceededException.type = Types::NumberOfRuleTemplatesExceededException
    NumberOfRulesExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    NumberOfRulesExceededException.type = Types::NumberOfRulesExceededException
    ObjectTypeEnum.add_member(:file, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE', traits: {"smithy.api#enumValue" => "FILE"}))
    ObjectTypeEnum.add_member(:directory, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY', traits: {"smithy.api#enumValue" => "DIRECTORY"}))
    ObjectTypeEnum.add_member(:git_link, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GIT_LINK', traits: {"smithy.api#enumValue" => "GIT_LINK"}))
    ObjectTypeEnum.add_member(:symbolic_link, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYMBOLIC_LINK', traits: {"smithy.api#enumValue" => "SYMBOLIC_LINK"}))
    ObjectTypes.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectTypeEnum, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The type of the object in the source branch.</p>"}))
    ObjectTypes.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectTypeEnum, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The type of the object in the destination branch.</p>"}))
    ObjectTypes.add_member(:base, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectTypeEnum, location_name: 'base', traits: {"smithy.api#documentation" => "<p>The type of the object in the base commit of the merge.</p>"}))
    ObjectTypes.type = Types::ObjectTypes
    OperationNotAllowedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    OperationNotAllowedException.type = Types::OperationNotAllowedException
    OrderEnum.add_member(:ascending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCENDING', traits: {"smithy.api#enumValue" => "ascending"}))
    OrderEnum.add_member(:descending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCENDING', traits: {"smithy.api#enumValue" => "descending"}))
    OriginApprovalRuleTemplate.add_member(:approval_rule_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateId, location_name: 'approvalRuleTemplateId', traits: {"smithy.api#documentation" => "<p>The ID of the template that created the approval rule.</p>"}))
    OriginApprovalRuleTemplate.add_member(:approval_rule_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateName, location_name: 'approvalRuleTemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template that created the approval rule.</p>"}))
    OriginApprovalRuleTemplate.type = Types::OriginApprovalRuleTemplate
    OverrideAlreadySetException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    OverrideAlreadySetException.type = Types::OverrideAlreadySetException
    OverridePullRequestApprovalRulesInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request for which you want to override all\n            approval rule requirements. To get this information, use\n            <a>GetPullRequest</a>.</p>", "smithy.api#required" => {}}))
    OverridePullRequestApprovalRulesInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the most recent revision of the pull request. You cannot override approval rules for anything but the most recent revision of a pull request.\n            To get the revision ID, use GetPullRequest.</p>", "smithy.api#required" => {}}))
    OverridePullRequestApprovalRulesInput.add_member(:override_status, Smithy::Schema::Shapes::ShapeRef.new(shape: OverrideStatus, location_name: 'overrideStatus', traits: {"smithy.api#documentation" => "<p>Whether you want to set aside approval rule requirements for the pull request (OVERRIDE) or revoke a previous override and apply \n        approval rule requirements (REVOKE). REVOKE status is not stored.</p>", "smithy.api#required" => {}}))
    OverridePullRequestApprovalRulesInput.type = Types::OverridePullRequestApprovalRulesInput
    OverrideStatus.add_member(:override, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OVERRIDE', traits: {"smithy.api#enumValue" => "OVERRIDE"}))
    OverrideStatus.add_member(:revoke, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REVOKE', traits: {"smithy.api#enumValue" => "REVOKE"}))
    OverrideStatusRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    OverrideStatusRequiredException.type = Types::OverrideStatusRequiredException
    ParentCommitDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ParentCommitDoesNotExistException.type = Types::ParentCommitDoesNotExistException
    ParentCommitIdOutdatedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ParentCommitIdOutdatedException.type = Types::ParentCommitIdOutdatedException
    ParentCommitIdRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ParentCommitIdRequiredException.type = Types::ParentCommitIdRequiredException
    ParentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId)
    PathDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    PathDoesNotExistException.type = Types::PathDoesNotExistException
    PathRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    PathRequiredException.type = Types::PathRequiredException
    PostCommentForComparedCommitInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where you want to post a comment on the comparison between commits.</p>", "smithy.api#required" => {}}))
    PostCommentForComparedCommitInput.add_member(:before_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'beforeCommitId', traits: {"smithy.api#documentation" => "<p>To establish the directionality of the comparison, the full commit ID of the before\n            commit. Required for commenting on any commit unless that commit is the initial\n            commit.</p>"}))
    PostCommentForComparedCommitInput.add_member(:after_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'afterCommitId', traits: {"smithy.api#documentation" => "<p>To establish the directionality of the comparison, the full commit ID of the after\n            commit.</p>", "smithy.api#required" => {}}))
    PostCommentForComparedCommitInput.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The location of the comparison where you want to comment.</p>"}))
    PostCommentForComparedCommitInput.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of the comment you want to make.</p>", "smithy.api#required" => {}}))
    PostCommentForComparedCommitInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique, client-generated idempotency token that, when provided in a request, ensures\n            the request cannot be repeated with a changed parameter. If a request is received with\n            the same parameters and a token is included, the request returns information about the\n            initial request that used that token.</p>", "smithy.api#idempotencyToken" => {}}))
    PostCommentForComparedCommitInput.type = Types::PostCommentForComparedCommitInput
    PostCommentForComparedCommitOutput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where you posted a comment on the comparison between commits.</p>"}))
    PostCommentForComparedCommitOutput.add_member(:before_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'beforeCommitId', traits: {"smithy.api#documentation" => "<p>In the directionality you established, the full commit ID of the before commit.</p>"}))
    PostCommentForComparedCommitOutput.add_member(:after_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'afterCommitId', traits: {"smithy.api#documentation" => "<p>In the directionality you established, the full commit ID of the after commit.</p>"}))
    PostCommentForComparedCommitOutput.add_member(:before_blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'beforeBlobId', traits: {"smithy.api#documentation" => "<p>In the directionality you established, the blob ID of the before blob.</p>"}))
    PostCommentForComparedCommitOutput.add_member(:after_blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'afterBlobId', traits: {"smithy.api#documentation" => "<p>In the directionality you established, the blob ID of the after blob.</p>"}))
    PostCommentForComparedCommitOutput.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The location of the comment in the comparison between the two commits.</p>"}))
    PostCommentForComparedCommitOutput.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Comment, location_name: 'comment', traits: {"smithy.api#documentation" => "<p>The content of the comment you posted.</p>"}))
    PostCommentForComparedCommitOutput.type = Types::PostCommentForComparedCommitOutput
    PostCommentForPullRequestInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>", "smithy.api#required" => {}}))
    PostCommentForPullRequestInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where you want to post a comment on a pull request.</p>", "smithy.api#required" => {}}))
    PostCommentForPullRequestInput.add_member(:before_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'beforeCommitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.</p>", "smithy.api#required" => {}}))
    PostCommentForPullRequestInput.add_member(:after_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'afterCommitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the commit in the source branch that is the current tip of the branch for the pull request when you post the comment.</p>", "smithy.api#required" => {}}))
    PostCommentForPullRequestInput.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The location of the change where you want to post your comment. If no location is\n            provided, the comment is posted as a general comment on the pull request difference\n            between the before commit ID and the after commit ID.</p>"}))
    PostCommentForPullRequestInput.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The content of your comment on the change.</p>", "smithy.api#required" => {}}))
    PostCommentForPullRequestInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique, client-generated idempotency token that, when provided in a request, ensures\n            the request cannot be repeated with a changed parameter. If a request is received with\n            the same parameters and a token is included, the request returns information about the\n            initial request that used that token.</p>", "smithy.api#idempotencyToken" => {}}))
    PostCommentForPullRequestInput.type = Types::PostCommentForPullRequestInput
    PostCommentForPullRequestOutput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where you posted a comment on a pull request.</p>"}))
    PostCommentForPullRequestOutput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request. </p>"}))
    PostCommentForPullRequestOutput.add_member(:before_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'beforeCommitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the commit in the source branch used to create the pull request, \n            or in the case of an updated pull request, the full commit ID of the commit used to update the pull request.</p>"}))
    PostCommentForPullRequestOutput.add_member(:after_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'afterCommitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the commit in the destination branch where the pull request is\n            merged.</p>"}))
    PostCommentForPullRequestOutput.add_member(:before_blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'beforeBlobId', traits: {"smithy.api#documentation" => "<p>In the directionality of the pull request, the blob ID of the before blob.</p>"}))
    PostCommentForPullRequestOutput.add_member(:after_blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'afterBlobId', traits: {"smithy.api#documentation" => "<p>In the directionality of the pull request, the blob ID of the after blob.</p>"}))
    PostCommentForPullRequestOutput.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The location of the change where you posted your comment.</p>"}))
    PostCommentForPullRequestOutput.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Comment, location_name: 'comment', traits: {"smithy.api#documentation" => "<p>The content of the comment you posted.</p>"}))
    PostCommentForPullRequestOutput.type = Types::PostCommentForPullRequestOutput
    PostCommentReplyInput.add_member(:in_reply_to, Smithy::Schema::Shapes::ShapeRef.new(shape: CommentId, location_name: 'inReplyTo', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the comment to which you want to reply. To get this ID, use <a>GetCommentsForComparedCommit</a> \n        or <a>GetCommentsForPullRequest</a>.</p>", "smithy.api#required" => {}}))
    PostCommentReplyInput.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique, client-generated idempotency token that, when provided in a request, ensures\n            the request cannot be repeated with a changed parameter. If a request is received with\n            the same parameters and a token is included, the request returns information about the\n            initial request that used that token.</p>", "smithy.api#idempotencyToken" => {}}))
    PostCommentReplyInput.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The contents of your reply to a comment.</p>", "smithy.api#required" => {}}))
    PostCommentReplyInput.type = Types::PostCommentReplyInput
    PostCommentReplyOutput.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Comment, location_name: 'comment', traits: {"smithy.api#documentation" => "<p>Information about the reply to a comment.</p>"}))
    PostCommentReplyOutput.type = Types::PostCommentReplyOutput
    PullRequest.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request. </p>"}))
    PullRequest.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The user-defined title of the pull request. This title is displayed in the list of\n            pull requests to other repository users.</p>"}))
    PullRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The user-defined description of the pull request. This description can be used to clarify what should be reviewed and other details of the request.</p>"}))
    PullRequest.add_member(:last_activity_date, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedDate, location_name: 'lastActivityDate', traits: {"smithy.api#documentation" => "<p>The day and time of the last user or system activity on the pull request, in timestamp format.</p>"}))
    PullRequest.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date and time the pull request was originally created, in timestamp format.</p>"}))
    PullRequest.add_member(:pull_request_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestStatusEnum, location_name: 'pullRequestStatus', traits: {"smithy.api#documentation" => "<p>The status of the pull request. Pull request status can only change from <code>OPEN</code> to <code>CLOSED</code>.</p>"}))
    PullRequest.add_member(:author_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'authorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user who created the pull request.</p>"}))
    PullRequest.add_member(:pull_request_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestTargetList, location_name: 'pullRequestTargets', traits: {"smithy.api#documentation" => "<p>The targets of the pull request, including the source branch and destination branch for the pull request.</p>"}))
    PullRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'clientRequestToken', traits: {"smithy.api#documentation" => "<p>A unique, client-generated idempotency token that, when provided in a request, ensures\n            the request cannot be repeated with a changed parameter. If a request is received with\n            the same parameters and a token is included, the request returns information about the\n            initial request that used that token.</p>"}))
    PullRequest.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The system-generated revision ID for the pull request.</p>"}))
    PullRequest.add_member(:approval_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRulesList, location_name: 'approvalRules', traits: {"smithy.api#documentation" => "<p>The approval rules applied to the pull request.</p>"}))
    PullRequest.type = Types::PullRequest
    PullRequestAlreadyClosedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    PullRequestAlreadyClosedException.type = Types::PullRequestAlreadyClosedException
    PullRequestApprovalRulesNotSatisfiedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    PullRequestApprovalRulesNotSatisfiedException.type = Types::PullRequestApprovalRulesNotSatisfiedException
    PullRequestCannotBeApprovedByAuthorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    PullRequestCannotBeApprovedByAuthorException.type = Types::PullRequestCannotBeApprovedByAuthorException
    PullRequestCreatedEventMetadata.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where the pull request was created.</p>"}))
    PullRequestCreatedEventMetadata.add_member(:source_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'sourceCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID on the source branch used when the pull request was created.</p>"}))
    PullRequestCreatedEventMetadata.add_member(:destination_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'destinationCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the tip of the branch specified as the destination branch when the pull request was created.</p>"}))
    PullRequestCreatedEventMetadata.add_member(:merge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'mergeBase', traits: {"smithy.api#documentation" => "<p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>"}))
    PullRequestCreatedEventMetadata.type = Types::PullRequestCreatedEventMetadata
    PullRequestDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    PullRequestDoesNotExistException.type = Types::PullRequestDoesNotExistException
    PullRequestEvent.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request.</p>"}))
    PullRequestEvent.add_member(:event_date, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDate, location_name: 'eventDate', traits: {"smithy.api#documentation" => "<p>The day and time of the pull request event, in timestamp format.</p>"}))
    PullRequestEvent.add_member(:pull_request_event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestEventType, location_name: 'pullRequestEventType', traits: {"smithy.api#documentation" => "<p>The type of the pull request event (for example, a status change event\n            (PULL_REQUEST_STATUS_CHANGED) or update event\n            (PULL_REQUEST_SOURCE_REFERENCE_UPDATED)).</p>"}))
    PullRequestEvent.add_member(:actor_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'actorArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the user whose actions resulted in the event.\n            Examples include updating the pull request with more commits or changing the status of a\n            pull request.</p>"}))
    PullRequestEvent.add_member(:pull_request_created_event_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestCreatedEventMetadata, location_name: 'pullRequestCreatedEventMetadata', traits: {"smithy.api#documentation" => "<p>Information about the source and destination branches for the pull request.</p>"}))
    PullRequestEvent.add_member(:pull_request_status_changed_event_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestStatusChangedEventMetadata, location_name: 'pullRequestStatusChangedEventMetadata', traits: {"smithy.api#documentation" => "<p>Information about the change in status for the pull request event.</p>"}))
    PullRequestEvent.add_member(:pull_request_source_reference_updated_event_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestSourceReferenceUpdatedEventMetadata, location_name: 'pullRequestSourceReferenceUpdatedEventMetadata', traits: {"smithy.api#documentation" => "<p>Information about the updated source branch for the pull request event. </p>"}))
    PullRequestEvent.add_member(:pull_request_merged_state_changed_event_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestMergedStateChangedEventMetadata, location_name: 'pullRequestMergedStateChangedEventMetadata', traits: {"smithy.api#documentation" => "<p>Information about the change in mergability state for the pull request event.</p>"}))
    PullRequestEvent.add_member(:approval_rule_event_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleEventMetadata, location_name: 'approvalRuleEventMetadata', traits: {"smithy.api#documentation" => "<p>Information about a pull request event.</p>"}))
    PullRequestEvent.add_member(:approval_state_changed_event_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalStateChangedEventMetadata, location_name: 'approvalStateChangedEventMetadata', traits: {"smithy.api#documentation" => "<p>Information about an approval state change for a pull request.</p>"}))
    PullRequestEvent.add_member(:approval_rule_overridden_event_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleOverriddenEventMetadata, location_name: 'approvalRuleOverriddenEventMetadata', traits: {"smithy.api#documentation" => "<p>Information about an approval rule override event for a pull request.</p>"}))
    PullRequestEvent.type = Types::PullRequestEvent
    PullRequestEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestEvent)
    PullRequestEventType.add_member(:pull_request_created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PULL_REQUEST_CREATED', traits: {"smithy.api#enumValue" => "PULL_REQUEST_CREATED"}))
    PullRequestEventType.add_member(:pull_request_status_changed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PULL_REQUEST_STATUS_CHANGED', traits: {"smithy.api#enumValue" => "PULL_REQUEST_STATUS_CHANGED"}))
    PullRequestEventType.add_member(:pull_request_source_reference_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PULL_REQUEST_SOURCE_REFERENCE_UPDATED', traits: {"smithy.api#enumValue" => "PULL_REQUEST_SOURCE_REFERENCE_UPDATED"}))
    PullRequestEventType.add_member(:pull_request_merge_state_changed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PULL_REQUEST_MERGE_STATE_CHANGED', traits: {"smithy.api#enumValue" => "PULL_REQUEST_MERGE_STATE_CHANGED"}))
    PullRequestEventType.add_member(:pull_request_approval_rule_created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PULL_REQUEST_APPROVAL_RULE_CREATED', traits: {"smithy.api#enumValue" => "PULL_REQUEST_APPROVAL_RULE_CREATED"}))
    PullRequestEventType.add_member(:pull_request_approval_rule_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PULL_REQUEST_APPROVAL_RULE_UPDATED', traits: {"smithy.api#enumValue" => "PULL_REQUEST_APPROVAL_RULE_UPDATED"}))
    PullRequestEventType.add_member(:pull_request_approval_rule_deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PULL_REQUEST_APPROVAL_RULE_DELETED', traits: {"smithy.api#enumValue" => "PULL_REQUEST_APPROVAL_RULE_DELETED"}))
    PullRequestEventType.add_member(:pull_request_approval_rule_overridden, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN', traits: {"smithy.api#enumValue" => "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN"}))
    PullRequestEventType.add_member(:pull_request_approval_state_changed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PULL_REQUEST_APPROVAL_STATE_CHANGED', traits: {"smithy.api#enumValue" => "PULL_REQUEST_APPROVAL_STATE_CHANGED"}))
    PullRequestIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId)
    PullRequestIdRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    PullRequestIdRequiredException.type = Types::PullRequestIdRequiredException
    PullRequestMergedStateChangedEventMetadata.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where the pull request was created.</p>"}))
    PullRequestMergedStateChangedEventMetadata.add_member(:destination_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceName, location_name: 'destinationReference', traits: {"smithy.api#documentation" => "<p>The name of the branch that the pull request is merged into.</p>"}))
    PullRequestMergedStateChangedEventMetadata.add_member(:merge_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeMetadata, location_name: 'mergeMetadata', traits: {"smithy.api#documentation" => "<p>Information about the merge state change event.</p>"}))
    PullRequestMergedStateChangedEventMetadata.type = Types::PullRequestMergedStateChangedEventMetadata
    PullRequestSourceReferenceUpdatedEventMetadata.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where the pull request was updated.</p>"}))
    PullRequestSourceReferenceUpdatedEventMetadata.add_member(:before_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'beforeCommitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was updated.</p>"}))
    PullRequestSourceReferenceUpdatedEventMetadata.add_member(:after_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'afterCommitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the commit in the source branch that was the tip of the branch at the time the pull request was updated.</p>"}))
    PullRequestSourceReferenceUpdatedEventMetadata.add_member(:merge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'mergeBase', traits: {"smithy.api#documentation" => "<p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>"}))
    PullRequestSourceReferenceUpdatedEventMetadata.type = Types::PullRequestSourceReferenceUpdatedEventMetadata
    PullRequestStatusChangedEventMetadata.add_member(:pull_request_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestStatusEnum, location_name: 'pullRequestStatus', traits: {"smithy.api#documentation" => "<p>The changed status of the pull request.</p>"}))
    PullRequestStatusChangedEventMetadata.type = Types::PullRequestStatusChangedEventMetadata
    PullRequestStatusEnum.add_member(:open, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN', traits: {"smithy.api#enumValue" => "OPEN"}))
    PullRequestStatusEnum.add_member(:closed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "CLOSED"}))
    PullRequestStatusRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    PullRequestStatusRequiredException.type = Types::PullRequestStatusRequiredException
    PullRequestTarget.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the pull request source and destination branches.</p>"}))
    PullRequestTarget.add_member(:source_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceName, location_name: 'sourceReference', traits: {"smithy.api#documentation" => "<p>The branch of the repository that contains the changes for the pull request. Also known as the source branch.</p>"}))
    PullRequestTarget.add_member(:destination_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceName, location_name: 'destinationReference', traits: {"smithy.api#documentation" => "<p>The branch of the repository where the pull request changes are merged. Also known as\n            the destination branch. </p>"}))
    PullRequestTarget.add_member(:destination_commit, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'destinationCommit', traits: {"smithy.api#documentation" => "<p>The full commit ID that is the tip of the destination branch. This is the commit where the pull request was or will be merged.</p>"}))
    PullRequestTarget.add_member(:source_commit, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'sourceCommit', traits: {"smithy.api#documentation" => "<p>The full commit ID of the tip of the source branch used to create the pull request. If\n            the pull request branch is updated by a push while the pull request is open, the commit\n            ID changes to reflect the new tip of the branch.</p>"}))
    PullRequestTarget.add_member(:merge_base, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'mergeBase', traits: {"smithy.api#documentation" => "<p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>"}))
    PullRequestTarget.add_member(:merge_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: MergeMetadata, location_name: 'mergeMetadata', traits: {"smithy.api#documentation" => "<p>Returns metadata about the state of the merge, including whether the merge has been made.</p>"}))
    PullRequestTarget.type = Types::PullRequestTarget
    PullRequestTargetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestTarget)
    PutCommentReactionInput.add_member(:comment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommentId, location_name: 'commentId', traits: {"smithy.api#documentation" => "<p>The ID of the comment to which you want to add or update a reaction.</p>", "smithy.api#required" => {}}))
    PutCommentReactionInput.add_member(:reaction_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactionValue, location_name: 'reactionValue', traits: {"smithy.api#documentation" => "<p>The emoji reaction you want to add or update. To remove a reaction, provide a value of blank or null. You can also provide the value of none.\n            For information about emoji reaction values supported in CodeCommit, see the <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/how-to-commit-comment.html#emoji-reaction-table\">CodeCommit User Guide</a>.</p>", "smithy.api#required" => {}}))
    PutCommentReactionInput.type = Types::PutCommentReactionInput
    PutFileEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PutFileEntry)
    PutFileEntry.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The full path to the file in the repository, including the name of the file.</p>", "smithy.api#required" => {}}))
    PutFileEntry.add_member(:file_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: 'fileMode', traits: {"smithy.api#documentation" => "<p>The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.</p>"}))
    PutFileEntry.add_member(:file_content, Smithy::Schema::Shapes::ShapeRef.new(shape: FileContent, location_name: 'fileContent', traits: {"smithy.api#documentation" => "<p>The content of the file, if a source file is not specified.</p>"}))
    PutFileEntry.add_member(:source_file, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceFileSpecifier, location_name: 'sourceFile', traits: {"smithy.api#documentation" => "<p>The name and full path of the file that contains the changes you want to make as part of the commit, \n        if you are not providing the file content directly.</p>"}))
    PutFileEntry.type = Types::PutFileEntry
    PutFileEntryConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    PutFileEntryConflictException.type = Types::PutFileEntryConflictException
    PutFileInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where you want to add or update the file.</p>", "smithy.api#required" => {}}))
    PutFileInput.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch where you want to add or update the file. If this is an empty\n            repository, this branch is created.</p>", "smithy.api#required" => {}}))
    PutFileInput.add_member(:file_content, Smithy::Schema::Shapes::ShapeRef.new(shape: FileContent, location_name: 'fileContent', traits: {"smithy.api#documentation" => "<p>The content of the file, in binary object format. </p>", "smithy.api#required" => {}}))
    PutFileInput.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The name of the file you want to add or update, including the relative path to the file in the repository.</p>\n         <note>\n            <p>If the path does not currently exist in the repository, the path is created as part of adding\n                the file.</p>\n         </note>", "smithy.api#required" => {}}))
    PutFileInput.add_member(:file_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: 'fileMode', traits: {"smithy.api#documentation" => "<p>The file mode permissions of the blob. Valid file mode permissions are listed\n            here.</p>"}))
    PutFileInput.add_member(:parent_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'parentCommitId', traits: {"smithy.api#documentation" => "<p>The full commit ID of the head commit in the branch where you want to add or update the file. If this is an empty repository, \n            no commit ID is required. If this is not an empty repository, a commit ID is required. </p>\n         <p>The commit ID must match the ID of the head commit at the time of the operation.\n            Otherwise, an error occurs, and the file is not added or updated.</p>"}))
    PutFileInput.add_member(:commit_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'commitMessage', traits: {"smithy.api#documentation" => "<p>A message about why this file was added or updated. Although it is optional, a message\n            makes the commit history for your repository more useful.</p>"}))
    PutFileInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the person adding or updating the file. Although it is optional, a name\n            makes the commit history for your repository more useful.</p>"}))
    PutFileInput.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'email', traits: {"smithy.api#documentation" => "<p>An email address for the person adding or updating the file.</p>"}))
    PutFileInput.type = Types::PutFileInput
    PutFileOutput.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p>The full SHA ID of the commit that contains this file change.</p>", "smithy.api#required" => {}}))
    PutFileOutput.add_member(:blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'blobId', traits: {"smithy.api#documentation" => "<p>The ID of the blob, which is its SHA-1 pointer.</p>", "smithy.api#required" => {}}))
    PutFileOutput.add_member(:tree_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'treeId', traits: {"smithy.api#documentation" => "<p>The full SHA-1 pointer of the tree information for the commit that contains this file change.</p>", "smithy.api#required" => {}}))
    PutFileOutput.type = Types::PutFileOutput
    PutRepositoryTriggersInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where you want to create or update the trigger.</p>", "smithy.api#required" => {}}))
    PutRepositoryTriggersInput.add_member(:triggers, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggersList, location_name: 'triggers', traits: {"smithy.api#documentation" => "<p>The JSON block of configuration information for each trigger.</p>", "smithy.api#required" => {}}))
    PutRepositoryTriggersInput.type = Types::PutRepositoryTriggersInput
    PutRepositoryTriggersOutput.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggersConfigurationId, location_name: 'configurationId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID for the create or update operation.</p>"}))
    PutRepositoryTriggersOutput.type = Types::PutRepositoryTriggersOutput
    ReactionCountsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ReactionValue)
    ReactionCountsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Count)
    ReactionForComment.add_member(:reaction, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactionValueFormats, location_name: 'reaction', traits: {"smithy.api#documentation" => "<p>The reaction for a specified comment.</p>"}))
    ReactionForComment.add_member(:reaction_users, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactionUsersList, location_name: 'reactionUsers', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Names (ARNs) of users who have provided reactions to the comment.</p>"}))
    ReactionForComment.add_member(:reactions_from_deleted_users_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Count, location_name: 'reactionsFromDeletedUsersCount', traits: {"smithy.api#documentation" => "<p>A numerical count of users who reacted with the specified emoji whose identities have been subsequently deleted\n            from IAM. While these IAM users or roles no longer exist, the reactions might still appear in total reaction counts.</p>"}))
    ReactionForComment.type = Types::ReactionForComment
    ReactionLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ReactionLimitExceededException.type = Types::ReactionLimitExceededException
    ReactionUsersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    ReactionValueFormats.add_member(:emoji, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactionEmoji, location_name: 'emoji', traits: {"smithy.api#documentation" => "<p>The Emoji Version 1.0 graphic of the reaction. These graphics are interpreted slightly differently on different operating systems.</p>"}))
    ReactionValueFormats.add_member(:short_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactionShortCode, location_name: 'shortCode', traits: {"smithy.api#documentation" => "<p>The emoji short code for the reaction. Short codes are interpreted slightly differently on different operating systems. </p>"}))
    ReactionValueFormats.add_member(:unicode, Smithy::Schema::Shapes::ShapeRef.new(shape: ReactionUnicode, location_name: 'unicode', traits: {"smithy.api#documentation" => "<p>The Unicode codepoint for the reaction.</p>"}))
    ReactionValueFormats.type = Types::ReactionValueFormats
    ReactionValueRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ReactionValueRequiredException.type = Types::ReactionValueRequiredException
    ReactionsForCommentList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReactionForComment)
    ReferenceDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ReferenceDoesNotExistException.type = Types::ReferenceDoesNotExistException
    ReferenceNameRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ReferenceNameRequiredException.type = Types::ReferenceNameRequiredException
    ReferenceTypeNotSupportedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ReferenceTypeNotSupportedException.type = Types::ReferenceTypeNotSupportedException
    RelativeFileVersionEnum.add_member(:before, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BEFORE', traits: {"smithy.api#enumValue" => "BEFORE"}))
    RelativeFileVersionEnum.add_member(:after, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AFTER', traits: {"smithy.api#enumValue" => "AFTER"}))
    ReplaceContentEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReplaceContentEntry)
    ReplaceContentEntry.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The path of the conflicting file.</p>", "smithy.api#required" => {}}))
    ReplaceContentEntry.add_member(:replacement_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacementTypeEnum, location_name: 'replacementType', traits: {"smithy.api#documentation" => "<p>The replacement type to use when determining how to resolve the conflict.</p>", "smithy.api#required" => {}}))
    ReplaceContentEntry.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: FileContent, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The base-64 encoded content to use when the replacement type is USE_NEW_CONTENT.</p>"}))
    ReplaceContentEntry.add_member(:file_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: 'fileMode', traits: {"smithy.api#documentation" => "<p>The file mode to apply during conflict resoltion.</p>"}))
    ReplaceContentEntry.type = Types::ReplaceContentEntry
    ReplacementContentRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ReplacementContentRequiredException.type = Types::ReplacementContentRequiredException
    ReplacementTypeEnum.add_member(:keep_base, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEEP_BASE', traits: {"smithy.api#enumValue" => "KEEP_BASE"}))
    ReplacementTypeEnum.add_member(:keep_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEEP_SOURCE', traits: {"smithy.api#enumValue" => "KEEP_SOURCE"}))
    ReplacementTypeEnum.add_member(:keep_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KEEP_DESTINATION', traits: {"smithy.api#enumValue" => "KEEP_DESTINATION"}))
    ReplacementTypeEnum.add_member(:use_new_content, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USE_NEW_CONTENT', traits: {"smithy.api#enumValue" => "USE_NEW_CONTENT"}))
    ReplacementTypeRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ReplacementTypeRequiredException.type = Types::ReplacementTypeRequiredException
    RepositoryDoesNotExistException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    RepositoryDoesNotExistException.type = Types::RepositoryDoesNotExistException
    RepositoryLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    RepositoryLimitExceededException.type = Types::RepositoryLimitExceededException
    RepositoryMetadata.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account associated with the repository.</p>"}))
    RepositoryMetadata.add_member(:repository_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryId, location_name: 'repositoryId', traits: {"smithy.api#documentation" => "<p>The ID of the repository.</p>"}))
    RepositoryMetadata.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The repository's name.</p>"}))
    RepositoryMetadata.add_member(:repository_description, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: 'repositoryDescription', traits: {"smithy.api#documentation" => "<p>A comment or description about the repository.</p>"}))
    RepositoryMetadata.add_member(:default_branch, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'defaultBranch', traits: {"smithy.api#documentation" => "<p>The repository's default branch name.</p>"}))
    RepositoryMetadata.add_member(:last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: LastModifiedDate, location_name: 'lastModifiedDate', traits: {"smithy.api#documentation" => "<p>The date and time the repository was last modified, in timestamp format.</p>"}))
    RepositoryMetadata.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date and time the repository was created, in timestamp format.</p>"}))
    RepositoryMetadata.add_member(:clone_url_http, Smithy::Schema::Shapes::ShapeRef.new(shape: CloneUrlHttp, location_name: 'cloneUrlHttp', traits: {"smithy.api#documentation" => "<p>The URL to use for cloning the repository over HTTPS.</p>"}))
    RepositoryMetadata.add_member(:clone_url_ssh, Smithy::Schema::Shapes::ShapeRef.new(shape: CloneUrlSsh, location_name: 'cloneUrlSsh', traits: {"smithy.api#documentation" => "<p>The URL to use for cloning the repository over SSH.</p>"}))
    RepositoryMetadata.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the repository.</p>"}))
    RepositoryMetadata.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the Key Management Service encryption key used to encrypt and decrypt the repository.</p>"}))
    RepositoryMetadata.type = Types::RepositoryMetadata
    RepositoryMetadataList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryMetadata)
    RepositoryNameExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    RepositoryNameExistsException.type = Types::RepositoryNameExistsException
    RepositoryNameIdPair.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name associated with the repository.</p>"}))
    RepositoryNameIdPair.add_member(:repository_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryId, location_name: 'repositoryId', traits: {"smithy.api#documentation" => "<p>The ID associated with the repository.</p>"}))
    RepositoryNameIdPair.type = Types::RepositoryNameIdPair
    RepositoryNameIdPairList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameIdPair)
    RepositoryNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName)
    RepositoryNameRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    RepositoryNameRequiredException.type = Types::RepositoryNameRequiredException
    RepositoryNamesRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    RepositoryNamesRequiredException.type = Types::RepositoryNamesRequiredException
    RepositoryNotAssociatedWithPullRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    RepositoryNotAssociatedWithPullRequestException.type = Types::RepositoryNotAssociatedWithPullRequestException
    RepositoryNotFoundList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName)
    RepositoryTrigger.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the trigger.</p>", "smithy.api#required" => {}}))
    RepositoryTrigger.add_member(:destination_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'destinationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource that is the target for a trigger (for example, the ARN of a\n            topic in Amazon SNS).</p>", "smithy.api#required" => {}}))
    RepositoryTrigger.add_member(:custom_data, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerCustomData, location_name: 'customData', traits: {"smithy.api#documentation" => "<p>Any custom data associated with the trigger to be included in the information sent to\n            the target of the trigger.</p>"}))
    RepositoryTrigger.add_member(:branches, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameList, location_name: 'branches', traits: {"smithy.api#documentation" => "<p>The branches to be included in the trigger configuration. If you specify an empty\n            array, the trigger applies to all branches.</p>\n         <note>\n            <p>Although no content is required in the array, you must include the array itself.</p>\n         </note>"}))
    RepositoryTrigger.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerEventList, location_name: 'events', traits: {"smithy.api#documentation" => "<p>The repository events that cause the trigger to run actions in another service, such\n            as sending a notification through Amazon SNS. \n            \n        </p>\n         <note>\n            <p>The valid value \"all\" cannot be used with any other values.</p>\n         </note>", "smithy.api#required" => {}}))
    RepositoryTrigger.type = Types::RepositoryTrigger
    RepositoryTriggerBranchNameListRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    RepositoryTriggerBranchNameListRequiredException.type = Types::RepositoryTriggerBranchNameListRequiredException
    RepositoryTriggerDestinationArnRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    RepositoryTriggerDestinationArnRequiredException.type = Types::RepositoryTriggerDestinationArnRequiredException
    RepositoryTriggerEventEnum.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "all"}))
    RepositoryTriggerEventEnum.add_member(:update_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_REFERENCE', traits: {"smithy.api#enumValue" => "updateReference"}))
    RepositoryTriggerEventEnum.add_member(:create_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_REFERENCE', traits: {"smithy.api#enumValue" => "createReference"}))
    RepositoryTriggerEventEnum.add_member(:delete_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_REFERENCE', traits: {"smithy.api#enumValue" => "deleteReference"}))
    RepositoryTriggerEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerEventEnum)
    RepositoryTriggerEventsListRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    RepositoryTriggerEventsListRequiredException.type = Types::RepositoryTriggerEventsListRequiredException
    RepositoryTriggerExecutionFailure.add_member(:trigger, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerName, location_name: 'trigger', traits: {"smithy.api#documentation" => "<p>The name of the trigger that did not run.</p>"}))
    RepositoryTriggerExecutionFailure.add_member(:failure_message, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerExecutionFailureMessage, location_name: 'failureMessage', traits: {"smithy.api#documentation" => "<p>Message information about the trigger that did not run.</p>"}))
    RepositoryTriggerExecutionFailure.type = Types::RepositoryTriggerExecutionFailure
    RepositoryTriggerExecutionFailureList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerExecutionFailure)
    RepositoryTriggerNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerName)
    RepositoryTriggerNameRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    RepositoryTriggerNameRequiredException.type = Types::RepositoryTriggerNameRequiredException
    RepositoryTriggersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTrigger)
    RepositoryTriggersListRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    RepositoryTriggersListRequiredException.type = Types::RepositoryTriggersListRequiredException
    ResourceArnRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    ResourceArnRequiredException.type = Types::ResourceArnRequiredException
    RestrictedSourceFileException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    RestrictedSourceFileException.type = Types::RestrictedSourceFileException
    RevisionChildren.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId)
    RevisionDag.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FileVersion)
    RevisionIdRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    RevisionIdRequiredException.type = Types::RevisionIdRequiredException
    RevisionNotCurrentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    RevisionNotCurrentException.type = Types::RevisionNotCurrentException
    SameFileContentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    SameFileContentException.type = Types::SameFileContentException
    SamePathRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    SamePathRequestException.type = Types::SamePathRequestException
    SetFileModeEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SetFileModeEntry)
    SetFileModeEntry.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The full path to the file, including the name of the file.</p>", "smithy.api#required" => {}}))
    SetFileModeEntry.add_member(:file_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: 'fileMode', traits: {"smithy.api#documentation" => "<p>The file mode for the file.</p>", "smithy.api#required" => {}}))
    SetFileModeEntry.type = Types::SetFileModeEntry
    SortByEnum.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPOSITORY_NAME', traits: {"smithy.api#enumValue" => "repositoryName"}))
    SortByEnum.add_member(:modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFIED_DATE', traits: {"smithy.api#enumValue" => "lastModifiedDate"}))
    SourceAndDestinationAreSameException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    SourceAndDestinationAreSameException.type = Types::SourceAndDestinationAreSameException
    SourceFileOrContentRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    SourceFileOrContentRequiredException.type = Types::SourceFileOrContentRequiredException
    SourceFileSpecifier.add_member(:file_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'filePath', traits: {"smithy.api#documentation" => "<p>The full path to the file, including the name of the file.</p>", "smithy.api#required" => {}}))
    SourceFileSpecifier.add_member(:is_move, Smithy::Schema::Shapes::ShapeRef.new(shape: IsMove, location_name: 'isMove', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether to remove the source file from the parent commit.</p>"}))
    SourceFileSpecifier.type = Types::SourceFileSpecifier
    SubModule.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p>The commit ID that contains the reference to the submodule.</p>"}))
    SubModule.add_member(:absolute_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'absolutePath', traits: {"smithy.api#documentation" => "<p>The fully qualified path to the folder that contains the reference to the submodule.</p>"}))
    SubModule.add_member(:relative_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'relativePath', traits: {"smithy.api#documentation" => "<p>The relative path of the submodule from the folder where the query originated.</p>"}))
    SubModule.type = Types::SubModule
    SubModuleList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubModule)
    SymbolicLink.add_member(:blob_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectId, location_name: 'blobId', traits: {"smithy.api#documentation" => "<p>The blob ID that contains the information about the symbolic link.</p>"}))
    SymbolicLink.add_member(:absolute_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'absolutePath', traits: {"smithy.api#documentation" => "<p>The fully qualified path to the folder that contains the symbolic link.</p>"}))
    SymbolicLink.add_member(:relative_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Path, location_name: 'relativePath', traits: {"smithy.api#documentation" => "<p>The relative path of the symbolic link from the folder where the query originated.</p>"}))
    SymbolicLink.add_member(:file_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: 'fileMode', traits: {"smithy.api#documentation" => "<p>The file mode permissions of the blob that cotains information about the symbolic link.</p>"}))
    SymbolicLink.type = Types::SymbolicLink
    SymbolicLinkList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SymbolicLink)
    TagKeysList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagKeysListRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    TagKeysListRequiredException.type = Types::TagKeysListRequiredException
    TagPolicyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    TagPolicyException.type = Types::TagPolicyException
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.</p>", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The key-value pair to use when tagging this repository.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagsMapRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    TagsMapRequiredException.type = Types::TagsMapRequiredException
    Target.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the pull request.</p>", "smithy.api#required" => {}}))
    Target.add_member(:source_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceName, location_name: 'sourceReference', traits: {"smithy.api#documentation" => "<p>The branch of the repository that contains the changes for the pull request. Also known as the source branch.</p>", "smithy.api#required" => {}}))
    Target.add_member(:destination_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceName, location_name: 'destinationReference', traits: {"smithy.api#documentation" => "<p>The branch of the repository where the pull request changes are merged. Also known as\n            the destination branch.</p>"}))
    Target.type = Types::Target
    TargetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Target)
    TargetRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    TargetRequiredException.type = Types::TargetRequiredException
    TargetsRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    TargetsRequiredException.type = Types::TargetsRequiredException
    TestRepositoryTriggersInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository in which to test the triggers.</p>", "smithy.api#required" => {}}))
    TestRepositoryTriggersInput.add_member(:triggers, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggersList, location_name: 'triggers', traits: {"smithy.api#documentation" => "<p>The list of triggers to test.</p>", "smithy.api#required" => {}}))
    TestRepositoryTriggersInput.type = Types::TestRepositoryTriggersInput
    TestRepositoryTriggersOutput.add_member(:successful_executions, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerNameList, location_name: 'successfulExecutions', traits: {"smithy.api#documentation" => "<p>The list of triggers that were successfully tested. This list provides the names of the triggers that were successfully tested, separated by commas.</p>"}))
    TestRepositoryTriggersOutput.add_member(:failed_executions, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerExecutionFailureList, location_name: 'failedExecutions', traits: {"smithy.api#documentation" => "<p>The list of triggers that were not tested. This list provides the names of the\n            triggers that could not be tested, separated by commas.</p>"}))
    TestRepositoryTriggersOutput.type = Types::TestRepositoryTriggersOutput
    TipOfSourceReferenceIsDifferentException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    TipOfSourceReferenceIsDifferentException.type = Types::TipOfSourceReferenceIsDifferentException
    TipsDivergenceExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    TipsDivergenceExceededException.type = Types::TipsDivergenceExceededException
    TitleRequiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    TitleRequiredException.type = Types::TitleRequiredException
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Any message associated with the exception.</p>"}))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to which you want to remove tags.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeysList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The tag key for each tag that you want to remove from the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateApprovalRuleTemplateContentInput.add_member(:approval_rule_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateName, location_name: 'approvalRuleTemplateName', traits: {"smithy.api#documentation" => "<p>The name of the approval rule template where you want to update the content of the rule. </p>", "smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateContentInput.add_member(:new_rule_content, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateContent, location_name: 'newRuleContent', traits: {"smithy.api#documentation" => "<p>The content that replaces the existing content of the rule. Content statements must be\n            complete. You cannot provide only the changes.</p>", "smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateContentInput.add_member(:existing_rule_content_sha256, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleContentSha256, location_name: 'existingRuleContentSha256', traits: {"smithy.api#documentation" => "<p>The SHA-256 hash signature for the content of the approval rule. You can retrieve this\n            information by using\n            <a>GetPullRequest</a>.</p>"}))
    UpdateApprovalRuleTemplateContentInput.type = Types::UpdateApprovalRuleTemplateContentInput
    UpdateApprovalRuleTemplateContentOutput.add_member(:approval_rule_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplate, location_name: 'approvalRuleTemplate', traits: {"smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateContentOutput.type = Types::UpdateApprovalRuleTemplateContentOutput
    UpdateApprovalRuleTemplateDescriptionInput.add_member(:approval_rule_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateName, location_name: 'approvalRuleTemplateName', traits: {"smithy.api#documentation" => "<p>The name of the template for which you want to update the description.</p>", "smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateDescriptionInput.add_member(:approval_rule_template_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateDescription, location_name: 'approvalRuleTemplateDescription', traits: {"smithy.api#documentation" => "<p>The updated description of the approval rule template.</p>", "smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateDescriptionInput.type = Types::UpdateApprovalRuleTemplateDescriptionInput
    UpdateApprovalRuleTemplateDescriptionOutput.add_member(:approval_rule_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplate, location_name: 'approvalRuleTemplate', traits: {"smithy.api#documentation" => "<p>The structure and content of the updated approval rule template.</p>", "smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateDescriptionOutput.type = Types::UpdateApprovalRuleTemplateDescriptionOutput
    UpdateApprovalRuleTemplateNameInput.add_member(:old_approval_rule_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateName, location_name: 'oldApprovalRuleTemplateName', traits: {"smithy.api#documentation" => "<p>The current name of the approval rule template.</p>", "smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateNameInput.add_member(:new_approval_rule_template_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateName, location_name: 'newApprovalRuleTemplateName', traits: {"smithy.api#documentation" => "<p>The new name you want to apply to the approval rule template.</p>", "smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateNameInput.type = Types::UpdateApprovalRuleTemplateNameInput
    UpdateApprovalRuleTemplateNameOutput.add_member(:approval_rule_template, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplate, location_name: 'approvalRuleTemplate', traits: {"smithy.api#documentation" => "<p>The structure and content of the updated approval rule template.</p>", "smithy.api#required" => {}}))
    UpdateApprovalRuleTemplateNameOutput.type = Types::UpdateApprovalRuleTemplateNameOutput
    UpdateCommentInput.add_member(:comment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommentId, location_name: 'commentId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the comment you want to update. To get this ID, use <a>GetCommentsForComparedCommit</a> \n            or <a>GetCommentsForPullRequest</a>.</p>", "smithy.api#required" => {}}))
    UpdateCommentInput.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'content', traits: {"smithy.api#documentation" => "<p>The updated content to replace the existing content of the comment.</p>", "smithy.api#required" => {}}))
    UpdateCommentInput.type = Types::UpdateCommentInput
    UpdateCommentOutput.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Comment, location_name: 'comment', traits: {"smithy.api#documentation" => "<p>Information about the updated comment.</p>"}))
    UpdateCommentOutput.type = Types::UpdateCommentOutput
    UpdateDefaultBranchInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository for which you want to set or change the default branch.</p>", "smithy.api#required" => {}}))
    UpdateDefaultBranchInput.add_member(:default_branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'defaultBranchName', traits: {"smithy.api#documentation" => "<p>The name of the branch to set as the default branch.</p>", "smithy.api#required" => {}}))
    UpdateDefaultBranchInput.type = Types::UpdateDefaultBranchInput
    UpdatePullRequestApprovalRuleContentInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request.</p>", "smithy.api#required" => {}}))
    UpdatePullRequestApprovalRuleContentInput.add_member(:approval_rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleName, location_name: 'approvalRuleName', traits: {"smithy.api#documentation" => "<p>The name of the approval rule you want to update.</p>", "smithy.api#required" => {}}))
    UpdatePullRequestApprovalRuleContentInput.add_member(:existing_rule_content_sha256, Smithy::Schema::Shapes::ShapeRef.new(shape: RuleContentSha256, location_name: 'existingRuleContentSha256', traits: {"smithy.api#documentation" => "<p>The SHA-256 hash signature for the content of the approval rule. You can retrieve this\n            information by using\n            <a>GetPullRequest</a>.</p>"}))
    UpdatePullRequestApprovalRuleContentInput.add_member(:new_rule_content, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleContent, location_name: 'newRuleContent', traits: {"smithy.api#documentation" => "<p>The updated content for the approval rule.</p>\n         <note>\n            <p>When you update the content of the approval rule, you can specify approvers in an\n                approval pool in one of two ways:</p>\n            <ul>\n               <li>\n                  <p>\n                     <b>CodeCommitApprovers</b>: This option only\n                        requires an Amazon Web Services account and a resource. It can be used for both IAM users\n                        and federated access users whose name matches the provided resource name.\n                        This is a very powerful option that offers a great deal of flexibility. For\n                        example, if you specify the Amazon Web Services account <i>123456789012</i>\n                        and <i>Mary_Major</i>, all of the following are counted as\n                        approvals coming from that user:</p>\n                  <ul>\n                     <li>\n                        <p>An IAM user in the account\n                                (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p>\n                     </li>\n                     <li>\n                        <p>A federated user identified in IAM as Mary_Major\n                                (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p>\n                     </li>\n                  </ul>\n                  <p>This option does not recognize an active session of someone assuming the\n                        role of CodeCommitReview with a role session name of\n                            <i>Mary_Major</i>\n                            (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>)\n                        unless you include a wildcard (*Mary_Major).</p>\n               </li>\n               <li>\n                  <p>\n                     <b>Fully qualified ARN</b>: This option allows\n                        you to specify the fully qualified Amazon Resource Name (ARN) of the IAM\n                        user or role. </p>\n               </li>\n            </ul>\n            <p>For more information about IAM ARNs, wildcards, and formats, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM\n                    Identifiers</a> in the <i>IAM User Guide</i>.</p>\n         </note>", "smithy.api#required" => {}}))
    UpdatePullRequestApprovalRuleContentInput.type = Types::UpdatePullRequestApprovalRuleContentInput
    UpdatePullRequestApprovalRuleContentOutput.add_member(:approval_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRule, location_name: 'approvalRule', traits: {"smithy.api#documentation" => "<p>Information about the updated approval rule.</p>", "smithy.api#required" => {}}))
    UpdatePullRequestApprovalRuleContentOutput.type = Types::UpdatePullRequestApprovalRuleContentOutput
    UpdatePullRequestApprovalStateInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request.</p>", "smithy.api#required" => {}}))
    UpdatePullRequestApprovalStateInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionId, location_name: 'revisionId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the revision.</p>", "smithy.api#required" => {}}))
    UpdatePullRequestApprovalStateInput.add_member(:approval_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalState, location_name: 'approvalState', traits: {"smithy.api#documentation" => "<p>The approval state to associate with the user on the pull request.</p>", "smithy.api#required" => {}}))
    UpdatePullRequestApprovalStateInput.type = Types::UpdatePullRequestApprovalStateInput
    UpdatePullRequestDescriptionInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>", "smithy.api#required" => {}}))
    UpdatePullRequestDescriptionInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The updated content of the description for the pull request. This content replaces the\n            existing description.</p>", "smithy.api#required" => {}}))
    UpdatePullRequestDescriptionInput.type = Types::UpdatePullRequestDescriptionInput
    UpdatePullRequestDescriptionOutput.add_member(:pull_request, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequest, location_name: 'pullRequest', traits: {"smithy.api#documentation" => "<p>Information about the updated pull request.</p>", "smithy.api#required" => {}}))
    UpdatePullRequestDescriptionOutput.type = Types::UpdatePullRequestDescriptionOutput
    UpdatePullRequestStatusInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>", "smithy.api#required" => {}}))
    UpdatePullRequestStatusInput.add_member(:pull_request_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestStatusEnum, location_name: 'pullRequestStatus', traits: {"smithy.api#documentation" => "<p>The status of the pull request. The only valid operations are to update the status\n            from <code>OPEN</code> to <code>OPEN</code>, <code>OPEN</code> to <code>CLOSED</code> or\n            from <code>CLOSED</code> to <code>CLOSED</code>.</p>", "smithy.api#required" => {}}))
    UpdatePullRequestStatusInput.type = Types::UpdatePullRequestStatusInput
    UpdatePullRequestStatusOutput.add_member(:pull_request, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequest, location_name: 'pullRequest', traits: {"smithy.api#documentation" => "<p>Information about the pull request.</p>", "smithy.api#required" => {}}))
    UpdatePullRequestStatusOutput.type = Types::UpdatePullRequestStatusOutput
    UpdatePullRequestTitleInput.add_member(:pull_request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestId, location_name: 'pullRequestId', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>", "smithy.api#required" => {}}))
    UpdatePullRequestTitleInput.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: Title, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The updated title of the pull request. This replaces the existing title.</p>", "smithy.api#required" => {}}))
    UpdatePullRequestTitleInput.type = Types::UpdatePullRequestTitleInput
    UpdatePullRequestTitleOutput.add_member(:pull_request, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequest, location_name: 'pullRequest', traits: {"smithy.api#documentation" => "<p>Information about the updated pull request.</p>", "smithy.api#required" => {}}))
    UpdatePullRequestTitleOutput.type = Types::UpdatePullRequestTitleOutput
    UpdateRepositoryDescriptionInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository to set or change the comment or description for.</p>", "smithy.api#required" => {}}))
    UpdateRepositoryDescriptionInput.add_member(:repository_description, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: 'repositoryDescription', traits: {"smithy.api#documentation" => "<p>The new comment or description for the specified repository. Repository descriptions are limited to 1,000 characters.</p>"}))
    UpdateRepositoryDescriptionInput.type = Types::UpdateRepositoryDescriptionInput
    UpdateRepositoryEncryptionKeyInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository for which you want to update the KMS encryption key used to encrypt and decrypt the repository.</p>", "smithy.api#required" => {}}))
    UpdateRepositoryEncryptionKeyInput.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the encryption key. You can view the ID of an encryption key in the KMS console, or use the KMS APIs to\n            programmatically retrieve a key ID. For more information about acceptable values for keyID, see \n            <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_Decrypt.html#KMS-Decrypt-request-KeyId\">KeyId</a> in the Decrypt API description in \n        the <i>Key Management Service API Reference</i>.</p>", "smithy.api#required" => {}}))
    UpdateRepositoryEncryptionKeyInput.type = Types::UpdateRepositoryEncryptionKeyInput
    UpdateRepositoryEncryptionKeyOutput.add_member(:repository_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryId, location_name: 'repositoryId', traits: {"smithy.api#documentation" => "<p>The ID of the repository.</p>"}))
    UpdateRepositoryEncryptionKeyOutput.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the encryption key.</p>"}))
    UpdateRepositoryEncryptionKeyOutput.add_member(:original_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'originalKmsKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the encryption key formerly used to encrypt and decrypt the repository.</p>"}))
    UpdateRepositoryEncryptionKeyOutput.type = Types::UpdateRepositoryEncryptionKeyOutput
    UpdateRepositoryNameInput.add_member(:old_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'oldName', traits: {"smithy.api#documentation" => "<p>The current name of the repository.</p>", "smithy.api#required" => {}}))
    UpdateRepositoryNameInput.add_member(:new_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'newName', traits: {"smithy.api#documentation" => "<p>The new name for the repository.</p>", "smithy.api#required" => {}}))
    UpdateRepositoryNameInput.type = Types::UpdateRepositoryNameInput
    UserInfo.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the user who made the specified commit.</p>"}))
    UserInfo.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Email, location_name: 'email', traits: {"smithy.api#documentation" => "<p>The email address associated with the user who made the commit, if any.</p>"}))
    UserInfo.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: 'date', traits: {"smithy.api#documentation" => "<p>The date when the specified commit was commited, in timestamp format with GMT offset.</p>"}))
    UserInfo.type = Types::UserInfo

    CodeCommit20150413 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codecommit#CodeCommit_20150413"
      service.name = "CodeCommit20150413"
      service.version = "2015-04-13"
      service.traits = {"aws.api#service" => {"sdkId" => "CodeCommit", "arnNamespace" => "codecommit", "cloudFormationName" => "CodeCommit", "cloudTrailEventSource" => "codecommit.amazonaws.com", "endpointPrefix" => "codecommit"}, "aws.auth#sigv4" => {"name" => "codecommit"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS CodeCommit", "smithy.api#xmlNamespace" => {"uri" => "http://codecommit.amazonaws.com/doc/2015-04-13"}}
      service.add_operation(:associate_approval_rule_template_with_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#AssociateApprovalRuleTemplateWithRepository"
        operation.name = "AssociateApprovalRuleTemplateWithRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateApprovalRuleTemplateWithRepositoryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleTemplateNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumRuleTemplatesAssociatedWithRepositoryException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:batch_associate_approval_rule_template_with_repositories, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#BatchAssociateApprovalRuleTemplateWithRepositories"
        operation.name = "BatchAssociateApprovalRuleTemplateWithRepositories"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateApprovalRuleTemplateWithRepositoriesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateApprovalRuleTemplateWithRepositoriesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleTemplateNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumRepositoryNamesExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNamesRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:batch_describe_merge_conflicts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#BatchDescribeMergeConflicts"
        operation.name = "BatchDescribeMergeConflicts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeMergeConflictsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDescribeMergeConflictsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxConflictFilesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxMergeHunksException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMergeOptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MergeOptionRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        operation.traits = {}
      end)
      service.add_operation(:batch_disassociate_approval_rule_template_from_repositories, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#BatchDisassociateApprovalRuleTemplateFromRepositories"
        operation.name = "BatchDisassociateApprovalRuleTemplateFromRepositories"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateApprovalRuleTemplateFromRepositoriesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleTemplateNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumRepositoryNamesExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNamesRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_commits, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#BatchGetCommits"
        operation.name = "BatchGetCommits"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCommitsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCommitsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitIdsLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitIdsListRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_repositories, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#BatchGetRepositories"
        operation.name = "BatchGetRepositories"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRepositoriesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetRepositoriesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumRepositoryNamesExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNamesRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:create_approval_rule_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#CreateApprovalRuleTemplate"
        operation.name = "CreateApprovalRuleTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApprovalRuleTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApprovalRuleTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateContentRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateNameAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleTemplateContentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleTemplateDescriptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleTemplateNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfRuleTemplatesExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_branch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#CreateBranch"
        operation.name = "CreateBranch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBranchInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:create_commit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#CreateCommit"
        operation.name = "CreateCommit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCommitInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCommitOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameIsTagNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitMessageLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNameConflictsWithFileNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileContentAndSourceFileSpecifiedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileEntryRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileModeRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileNameConflictsWithDirectoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FilePathConflictsWithSubmodulePathException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FolderContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeletionParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFileModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParentCommitIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPathException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumFileEntriesExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NameLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NoChangeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParentCommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParentCommitIdOutdatedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParentCommitIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PathRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PutFileEntryConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RestrictedSourceFileException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SamePathRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SourceFileOrContentRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:create_pull_request, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#CreatePullRequest"
        operation.name = "CreatePullRequest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePullRequestInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePullRequestOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientRequestTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDescriptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReferenceNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTargetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTargetsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTitleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumOpenPullRequestsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultipleRepositoriesInPullRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceTypeNotSupportedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SourceAndDestinationAreSameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TargetsRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TitleRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:create_pull_request_approval_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#CreatePullRequestApprovalRule"
        operation.name = "CreatePullRequestApprovalRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePullRequestApprovalRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePullRequestApprovalRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleContentRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleNameAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleContentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NumberOfRulesExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestAlreadyClosedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:create_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#CreateRepository"
        operation.name = "CreateRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyInvalidIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyInvalidUsageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryDescriptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSystemTagUsageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagsMapException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:create_unreferenced_merge_commit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#CreateUnreferencedMergeCommit"
        operation.name = "CreateUnreferencedMergeCommit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUnreferencedMergeCommitInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUnreferencedMergeCommitOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitMessageLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentReferenceUpdateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileModeRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FolderContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictResolutionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFileModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMergeOptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPathException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplacementContentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplacementTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ManualMergeRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumConflictResolutionEntriesExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MergeOptionRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultipleConflictResolutionEntriesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NameLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PathRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacementContentRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacementTypeRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        operation.traits = {}
      end)
      service.add_operation(:delete_approval_rule_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DeleteApprovalRuleTemplate"
        operation.name = "DeleteApprovalRuleTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApprovalRuleTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApprovalRuleTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleTemplateNameException)
        operation.traits = {}
      end)
      service.add_operation(:delete_branch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DeleteBranch"
        operation.name = "DeleteBranch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBranchInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBranchOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultBranchCannotBeDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:delete_comment_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DeleteCommentContent"
        operation.name = "DeleteCommentContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCommentContentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCommentContentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommentIdException)
        operation.traits = {}
      end)
      service.add_operation(:delete_file, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DeleteFile"
        operation.name = "DeleteFile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameIsTagNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitMessageLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParentCommitIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPathException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NameLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParentCommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParentCommitIdOutdatedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParentCommitIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PathRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:delete_pull_request_approval_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DeletePullRequestApprovalRule"
        operation.name = "DeletePullRequestApprovalRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePullRequestApprovalRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePullRequestApprovalRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CannotDeleteApprovalRuleFromTemplateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestAlreadyClosedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:delete_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DeleteRepository"
        operation.name = "DeleteRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:describe_merge_conflicts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DescribeMergeConflicts"
        operation.name = "DescribeMergeConflicts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMergeConflictsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMergeConflictsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxMergeHunksException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMergeOptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPathException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MergeOptionRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PathRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMergeConflicts.new
      end)
      service.add_operation(:describe_pull_request_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DescribePullRequestEvents"
        operation.name = "DescribePullRequestEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePullRequestEventsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePullRequestEventsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ActorDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidActorArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestEventTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePullRequestEvents.new
      end)
      service.add_operation(:disassociate_approval_rule_template_from_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#DisassociateApprovalRuleTemplateFromRepository"
        operation.name = "DisassociateApprovalRuleTemplateFromRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateApprovalRuleTemplateFromRepositoryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleTemplateNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:evaluate_pull_request_approval_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#EvaluatePullRequestApprovalRules"
        operation.name = "EvaluatePullRequestApprovalRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluatePullRequestApprovalRulesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluatePullRequestApprovalRulesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRevisionIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionNotCurrentException)
        operation.traits = {}
      end)
      service.add_operation(:get_approval_rule_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetApprovalRuleTemplate"
        operation.name = "GetApprovalRuleTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApprovalRuleTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApprovalRuleTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleTemplateNameException)
        operation.traits = {}
      end)
      service.add_operation(:get_blob, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetBlob"
        operation.name = "GetBlob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBlobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBlobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BlobIdDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BlobIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBlobIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:get_branch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetBranch"
        operation.name = "GetBranch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBranchInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBranchOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:get_comment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetComment"
        operation.name = "GetComment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCommentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCommentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommentIdException)
        operation.traits = {}
      end)
      service.add_operation(:get_comment_reactions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetCommentReactions"
        operation.name = "GetCommentReactions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCommentReactionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCommentReactionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommentIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReactionUserArnException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetCommentReactions.new
      end)
      service.add_operation(:get_comments_for_compared_commit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetCommentsForComparedCommit"
        operation.name = "GetCommentsForComparedCommit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCommentsForComparedCommitInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCommentsForComparedCommitOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetCommentsForComparedCommit.new
      end)
      service.add_operation(:get_comments_for_pull_request, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetCommentsForPullRequest"
        operation.name = "GetCommentsForPullRequest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCommentsForPullRequestInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCommentsForPullRequestOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotAssociatedWithPullRequestException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetCommentsForPullRequest.new
      end)
      service.add_operation(:get_commit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetCommit"
        operation.name = "GetCommit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCommitInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCommitOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitIdDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:get_differences, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetDifferences"
        operation.name = "GetDifferences"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDifferencesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDifferencesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPathException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PathDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetDifferences.new
      end)
      service.add_operation(:get_file, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetFile"
        operation.name = "GetFile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPathException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PathRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:get_folder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetFolder"
        operation.name = "GetFolder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFolderInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFolderOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FolderDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPathException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PathRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:get_merge_commit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetMergeCommit"
        operation.name = "GetMergeCommit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMergeCommitInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMergeCommitOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:get_merge_conflicts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetMergeConflicts"
        operation.name = "GetMergeConflicts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMergeConflictsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMergeConflictsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDestinationCommitSpecifierException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxConflictFilesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMergeOptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSourceCommitSpecifierException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MergeOptionRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetMergeConflicts.new
      end)
      service.add_operation(:get_merge_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetMergeOptions"
        operation.name = "GetMergeOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMergeOptionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMergeOptionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        operation.traits = {}
      end)
      service.add_operation(:get_pull_request, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetPullRequest"
        operation.name = "GetPullRequest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPullRequestInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPullRequestOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:get_pull_request_approval_states, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetPullRequestApprovalStates"
        operation.name = "GetPullRequestApprovalStates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPullRequestApprovalStatesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPullRequestApprovalStatesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRevisionIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionIdRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:get_pull_request_override_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetPullRequestOverrideState"
        operation.name = "GetPullRequestOverrideState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPullRequestOverrideStateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPullRequestOverrideStateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRevisionIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionIdRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:get_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetRepository"
        operation.name = "GetRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:get_repository_triggers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#GetRepositoryTriggers"
        operation.name = "GetRepositoryTriggers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryTriggersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryTriggersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:list_approval_rule_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#ListApprovalRuleTemplates"
        operation.name = "ListApprovalRuleTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApprovalRuleTemplatesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApprovalRuleTemplatesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListApprovalRuleTemplates.new
      end)
      service.add_operation(:list_associated_approval_rule_templates_for_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#ListAssociatedApprovalRuleTemplatesForRepository"
        operation.name = "ListAssociatedApprovalRuleTemplatesForRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedApprovalRuleTemplatesForRepositoryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedApprovalRuleTemplatesForRepositoryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListAssociatedApprovalRuleTemplatesForRepository.new
      end)
      service.add_operation(:list_branches, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#ListBranches"
        operation.name = "ListBranches"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBranchesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBranchesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListBranches.new
      end)
      service.add_operation(:list_file_commit_history, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#ListFileCommitHistory"
        operation.name = "ListFileCommitHistory"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFileCommitHistoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFileCommitHistoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFileCommitHistory.new
      end)
      service.add_operation(:list_pull_requests, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#ListPullRequests"
        operation.name = "ListPullRequests"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPullRequestsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPullRequestsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAuthorArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListPullRequests.new
      end)
      service.add_operation(:list_repositories, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#ListRepositories"
        operation.name = "ListRepositories"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoriesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoriesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOrderException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSortByException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRepositories.new
      end)
      service.add_operation(:list_repositories_for_approval_rule_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#ListRepositoriesForApprovalRuleTemplate"
        operation.name = "ListRepositoriesForApprovalRuleTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoriesForApprovalRuleTemplateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoriesForApprovalRuleTemplateOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleTemplateNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListRepositoriesForApprovalRuleTemplate.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:merge_branches_by_fast_forward, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#MergeBranchesByFastForward"
        operation.name = "MergeBranchesByFastForward"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: MergeBranchesByFastForwardInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: MergeBranchesByFastForwardOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameIsTagNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentReferenceUpdateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTargetBranchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ManualMergeRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        operation.traits = {}
      end)
      service.add_operation(:merge_branches_by_squash, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#MergeBranchesBySquash"
        operation.name = "MergeBranchesBySquash"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: MergeBranchesBySquashInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: MergeBranchesBySquashOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameIsTagNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitMessageLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentReferenceUpdateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileModeRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FolderContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictResolutionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFileModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPathException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplacementContentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplacementTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTargetBranchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ManualMergeRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumConflictResolutionEntriesExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultipleConflictResolutionEntriesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NameLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PathRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacementContentRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacementTypeRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        operation.traits = {}
      end)
      service.add_operation(:merge_branches_by_three_way, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#MergeBranchesByThreeWay"
        operation.name = "MergeBranchesByThreeWay"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: MergeBranchesByThreeWayInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: MergeBranchesByThreeWayOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameIsTagNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitMessageLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentReferenceUpdateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileModeRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FolderContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictResolutionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFileModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPathException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplacementContentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplacementTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTargetBranchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ManualMergeRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumConflictResolutionEntriesExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultipleConflictResolutionEntriesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NameLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PathRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacementContentRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacementTypeRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        operation.traits = {}
      end)
      service.add_operation(:merge_pull_request_by_fast_forward, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#MergePullRequestByFastForward"
        operation.name = "MergePullRequestByFastForward"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: MergePullRequestByFastForwardInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: MergePullRequestByFastForwardOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentReferenceUpdateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ManualMergeRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestAlreadyClosedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestApprovalRulesNotSatisfiedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotAssociatedWithPullRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TipOfSourceReferenceIsDifferentException)
        operation.traits = {}
      end)
      service.add_operation(:merge_pull_request_by_squash, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#MergePullRequestBySquash"
        operation.name = "MergePullRequestBySquash"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: MergePullRequestBySquashInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: MergePullRequestBySquashOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitMessageLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentReferenceUpdateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FolderContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictResolutionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFileModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPathException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplacementContentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplacementTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ManualMergeRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumConflictResolutionEntriesExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultipleConflictResolutionEntriesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NameLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PathRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestAlreadyClosedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestApprovalRulesNotSatisfiedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacementContentRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacementTypeRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotAssociatedWithPullRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TipOfSourceReferenceIsDifferentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        operation.traits = {}
      end)
      service.add_operation(:merge_pull_request_by_three_way, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#MergePullRequestByThreeWay"
        operation.name = "MergePullRequestByThreeWay"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: MergePullRequestByThreeWayInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: MergePullRequestByThreeWayOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitMessageLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentReferenceUpdateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FolderContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictResolutionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFileModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPathException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplacementContentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReplacementTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ManualMergeRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumConflictResolutionEntriesExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MultipleConflictResolutionEntriesException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NameLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PathRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestAlreadyClosedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestApprovalRulesNotSatisfiedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacementContentRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReplacementTypeRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotAssociatedWithPullRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TipOfSourceReferenceIsDifferentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        operation.traits = {}
      end)
      service.add_operation(:override_pull_request_approval_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#OverridePullRequestApprovalRules"
        operation.name = "OverridePullRequestApprovalRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: OverridePullRequestApprovalRulesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidOverrideStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRevisionIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OverrideAlreadySetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OverrideStatusRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestAlreadyClosedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionNotCurrentException)
        operation.traits = {}
      end)
      service.add_operation(:post_comment_for_compared_commit, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#PostCommentForComparedCommit"
        operation.name = "PostCommentForComparedCommit"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PostCommentForComparedCommitInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PostCommentForComparedCommitOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BeforeCommitIdAndAfterCommitIdAreSameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentContentRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientRequestTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFileLocationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilePositionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPathException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRelativeFileVersionEnumException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PathDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PathRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:post_comment_for_pull_request, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#PostCommentForPullRequest"
        operation.name = "PostCommentForPullRequest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PostCommentForPullRequestInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PostCommentForPullRequestOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BeforeCommitIdAndAfterCommitIdAreSameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentContentRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientRequestTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFileLocationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFilePositionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPathException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRelativeFileVersionEnumException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PathDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PathRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNotAssociatedWithPullRequestException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:post_comment_reply, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#PostCommentReply"
        operation.name = "PostCommentReply"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PostCommentReplyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PostCommentReplyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestTokenRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentContentRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyParameterMismatchException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidClientRequestTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommentIdException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_comment_reaction, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#PutCommentReaction"
        operation.name = "PutCommentReaction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutCommentReactionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommentIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidReactionValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReactionLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ReactionValueRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:put_file, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#PutFile"
        operation.name = "PutFile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutFileInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutFileOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameIsTagNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommitMessageLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNameConflictsWithFileNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileContentRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FileNameConflictsWithDirectoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FilePathConflictsWithSubmodulePathException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: FolderContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDeletionParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidEmailException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidFileModeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParentCommitIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPathException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NameLengthExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParentCommitDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParentCommitIdOutdatedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ParentCommitIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PathRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SameFileContentException)
        operation.traits = {}
      end)
      service.add_operation(:put_repository_triggers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#PutRepositoryTriggers"
        operation.name = "PutRepositoryTriggers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRepositoryTriggersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRepositoryTriggersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerBranchNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerCustomDataException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerDestinationArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerEventsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumBranchesExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumRepositoryTriggersExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerBranchNameListRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerDestinationArnRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerEventsListRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggersListRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSystemTagUsageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagsMapException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMapRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:test_repository_triggers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#TestRepositoryTriggers"
        operation.name = "TestRepositoryTriggers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TestRepositoryTriggersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TestRepositoryTriggersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerBranchNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerCustomDataException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerDestinationArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerEventsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerRegionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumBranchesExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumRepositoryTriggersExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerBranchNameListRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerDestinationArnRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerEventsListRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggerNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryTriggersListRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidResourceArnException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSystemTagUsageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTagKeysListException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeysListRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TagPolicyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {}
      end)
      service.add_operation(:update_approval_rule_template_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdateApprovalRuleTemplateContent"
        operation.name = "UpdateApprovalRuleTemplateContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApprovalRuleTemplateContentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApprovalRuleTemplateContentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateContentRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleTemplateContentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleTemplateNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRuleContentSha256Exception)
        operation.traits = {}
      end)
      service.add_operation(:update_approval_rule_template_description, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdateApprovalRuleTemplateDescription"
        operation.name = "UpdateApprovalRuleTemplateDescription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApprovalRuleTemplateDescriptionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApprovalRuleTemplateDescriptionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleTemplateDescriptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleTemplateNameException)
        operation.traits = {}
      end)
      service.add_operation(:update_approval_rule_template_name, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdateApprovalRuleTemplateName"
        operation.name = "UpdateApprovalRuleTemplateName"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApprovalRuleTemplateNameInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApprovalRuleTemplateNameOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateNameAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleTemplateNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleTemplateNameException)
        operation.traits = {}
      end)
      service.add_operation(:update_comment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdateComment"
        operation.name = "UpdateComment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCommentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCommentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentContentRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentContentSizeLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentDeletedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CommentNotCreatedByCallerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidCommentIdException)
        operation.traits = {}
      end)
      service.add_operation(:update_default_branch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdateDefaultBranch"
        operation.name = "UpdateDefaultBranch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDefaultBranchInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:update_pull_request_approval_rule_content, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdatePullRequestApprovalRuleContent"
        operation.name = "UpdatePullRequestApprovalRuleContent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePullRequestApprovalRuleContentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePullRequestApprovalRuleContentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleContentRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalRuleNameRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CannotModifyApprovalRuleFromTemplateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleContentException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalRuleNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRuleContentSha256Exception)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestAlreadyClosedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:update_pull_request_approval_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdatePullRequestApprovalState"
        operation.name = "UpdatePullRequestApprovalState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePullRequestApprovalStateInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalStateRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidApprovalStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRevisionIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumNumberOfApprovalsExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestAlreadyClosedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestCannotBeApprovedByAuthorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionNotCurrentException)
        operation.traits = {}
      end)
      service.add_operation(:update_pull_request_description, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdatePullRequestDescription"
        operation.name = "UpdatePullRequestDescription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePullRequestDescriptionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePullRequestDescriptionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidDescriptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestAlreadyClosedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:update_pull_request_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdatePullRequestStatus"
        operation.name = "UpdatePullRequestStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePullRequestStatusInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePullRequestStatusOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestStatusUpdateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestStatusRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:update_pull_request_title, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdatePullRequestTitle"
        operation.name = "UpdatePullRequestTitle"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePullRequestTitleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePullRequestTitleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTitleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestAlreadyClosedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TitleRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:update_repository_description, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdateRepositoryDescription"
        operation.name = "UpdateRepositoryDescription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRepositoryDescriptionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryDescriptionException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:update_repository_encryption_key, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdateRepositoryEncryptionKey"
        operation.name = "UpdateRepositoryEncryptionKey"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRepositoryEncryptionKeyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRepositoryEncryptionKeyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyInvalidIdException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyInvalidUsageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyRequiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)
      service.add_operation(:update_repository_name, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecommit#UpdateRepositoryName"
        operation.name = "UpdateRepositoryName"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRepositoryNameInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
