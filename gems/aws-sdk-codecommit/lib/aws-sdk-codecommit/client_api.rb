# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeCommit
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountId = Shapes::StringShape.new(name: 'AccountId')
    ActorDoesNotExistException = Shapes::StructureShape.new(name: 'ActorDoesNotExistException')
    AdditionalData = Shapes::StringShape.new(name: 'AdditionalData')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AuthorDoesNotExistException = Shapes::StructureShape.new(name: 'AuthorDoesNotExistException')
    BatchDescribeMergeConflictsError = Shapes::StructureShape.new(name: 'BatchDescribeMergeConflictsError')
    BatchDescribeMergeConflictsErrors = Shapes::ListShape.new(name: 'BatchDescribeMergeConflictsErrors')
    BatchDescribeMergeConflictsInput = Shapes::StructureShape.new(name: 'BatchDescribeMergeConflictsInput')
    BatchDescribeMergeConflictsOutput = Shapes::StructureShape.new(name: 'BatchDescribeMergeConflictsOutput')
    BatchGetRepositoriesInput = Shapes::StructureShape.new(name: 'BatchGetRepositoriesInput')
    BatchGetRepositoriesOutput = Shapes::StructureShape.new(name: 'BatchGetRepositoriesOutput')
    BeforeCommitIdAndAfterCommitIdAreSameException = Shapes::StructureShape.new(name: 'BeforeCommitIdAndAfterCommitIdAreSameException')
    BlobIdDoesNotExistException = Shapes::StructureShape.new(name: 'BlobIdDoesNotExistException')
    BlobIdRequiredException = Shapes::StructureShape.new(name: 'BlobIdRequiredException')
    BlobMetadata = Shapes::StructureShape.new(name: 'BlobMetadata')
    BranchDoesNotExistException = Shapes::StructureShape.new(name: 'BranchDoesNotExistException')
    BranchInfo = Shapes::StructureShape.new(name: 'BranchInfo')
    BranchName = Shapes::StringShape.new(name: 'BranchName')
    BranchNameExistsException = Shapes::StructureShape.new(name: 'BranchNameExistsException')
    BranchNameIsTagNameException = Shapes::StructureShape.new(name: 'BranchNameIsTagNameException')
    BranchNameList = Shapes::ListShape.new(name: 'BranchNameList')
    BranchNameRequiredException = Shapes::StructureShape.new(name: 'BranchNameRequiredException')
    CapitalBoolean = Shapes::BooleanShape.new(name: 'CapitalBoolean')
    ChangeTypeEnum = Shapes::StringShape.new(name: 'ChangeTypeEnum')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ClientRequestTokenRequiredException = Shapes::StructureShape.new(name: 'ClientRequestTokenRequiredException')
    CloneUrlHttp = Shapes::StringShape.new(name: 'CloneUrlHttp')
    CloneUrlSsh = Shapes::StringShape.new(name: 'CloneUrlSsh')
    Comment = Shapes::StructureShape.new(name: 'Comment')
    CommentContentRequiredException = Shapes::StructureShape.new(name: 'CommentContentRequiredException')
    CommentContentSizeLimitExceededException = Shapes::StructureShape.new(name: 'CommentContentSizeLimitExceededException')
    CommentDeletedException = Shapes::StructureShape.new(name: 'CommentDeletedException')
    CommentDoesNotExistException = Shapes::StructureShape.new(name: 'CommentDoesNotExistException')
    CommentId = Shapes::StringShape.new(name: 'CommentId')
    CommentIdRequiredException = Shapes::StructureShape.new(name: 'CommentIdRequiredException')
    CommentNotCreatedByCallerException = Shapes::StructureShape.new(name: 'CommentNotCreatedByCallerException')
    Comments = Shapes::ListShape.new(name: 'Comments')
    CommentsForComparedCommit = Shapes::StructureShape.new(name: 'CommentsForComparedCommit')
    CommentsForComparedCommitData = Shapes::ListShape.new(name: 'CommentsForComparedCommitData')
    CommentsForPullRequest = Shapes::StructureShape.new(name: 'CommentsForPullRequest')
    CommentsForPullRequestData = Shapes::ListShape.new(name: 'CommentsForPullRequestData')
    Commit = Shapes::StructureShape.new(name: 'Commit')
    CommitDoesNotExistException = Shapes::StructureShape.new(name: 'CommitDoesNotExistException')
    CommitId = Shapes::StringShape.new(name: 'CommitId')
    CommitIdDoesNotExistException = Shapes::StructureShape.new(name: 'CommitIdDoesNotExistException')
    CommitIdRequiredException = Shapes::StructureShape.new(name: 'CommitIdRequiredException')
    CommitMessageLengthExceededException = Shapes::StructureShape.new(name: 'CommitMessageLengthExceededException')
    CommitName = Shapes::StringShape.new(name: 'CommitName')
    CommitRequiredException = Shapes::StructureShape.new(name: 'CommitRequiredException')
    Conflict = Shapes::StructureShape.new(name: 'Conflict')
    ConflictDetailLevelTypeEnum = Shapes::StringShape.new(name: 'ConflictDetailLevelTypeEnum')
    ConflictMetadata = Shapes::StructureShape.new(name: 'ConflictMetadata')
    ConflictMetadataList = Shapes::ListShape.new(name: 'ConflictMetadataList')
    ConflictResolution = Shapes::StructureShape.new(name: 'ConflictResolution')
    ConflictResolutionStrategyTypeEnum = Shapes::StringShape.new(name: 'ConflictResolutionStrategyTypeEnum')
    Conflicts = Shapes::ListShape.new(name: 'Conflicts')
    Content = Shapes::StringShape.new(name: 'Content')
    CreateBranchInput = Shapes::StructureShape.new(name: 'CreateBranchInput')
    CreateCommitInput = Shapes::StructureShape.new(name: 'CreateCommitInput')
    CreateCommitOutput = Shapes::StructureShape.new(name: 'CreateCommitOutput')
    CreatePullRequestInput = Shapes::StructureShape.new(name: 'CreatePullRequestInput')
    CreatePullRequestOutput = Shapes::StructureShape.new(name: 'CreatePullRequestOutput')
    CreateRepositoryInput = Shapes::StructureShape.new(name: 'CreateRepositoryInput')
    CreateRepositoryOutput = Shapes::StructureShape.new(name: 'CreateRepositoryOutput')
    CreateUnreferencedMergeCommitInput = Shapes::StructureShape.new(name: 'CreateUnreferencedMergeCommitInput')
    CreateUnreferencedMergeCommitOutput = Shapes::StructureShape.new(name: 'CreateUnreferencedMergeCommitOutput')
    CreationDate = Shapes::TimestampShape.new(name: 'CreationDate')
    Date = Shapes::StringShape.new(name: 'Date')
    DefaultBranchCannotBeDeletedException = Shapes::StructureShape.new(name: 'DefaultBranchCannotBeDeletedException')
    DeleteBranchInput = Shapes::StructureShape.new(name: 'DeleteBranchInput')
    DeleteBranchOutput = Shapes::StructureShape.new(name: 'DeleteBranchOutput')
    DeleteCommentContentInput = Shapes::StructureShape.new(name: 'DeleteCommentContentInput')
    DeleteCommentContentOutput = Shapes::StructureShape.new(name: 'DeleteCommentContentOutput')
    DeleteFileEntries = Shapes::ListShape.new(name: 'DeleteFileEntries')
    DeleteFileEntry = Shapes::StructureShape.new(name: 'DeleteFileEntry')
    DeleteFileInput = Shapes::StructureShape.new(name: 'DeleteFileInput')
    DeleteFileOutput = Shapes::StructureShape.new(name: 'DeleteFileOutput')
    DeleteRepositoryInput = Shapes::StructureShape.new(name: 'DeleteRepositoryInput')
    DeleteRepositoryOutput = Shapes::StructureShape.new(name: 'DeleteRepositoryOutput')
    DescribeMergeConflictsInput = Shapes::StructureShape.new(name: 'DescribeMergeConflictsInput')
    DescribeMergeConflictsOutput = Shapes::StructureShape.new(name: 'DescribeMergeConflictsOutput')
    DescribePullRequestEventsInput = Shapes::StructureShape.new(name: 'DescribePullRequestEventsInput')
    DescribePullRequestEventsOutput = Shapes::StructureShape.new(name: 'DescribePullRequestEventsOutput')
    Description = Shapes::StringShape.new(name: 'Description')
    Difference = Shapes::StructureShape.new(name: 'Difference')
    DifferenceList = Shapes::ListShape.new(name: 'DifferenceList')
    DirectoryNameConflictsWithFileNameException = Shapes::StructureShape.new(name: 'DirectoryNameConflictsWithFileNameException')
    Email = Shapes::StringShape.new(name: 'Email')
    EncryptionIntegrityChecksFailedException = Shapes::StructureShape.new(name: 'EncryptionIntegrityChecksFailedException')
    EncryptionKeyAccessDeniedException = Shapes::StructureShape.new(name: 'EncryptionKeyAccessDeniedException')
    EncryptionKeyDisabledException = Shapes::StructureShape.new(name: 'EncryptionKeyDisabledException')
    EncryptionKeyNotFoundException = Shapes::StructureShape.new(name: 'EncryptionKeyNotFoundException')
    EncryptionKeyUnavailableException = Shapes::StructureShape.new(name: 'EncryptionKeyUnavailableException')
    EventDate = Shapes::TimestampShape.new(name: 'EventDate')
    ExceptionName = Shapes::StringShape.new(name: 'ExceptionName')
    File = Shapes::StructureShape.new(name: 'File')
    FileContent = Shapes::BlobShape.new(name: 'FileContent')
    FileContentAndSourceFileSpecifiedException = Shapes::StructureShape.new(name: 'FileContentAndSourceFileSpecifiedException')
    FileContentRequiredException = Shapes::StructureShape.new(name: 'FileContentRequiredException')
    FileContentSizeLimitExceededException = Shapes::StructureShape.new(name: 'FileContentSizeLimitExceededException')
    FileDoesNotExistException = Shapes::StructureShape.new(name: 'FileDoesNotExistException')
    FileEntryRequiredException = Shapes::StructureShape.new(name: 'FileEntryRequiredException')
    FileList = Shapes::ListShape.new(name: 'FileList')
    FileMetadata = Shapes::StructureShape.new(name: 'FileMetadata')
    FileModeRequiredException = Shapes::StructureShape.new(name: 'FileModeRequiredException')
    FileModeTypeEnum = Shapes::StringShape.new(name: 'FileModeTypeEnum')
    FileModes = Shapes::StructureShape.new(name: 'FileModes')
    FileNameConflictsWithDirectoryNameException = Shapes::StructureShape.new(name: 'FileNameConflictsWithDirectoryNameException')
    FilePathConflictsWithSubmodulePathException = Shapes::StructureShape.new(name: 'FilePathConflictsWithSubmodulePathException')
    FilePaths = Shapes::ListShape.new(name: 'FilePaths')
    FileSize = Shapes::IntegerShape.new(name: 'FileSize')
    FileSizes = Shapes::StructureShape.new(name: 'FileSizes')
    FileTooLargeException = Shapes::StructureShape.new(name: 'FileTooLargeException')
    FilesMetadata = Shapes::ListShape.new(name: 'FilesMetadata')
    Folder = Shapes::StructureShape.new(name: 'Folder')
    FolderContentSizeLimitExceededException = Shapes::StructureShape.new(name: 'FolderContentSizeLimitExceededException')
    FolderDoesNotExistException = Shapes::StructureShape.new(name: 'FolderDoesNotExistException')
    FolderList = Shapes::ListShape.new(name: 'FolderList')
    GetBlobInput = Shapes::StructureShape.new(name: 'GetBlobInput')
    GetBlobOutput = Shapes::StructureShape.new(name: 'GetBlobOutput')
    GetBranchInput = Shapes::StructureShape.new(name: 'GetBranchInput')
    GetBranchOutput = Shapes::StructureShape.new(name: 'GetBranchOutput')
    GetCommentInput = Shapes::StructureShape.new(name: 'GetCommentInput')
    GetCommentOutput = Shapes::StructureShape.new(name: 'GetCommentOutput')
    GetCommentsForComparedCommitInput = Shapes::StructureShape.new(name: 'GetCommentsForComparedCommitInput')
    GetCommentsForComparedCommitOutput = Shapes::StructureShape.new(name: 'GetCommentsForComparedCommitOutput')
    GetCommentsForPullRequestInput = Shapes::StructureShape.new(name: 'GetCommentsForPullRequestInput')
    GetCommentsForPullRequestOutput = Shapes::StructureShape.new(name: 'GetCommentsForPullRequestOutput')
    GetCommitInput = Shapes::StructureShape.new(name: 'GetCommitInput')
    GetCommitOutput = Shapes::StructureShape.new(name: 'GetCommitOutput')
    GetDifferencesInput = Shapes::StructureShape.new(name: 'GetDifferencesInput')
    GetDifferencesOutput = Shapes::StructureShape.new(name: 'GetDifferencesOutput')
    GetFileInput = Shapes::StructureShape.new(name: 'GetFileInput')
    GetFileOutput = Shapes::StructureShape.new(name: 'GetFileOutput')
    GetFolderInput = Shapes::StructureShape.new(name: 'GetFolderInput')
    GetFolderOutput = Shapes::StructureShape.new(name: 'GetFolderOutput')
    GetMergeCommitInput = Shapes::StructureShape.new(name: 'GetMergeCommitInput')
    GetMergeCommitOutput = Shapes::StructureShape.new(name: 'GetMergeCommitOutput')
    GetMergeConflictsInput = Shapes::StructureShape.new(name: 'GetMergeConflictsInput')
    GetMergeConflictsOutput = Shapes::StructureShape.new(name: 'GetMergeConflictsOutput')
    GetMergeOptionsInput = Shapes::StructureShape.new(name: 'GetMergeOptionsInput')
    GetMergeOptionsOutput = Shapes::StructureShape.new(name: 'GetMergeOptionsOutput')
    GetPullRequestInput = Shapes::StructureShape.new(name: 'GetPullRequestInput')
    GetPullRequestOutput = Shapes::StructureShape.new(name: 'GetPullRequestOutput')
    GetRepositoryInput = Shapes::StructureShape.new(name: 'GetRepositoryInput')
    GetRepositoryOutput = Shapes::StructureShape.new(name: 'GetRepositoryOutput')
    GetRepositoryTriggersInput = Shapes::StructureShape.new(name: 'GetRepositoryTriggersInput')
    GetRepositoryTriggersOutput = Shapes::StructureShape.new(name: 'GetRepositoryTriggersOutput')
    HunkContent = Shapes::StringShape.new(name: 'HunkContent')
    IdempotencyParameterMismatchException = Shapes::StructureShape.new(name: 'IdempotencyParameterMismatchException')
    InvalidActorArnException = Shapes::StructureShape.new(name: 'InvalidActorArnException')
    InvalidAuthorArnException = Shapes::StructureShape.new(name: 'InvalidAuthorArnException')
    InvalidBlobIdException = Shapes::StructureShape.new(name: 'InvalidBlobIdException')
    InvalidBranchNameException = Shapes::StructureShape.new(name: 'InvalidBranchNameException')
    InvalidClientRequestTokenException = Shapes::StructureShape.new(name: 'InvalidClientRequestTokenException')
    InvalidCommentIdException = Shapes::StructureShape.new(name: 'InvalidCommentIdException')
    InvalidCommitException = Shapes::StructureShape.new(name: 'InvalidCommitException')
    InvalidCommitIdException = Shapes::StructureShape.new(name: 'InvalidCommitIdException')
    InvalidConflictDetailLevelException = Shapes::StructureShape.new(name: 'InvalidConflictDetailLevelException')
    InvalidConflictResolutionException = Shapes::StructureShape.new(name: 'InvalidConflictResolutionException')
    InvalidConflictResolutionStrategyException = Shapes::StructureShape.new(name: 'InvalidConflictResolutionStrategyException')
    InvalidContinuationTokenException = Shapes::StructureShape.new(name: 'InvalidContinuationTokenException')
    InvalidDeletionParameterException = Shapes::StructureShape.new(name: 'InvalidDeletionParameterException')
    InvalidDescriptionException = Shapes::StructureShape.new(name: 'InvalidDescriptionException')
    InvalidDestinationCommitSpecifierException = Shapes::StructureShape.new(name: 'InvalidDestinationCommitSpecifierException')
    InvalidEmailException = Shapes::StructureShape.new(name: 'InvalidEmailException')
    InvalidFileLocationException = Shapes::StructureShape.new(name: 'InvalidFileLocationException')
    InvalidFileModeException = Shapes::StructureShape.new(name: 'InvalidFileModeException')
    InvalidFilePositionException = Shapes::StructureShape.new(name: 'InvalidFilePositionException')
    InvalidMaxConflictFilesException = Shapes::StructureShape.new(name: 'InvalidMaxConflictFilesException')
    InvalidMaxMergeHunksException = Shapes::StructureShape.new(name: 'InvalidMaxMergeHunksException')
    InvalidMaxResultsException = Shapes::StructureShape.new(name: 'InvalidMaxResultsException')
    InvalidMergeOptionException = Shapes::StructureShape.new(name: 'InvalidMergeOptionException')
    InvalidOrderException = Shapes::StructureShape.new(name: 'InvalidOrderException')
    InvalidParentCommitIdException = Shapes::StructureShape.new(name: 'InvalidParentCommitIdException')
    InvalidPathException = Shapes::StructureShape.new(name: 'InvalidPathException')
    InvalidPullRequestEventTypeException = Shapes::StructureShape.new(name: 'InvalidPullRequestEventTypeException')
    InvalidPullRequestIdException = Shapes::StructureShape.new(name: 'InvalidPullRequestIdException')
    InvalidPullRequestStatusException = Shapes::StructureShape.new(name: 'InvalidPullRequestStatusException')
    InvalidPullRequestStatusUpdateException = Shapes::StructureShape.new(name: 'InvalidPullRequestStatusUpdateException')
    InvalidReferenceNameException = Shapes::StructureShape.new(name: 'InvalidReferenceNameException')
    InvalidRelativeFileVersionEnumException = Shapes::StructureShape.new(name: 'InvalidRelativeFileVersionEnumException')
    InvalidReplacementContentException = Shapes::StructureShape.new(name: 'InvalidReplacementContentException')
    InvalidReplacementTypeException = Shapes::StructureShape.new(name: 'InvalidReplacementTypeException')
    InvalidRepositoryDescriptionException = Shapes::StructureShape.new(name: 'InvalidRepositoryDescriptionException')
    InvalidRepositoryNameException = Shapes::StructureShape.new(name: 'InvalidRepositoryNameException')
    InvalidRepositoryTriggerBranchNameException = Shapes::StructureShape.new(name: 'InvalidRepositoryTriggerBranchNameException')
    InvalidRepositoryTriggerCustomDataException = Shapes::StructureShape.new(name: 'InvalidRepositoryTriggerCustomDataException')
    InvalidRepositoryTriggerDestinationArnException = Shapes::StructureShape.new(name: 'InvalidRepositoryTriggerDestinationArnException')
    InvalidRepositoryTriggerEventsException = Shapes::StructureShape.new(name: 'InvalidRepositoryTriggerEventsException')
    InvalidRepositoryTriggerNameException = Shapes::StructureShape.new(name: 'InvalidRepositoryTriggerNameException')
    InvalidRepositoryTriggerRegionException = Shapes::StructureShape.new(name: 'InvalidRepositoryTriggerRegionException')
    InvalidResourceArnException = Shapes::StructureShape.new(name: 'InvalidResourceArnException')
    InvalidSortByException = Shapes::StructureShape.new(name: 'InvalidSortByException')
    InvalidSourceCommitSpecifierException = Shapes::StructureShape.new(name: 'InvalidSourceCommitSpecifierException')
    InvalidSystemTagUsageException = Shapes::StructureShape.new(name: 'InvalidSystemTagUsageException')
    InvalidTagKeysListException = Shapes::StructureShape.new(name: 'InvalidTagKeysListException')
    InvalidTagsMapException = Shapes::StructureShape.new(name: 'InvalidTagsMapException')
    InvalidTargetBranchException = Shapes::StructureShape.new(name: 'InvalidTargetBranchException')
    InvalidTargetException = Shapes::StructureShape.new(name: 'InvalidTargetException')
    InvalidTargetsException = Shapes::StructureShape.new(name: 'InvalidTargetsException')
    InvalidTitleException = Shapes::StructureShape.new(name: 'InvalidTitleException')
    IsBinaryFile = Shapes::StructureShape.new(name: 'IsBinaryFile')
    IsCommentDeleted = Shapes::BooleanShape.new(name: 'IsCommentDeleted')
    IsContentConflict = Shapes::BooleanShape.new(name: 'IsContentConflict')
    IsFileModeConflict = Shapes::BooleanShape.new(name: 'IsFileModeConflict')
    IsHunkConflict = Shapes::BooleanShape.new(name: 'IsHunkConflict')
    IsMergeable = Shapes::BooleanShape.new(name: 'IsMergeable')
    IsMerged = Shapes::BooleanShape.new(name: 'IsMerged')
    IsMove = Shapes::BooleanShape.new(name: 'IsMove')
    IsObjectTypeConflict = Shapes::BooleanShape.new(name: 'IsObjectTypeConflict')
    KeepEmptyFolders = Shapes::BooleanShape.new(name: 'KeepEmptyFolders')
    LastModifiedDate = Shapes::TimestampShape.new(name: 'LastModifiedDate')
    Limit = Shapes::IntegerShape.new(name: 'Limit')
    LineNumber = Shapes::IntegerShape.new(name: 'LineNumber')
    ListBranchesInput = Shapes::StructureShape.new(name: 'ListBranchesInput')
    ListBranchesOutput = Shapes::StructureShape.new(name: 'ListBranchesOutput')
    ListPullRequestsInput = Shapes::StructureShape.new(name: 'ListPullRequestsInput')
    ListPullRequestsOutput = Shapes::StructureShape.new(name: 'ListPullRequestsOutput')
    ListRepositoriesInput = Shapes::StructureShape.new(name: 'ListRepositoriesInput')
    ListRepositoriesOutput = Shapes::StructureShape.new(name: 'ListRepositoriesOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    Location = Shapes::StructureShape.new(name: 'Location')
    ManualMergeRequiredException = Shapes::StructureShape.new(name: 'ManualMergeRequiredException')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumBranchesExceededException = Shapes::StructureShape.new(name: 'MaximumBranchesExceededException')
    MaximumConflictResolutionEntriesExceededException = Shapes::StructureShape.new(name: 'MaximumConflictResolutionEntriesExceededException')
    MaximumFileContentToLoadExceededException = Shapes::StructureShape.new(name: 'MaximumFileContentToLoadExceededException')
    MaximumFileEntriesExceededException = Shapes::StructureShape.new(name: 'MaximumFileEntriesExceededException')
    MaximumItemsToCompareExceededException = Shapes::StructureShape.new(name: 'MaximumItemsToCompareExceededException')
    MaximumOpenPullRequestsExceededException = Shapes::StructureShape.new(name: 'MaximumOpenPullRequestsExceededException')
    MaximumRepositoryNamesExceededException = Shapes::StructureShape.new(name: 'MaximumRepositoryNamesExceededException')
    MaximumRepositoryTriggersExceededException = Shapes::StructureShape.new(name: 'MaximumRepositoryTriggersExceededException')
    MergeBranchesByFastForwardInput = Shapes::StructureShape.new(name: 'MergeBranchesByFastForwardInput')
    MergeBranchesByFastForwardOutput = Shapes::StructureShape.new(name: 'MergeBranchesByFastForwardOutput')
    MergeBranchesBySquashInput = Shapes::StructureShape.new(name: 'MergeBranchesBySquashInput')
    MergeBranchesBySquashOutput = Shapes::StructureShape.new(name: 'MergeBranchesBySquashOutput')
    MergeBranchesByThreeWayInput = Shapes::StructureShape.new(name: 'MergeBranchesByThreeWayInput')
    MergeBranchesByThreeWayOutput = Shapes::StructureShape.new(name: 'MergeBranchesByThreeWayOutput')
    MergeHunk = Shapes::StructureShape.new(name: 'MergeHunk')
    MergeHunkDetail = Shapes::StructureShape.new(name: 'MergeHunkDetail')
    MergeHunks = Shapes::ListShape.new(name: 'MergeHunks')
    MergeMetadata = Shapes::StructureShape.new(name: 'MergeMetadata')
    MergeOperations = Shapes::StructureShape.new(name: 'MergeOperations')
    MergeOptionRequiredException = Shapes::StructureShape.new(name: 'MergeOptionRequiredException')
    MergeOptionTypeEnum = Shapes::StringShape.new(name: 'MergeOptionTypeEnum')
    MergeOptions = Shapes::ListShape.new(name: 'MergeOptions')
    MergePullRequestByFastForwardInput = Shapes::StructureShape.new(name: 'MergePullRequestByFastForwardInput')
    MergePullRequestByFastForwardOutput = Shapes::StructureShape.new(name: 'MergePullRequestByFastForwardOutput')
    MergePullRequestBySquashInput = Shapes::StructureShape.new(name: 'MergePullRequestBySquashInput')
    MergePullRequestBySquashOutput = Shapes::StructureShape.new(name: 'MergePullRequestBySquashOutput')
    MergePullRequestByThreeWayInput = Shapes::StructureShape.new(name: 'MergePullRequestByThreeWayInput')
    MergePullRequestByThreeWayOutput = Shapes::StructureShape.new(name: 'MergePullRequestByThreeWayOutput')
    Message = Shapes::StringShape.new(name: 'Message')
    Mode = Shapes::StringShape.new(name: 'Mode')
    MultipleConflictResolutionEntriesException = Shapes::StructureShape.new(name: 'MultipleConflictResolutionEntriesException')
    MultipleRepositoriesInPullRequestException = Shapes::StructureShape.new(name: 'MultipleRepositoriesInPullRequestException')
    Name = Shapes::StringShape.new(name: 'Name')
    NameLengthExceededException = Shapes::StructureShape.new(name: 'NameLengthExceededException')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NoChangeException = Shapes::StructureShape.new(name: 'NoChangeException')
    NumberOfConflicts = Shapes::IntegerShape.new(name: 'NumberOfConflicts')
    ObjectId = Shapes::StringShape.new(name: 'ObjectId')
    ObjectSize = Shapes::IntegerShape.new(name: 'ObjectSize')
    ObjectTypeEnum = Shapes::StringShape.new(name: 'ObjectTypeEnum')
    ObjectTypes = Shapes::StructureShape.new(name: 'ObjectTypes')
    OrderEnum = Shapes::StringShape.new(name: 'OrderEnum')
    ParentCommitDoesNotExistException = Shapes::StructureShape.new(name: 'ParentCommitDoesNotExistException')
    ParentCommitIdOutdatedException = Shapes::StructureShape.new(name: 'ParentCommitIdOutdatedException')
    ParentCommitIdRequiredException = Shapes::StructureShape.new(name: 'ParentCommitIdRequiredException')
    ParentList = Shapes::ListShape.new(name: 'ParentList')
    Path = Shapes::StringShape.new(name: 'Path')
    PathDoesNotExistException = Shapes::StructureShape.new(name: 'PathDoesNotExistException')
    PathRequiredException = Shapes::StructureShape.new(name: 'PathRequiredException')
    Position = Shapes::IntegerShape.new(name: 'Position')
    PostCommentForComparedCommitInput = Shapes::StructureShape.new(name: 'PostCommentForComparedCommitInput')
    PostCommentForComparedCommitOutput = Shapes::StructureShape.new(name: 'PostCommentForComparedCommitOutput')
    PostCommentForPullRequestInput = Shapes::StructureShape.new(name: 'PostCommentForPullRequestInput')
    PostCommentForPullRequestOutput = Shapes::StructureShape.new(name: 'PostCommentForPullRequestOutput')
    PostCommentReplyInput = Shapes::StructureShape.new(name: 'PostCommentReplyInput')
    PostCommentReplyOutput = Shapes::StructureShape.new(name: 'PostCommentReplyOutput')
    PullRequest = Shapes::StructureShape.new(name: 'PullRequest')
    PullRequestAlreadyClosedException = Shapes::StructureShape.new(name: 'PullRequestAlreadyClosedException')
    PullRequestCreatedEventMetadata = Shapes::StructureShape.new(name: 'PullRequestCreatedEventMetadata')
    PullRequestDoesNotExistException = Shapes::StructureShape.new(name: 'PullRequestDoesNotExistException')
    PullRequestEvent = Shapes::StructureShape.new(name: 'PullRequestEvent')
    PullRequestEventList = Shapes::ListShape.new(name: 'PullRequestEventList')
    PullRequestEventType = Shapes::StringShape.new(name: 'PullRequestEventType')
    PullRequestId = Shapes::StringShape.new(name: 'PullRequestId')
    PullRequestIdList = Shapes::ListShape.new(name: 'PullRequestIdList')
    PullRequestIdRequiredException = Shapes::StructureShape.new(name: 'PullRequestIdRequiredException')
    PullRequestMergedStateChangedEventMetadata = Shapes::StructureShape.new(name: 'PullRequestMergedStateChangedEventMetadata')
    PullRequestSourceReferenceUpdatedEventMetadata = Shapes::StructureShape.new(name: 'PullRequestSourceReferenceUpdatedEventMetadata')
    PullRequestStatusChangedEventMetadata = Shapes::StructureShape.new(name: 'PullRequestStatusChangedEventMetadata')
    PullRequestStatusEnum = Shapes::StringShape.new(name: 'PullRequestStatusEnum')
    PullRequestStatusRequiredException = Shapes::StructureShape.new(name: 'PullRequestStatusRequiredException')
    PullRequestTarget = Shapes::StructureShape.new(name: 'PullRequestTarget')
    PullRequestTargetList = Shapes::ListShape.new(name: 'PullRequestTargetList')
    PutFileEntries = Shapes::ListShape.new(name: 'PutFileEntries')
    PutFileEntry = Shapes::StructureShape.new(name: 'PutFileEntry')
    PutFileEntryConflictException = Shapes::StructureShape.new(name: 'PutFileEntryConflictException')
    PutFileInput = Shapes::StructureShape.new(name: 'PutFileInput')
    PutFileOutput = Shapes::StructureShape.new(name: 'PutFileOutput')
    PutRepositoryTriggersInput = Shapes::StructureShape.new(name: 'PutRepositoryTriggersInput')
    PutRepositoryTriggersOutput = Shapes::StructureShape.new(name: 'PutRepositoryTriggersOutput')
    ReferenceDoesNotExistException = Shapes::StructureShape.new(name: 'ReferenceDoesNotExistException')
    ReferenceName = Shapes::StringShape.new(name: 'ReferenceName')
    ReferenceNameRequiredException = Shapes::StructureShape.new(name: 'ReferenceNameRequiredException')
    ReferenceTypeNotSupportedException = Shapes::StructureShape.new(name: 'ReferenceTypeNotSupportedException')
    RelativeFileVersionEnum = Shapes::StringShape.new(name: 'RelativeFileVersionEnum')
    ReplaceContentEntries = Shapes::ListShape.new(name: 'ReplaceContentEntries')
    ReplaceContentEntry = Shapes::StructureShape.new(name: 'ReplaceContentEntry')
    ReplacementContentRequiredException = Shapes::StructureShape.new(name: 'ReplacementContentRequiredException')
    ReplacementTypeEnum = Shapes::StringShape.new(name: 'ReplacementTypeEnum')
    ReplacementTypeRequiredException = Shapes::StructureShape.new(name: 'ReplacementTypeRequiredException')
    RepositoryDescription = Shapes::StringShape.new(name: 'RepositoryDescription')
    RepositoryDoesNotExistException = Shapes::StructureShape.new(name: 'RepositoryDoesNotExistException')
    RepositoryId = Shapes::StringShape.new(name: 'RepositoryId')
    RepositoryLimitExceededException = Shapes::StructureShape.new(name: 'RepositoryLimitExceededException')
    RepositoryMetadata = Shapes::StructureShape.new(name: 'RepositoryMetadata')
    RepositoryMetadataList = Shapes::ListShape.new(name: 'RepositoryMetadataList')
    RepositoryName = Shapes::StringShape.new(name: 'RepositoryName')
    RepositoryNameExistsException = Shapes::StructureShape.new(name: 'RepositoryNameExistsException')
    RepositoryNameIdPair = Shapes::StructureShape.new(name: 'RepositoryNameIdPair')
    RepositoryNameIdPairList = Shapes::ListShape.new(name: 'RepositoryNameIdPairList')
    RepositoryNameList = Shapes::ListShape.new(name: 'RepositoryNameList')
    RepositoryNameRequiredException = Shapes::StructureShape.new(name: 'RepositoryNameRequiredException')
    RepositoryNamesRequiredException = Shapes::StructureShape.new(name: 'RepositoryNamesRequiredException')
    RepositoryNotAssociatedWithPullRequestException = Shapes::StructureShape.new(name: 'RepositoryNotAssociatedWithPullRequestException')
    RepositoryNotFoundList = Shapes::ListShape.new(name: 'RepositoryNotFoundList')
    RepositoryTrigger = Shapes::StructureShape.new(name: 'RepositoryTrigger')
    RepositoryTriggerBranchNameListRequiredException = Shapes::StructureShape.new(name: 'RepositoryTriggerBranchNameListRequiredException')
    RepositoryTriggerCustomData = Shapes::StringShape.new(name: 'RepositoryTriggerCustomData')
    RepositoryTriggerDestinationArnRequiredException = Shapes::StructureShape.new(name: 'RepositoryTriggerDestinationArnRequiredException')
    RepositoryTriggerEventEnum = Shapes::StringShape.new(name: 'RepositoryTriggerEventEnum')
    RepositoryTriggerEventList = Shapes::ListShape.new(name: 'RepositoryTriggerEventList')
    RepositoryTriggerEventsListRequiredException = Shapes::StructureShape.new(name: 'RepositoryTriggerEventsListRequiredException')
    RepositoryTriggerExecutionFailure = Shapes::StructureShape.new(name: 'RepositoryTriggerExecutionFailure')
    RepositoryTriggerExecutionFailureList = Shapes::ListShape.new(name: 'RepositoryTriggerExecutionFailureList')
    RepositoryTriggerExecutionFailureMessage = Shapes::StringShape.new(name: 'RepositoryTriggerExecutionFailureMessage')
    RepositoryTriggerName = Shapes::StringShape.new(name: 'RepositoryTriggerName')
    RepositoryTriggerNameList = Shapes::ListShape.new(name: 'RepositoryTriggerNameList')
    RepositoryTriggerNameRequiredException = Shapes::StructureShape.new(name: 'RepositoryTriggerNameRequiredException')
    RepositoryTriggersConfigurationId = Shapes::StringShape.new(name: 'RepositoryTriggersConfigurationId')
    RepositoryTriggersList = Shapes::ListShape.new(name: 'RepositoryTriggersList')
    RepositoryTriggersListRequiredException = Shapes::StructureShape.new(name: 'RepositoryTriggersListRequiredException')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceArnRequiredException = Shapes::StructureShape.new(name: 'ResourceArnRequiredException')
    RestrictedSourceFileException = Shapes::StructureShape.new(name: 'RestrictedSourceFileException')
    SameFileContentException = Shapes::StructureShape.new(name: 'SameFileContentException')
    SamePathRequestException = Shapes::StructureShape.new(name: 'SamePathRequestException')
    SetFileModeEntries = Shapes::ListShape.new(name: 'SetFileModeEntries')
    SetFileModeEntry = Shapes::StructureShape.new(name: 'SetFileModeEntry')
    SortByEnum = Shapes::StringShape.new(name: 'SortByEnum')
    SourceAndDestinationAreSameException = Shapes::StructureShape.new(name: 'SourceAndDestinationAreSameException')
    SourceFileOrContentRequiredException = Shapes::StructureShape.new(name: 'SourceFileOrContentRequiredException')
    SourceFileSpecifier = Shapes::StructureShape.new(name: 'SourceFileSpecifier')
    SubModule = Shapes::StructureShape.new(name: 'SubModule')
    SubModuleList = Shapes::ListShape.new(name: 'SubModuleList')
    SymbolicLink = Shapes::StructureShape.new(name: 'SymbolicLink')
    SymbolicLinkList = Shapes::ListShape.new(name: 'SymbolicLinkList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeysList = Shapes::ListShape.new(name: 'TagKeysList')
    TagKeysListRequiredException = Shapes::StructureShape.new(name: 'TagKeysListRequiredException')
    TagPolicyException = Shapes::StructureShape.new(name: 'TagPolicyException')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    TagsMapRequiredException = Shapes::StructureShape.new(name: 'TagsMapRequiredException')
    Target = Shapes::StructureShape.new(name: 'Target')
    TargetList = Shapes::ListShape.new(name: 'TargetList')
    TargetRequiredException = Shapes::StructureShape.new(name: 'TargetRequiredException')
    TargetsRequiredException = Shapes::StructureShape.new(name: 'TargetsRequiredException')
    TestRepositoryTriggersInput = Shapes::StructureShape.new(name: 'TestRepositoryTriggersInput')
    TestRepositoryTriggersOutput = Shapes::StructureShape.new(name: 'TestRepositoryTriggersOutput')
    TipOfSourceReferenceIsDifferentException = Shapes::StructureShape.new(name: 'TipOfSourceReferenceIsDifferentException')
    TipsDivergenceExceededException = Shapes::StructureShape.new(name: 'TipsDivergenceExceededException')
    Title = Shapes::StringShape.new(name: 'Title')
    TitleRequiredException = Shapes::StructureShape.new(name: 'TitleRequiredException')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UpdateCommentInput = Shapes::StructureShape.new(name: 'UpdateCommentInput')
    UpdateCommentOutput = Shapes::StructureShape.new(name: 'UpdateCommentOutput')
    UpdateDefaultBranchInput = Shapes::StructureShape.new(name: 'UpdateDefaultBranchInput')
    UpdatePullRequestDescriptionInput = Shapes::StructureShape.new(name: 'UpdatePullRequestDescriptionInput')
    UpdatePullRequestDescriptionOutput = Shapes::StructureShape.new(name: 'UpdatePullRequestDescriptionOutput')
    UpdatePullRequestStatusInput = Shapes::StructureShape.new(name: 'UpdatePullRequestStatusInput')
    UpdatePullRequestStatusOutput = Shapes::StructureShape.new(name: 'UpdatePullRequestStatusOutput')
    UpdatePullRequestTitleInput = Shapes::StructureShape.new(name: 'UpdatePullRequestTitleInput')
    UpdatePullRequestTitleOutput = Shapes::StructureShape.new(name: 'UpdatePullRequestTitleOutput')
    UpdateRepositoryDescriptionInput = Shapes::StructureShape.new(name: 'UpdateRepositoryDescriptionInput')
    UpdateRepositoryNameInput = Shapes::StructureShape.new(name: 'UpdateRepositoryNameInput')
    UserInfo = Shapes::StructureShape.new(name: 'UserInfo')
    blob = Shapes::BlobShape.new(name: 'blob')

    BatchDescribeMergeConflictsError.add_member(:file_path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "filePath"))
    BatchDescribeMergeConflictsError.add_member(:exception_name, Shapes::ShapeRef.new(shape: ExceptionName, required: true, location_name: "exceptionName"))
    BatchDescribeMergeConflictsError.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "message"))
    BatchDescribeMergeConflictsError.struct_class = Types::BatchDescribeMergeConflictsError

    BatchDescribeMergeConflictsErrors.member = Shapes::ShapeRef.new(shape: BatchDescribeMergeConflictsError)

    BatchDescribeMergeConflictsInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    BatchDescribeMergeConflictsInput.add_member(:destination_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "destinationCommitSpecifier"))
    BatchDescribeMergeConflictsInput.add_member(:source_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "sourceCommitSpecifier"))
    BatchDescribeMergeConflictsInput.add_member(:merge_option, Shapes::ShapeRef.new(shape: MergeOptionTypeEnum, required: true, location_name: "mergeOption"))
    BatchDescribeMergeConflictsInput.add_member(:max_merge_hunks, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxMergeHunks"))
    BatchDescribeMergeConflictsInput.add_member(:max_conflict_files, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxConflictFiles"))
    BatchDescribeMergeConflictsInput.add_member(:file_paths, Shapes::ShapeRef.new(shape: FilePaths, location_name: "filePaths"))
    BatchDescribeMergeConflictsInput.add_member(:conflict_detail_level, Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: "conflictDetailLevel"))
    BatchDescribeMergeConflictsInput.add_member(:conflict_resolution_strategy, Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: "conflictResolutionStrategy"))
    BatchDescribeMergeConflictsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    BatchDescribeMergeConflictsInput.struct_class = Types::BatchDescribeMergeConflictsInput

    BatchDescribeMergeConflictsOutput.add_member(:conflicts, Shapes::ShapeRef.new(shape: Conflicts, required: true, location_name: "conflicts"))
    BatchDescribeMergeConflictsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    BatchDescribeMergeConflictsOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchDescribeMergeConflictsErrors, location_name: "errors"))
    BatchDescribeMergeConflictsOutput.add_member(:destination_commit_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "destinationCommitId"))
    BatchDescribeMergeConflictsOutput.add_member(:source_commit_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "sourceCommitId"))
    BatchDescribeMergeConflictsOutput.add_member(:base_commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "baseCommitId"))
    BatchDescribeMergeConflictsOutput.struct_class = Types::BatchDescribeMergeConflictsOutput

    BatchGetRepositoriesInput.add_member(:repository_names, Shapes::ShapeRef.new(shape: RepositoryNameList, required: true, location_name: "repositoryNames"))
    BatchGetRepositoriesInput.struct_class = Types::BatchGetRepositoriesInput

    BatchGetRepositoriesOutput.add_member(:repositories, Shapes::ShapeRef.new(shape: RepositoryMetadataList, location_name: "repositories"))
    BatchGetRepositoriesOutput.add_member(:repositories_not_found, Shapes::ShapeRef.new(shape: RepositoryNotFoundList, location_name: "repositoriesNotFound"))
    BatchGetRepositoriesOutput.struct_class = Types::BatchGetRepositoriesOutput

    BlobMetadata.add_member(:blob_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "blobId"))
    BlobMetadata.add_member(:path, Shapes::ShapeRef.new(shape: Path, location_name: "path"))
    BlobMetadata.add_member(:mode, Shapes::ShapeRef.new(shape: Mode, location_name: "mode"))
    BlobMetadata.struct_class = Types::BlobMetadata

    BranchInfo.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, location_name: "branchName"))
    BranchInfo.add_member(:commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "commitId"))
    BranchInfo.struct_class = Types::BranchInfo

    BranchNameList.member = Shapes::ShapeRef.new(shape: BranchName)

    Comment.add_member(:comment_id, Shapes::ShapeRef.new(shape: CommentId, location_name: "commentId"))
    Comment.add_member(:content, Shapes::ShapeRef.new(shape: Content, location_name: "content"))
    Comment.add_member(:in_reply_to, Shapes::ShapeRef.new(shape: CommentId, location_name: "inReplyTo"))
    Comment.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, location_name: "creationDate"))
    Comment.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: LastModifiedDate, location_name: "lastModifiedDate"))
    Comment.add_member(:author_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorArn"))
    Comment.add_member(:deleted, Shapes::ShapeRef.new(shape: IsCommentDeleted, location_name: "deleted"))
    Comment.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    Comment.struct_class = Types::Comment

    Comments.member = Shapes::ShapeRef.new(shape: Comment)

    CommentsForComparedCommit.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    CommentsForComparedCommit.add_member(:before_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "beforeCommitId"))
    CommentsForComparedCommit.add_member(:after_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "afterCommitId"))
    CommentsForComparedCommit.add_member(:before_blob_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "beforeBlobId"))
    CommentsForComparedCommit.add_member(:after_blob_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "afterBlobId"))
    CommentsForComparedCommit.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    CommentsForComparedCommit.add_member(:comments, Shapes::ShapeRef.new(shape: Comments, location_name: "comments"))
    CommentsForComparedCommit.struct_class = Types::CommentsForComparedCommit

    CommentsForComparedCommitData.member = Shapes::ShapeRef.new(shape: CommentsForComparedCommit)

    CommentsForPullRequest.add_member(:pull_request_id, Shapes::ShapeRef.new(shape: PullRequestId, location_name: "pullRequestId"))
    CommentsForPullRequest.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    CommentsForPullRequest.add_member(:before_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "beforeCommitId"))
    CommentsForPullRequest.add_member(:after_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "afterCommitId"))
    CommentsForPullRequest.add_member(:before_blob_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "beforeBlobId"))
    CommentsForPullRequest.add_member(:after_blob_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "afterBlobId"))
    CommentsForPullRequest.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    CommentsForPullRequest.add_member(:comments, Shapes::ShapeRef.new(shape: Comments, location_name: "comments"))
    CommentsForPullRequest.struct_class = Types::CommentsForPullRequest

    CommentsForPullRequestData.member = Shapes::ShapeRef.new(shape: CommentsForPullRequest)

    Commit.add_member(:commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "commitId"))
    Commit.add_member(:tree_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "treeId"))
    Commit.add_member(:parents, Shapes::ShapeRef.new(shape: ParentList, location_name: "parents"))
    Commit.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    Commit.add_member(:author, Shapes::ShapeRef.new(shape: UserInfo, location_name: "author"))
    Commit.add_member(:committer, Shapes::ShapeRef.new(shape: UserInfo, location_name: "committer"))
    Commit.add_member(:additional_data, Shapes::ShapeRef.new(shape: AdditionalData, location_name: "additionalData"))
    Commit.struct_class = Types::Commit

    Conflict.add_member(:conflict_metadata, Shapes::ShapeRef.new(shape: ConflictMetadata, location_name: "conflictMetadata"))
    Conflict.add_member(:merge_hunks, Shapes::ShapeRef.new(shape: MergeHunks, location_name: "mergeHunks"))
    Conflict.struct_class = Types::Conflict

    ConflictMetadata.add_member(:file_path, Shapes::ShapeRef.new(shape: Path, location_name: "filePath"))
    ConflictMetadata.add_member(:file_sizes, Shapes::ShapeRef.new(shape: FileSizes, location_name: "fileSizes"))
    ConflictMetadata.add_member(:file_modes, Shapes::ShapeRef.new(shape: FileModes, location_name: "fileModes"))
    ConflictMetadata.add_member(:object_types, Shapes::ShapeRef.new(shape: ObjectTypes, location_name: "objectTypes"))
    ConflictMetadata.add_member(:number_of_conflicts, Shapes::ShapeRef.new(shape: NumberOfConflicts, location_name: "numberOfConflicts"))
    ConflictMetadata.add_member(:is_binary_file, Shapes::ShapeRef.new(shape: IsBinaryFile, location_name: "isBinaryFile"))
    ConflictMetadata.add_member(:content_conflict, Shapes::ShapeRef.new(shape: IsContentConflict, location_name: "contentConflict"))
    ConflictMetadata.add_member(:file_mode_conflict, Shapes::ShapeRef.new(shape: IsFileModeConflict, location_name: "fileModeConflict"))
    ConflictMetadata.add_member(:object_type_conflict, Shapes::ShapeRef.new(shape: IsObjectTypeConflict, location_name: "objectTypeConflict"))
    ConflictMetadata.add_member(:merge_operations, Shapes::ShapeRef.new(shape: MergeOperations, location_name: "mergeOperations"))
    ConflictMetadata.struct_class = Types::ConflictMetadata

    ConflictMetadataList.member = Shapes::ShapeRef.new(shape: ConflictMetadata)

    ConflictResolution.add_member(:replace_contents, Shapes::ShapeRef.new(shape: ReplaceContentEntries, location_name: "replaceContents"))
    ConflictResolution.add_member(:delete_files, Shapes::ShapeRef.new(shape: DeleteFileEntries, location_name: "deleteFiles"))
    ConflictResolution.add_member(:set_file_modes, Shapes::ShapeRef.new(shape: SetFileModeEntries, location_name: "setFileModes"))
    ConflictResolution.struct_class = Types::ConflictResolution

    Conflicts.member = Shapes::ShapeRef.new(shape: Conflict)

    CreateBranchInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    CreateBranchInput.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "branchName"))
    CreateBranchInput.add_member(:commit_id, Shapes::ShapeRef.new(shape: CommitId, required: true, location_name: "commitId"))
    CreateBranchInput.struct_class = Types::CreateBranchInput

    CreateCommitInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    CreateCommitInput.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "branchName"))
    CreateCommitInput.add_member(:parent_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "parentCommitId"))
    CreateCommitInput.add_member(:author_name, Shapes::ShapeRef.new(shape: Name, location_name: "authorName"))
    CreateCommitInput.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    CreateCommitInput.add_member(:commit_message, Shapes::ShapeRef.new(shape: Message, location_name: "commitMessage"))
    CreateCommitInput.add_member(:keep_empty_folders, Shapes::ShapeRef.new(shape: KeepEmptyFolders, location_name: "keepEmptyFolders"))
    CreateCommitInput.add_member(:put_files, Shapes::ShapeRef.new(shape: PutFileEntries, location_name: "putFiles"))
    CreateCommitInput.add_member(:delete_files, Shapes::ShapeRef.new(shape: DeleteFileEntries, location_name: "deleteFiles"))
    CreateCommitInput.add_member(:set_file_modes, Shapes::ShapeRef.new(shape: SetFileModeEntries, location_name: "setFileModes"))
    CreateCommitInput.struct_class = Types::CreateCommitInput

    CreateCommitOutput.add_member(:commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "commitId"))
    CreateCommitOutput.add_member(:tree_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "treeId"))
    CreateCommitOutput.add_member(:files_added, Shapes::ShapeRef.new(shape: FilesMetadata, location_name: "filesAdded"))
    CreateCommitOutput.add_member(:files_updated, Shapes::ShapeRef.new(shape: FilesMetadata, location_name: "filesUpdated"))
    CreateCommitOutput.add_member(:files_deleted, Shapes::ShapeRef.new(shape: FilesMetadata, location_name: "filesDeleted"))
    CreateCommitOutput.struct_class = Types::CreateCommitOutput

    CreatePullRequestInput.add_member(:title, Shapes::ShapeRef.new(shape: Title, required: true, location_name: "title"))
    CreatePullRequestInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreatePullRequestInput.add_member(:targets, Shapes::ShapeRef.new(shape: TargetList, required: true, location_name: "targets"))
    CreatePullRequestInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreatePullRequestInput.struct_class = Types::CreatePullRequestInput

    CreatePullRequestOutput.add_member(:pull_request, Shapes::ShapeRef.new(shape: PullRequest, required: true, location_name: "pullRequest"))
    CreatePullRequestOutput.struct_class = Types::CreatePullRequestOutput

    CreateRepositoryInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    CreateRepositoryInput.add_member(:repository_description, Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: "repositoryDescription"))
    CreateRepositoryInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateRepositoryInput.struct_class = Types::CreateRepositoryInput

    CreateRepositoryOutput.add_member(:repository_metadata, Shapes::ShapeRef.new(shape: RepositoryMetadata, location_name: "repositoryMetadata"))
    CreateRepositoryOutput.struct_class = Types::CreateRepositoryOutput

    CreateUnreferencedMergeCommitInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    CreateUnreferencedMergeCommitInput.add_member(:source_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "sourceCommitSpecifier"))
    CreateUnreferencedMergeCommitInput.add_member(:destination_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "destinationCommitSpecifier"))
    CreateUnreferencedMergeCommitInput.add_member(:merge_option, Shapes::ShapeRef.new(shape: MergeOptionTypeEnum, required: true, location_name: "mergeOption"))
    CreateUnreferencedMergeCommitInput.add_member(:conflict_detail_level, Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: "conflictDetailLevel"))
    CreateUnreferencedMergeCommitInput.add_member(:conflict_resolution_strategy, Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: "conflictResolutionStrategy"))
    CreateUnreferencedMergeCommitInput.add_member(:author_name, Shapes::ShapeRef.new(shape: Name, location_name: "authorName"))
    CreateUnreferencedMergeCommitInput.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    CreateUnreferencedMergeCommitInput.add_member(:commit_message, Shapes::ShapeRef.new(shape: Message, location_name: "commitMessage"))
    CreateUnreferencedMergeCommitInput.add_member(:keep_empty_folders, Shapes::ShapeRef.new(shape: KeepEmptyFolders, location_name: "keepEmptyFolders"))
    CreateUnreferencedMergeCommitInput.add_member(:conflict_resolution, Shapes::ShapeRef.new(shape: ConflictResolution, location_name: "conflictResolution"))
    CreateUnreferencedMergeCommitInput.struct_class = Types::CreateUnreferencedMergeCommitInput

    CreateUnreferencedMergeCommitOutput.add_member(:commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "commitId"))
    CreateUnreferencedMergeCommitOutput.add_member(:tree_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "treeId"))
    CreateUnreferencedMergeCommitOutput.struct_class = Types::CreateUnreferencedMergeCommitOutput

    DeleteBranchInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    DeleteBranchInput.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "branchName"))
    DeleteBranchInput.struct_class = Types::DeleteBranchInput

    DeleteBranchOutput.add_member(:deleted_branch, Shapes::ShapeRef.new(shape: BranchInfo, location_name: "deletedBranch"))
    DeleteBranchOutput.struct_class = Types::DeleteBranchOutput

    DeleteCommentContentInput.add_member(:comment_id, Shapes::ShapeRef.new(shape: CommentId, required: true, location_name: "commentId"))
    DeleteCommentContentInput.struct_class = Types::DeleteCommentContentInput

    DeleteCommentContentOutput.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "comment"))
    DeleteCommentContentOutput.struct_class = Types::DeleteCommentContentOutput

    DeleteFileEntries.member = Shapes::ShapeRef.new(shape: DeleteFileEntry)

    DeleteFileEntry.add_member(:file_path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "filePath"))
    DeleteFileEntry.struct_class = Types::DeleteFileEntry

    DeleteFileInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    DeleteFileInput.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "branchName"))
    DeleteFileInput.add_member(:file_path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "filePath"))
    DeleteFileInput.add_member(:parent_commit_id, Shapes::ShapeRef.new(shape: CommitId, required: true, location_name: "parentCommitId"))
    DeleteFileInput.add_member(:keep_empty_folders, Shapes::ShapeRef.new(shape: KeepEmptyFolders, location_name: "keepEmptyFolders"))
    DeleteFileInput.add_member(:commit_message, Shapes::ShapeRef.new(shape: Message, location_name: "commitMessage"))
    DeleteFileInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    DeleteFileInput.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    DeleteFileInput.struct_class = Types::DeleteFileInput

    DeleteFileOutput.add_member(:commit_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "commitId"))
    DeleteFileOutput.add_member(:blob_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "blobId"))
    DeleteFileOutput.add_member(:tree_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "treeId"))
    DeleteFileOutput.add_member(:file_path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "filePath"))
    DeleteFileOutput.struct_class = Types::DeleteFileOutput

    DeleteRepositoryInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    DeleteRepositoryInput.struct_class = Types::DeleteRepositoryInput

    DeleteRepositoryOutput.add_member(:repository_id, Shapes::ShapeRef.new(shape: RepositoryId, location_name: "repositoryId"))
    DeleteRepositoryOutput.struct_class = Types::DeleteRepositoryOutput

    DescribeMergeConflictsInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    DescribeMergeConflictsInput.add_member(:destination_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "destinationCommitSpecifier"))
    DescribeMergeConflictsInput.add_member(:source_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "sourceCommitSpecifier"))
    DescribeMergeConflictsInput.add_member(:merge_option, Shapes::ShapeRef.new(shape: MergeOptionTypeEnum, required: true, location_name: "mergeOption"))
    DescribeMergeConflictsInput.add_member(:max_merge_hunks, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxMergeHunks"))
    DescribeMergeConflictsInput.add_member(:file_path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "filePath"))
    DescribeMergeConflictsInput.add_member(:conflict_detail_level, Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: "conflictDetailLevel"))
    DescribeMergeConflictsInput.add_member(:conflict_resolution_strategy, Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: "conflictResolutionStrategy"))
    DescribeMergeConflictsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeMergeConflictsInput.struct_class = Types::DescribeMergeConflictsInput

    DescribeMergeConflictsOutput.add_member(:conflict_metadata, Shapes::ShapeRef.new(shape: ConflictMetadata, required: true, location_name: "conflictMetadata"))
    DescribeMergeConflictsOutput.add_member(:merge_hunks, Shapes::ShapeRef.new(shape: MergeHunks, required: true, location_name: "mergeHunks"))
    DescribeMergeConflictsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribeMergeConflictsOutput.add_member(:destination_commit_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "destinationCommitId"))
    DescribeMergeConflictsOutput.add_member(:source_commit_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "sourceCommitId"))
    DescribeMergeConflictsOutput.add_member(:base_commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "baseCommitId"))
    DescribeMergeConflictsOutput.struct_class = Types::DescribeMergeConflictsOutput

    DescribePullRequestEventsInput.add_member(:pull_request_id, Shapes::ShapeRef.new(shape: PullRequestId, required: true, location_name: "pullRequestId"))
    DescribePullRequestEventsInput.add_member(:pull_request_event_type, Shapes::ShapeRef.new(shape: PullRequestEventType, location_name: "pullRequestEventType"))
    DescribePullRequestEventsInput.add_member(:actor_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "actorArn"))
    DescribePullRequestEventsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribePullRequestEventsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    DescribePullRequestEventsInput.struct_class = Types::DescribePullRequestEventsInput

    DescribePullRequestEventsOutput.add_member(:pull_request_events, Shapes::ShapeRef.new(shape: PullRequestEventList, required: true, location_name: "pullRequestEvents"))
    DescribePullRequestEventsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    DescribePullRequestEventsOutput.struct_class = Types::DescribePullRequestEventsOutput

    Difference.add_member(:before_blob, Shapes::ShapeRef.new(shape: BlobMetadata, location_name: "beforeBlob"))
    Difference.add_member(:after_blob, Shapes::ShapeRef.new(shape: BlobMetadata, location_name: "afterBlob"))
    Difference.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeTypeEnum, location_name: "changeType"))
    Difference.struct_class = Types::Difference

    DifferenceList.member = Shapes::ShapeRef.new(shape: Difference)

    File.add_member(:blob_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "blobId"))
    File.add_member(:absolute_path, Shapes::ShapeRef.new(shape: Path, location_name: "absolutePath"))
    File.add_member(:relative_path, Shapes::ShapeRef.new(shape: Path, location_name: "relativePath"))
    File.add_member(:file_mode, Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: "fileMode"))
    File.struct_class = Types::File

    FileList.member = Shapes::ShapeRef.new(shape: File)

    FileMetadata.add_member(:absolute_path, Shapes::ShapeRef.new(shape: Path, location_name: "absolutePath"))
    FileMetadata.add_member(:blob_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "blobId"))
    FileMetadata.add_member(:file_mode, Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: "fileMode"))
    FileMetadata.struct_class = Types::FileMetadata

    FileModes.add_member(:source, Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: "source"))
    FileModes.add_member(:destination, Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: "destination"))
    FileModes.add_member(:base, Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: "base"))
    FileModes.struct_class = Types::FileModes

    FilePaths.member = Shapes::ShapeRef.new(shape: Path)

    FileSizes.add_member(:source, Shapes::ShapeRef.new(shape: FileSize, location_name: "source"))
    FileSizes.add_member(:destination, Shapes::ShapeRef.new(shape: FileSize, location_name: "destination"))
    FileSizes.add_member(:base, Shapes::ShapeRef.new(shape: FileSize, location_name: "base"))
    FileSizes.struct_class = Types::FileSizes

    FilesMetadata.member = Shapes::ShapeRef.new(shape: FileMetadata)

    Folder.add_member(:tree_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "treeId"))
    Folder.add_member(:absolute_path, Shapes::ShapeRef.new(shape: Path, location_name: "absolutePath"))
    Folder.add_member(:relative_path, Shapes::ShapeRef.new(shape: Path, location_name: "relativePath"))
    Folder.struct_class = Types::Folder

    FolderList.member = Shapes::ShapeRef.new(shape: Folder)

    GetBlobInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetBlobInput.add_member(:blob_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "blobId"))
    GetBlobInput.struct_class = Types::GetBlobInput

    GetBlobOutput.add_member(:content, Shapes::ShapeRef.new(shape: blob, required: true, location_name: "content"))
    GetBlobOutput.struct_class = Types::GetBlobOutput

    GetBranchInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    GetBranchInput.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, location_name: "branchName"))
    GetBranchInput.struct_class = Types::GetBranchInput

    GetBranchOutput.add_member(:branch, Shapes::ShapeRef.new(shape: BranchInfo, location_name: "branch"))
    GetBranchOutput.struct_class = Types::GetBranchOutput

    GetCommentInput.add_member(:comment_id, Shapes::ShapeRef.new(shape: CommentId, required: true, location_name: "commentId"))
    GetCommentInput.struct_class = Types::GetCommentInput

    GetCommentOutput.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "comment"))
    GetCommentOutput.struct_class = Types::GetCommentOutput

    GetCommentsForComparedCommitInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetCommentsForComparedCommitInput.add_member(:before_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "beforeCommitId"))
    GetCommentsForComparedCommitInput.add_member(:after_commit_id, Shapes::ShapeRef.new(shape: CommitId, required: true, location_name: "afterCommitId"))
    GetCommentsForComparedCommitInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetCommentsForComparedCommitInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetCommentsForComparedCommitInput.struct_class = Types::GetCommentsForComparedCommitInput

    GetCommentsForComparedCommitOutput.add_member(:comments_for_compared_commit_data, Shapes::ShapeRef.new(shape: CommentsForComparedCommitData, location_name: "commentsForComparedCommitData"))
    GetCommentsForComparedCommitOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetCommentsForComparedCommitOutput.struct_class = Types::GetCommentsForComparedCommitOutput

    GetCommentsForPullRequestInput.add_member(:pull_request_id, Shapes::ShapeRef.new(shape: PullRequestId, required: true, location_name: "pullRequestId"))
    GetCommentsForPullRequestInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    GetCommentsForPullRequestInput.add_member(:before_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "beforeCommitId"))
    GetCommentsForPullRequestInput.add_member(:after_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "afterCommitId"))
    GetCommentsForPullRequestInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetCommentsForPullRequestInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetCommentsForPullRequestInput.struct_class = Types::GetCommentsForPullRequestInput

    GetCommentsForPullRequestOutput.add_member(:comments_for_pull_request_data, Shapes::ShapeRef.new(shape: CommentsForPullRequestData, location_name: "commentsForPullRequestData"))
    GetCommentsForPullRequestOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetCommentsForPullRequestOutput.struct_class = Types::GetCommentsForPullRequestOutput

    GetCommitInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetCommitInput.add_member(:commit_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "commitId"))
    GetCommitInput.struct_class = Types::GetCommitInput

    GetCommitOutput.add_member(:commit, Shapes::ShapeRef.new(shape: Commit, required: true, location_name: "commit"))
    GetCommitOutput.struct_class = Types::GetCommitOutput

    GetDifferencesInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetDifferencesInput.add_member(:before_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, location_name: "beforeCommitSpecifier"))
    GetDifferencesInput.add_member(:after_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "afterCommitSpecifier"))
    GetDifferencesInput.add_member(:before_path, Shapes::ShapeRef.new(shape: Path, location_name: "beforePath"))
    GetDifferencesInput.add_member(:after_path, Shapes::ShapeRef.new(shape: Path, location_name: "afterPath"))
    GetDifferencesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: Limit, location_name: "MaxResults"))
    GetDifferencesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetDifferencesInput.struct_class = Types::GetDifferencesInput

    GetDifferencesOutput.add_member(:differences, Shapes::ShapeRef.new(shape: DifferenceList, location_name: "differences"))
    GetDifferencesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetDifferencesOutput.struct_class = Types::GetDifferencesOutput

    GetFileInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetFileInput.add_member(:commit_specifier, Shapes::ShapeRef.new(shape: CommitName, location_name: "commitSpecifier"))
    GetFileInput.add_member(:file_path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "filePath"))
    GetFileInput.struct_class = Types::GetFileInput

    GetFileOutput.add_member(:commit_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "commitId"))
    GetFileOutput.add_member(:blob_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "blobId"))
    GetFileOutput.add_member(:file_path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "filePath"))
    GetFileOutput.add_member(:file_mode, Shapes::ShapeRef.new(shape: FileModeTypeEnum, required: true, location_name: "fileMode"))
    GetFileOutput.add_member(:file_size, Shapes::ShapeRef.new(shape: ObjectSize, required: true, location_name: "fileSize"))
    GetFileOutput.add_member(:file_content, Shapes::ShapeRef.new(shape: FileContent, required: true, location_name: "fileContent"))
    GetFileOutput.struct_class = Types::GetFileOutput

    GetFolderInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetFolderInput.add_member(:commit_specifier, Shapes::ShapeRef.new(shape: CommitName, location_name: "commitSpecifier"))
    GetFolderInput.add_member(:folder_path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "folderPath"))
    GetFolderInput.struct_class = Types::GetFolderInput

    GetFolderOutput.add_member(:commit_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "commitId"))
    GetFolderOutput.add_member(:folder_path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "folderPath"))
    GetFolderOutput.add_member(:tree_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "treeId"))
    GetFolderOutput.add_member(:sub_folders, Shapes::ShapeRef.new(shape: FolderList, location_name: "subFolders"))
    GetFolderOutput.add_member(:files, Shapes::ShapeRef.new(shape: FileList, location_name: "files"))
    GetFolderOutput.add_member(:symbolic_links, Shapes::ShapeRef.new(shape: SymbolicLinkList, location_name: "symbolicLinks"))
    GetFolderOutput.add_member(:sub_modules, Shapes::ShapeRef.new(shape: SubModuleList, location_name: "subModules"))
    GetFolderOutput.struct_class = Types::GetFolderOutput

    GetMergeCommitInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetMergeCommitInput.add_member(:source_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "sourceCommitSpecifier"))
    GetMergeCommitInput.add_member(:destination_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "destinationCommitSpecifier"))
    GetMergeCommitInput.add_member(:conflict_detail_level, Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: "conflictDetailLevel"))
    GetMergeCommitInput.add_member(:conflict_resolution_strategy, Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: "conflictResolutionStrategy"))
    GetMergeCommitInput.struct_class = Types::GetMergeCommitInput

    GetMergeCommitOutput.add_member(:source_commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "sourceCommitId"))
    GetMergeCommitOutput.add_member(:destination_commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "destinationCommitId"))
    GetMergeCommitOutput.add_member(:base_commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "baseCommitId"))
    GetMergeCommitOutput.add_member(:merged_commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "mergedCommitId"))
    GetMergeCommitOutput.struct_class = Types::GetMergeCommitOutput

    GetMergeConflictsInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetMergeConflictsInput.add_member(:destination_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "destinationCommitSpecifier"))
    GetMergeConflictsInput.add_member(:source_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "sourceCommitSpecifier"))
    GetMergeConflictsInput.add_member(:merge_option, Shapes::ShapeRef.new(shape: MergeOptionTypeEnum, required: true, location_name: "mergeOption"))
    GetMergeConflictsInput.add_member(:conflict_detail_level, Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: "conflictDetailLevel"))
    GetMergeConflictsInput.add_member(:max_conflict_files, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxConflictFiles"))
    GetMergeConflictsInput.add_member(:conflict_resolution_strategy, Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: "conflictResolutionStrategy"))
    GetMergeConflictsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetMergeConflictsInput.struct_class = Types::GetMergeConflictsInput

    GetMergeConflictsOutput.add_member(:mergeable, Shapes::ShapeRef.new(shape: IsMergeable, required: true, location_name: "mergeable"))
    GetMergeConflictsOutput.add_member(:destination_commit_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "destinationCommitId"))
    GetMergeConflictsOutput.add_member(:source_commit_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "sourceCommitId"))
    GetMergeConflictsOutput.add_member(:base_commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "baseCommitId"))
    GetMergeConflictsOutput.add_member(:conflict_metadata_list, Shapes::ShapeRef.new(shape: ConflictMetadataList, required: true, location_name: "conflictMetadataList"))
    GetMergeConflictsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetMergeConflictsOutput.struct_class = Types::GetMergeConflictsOutput

    GetMergeOptionsInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetMergeOptionsInput.add_member(:source_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "sourceCommitSpecifier"))
    GetMergeOptionsInput.add_member(:destination_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "destinationCommitSpecifier"))
    GetMergeOptionsInput.add_member(:conflict_detail_level, Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: "conflictDetailLevel"))
    GetMergeOptionsInput.add_member(:conflict_resolution_strategy, Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: "conflictResolutionStrategy"))
    GetMergeOptionsInput.struct_class = Types::GetMergeOptionsInput

    GetMergeOptionsOutput.add_member(:merge_options, Shapes::ShapeRef.new(shape: MergeOptions, required: true, location_name: "mergeOptions"))
    GetMergeOptionsOutput.add_member(:source_commit_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "sourceCommitId"))
    GetMergeOptionsOutput.add_member(:destination_commit_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "destinationCommitId"))
    GetMergeOptionsOutput.add_member(:base_commit_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "baseCommitId"))
    GetMergeOptionsOutput.struct_class = Types::GetMergeOptionsOutput

    GetPullRequestInput.add_member(:pull_request_id, Shapes::ShapeRef.new(shape: PullRequestId, required: true, location_name: "pullRequestId"))
    GetPullRequestInput.struct_class = Types::GetPullRequestInput

    GetPullRequestOutput.add_member(:pull_request, Shapes::ShapeRef.new(shape: PullRequest, required: true, location_name: "pullRequest"))
    GetPullRequestOutput.struct_class = Types::GetPullRequestOutput

    GetRepositoryInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetRepositoryInput.struct_class = Types::GetRepositoryInput

    GetRepositoryOutput.add_member(:repository_metadata, Shapes::ShapeRef.new(shape: RepositoryMetadata, location_name: "repositoryMetadata"))
    GetRepositoryOutput.struct_class = Types::GetRepositoryOutput

    GetRepositoryTriggersInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetRepositoryTriggersInput.struct_class = Types::GetRepositoryTriggersInput

    GetRepositoryTriggersOutput.add_member(:configuration_id, Shapes::ShapeRef.new(shape: RepositoryTriggersConfigurationId, location_name: "configurationId"))
    GetRepositoryTriggersOutput.add_member(:triggers, Shapes::ShapeRef.new(shape: RepositoryTriggersList, location_name: "triggers"))
    GetRepositoryTriggersOutput.struct_class = Types::GetRepositoryTriggersOutput

    IsBinaryFile.add_member(:source, Shapes::ShapeRef.new(shape: CapitalBoolean, location_name: "source"))
    IsBinaryFile.add_member(:destination, Shapes::ShapeRef.new(shape: CapitalBoolean, location_name: "destination"))
    IsBinaryFile.add_member(:base, Shapes::ShapeRef.new(shape: CapitalBoolean, location_name: "base"))
    IsBinaryFile.struct_class = Types::IsBinaryFile

    ListBranchesInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    ListBranchesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBranchesInput.struct_class = Types::ListBranchesInput

    ListBranchesOutput.add_member(:branches, Shapes::ShapeRef.new(shape: BranchNameList, location_name: "branches"))
    ListBranchesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBranchesOutput.struct_class = Types::ListBranchesOutput

    ListPullRequestsInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    ListPullRequestsInput.add_member(:author_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorArn"))
    ListPullRequestsInput.add_member(:pull_request_status, Shapes::ShapeRef.new(shape: PullRequestStatusEnum, location_name: "pullRequestStatus"))
    ListPullRequestsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPullRequestsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPullRequestsInput.struct_class = Types::ListPullRequestsInput

    ListPullRequestsOutput.add_member(:pull_request_ids, Shapes::ShapeRef.new(shape: PullRequestIdList, required: true, location_name: "pullRequestIds"))
    ListPullRequestsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPullRequestsOutput.struct_class = Types::ListPullRequestsOutput

    ListRepositoriesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRepositoriesInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortByEnum, location_name: "sortBy"))
    ListRepositoriesInput.add_member(:order, Shapes::ShapeRef.new(shape: OrderEnum, location_name: "order"))
    ListRepositoriesInput.struct_class = Types::ListRepositoriesInput

    ListRepositoriesOutput.add_member(:repositories, Shapes::ShapeRef.new(shape: RepositoryNameIdPairList, location_name: "repositories"))
    ListRepositoriesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRepositoriesOutput.struct_class = Types::ListRepositoriesOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    ListTagsForResourceInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ListTagsForResourceOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    Location.add_member(:file_path, Shapes::ShapeRef.new(shape: Path, location_name: "filePath"))
    Location.add_member(:file_position, Shapes::ShapeRef.new(shape: Position, location_name: "filePosition"))
    Location.add_member(:relative_file_version, Shapes::ShapeRef.new(shape: RelativeFileVersionEnum, location_name: "relativeFileVersion"))
    Location.struct_class = Types::Location

    MergeBranchesByFastForwardInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    MergeBranchesByFastForwardInput.add_member(:source_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "sourceCommitSpecifier"))
    MergeBranchesByFastForwardInput.add_member(:destination_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "destinationCommitSpecifier"))
    MergeBranchesByFastForwardInput.add_member(:target_branch, Shapes::ShapeRef.new(shape: BranchName, location_name: "targetBranch"))
    MergeBranchesByFastForwardInput.struct_class = Types::MergeBranchesByFastForwardInput

    MergeBranchesByFastForwardOutput.add_member(:commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "commitId"))
    MergeBranchesByFastForwardOutput.add_member(:tree_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "treeId"))
    MergeBranchesByFastForwardOutput.struct_class = Types::MergeBranchesByFastForwardOutput

    MergeBranchesBySquashInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    MergeBranchesBySquashInput.add_member(:source_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "sourceCommitSpecifier"))
    MergeBranchesBySquashInput.add_member(:destination_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "destinationCommitSpecifier"))
    MergeBranchesBySquashInput.add_member(:target_branch, Shapes::ShapeRef.new(shape: BranchName, location_name: "targetBranch"))
    MergeBranchesBySquashInput.add_member(:conflict_detail_level, Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: "conflictDetailLevel"))
    MergeBranchesBySquashInput.add_member(:conflict_resolution_strategy, Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: "conflictResolutionStrategy"))
    MergeBranchesBySquashInput.add_member(:author_name, Shapes::ShapeRef.new(shape: Name, location_name: "authorName"))
    MergeBranchesBySquashInput.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    MergeBranchesBySquashInput.add_member(:commit_message, Shapes::ShapeRef.new(shape: Message, location_name: "commitMessage"))
    MergeBranchesBySquashInput.add_member(:keep_empty_folders, Shapes::ShapeRef.new(shape: KeepEmptyFolders, location_name: "keepEmptyFolders"))
    MergeBranchesBySquashInput.add_member(:conflict_resolution, Shapes::ShapeRef.new(shape: ConflictResolution, location_name: "conflictResolution"))
    MergeBranchesBySquashInput.struct_class = Types::MergeBranchesBySquashInput

    MergeBranchesBySquashOutput.add_member(:commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "commitId"))
    MergeBranchesBySquashOutput.add_member(:tree_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "treeId"))
    MergeBranchesBySquashOutput.struct_class = Types::MergeBranchesBySquashOutput

    MergeBranchesByThreeWayInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    MergeBranchesByThreeWayInput.add_member(:source_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "sourceCommitSpecifier"))
    MergeBranchesByThreeWayInput.add_member(:destination_commit_specifier, Shapes::ShapeRef.new(shape: CommitName, required: true, location_name: "destinationCommitSpecifier"))
    MergeBranchesByThreeWayInput.add_member(:target_branch, Shapes::ShapeRef.new(shape: BranchName, location_name: "targetBranch"))
    MergeBranchesByThreeWayInput.add_member(:conflict_detail_level, Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: "conflictDetailLevel"))
    MergeBranchesByThreeWayInput.add_member(:conflict_resolution_strategy, Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: "conflictResolutionStrategy"))
    MergeBranchesByThreeWayInput.add_member(:author_name, Shapes::ShapeRef.new(shape: Name, location_name: "authorName"))
    MergeBranchesByThreeWayInput.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    MergeBranchesByThreeWayInput.add_member(:commit_message, Shapes::ShapeRef.new(shape: Message, location_name: "commitMessage"))
    MergeBranchesByThreeWayInput.add_member(:keep_empty_folders, Shapes::ShapeRef.new(shape: KeepEmptyFolders, location_name: "keepEmptyFolders"))
    MergeBranchesByThreeWayInput.add_member(:conflict_resolution, Shapes::ShapeRef.new(shape: ConflictResolution, location_name: "conflictResolution"))
    MergeBranchesByThreeWayInput.struct_class = Types::MergeBranchesByThreeWayInput

    MergeBranchesByThreeWayOutput.add_member(:commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "commitId"))
    MergeBranchesByThreeWayOutput.add_member(:tree_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "treeId"))
    MergeBranchesByThreeWayOutput.struct_class = Types::MergeBranchesByThreeWayOutput

    MergeHunk.add_member(:is_conflict, Shapes::ShapeRef.new(shape: IsHunkConflict, location_name: "isConflict"))
    MergeHunk.add_member(:source, Shapes::ShapeRef.new(shape: MergeHunkDetail, location_name: "source"))
    MergeHunk.add_member(:destination, Shapes::ShapeRef.new(shape: MergeHunkDetail, location_name: "destination"))
    MergeHunk.add_member(:base, Shapes::ShapeRef.new(shape: MergeHunkDetail, location_name: "base"))
    MergeHunk.struct_class = Types::MergeHunk

    MergeHunkDetail.add_member(:start_line, Shapes::ShapeRef.new(shape: LineNumber, location_name: "startLine"))
    MergeHunkDetail.add_member(:end_line, Shapes::ShapeRef.new(shape: LineNumber, location_name: "endLine"))
    MergeHunkDetail.add_member(:hunk_content, Shapes::ShapeRef.new(shape: HunkContent, location_name: "hunkContent"))
    MergeHunkDetail.struct_class = Types::MergeHunkDetail

    MergeHunks.member = Shapes::ShapeRef.new(shape: MergeHunk)

    MergeMetadata.add_member(:is_merged, Shapes::ShapeRef.new(shape: IsMerged, location_name: "isMerged"))
    MergeMetadata.add_member(:merged_by, Shapes::ShapeRef.new(shape: Arn, location_name: "mergedBy"))
    MergeMetadata.add_member(:merge_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "mergeCommitId"))
    MergeMetadata.add_member(:merge_option, Shapes::ShapeRef.new(shape: MergeOptionTypeEnum, location_name: "mergeOption"))
    MergeMetadata.struct_class = Types::MergeMetadata

    MergeOperations.add_member(:source, Shapes::ShapeRef.new(shape: ChangeTypeEnum, location_name: "source"))
    MergeOperations.add_member(:destination, Shapes::ShapeRef.new(shape: ChangeTypeEnum, location_name: "destination"))
    MergeOperations.struct_class = Types::MergeOperations

    MergeOptions.member = Shapes::ShapeRef.new(shape: MergeOptionTypeEnum)

    MergePullRequestByFastForwardInput.add_member(:pull_request_id, Shapes::ShapeRef.new(shape: PullRequestId, required: true, location_name: "pullRequestId"))
    MergePullRequestByFastForwardInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    MergePullRequestByFastForwardInput.add_member(:source_commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "sourceCommitId"))
    MergePullRequestByFastForwardInput.struct_class = Types::MergePullRequestByFastForwardInput

    MergePullRequestByFastForwardOutput.add_member(:pull_request, Shapes::ShapeRef.new(shape: PullRequest, location_name: "pullRequest"))
    MergePullRequestByFastForwardOutput.struct_class = Types::MergePullRequestByFastForwardOutput

    MergePullRequestBySquashInput.add_member(:pull_request_id, Shapes::ShapeRef.new(shape: PullRequestId, required: true, location_name: "pullRequestId"))
    MergePullRequestBySquashInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    MergePullRequestBySquashInput.add_member(:source_commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "sourceCommitId"))
    MergePullRequestBySquashInput.add_member(:conflict_detail_level, Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: "conflictDetailLevel"))
    MergePullRequestBySquashInput.add_member(:conflict_resolution_strategy, Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: "conflictResolutionStrategy"))
    MergePullRequestBySquashInput.add_member(:commit_message, Shapes::ShapeRef.new(shape: Message, location_name: "commitMessage"))
    MergePullRequestBySquashInput.add_member(:author_name, Shapes::ShapeRef.new(shape: Name, location_name: "authorName"))
    MergePullRequestBySquashInput.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    MergePullRequestBySquashInput.add_member(:keep_empty_folders, Shapes::ShapeRef.new(shape: KeepEmptyFolders, location_name: "keepEmptyFolders"))
    MergePullRequestBySquashInput.add_member(:conflict_resolution, Shapes::ShapeRef.new(shape: ConflictResolution, location_name: "conflictResolution"))
    MergePullRequestBySquashInput.struct_class = Types::MergePullRequestBySquashInput

    MergePullRequestBySquashOutput.add_member(:pull_request, Shapes::ShapeRef.new(shape: PullRequest, location_name: "pullRequest"))
    MergePullRequestBySquashOutput.struct_class = Types::MergePullRequestBySquashOutput

    MergePullRequestByThreeWayInput.add_member(:pull_request_id, Shapes::ShapeRef.new(shape: PullRequestId, required: true, location_name: "pullRequestId"))
    MergePullRequestByThreeWayInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    MergePullRequestByThreeWayInput.add_member(:source_commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "sourceCommitId"))
    MergePullRequestByThreeWayInput.add_member(:conflict_detail_level, Shapes::ShapeRef.new(shape: ConflictDetailLevelTypeEnum, location_name: "conflictDetailLevel"))
    MergePullRequestByThreeWayInput.add_member(:conflict_resolution_strategy, Shapes::ShapeRef.new(shape: ConflictResolutionStrategyTypeEnum, location_name: "conflictResolutionStrategy"))
    MergePullRequestByThreeWayInput.add_member(:commit_message, Shapes::ShapeRef.new(shape: Message, location_name: "commitMessage"))
    MergePullRequestByThreeWayInput.add_member(:author_name, Shapes::ShapeRef.new(shape: Name, location_name: "authorName"))
    MergePullRequestByThreeWayInput.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    MergePullRequestByThreeWayInput.add_member(:keep_empty_folders, Shapes::ShapeRef.new(shape: KeepEmptyFolders, location_name: "keepEmptyFolders"))
    MergePullRequestByThreeWayInput.add_member(:conflict_resolution, Shapes::ShapeRef.new(shape: ConflictResolution, location_name: "conflictResolution"))
    MergePullRequestByThreeWayInput.struct_class = Types::MergePullRequestByThreeWayInput

    MergePullRequestByThreeWayOutput.add_member(:pull_request, Shapes::ShapeRef.new(shape: PullRequest, location_name: "pullRequest"))
    MergePullRequestByThreeWayOutput.struct_class = Types::MergePullRequestByThreeWayOutput

    ObjectTypes.add_member(:source, Shapes::ShapeRef.new(shape: ObjectTypeEnum, location_name: "source"))
    ObjectTypes.add_member(:destination, Shapes::ShapeRef.new(shape: ObjectTypeEnum, location_name: "destination"))
    ObjectTypes.add_member(:base, Shapes::ShapeRef.new(shape: ObjectTypeEnum, location_name: "base"))
    ObjectTypes.struct_class = Types::ObjectTypes

    ParentList.member = Shapes::ShapeRef.new(shape: ObjectId)

    PostCommentForComparedCommitInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    PostCommentForComparedCommitInput.add_member(:before_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "beforeCommitId"))
    PostCommentForComparedCommitInput.add_member(:after_commit_id, Shapes::ShapeRef.new(shape: CommitId, required: true, location_name: "afterCommitId"))
    PostCommentForComparedCommitInput.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    PostCommentForComparedCommitInput.add_member(:content, Shapes::ShapeRef.new(shape: Content, required: true, location_name: "content"))
    PostCommentForComparedCommitInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    PostCommentForComparedCommitInput.struct_class = Types::PostCommentForComparedCommitInput

    PostCommentForComparedCommitOutput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    PostCommentForComparedCommitOutput.add_member(:before_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "beforeCommitId"))
    PostCommentForComparedCommitOutput.add_member(:after_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "afterCommitId"))
    PostCommentForComparedCommitOutput.add_member(:before_blob_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "beforeBlobId"))
    PostCommentForComparedCommitOutput.add_member(:after_blob_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "afterBlobId"))
    PostCommentForComparedCommitOutput.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    PostCommentForComparedCommitOutput.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "comment"))
    PostCommentForComparedCommitOutput.struct_class = Types::PostCommentForComparedCommitOutput

    PostCommentForPullRequestInput.add_member(:pull_request_id, Shapes::ShapeRef.new(shape: PullRequestId, required: true, location_name: "pullRequestId"))
    PostCommentForPullRequestInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    PostCommentForPullRequestInput.add_member(:before_commit_id, Shapes::ShapeRef.new(shape: CommitId, required: true, location_name: "beforeCommitId"))
    PostCommentForPullRequestInput.add_member(:after_commit_id, Shapes::ShapeRef.new(shape: CommitId, required: true, location_name: "afterCommitId"))
    PostCommentForPullRequestInput.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    PostCommentForPullRequestInput.add_member(:content, Shapes::ShapeRef.new(shape: Content, required: true, location_name: "content"))
    PostCommentForPullRequestInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    PostCommentForPullRequestInput.struct_class = Types::PostCommentForPullRequestInput

    PostCommentForPullRequestOutput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    PostCommentForPullRequestOutput.add_member(:pull_request_id, Shapes::ShapeRef.new(shape: PullRequestId, location_name: "pullRequestId"))
    PostCommentForPullRequestOutput.add_member(:before_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "beforeCommitId"))
    PostCommentForPullRequestOutput.add_member(:after_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "afterCommitId"))
    PostCommentForPullRequestOutput.add_member(:before_blob_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "beforeBlobId"))
    PostCommentForPullRequestOutput.add_member(:after_blob_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "afterBlobId"))
    PostCommentForPullRequestOutput.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    PostCommentForPullRequestOutput.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "comment"))
    PostCommentForPullRequestOutput.struct_class = Types::PostCommentForPullRequestOutput

    PostCommentReplyInput.add_member(:in_reply_to, Shapes::ShapeRef.new(shape: CommentId, required: true, location_name: "inReplyTo"))
    PostCommentReplyInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    PostCommentReplyInput.add_member(:content, Shapes::ShapeRef.new(shape: Content, required: true, location_name: "content"))
    PostCommentReplyInput.struct_class = Types::PostCommentReplyInput

    PostCommentReplyOutput.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "comment"))
    PostCommentReplyOutput.struct_class = Types::PostCommentReplyOutput

    PullRequest.add_member(:pull_request_id, Shapes::ShapeRef.new(shape: PullRequestId, location_name: "pullRequestId"))
    PullRequest.add_member(:title, Shapes::ShapeRef.new(shape: Title, location_name: "title"))
    PullRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    PullRequest.add_member(:last_activity_date, Shapes::ShapeRef.new(shape: LastModifiedDate, location_name: "lastActivityDate"))
    PullRequest.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, location_name: "creationDate"))
    PullRequest.add_member(:pull_request_status, Shapes::ShapeRef.new(shape: PullRequestStatusEnum, location_name: "pullRequestStatus"))
    PullRequest.add_member(:author_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "authorArn"))
    PullRequest.add_member(:pull_request_targets, Shapes::ShapeRef.new(shape: PullRequestTargetList, location_name: "pullRequestTargets"))
    PullRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientRequestToken"))
    PullRequest.struct_class = Types::PullRequest

    PullRequestCreatedEventMetadata.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    PullRequestCreatedEventMetadata.add_member(:source_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "sourceCommitId"))
    PullRequestCreatedEventMetadata.add_member(:destination_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "destinationCommitId"))
    PullRequestCreatedEventMetadata.add_member(:merge_base, Shapes::ShapeRef.new(shape: CommitId, location_name: "mergeBase"))
    PullRequestCreatedEventMetadata.struct_class = Types::PullRequestCreatedEventMetadata

    PullRequestEvent.add_member(:pull_request_id, Shapes::ShapeRef.new(shape: PullRequestId, location_name: "pullRequestId"))
    PullRequestEvent.add_member(:event_date, Shapes::ShapeRef.new(shape: EventDate, location_name: "eventDate"))
    PullRequestEvent.add_member(:pull_request_event_type, Shapes::ShapeRef.new(shape: PullRequestEventType, location_name: "pullRequestEventType"))
    PullRequestEvent.add_member(:actor_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "actorArn"))
    PullRequestEvent.add_member(:pull_request_created_event_metadata, Shapes::ShapeRef.new(shape: PullRequestCreatedEventMetadata, location_name: "pullRequestCreatedEventMetadata"))
    PullRequestEvent.add_member(:pull_request_status_changed_event_metadata, Shapes::ShapeRef.new(shape: PullRequestStatusChangedEventMetadata, location_name: "pullRequestStatusChangedEventMetadata"))
    PullRequestEvent.add_member(:pull_request_source_reference_updated_event_metadata, Shapes::ShapeRef.new(shape: PullRequestSourceReferenceUpdatedEventMetadata, location_name: "pullRequestSourceReferenceUpdatedEventMetadata"))
    PullRequestEvent.add_member(:pull_request_merged_state_changed_event_metadata, Shapes::ShapeRef.new(shape: PullRequestMergedStateChangedEventMetadata, location_name: "pullRequestMergedStateChangedEventMetadata"))
    PullRequestEvent.struct_class = Types::PullRequestEvent

    PullRequestEventList.member = Shapes::ShapeRef.new(shape: PullRequestEvent)

    PullRequestIdList.member = Shapes::ShapeRef.new(shape: PullRequestId)

    PullRequestMergedStateChangedEventMetadata.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    PullRequestMergedStateChangedEventMetadata.add_member(:destination_reference, Shapes::ShapeRef.new(shape: ReferenceName, location_name: "destinationReference"))
    PullRequestMergedStateChangedEventMetadata.add_member(:merge_metadata, Shapes::ShapeRef.new(shape: MergeMetadata, location_name: "mergeMetadata"))
    PullRequestMergedStateChangedEventMetadata.struct_class = Types::PullRequestMergedStateChangedEventMetadata

    PullRequestSourceReferenceUpdatedEventMetadata.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    PullRequestSourceReferenceUpdatedEventMetadata.add_member(:before_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "beforeCommitId"))
    PullRequestSourceReferenceUpdatedEventMetadata.add_member(:after_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "afterCommitId"))
    PullRequestSourceReferenceUpdatedEventMetadata.add_member(:merge_base, Shapes::ShapeRef.new(shape: CommitId, location_name: "mergeBase"))
    PullRequestSourceReferenceUpdatedEventMetadata.struct_class = Types::PullRequestSourceReferenceUpdatedEventMetadata

    PullRequestStatusChangedEventMetadata.add_member(:pull_request_status, Shapes::ShapeRef.new(shape: PullRequestStatusEnum, location_name: "pullRequestStatus"))
    PullRequestStatusChangedEventMetadata.struct_class = Types::PullRequestStatusChangedEventMetadata

    PullRequestTarget.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    PullRequestTarget.add_member(:source_reference, Shapes::ShapeRef.new(shape: ReferenceName, location_name: "sourceReference"))
    PullRequestTarget.add_member(:destination_reference, Shapes::ShapeRef.new(shape: ReferenceName, location_name: "destinationReference"))
    PullRequestTarget.add_member(:destination_commit, Shapes::ShapeRef.new(shape: CommitId, location_name: "destinationCommit"))
    PullRequestTarget.add_member(:source_commit, Shapes::ShapeRef.new(shape: CommitId, location_name: "sourceCommit"))
    PullRequestTarget.add_member(:merge_base, Shapes::ShapeRef.new(shape: CommitId, location_name: "mergeBase"))
    PullRequestTarget.add_member(:merge_metadata, Shapes::ShapeRef.new(shape: MergeMetadata, location_name: "mergeMetadata"))
    PullRequestTarget.struct_class = Types::PullRequestTarget

    PullRequestTargetList.member = Shapes::ShapeRef.new(shape: PullRequestTarget)

    PutFileEntries.member = Shapes::ShapeRef.new(shape: PutFileEntry)

    PutFileEntry.add_member(:file_path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "filePath"))
    PutFileEntry.add_member(:file_mode, Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: "fileMode"))
    PutFileEntry.add_member(:file_content, Shapes::ShapeRef.new(shape: FileContent, location_name: "fileContent"))
    PutFileEntry.add_member(:source_file, Shapes::ShapeRef.new(shape: SourceFileSpecifier, location_name: "sourceFile"))
    PutFileEntry.struct_class = Types::PutFileEntry

    PutFileInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    PutFileInput.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "branchName"))
    PutFileInput.add_member(:file_content, Shapes::ShapeRef.new(shape: FileContent, required: true, location_name: "fileContent"))
    PutFileInput.add_member(:file_path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "filePath"))
    PutFileInput.add_member(:file_mode, Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: "fileMode"))
    PutFileInput.add_member(:parent_commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "parentCommitId"))
    PutFileInput.add_member(:commit_message, Shapes::ShapeRef.new(shape: Message, location_name: "commitMessage"))
    PutFileInput.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    PutFileInput.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    PutFileInput.struct_class = Types::PutFileInput

    PutFileOutput.add_member(:commit_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "commitId"))
    PutFileOutput.add_member(:blob_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "blobId"))
    PutFileOutput.add_member(:tree_id, Shapes::ShapeRef.new(shape: ObjectId, required: true, location_name: "treeId"))
    PutFileOutput.struct_class = Types::PutFileOutput

    PutRepositoryTriggersInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    PutRepositoryTriggersInput.add_member(:triggers, Shapes::ShapeRef.new(shape: RepositoryTriggersList, required: true, location_name: "triggers"))
    PutRepositoryTriggersInput.struct_class = Types::PutRepositoryTriggersInput

    PutRepositoryTriggersOutput.add_member(:configuration_id, Shapes::ShapeRef.new(shape: RepositoryTriggersConfigurationId, location_name: "configurationId"))
    PutRepositoryTriggersOutput.struct_class = Types::PutRepositoryTriggersOutput

    ReplaceContentEntries.member = Shapes::ShapeRef.new(shape: ReplaceContentEntry)

    ReplaceContentEntry.add_member(:file_path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "filePath"))
    ReplaceContentEntry.add_member(:replacement_type, Shapes::ShapeRef.new(shape: ReplacementTypeEnum, required: true, location_name: "replacementType"))
    ReplaceContentEntry.add_member(:content, Shapes::ShapeRef.new(shape: FileContent, location_name: "content"))
    ReplaceContentEntry.add_member(:file_mode, Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: "fileMode"))
    ReplaceContentEntry.struct_class = Types::ReplaceContentEntry

    RepositoryMetadata.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    RepositoryMetadata.add_member(:repository_id, Shapes::ShapeRef.new(shape: RepositoryId, location_name: "repositoryId"))
    RepositoryMetadata.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    RepositoryMetadata.add_member(:repository_description, Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: "repositoryDescription"))
    RepositoryMetadata.add_member(:default_branch, Shapes::ShapeRef.new(shape: BranchName, location_name: "defaultBranch"))
    RepositoryMetadata.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: LastModifiedDate, location_name: "lastModifiedDate"))
    RepositoryMetadata.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, location_name: "creationDate"))
    RepositoryMetadata.add_member(:clone_url_http, Shapes::ShapeRef.new(shape: CloneUrlHttp, location_name: "cloneUrlHttp"))
    RepositoryMetadata.add_member(:clone_url_ssh, Shapes::ShapeRef.new(shape: CloneUrlSsh, location_name: "cloneUrlSsh"))
    RepositoryMetadata.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    RepositoryMetadata.struct_class = Types::RepositoryMetadata

    RepositoryMetadataList.member = Shapes::ShapeRef.new(shape: RepositoryMetadata)

    RepositoryNameIdPair.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    RepositoryNameIdPair.add_member(:repository_id, Shapes::ShapeRef.new(shape: RepositoryId, location_name: "repositoryId"))
    RepositoryNameIdPair.struct_class = Types::RepositoryNameIdPair

    RepositoryNameIdPairList.member = Shapes::ShapeRef.new(shape: RepositoryNameIdPair)

    RepositoryNameList.member = Shapes::ShapeRef.new(shape: RepositoryName)

    RepositoryNotFoundList.member = Shapes::ShapeRef.new(shape: RepositoryName)

    RepositoryTrigger.add_member(:name, Shapes::ShapeRef.new(shape: RepositoryTriggerName, required: true, location_name: "name"))
    RepositoryTrigger.add_member(:destination_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "destinationArn"))
    RepositoryTrigger.add_member(:custom_data, Shapes::ShapeRef.new(shape: RepositoryTriggerCustomData, location_name: "customData"))
    RepositoryTrigger.add_member(:branches, Shapes::ShapeRef.new(shape: BranchNameList, location_name: "branches"))
    RepositoryTrigger.add_member(:events, Shapes::ShapeRef.new(shape: RepositoryTriggerEventList, required: true, location_name: "events"))
    RepositoryTrigger.struct_class = Types::RepositoryTrigger

    RepositoryTriggerEventList.member = Shapes::ShapeRef.new(shape: RepositoryTriggerEventEnum)

    RepositoryTriggerExecutionFailure.add_member(:trigger, Shapes::ShapeRef.new(shape: RepositoryTriggerName, location_name: "trigger"))
    RepositoryTriggerExecutionFailure.add_member(:failure_message, Shapes::ShapeRef.new(shape: RepositoryTriggerExecutionFailureMessage, location_name: "failureMessage"))
    RepositoryTriggerExecutionFailure.struct_class = Types::RepositoryTriggerExecutionFailure

    RepositoryTriggerExecutionFailureList.member = Shapes::ShapeRef.new(shape: RepositoryTriggerExecutionFailure)

    RepositoryTriggerNameList.member = Shapes::ShapeRef.new(shape: RepositoryTriggerName)

    RepositoryTriggersList.member = Shapes::ShapeRef.new(shape: RepositoryTrigger)

    SetFileModeEntries.member = Shapes::ShapeRef.new(shape: SetFileModeEntry)

    SetFileModeEntry.add_member(:file_path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "filePath"))
    SetFileModeEntry.add_member(:file_mode, Shapes::ShapeRef.new(shape: FileModeTypeEnum, required: true, location_name: "fileMode"))
    SetFileModeEntry.struct_class = Types::SetFileModeEntry

    SourceFileSpecifier.add_member(:file_path, Shapes::ShapeRef.new(shape: Path, required: true, location_name: "filePath"))
    SourceFileSpecifier.add_member(:is_move, Shapes::ShapeRef.new(shape: IsMove, location_name: "isMove"))
    SourceFileSpecifier.struct_class = Types::SourceFileSpecifier

    SubModule.add_member(:commit_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "commitId"))
    SubModule.add_member(:absolute_path, Shapes::ShapeRef.new(shape: Path, location_name: "absolutePath"))
    SubModule.add_member(:relative_path, Shapes::ShapeRef.new(shape: Path, location_name: "relativePath"))
    SubModule.struct_class = Types::SubModule

    SubModuleList.member = Shapes::ShapeRef.new(shape: SubModule)

    SymbolicLink.add_member(:blob_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "blobId"))
    SymbolicLink.add_member(:absolute_path, Shapes::ShapeRef.new(shape: Path, location_name: "absolutePath"))
    SymbolicLink.add_member(:relative_path, Shapes::ShapeRef.new(shape: Path, location_name: "relativePath"))
    SymbolicLink.add_member(:file_mode, Shapes::ShapeRef.new(shape: FileModeTypeEnum, location_name: "fileMode"))
    SymbolicLink.struct_class = Types::SymbolicLink

    SymbolicLinkList.member = Shapes::ShapeRef.new(shape: SymbolicLink)

    TagKeysList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    Target.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    Target.add_member(:source_reference, Shapes::ShapeRef.new(shape: ReferenceName, required: true, location_name: "sourceReference"))
    Target.add_member(:destination_reference, Shapes::ShapeRef.new(shape: ReferenceName, location_name: "destinationReference"))
    Target.struct_class = Types::Target

    TargetList.member = Shapes::ShapeRef.new(shape: Target)

    TestRepositoryTriggersInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    TestRepositoryTriggersInput.add_member(:triggers, Shapes::ShapeRef.new(shape: RepositoryTriggersList, required: true, location_name: "triggers"))
    TestRepositoryTriggersInput.struct_class = Types::TestRepositoryTriggersInput

    TestRepositoryTriggersOutput.add_member(:successful_executions, Shapes::ShapeRef.new(shape: RepositoryTriggerNameList, location_name: "successfulExecutions"))
    TestRepositoryTriggersOutput.add_member(:failed_executions, Shapes::ShapeRef.new(shape: RepositoryTriggerExecutionFailureList, location_name: "failedExecutions"))
    TestRepositoryTriggersOutput.struct_class = Types::TestRepositoryTriggersOutput

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeysList, required: true, location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UpdateCommentInput.add_member(:comment_id, Shapes::ShapeRef.new(shape: CommentId, required: true, location_name: "commentId"))
    UpdateCommentInput.add_member(:content, Shapes::ShapeRef.new(shape: Content, required: true, location_name: "content"))
    UpdateCommentInput.struct_class = Types::UpdateCommentInput

    UpdateCommentOutput.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "comment"))
    UpdateCommentOutput.struct_class = Types::UpdateCommentOutput

    UpdateDefaultBranchInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    UpdateDefaultBranchInput.add_member(:default_branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "defaultBranchName"))
    UpdateDefaultBranchInput.struct_class = Types::UpdateDefaultBranchInput

    UpdatePullRequestDescriptionInput.add_member(:pull_request_id, Shapes::ShapeRef.new(shape: PullRequestId, required: true, location_name: "pullRequestId"))
    UpdatePullRequestDescriptionInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    UpdatePullRequestDescriptionInput.struct_class = Types::UpdatePullRequestDescriptionInput

    UpdatePullRequestDescriptionOutput.add_member(:pull_request, Shapes::ShapeRef.new(shape: PullRequest, required: true, location_name: "pullRequest"))
    UpdatePullRequestDescriptionOutput.struct_class = Types::UpdatePullRequestDescriptionOutput

    UpdatePullRequestStatusInput.add_member(:pull_request_id, Shapes::ShapeRef.new(shape: PullRequestId, required: true, location_name: "pullRequestId"))
    UpdatePullRequestStatusInput.add_member(:pull_request_status, Shapes::ShapeRef.new(shape: PullRequestStatusEnum, required: true, location_name: "pullRequestStatus"))
    UpdatePullRequestStatusInput.struct_class = Types::UpdatePullRequestStatusInput

    UpdatePullRequestStatusOutput.add_member(:pull_request, Shapes::ShapeRef.new(shape: PullRequest, required: true, location_name: "pullRequest"))
    UpdatePullRequestStatusOutput.struct_class = Types::UpdatePullRequestStatusOutput

    UpdatePullRequestTitleInput.add_member(:pull_request_id, Shapes::ShapeRef.new(shape: PullRequestId, required: true, location_name: "pullRequestId"))
    UpdatePullRequestTitleInput.add_member(:title, Shapes::ShapeRef.new(shape: Title, required: true, location_name: "title"))
    UpdatePullRequestTitleInput.struct_class = Types::UpdatePullRequestTitleInput

    UpdatePullRequestTitleOutput.add_member(:pull_request, Shapes::ShapeRef.new(shape: PullRequest, required: true, location_name: "pullRequest"))
    UpdatePullRequestTitleOutput.struct_class = Types::UpdatePullRequestTitleOutput

    UpdateRepositoryDescriptionInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    UpdateRepositoryDescriptionInput.add_member(:repository_description, Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: "repositoryDescription"))
    UpdateRepositoryDescriptionInput.struct_class = Types::UpdateRepositoryDescriptionInput

    UpdateRepositoryNameInput.add_member(:old_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "oldName"))
    UpdateRepositoryNameInput.add_member(:new_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "newName"))
    UpdateRepositoryNameInput.struct_class = Types::UpdateRepositoryNameInput

    UserInfo.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    UserInfo.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "email"))
    UserInfo.add_member(:date, Shapes::ShapeRef.new(shape: Date, location_name: "date"))
    UserInfo.struct_class = Types::UserInfo


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-04-13"

      api.metadata = {
        "apiVersion" => "2015-04-13",
        "endpointPrefix" => "codecommit",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "CodeCommit",
        "serviceFullName" => "AWS CodeCommit",
        "serviceId" => "CodeCommit",
        "signatureVersion" => "v4",
        "targetPrefix" => "CodeCommit_20150413",
        "uid" => "codecommit-2015-04-13",
      }

      api.add_operation(:batch_describe_merge_conflicts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDescribeMergeConflicts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchDescribeMergeConflictsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchDescribeMergeConflictsOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: MergeOptionRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMergeOptionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: CommitRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitException)
        o.errors << Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMaxConflictFilesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMaxMergeHunksException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:batch_get_repositories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetRepositories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetRepositoriesInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetRepositoriesOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNamesRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumRepositoryNamesExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:create_branch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBranch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBranchInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        o.errors << Shapes::ShapeRef.new(shape: CommitIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:create_commit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCommit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCommitInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCommitOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ParentCommitIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParentCommitIdException)
        o.errors << Shapes::ShapeRef.new(shape: ParentCommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ParentCommitIdOutdatedException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        o.errors << Shapes::ShapeRef.new(shape: BranchDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameIsTagNameException)
        o.errors << Shapes::ShapeRef.new(shape: FileEntryRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumFileEntriesExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PutFileEntryConflictException)
        o.errors << Shapes::ShapeRef.new(shape: SourceFileOrContentRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: FileContentAndSourceFileSpecifiedException)
        o.errors << Shapes::ShapeRef.new(shape: PathRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPathException)
        o.errors << Shapes::ShapeRef.new(shape: SamePathRequestException)
        o.errors << Shapes::ShapeRef.new(shape: FileDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: FileContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: FolderContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeletionParameterException)
        o.errors << Shapes::ShapeRef.new(shape: RestrictedSourceFileException)
        o.errors << Shapes::ShapeRef.new(shape: FileModeRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFileModeException)
        o.errors << Shapes::ShapeRef.new(shape: NameLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailException)
        o.errors << Shapes::ShapeRef.new(shape: CommitMessageLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: NoChangeException)
        o.errors << Shapes::ShapeRef.new(shape: FileNameConflictsWithDirectoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNameConflictsWithFileNameException)
        o.errors << Shapes::ShapeRef.new(shape: FilePathConflictsWithSubmodulePathException)
      end)

      api.add_operation(:create_pull_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePullRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePullRequestInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePullRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ClientRequestTokenRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientRequestTokenException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ReferenceNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReferenceNameException)
        o.errors << Shapes::ShapeRef.new(shape: ReferenceDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ReferenceTypeNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: TitleRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTitleException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDescriptionException)
        o.errors << Shapes::ShapeRef.new(shape: TargetsRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetsException)
        o.errors << Shapes::ShapeRef.new(shape: TargetRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetException)
        o.errors << Shapes::ShapeRef.new(shape: MultipleRepositoriesInPullRequestException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumOpenPullRequestsExceededException)
        o.errors << Shapes::ShapeRef.new(shape: SourceAndDestinationAreSameException)
      end)

      api.add_operation(:create_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateRepositoryInput)
        o.output = Shapes::ShapeRef.new(shape: CreateRepositoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameExistsException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryDescriptionException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagsMapException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSystemTagUsageException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyException)
      end)

      api.add_operation(:create_unreferenced_merge_commit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUnreferencedMergeCommit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUnreferencedMergeCommitInput)
        o.output = Shapes::ShapeRef.new(shape: CreateUnreferencedMergeCommitOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        o.errors << Shapes::ShapeRef.new(shape: CommitRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: MergeOptionRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMergeOptionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictResolutionException)
        o.errors << Shapes::ShapeRef.new(shape: ManualMergeRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumConflictResolutionEntriesExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MultipleConflictResolutionEntriesException)
        o.errors << Shapes::ShapeRef.new(shape: ReplacementTypeRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplacementTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ReplacementContentRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplacementContentException)
        o.errors << Shapes::ShapeRef.new(shape: PathRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPathException)
        o.errors << Shapes::ShapeRef.new(shape: FileContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: FolderContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        o.errors << Shapes::ShapeRef.new(shape: FileModeRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFileModeException)
        o.errors << Shapes::ShapeRef.new(shape: NameLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailException)
        o.errors << Shapes::ShapeRef.new(shape: CommitMessageLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:delete_branch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBranch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBranchInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteBranchOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        o.errors << Shapes::ShapeRef.new(shape: DefaultBranchCannotBeDeletedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:delete_comment_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCommentContent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCommentContentInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteCommentContentOutput)
        o.errors << Shapes::ShapeRef.new(shape: CommentDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: CommentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommentIdException)
        o.errors << Shapes::ShapeRef.new(shape: CommentDeletedException)
      end)

      api.add_operation(:delete_file, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFileInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteFileOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ParentCommitIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParentCommitIdException)
        o.errors << Shapes::ShapeRef.new(shape: ParentCommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ParentCommitIdOutdatedException)
        o.errors << Shapes::ShapeRef.new(shape: PathRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPathException)
        o.errors << Shapes::ShapeRef.new(shape: FileDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        o.errors << Shapes::ShapeRef.new(shape: BranchDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameIsTagNameException)
        o.errors << Shapes::ShapeRef.new(shape: NameLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailException)
        o.errors << Shapes::ShapeRef.new(shape: CommitMessageLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:delete_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteRepositoryInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteRepositoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:describe_merge_conflicts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMergeConflicts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMergeConflictsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeMergeConflictsOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: MergeOptionRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMergeOptionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: CommitRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitException)
        o.errors << Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PathRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPathException)
        o.errors << Shapes::ShapeRef.new(shape: FileDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMaxMergeHunksException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_merge_hunks",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_pull_request_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePullRequestEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePullRequestEventsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribePullRequestEventsOutput)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPullRequestEventTypeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidActorArnException)
        o.errors << Shapes::ShapeRef.new(shape: ActorDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_blob, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBlob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBlobInput)
        o.output = Shapes::ShapeRef.new(shape: GetBlobOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: BlobIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBlobIdException)
        o.errors << Shapes::ShapeRef.new(shape: BlobIdDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: FileTooLargeException)
      end)

      api.add_operation(:get_branch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBranch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetBranchInput)
        o.output = Shapes::ShapeRef.new(shape: GetBranchOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        o.errors << Shapes::ShapeRef.new(shape: BranchDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:get_comment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCommentInput)
        o.output = Shapes::ShapeRef.new(shape: GetCommentOutput)
        o.errors << Shapes::ShapeRef.new(shape: CommentDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: CommentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommentIdException)
        o.errors << Shapes::ShapeRef.new(shape: CommentDeletedException)
      end)

      api.add_operation(:get_comments_for_compared_commit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCommentsForComparedCommit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCommentsForComparedCommitInput)
        o.output = Shapes::ShapeRef.new(shape: GetCommentsForComparedCommitOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: CommitIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_comments_for_pull_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCommentsForPullRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCommentsForPullRequestInput)
        o.output = Shapes::ShapeRef.new(shape: GetCommentsForPullRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: CommitIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotAssociatedWithPullRequestException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_commit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCommit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCommitInput)
        o.output = Shapes::ShapeRef.new(shape: GetCommitOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: CommitIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        o.errors << Shapes::ShapeRef.new(shape: CommitIdDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:get_differences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDifferences"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetDifferencesInput)
        o.output = Shapes::ShapeRef.new(shape: GetDifferencesOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        o.errors << Shapes::ShapeRef.new(shape: CommitRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPathException)
        o.errors << Shapes::ShapeRef.new(shape: PathDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_file, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFileInput)
        o.output = Shapes::ShapeRef.new(shape: GetFileOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: PathRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPathException)
        o.errors << Shapes::ShapeRef.new(shape: FileDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: FileTooLargeException)
      end)

      api.add_operation(:get_folder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFolder"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetFolderInput)
        o.output = Shapes::ShapeRef.new(shape: GetFolderOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: PathRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPathException)
        o.errors << Shapes::ShapeRef.new(shape: FolderDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:get_merge_commit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMergeCommit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMergeCommitInput)
        o.output = Shapes::ShapeRef.new(shape: GetMergeCommitOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: CommitRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:get_merge_conflicts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMergeConflicts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMergeConflictsInput)
        o.output = Shapes::ShapeRef.new(shape: GetMergeConflictsOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: MergeOptionRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMergeOptionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: CommitRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitException)
        o.errors << Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMaxConflictFilesException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDestinationCommitSpecifierException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSourceCommitSpecifierException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_conflict_files",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_merge_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMergeOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMergeOptionsInput)
        o.output = Shapes::ShapeRef.new(shape: GetMergeOptionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: CommitRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitException)
        o.errors << Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:get_pull_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPullRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetPullRequestInput)
        o.output = Shapes::ShapeRef.new(shape: GetPullRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:get_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRepository"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRepositoryInput)
        o.output = Shapes::ShapeRef.new(shape: GetRepositoryOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:get_repository_triggers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRepositoryTriggers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetRepositoryTriggersInput)
        o.output = Shapes::ShapeRef.new(shape: GetRepositoryTriggersOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:list_branches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBranches"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBranchesInput)
        o.output = Shapes::ShapeRef.new(shape: ListBranchesOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pull_requests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPullRequests"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPullRequestsInput)
        o.output = Shapes::ShapeRef.new(shape: ListPullRequestsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPullRequestStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAuthorArnException)
        o.errors << Shapes::ShapeRef.new(shape: AuthorDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMaxResultsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_repositories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRepositories"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListRepositoriesInput)
        o.output = Shapes::ShapeRef.new(shape: ListRepositoriesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSortByException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidOrderException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidContinuationTokenException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceArnRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceArnException)
      end)

      api.add_operation(:merge_branches_by_fast_forward, Seahorse::Model::Operation.new.tap do |o|
        o.name = "MergeBranchesByFastForward"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: MergeBranchesByFastForwardInput)
        o.output = Shapes::ShapeRef.new(shape: MergeBranchesByFastForwardOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        o.errors << Shapes::ShapeRef.new(shape: CommitRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetBranchException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameIsTagNameException)
        o.errors << Shapes::ShapeRef.new(shape: BranchDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ManualMergeRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:merge_branches_by_squash, Seahorse::Model::Operation.new.tap do |o|
        o.name = "MergeBranchesBySquash"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: MergeBranchesBySquashInput)
        o.output = Shapes::ShapeRef.new(shape: MergeBranchesBySquashOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        o.errors << Shapes::ShapeRef.new(shape: CommitRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetBranchException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameIsTagNameException)
        o.errors << Shapes::ShapeRef.new(shape: BranchDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ManualMergeRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictResolutionException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumConflictResolutionEntriesExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MultipleConflictResolutionEntriesException)
        o.errors << Shapes::ShapeRef.new(shape: ReplacementTypeRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplacementTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ReplacementContentRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplacementContentException)
        o.errors << Shapes::ShapeRef.new(shape: PathRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPathException)
        o.errors << Shapes::ShapeRef.new(shape: FileContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: FolderContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        o.errors << Shapes::ShapeRef.new(shape: FileModeRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFileModeException)
        o.errors << Shapes::ShapeRef.new(shape: NameLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailException)
        o.errors << Shapes::ShapeRef.new(shape: CommitMessageLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:merge_branches_by_three_way, Seahorse::Model::Operation.new.tap do |o|
        o.name = "MergeBranchesByThreeWay"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: MergeBranchesByThreeWayInput)
        o.output = Shapes::ShapeRef.new(shape: MergeBranchesByThreeWayOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        o.errors << Shapes::ShapeRef.new(shape: CommitRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTargetBranchException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameIsTagNameException)
        o.errors << Shapes::ShapeRef.new(shape: BranchDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ManualMergeRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictResolutionException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumConflictResolutionEntriesExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MultipleConflictResolutionEntriesException)
        o.errors << Shapes::ShapeRef.new(shape: ReplacementTypeRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplacementTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ReplacementContentRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplacementContentException)
        o.errors << Shapes::ShapeRef.new(shape: PathRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPathException)
        o.errors << Shapes::ShapeRef.new(shape: FileContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: FolderContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        o.errors << Shapes::ShapeRef.new(shape: FileModeRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFileModeException)
        o.errors << Shapes::ShapeRef.new(shape: NameLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailException)
        o.errors << Shapes::ShapeRef.new(shape: CommitMessageLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:merge_pull_request_by_fast_forward, Seahorse::Model::Operation.new.tap do |o|
        o.name = "MergePullRequestByFastForward"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: MergePullRequestByFastForwardInput)
        o.output = Shapes::ShapeRef.new(shape: MergePullRequestByFastForwardOutput)
        o.errors << Shapes::ShapeRef.new(shape: ManualMergeRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestAlreadyClosedException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: TipOfSourceReferenceIsDifferentException)
        o.errors << Shapes::ShapeRef.new(shape: ReferenceDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotAssociatedWithPullRequestException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:merge_pull_request_by_squash, Seahorse::Model::Operation.new.tap do |o|
        o.name = "MergePullRequestBySquash"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: MergePullRequestBySquashInput)
        o.output = Shapes::ShapeRef.new(shape: MergePullRequestBySquashOutput)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestAlreadyClosedException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        o.errors << Shapes::ShapeRef.new(shape: ManualMergeRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: TipOfSourceReferenceIsDifferentException)
        o.errors << Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NameLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailException)
        o.errors << Shapes::ShapeRef.new(shape: CommitMessageLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictResolutionException)
        o.errors << Shapes::ShapeRef.new(shape: ReplacementTypeRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplacementTypeException)
        o.errors << Shapes::ShapeRef.new(shape: MultipleConflictResolutionEntriesException)
        o.errors << Shapes::ShapeRef.new(shape: ReplacementContentRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumConflictResolutionEntriesExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PathRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPathException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFileModeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplacementContentException)
        o.errors << Shapes::ShapeRef.new(shape: FileContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: FolderContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotAssociatedWithPullRequestException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:merge_pull_request_by_three_way, Seahorse::Model::Operation.new.tap do |o|
        o.name = "MergePullRequestByThreeWay"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: MergePullRequestByThreeWayInput)
        o.output = Shapes::ShapeRef.new(shape: MergePullRequestByThreeWayOutput)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestAlreadyClosedException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        o.errors << Shapes::ShapeRef.new(shape: ManualMergeRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: TipOfSourceReferenceIsDifferentException)
        o.errors << Shapes::ShapeRef.new(shape: TipsDivergenceExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NameLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailException)
        o.errors << Shapes::ShapeRef.new(shape: CommitMessageLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictDetailLevelException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictResolutionStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidConflictResolutionException)
        o.errors << Shapes::ShapeRef.new(shape: ReplacementTypeRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplacementTypeException)
        o.errors << Shapes::ShapeRef.new(shape: MultipleConflictResolutionEntriesException)
        o.errors << Shapes::ShapeRef.new(shape: ReplacementContentRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumConflictResolutionEntriesExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PathRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPathException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFileModeException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidReplacementContentException)
        o.errors << Shapes::ShapeRef.new(shape: FileContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: FolderContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumFileContentToLoadExceededException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumItemsToCompareExceededException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotAssociatedWithPullRequestException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:post_comment_for_compared_commit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PostCommentForComparedCommit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PostCommentForComparedCommitInput)
        o.output = Shapes::ShapeRef.new(shape: PostCommentForComparedCommitOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: ClientRequestTokenRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientRequestTokenException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: CommentContentRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: CommentContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFileLocationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRelativeFileVersionEnumException)
        o.errors << Shapes::ShapeRef.new(shape: PathRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilePositionException)
        o.errors << Shapes::ShapeRef.new(shape: CommitIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: BeforeCommitIdAndAfterCommitIdAreSameException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPathException)
        o.errors << Shapes::ShapeRef.new(shape: PathDoesNotExistException)
      end)

      api.add_operation(:post_comment_for_pull_request, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PostCommentForPullRequest"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PostCommentForPullRequestInput)
        o.output = Shapes::ShapeRef.new(shape: PostCommentForPullRequestOutput)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNotAssociatedWithPullRequestException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: ClientRequestTokenRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientRequestTokenException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: CommentContentRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: CommentContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFileLocationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRelativeFileVersionEnumException)
        o.errors << Shapes::ShapeRef.new(shape: PathRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFilePositionException)
        o.errors << Shapes::ShapeRef.new(shape: CommitIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommitIdException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: CommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPathException)
        o.errors << Shapes::ShapeRef.new(shape: PathDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: PathRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: BeforeCommitIdAndAfterCommitIdAreSameException)
      end)

      api.add_operation(:post_comment_reply, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PostCommentReply"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PostCommentReplyInput)
        o.output = Shapes::ShapeRef.new(shape: PostCommentReplyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ClientRequestTokenRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidClientRequestTokenException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: CommentContentRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: CommentContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: CommentDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: CommentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommentIdException)
      end)

      api.add_operation(:put_file, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutFile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutFileInput)
        o.output = Shapes::ShapeRef.new(shape: PutFileOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ParentCommitIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParentCommitIdException)
        o.errors << Shapes::ShapeRef.new(shape: ParentCommitDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: ParentCommitIdOutdatedException)
        o.errors << Shapes::ShapeRef.new(shape: FileContentRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: FileContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: FolderContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PathRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPathException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        o.errors << Shapes::ShapeRef.new(shape: BranchDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameIsTagNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFileModeException)
        o.errors << Shapes::ShapeRef.new(shape: NameLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidEmailException)
        o.errors << Shapes::ShapeRef.new(shape: CommitMessageLengthExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDeletionParameterException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: SameFileContentException)
        o.errors << Shapes::ShapeRef.new(shape: FileNameConflictsWithDirectoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: DirectoryNameConflictsWithFileNameException)
        o.errors << Shapes::ShapeRef.new(shape: FilePathConflictsWithSubmodulePathException)
      end)

      api.add_operation(:put_repository_triggers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRepositoryTriggers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutRepositoryTriggersInput)
        o.output = Shapes::ShapeRef.new(shape: PutRepositoryTriggersOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryTriggersListRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumRepositoryTriggersExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerDestinationArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerRegionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerCustomDataException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumBranchesExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerBranchNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerEventsException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryTriggerNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryTriggerDestinationArnRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryTriggerBranchNameListRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryTriggerEventsListRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceArnRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceArnException)
        o.errors << Shapes::ShapeRef.new(shape: TagsMapRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagsMapException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSystemTagUsageException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyException)
      end)

      api.add_operation(:test_repository_triggers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestRepositoryTriggers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TestRepositoryTriggersInput)
        o.output = Shapes::ShapeRef.new(shape: TestRepositoryTriggersOutput)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryTriggersListRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumRepositoryTriggersExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerDestinationArnException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerRegionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerCustomDataException)
        o.errors << Shapes::ShapeRef.new(shape: MaximumBranchesExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerBranchNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryTriggerEventsException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryTriggerNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryTriggerDestinationArnRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryTriggerBranchNameListRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryTriggerEventsListRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceArnRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidResourceArnException)
        o.errors << Shapes::ShapeRef.new(shape: TagKeysListRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTagKeysListException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSystemTagUsageException)
        o.errors << Shapes::ShapeRef.new(shape: TagPolicyException)
      end)

      api.add_operation(:update_comment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateComment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCommentInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateCommentOutput)
        o.errors << Shapes::ShapeRef.new(shape: CommentContentRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: CommentContentSizeLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: CommentDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: CommentIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidCommentIdException)
        o.errors << Shapes::ShapeRef.new(shape: CommentNotCreatedByCallerException)
        o.errors << Shapes::ShapeRef.new(shape: CommentDeletedException)
      end)

      api.add_operation(:update_default_branch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDefaultBranch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDefaultBranchInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: BranchNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBranchNameException)
        o.errors << Shapes::ShapeRef.new(shape: BranchDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:update_pull_request_description, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePullRequestDescription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePullRequestDescriptionInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePullRequestDescriptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidDescriptionException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestAlreadyClosedException)
      end)

      api.add_operation(:update_pull_request_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePullRequestStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePullRequestStatusInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePullRequestStatusOutput)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPullRequestStatusUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPullRequestStatusException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestStatusRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:update_pull_request_title, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePullRequestTitle"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdatePullRequestTitleInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePullRequestTitleOutput)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPullRequestIdException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestIdRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: TitleRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTitleException)
        o.errors << Shapes::ShapeRef.new(shape: PullRequestAlreadyClosedException)
      end)

      api.add_operation(:update_repository_description, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRepositoryDescription"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRepositoryDescriptionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryDescriptionException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionIntegrityChecksFailedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyAccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EncryptionKeyUnavailableException)
      end)

      api.add_operation(:update_repository_name, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRepositoryName"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRepositoryNameInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: RepositoryDoesNotExistException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameExistsException)
        o.errors << Shapes::ShapeRef.new(shape: RepositoryNameRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRepositoryNameException)
      end)
    end

  end
end
