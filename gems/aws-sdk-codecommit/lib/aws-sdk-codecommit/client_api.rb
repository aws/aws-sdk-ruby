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
    AdditionalData = Shapes::StringShape.new(name: 'AdditionalData')
    Arn = Shapes::StringShape.new(name: 'Arn')
    BatchGetRepositoriesInput = Shapes::StructureShape.new(name: 'BatchGetRepositoriesInput')
    BatchGetRepositoriesOutput = Shapes::StructureShape.new(name: 'BatchGetRepositoriesOutput')
    BlobIdDoesNotExistException = Shapes::StructureShape.new(name: 'BlobIdDoesNotExistException')
    BlobIdRequiredException = Shapes::StructureShape.new(name: 'BlobIdRequiredException')
    BlobMetadata = Shapes::StructureShape.new(name: 'BlobMetadata')
    BranchDoesNotExistException = Shapes::StructureShape.new(name: 'BranchDoesNotExistException')
    BranchInfo = Shapes::StructureShape.new(name: 'BranchInfo')
    BranchName = Shapes::StringShape.new(name: 'BranchName')
    BranchNameExistsException = Shapes::StructureShape.new(name: 'BranchNameExistsException')
    BranchNameList = Shapes::ListShape.new(name: 'BranchNameList')
    BranchNameRequiredException = Shapes::StructureShape.new(name: 'BranchNameRequiredException')
    ChangeTypeEnum = Shapes::StringShape.new(name: 'ChangeTypeEnum')
    CloneUrlHttp = Shapes::StringShape.new(name: 'CloneUrlHttp')
    CloneUrlSsh = Shapes::StringShape.new(name: 'CloneUrlSsh')
    Commit = Shapes::StructureShape.new(name: 'Commit')
    CommitDoesNotExistException = Shapes::StructureShape.new(name: 'CommitDoesNotExistException')
    CommitId = Shapes::StringShape.new(name: 'CommitId')
    CommitIdDoesNotExistException = Shapes::StructureShape.new(name: 'CommitIdDoesNotExistException')
    CommitIdRequiredException = Shapes::StructureShape.new(name: 'CommitIdRequiredException')
    CommitName = Shapes::StringShape.new(name: 'CommitName')
    CommitRequiredException = Shapes::StructureShape.new(name: 'CommitRequiredException')
    CreateBranchInput = Shapes::StructureShape.new(name: 'CreateBranchInput')
    CreateRepositoryInput = Shapes::StructureShape.new(name: 'CreateRepositoryInput')
    CreateRepositoryOutput = Shapes::StructureShape.new(name: 'CreateRepositoryOutput')
    CreationDate = Shapes::TimestampShape.new(name: 'CreationDate')
    Date = Shapes::StringShape.new(name: 'Date')
    DeleteRepositoryInput = Shapes::StructureShape.new(name: 'DeleteRepositoryInput')
    DeleteRepositoryOutput = Shapes::StructureShape.new(name: 'DeleteRepositoryOutput')
    Difference = Shapes::StructureShape.new(name: 'Difference')
    DifferenceList = Shapes::ListShape.new(name: 'DifferenceList')
    Email = Shapes::StringShape.new(name: 'Email')
    EncryptionIntegrityChecksFailedException = Shapes::StructureShape.new(name: 'EncryptionIntegrityChecksFailedException')
    EncryptionKeyAccessDeniedException = Shapes::StructureShape.new(name: 'EncryptionKeyAccessDeniedException')
    EncryptionKeyDisabledException = Shapes::StructureShape.new(name: 'EncryptionKeyDisabledException')
    EncryptionKeyNotFoundException = Shapes::StructureShape.new(name: 'EncryptionKeyNotFoundException')
    EncryptionKeyUnavailableException = Shapes::StructureShape.new(name: 'EncryptionKeyUnavailableException')
    FileTooLargeException = Shapes::StructureShape.new(name: 'FileTooLargeException')
    GetBlobInput = Shapes::StructureShape.new(name: 'GetBlobInput')
    GetBlobOutput = Shapes::StructureShape.new(name: 'GetBlobOutput')
    GetBranchInput = Shapes::StructureShape.new(name: 'GetBranchInput')
    GetBranchOutput = Shapes::StructureShape.new(name: 'GetBranchOutput')
    GetCommitInput = Shapes::StructureShape.new(name: 'GetCommitInput')
    GetCommitOutput = Shapes::StructureShape.new(name: 'GetCommitOutput')
    GetDifferencesInput = Shapes::StructureShape.new(name: 'GetDifferencesInput')
    GetDifferencesOutput = Shapes::StructureShape.new(name: 'GetDifferencesOutput')
    GetRepositoryInput = Shapes::StructureShape.new(name: 'GetRepositoryInput')
    GetRepositoryOutput = Shapes::StructureShape.new(name: 'GetRepositoryOutput')
    GetRepositoryTriggersInput = Shapes::StructureShape.new(name: 'GetRepositoryTriggersInput')
    GetRepositoryTriggersOutput = Shapes::StructureShape.new(name: 'GetRepositoryTriggersOutput')
    InvalidBlobIdException = Shapes::StructureShape.new(name: 'InvalidBlobIdException')
    InvalidBranchNameException = Shapes::StructureShape.new(name: 'InvalidBranchNameException')
    InvalidCommitException = Shapes::StructureShape.new(name: 'InvalidCommitException')
    InvalidCommitIdException = Shapes::StructureShape.new(name: 'InvalidCommitIdException')
    InvalidContinuationTokenException = Shapes::StructureShape.new(name: 'InvalidContinuationTokenException')
    InvalidMaxResultsException = Shapes::StructureShape.new(name: 'InvalidMaxResultsException')
    InvalidOrderException = Shapes::StructureShape.new(name: 'InvalidOrderException')
    InvalidPathException = Shapes::StructureShape.new(name: 'InvalidPathException')
    InvalidRepositoryDescriptionException = Shapes::StructureShape.new(name: 'InvalidRepositoryDescriptionException')
    InvalidRepositoryNameException = Shapes::StructureShape.new(name: 'InvalidRepositoryNameException')
    InvalidRepositoryTriggerBranchNameException = Shapes::StructureShape.new(name: 'InvalidRepositoryTriggerBranchNameException')
    InvalidRepositoryTriggerCustomDataException = Shapes::StructureShape.new(name: 'InvalidRepositoryTriggerCustomDataException')
    InvalidRepositoryTriggerDestinationArnException = Shapes::StructureShape.new(name: 'InvalidRepositoryTriggerDestinationArnException')
    InvalidRepositoryTriggerEventsException = Shapes::StructureShape.new(name: 'InvalidRepositoryTriggerEventsException')
    InvalidRepositoryTriggerNameException = Shapes::StructureShape.new(name: 'InvalidRepositoryTriggerNameException')
    InvalidRepositoryTriggerRegionException = Shapes::StructureShape.new(name: 'InvalidRepositoryTriggerRegionException')
    InvalidSortByException = Shapes::StructureShape.new(name: 'InvalidSortByException')
    LastModifiedDate = Shapes::TimestampShape.new(name: 'LastModifiedDate')
    Limit = Shapes::IntegerShape.new(name: 'Limit')
    ListBranchesInput = Shapes::StructureShape.new(name: 'ListBranchesInput')
    ListBranchesOutput = Shapes::StructureShape.new(name: 'ListBranchesOutput')
    ListRepositoriesInput = Shapes::StructureShape.new(name: 'ListRepositoriesInput')
    ListRepositoriesOutput = Shapes::StructureShape.new(name: 'ListRepositoriesOutput')
    MaximumBranchesExceededException = Shapes::StructureShape.new(name: 'MaximumBranchesExceededException')
    MaximumRepositoryNamesExceededException = Shapes::StructureShape.new(name: 'MaximumRepositoryNamesExceededException')
    MaximumRepositoryTriggersExceededException = Shapes::StructureShape.new(name: 'MaximumRepositoryTriggersExceededException')
    Message = Shapes::StringShape.new(name: 'Message')
    Mode = Shapes::StringShape.new(name: 'Mode')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ObjectId = Shapes::StringShape.new(name: 'ObjectId')
    OrderEnum = Shapes::StringShape.new(name: 'OrderEnum')
    ParentList = Shapes::ListShape.new(name: 'ParentList')
    Path = Shapes::StringShape.new(name: 'Path')
    PathDoesNotExistException = Shapes::StructureShape.new(name: 'PathDoesNotExistException')
    PutRepositoryTriggersInput = Shapes::StructureShape.new(name: 'PutRepositoryTriggersInput')
    PutRepositoryTriggersOutput = Shapes::StructureShape.new(name: 'PutRepositoryTriggersOutput')
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
    SortByEnum = Shapes::StringShape.new(name: 'SortByEnum')
    TestRepositoryTriggersInput = Shapes::StructureShape.new(name: 'TestRepositoryTriggersInput')
    TestRepositoryTriggersOutput = Shapes::StructureShape.new(name: 'TestRepositoryTriggersOutput')
    UpdateDefaultBranchInput = Shapes::StructureShape.new(name: 'UpdateDefaultBranchInput')
    UpdateRepositoryDescriptionInput = Shapes::StructureShape.new(name: 'UpdateRepositoryDescriptionInput')
    UpdateRepositoryNameInput = Shapes::StructureShape.new(name: 'UpdateRepositoryNameInput')
    UserInfo = Shapes::StructureShape.new(name: 'UserInfo')
    blob = Shapes::BlobShape.new(name: 'blob')

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

    Commit.add_member(:tree_id, Shapes::ShapeRef.new(shape: ObjectId, location_name: "treeId"))
    Commit.add_member(:parents, Shapes::ShapeRef.new(shape: ParentList, location_name: "parents"))
    Commit.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    Commit.add_member(:author, Shapes::ShapeRef.new(shape: UserInfo, location_name: "author"))
    Commit.add_member(:committer, Shapes::ShapeRef.new(shape: UserInfo, location_name: "committer"))
    Commit.add_member(:additional_data, Shapes::ShapeRef.new(shape: AdditionalData, location_name: "additionalData"))
    Commit.struct_class = Types::Commit

    CreateBranchInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    CreateBranchInput.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "branchName"))
    CreateBranchInput.add_member(:commit_id, Shapes::ShapeRef.new(shape: CommitId, required: true, location_name: "commitId"))
    CreateBranchInput.struct_class = Types::CreateBranchInput

    CreateRepositoryInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    CreateRepositoryInput.add_member(:repository_description, Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: "repositoryDescription"))
    CreateRepositoryInput.struct_class = Types::CreateRepositoryInput

    CreateRepositoryOutput.add_member(:repository_metadata, Shapes::ShapeRef.new(shape: RepositoryMetadata, location_name: "repositoryMetadata"))
    CreateRepositoryOutput.struct_class = Types::CreateRepositoryOutput

    DeleteRepositoryInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    DeleteRepositoryInput.struct_class = Types::DeleteRepositoryInput

    DeleteRepositoryOutput.add_member(:repository_id, Shapes::ShapeRef.new(shape: RepositoryId, location_name: "repositoryId"))
    DeleteRepositoryOutput.struct_class = Types::DeleteRepositoryOutput

    Difference.add_member(:before_blob, Shapes::ShapeRef.new(shape: BlobMetadata, location_name: "beforeBlob"))
    Difference.add_member(:after_blob, Shapes::ShapeRef.new(shape: BlobMetadata, location_name: "afterBlob"))
    Difference.add_member(:change_type, Shapes::ShapeRef.new(shape: ChangeTypeEnum, location_name: "changeType"))
    Difference.struct_class = Types::Difference

    DifferenceList.member = Shapes::ShapeRef.new(shape: Difference)

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

    GetRepositoryInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetRepositoryInput.struct_class = Types::GetRepositoryInput

    GetRepositoryOutput.add_member(:repository_metadata, Shapes::ShapeRef.new(shape: RepositoryMetadata, location_name: "repositoryMetadata"))
    GetRepositoryOutput.struct_class = Types::GetRepositoryOutput

    GetRepositoryTriggersInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    GetRepositoryTriggersInput.struct_class = Types::GetRepositoryTriggersInput

    GetRepositoryTriggersOutput.add_member(:configuration_id, Shapes::ShapeRef.new(shape: RepositoryTriggersConfigurationId, location_name: "configurationId"))
    GetRepositoryTriggersOutput.add_member(:triggers, Shapes::ShapeRef.new(shape: RepositoryTriggersList, location_name: "triggers"))
    GetRepositoryTriggersOutput.struct_class = Types::GetRepositoryTriggersOutput

    ListBranchesInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    ListBranchesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBranchesInput.struct_class = Types::ListBranchesInput

    ListBranchesOutput.add_member(:branches, Shapes::ShapeRef.new(shape: BranchNameList, location_name: "branches"))
    ListBranchesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBranchesOutput.struct_class = Types::ListBranchesOutput

    ListRepositoriesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRepositoriesInput.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortByEnum, location_name: "sortBy"))
    ListRepositoriesInput.add_member(:order, Shapes::ShapeRef.new(shape: OrderEnum, location_name: "order"))
    ListRepositoriesInput.struct_class = Types::ListRepositoriesInput

    ListRepositoriesOutput.add_member(:repositories, Shapes::ShapeRef.new(shape: RepositoryNameIdPairList, location_name: "repositories"))
    ListRepositoriesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRepositoriesOutput.struct_class = Types::ListRepositoriesOutput

    ParentList.member = Shapes::ShapeRef.new(shape: ObjectId)

    PutRepositoryTriggersInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    PutRepositoryTriggersInput.add_member(:triggers, Shapes::ShapeRef.new(shape: RepositoryTriggersList, required: true, location_name: "triggers"))
    PutRepositoryTriggersInput.struct_class = Types::PutRepositoryTriggersInput

    PutRepositoryTriggersOutput.add_member(:configuration_id, Shapes::ShapeRef.new(shape: RepositoryTriggersConfigurationId, location_name: "configurationId"))
    PutRepositoryTriggersOutput.struct_class = Types::PutRepositoryTriggersOutput

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

    TestRepositoryTriggersInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    TestRepositoryTriggersInput.add_member(:triggers, Shapes::ShapeRef.new(shape: RepositoryTriggersList, required: true, location_name: "triggers"))
    TestRepositoryTriggersInput.struct_class = Types::TestRepositoryTriggersInput

    TestRepositoryTriggersOutput.add_member(:successful_executions, Shapes::ShapeRef.new(shape: RepositoryTriggerNameList, location_name: "successfulExecutions"))
    TestRepositoryTriggersOutput.add_member(:failed_executions, Shapes::ShapeRef.new(shape: RepositoryTriggerExecutionFailureList, location_name: "failedExecutions"))
    TestRepositoryTriggersOutput.struct_class = Types::TestRepositoryTriggersOutput

    UpdateDefaultBranchInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    UpdateDefaultBranchInput.add_member(:default_branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "defaultBranchName"))
    UpdateDefaultBranchInput.struct_class = Types::UpdateDefaultBranchInput

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
        "endpointPrefix" => "codecommit",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS CodeCommit",
        "signatureVersion" => "v4",
        "targetPrefix" => "CodeCommit_20150413",
      }

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
