# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Omics
  # @api private
  module ClientApi

    include Seahorse::Model

    AbortMultipartReadSetUploadRequest = Shapes::StructureShape.new(name: 'AbortMultipartReadSetUploadRequest')
    AbortMultipartReadSetUploadResponse = Shapes::StructureShape.new(name: 'AbortMultipartReadSetUploadResponse')
    Accelerators = Shapes::StringShape.new(name: 'Accelerators')
    AcceptShareRequest = Shapes::StructureShape.new(name: 'AcceptShareRequest')
    AcceptShareResponse = Shapes::StructureShape.new(name: 'AcceptShareResponse')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessLogLocation = Shapes::StringShape.new(name: 'AccessLogLocation')
    ActivateReadSetFilter = Shapes::StructureShape.new(name: 'ActivateReadSetFilter')
    ActivateReadSetJobItem = Shapes::StructureShape.new(name: 'ActivateReadSetJobItem')
    ActivateReadSetJobList = Shapes::ListShape.new(name: 'ActivateReadSetJobList')
    ActivateReadSetSourceItem = Shapes::StructureShape.new(name: 'ActivateReadSetSourceItem')
    ActivateReadSetSourceList = Shapes::ListShape.new(name: 'ActivateReadSetSourceList')
    ActivationJobId = Shapes::StringShape.new(name: 'ActivationJobId')
    AnnotationFieldMap = Shapes::MapShape.new(name: 'AnnotationFieldMap')
    AnnotationFieldMapKeyString = Shapes::StringShape.new(name: 'AnnotationFieldMapKeyString')
    AnnotationFieldMapValueString = Shapes::StringShape.new(name: 'AnnotationFieldMapValueString')
    AnnotationImportItemDetail = Shapes::StructureShape.new(name: 'AnnotationImportItemDetail')
    AnnotationImportItemDetails = Shapes::ListShape.new(name: 'AnnotationImportItemDetails')
    AnnotationImportItemSource = Shapes::StructureShape.new(name: 'AnnotationImportItemSource')
    AnnotationImportItemSources = Shapes::ListShape.new(name: 'AnnotationImportItemSources')
    AnnotationImportJobItem = Shapes::StructureShape.new(name: 'AnnotationImportJobItem')
    AnnotationImportJobItems = Shapes::ListShape.new(name: 'AnnotationImportJobItems')
    AnnotationStoreItem = Shapes::StructureShape.new(name: 'AnnotationStoreItem')
    AnnotationStoreItems = Shapes::ListShape.new(name: 'AnnotationStoreItems')
    AnnotationStoreVersionItem = Shapes::StructureShape.new(name: 'AnnotationStoreVersionItem')
    AnnotationStoreVersionItems = Shapes::ListShape.new(name: 'AnnotationStoreVersionItems')
    AnnotationType = Shapes::StringShape.new(name: 'AnnotationType')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    BatchDeleteReadSetRequest = Shapes::StructureShape.new(name: 'BatchDeleteReadSetRequest')
    BatchDeleteReadSetResponse = Shapes::StructureShape.new(name: 'BatchDeleteReadSetResponse')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CacheBehavior = Shapes::StringShape.new(name: 'CacheBehavior')
    CancelAnnotationImportRequest = Shapes::StructureShape.new(name: 'CancelAnnotationImportRequest')
    CancelAnnotationImportResponse = Shapes::StructureShape.new(name: 'CancelAnnotationImportResponse')
    CancelRunRequest = Shapes::StructureShape.new(name: 'CancelRunRequest')
    CancelVariantImportRequest = Shapes::StructureShape.new(name: 'CancelVariantImportRequest')
    CancelVariantImportResponse = Shapes::StructureShape.new(name: 'CancelVariantImportResponse')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CommentChar = Shapes::StringShape.new(name: 'CommentChar')
    CompleteMultipartReadSetUploadRequest = Shapes::StructureShape.new(name: 'CompleteMultipartReadSetUploadRequest')
    CompleteMultipartReadSetUploadResponse = Shapes::StructureShape.new(name: 'CompleteMultipartReadSetUploadResponse')
    CompleteReadSetUploadPartList = Shapes::ListShape.new(name: 'CompleteReadSetUploadPartList')
    CompleteReadSetUploadPartListItem = Shapes::StructureShape.new(name: 'CompleteReadSetUploadPartListItem')
    CompleteReadSetUploadPartListItemChecksumString = Shapes::StringShape.new(name: 'CompleteReadSetUploadPartListItemChecksumString')
    CompleteReadSetUploadPartListItemPartNumberInteger = Shapes::IntegerShape.new(name: 'CompleteReadSetUploadPartListItemPartNumberInteger')
    CompletionTime = Shapes::TimestampShape.new(name: 'CompletionTime', timestampFormat: "iso8601")
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionArn = Shapes::StringShape.new(name: 'ConnectionArn')
    CreateAnnotationStoreRequest = Shapes::StructureShape.new(name: 'CreateAnnotationStoreRequest')
    CreateAnnotationStoreResponse = Shapes::StructureShape.new(name: 'CreateAnnotationStoreResponse')
    CreateAnnotationStoreVersionRequest = Shapes::StructureShape.new(name: 'CreateAnnotationStoreVersionRequest')
    CreateAnnotationStoreVersionResponse = Shapes::StructureShape.new(name: 'CreateAnnotationStoreVersionResponse')
    CreateMultipartReadSetUploadRequest = Shapes::StructureShape.new(name: 'CreateMultipartReadSetUploadRequest')
    CreateMultipartReadSetUploadResponse = Shapes::StructureShape.new(name: 'CreateMultipartReadSetUploadResponse')
    CreateReferenceStoreRequest = Shapes::StructureShape.new(name: 'CreateReferenceStoreRequest')
    CreateReferenceStoreResponse = Shapes::StructureShape.new(name: 'CreateReferenceStoreResponse')
    CreateRunCacheRequest = Shapes::StructureShape.new(name: 'CreateRunCacheRequest')
    CreateRunCacheResponse = Shapes::StructureShape.new(name: 'CreateRunCacheResponse')
    CreateRunGroupRequest = Shapes::StructureShape.new(name: 'CreateRunGroupRequest')
    CreateRunGroupRequestMaxCpusInteger = Shapes::IntegerShape.new(name: 'CreateRunGroupRequestMaxCpusInteger')
    CreateRunGroupRequestMaxDurationInteger = Shapes::IntegerShape.new(name: 'CreateRunGroupRequestMaxDurationInteger')
    CreateRunGroupRequestMaxGpusInteger = Shapes::IntegerShape.new(name: 'CreateRunGroupRequestMaxGpusInteger')
    CreateRunGroupRequestMaxRunsInteger = Shapes::IntegerShape.new(name: 'CreateRunGroupRequestMaxRunsInteger')
    CreateRunGroupResponse = Shapes::StructureShape.new(name: 'CreateRunGroupResponse')
    CreateSequenceStoreRequest = Shapes::StructureShape.new(name: 'CreateSequenceStoreRequest')
    CreateSequenceStoreResponse = Shapes::StructureShape.new(name: 'CreateSequenceStoreResponse')
    CreateShareRequest = Shapes::StructureShape.new(name: 'CreateShareRequest')
    CreateShareResponse = Shapes::StructureShape.new(name: 'CreateShareResponse')
    CreateVariantStoreRequest = Shapes::StructureShape.new(name: 'CreateVariantStoreRequest')
    CreateVariantStoreResponse = Shapes::StructureShape.new(name: 'CreateVariantStoreResponse')
    CreateWorkflowRequest = Shapes::StructureShape.new(name: 'CreateWorkflowRequest')
    CreateWorkflowRequestStorageCapacityInteger = Shapes::IntegerShape.new(name: 'CreateWorkflowRequestStorageCapacityInteger')
    CreateWorkflowResponse = Shapes::StructureShape.new(name: 'CreateWorkflowResponse')
    CreateWorkflowVersionRequest = Shapes::StructureShape.new(name: 'CreateWorkflowVersionRequest')
    CreateWorkflowVersionRequestStorageCapacityInteger = Shapes::IntegerShape.new(name: 'CreateWorkflowVersionRequestStorageCapacityInteger')
    CreateWorkflowVersionResponse = Shapes::StructureShape.new(name: 'CreateWorkflowVersionResponse')
    CreationJobId = Shapes::StringShape.new(name: 'CreationJobId')
    CreationTime = Shapes::TimestampShape.new(name: 'CreationTime', timestampFormat: "iso8601")
    CreationType = Shapes::StringShape.new(name: 'CreationType')
    DefinitionRepository = Shapes::StructureShape.new(name: 'DefinitionRepository')
    DefinitionRepositoryDetails = Shapes::StructureShape.new(name: 'DefinitionRepositoryDetails')
    DeleteAnnotationStoreRequest = Shapes::StructureShape.new(name: 'DeleteAnnotationStoreRequest')
    DeleteAnnotationStoreResponse = Shapes::StructureShape.new(name: 'DeleteAnnotationStoreResponse')
    DeleteAnnotationStoreVersionsRequest = Shapes::StructureShape.new(name: 'DeleteAnnotationStoreVersionsRequest')
    DeleteAnnotationStoreVersionsResponse = Shapes::StructureShape.new(name: 'DeleteAnnotationStoreVersionsResponse')
    DeleteReferenceRequest = Shapes::StructureShape.new(name: 'DeleteReferenceRequest')
    DeleteReferenceResponse = Shapes::StructureShape.new(name: 'DeleteReferenceResponse')
    DeleteReferenceStoreRequest = Shapes::StructureShape.new(name: 'DeleteReferenceStoreRequest')
    DeleteReferenceStoreResponse = Shapes::StructureShape.new(name: 'DeleteReferenceStoreResponse')
    DeleteRunCacheRequest = Shapes::StructureShape.new(name: 'DeleteRunCacheRequest')
    DeleteRunGroupRequest = Shapes::StructureShape.new(name: 'DeleteRunGroupRequest')
    DeleteRunRequest = Shapes::StructureShape.new(name: 'DeleteRunRequest')
    DeleteS3AccessPolicyRequest = Shapes::StructureShape.new(name: 'DeleteS3AccessPolicyRequest')
    DeleteS3AccessPolicyResponse = Shapes::StructureShape.new(name: 'DeleteS3AccessPolicyResponse')
    DeleteSequenceStoreRequest = Shapes::StructureShape.new(name: 'DeleteSequenceStoreRequest')
    DeleteSequenceStoreResponse = Shapes::StructureShape.new(name: 'DeleteSequenceStoreResponse')
    DeleteShareRequest = Shapes::StructureShape.new(name: 'DeleteShareRequest')
    DeleteShareResponse = Shapes::StructureShape.new(name: 'DeleteShareResponse')
    DeleteVariantStoreRequest = Shapes::StructureShape.new(name: 'DeleteVariantStoreRequest')
    DeleteVariantStoreResponse = Shapes::StructureShape.new(name: 'DeleteVariantStoreResponse')
    DeleteWorkflowRequest = Shapes::StructureShape.new(name: 'DeleteWorkflowRequest')
    DeleteWorkflowVersionRequest = Shapes::StructureShape.new(name: 'DeleteWorkflowVersionRequest')
    Description = Shapes::StringShape.new(name: 'Description')
    ETag = Shapes::StructureShape.new(name: 'ETag')
    ETagAlgorithm = Shapes::StringShape.new(name: 'ETagAlgorithm')
    ETagAlgorithmFamily = Shapes::StringShape.new(name: 'ETagAlgorithmFamily')
    Encoding = Shapes::StringShape.new(name: 'Encoding')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    EngineLogStream = Shapes::StringShape.new(name: 'EngineLogStream')
    EngineVersion = Shapes::StringShape.new(name: 'EngineVersion')
    EscapeChar = Shapes::StringShape.new(name: 'EscapeChar')
    EscapeQuotes = Shapes::BooleanShape.new(name: 'EscapeQuotes')
    ExcludeFilePatternList = Shapes::ListShape.new(name: 'ExcludeFilePatternList')
    ExportJobId = Shapes::StringShape.new(name: 'ExportJobId')
    ExportReadSet = Shapes::StructureShape.new(name: 'ExportReadSet')
    ExportReadSetDetail = Shapes::StructureShape.new(name: 'ExportReadSetDetail')
    ExportReadSetDetailList = Shapes::ListShape.new(name: 'ExportReadSetDetailList')
    ExportReadSetFilter = Shapes::StructureShape.new(name: 'ExportReadSetFilter')
    ExportReadSetJobDetail = Shapes::StructureShape.new(name: 'ExportReadSetJobDetail')
    ExportReadSetJobDetailList = Shapes::ListShape.new(name: 'ExportReadSetJobDetailList')
    FallbackLocation = Shapes::StringShape.new(name: 'FallbackLocation')
    FileInformation = Shapes::StructureShape.new(name: 'FileInformation')
    FileInformationContentLengthLong = Shapes::IntegerShape.new(name: 'FileInformationContentLengthLong')
    FileInformationPartSizeLong = Shapes::IntegerShape.new(name: 'FileInformationPartSizeLong')
    FileInformationTotalPartsInteger = Shapes::IntegerShape.new(name: 'FileInformationTotalPartsInteger')
    FileType = Shapes::StringShape.new(name: 'FileType')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FormatOptions = Shapes::UnionShape.new(name: 'FormatOptions')
    FormatToHeader = Shapes::MapShape.new(name: 'FormatToHeader')
    FormatToHeaderKey = Shapes::StringShape.new(name: 'FormatToHeaderKey')
    FormatToHeaderValueString = Shapes::StringShape.new(name: 'FormatToHeaderValueString')
    FullRepositoryId = Shapes::StringShape.new(name: 'FullRepositoryId')
    GeneratedFrom = Shapes::StringShape.new(name: 'GeneratedFrom')
    GetAnnotationImportRequest = Shapes::StructureShape.new(name: 'GetAnnotationImportRequest')
    GetAnnotationImportResponse = Shapes::StructureShape.new(name: 'GetAnnotationImportResponse')
    GetAnnotationStoreRequest = Shapes::StructureShape.new(name: 'GetAnnotationStoreRequest')
    GetAnnotationStoreResponse = Shapes::StructureShape.new(name: 'GetAnnotationStoreResponse')
    GetAnnotationStoreVersionRequest = Shapes::StructureShape.new(name: 'GetAnnotationStoreVersionRequest')
    GetAnnotationStoreVersionResponse = Shapes::StructureShape.new(name: 'GetAnnotationStoreVersionResponse')
    GetReadSetActivationJobRequest = Shapes::StructureShape.new(name: 'GetReadSetActivationJobRequest')
    GetReadSetActivationJobResponse = Shapes::StructureShape.new(name: 'GetReadSetActivationJobResponse')
    GetReadSetExportJobRequest = Shapes::StructureShape.new(name: 'GetReadSetExportJobRequest')
    GetReadSetExportJobResponse = Shapes::StructureShape.new(name: 'GetReadSetExportJobResponse')
    GetReadSetImportJobRequest = Shapes::StructureShape.new(name: 'GetReadSetImportJobRequest')
    GetReadSetImportJobResponse = Shapes::StructureShape.new(name: 'GetReadSetImportJobResponse')
    GetReadSetMetadataRequest = Shapes::StructureShape.new(name: 'GetReadSetMetadataRequest')
    GetReadSetMetadataResponse = Shapes::StructureShape.new(name: 'GetReadSetMetadataResponse')
    GetReadSetRequest = Shapes::StructureShape.new(name: 'GetReadSetRequest')
    GetReadSetRequestPartNumberInteger = Shapes::IntegerShape.new(name: 'GetReadSetRequestPartNumberInteger')
    GetReadSetResponse = Shapes::StructureShape.new(name: 'GetReadSetResponse')
    GetReferenceImportJobRequest = Shapes::StructureShape.new(name: 'GetReferenceImportJobRequest')
    GetReferenceImportJobResponse = Shapes::StructureShape.new(name: 'GetReferenceImportJobResponse')
    GetReferenceMetadataRequest = Shapes::StructureShape.new(name: 'GetReferenceMetadataRequest')
    GetReferenceMetadataResponse = Shapes::StructureShape.new(name: 'GetReferenceMetadataResponse')
    GetReferenceRequest = Shapes::StructureShape.new(name: 'GetReferenceRequest')
    GetReferenceRequestPartNumberInteger = Shapes::IntegerShape.new(name: 'GetReferenceRequestPartNumberInteger')
    GetReferenceResponse = Shapes::StructureShape.new(name: 'GetReferenceResponse')
    GetReferenceStoreRequest = Shapes::StructureShape.new(name: 'GetReferenceStoreRequest')
    GetReferenceStoreResponse = Shapes::StructureShape.new(name: 'GetReferenceStoreResponse')
    GetRunCacheRequest = Shapes::StructureShape.new(name: 'GetRunCacheRequest')
    GetRunCacheResponse = Shapes::StructureShape.new(name: 'GetRunCacheResponse')
    GetRunGroupRequest = Shapes::StructureShape.new(name: 'GetRunGroupRequest')
    GetRunGroupResponse = Shapes::StructureShape.new(name: 'GetRunGroupResponse')
    GetRunGroupResponseMaxCpusInteger = Shapes::IntegerShape.new(name: 'GetRunGroupResponseMaxCpusInteger')
    GetRunGroupResponseMaxDurationInteger = Shapes::IntegerShape.new(name: 'GetRunGroupResponseMaxDurationInteger')
    GetRunGroupResponseMaxGpusInteger = Shapes::IntegerShape.new(name: 'GetRunGroupResponseMaxGpusInteger')
    GetRunGroupResponseMaxRunsInteger = Shapes::IntegerShape.new(name: 'GetRunGroupResponseMaxRunsInteger')
    GetRunRequest = Shapes::StructureShape.new(name: 'GetRunRequest')
    GetRunResponse = Shapes::StructureShape.new(name: 'GetRunResponse')
    GetRunResponsePriorityInteger = Shapes::IntegerShape.new(name: 'GetRunResponsePriorityInteger')
    GetRunResponseStorageCapacityInteger = Shapes::IntegerShape.new(name: 'GetRunResponseStorageCapacityInteger')
    GetRunTaskRequest = Shapes::StructureShape.new(name: 'GetRunTaskRequest')
    GetRunTaskResponse = Shapes::StructureShape.new(name: 'GetRunTaskResponse')
    GetRunTaskResponseCpusInteger = Shapes::IntegerShape.new(name: 'GetRunTaskResponseCpusInteger')
    GetRunTaskResponseGpusInteger = Shapes::IntegerShape.new(name: 'GetRunTaskResponseGpusInteger')
    GetRunTaskResponseMemoryInteger = Shapes::IntegerShape.new(name: 'GetRunTaskResponseMemoryInteger')
    GetS3AccessPolicyRequest = Shapes::StructureShape.new(name: 'GetS3AccessPolicyRequest')
    GetS3AccessPolicyResponse = Shapes::StructureShape.new(name: 'GetS3AccessPolicyResponse')
    GetSequenceStoreRequest = Shapes::StructureShape.new(name: 'GetSequenceStoreRequest')
    GetSequenceStoreResponse = Shapes::StructureShape.new(name: 'GetSequenceStoreResponse')
    GetShareRequest = Shapes::StructureShape.new(name: 'GetShareRequest')
    GetShareResponse = Shapes::StructureShape.new(name: 'GetShareResponse')
    GetVariantImportRequest = Shapes::StructureShape.new(name: 'GetVariantImportRequest')
    GetVariantImportResponse = Shapes::StructureShape.new(name: 'GetVariantImportResponse')
    GetVariantStoreRequest = Shapes::StructureShape.new(name: 'GetVariantStoreRequest')
    GetVariantStoreResponse = Shapes::StructureShape.new(name: 'GetVariantStoreResponse')
    GetWorkflowRequest = Shapes::StructureShape.new(name: 'GetWorkflowRequest')
    GetWorkflowResponse = Shapes::StructureShape.new(name: 'GetWorkflowResponse')
    GetWorkflowResponseStorageCapacityInteger = Shapes::IntegerShape.new(name: 'GetWorkflowResponseStorageCapacityInteger')
    GetWorkflowVersionRequest = Shapes::StructureShape.new(name: 'GetWorkflowVersionRequest')
    GetWorkflowVersionResponse = Shapes::StructureShape.new(name: 'GetWorkflowVersionResponse')
    GetWorkflowVersionResponseStorageCapacityInteger = Shapes::IntegerShape.new(name: 'GetWorkflowVersionResponseStorageCapacityInteger')
    Header = Shapes::BooleanShape.new(name: 'Header')
    ImportJobId = Shapes::StringShape.new(name: 'ImportJobId')
    ImportReadSetFilter = Shapes::StructureShape.new(name: 'ImportReadSetFilter')
    ImportReadSetJobItem = Shapes::StructureShape.new(name: 'ImportReadSetJobItem')
    ImportReadSetJobList = Shapes::ListShape.new(name: 'ImportReadSetJobList')
    ImportReadSetSourceItem = Shapes::StructureShape.new(name: 'ImportReadSetSourceItem')
    ImportReadSetSourceList = Shapes::ListShape.new(name: 'ImportReadSetSourceList')
    ImportReferenceFilter = Shapes::StructureShape.new(name: 'ImportReferenceFilter')
    ImportReferenceJobItem = Shapes::StructureShape.new(name: 'ImportReferenceJobItem')
    ImportReferenceJobList = Shapes::ListShape.new(name: 'ImportReferenceJobList')
    ImportReferenceSourceItem = Shapes::StructureShape.new(name: 'ImportReferenceSourceItem')
    ImportReferenceSourceList = Shapes::ListShape.new(name: 'ImportReferenceSourceList')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobStatusMessage = Shapes::StringShape.new(name: 'JobStatusMessage')
    JobStatusMsg = Shapes::StringShape.new(name: 'JobStatusMsg')
    LineSep = Shapes::StringShape.new(name: 'LineSep')
    ListAnnotationImportJobsFilter = Shapes::StructureShape.new(name: 'ListAnnotationImportJobsFilter')
    ListAnnotationImportJobsRequest = Shapes::StructureShape.new(name: 'ListAnnotationImportJobsRequest')
    ListAnnotationImportJobsRequestIdsList = Shapes::ListShape.new(name: 'ListAnnotationImportJobsRequestIdsList')
    ListAnnotationImportJobsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAnnotationImportJobsRequestMaxResultsInteger')
    ListAnnotationImportJobsRequestNextTokenString = Shapes::StringShape.new(name: 'ListAnnotationImportJobsRequestNextTokenString')
    ListAnnotationImportJobsResponse = Shapes::StructureShape.new(name: 'ListAnnotationImportJobsResponse')
    ListAnnotationStoreVersionsFilter = Shapes::StructureShape.new(name: 'ListAnnotationStoreVersionsFilter')
    ListAnnotationStoreVersionsRequest = Shapes::StructureShape.new(name: 'ListAnnotationStoreVersionsRequest')
    ListAnnotationStoreVersionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAnnotationStoreVersionsRequestMaxResultsInteger')
    ListAnnotationStoreVersionsRequestNextTokenString = Shapes::StringShape.new(name: 'ListAnnotationStoreVersionsRequestNextTokenString')
    ListAnnotationStoreVersionsResponse = Shapes::StructureShape.new(name: 'ListAnnotationStoreVersionsResponse')
    ListAnnotationStoresFilter = Shapes::StructureShape.new(name: 'ListAnnotationStoresFilter')
    ListAnnotationStoresRequest = Shapes::StructureShape.new(name: 'ListAnnotationStoresRequest')
    ListAnnotationStoresRequestIdsList = Shapes::ListShape.new(name: 'ListAnnotationStoresRequestIdsList')
    ListAnnotationStoresRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAnnotationStoresRequestMaxResultsInteger')
    ListAnnotationStoresRequestNextTokenString = Shapes::StringShape.new(name: 'ListAnnotationStoresRequestNextTokenString')
    ListAnnotationStoresResponse = Shapes::StructureShape.new(name: 'ListAnnotationStoresResponse')
    ListMultipartReadSetUploadsRequest = Shapes::StructureShape.new(name: 'ListMultipartReadSetUploadsRequest')
    ListMultipartReadSetUploadsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListMultipartReadSetUploadsRequestMaxResultsInteger')
    ListMultipartReadSetUploadsResponse = Shapes::StructureShape.new(name: 'ListMultipartReadSetUploadsResponse')
    ListReadSetActivationJobsRequest = Shapes::StructureShape.new(name: 'ListReadSetActivationJobsRequest')
    ListReadSetActivationJobsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListReadSetActivationJobsRequestMaxResultsInteger')
    ListReadSetActivationJobsResponse = Shapes::StructureShape.new(name: 'ListReadSetActivationJobsResponse')
    ListReadSetExportJobsRequest = Shapes::StructureShape.new(name: 'ListReadSetExportJobsRequest')
    ListReadSetExportJobsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListReadSetExportJobsRequestMaxResultsInteger')
    ListReadSetExportJobsResponse = Shapes::StructureShape.new(name: 'ListReadSetExportJobsResponse')
    ListReadSetImportJobsRequest = Shapes::StructureShape.new(name: 'ListReadSetImportJobsRequest')
    ListReadSetImportJobsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListReadSetImportJobsRequestMaxResultsInteger')
    ListReadSetImportJobsResponse = Shapes::StructureShape.new(name: 'ListReadSetImportJobsResponse')
    ListReadSetUploadPartsRequest = Shapes::StructureShape.new(name: 'ListReadSetUploadPartsRequest')
    ListReadSetUploadPartsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListReadSetUploadPartsRequestMaxResultsInteger')
    ListReadSetUploadPartsResponse = Shapes::StructureShape.new(name: 'ListReadSetUploadPartsResponse')
    ListReadSetsRequest = Shapes::StructureShape.new(name: 'ListReadSetsRequest')
    ListReadSetsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListReadSetsRequestMaxResultsInteger')
    ListReadSetsResponse = Shapes::StructureShape.new(name: 'ListReadSetsResponse')
    ListReferenceImportJobsRequest = Shapes::StructureShape.new(name: 'ListReferenceImportJobsRequest')
    ListReferenceImportJobsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListReferenceImportJobsRequestMaxResultsInteger')
    ListReferenceImportJobsResponse = Shapes::StructureShape.new(name: 'ListReferenceImportJobsResponse')
    ListReferenceStoresRequest = Shapes::StructureShape.new(name: 'ListReferenceStoresRequest')
    ListReferenceStoresRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListReferenceStoresRequestMaxResultsInteger')
    ListReferenceStoresResponse = Shapes::StructureShape.new(name: 'ListReferenceStoresResponse')
    ListReferencesRequest = Shapes::StructureShape.new(name: 'ListReferencesRequest')
    ListReferencesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListReferencesRequestMaxResultsInteger')
    ListReferencesResponse = Shapes::StructureShape.new(name: 'ListReferencesResponse')
    ListRunCachesRequest = Shapes::StructureShape.new(name: 'ListRunCachesRequest')
    ListRunCachesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRunCachesRequestMaxResultsInteger')
    ListRunCachesResponse = Shapes::StructureShape.new(name: 'ListRunCachesResponse')
    ListRunGroupsRequest = Shapes::StructureShape.new(name: 'ListRunGroupsRequest')
    ListRunGroupsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRunGroupsRequestMaxResultsInteger')
    ListRunGroupsResponse = Shapes::StructureShape.new(name: 'ListRunGroupsResponse')
    ListRunTasksRequest = Shapes::StructureShape.new(name: 'ListRunTasksRequest')
    ListRunTasksRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRunTasksRequestMaxResultsInteger')
    ListRunTasksResponse = Shapes::StructureShape.new(name: 'ListRunTasksResponse')
    ListRunsRequest = Shapes::StructureShape.new(name: 'ListRunsRequest')
    ListRunsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListRunsRequestMaxResultsInteger')
    ListRunsResponse = Shapes::StructureShape.new(name: 'ListRunsResponse')
    ListSequenceStoresRequest = Shapes::StructureShape.new(name: 'ListSequenceStoresRequest')
    ListSequenceStoresRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSequenceStoresRequestMaxResultsInteger')
    ListSequenceStoresResponse = Shapes::StructureShape.new(name: 'ListSequenceStoresResponse')
    ListSharesRequest = Shapes::StructureShape.new(name: 'ListSharesRequest')
    ListSharesResponse = Shapes::StructureShape.new(name: 'ListSharesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListToken = Shapes::StringShape.new(name: 'ListToken')
    ListVariantImportJobsFilter = Shapes::StructureShape.new(name: 'ListVariantImportJobsFilter')
    ListVariantImportJobsRequest = Shapes::StructureShape.new(name: 'ListVariantImportJobsRequest')
    ListVariantImportJobsRequestIdsList = Shapes::ListShape.new(name: 'ListVariantImportJobsRequestIdsList')
    ListVariantImportJobsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListVariantImportJobsRequestMaxResultsInteger')
    ListVariantImportJobsRequestNextTokenString = Shapes::StringShape.new(name: 'ListVariantImportJobsRequestNextTokenString')
    ListVariantImportJobsResponse = Shapes::StructureShape.new(name: 'ListVariantImportJobsResponse')
    ListVariantStoresFilter = Shapes::StructureShape.new(name: 'ListVariantStoresFilter')
    ListVariantStoresRequest = Shapes::StructureShape.new(name: 'ListVariantStoresRequest')
    ListVariantStoresRequestIdsList = Shapes::ListShape.new(name: 'ListVariantStoresRequestIdsList')
    ListVariantStoresRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListVariantStoresRequestMaxResultsInteger')
    ListVariantStoresRequestNextTokenString = Shapes::StringShape.new(name: 'ListVariantStoresRequestNextTokenString')
    ListVariantStoresResponse = Shapes::StructureShape.new(name: 'ListVariantStoresResponse')
    ListWorkflowVersionsRequest = Shapes::StructureShape.new(name: 'ListWorkflowVersionsRequest')
    ListWorkflowVersionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListWorkflowVersionsRequestMaxResultsInteger')
    ListWorkflowVersionsResponse = Shapes::StructureShape.new(name: 'ListWorkflowVersionsResponse')
    ListWorkflowsRequest = Shapes::StructureShape.new(name: 'ListWorkflowsRequest')
    ListWorkflowsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListWorkflowsRequestMaxResultsInteger')
    ListWorkflowsResponse = Shapes::StructureShape.new(name: 'ListWorkflowsResponse')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Md5 = Shapes::StringShape.new(name: 'Md5')
    MultipartReadSetUploadList = Shapes::ListShape.new(name: 'MultipartReadSetUploadList')
    MultipartReadSetUploadListItem = Shapes::StructureShape.new(name: 'MultipartReadSetUploadListItem')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotSupportedOperationException = Shapes::StructureShape.new(name: 'NotSupportedOperationException')
    NumericIdInArn = Shapes::StringShape.new(name: 'NumericIdInArn')
    ParameterTemplatePath = Shapes::StringShape.new(name: 'ParameterTemplatePath')
    PrimitiveBoolean = Shapes::BooleanShape.new(name: 'PrimitiveBoolean')
    PropagatedSetLevelTags = Shapes::ListShape.new(name: 'PropagatedSetLevelTags')
    PutS3AccessPolicyRequest = Shapes::StructureShape.new(name: 'PutS3AccessPolicyRequest')
    PutS3AccessPolicyResponse = Shapes::StructureShape.new(name: 'PutS3AccessPolicyResponse')
    Quote = Shapes::StringShape.new(name: 'Quote')
    QuoteAll = Shapes::BooleanShape.new(name: 'QuoteAll')
    Range = Shapes::StringShape.new(name: 'Range')
    RangeNotSatisfiableException = Shapes::StructureShape.new(name: 'RangeNotSatisfiableException')
    ReadOptions = Shapes::StructureShape.new(name: 'ReadOptions')
    ReadSetActivationJobItemStatus = Shapes::StringShape.new(name: 'ReadSetActivationJobItemStatus')
    ReadSetActivationJobStatus = Shapes::StringShape.new(name: 'ReadSetActivationJobStatus')
    ReadSetArn = Shapes::StringShape.new(name: 'ReadSetArn')
    ReadSetBatchError = Shapes::StructureShape.new(name: 'ReadSetBatchError')
    ReadSetBatchErrorList = Shapes::ListShape.new(name: 'ReadSetBatchErrorList')
    ReadSetDescription = Shapes::StringShape.new(name: 'ReadSetDescription')
    ReadSetExportJobItemStatus = Shapes::StringShape.new(name: 'ReadSetExportJobItemStatus')
    ReadSetExportJobStatus = Shapes::StringShape.new(name: 'ReadSetExportJobStatus')
    ReadSetFile = Shapes::StringShape.new(name: 'ReadSetFile')
    ReadSetFiles = Shapes::StructureShape.new(name: 'ReadSetFiles')
    ReadSetFilter = Shapes::StructureShape.new(name: 'ReadSetFilter')
    ReadSetId = Shapes::StringShape.new(name: 'ReadSetId')
    ReadSetIdList = Shapes::ListShape.new(name: 'ReadSetIdList')
    ReadSetImportJobItemStatus = Shapes::StringShape.new(name: 'ReadSetImportJobItemStatus')
    ReadSetImportJobStatus = Shapes::StringShape.new(name: 'ReadSetImportJobStatus')
    ReadSetList = Shapes::ListShape.new(name: 'ReadSetList')
    ReadSetListItem = Shapes::StructureShape.new(name: 'ReadSetListItem')
    ReadSetName = Shapes::StringShape.new(name: 'ReadSetName')
    ReadSetPartSource = Shapes::StringShape.new(name: 'ReadSetPartSource')
    ReadSetPartStreamingBlob = Shapes::BlobShape.new(name: 'ReadSetPartStreamingBlob', requiresLength: true, streaming: true)
    ReadSetS3Access = Shapes::StructureShape.new(name: 'ReadSetS3Access')
    ReadSetStatus = Shapes::StringShape.new(name: 'ReadSetStatus')
    ReadSetStatusMessage = Shapes::StringShape.new(name: 'ReadSetStatusMessage')
    ReadSetStreamingBlob = Shapes::BlobShape.new(name: 'ReadSetStreamingBlob', streaming: true)
    ReadSetUploadPartList = Shapes::ListShape.new(name: 'ReadSetUploadPartList')
    ReadSetUploadPartListFilter = Shapes::StructureShape.new(name: 'ReadSetUploadPartListFilter')
    ReadSetUploadPartListItem = Shapes::StructureShape.new(name: 'ReadSetUploadPartListItem')
    ReadSetUploadPartListItemPartNumberInteger = Shapes::IntegerShape.new(name: 'ReadSetUploadPartListItemPartNumberInteger')
    ReadSetUploadPartListItemPartSizeLong = Shapes::IntegerShape.new(name: 'ReadSetUploadPartListItemPartSizeLong')
    ReadmeMarkdown = Shapes::StringShape.new(name: 'ReadmeMarkdown')
    ReadmePath = Shapes::StringShape.new(name: 'ReadmePath')
    ReadmeS3PresignedUrl = Shapes::StringShape.new(name: 'ReadmeS3PresignedUrl')
    ReferenceArn = Shapes::StringShape.new(name: 'ReferenceArn')
    ReferenceArnFilter = Shapes::StringShape.new(name: 'ReferenceArnFilter')
    ReferenceCreationType = Shapes::StringShape.new(name: 'ReferenceCreationType')
    ReferenceDescription = Shapes::StringShape.new(name: 'ReferenceDescription')
    ReferenceFile = Shapes::StringShape.new(name: 'ReferenceFile')
    ReferenceFiles = Shapes::StructureShape.new(name: 'ReferenceFiles')
    ReferenceFilter = Shapes::StructureShape.new(name: 'ReferenceFilter')
    ReferenceId = Shapes::StringShape.new(name: 'ReferenceId')
    ReferenceImportJobItemStatus = Shapes::StringShape.new(name: 'ReferenceImportJobItemStatus')
    ReferenceImportJobStatus = Shapes::StringShape.new(name: 'ReferenceImportJobStatus')
    ReferenceItem = Shapes::UnionShape.new(name: 'ReferenceItem')
    ReferenceList = Shapes::ListShape.new(name: 'ReferenceList')
    ReferenceListItem = Shapes::StructureShape.new(name: 'ReferenceListItem')
    ReferenceName = Shapes::StringShape.new(name: 'ReferenceName')
    ReferenceStatus = Shapes::StringShape.new(name: 'ReferenceStatus')
    ReferenceStoreArn = Shapes::StringShape.new(name: 'ReferenceStoreArn')
    ReferenceStoreDescription = Shapes::StringShape.new(name: 'ReferenceStoreDescription')
    ReferenceStoreDetail = Shapes::StructureShape.new(name: 'ReferenceStoreDetail')
    ReferenceStoreDetailList = Shapes::ListShape.new(name: 'ReferenceStoreDetailList')
    ReferenceStoreFilter = Shapes::StructureShape.new(name: 'ReferenceStoreFilter')
    ReferenceStoreId = Shapes::StringShape.new(name: 'ReferenceStoreId')
    ReferenceStoreName = Shapes::StringShape.new(name: 'ReferenceStoreName')
    ReferenceStreamingBlob = Shapes::BlobShape.new(name: 'ReferenceStreamingBlob', streaming: true)
    RequestTimeoutException = Shapes::StructureShape.new(name: 'RequestTimeoutException')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceOwner = Shapes::StringShape.new(name: 'ResourceOwner')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RunArn = Shapes::StringShape.new(name: 'RunArn')
    RunCacheArn = Shapes::StringShape.new(name: 'RunCacheArn')
    RunCacheId = Shapes::StringShape.new(name: 'RunCacheId')
    RunCacheList = Shapes::ListShape.new(name: 'RunCacheList')
    RunCacheListItem = Shapes::StructureShape.new(name: 'RunCacheListItem')
    RunCacheRequestId = Shapes::StringShape.new(name: 'RunCacheRequestId')
    RunCacheStatus = Shapes::StringShape.new(name: 'RunCacheStatus')
    RunCacheTimestamp = Shapes::TimestampShape.new(name: 'RunCacheTimestamp', timestampFormat: "iso8601")
    RunExport = Shapes::StringShape.new(name: 'RunExport')
    RunExportList = Shapes::ListShape.new(name: 'RunExportList')
    RunFailureReason = Shapes::StringShape.new(name: 'RunFailureReason')
    RunGroupArn = Shapes::StringShape.new(name: 'RunGroupArn')
    RunGroupId = Shapes::StringShape.new(name: 'RunGroupId')
    RunGroupList = Shapes::ListShape.new(name: 'RunGroupList')
    RunGroupListItem = Shapes::StructureShape.new(name: 'RunGroupListItem')
    RunGroupListItemMaxCpusInteger = Shapes::IntegerShape.new(name: 'RunGroupListItemMaxCpusInteger')
    RunGroupListItemMaxDurationInteger = Shapes::IntegerShape.new(name: 'RunGroupListItemMaxDurationInteger')
    RunGroupListItemMaxGpusInteger = Shapes::IntegerShape.new(name: 'RunGroupListItemMaxGpusInteger')
    RunGroupListItemMaxRunsInteger = Shapes::IntegerShape.new(name: 'RunGroupListItemMaxRunsInteger')
    RunGroupListToken = Shapes::StringShape.new(name: 'RunGroupListToken')
    RunGroupName = Shapes::StringShape.new(name: 'RunGroupName')
    RunGroupRequestId = Shapes::StringShape.new(name: 'RunGroupRequestId')
    RunGroupTimestamp = Shapes::TimestampShape.new(name: 'RunGroupTimestamp', timestampFormat: "iso8601")
    RunId = Shapes::StringShape.new(name: 'RunId')
    RunLeftNormalization = Shapes::BooleanShape.new(name: 'RunLeftNormalization')
    RunList = Shapes::ListShape.new(name: 'RunList')
    RunListItem = Shapes::StructureShape.new(name: 'RunListItem')
    RunListItemPriorityInteger = Shapes::IntegerShape.new(name: 'RunListItemPriorityInteger')
    RunListItemStorageCapacityInteger = Shapes::IntegerShape.new(name: 'RunListItemStorageCapacityInteger')
    RunListToken = Shapes::StringShape.new(name: 'RunListToken')
    RunLogLevel = Shapes::StringShape.new(name: 'RunLogLevel')
    RunLogLocation = Shapes::StructureShape.new(name: 'RunLogLocation')
    RunLogStream = Shapes::StringShape.new(name: 'RunLogStream')
    RunName = Shapes::StringShape.new(name: 'RunName')
    RunOutputUri = Shapes::StringShape.new(name: 'RunOutputUri')
    RunParameters = Shapes::DocumentShape.new(name: 'RunParameters', document: true)
    RunRequestId = Shapes::StringShape.new(name: 'RunRequestId')
    RunResourceDigest = Shapes::StringShape.new(name: 'RunResourceDigest')
    RunResourceDigestKey = Shapes::StringShape.new(name: 'RunResourceDigestKey')
    RunResourceDigests = Shapes::MapShape.new(name: 'RunResourceDigests')
    RunRetentionMode = Shapes::StringShape.new(name: 'RunRetentionMode')
    RunRoleArn = Shapes::StringShape.new(name: 'RunRoleArn')
    RunStartedBy = Shapes::StringShape.new(name: 'RunStartedBy')
    RunStatus = Shapes::StringShape.new(name: 'RunStatus')
    RunStatusMessage = Shapes::StringShape.new(name: 'RunStatusMessage')
    RunTimestamp = Shapes::TimestampShape.new(name: 'RunTimestamp', timestampFormat: "iso8601")
    RunUuid = Shapes::StringShape.new(name: 'RunUuid')
    S3AccessConfig = Shapes::StructureShape.new(name: 'S3AccessConfig')
    S3AccessPointArn = Shapes::StringShape.new(name: 'S3AccessPointArn')
    S3AccessPolicy = Shapes::StringShape.new(name: 'S3AccessPolicy')
    S3Destination = Shapes::StringShape.new(name: 'S3Destination')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    S3UriForBucketOrObject = Shapes::StringShape.new(name: 'S3UriForBucketOrObject')
    S3UriForObject = Shapes::StringShape.new(name: 'S3UriForObject')
    SampleId = Shapes::StringShape.new(name: 'SampleId')
    SchemaItem = Shapes::MapShape.new(name: 'SchemaItem')
    SchemaItemKeyString = Shapes::StringShape.new(name: 'SchemaItemKeyString')
    SchemaValueType = Shapes::StringShape.new(name: 'SchemaValueType')
    Separator = Shapes::StringShape.new(name: 'Separator')
    SequenceInformation = Shapes::StructureShape.new(name: 'SequenceInformation')
    SequenceStoreArn = Shapes::StringShape.new(name: 'SequenceStoreArn')
    SequenceStoreDescription = Shapes::StringShape.new(name: 'SequenceStoreDescription')
    SequenceStoreDetail = Shapes::StructureShape.new(name: 'SequenceStoreDetail')
    SequenceStoreDetailList = Shapes::ListShape.new(name: 'SequenceStoreDetailList')
    SequenceStoreFilter = Shapes::StructureShape.new(name: 'SequenceStoreFilter')
    SequenceStoreId = Shapes::StringShape.new(name: 'SequenceStoreId')
    SequenceStoreName = Shapes::StringShape.new(name: 'SequenceStoreName')
    SequenceStoreS3Access = Shapes::StructureShape.new(name: 'SequenceStoreS3Access')
    SequenceStoreStatus = Shapes::StringShape.new(name: 'SequenceStoreStatus')
    SequenceStoreStatusMessage = Shapes::StringShape.new(name: 'SequenceStoreStatusMessage')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ShareDetails = Shapes::StructureShape.new(name: 'ShareDetails')
    ShareDetailsList = Shapes::ListShape.new(name: 'ShareDetailsList')
    ShareName = Shapes::StringShape.new(name: 'ShareName')
    ShareResourceType = Shapes::StringShape.new(name: 'ShareResourceType')
    ShareStatus = Shapes::StringShape.new(name: 'ShareStatus')
    SourceFiles = Shapes::StructureShape.new(name: 'SourceFiles')
    SourceReference = Shapes::StructureShape.new(name: 'SourceReference')
    SourceReferenceType = Shapes::StringShape.new(name: 'SourceReferenceType')
    SourceReferenceValue = Shapes::StringShape.new(name: 'SourceReferenceValue')
    SseConfig = Shapes::StructureShape.new(name: 'SseConfig')
    SseConfigKeyArnString = Shapes::StringShape.new(name: 'SseConfigKeyArnString')
    StartAnnotationImportRequest = Shapes::StructureShape.new(name: 'StartAnnotationImportRequest')
    StartAnnotationImportResponse = Shapes::StructureShape.new(name: 'StartAnnotationImportResponse')
    StartReadSetActivationJobRequest = Shapes::StructureShape.new(name: 'StartReadSetActivationJobRequest')
    StartReadSetActivationJobRequestSourcesList = Shapes::ListShape.new(name: 'StartReadSetActivationJobRequestSourcesList')
    StartReadSetActivationJobResponse = Shapes::StructureShape.new(name: 'StartReadSetActivationJobResponse')
    StartReadSetActivationJobSourceItem = Shapes::StructureShape.new(name: 'StartReadSetActivationJobSourceItem')
    StartReadSetExportJobRequest = Shapes::StructureShape.new(name: 'StartReadSetExportJobRequest')
    StartReadSetExportJobRequestSourcesList = Shapes::ListShape.new(name: 'StartReadSetExportJobRequestSourcesList')
    StartReadSetExportJobResponse = Shapes::StructureShape.new(name: 'StartReadSetExportJobResponse')
    StartReadSetImportJobRequest = Shapes::StructureShape.new(name: 'StartReadSetImportJobRequest')
    StartReadSetImportJobRequestSourcesList = Shapes::ListShape.new(name: 'StartReadSetImportJobRequestSourcesList')
    StartReadSetImportJobResponse = Shapes::StructureShape.new(name: 'StartReadSetImportJobResponse')
    StartReadSetImportJobSourceItem = Shapes::StructureShape.new(name: 'StartReadSetImportJobSourceItem')
    StartReferenceImportJobRequest = Shapes::StructureShape.new(name: 'StartReferenceImportJobRequest')
    StartReferenceImportJobRequestSourcesList = Shapes::ListShape.new(name: 'StartReferenceImportJobRequestSourcesList')
    StartReferenceImportJobResponse = Shapes::StructureShape.new(name: 'StartReferenceImportJobResponse')
    StartReferenceImportJobSourceItem = Shapes::StructureShape.new(name: 'StartReferenceImportJobSourceItem')
    StartRunRequest = Shapes::StructureShape.new(name: 'StartRunRequest')
    StartRunRequestPriorityInteger = Shapes::IntegerShape.new(name: 'StartRunRequestPriorityInteger')
    StartRunRequestStorageCapacityInteger = Shapes::IntegerShape.new(name: 'StartRunRequestStorageCapacityInteger')
    StartRunResponse = Shapes::StructureShape.new(name: 'StartRunResponse')
    StartVariantImportRequest = Shapes::StructureShape.new(name: 'StartVariantImportRequest')
    StartVariantImportResponse = Shapes::StructureShape.new(name: 'StartVariantImportResponse')
    StatusList = Shapes::ListShape.new(name: 'StatusList')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    StorageType = Shapes::StringShape.new(name: 'StorageType')
    StoreFormat = Shapes::StringShape.new(name: 'StoreFormat')
    StoreId = Shapes::StringShape.new(name: 'StoreId')
    StoreName = Shapes::StringShape.new(name: 'StoreName')
    StoreOptions = Shapes::UnionShape.new(name: 'StoreOptions')
    StoreStatus = Shapes::StringShape.new(name: 'StoreStatus')
    StoreType = Shapes::StringShape.new(name: 'StoreType')
    String = Shapes::StringShape.new(name: 'String')
    SubjectId = Shapes::StringShape.new(name: 'SubjectId')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagArn = Shapes::StringShape.new(name: 'TagArn')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceRequestTagsMap = Shapes::MapShape.new(name: 'TagResourceRequestTagsMap')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaskFailureReason = Shapes::StringShape.new(name: 'TaskFailureReason')
    TaskId = Shapes::StringShape.new(name: 'TaskId')
    TaskInstanceType = Shapes::StringShape.new(name: 'TaskInstanceType')
    TaskList = Shapes::ListShape.new(name: 'TaskList')
    TaskListItem = Shapes::StructureShape.new(name: 'TaskListItem')
    TaskListItemCpusInteger = Shapes::IntegerShape.new(name: 'TaskListItemCpusInteger')
    TaskListItemGpusInteger = Shapes::IntegerShape.new(name: 'TaskListItemGpusInteger')
    TaskListItemMemoryInteger = Shapes::IntegerShape.new(name: 'TaskListItemMemoryInteger')
    TaskListToken = Shapes::StringShape.new(name: 'TaskListToken')
    TaskLogStream = Shapes::StringShape.new(name: 'TaskLogStream')
    TaskName = Shapes::StringShape.new(name: 'TaskName')
    TaskStatus = Shapes::StringShape.new(name: 'TaskStatus')
    TaskStatusMessage = Shapes::StringShape.new(name: 'TaskStatusMessage')
    TaskTimestamp = Shapes::TimestampShape.new(name: 'TaskTimestamp', timestampFormat: "iso8601")
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TsvOptions = Shapes::StructureShape.new(name: 'TsvOptions')
    TsvStoreOptions = Shapes::StructureShape.new(name: 'TsvStoreOptions')
    TsvStoreOptionsSchemaList = Shapes::ListShape.new(name: 'TsvStoreOptionsSchemaList')
    TsvVersionOptions = Shapes::StructureShape.new(name: 'TsvVersionOptions')
    TsvVersionOptionsSchemaList = Shapes::ListShape.new(name: 'TsvVersionOptionsSchemaList')
    TypeList = Shapes::ListShape.new(name: 'TypeList')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAnnotationStoreRequest = Shapes::StructureShape.new(name: 'UpdateAnnotationStoreRequest')
    UpdateAnnotationStoreResponse = Shapes::StructureShape.new(name: 'UpdateAnnotationStoreResponse')
    UpdateAnnotationStoreVersionRequest = Shapes::StructureShape.new(name: 'UpdateAnnotationStoreVersionRequest')
    UpdateAnnotationStoreVersionResponse = Shapes::StructureShape.new(name: 'UpdateAnnotationStoreVersionResponse')
    UpdateRunCacheRequest = Shapes::StructureShape.new(name: 'UpdateRunCacheRequest')
    UpdateRunGroupRequest = Shapes::StructureShape.new(name: 'UpdateRunGroupRequest')
    UpdateRunGroupRequestMaxCpusInteger = Shapes::IntegerShape.new(name: 'UpdateRunGroupRequestMaxCpusInteger')
    UpdateRunGroupRequestMaxDurationInteger = Shapes::IntegerShape.new(name: 'UpdateRunGroupRequestMaxDurationInteger')
    UpdateRunGroupRequestMaxGpusInteger = Shapes::IntegerShape.new(name: 'UpdateRunGroupRequestMaxGpusInteger')
    UpdateRunGroupRequestMaxRunsInteger = Shapes::IntegerShape.new(name: 'UpdateRunGroupRequestMaxRunsInteger')
    UpdateSequenceStoreRequest = Shapes::StructureShape.new(name: 'UpdateSequenceStoreRequest')
    UpdateSequenceStoreResponse = Shapes::StructureShape.new(name: 'UpdateSequenceStoreResponse')
    UpdateTime = Shapes::TimestampShape.new(name: 'UpdateTime', timestampFormat: "iso8601")
    UpdateVariantStoreRequest = Shapes::StructureShape.new(name: 'UpdateVariantStoreRequest')
    UpdateVariantStoreResponse = Shapes::StructureShape.new(name: 'UpdateVariantStoreResponse')
    UpdateWorkflowRequest = Shapes::StructureShape.new(name: 'UpdateWorkflowRequest')
    UpdateWorkflowRequestStorageCapacityInteger = Shapes::IntegerShape.new(name: 'UpdateWorkflowRequestStorageCapacityInteger')
    UpdateWorkflowVersionRequest = Shapes::StructureShape.new(name: 'UpdateWorkflowVersionRequest')
    UpdateWorkflowVersionRequestStorageCapacityInteger = Shapes::IntegerShape.new(name: 'UpdateWorkflowVersionRequestStorageCapacityInteger')
    UploadId = Shapes::StringShape.new(name: 'UploadId')
    UploadReadSetPartRequest = Shapes::StructureShape.new(name: 'UploadReadSetPartRequest')
    UploadReadSetPartRequestPartNumberInteger = Shapes::IntegerShape.new(name: 'UploadReadSetPartRequestPartNumberInteger')
    UploadReadSetPartResponse = Shapes::StructureShape.new(name: 'UploadReadSetPartResponse')
    UserCustomDescription = Shapes::StringShape.new(name: 'UserCustomDescription')
    UserCustomName = Shapes::StringShape.new(name: 'UserCustomName')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VariantImportItemDetail = Shapes::StructureShape.new(name: 'VariantImportItemDetail')
    VariantImportItemDetails = Shapes::ListShape.new(name: 'VariantImportItemDetails')
    VariantImportItemSource = Shapes::StructureShape.new(name: 'VariantImportItemSource')
    VariantImportItemSources = Shapes::ListShape.new(name: 'VariantImportItemSources')
    VariantImportJobItem = Shapes::StructureShape.new(name: 'VariantImportJobItem')
    VariantImportJobItems = Shapes::ListShape.new(name: 'VariantImportJobItems')
    VariantStoreItem = Shapes::StructureShape.new(name: 'VariantStoreItem')
    VariantStoreItems = Shapes::ListShape.new(name: 'VariantStoreItems')
    VcfOptions = Shapes::StructureShape.new(name: 'VcfOptions')
    VersionDeleteError = Shapes::StructureShape.new(name: 'VersionDeleteError')
    VersionDeleteErrorList = Shapes::ListShape.new(name: 'VersionDeleteErrorList')
    VersionList = Shapes::ListShape.new(name: 'VersionList')
    VersionName = Shapes::StringShape.new(name: 'VersionName')
    VersionOptions = Shapes::UnionShape.new(name: 'VersionOptions')
    VersionStatus = Shapes::StringShape.new(name: 'VersionStatus')
    WorkflowArn = Shapes::StringShape.new(name: 'WorkflowArn')
    WorkflowBucketOwnerId = Shapes::StringShape.new(name: 'WorkflowBucketOwnerId')
    WorkflowDefinition = Shapes::StringShape.new(name: 'WorkflowDefinition')
    WorkflowDescription = Shapes::StringShape.new(name: 'WorkflowDescription')
    WorkflowDigest = Shapes::StringShape.new(name: 'WorkflowDigest')
    WorkflowEngine = Shapes::StringShape.new(name: 'WorkflowEngine')
    WorkflowExport = Shapes::StringShape.new(name: 'WorkflowExport')
    WorkflowExportList = Shapes::ListShape.new(name: 'WorkflowExportList')
    WorkflowId = Shapes::StringShape.new(name: 'WorkflowId')
    WorkflowList = Shapes::ListShape.new(name: 'WorkflowList')
    WorkflowListItem = Shapes::StructureShape.new(name: 'WorkflowListItem')
    WorkflowListToken = Shapes::StringShape.new(name: 'WorkflowListToken')
    WorkflowMain = Shapes::StringShape.new(name: 'WorkflowMain')
    WorkflowMetadata = Shapes::MapShape.new(name: 'WorkflowMetadata')
    WorkflowMetadataKey = Shapes::StringShape.new(name: 'WorkflowMetadataKey')
    WorkflowMetadataValue = Shapes::StringShape.new(name: 'WorkflowMetadataValue')
    WorkflowName = Shapes::StringShape.new(name: 'WorkflowName')
    WorkflowOwnerId = Shapes::StringShape.new(name: 'WorkflowOwnerId')
    WorkflowParameter = Shapes::StructureShape.new(name: 'WorkflowParameter')
    WorkflowParameterDescription = Shapes::StringShape.new(name: 'WorkflowParameterDescription')
    WorkflowParameterName = Shapes::StringShape.new(name: 'WorkflowParameterName')
    WorkflowParameterTemplate = Shapes::MapShape.new(name: 'WorkflowParameterTemplate')
    WorkflowRequestId = Shapes::StringShape.new(name: 'WorkflowRequestId')
    WorkflowStatus = Shapes::StringShape.new(name: 'WorkflowStatus')
    WorkflowStatusMessage = Shapes::StringShape.new(name: 'WorkflowStatusMessage')
    WorkflowTimestamp = Shapes::TimestampShape.new(name: 'WorkflowTimestamp', timestampFormat: "iso8601")
    WorkflowType = Shapes::StringShape.new(name: 'WorkflowType')
    WorkflowUuid = Shapes::StringShape.new(name: 'WorkflowUuid')
    WorkflowVersionArn = Shapes::StringShape.new(name: 'WorkflowVersionArn')
    WorkflowVersionDescription = Shapes::StringShape.new(name: 'WorkflowVersionDescription')
    WorkflowVersionList = Shapes::ListShape.new(name: 'WorkflowVersionList')
    WorkflowVersionListItem = Shapes::StructureShape.new(name: 'WorkflowVersionListItem')
    WorkflowVersionListToken = Shapes::StringShape.new(name: 'WorkflowVersionListToken')
    WorkflowVersionName = Shapes::StringShape.new(name: 'WorkflowVersionName')

    AbortMultipartReadSetUploadRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    AbortMultipartReadSetUploadRequest.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, required: true, location: "uri", location_name: "uploadId"))
    AbortMultipartReadSetUploadRequest.struct_class = Types::AbortMultipartReadSetUploadRequest

    AbortMultipartReadSetUploadResponse.struct_class = Types::AbortMultipartReadSetUploadResponse

    AcceptShareRequest.add_member(:share_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "shareId"))
    AcceptShareRequest.struct_class = Types::AcceptShareRequest

    AcceptShareResponse.add_member(:status, Shapes::ShapeRef.new(shape: ShareStatus, location_name: "status"))
    AcceptShareResponse.struct_class = Types::AcceptShareResponse

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActivateReadSetFilter.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetActivationJobStatus, location_name: "status"))
    ActivateReadSetFilter.add_member(:created_after, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAfter"))
    ActivateReadSetFilter.add_member(:created_before, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdBefore"))
    ActivateReadSetFilter.struct_class = Types::ActivateReadSetFilter

    ActivateReadSetJobItem.add_member(:id, Shapes::ShapeRef.new(shape: ActivationJobId, required: true, location_name: "id"))
    ActivateReadSetJobItem.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "sequenceStoreId"))
    ActivateReadSetJobItem.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetActivationJobStatus, required: true, location_name: "status"))
    ActivateReadSetJobItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    ActivateReadSetJobItem.add_member(:completion_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "completionTime"))
    ActivateReadSetJobItem.struct_class = Types::ActivateReadSetJobItem

    ActivateReadSetJobList.member = Shapes::ShapeRef.new(shape: ActivateReadSetJobItem)

    ActivateReadSetSourceItem.add_member(:read_set_id, Shapes::ShapeRef.new(shape: ReadSetId, required: true, location_name: "readSetId"))
    ActivateReadSetSourceItem.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetActivationJobItemStatus, required: true, location_name: "status"))
    ActivateReadSetSourceItem.add_member(:status_message, Shapes::ShapeRef.new(shape: JobStatusMessage, location_name: "statusMessage"))
    ActivateReadSetSourceItem.struct_class = Types::ActivateReadSetSourceItem

    ActivateReadSetSourceList.member = Shapes::ShapeRef.new(shape: ActivateReadSetSourceItem)

    AnnotationFieldMap.key = Shapes::ShapeRef.new(shape: AnnotationFieldMapKeyString)
    AnnotationFieldMap.value = Shapes::ShapeRef.new(shape: AnnotationFieldMapValueString)

    AnnotationImportItemDetail.add_member(:source, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "source"))
    AnnotationImportItemDetail.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "jobStatus"))
    AnnotationImportItemDetail.struct_class = Types::AnnotationImportItemDetail

    AnnotationImportItemDetails.member = Shapes::ShapeRef.new(shape: AnnotationImportItemDetail)

    AnnotationImportItemSource.add_member(:source, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "source"))
    AnnotationImportItemSource.struct_class = Types::AnnotationImportItemSource

    AnnotationImportItemSources.member = Shapes::ShapeRef.new(shape: AnnotationImportItemSource)

    AnnotationImportJobItem.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    AnnotationImportJobItem.add_member(:destination_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationName"))
    AnnotationImportJobItem.add_member(:version_name, Shapes::ShapeRef.new(shape: VersionName, required: true, location_name: "versionName"))
    AnnotationImportJobItem.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    AnnotationImportJobItem.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "status"))
    AnnotationImportJobItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    AnnotationImportJobItem.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    AnnotationImportJobItem.add_member(:completion_time, Shapes::ShapeRef.new(shape: CompletionTime, location_name: "completionTime"))
    AnnotationImportJobItem.add_member(:run_left_normalization, Shapes::ShapeRef.new(shape: RunLeftNormalization, location_name: "runLeftNormalization"))
    AnnotationImportJobItem.add_member(:annotation_fields, Shapes::ShapeRef.new(shape: AnnotationFieldMap, location_name: "annotationFields"))
    AnnotationImportJobItem.struct_class = Types::AnnotationImportJobItem

    AnnotationImportJobItems.member = Shapes::ShapeRef.new(shape: AnnotationImportJobItem)

    AnnotationStoreItem.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    AnnotationStoreItem.add_member(:reference, Shapes::ShapeRef.new(shape: ReferenceItem, required: true, location_name: "reference"))
    AnnotationStoreItem.add_member(:status, Shapes::ShapeRef.new(shape: StoreStatus, required: true, location_name: "status"))
    AnnotationStoreItem.add_member(:store_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "storeArn"))
    AnnotationStoreItem.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    AnnotationStoreItem.add_member(:store_format, Shapes::ShapeRef.new(shape: StoreFormat, required: true, location_name: "storeFormat"))
    AnnotationStoreItem.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    AnnotationStoreItem.add_member(:sse_config, Shapes::ShapeRef.new(shape: SseConfig, required: true, location_name: "sseConfig"))
    AnnotationStoreItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    AnnotationStoreItem.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    AnnotationStoreItem.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, required: true, location_name: "statusMessage"))
    AnnotationStoreItem.add_member(:store_size_bytes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "storeSizeBytes"))
    AnnotationStoreItem.struct_class = Types::AnnotationStoreItem

    AnnotationStoreItems.member = Shapes::ShapeRef.new(shape: AnnotationStoreItem)

    AnnotationStoreVersionItem.add_member(:store_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "storeId"))
    AnnotationStoreVersionItem.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    AnnotationStoreVersionItem.add_member(:status, Shapes::ShapeRef.new(shape: VersionStatus, required: true, location_name: "status"))
    AnnotationStoreVersionItem.add_member(:version_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "versionArn"))
    AnnotationStoreVersionItem.add_member(:name, Shapes::ShapeRef.new(shape: StoreName, required: true, location_name: "name"))
    AnnotationStoreVersionItem.add_member(:version_name, Shapes::ShapeRef.new(shape: VersionName, required: true, location_name: "versionName"))
    AnnotationStoreVersionItem.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    AnnotationStoreVersionItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    AnnotationStoreVersionItem.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    AnnotationStoreVersionItem.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, required: true, location_name: "statusMessage"))
    AnnotationStoreVersionItem.add_member(:version_size_bytes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "versionSizeBytes"))
    AnnotationStoreVersionItem.struct_class = Types::AnnotationStoreVersionItem

    AnnotationStoreVersionItems.member = Shapes::ShapeRef.new(shape: AnnotationStoreVersionItem)

    ArnList.member = Shapes::ShapeRef.new(shape: String)

    BatchDeleteReadSetRequest.add_member(:ids, Shapes::ShapeRef.new(shape: ReadSetIdList, required: true, location_name: "ids"))
    BatchDeleteReadSetRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    BatchDeleteReadSetRequest.struct_class = Types::BatchDeleteReadSetRequest

    BatchDeleteReadSetResponse.add_member(:errors, Shapes::ShapeRef.new(shape: ReadSetBatchErrorList, location_name: "errors"))
    BatchDeleteReadSetResponse.struct_class = Types::BatchDeleteReadSetResponse

    CancelAnnotationImportRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "jobId"))
    CancelAnnotationImportRequest.struct_class = Types::CancelAnnotationImportRequest

    CancelAnnotationImportResponse.struct_class = Types::CancelAnnotationImportResponse

    CancelRunRequest.add_member(:id, Shapes::ShapeRef.new(shape: RunId, required: true, location: "uri", location_name: "id"))
    CancelRunRequest.struct_class = Types::CancelRunRequest

    CancelVariantImportRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "jobId"))
    CancelVariantImportRequest.struct_class = Types::CancelVariantImportRequest

    CancelVariantImportResponse.struct_class = Types::CancelVariantImportResponse

    CompleteMultipartReadSetUploadRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    CompleteMultipartReadSetUploadRequest.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, required: true, location: "uri", location_name: "uploadId"))
    CompleteMultipartReadSetUploadRequest.add_member(:parts, Shapes::ShapeRef.new(shape: CompleteReadSetUploadPartList, required: true, location_name: "parts"))
    CompleteMultipartReadSetUploadRequest.struct_class = Types::CompleteMultipartReadSetUploadRequest

    CompleteMultipartReadSetUploadResponse.add_member(:read_set_id, Shapes::ShapeRef.new(shape: ReadSetId, required: true, location_name: "readSetId"))
    CompleteMultipartReadSetUploadResponse.struct_class = Types::CompleteMultipartReadSetUploadResponse

    CompleteReadSetUploadPartList.member = Shapes::ShapeRef.new(shape: CompleteReadSetUploadPartListItem)

    CompleteReadSetUploadPartListItem.add_member(:part_number, Shapes::ShapeRef.new(shape: CompleteReadSetUploadPartListItemPartNumberInteger, required: true, location_name: "partNumber"))
    CompleteReadSetUploadPartListItem.add_member(:part_source, Shapes::ShapeRef.new(shape: ReadSetPartSource, required: true, location_name: "partSource"))
    CompleteReadSetUploadPartListItem.add_member(:checksum, Shapes::ShapeRef.new(shape: CompleteReadSetUploadPartListItemChecksumString, required: true, location_name: "checksum"))
    CompleteReadSetUploadPartListItem.struct_class = Types::CompleteReadSetUploadPartListItem

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAnnotationStoreRequest.add_member(:reference, Shapes::ShapeRef.new(shape: ReferenceItem, location_name: "reference"))
    CreateAnnotationStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: StoreName, location_name: "name"))
    CreateAnnotationStoreRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAnnotationStoreRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAnnotationStoreRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: VersionName, location_name: "versionName"))
    CreateAnnotationStoreRequest.add_member(:sse_config, Shapes::ShapeRef.new(shape: SseConfig, location_name: "sseConfig"))
    CreateAnnotationStoreRequest.add_member(:store_format, Shapes::ShapeRef.new(shape: StoreFormat, required: true, location_name: "storeFormat"))
    CreateAnnotationStoreRequest.add_member(:store_options, Shapes::ShapeRef.new(shape: StoreOptions, location_name: "storeOptions"))
    CreateAnnotationStoreRequest.struct_class = Types::CreateAnnotationStoreRequest

    CreateAnnotationStoreResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    CreateAnnotationStoreResponse.add_member(:reference, Shapes::ShapeRef.new(shape: ReferenceItem, location_name: "reference"))
    CreateAnnotationStoreResponse.add_member(:store_format, Shapes::ShapeRef.new(shape: StoreFormat, location_name: "storeFormat"))
    CreateAnnotationStoreResponse.add_member(:store_options, Shapes::ShapeRef.new(shape: StoreOptions, location_name: "storeOptions"))
    CreateAnnotationStoreResponse.add_member(:status, Shapes::ShapeRef.new(shape: StoreStatus, required: true, location_name: "status"))
    CreateAnnotationStoreResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    CreateAnnotationStoreResponse.add_member(:version_name, Shapes::ShapeRef.new(shape: VersionName, required: true, location_name: "versionName"))
    CreateAnnotationStoreResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    CreateAnnotationStoreResponse.struct_class = Types::CreateAnnotationStoreResponse

    CreateAnnotationStoreVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: StoreName, required: true, location: "uri", location_name: "name"))
    CreateAnnotationStoreVersionRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: VersionName, required: true, location_name: "versionName"))
    CreateAnnotationStoreVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAnnotationStoreVersionRequest.add_member(:version_options, Shapes::ShapeRef.new(shape: VersionOptions, location_name: "versionOptions"))
    CreateAnnotationStoreVersionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAnnotationStoreVersionRequest.struct_class = Types::CreateAnnotationStoreVersionRequest

    CreateAnnotationStoreVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    CreateAnnotationStoreVersionResponse.add_member(:version_name, Shapes::ShapeRef.new(shape: VersionName, required: true, location_name: "versionName"))
    CreateAnnotationStoreVersionResponse.add_member(:store_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "storeId"))
    CreateAnnotationStoreVersionResponse.add_member(:version_options, Shapes::ShapeRef.new(shape: VersionOptions, location_name: "versionOptions"))
    CreateAnnotationStoreVersionResponse.add_member(:name, Shapes::ShapeRef.new(shape: StoreName, required: true, location_name: "name"))
    CreateAnnotationStoreVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: VersionStatus, required: true, location_name: "status"))
    CreateAnnotationStoreVersionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    CreateAnnotationStoreVersionResponse.struct_class = Types::CreateAnnotationStoreVersionResponse

    CreateMultipartReadSetUploadRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    CreateMultipartReadSetUploadRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateMultipartReadSetUploadRequest.add_member(:source_file_type, Shapes::ShapeRef.new(shape: FileType, required: true, location_name: "sourceFileType"))
    CreateMultipartReadSetUploadRequest.add_member(:subject_id, Shapes::ShapeRef.new(shape: SubjectId, required: true, location_name: "subjectId"))
    CreateMultipartReadSetUploadRequest.add_member(:sample_id, Shapes::ShapeRef.new(shape: SampleId, required: true, location_name: "sampleId"))
    CreateMultipartReadSetUploadRequest.add_member(:generated_from, Shapes::ShapeRef.new(shape: GeneratedFrom, location_name: "generatedFrom"))
    CreateMultipartReadSetUploadRequest.add_member(:reference_arn, Shapes::ShapeRef.new(shape: ReferenceArn, location_name: "referenceArn"))
    CreateMultipartReadSetUploadRequest.add_member(:name, Shapes::ShapeRef.new(shape: ReadSetName, required: true, location_name: "name"))
    CreateMultipartReadSetUploadRequest.add_member(:description, Shapes::ShapeRef.new(shape: ReadSetDescription, location_name: "description"))
    CreateMultipartReadSetUploadRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateMultipartReadSetUploadRequest.struct_class = Types::CreateMultipartReadSetUploadRequest

    CreateMultipartReadSetUploadResponse.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "sequenceStoreId"))
    CreateMultipartReadSetUploadResponse.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, required: true, location_name: "uploadId"))
    CreateMultipartReadSetUploadResponse.add_member(:source_file_type, Shapes::ShapeRef.new(shape: FileType, required: true, location_name: "sourceFileType"))
    CreateMultipartReadSetUploadResponse.add_member(:subject_id, Shapes::ShapeRef.new(shape: SubjectId, required: true, location_name: "subjectId"))
    CreateMultipartReadSetUploadResponse.add_member(:sample_id, Shapes::ShapeRef.new(shape: SampleId, required: true, location_name: "sampleId"))
    CreateMultipartReadSetUploadResponse.add_member(:generated_from, Shapes::ShapeRef.new(shape: GeneratedFrom, location_name: "generatedFrom"))
    CreateMultipartReadSetUploadResponse.add_member(:reference_arn, Shapes::ShapeRef.new(shape: ReferenceArn, required: true, location_name: "referenceArn"))
    CreateMultipartReadSetUploadResponse.add_member(:name, Shapes::ShapeRef.new(shape: ReadSetName, location_name: "name"))
    CreateMultipartReadSetUploadResponse.add_member(:description, Shapes::ShapeRef.new(shape: ReadSetDescription, location_name: "description"))
    CreateMultipartReadSetUploadResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateMultipartReadSetUploadResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    CreateMultipartReadSetUploadResponse.struct_class = Types::CreateMultipartReadSetUploadResponse

    CreateReferenceStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceStoreName, required: true, location_name: "name"))
    CreateReferenceStoreRequest.add_member(:description, Shapes::ShapeRef.new(shape: ReferenceStoreDescription, location_name: "description"))
    CreateReferenceStoreRequest.add_member(:sse_config, Shapes::ShapeRef.new(shape: SseConfig, location_name: "sseConfig"))
    CreateReferenceStoreRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateReferenceStoreRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateReferenceStoreRequest.struct_class = Types::CreateReferenceStoreRequest

    CreateReferenceStoreResponse.add_member(:id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location_name: "id"))
    CreateReferenceStoreResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ReferenceStoreArn, required: true, location_name: "arn"))
    CreateReferenceStoreResponse.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceStoreName, location_name: "name"))
    CreateReferenceStoreResponse.add_member(:description, Shapes::ShapeRef.new(shape: ReferenceStoreDescription, location_name: "description"))
    CreateReferenceStoreResponse.add_member(:sse_config, Shapes::ShapeRef.new(shape: SseConfig, location_name: "sseConfig"))
    CreateReferenceStoreResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    CreateReferenceStoreResponse.struct_class = Types::CreateReferenceStoreResponse

    CreateRunCacheRequest.add_member(:cache_behavior, Shapes::ShapeRef.new(shape: CacheBehavior, location_name: "cacheBehavior"))
    CreateRunCacheRequest.add_member(:cache_s3_location, Shapes::ShapeRef.new(shape: S3UriForBucketOrObject, required: true, location_name: "cacheS3Location"))
    CreateRunCacheRequest.add_member(:description, Shapes::ShapeRef.new(shape: UserCustomDescription, location_name: "description"))
    CreateRunCacheRequest.add_member(:name, Shapes::ShapeRef.new(shape: UserCustomName, location_name: "name"))
    CreateRunCacheRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: RunCacheRequestId, required: true, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateRunCacheRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateRunCacheRequest.add_member(:cache_bucket_owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "cacheBucketOwnerId"))
    CreateRunCacheRequest.struct_class = Types::CreateRunCacheRequest

    CreateRunCacheResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RunCacheArn, location_name: "arn"))
    CreateRunCacheResponse.add_member(:id, Shapes::ShapeRef.new(shape: RunCacheId, location_name: "id"))
    CreateRunCacheResponse.add_member(:status, Shapes::ShapeRef.new(shape: RunCacheStatus, location_name: "status"))
    CreateRunCacheResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateRunCacheResponse.struct_class = Types::CreateRunCacheResponse

    CreateRunGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: RunGroupName, location_name: "name"))
    CreateRunGroupRequest.add_member(:max_cpus, Shapes::ShapeRef.new(shape: CreateRunGroupRequestMaxCpusInteger, location_name: "maxCpus"))
    CreateRunGroupRequest.add_member(:max_runs, Shapes::ShapeRef.new(shape: CreateRunGroupRequestMaxRunsInteger, location_name: "maxRuns"))
    CreateRunGroupRequest.add_member(:max_duration, Shapes::ShapeRef.new(shape: CreateRunGroupRequestMaxDurationInteger, location_name: "maxDuration"))
    CreateRunGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateRunGroupRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: RunGroupRequestId, required: true, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateRunGroupRequest.add_member(:max_gpus, Shapes::ShapeRef.new(shape: CreateRunGroupRequestMaxGpusInteger, location_name: "maxGpus"))
    CreateRunGroupRequest.struct_class = Types::CreateRunGroupRequest

    CreateRunGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RunGroupArn, location_name: "arn"))
    CreateRunGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: RunGroupId, location_name: "id"))
    CreateRunGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateRunGroupResponse.struct_class = Types::CreateRunGroupResponse

    CreateSequenceStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: SequenceStoreName, required: true, location_name: "name"))
    CreateSequenceStoreRequest.add_member(:description, Shapes::ShapeRef.new(shape: SequenceStoreDescription, location_name: "description"))
    CreateSequenceStoreRequest.add_member(:sse_config, Shapes::ShapeRef.new(shape: SseConfig, location_name: "sseConfig"))
    CreateSequenceStoreRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSequenceStoreRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateSequenceStoreRequest.add_member(:fallback_location, Shapes::ShapeRef.new(shape: FallbackLocation, location_name: "fallbackLocation"))
    CreateSequenceStoreRequest.add_member(:e_tag_algorithm_family, Shapes::ShapeRef.new(shape: ETagAlgorithmFamily, location_name: "eTagAlgorithmFamily"))
    CreateSequenceStoreRequest.add_member(:propagated_set_level_tags, Shapes::ShapeRef.new(shape: PropagatedSetLevelTags, location_name: "propagatedSetLevelTags"))
    CreateSequenceStoreRequest.add_member(:s3_access_config, Shapes::ShapeRef.new(shape: S3AccessConfig, location_name: "s3AccessConfig"))
    CreateSequenceStoreRequest.struct_class = Types::CreateSequenceStoreRequest

    CreateSequenceStoreResponse.add_member(:id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "id"))
    CreateSequenceStoreResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SequenceStoreArn, required: true, location_name: "arn"))
    CreateSequenceStoreResponse.add_member(:name, Shapes::ShapeRef.new(shape: SequenceStoreName, location_name: "name"))
    CreateSequenceStoreResponse.add_member(:description, Shapes::ShapeRef.new(shape: SequenceStoreDescription, location_name: "description"))
    CreateSequenceStoreResponse.add_member(:sse_config, Shapes::ShapeRef.new(shape: SseConfig, location_name: "sseConfig"))
    CreateSequenceStoreResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    CreateSequenceStoreResponse.add_member(:fallback_location, Shapes::ShapeRef.new(shape: FallbackLocation, location_name: "fallbackLocation"))
    CreateSequenceStoreResponse.add_member(:e_tag_algorithm_family, Shapes::ShapeRef.new(shape: ETagAlgorithmFamily, location_name: "eTagAlgorithmFamily"))
    CreateSequenceStoreResponse.add_member(:status, Shapes::ShapeRef.new(shape: SequenceStoreStatus, location_name: "status"))
    CreateSequenceStoreResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: SequenceStoreStatusMessage, location_name: "statusMessage"))
    CreateSequenceStoreResponse.add_member(:propagated_set_level_tags, Shapes::ShapeRef.new(shape: PropagatedSetLevelTags, location_name: "propagatedSetLevelTags"))
    CreateSequenceStoreResponse.add_member(:s3_access, Shapes::ShapeRef.new(shape: SequenceStoreS3Access, location_name: "s3Access"))
    CreateSequenceStoreResponse.struct_class = Types::CreateSequenceStoreResponse

    CreateShareRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceArn"))
    CreateShareRequest.add_member(:principal_subscriber, Shapes::ShapeRef.new(shape: String, required: true, location_name: "principalSubscriber"))
    CreateShareRequest.add_member(:share_name, Shapes::ShapeRef.new(shape: ShareName, location_name: "shareName"))
    CreateShareRequest.struct_class = Types::CreateShareRequest

    CreateShareResponse.add_member(:share_id, Shapes::ShapeRef.new(shape: String, location_name: "shareId"))
    CreateShareResponse.add_member(:status, Shapes::ShapeRef.new(shape: ShareStatus, location_name: "status"))
    CreateShareResponse.add_member(:share_name, Shapes::ShapeRef.new(shape: ShareName, location_name: "shareName"))
    CreateShareResponse.struct_class = Types::CreateShareResponse

    CreateVariantStoreRequest.add_member(:reference, Shapes::ShapeRef.new(shape: ReferenceItem, required: true, location_name: "reference"))
    CreateVariantStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: StoreName, location_name: "name"))
    CreateVariantStoreRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateVariantStoreRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateVariantStoreRequest.add_member(:sse_config, Shapes::ShapeRef.new(shape: SseConfig, location_name: "sseConfig"))
    CreateVariantStoreRequest.struct_class = Types::CreateVariantStoreRequest

    CreateVariantStoreResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    CreateVariantStoreResponse.add_member(:reference, Shapes::ShapeRef.new(shape: ReferenceItem, location_name: "reference"))
    CreateVariantStoreResponse.add_member(:status, Shapes::ShapeRef.new(shape: StoreStatus, required: true, location_name: "status"))
    CreateVariantStoreResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    CreateVariantStoreResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    CreateVariantStoreResponse.struct_class = Types::CreateVariantStoreResponse

    CreateWorkflowRequest.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowName, location_name: "name"))
    CreateWorkflowRequest.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowDescription, location_name: "description"))
    CreateWorkflowRequest.add_member(:engine, Shapes::ShapeRef.new(shape: WorkflowEngine, location_name: "engine"))
    CreateWorkflowRequest.add_member(:definition_zip, Shapes::ShapeRef.new(shape: Blob, location_name: "definitionZip"))
    CreateWorkflowRequest.add_member(:definition_uri, Shapes::ShapeRef.new(shape: WorkflowDefinition, location_name: "definitionUri"))
    CreateWorkflowRequest.add_member(:main, Shapes::ShapeRef.new(shape: WorkflowMain, location_name: "main"))
    CreateWorkflowRequest.add_member(:parameter_template, Shapes::ShapeRef.new(shape: WorkflowParameterTemplate, location_name: "parameterTemplate"))
    CreateWorkflowRequest.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: CreateWorkflowRequestStorageCapacityInteger, location_name: "storageCapacity"))
    CreateWorkflowRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateWorkflowRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: WorkflowRequestId, required: true, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateWorkflowRequest.add_member(:accelerators, Shapes::ShapeRef.new(shape: Accelerators, location_name: "accelerators"))
    CreateWorkflowRequest.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, location_name: "storageType"))
    CreateWorkflowRequest.add_member(:readme_markdown, Shapes::ShapeRef.new(shape: ReadmeMarkdown, location_name: "readmeMarkdown"))
    CreateWorkflowRequest.add_member(:parameter_template_path, Shapes::ShapeRef.new(shape: ParameterTemplatePath, location_name: "parameterTemplatePath"))
    CreateWorkflowRequest.add_member(:readme_path, Shapes::ShapeRef.new(shape: ReadmePath, location_name: "readmePath"))
    CreateWorkflowRequest.add_member(:definition_repository, Shapes::ShapeRef.new(shape: DefinitionRepository, location_name: "definitionRepository"))
    CreateWorkflowRequest.add_member(:workflow_bucket_owner_id, Shapes::ShapeRef.new(shape: WorkflowBucketOwnerId, location_name: "workflowBucketOwnerId"))
    CreateWorkflowRequest.add_member(:readme_uri, Shapes::ShapeRef.new(shape: S3UriForObject, location_name: "readmeUri"))
    CreateWorkflowRequest.struct_class = Types::CreateWorkflowRequest

    CreateWorkflowResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WorkflowArn, location_name: "arn"))
    CreateWorkflowResponse.add_member(:id, Shapes::ShapeRef.new(shape: WorkflowId, location_name: "id"))
    CreateWorkflowResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: "status"))
    CreateWorkflowResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateWorkflowResponse.add_member(:uuid, Shapes::ShapeRef.new(shape: WorkflowUuid, location_name: "uuid"))
    CreateWorkflowResponse.struct_class = Types::CreateWorkflowResponse

    CreateWorkflowVersionRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location: "uri", location_name: "workflowId"))
    CreateWorkflowVersionRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: WorkflowVersionName, required: true, location_name: "versionName"))
    CreateWorkflowVersionRequest.add_member(:definition_zip, Shapes::ShapeRef.new(shape: Blob, location_name: "definitionZip"))
    CreateWorkflowVersionRequest.add_member(:definition_uri, Shapes::ShapeRef.new(shape: WorkflowDefinition, location_name: "definitionUri"))
    CreateWorkflowVersionRequest.add_member(:accelerators, Shapes::ShapeRef.new(shape: Accelerators, location_name: "accelerators"))
    CreateWorkflowVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowVersionDescription, location_name: "description"))
    CreateWorkflowVersionRequest.add_member(:engine, Shapes::ShapeRef.new(shape: WorkflowEngine, location_name: "engine"))
    CreateWorkflowVersionRequest.add_member(:main, Shapes::ShapeRef.new(shape: WorkflowMain, location_name: "main"))
    CreateWorkflowVersionRequest.add_member(:parameter_template, Shapes::ShapeRef.new(shape: WorkflowParameterTemplate, location_name: "parameterTemplate"))
    CreateWorkflowVersionRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: WorkflowRequestId, required: true, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    CreateWorkflowVersionRequest.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, location_name: "storageType"))
    CreateWorkflowVersionRequest.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: CreateWorkflowVersionRequestStorageCapacityInteger, location_name: "storageCapacity"))
    CreateWorkflowVersionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateWorkflowVersionRequest.add_member(:workflow_bucket_owner_id, Shapes::ShapeRef.new(shape: WorkflowBucketOwnerId, location_name: "workflowBucketOwnerId"))
    CreateWorkflowVersionRequest.add_member(:readme_markdown, Shapes::ShapeRef.new(shape: ReadmeMarkdown, location_name: "readmeMarkdown"))
    CreateWorkflowVersionRequest.add_member(:parameter_template_path, Shapes::ShapeRef.new(shape: ParameterTemplatePath, location_name: "parameterTemplatePath"))
    CreateWorkflowVersionRequest.add_member(:readme_path, Shapes::ShapeRef.new(shape: ReadmePath, location_name: "readmePath"))
    CreateWorkflowVersionRequest.add_member(:definition_repository, Shapes::ShapeRef.new(shape: DefinitionRepository, location_name: "definitionRepository"))
    CreateWorkflowVersionRequest.add_member(:readme_uri, Shapes::ShapeRef.new(shape: S3UriForObject, location_name: "readmeUri"))
    CreateWorkflowVersionRequest.struct_class = Types::CreateWorkflowVersionRequest

    CreateWorkflowVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WorkflowVersionArn, location_name: "arn"))
    CreateWorkflowVersionResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, location_name: "workflowId"))
    CreateWorkflowVersionResponse.add_member(:version_name, Shapes::ShapeRef.new(shape: WorkflowVersionName, location_name: "versionName"))
    CreateWorkflowVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: "status"))
    CreateWorkflowVersionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateWorkflowVersionResponse.add_member(:uuid, Shapes::ShapeRef.new(shape: WorkflowUuid, location_name: "uuid"))
    CreateWorkflowVersionResponse.struct_class = Types::CreateWorkflowVersionResponse

    DefinitionRepository.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, required: true, location_name: "connectionArn"))
    DefinitionRepository.add_member(:full_repository_id, Shapes::ShapeRef.new(shape: FullRepositoryId, required: true, location_name: "fullRepositoryId"))
    DefinitionRepository.add_member(:source_reference, Shapes::ShapeRef.new(shape: SourceReference, location_name: "sourceReference"))
    DefinitionRepository.add_member(:exclude_file_patterns, Shapes::ShapeRef.new(shape: ExcludeFilePatternList, location_name: "excludeFilePatterns"))
    DefinitionRepository.struct_class = Types::DefinitionRepository

    DefinitionRepositoryDetails.add_member(:connection_arn, Shapes::ShapeRef.new(shape: ConnectionArn, location_name: "connectionArn"))
    DefinitionRepositoryDetails.add_member(:full_repository_id, Shapes::ShapeRef.new(shape: FullRepositoryId, location_name: "fullRepositoryId"))
    DefinitionRepositoryDetails.add_member(:source_reference, Shapes::ShapeRef.new(shape: SourceReference, location_name: "sourceReference"))
    DefinitionRepositoryDetails.add_member(:provider_type, Shapes::ShapeRef.new(shape: String, location_name: "providerType"))
    DefinitionRepositoryDetails.add_member(:provider_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "providerEndpoint"))
    DefinitionRepositoryDetails.struct_class = Types::DefinitionRepositoryDetails

    DeleteAnnotationStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DeleteAnnotationStoreRequest.add_member(:force, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location: "querystring", location_name: "force"))
    DeleteAnnotationStoreRequest.struct_class = Types::DeleteAnnotationStoreRequest

    DeleteAnnotationStoreResponse.add_member(:status, Shapes::ShapeRef.new(shape: StoreStatus, required: true, location_name: "status"))
    DeleteAnnotationStoreResponse.struct_class = Types::DeleteAnnotationStoreResponse

    DeleteAnnotationStoreVersionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DeleteAnnotationStoreVersionsRequest.add_member(:versions, Shapes::ShapeRef.new(shape: VersionList, required: true, location_name: "versions"))
    DeleteAnnotationStoreVersionsRequest.add_member(:force, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location: "querystring", location_name: "force"))
    DeleteAnnotationStoreVersionsRequest.struct_class = Types::DeleteAnnotationStoreVersionsRequest

    DeleteAnnotationStoreVersionsResponse.add_member(:errors, Shapes::ShapeRef.new(shape: VersionDeleteErrorList, location_name: "errors"))
    DeleteAnnotationStoreVersionsResponse.struct_class = Types::DeleteAnnotationStoreVersionsResponse

    DeleteReferenceRequest.add_member(:id, Shapes::ShapeRef.new(shape: ReferenceId, required: true, location: "uri", location_name: "id"))
    DeleteReferenceRequest.add_member(:reference_store_id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location: "uri", location_name: "referenceStoreId"))
    DeleteReferenceRequest.struct_class = Types::DeleteReferenceRequest

    DeleteReferenceResponse.struct_class = Types::DeleteReferenceResponse

    DeleteReferenceStoreRequest.add_member(:id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location: "uri", location_name: "id"))
    DeleteReferenceStoreRequest.struct_class = Types::DeleteReferenceStoreRequest

    DeleteReferenceStoreResponse.struct_class = Types::DeleteReferenceStoreResponse

    DeleteRunCacheRequest.add_member(:id, Shapes::ShapeRef.new(shape: RunCacheId, required: true, location: "uri", location_name: "id"))
    DeleteRunCacheRequest.struct_class = Types::DeleteRunCacheRequest

    DeleteRunGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: RunGroupId, required: true, location: "uri", location_name: "id"))
    DeleteRunGroupRequest.struct_class = Types::DeleteRunGroupRequest

    DeleteRunRequest.add_member(:id, Shapes::ShapeRef.new(shape: RunId, required: true, location: "uri", location_name: "id"))
    DeleteRunRequest.struct_class = Types::DeleteRunRequest

    DeleteS3AccessPolicyRequest.add_member(:s3_access_point_arn, Shapes::ShapeRef.new(shape: S3AccessPointArn, required: true, location: "uri", location_name: "s3AccessPointArn"))
    DeleteS3AccessPolicyRequest.struct_class = Types::DeleteS3AccessPolicyRequest

    DeleteS3AccessPolicyResponse.struct_class = Types::DeleteS3AccessPolicyResponse

    DeleteSequenceStoreRequest.add_member(:id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "id"))
    DeleteSequenceStoreRequest.struct_class = Types::DeleteSequenceStoreRequest

    DeleteSequenceStoreResponse.struct_class = Types::DeleteSequenceStoreResponse

    DeleteShareRequest.add_member(:share_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "shareId"))
    DeleteShareRequest.struct_class = Types::DeleteShareRequest

    DeleteShareResponse.add_member(:status, Shapes::ShapeRef.new(shape: ShareStatus, location_name: "status"))
    DeleteShareResponse.struct_class = Types::DeleteShareResponse

    DeleteVariantStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DeleteVariantStoreRequest.add_member(:force, Shapes::ShapeRef.new(shape: PrimitiveBoolean, location: "querystring", location_name: "force"))
    DeleteVariantStoreRequest.struct_class = Types::DeleteVariantStoreRequest

    DeleteVariantStoreResponse.add_member(:status, Shapes::ShapeRef.new(shape: StoreStatus, required: true, location_name: "status"))
    DeleteVariantStoreResponse.struct_class = Types::DeleteVariantStoreResponse

    DeleteWorkflowRequest.add_member(:id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location: "uri", location_name: "id"))
    DeleteWorkflowRequest.struct_class = Types::DeleteWorkflowRequest

    DeleteWorkflowVersionRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location: "uri", location_name: "workflowId"))
    DeleteWorkflowVersionRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: WorkflowVersionName, required: true, location: "uri", location_name: "versionName"))
    DeleteWorkflowVersionRequest.struct_class = Types::DeleteWorkflowVersionRequest

    ETag.add_member(:algorithm, Shapes::ShapeRef.new(shape: ETagAlgorithm, location_name: "algorithm"))
    ETag.add_member(:source1, Shapes::ShapeRef.new(shape: String, location_name: "source1"))
    ETag.add_member(:source2, Shapes::ShapeRef.new(shape: String, location_name: "source2"))
    ETag.struct_class = Types::ETag

    ExcludeFilePatternList.member = Shapes::ShapeRef.new(shape: String)

    ExportReadSet.add_member(:read_set_id, Shapes::ShapeRef.new(shape: ReadSetId, required: true, location_name: "readSetId"))
    ExportReadSet.struct_class = Types::ExportReadSet

    ExportReadSetDetail.add_member(:id, Shapes::ShapeRef.new(shape: ReadSetId, required: true, location_name: "id"))
    ExportReadSetDetail.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetExportJobItemStatus, required: true, location_name: "status"))
    ExportReadSetDetail.add_member(:status_message, Shapes::ShapeRef.new(shape: JobStatusMessage, location_name: "statusMessage"))
    ExportReadSetDetail.struct_class = Types::ExportReadSetDetail

    ExportReadSetDetailList.member = Shapes::ShapeRef.new(shape: ExportReadSetDetail)

    ExportReadSetFilter.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetExportJobStatus, location_name: "status"))
    ExportReadSetFilter.add_member(:created_after, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAfter"))
    ExportReadSetFilter.add_member(:created_before, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdBefore"))
    ExportReadSetFilter.struct_class = Types::ExportReadSetFilter

    ExportReadSetJobDetail.add_member(:id, Shapes::ShapeRef.new(shape: ExportJobId, required: true, location_name: "id"))
    ExportReadSetJobDetail.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "sequenceStoreId"))
    ExportReadSetJobDetail.add_member(:destination, Shapes::ShapeRef.new(shape: S3Destination, required: true, location_name: "destination"))
    ExportReadSetJobDetail.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetExportJobStatus, required: true, location_name: "status"))
    ExportReadSetJobDetail.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    ExportReadSetJobDetail.add_member(:completion_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "completionTime"))
    ExportReadSetJobDetail.struct_class = Types::ExportReadSetJobDetail

    ExportReadSetJobDetailList.member = Shapes::ShapeRef.new(shape: ExportReadSetJobDetail)

    FileInformation.add_member(:total_parts, Shapes::ShapeRef.new(shape: FileInformationTotalPartsInteger, location_name: "totalParts"))
    FileInformation.add_member(:part_size, Shapes::ShapeRef.new(shape: FileInformationPartSizeLong, location_name: "partSize"))
    FileInformation.add_member(:content_length, Shapes::ShapeRef.new(shape: FileInformationContentLengthLong, location_name: "contentLength"))
    FileInformation.add_member(:s3_access, Shapes::ShapeRef.new(shape: ReadSetS3Access, location_name: "s3Access"))
    FileInformation.struct_class = Types::FileInformation

    Filter.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ArnList, location_name: "resourceArns"))
    Filter.add_member(:status, Shapes::ShapeRef.new(shape: StatusList, location_name: "status"))
    Filter.add_member(:type, Shapes::ShapeRef.new(shape: TypeList, location_name: "type"))
    Filter.struct_class = Types::Filter

    FormatOptions.add_member(:tsv_options, Shapes::ShapeRef.new(shape: TsvOptions, location_name: "tsvOptions"))
    FormatOptions.add_member(:vcf_options, Shapes::ShapeRef.new(shape: VcfOptions, location_name: "vcfOptions"))
    FormatOptions.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FormatOptions.add_member_subclass(:tsv_options, Types::FormatOptions::TsvOptions)
    FormatOptions.add_member_subclass(:vcf_options, Types::FormatOptions::VcfOptions)
    FormatOptions.add_member_subclass(:unknown, Types::FormatOptions::Unknown)
    FormatOptions.struct_class = Types::FormatOptions

    FormatToHeader.key = Shapes::ShapeRef.new(shape: FormatToHeaderKey)
    FormatToHeader.value = Shapes::ShapeRef.new(shape: FormatToHeaderValueString)

    GetAnnotationImportRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "jobId"))
    GetAnnotationImportRequest.struct_class = Types::GetAnnotationImportRequest

    GetAnnotationImportResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GetAnnotationImportResponse.add_member(:destination_name, Shapes::ShapeRef.new(shape: StoreName, required: true, location_name: "destinationName"))
    GetAnnotationImportResponse.add_member(:version_name, Shapes::ShapeRef.new(shape: VersionName, required: true, location_name: "versionName"))
    GetAnnotationImportResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    GetAnnotationImportResponse.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "status"))
    GetAnnotationImportResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: JobStatusMsg, required: true, location_name: "statusMessage"))
    GetAnnotationImportResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    GetAnnotationImportResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    GetAnnotationImportResponse.add_member(:completion_time, Shapes::ShapeRef.new(shape: CompletionTime, required: true, location_name: "completionTime"))
    GetAnnotationImportResponse.add_member(:items, Shapes::ShapeRef.new(shape: AnnotationImportItemDetails, required: true, location_name: "items"))
    GetAnnotationImportResponse.add_member(:run_left_normalization, Shapes::ShapeRef.new(shape: RunLeftNormalization, required: true, location_name: "runLeftNormalization"))
    GetAnnotationImportResponse.add_member(:format_options, Shapes::ShapeRef.new(shape: FormatOptions, required: true, location_name: "formatOptions"))
    GetAnnotationImportResponse.add_member(:annotation_fields, Shapes::ShapeRef.new(shape: AnnotationFieldMap, location_name: "annotationFields"))
    GetAnnotationImportResponse.struct_class = Types::GetAnnotationImportResponse

    GetAnnotationStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    GetAnnotationStoreRequest.struct_class = Types::GetAnnotationStoreRequest

    GetAnnotationStoreResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GetAnnotationStoreResponse.add_member(:reference, Shapes::ShapeRef.new(shape: ReferenceItem, required: true, location_name: "reference"))
    GetAnnotationStoreResponse.add_member(:status, Shapes::ShapeRef.new(shape: StoreStatus, required: true, location_name: "status"))
    GetAnnotationStoreResponse.add_member(:store_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "storeArn"))
    GetAnnotationStoreResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    GetAnnotationStoreResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    GetAnnotationStoreResponse.add_member(:sse_config, Shapes::ShapeRef.new(shape: SseConfig, required: true, location_name: "sseConfig"))
    GetAnnotationStoreResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    GetAnnotationStoreResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    GetAnnotationStoreResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    GetAnnotationStoreResponse.add_member(:store_options, Shapes::ShapeRef.new(shape: StoreOptions, location_name: "storeOptions"))
    GetAnnotationStoreResponse.add_member(:store_format, Shapes::ShapeRef.new(shape: StoreFormat, location_name: "storeFormat"))
    GetAnnotationStoreResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, required: true, location_name: "statusMessage"))
    GetAnnotationStoreResponse.add_member(:store_size_bytes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "storeSizeBytes"))
    GetAnnotationStoreResponse.add_member(:num_versions, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "numVersions"))
    GetAnnotationStoreResponse.struct_class = Types::GetAnnotationStoreResponse

    GetAnnotationStoreVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    GetAnnotationStoreVersionRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "versionName"))
    GetAnnotationStoreVersionRequest.struct_class = Types::GetAnnotationStoreVersionRequest

    GetAnnotationStoreVersionResponse.add_member(:store_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "storeId"))
    GetAnnotationStoreVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GetAnnotationStoreVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: VersionStatus, required: true, location_name: "status"))
    GetAnnotationStoreVersionResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "versionArn"))
    GetAnnotationStoreVersionResponse.add_member(:name, Shapes::ShapeRef.new(shape: StoreName, required: true, location_name: "name"))
    GetAnnotationStoreVersionResponse.add_member(:version_name, Shapes::ShapeRef.new(shape: VersionName, required: true, location_name: "versionName"))
    GetAnnotationStoreVersionResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    GetAnnotationStoreVersionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    GetAnnotationStoreVersionResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    GetAnnotationStoreVersionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    GetAnnotationStoreVersionResponse.add_member(:version_options, Shapes::ShapeRef.new(shape: VersionOptions, location_name: "versionOptions"))
    GetAnnotationStoreVersionResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, required: true, location_name: "statusMessage"))
    GetAnnotationStoreVersionResponse.add_member(:version_size_bytes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "versionSizeBytes"))
    GetAnnotationStoreVersionResponse.struct_class = Types::GetAnnotationStoreVersionResponse

    GetReadSetActivationJobRequest.add_member(:id, Shapes::ShapeRef.new(shape: ActivationJobId, required: true, location: "uri", location_name: "id"))
    GetReadSetActivationJobRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    GetReadSetActivationJobRequest.struct_class = Types::GetReadSetActivationJobRequest

    GetReadSetActivationJobResponse.add_member(:id, Shapes::ShapeRef.new(shape: ActivationJobId, required: true, location_name: "id"))
    GetReadSetActivationJobResponse.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "sequenceStoreId"))
    GetReadSetActivationJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetActivationJobStatus, required: true, location_name: "status"))
    GetReadSetActivationJobResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: JobStatusMessage, location_name: "statusMessage"))
    GetReadSetActivationJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    GetReadSetActivationJobResponse.add_member(:completion_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "completionTime"))
    GetReadSetActivationJobResponse.add_member(:sources, Shapes::ShapeRef.new(shape: ActivateReadSetSourceList, location_name: "sources"))
    GetReadSetActivationJobResponse.struct_class = Types::GetReadSetActivationJobResponse

    GetReadSetExportJobRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    GetReadSetExportJobRequest.add_member(:id, Shapes::ShapeRef.new(shape: ExportJobId, required: true, location: "uri", location_name: "id"))
    GetReadSetExportJobRequest.struct_class = Types::GetReadSetExportJobRequest

    GetReadSetExportJobResponse.add_member(:id, Shapes::ShapeRef.new(shape: ExportJobId, required: true, location_name: "id"))
    GetReadSetExportJobResponse.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "sequenceStoreId"))
    GetReadSetExportJobResponse.add_member(:destination, Shapes::ShapeRef.new(shape: S3Destination, required: true, location_name: "destination"))
    GetReadSetExportJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetExportJobStatus, required: true, location_name: "status"))
    GetReadSetExportJobResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: JobStatusMessage, location_name: "statusMessage"))
    GetReadSetExportJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    GetReadSetExportJobResponse.add_member(:completion_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "completionTime"))
    GetReadSetExportJobResponse.add_member(:read_sets, Shapes::ShapeRef.new(shape: ExportReadSetDetailList, location_name: "readSets"))
    GetReadSetExportJobResponse.struct_class = Types::GetReadSetExportJobResponse

    GetReadSetImportJobRequest.add_member(:id, Shapes::ShapeRef.new(shape: ImportJobId, required: true, location: "uri", location_name: "id"))
    GetReadSetImportJobRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    GetReadSetImportJobRequest.struct_class = Types::GetReadSetImportJobRequest

    GetReadSetImportJobResponse.add_member(:id, Shapes::ShapeRef.new(shape: ImportJobId, required: true, location_name: "id"))
    GetReadSetImportJobResponse.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "sequenceStoreId"))
    GetReadSetImportJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    GetReadSetImportJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetImportJobStatus, required: true, location_name: "status"))
    GetReadSetImportJobResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: JobStatusMessage, location_name: "statusMessage"))
    GetReadSetImportJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    GetReadSetImportJobResponse.add_member(:completion_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "completionTime"))
    GetReadSetImportJobResponse.add_member(:sources, Shapes::ShapeRef.new(shape: ImportReadSetSourceList, required: true, location_name: "sources"))
    GetReadSetImportJobResponse.struct_class = Types::GetReadSetImportJobResponse

    GetReadSetMetadataRequest.add_member(:id, Shapes::ShapeRef.new(shape: ReadSetId, required: true, location: "uri", location_name: "id"))
    GetReadSetMetadataRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    GetReadSetMetadataRequest.struct_class = Types::GetReadSetMetadataRequest

    GetReadSetMetadataResponse.add_member(:id, Shapes::ShapeRef.new(shape: ReadSetId, required: true, location_name: "id"))
    GetReadSetMetadataResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ReadSetArn, required: true, location_name: "arn"))
    GetReadSetMetadataResponse.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "sequenceStoreId"))
    GetReadSetMetadataResponse.add_member(:subject_id, Shapes::ShapeRef.new(shape: SubjectId, location_name: "subjectId"))
    GetReadSetMetadataResponse.add_member(:sample_id, Shapes::ShapeRef.new(shape: SampleId, location_name: "sampleId"))
    GetReadSetMetadataResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetStatus, required: true, location_name: "status"))
    GetReadSetMetadataResponse.add_member(:name, Shapes::ShapeRef.new(shape: ReadSetName, location_name: "name"))
    GetReadSetMetadataResponse.add_member(:description, Shapes::ShapeRef.new(shape: ReadSetDescription, location_name: "description"))
    GetReadSetMetadataResponse.add_member(:file_type, Shapes::ShapeRef.new(shape: FileType, required: true, location_name: "fileType"))
    GetReadSetMetadataResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    GetReadSetMetadataResponse.add_member(:sequence_information, Shapes::ShapeRef.new(shape: SequenceInformation, location_name: "sequenceInformation"))
    GetReadSetMetadataResponse.add_member(:reference_arn, Shapes::ShapeRef.new(shape: ReferenceArn, location_name: "referenceArn"))
    GetReadSetMetadataResponse.add_member(:files, Shapes::ShapeRef.new(shape: ReadSetFiles, location_name: "files"))
    GetReadSetMetadataResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: ReadSetStatusMessage, location_name: "statusMessage"))
    GetReadSetMetadataResponse.add_member(:creation_type, Shapes::ShapeRef.new(shape: CreationType, location_name: "creationType"))
    GetReadSetMetadataResponse.add_member(:etag, Shapes::ShapeRef.new(shape: ETag, location_name: "etag"))
    GetReadSetMetadataResponse.add_member(:creation_job_id, Shapes::ShapeRef.new(shape: CreationJobId, location_name: "creationJobId"))
    GetReadSetMetadataResponse.struct_class = Types::GetReadSetMetadataResponse

    GetReadSetRequest.add_member(:id, Shapes::ShapeRef.new(shape: ReadSetId, required: true, location: "uri", location_name: "id"))
    GetReadSetRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    GetReadSetRequest.add_member(:file, Shapes::ShapeRef.new(shape: ReadSetFile, location: "querystring", location_name: "file"))
    GetReadSetRequest.add_member(:part_number, Shapes::ShapeRef.new(shape: GetReadSetRequestPartNumberInteger, required: true, location: "querystring", location_name: "partNumber"))
    GetReadSetRequest.struct_class = Types::GetReadSetRequest

    GetReadSetResponse.add_member(:payload, Shapes::ShapeRef.new(shape: ReadSetStreamingBlob, location_name: "payload"))
    GetReadSetResponse.struct_class = Types::GetReadSetResponse
    GetReadSetResponse[:payload] = :payload
    GetReadSetResponse[:payload_member] = GetReadSetResponse.member(:payload)

    GetReferenceImportJobRequest.add_member(:id, Shapes::ShapeRef.new(shape: ImportJobId, required: true, location: "uri", location_name: "id"))
    GetReferenceImportJobRequest.add_member(:reference_store_id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location: "uri", location_name: "referenceStoreId"))
    GetReferenceImportJobRequest.struct_class = Types::GetReferenceImportJobRequest

    GetReferenceImportJobResponse.add_member(:id, Shapes::ShapeRef.new(shape: ImportJobId, required: true, location_name: "id"))
    GetReferenceImportJobResponse.add_member(:reference_store_id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location_name: "referenceStoreId"))
    GetReferenceImportJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    GetReferenceImportJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReferenceImportJobStatus, required: true, location_name: "status"))
    GetReferenceImportJobResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: JobStatusMessage, location_name: "statusMessage"))
    GetReferenceImportJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    GetReferenceImportJobResponse.add_member(:completion_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "completionTime"))
    GetReferenceImportJobResponse.add_member(:sources, Shapes::ShapeRef.new(shape: ImportReferenceSourceList, required: true, location_name: "sources"))
    GetReferenceImportJobResponse.struct_class = Types::GetReferenceImportJobResponse

    GetReferenceMetadataRequest.add_member(:id, Shapes::ShapeRef.new(shape: ReferenceId, required: true, location: "uri", location_name: "id"))
    GetReferenceMetadataRequest.add_member(:reference_store_id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location: "uri", location_name: "referenceStoreId"))
    GetReferenceMetadataRequest.struct_class = Types::GetReferenceMetadataRequest

    GetReferenceMetadataResponse.add_member(:id, Shapes::ShapeRef.new(shape: ReferenceId, required: true, location_name: "id"))
    GetReferenceMetadataResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ReferenceArn, required: true, location_name: "arn"))
    GetReferenceMetadataResponse.add_member(:reference_store_id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location_name: "referenceStoreId"))
    GetReferenceMetadataResponse.add_member(:md5, Shapes::ShapeRef.new(shape: Md5, required: true, location_name: "md5"))
    GetReferenceMetadataResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReferenceStatus, location_name: "status"))
    GetReferenceMetadataResponse.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceName, location_name: "name"))
    GetReferenceMetadataResponse.add_member(:description, Shapes::ShapeRef.new(shape: ReferenceDescription, location_name: "description"))
    GetReferenceMetadataResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    GetReferenceMetadataResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    GetReferenceMetadataResponse.add_member(:files, Shapes::ShapeRef.new(shape: ReferenceFiles, location_name: "files"))
    GetReferenceMetadataResponse.add_member(:creation_type, Shapes::ShapeRef.new(shape: ReferenceCreationType, location_name: "creationType"))
    GetReferenceMetadataResponse.add_member(:creation_job_id, Shapes::ShapeRef.new(shape: CreationJobId, location_name: "creationJobId"))
    GetReferenceMetadataResponse.struct_class = Types::GetReferenceMetadataResponse

    GetReferenceRequest.add_member(:id, Shapes::ShapeRef.new(shape: ReferenceId, required: true, location: "uri", location_name: "id"))
    GetReferenceRequest.add_member(:reference_store_id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location: "uri", location_name: "referenceStoreId"))
    GetReferenceRequest.add_member(:range, Shapes::ShapeRef.new(shape: Range, location: "header", location_name: "Range"))
    GetReferenceRequest.add_member(:part_number, Shapes::ShapeRef.new(shape: GetReferenceRequestPartNumberInteger, required: true, location: "querystring", location_name: "partNumber"))
    GetReferenceRequest.add_member(:file, Shapes::ShapeRef.new(shape: ReferenceFile, location: "querystring", location_name: "file"))
    GetReferenceRequest.struct_class = Types::GetReferenceRequest

    GetReferenceResponse.add_member(:payload, Shapes::ShapeRef.new(shape: ReferenceStreamingBlob, location_name: "payload"))
    GetReferenceResponse.struct_class = Types::GetReferenceResponse
    GetReferenceResponse[:payload] = :payload
    GetReferenceResponse[:payload_member] = GetReferenceResponse.member(:payload)

    GetReferenceStoreRequest.add_member(:id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location: "uri", location_name: "id"))
    GetReferenceStoreRequest.struct_class = Types::GetReferenceStoreRequest

    GetReferenceStoreResponse.add_member(:id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location_name: "id"))
    GetReferenceStoreResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ReferenceStoreArn, required: true, location_name: "arn"))
    GetReferenceStoreResponse.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceStoreName, location_name: "name"))
    GetReferenceStoreResponse.add_member(:description, Shapes::ShapeRef.new(shape: ReferenceStoreDescription, location_name: "description"))
    GetReferenceStoreResponse.add_member(:sse_config, Shapes::ShapeRef.new(shape: SseConfig, location_name: "sseConfig"))
    GetReferenceStoreResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    GetReferenceStoreResponse.struct_class = Types::GetReferenceStoreResponse

    GetRunCacheRequest.add_member(:id, Shapes::ShapeRef.new(shape: RunCacheId, required: true, location: "uri", location_name: "id"))
    GetRunCacheRequest.struct_class = Types::GetRunCacheRequest

    GetRunCacheResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RunCacheArn, location_name: "arn"))
    GetRunCacheResponse.add_member(:cache_behavior, Shapes::ShapeRef.new(shape: CacheBehavior, location_name: "cacheBehavior"))
    GetRunCacheResponse.add_member(:cache_bucket_owner_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "cacheBucketOwnerId"))
    GetRunCacheResponse.add_member(:cache_s3_uri, Shapes::ShapeRef.new(shape: S3UriForBucketOrObject, location_name: "cacheS3Uri"))
    GetRunCacheResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: RunCacheTimestamp, location_name: "creationTime"))
    GetRunCacheResponse.add_member(:description, Shapes::ShapeRef.new(shape: UserCustomDescription, location_name: "description"))
    GetRunCacheResponse.add_member(:id, Shapes::ShapeRef.new(shape: RunCacheId, location_name: "id"))
    GetRunCacheResponse.add_member(:name, Shapes::ShapeRef.new(shape: UserCustomName, location_name: "name"))
    GetRunCacheResponse.add_member(:status, Shapes::ShapeRef.new(shape: RunCacheStatus, location_name: "status"))
    GetRunCacheResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetRunCacheResponse.struct_class = Types::GetRunCacheResponse

    GetRunGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: RunGroupId, required: true, location: "uri", location_name: "id"))
    GetRunGroupRequest.struct_class = Types::GetRunGroupRequest

    GetRunGroupResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RunGroupArn, location_name: "arn"))
    GetRunGroupResponse.add_member(:id, Shapes::ShapeRef.new(shape: RunGroupId, location_name: "id"))
    GetRunGroupResponse.add_member(:name, Shapes::ShapeRef.new(shape: RunGroupName, location_name: "name"))
    GetRunGroupResponse.add_member(:max_cpus, Shapes::ShapeRef.new(shape: GetRunGroupResponseMaxCpusInteger, location_name: "maxCpus"))
    GetRunGroupResponse.add_member(:max_runs, Shapes::ShapeRef.new(shape: GetRunGroupResponseMaxRunsInteger, location_name: "maxRuns"))
    GetRunGroupResponse.add_member(:max_duration, Shapes::ShapeRef.new(shape: GetRunGroupResponseMaxDurationInteger, location_name: "maxDuration"))
    GetRunGroupResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: RunGroupTimestamp, location_name: "creationTime"))
    GetRunGroupResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetRunGroupResponse.add_member(:max_gpus, Shapes::ShapeRef.new(shape: GetRunGroupResponseMaxGpusInteger, location_name: "maxGpus"))
    GetRunGroupResponse.struct_class = Types::GetRunGroupResponse

    GetRunRequest.add_member(:id, Shapes::ShapeRef.new(shape: RunId, required: true, location: "uri", location_name: "id"))
    GetRunRequest.add_member(:export, Shapes::ShapeRef.new(shape: RunExportList, location: "querystring", location_name: "export"))
    GetRunRequest.struct_class = Types::GetRunRequest

    GetRunResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RunArn, location_name: "arn"))
    GetRunResponse.add_member(:id, Shapes::ShapeRef.new(shape: RunId, location_name: "id"))
    GetRunResponse.add_member(:cache_id, Shapes::ShapeRef.new(shape: NumericIdInArn, location_name: "cacheId"))
    GetRunResponse.add_member(:cache_behavior, Shapes::ShapeRef.new(shape: CacheBehavior, location_name: "cacheBehavior"))
    GetRunResponse.add_member(:engine_version, Shapes::ShapeRef.new(shape: EngineVersion, location_name: "engineVersion"))
    GetRunResponse.add_member(:status, Shapes::ShapeRef.new(shape: RunStatus, location_name: "status"))
    GetRunResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, location_name: "workflowId"))
    GetRunResponse.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, location_name: "workflowType"))
    GetRunResponse.add_member(:run_id, Shapes::ShapeRef.new(shape: RunId, location_name: "runId"))
    GetRunResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RunRoleArn, location_name: "roleArn"))
    GetRunResponse.add_member(:name, Shapes::ShapeRef.new(shape: RunName, location_name: "name"))
    GetRunResponse.add_member(:run_group_id, Shapes::ShapeRef.new(shape: RunGroupId, location_name: "runGroupId"))
    GetRunResponse.add_member(:priority, Shapes::ShapeRef.new(shape: GetRunResponsePriorityInteger, location_name: "priority"))
    GetRunResponse.add_member(:definition, Shapes::ShapeRef.new(shape: WorkflowDefinition, location_name: "definition"))
    GetRunResponse.add_member(:digest, Shapes::ShapeRef.new(shape: WorkflowDigest, location_name: "digest"))
    GetRunResponse.add_member(:parameters, Shapes::ShapeRef.new(shape: RunParameters, location_name: "parameters"))
    GetRunResponse.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: GetRunResponseStorageCapacityInteger, location_name: "storageCapacity"))
    GetRunResponse.add_member(:output_uri, Shapes::ShapeRef.new(shape: RunOutputUri, location_name: "outputUri"))
    GetRunResponse.add_member(:log_level, Shapes::ShapeRef.new(shape: RunLogLevel, location_name: "logLevel"))
    GetRunResponse.add_member(:resource_digests, Shapes::ShapeRef.new(shape: RunResourceDigests, location_name: "resourceDigests"))
    GetRunResponse.add_member(:started_by, Shapes::ShapeRef.new(shape: RunStartedBy, location_name: "startedBy"))
    GetRunResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: RunTimestamp, location_name: "creationTime"))
    GetRunResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: RunTimestamp, location_name: "startTime"))
    GetRunResponse.add_member(:stop_time, Shapes::ShapeRef.new(shape: RunTimestamp, location_name: "stopTime"))
    GetRunResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: RunStatusMessage, location_name: "statusMessage"))
    GetRunResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetRunResponse.add_member(:accelerators, Shapes::ShapeRef.new(shape: Accelerators, location_name: "accelerators"))
    GetRunResponse.add_member(:retention_mode, Shapes::ShapeRef.new(shape: RunRetentionMode, location_name: "retentionMode"))
    GetRunResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: RunFailureReason, location_name: "failureReason"))
    GetRunResponse.add_member(:log_location, Shapes::ShapeRef.new(shape: RunLogLocation, location_name: "logLocation"))
    GetRunResponse.add_member(:uuid, Shapes::ShapeRef.new(shape: RunUuid, location_name: "uuid"))
    GetRunResponse.add_member(:run_output_uri, Shapes::ShapeRef.new(shape: RunOutputUri, location_name: "runOutputUri"))
    GetRunResponse.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, location_name: "storageType"))
    GetRunResponse.add_member(:workflow_owner_id, Shapes::ShapeRef.new(shape: WorkflowOwnerId, location_name: "workflowOwnerId"))
    GetRunResponse.add_member(:workflow_version_name, Shapes::ShapeRef.new(shape: WorkflowVersionName, location_name: "workflowVersionName"))
    GetRunResponse.add_member(:workflow_uuid, Shapes::ShapeRef.new(shape: WorkflowUuid, location_name: "workflowUuid"))
    GetRunResponse.struct_class = Types::GetRunResponse

    GetRunTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: RunId, required: true, location: "uri", location_name: "id"))
    GetRunTaskRequest.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, required: true, location: "uri", location_name: "taskId"))
    GetRunTaskRequest.struct_class = Types::GetRunTaskRequest

    GetRunTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, location_name: "taskId"))
    GetRunTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "status"))
    GetRunTaskResponse.add_member(:name, Shapes::ShapeRef.new(shape: TaskName, location_name: "name"))
    GetRunTaskResponse.add_member(:cpus, Shapes::ShapeRef.new(shape: GetRunTaskResponseCpusInteger, location_name: "cpus"))
    GetRunTaskResponse.add_member(:cache_hit, Shapes::ShapeRef.new(shape: Boolean, location_name: "cacheHit"))
    GetRunTaskResponse.add_member(:cache_s3_uri, Shapes::ShapeRef.new(shape: S3UriForBucketOrObject, location_name: "cacheS3Uri"))
    GetRunTaskResponse.add_member(:memory, Shapes::ShapeRef.new(shape: GetRunTaskResponseMemoryInteger, location_name: "memory"))
    GetRunTaskResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: TaskTimestamp, location_name: "creationTime"))
    GetRunTaskResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: TaskTimestamp, location_name: "startTime"))
    GetRunTaskResponse.add_member(:stop_time, Shapes::ShapeRef.new(shape: TaskTimestamp, location_name: "stopTime"))
    GetRunTaskResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: TaskStatusMessage, location_name: "statusMessage"))
    GetRunTaskResponse.add_member(:log_stream, Shapes::ShapeRef.new(shape: TaskLogStream, location_name: "logStream"))
    GetRunTaskResponse.add_member(:gpus, Shapes::ShapeRef.new(shape: GetRunTaskResponseGpusInteger, location_name: "gpus"))
    GetRunTaskResponse.add_member(:instance_type, Shapes::ShapeRef.new(shape: TaskInstanceType, location_name: "instanceType"))
    GetRunTaskResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: TaskFailureReason, location_name: "failureReason"))
    GetRunTaskResponse.struct_class = Types::GetRunTaskResponse

    GetS3AccessPolicyRequest.add_member(:s3_access_point_arn, Shapes::ShapeRef.new(shape: S3AccessPointArn, required: true, location: "uri", location_name: "s3AccessPointArn"))
    GetS3AccessPolicyRequest.struct_class = Types::GetS3AccessPolicyRequest

    GetS3AccessPolicyResponse.add_member(:s3_access_point_arn, Shapes::ShapeRef.new(shape: S3AccessPointArn, location_name: "s3AccessPointArn"))
    GetS3AccessPolicyResponse.add_member(:store_id, Shapes::ShapeRef.new(shape: StoreId, location_name: "storeId"))
    GetS3AccessPolicyResponse.add_member(:store_type, Shapes::ShapeRef.new(shape: StoreType, location_name: "storeType"))
    GetS3AccessPolicyResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updateTime"))
    GetS3AccessPolicyResponse.add_member(:s3_access_policy, Shapes::ShapeRef.new(shape: S3AccessPolicy, required: true, location_name: "s3AccessPolicy", metadata: {"jsonvalue" => true}))
    GetS3AccessPolicyResponse.struct_class = Types::GetS3AccessPolicyResponse

    GetSequenceStoreRequest.add_member(:id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "id"))
    GetSequenceStoreRequest.struct_class = Types::GetSequenceStoreRequest

    GetSequenceStoreResponse.add_member(:id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "id"))
    GetSequenceStoreResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SequenceStoreArn, required: true, location_name: "arn"))
    GetSequenceStoreResponse.add_member(:name, Shapes::ShapeRef.new(shape: SequenceStoreName, location_name: "name"))
    GetSequenceStoreResponse.add_member(:description, Shapes::ShapeRef.new(shape: SequenceStoreDescription, location_name: "description"))
    GetSequenceStoreResponse.add_member(:sse_config, Shapes::ShapeRef.new(shape: SseConfig, location_name: "sseConfig"))
    GetSequenceStoreResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    GetSequenceStoreResponse.add_member(:fallback_location, Shapes::ShapeRef.new(shape: FallbackLocation, location_name: "fallbackLocation"))
    GetSequenceStoreResponse.add_member(:s3_access, Shapes::ShapeRef.new(shape: SequenceStoreS3Access, location_name: "s3Access"))
    GetSequenceStoreResponse.add_member(:e_tag_algorithm_family, Shapes::ShapeRef.new(shape: ETagAlgorithmFamily, location_name: "eTagAlgorithmFamily"))
    GetSequenceStoreResponse.add_member(:status, Shapes::ShapeRef.new(shape: SequenceStoreStatus, location_name: "status"))
    GetSequenceStoreResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: SequenceStoreStatusMessage, location_name: "statusMessage"))
    GetSequenceStoreResponse.add_member(:propagated_set_level_tags, Shapes::ShapeRef.new(shape: PropagatedSetLevelTags, location_name: "propagatedSetLevelTags"))
    GetSequenceStoreResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updateTime"))
    GetSequenceStoreResponse.struct_class = Types::GetSequenceStoreResponse

    GetShareRequest.add_member(:share_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "shareId"))
    GetShareRequest.struct_class = Types::GetShareRequest

    GetShareResponse.add_member(:share, Shapes::ShapeRef.new(shape: ShareDetails, location_name: "share"))
    GetShareResponse.struct_class = Types::GetShareResponse

    GetVariantImportRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "jobId"))
    GetVariantImportRequest.struct_class = Types::GetVariantImportRequest

    GetVariantImportResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GetVariantImportResponse.add_member(:destination_name, Shapes::ShapeRef.new(shape: StoreName, required: true, location_name: "destinationName"))
    GetVariantImportResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    GetVariantImportResponse.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "status"))
    GetVariantImportResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: JobStatusMsg, required: true, location_name: "statusMessage"))
    GetVariantImportResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    GetVariantImportResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    GetVariantImportResponse.add_member(:completion_time, Shapes::ShapeRef.new(shape: CompletionTime, location_name: "completionTime"))
    GetVariantImportResponse.add_member(:items, Shapes::ShapeRef.new(shape: VariantImportItemDetails, required: true, location_name: "items"))
    GetVariantImportResponse.add_member(:run_left_normalization, Shapes::ShapeRef.new(shape: RunLeftNormalization, required: true, location_name: "runLeftNormalization"))
    GetVariantImportResponse.add_member(:annotation_fields, Shapes::ShapeRef.new(shape: AnnotationFieldMap, location_name: "annotationFields"))
    GetVariantImportResponse.struct_class = Types::GetVariantImportResponse

    GetVariantStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    GetVariantStoreRequest.struct_class = Types::GetVariantStoreRequest

    GetVariantStoreResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    GetVariantStoreResponse.add_member(:reference, Shapes::ShapeRef.new(shape: ReferenceItem, required: true, location_name: "reference"))
    GetVariantStoreResponse.add_member(:status, Shapes::ShapeRef.new(shape: StoreStatus, required: true, location_name: "status"))
    GetVariantStoreResponse.add_member(:store_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "storeArn"))
    GetVariantStoreResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    GetVariantStoreResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    GetVariantStoreResponse.add_member(:sse_config, Shapes::ShapeRef.new(shape: SseConfig, required: true, location_name: "sseConfig"))
    GetVariantStoreResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    GetVariantStoreResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    GetVariantStoreResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    GetVariantStoreResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, required: true, location_name: "statusMessage"))
    GetVariantStoreResponse.add_member(:store_size_bytes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "storeSizeBytes"))
    GetVariantStoreResponse.struct_class = Types::GetVariantStoreResponse

    GetWorkflowRequest.add_member(:id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location: "uri", location_name: "id"))
    GetWorkflowRequest.add_member(:type, Shapes::ShapeRef.new(shape: WorkflowType, location: "querystring", location_name: "type"))
    GetWorkflowRequest.add_member(:export, Shapes::ShapeRef.new(shape: WorkflowExportList, location: "querystring", location_name: "export"))
    GetWorkflowRequest.add_member(:workflow_owner_id, Shapes::ShapeRef.new(shape: WorkflowOwnerId, location: "querystring", location_name: "workflowOwnerId"))
    GetWorkflowRequest.struct_class = Types::GetWorkflowRequest

    GetWorkflowResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WorkflowArn, location_name: "arn"))
    GetWorkflowResponse.add_member(:id, Shapes::ShapeRef.new(shape: WorkflowId, location_name: "id"))
    GetWorkflowResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: "status"))
    GetWorkflowResponse.add_member(:type, Shapes::ShapeRef.new(shape: WorkflowType, location_name: "type"))
    GetWorkflowResponse.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowName, location_name: "name"))
    GetWorkflowResponse.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowDescription, location_name: "description"))
    GetWorkflowResponse.add_member(:engine, Shapes::ShapeRef.new(shape: WorkflowEngine, location_name: "engine"))
    GetWorkflowResponse.add_member(:definition, Shapes::ShapeRef.new(shape: WorkflowDefinition, location_name: "definition"))
    GetWorkflowResponse.add_member(:main, Shapes::ShapeRef.new(shape: WorkflowMain, location_name: "main"))
    GetWorkflowResponse.add_member(:digest, Shapes::ShapeRef.new(shape: WorkflowDigest, location_name: "digest"))
    GetWorkflowResponse.add_member(:parameter_template, Shapes::ShapeRef.new(shape: WorkflowParameterTemplate, location_name: "parameterTemplate"))
    GetWorkflowResponse.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: GetWorkflowResponseStorageCapacityInteger, location_name: "storageCapacity"))
    GetWorkflowResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: WorkflowTimestamp, location_name: "creationTime"))
    GetWorkflowResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: WorkflowStatusMessage, location_name: "statusMessage"))
    GetWorkflowResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetWorkflowResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: WorkflowMetadata, location_name: "metadata"))
    GetWorkflowResponse.add_member(:accelerators, Shapes::ShapeRef.new(shape: Accelerators, location_name: "accelerators"))
    GetWorkflowResponse.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, location_name: "storageType"))
    GetWorkflowResponse.add_member(:uuid, Shapes::ShapeRef.new(shape: WorkflowUuid, location_name: "uuid"))
    GetWorkflowResponse.add_member(:readme, Shapes::ShapeRef.new(shape: ReadmeS3PresignedUrl, location_name: "readme"))
    GetWorkflowResponse.add_member(:definition_repository_details, Shapes::ShapeRef.new(shape: DefinitionRepositoryDetails, location_name: "definitionRepositoryDetails"))
    GetWorkflowResponse.add_member(:readme_path, Shapes::ShapeRef.new(shape: ReadmePath, location_name: "readmePath"))
    GetWorkflowResponse.struct_class = Types::GetWorkflowResponse

    GetWorkflowVersionRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location: "uri", location_name: "workflowId"))
    GetWorkflowVersionRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: WorkflowVersionName, required: true, location: "uri", location_name: "versionName"))
    GetWorkflowVersionRequest.add_member(:type, Shapes::ShapeRef.new(shape: WorkflowType, location: "querystring", location_name: "type"))
    GetWorkflowVersionRequest.add_member(:export, Shapes::ShapeRef.new(shape: WorkflowExportList, location: "querystring", location_name: "export"))
    GetWorkflowVersionRequest.add_member(:workflow_owner_id, Shapes::ShapeRef.new(shape: WorkflowOwnerId, location: "querystring", location_name: "workflowOwnerId"))
    GetWorkflowVersionRequest.struct_class = Types::GetWorkflowVersionRequest

    GetWorkflowVersionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: WorkflowVersionArn, location_name: "arn"))
    GetWorkflowVersionResponse.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, location_name: "workflowId"))
    GetWorkflowVersionResponse.add_member(:version_name, Shapes::ShapeRef.new(shape: WorkflowVersionName, location_name: "versionName"))
    GetWorkflowVersionResponse.add_member(:accelerators, Shapes::ShapeRef.new(shape: Accelerators, location_name: "accelerators"))
    GetWorkflowVersionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: WorkflowTimestamp, location_name: "creationTime"))
    GetWorkflowVersionResponse.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowVersionDescription, location_name: "description"))
    GetWorkflowVersionResponse.add_member(:definition, Shapes::ShapeRef.new(shape: WorkflowDefinition, location_name: "definition"))
    GetWorkflowVersionResponse.add_member(:digest, Shapes::ShapeRef.new(shape: WorkflowDigest, location_name: "digest"))
    GetWorkflowVersionResponse.add_member(:engine, Shapes::ShapeRef.new(shape: WorkflowEngine, location_name: "engine"))
    GetWorkflowVersionResponse.add_member(:main, Shapes::ShapeRef.new(shape: WorkflowMain, location_name: "main"))
    GetWorkflowVersionResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: WorkflowMetadata, location_name: "metadata"))
    GetWorkflowVersionResponse.add_member(:parameter_template, Shapes::ShapeRef.new(shape: WorkflowParameterTemplate, location_name: "parameterTemplate"))
    GetWorkflowVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: "status"))
    GetWorkflowVersionResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: WorkflowStatusMessage, location_name: "statusMessage"))
    GetWorkflowVersionResponse.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, location_name: "storageType"))
    GetWorkflowVersionResponse.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: GetWorkflowVersionResponseStorageCapacityInteger, location_name: "storageCapacity"))
    GetWorkflowVersionResponse.add_member(:type, Shapes::ShapeRef.new(shape: WorkflowType, location_name: "type"))
    GetWorkflowVersionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetWorkflowVersionResponse.add_member(:uuid, Shapes::ShapeRef.new(shape: WorkflowUuid, location_name: "uuid"))
    GetWorkflowVersionResponse.add_member(:workflow_bucket_owner_id, Shapes::ShapeRef.new(shape: WorkflowBucketOwnerId, location_name: "workflowBucketOwnerId"))
    GetWorkflowVersionResponse.add_member(:readme, Shapes::ShapeRef.new(shape: ReadmeS3PresignedUrl, location_name: "readme"))
    GetWorkflowVersionResponse.add_member(:definition_repository_details, Shapes::ShapeRef.new(shape: DefinitionRepositoryDetails, location_name: "definitionRepositoryDetails"))
    GetWorkflowVersionResponse.add_member(:readme_path, Shapes::ShapeRef.new(shape: ReadmePath, location_name: "readmePath"))
    GetWorkflowVersionResponse.struct_class = Types::GetWorkflowVersionResponse

    ImportReadSetFilter.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetImportJobStatus, location_name: "status"))
    ImportReadSetFilter.add_member(:created_after, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAfter"))
    ImportReadSetFilter.add_member(:created_before, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdBefore"))
    ImportReadSetFilter.struct_class = Types::ImportReadSetFilter

    ImportReadSetJobItem.add_member(:id, Shapes::ShapeRef.new(shape: ImportJobId, required: true, location_name: "id"))
    ImportReadSetJobItem.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "sequenceStoreId"))
    ImportReadSetJobItem.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    ImportReadSetJobItem.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetImportJobStatus, required: true, location_name: "status"))
    ImportReadSetJobItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    ImportReadSetJobItem.add_member(:completion_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "completionTime"))
    ImportReadSetJobItem.struct_class = Types::ImportReadSetJobItem

    ImportReadSetJobList.member = Shapes::ShapeRef.new(shape: ImportReadSetJobItem)

    ImportReadSetSourceItem.add_member(:source_files, Shapes::ShapeRef.new(shape: SourceFiles, required: true, location_name: "sourceFiles"))
    ImportReadSetSourceItem.add_member(:source_file_type, Shapes::ShapeRef.new(shape: FileType, required: true, location_name: "sourceFileType"))
    ImportReadSetSourceItem.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetImportJobItemStatus, required: true, location_name: "status"))
    ImportReadSetSourceItem.add_member(:status_message, Shapes::ShapeRef.new(shape: JobStatusMessage, location_name: "statusMessage"))
    ImportReadSetSourceItem.add_member(:subject_id, Shapes::ShapeRef.new(shape: SubjectId, required: true, location_name: "subjectId"))
    ImportReadSetSourceItem.add_member(:sample_id, Shapes::ShapeRef.new(shape: SampleId, required: true, location_name: "sampleId"))
    ImportReadSetSourceItem.add_member(:generated_from, Shapes::ShapeRef.new(shape: GeneratedFrom, location_name: "generatedFrom"))
    ImportReadSetSourceItem.add_member(:reference_arn, Shapes::ShapeRef.new(shape: ReferenceArn, location_name: "referenceArn"))
    ImportReadSetSourceItem.add_member(:name, Shapes::ShapeRef.new(shape: ReadSetName, location_name: "name"))
    ImportReadSetSourceItem.add_member(:description, Shapes::ShapeRef.new(shape: ReadSetDescription, location_name: "description"))
    ImportReadSetSourceItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ImportReadSetSourceItem.add_member(:read_set_id, Shapes::ShapeRef.new(shape: ReadSetId, location_name: "readSetId"))
    ImportReadSetSourceItem.struct_class = Types::ImportReadSetSourceItem

    ImportReadSetSourceList.member = Shapes::ShapeRef.new(shape: ImportReadSetSourceItem)

    ImportReferenceFilter.add_member(:status, Shapes::ShapeRef.new(shape: ReferenceImportJobStatus, location_name: "status"))
    ImportReferenceFilter.add_member(:created_after, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAfter"))
    ImportReferenceFilter.add_member(:created_before, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdBefore"))
    ImportReferenceFilter.struct_class = Types::ImportReferenceFilter

    ImportReferenceJobItem.add_member(:id, Shapes::ShapeRef.new(shape: ImportJobId, required: true, location_name: "id"))
    ImportReferenceJobItem.add_member(:reference_store_id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location_name: "referenceStoreId"))
    ImportReferenceJobItem.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    ImportReferenceJobItem.add_member(:status, Shapes::ShapeRef.new(shape: ReferenceImportJobStatus, required: true, location_name: "status"))
    ImportReferenceJobItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    ImportReferenceJobItem.add_member(:completion_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "completionTime"))
    ImportReferenceJobItem.struct_class = Types::ImportReferenceJobItem

    ImportReferenceJobList.member = Shapes::ShapeRef.new(shape: ImportReferenceJobItem)

    ImportReferenceSourceItem.add_member(:source_file, Shapes::ShapeRef.new(shape: S3Uri, location_name: "sourceFile"))
    ImportReferenceSourceItem.add_member(:status, Shapes::ShapeRef.new(shape: ReferenceImportJobItemStatus, required: true, location_name: "status"))
    ImportReferenceSourceItem.add_member(:status_message, Shapes::ShapeRef.new(shape: JobStatusMessage, location_name: "statusMessage"))
    ImportReferenceSourceItem.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceName, location_name: "name"))
    ImportReferenceSourceItem.add_member(:description, Shapes::ShapeRef.new(shape: ReferenceDescription, location_name: "description"))
    ImportReferenceSourceItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ImportReferenceSourceItem.add_member(:reference_id, Shapes::ShapeRef.new(shape: ReferenceId, location_name: "referenceId"))
    ImportReferenceSourceItem.struct_class = Types::ImportReferenceSourceItem

    ImportReferenceSourceList.member = Shapes::ShapeRef.new(shape: ImportReferenceSourceItem)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAnnotationImportJobsFilter.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    ListAnnotationImportJobsFilter.add_member(:store_name, Shapes::ShapeRef.new(shape: String, location_name: "storeName"))
    ListAnnotationImportJobsFilter.struct_class = Types::ListAnnotationImportJobsFilter

    ListAnnotationImportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAnnotationImportJobsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListAnnotationImportJobsRequest.add_member(:ids, Shapes::ShapeRef.new(shape: ListAnnotationImportJobsRequestIdsList, location_name: "ids"))
    ListAnnotationImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListAnnotationImportJobsRequestNextTokenString, location: "querystring", location_name: "nextToken"))
    ListAnnotationImportJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListAnnotationImportJobsFilter, location_name: "filter"))
    ListAnnotationImportJobsRequest.struct_class = Types::ListAnnotationImportJobsRequest

    ListAnnotationImportJobsRequestIdsList.member = Shapes::ShapeRef.new(shape: ResourceIdentifier)

    ListAnnotationImportJobsResponse.add_member(:annotation_import_jobs, Shapes::ShapeRef.new(shape: AnnotationImportJobItems, location_name: "annotationImportJobs"))
    ListAnnotationImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAnnotationImportJobsResponse.struct_class = Types::ListAnnotationImportJobsResponse

    ListAnnotationStoreVersionsFilter.add_member(:status, Shapes::ShapeRef.new(shape: VersionStatus, location_name: "status"))
    ListAnnotationStoreVersionsFilter.struct_class = Types::ListAnnotationStoreVersionsFilter

    ListAnnotationStoreVersionsRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    ListAnnotationStoreVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAnnotationStoreVersionsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListAnnotationStoreVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListAnnotationStoreVersionsRequestNextTokenString, location: "querystring", location_name: "nextToken"))
    ListAnnotationStoreVersionsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListAnnotationStoreVersionsFilter, location_name: "filter"))
    ListAnnotationStoreVersionsRequest.struct_class = Types::ListAnnotationStoreVersionsRequest

    ListAnnotationStoreVersionsResponse.add_member(:annotation_store_versions, Shapes::ShapeRef.new(shape: AnnotationStoreVersionItems, location_name: "annotationStoreVersions"))
    ListAnnotationStoreVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAnnotationStoreVersionsResponse.struct_class = Types::ListAnnotationStoreVersionsResponse

    ListAnnotationStoresFilter.add_member(:status, Shapes::ShapeRef.new(shape: StoreStatus, location_name: "status"))
    ListAnnotationStoresFilter.struct_class = Types::ListAnnotationStoresFilter

    ListAnnotationStoresRequest.add_member(:ids, Shapes::ShapeRef.new(shape: ListAnnotationStoresRequestIdsList, location_name: "ids"))
    ListAnnotationStoresRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAnnotationStoresRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListAnnotationStoresRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListAnnotationStoresRequestNextTokenString, location: "querystring", location_name: "nextToken"))
    ListAnnotationStoresRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListAnnotationStoresFilter, location_name: "filter"))
    ListAnnotationStoresRequest.struct_class = Types::ListAnnotationStoresRequest

    ListAnnotationStoresRequestIdsList.member = Shapes::ShapeRef.new(shape: ResourceIdentifier)

    ListAnnotationStoresResponse.add_member(:annotation_stores, Shapes::ShapeRef.new(shape: AnnotationStoreItems, location_name: "annotationStores"))
    ListAnnotationStoresResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAnnotationStoresResponse.struct_class = Types::ListAnnotationStoresResponse

    ListMultipartReadSetUploadsRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    ListMultipartReadSetUploadsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListMultipartReadSetUploadsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListMultipartReadSetUploadsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListMultipartReadSetUploadsRequest.struct_class = Types::ListMultipartReadSetUploadsRequest

    ListMultipartReadSetUploadsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMultipartReadSetUploadsResponse.add_member(:uploads, Shapes::ShapeRef.new(shape: MultipartReadSetUploadList, location_name: "uploads"))
    ListMultipartReadSetUploadsResponse.struct_class = Types::ListMultipartReadSetUploadsResponse

    ListReadSetActivationJobsRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    ListReadSetActivationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListReadSetActivationJobsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListReadSetActivationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListReadSetActivationJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ActivateReadSetFilter, location_name: "filter"))
    ListReadSetActivationJobsRequest.struct_class = Types::ListReadSetActivationJobsRequest

    ListReadSetActivationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListReadSetActivationJobsResponse.add_member(:activation_jobs, Shapes::ShapeRef.new(shape: ActivateReadSetJobList, location_name: "activationJobs"))
    ListReadSetActivationJobsResponse.struct_class = Types::ListReadSetActivationJobsResponse

    ListReadSetExportJobsRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    ListReadSetExportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListReadSetExportJobsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListReadSetExportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListReadSetExportJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ExportReadSetFilter, location_name: "filter"))
    ListReadSetExportJobsRequest.struct_class = Types::ListReadSetExportJobsRequest

    ListReadSetExportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListReadSetExportJobsResponse.add_member(:export_jobs, Shapes::ShapeRef.new(shape: ExportReadSetJobDetailList, location_name: "exportJobs"))
    ListReadSetExportJobsResponse.struct_class = Types::ListReadSetExportJobsResponse

    ListReadSetImportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListReadSetImportJobsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListReadSetImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListReadSetImportJobsRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    ListReadSetImportJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ImportReadSetFilter, location_name: "filter"))
    ListReadSetImportJobsRequest.struct_class = Types::ListReadSetImportJobsRequest

    ListReadSetImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListReadSetImportJobsResponse.add_member(:import_jobs, Shapes::ShapeRef.new(shape: ImportReadSetJobList, location_name: "importJobs"))
    ListReadSetImportJobsResponse.struct_class = Types::ListReadSetImportJobsResponse

    ListReadSetUploadPartsRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    ListReadSetUploadPartsRequest.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, required: true, location: "uri", location_name: "uploadId"))
    ListReadSetUploadPartsRequest.add_member(:part_source, Shapes::ShapeRef.new(shape: ReadSetPartSource, required: true, location_name: "partSource"))
    ListReadSetUploadPartsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListReadSetUploadPartsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListReadSetUploadPartsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListReadSetUploadPartsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ReadSetUploadPartListFilter, location_name: "filter"))
    ListReadSetUploadPartsRequest.struct_class = Types::ListReadSetUploadPartsRequest

    ListReadSetUploadPartsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListReadSetUploadPartsResponse.add_member(:parts, Shapes::ShapeRef.new(shape: ReadSetUploadPartList, location_name: "parts"))
    ListReadSetUploadPartsResponse.struct_class = Types::ListReadSetUploadPartsResponse

    ListReadSetsRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    ListReadSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListReadSetsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListReadSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListReadSetsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ReadSetFilter, location_name: "filter"))
    ListReadSetsRequest.struct_class = Types::ListReadSetsRequest

    ListReadSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListReadSetsResponse.add_member(:read_sets, Shapes::ShapeRef.new(shape: ReadSetList, required: true, location_name: "readSets"))
    ListReadSetsResponse.struct_class = Types::ListReadSetsResponse

    ListReferenceImportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListReferenceImportJobsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListReferenceImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListReferenceImportJobsRequest.add_member(:reference_store_id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location: "uri", location_name: "referenceStoreId"))
    ListReferenceImportJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ImportReferenceFilter, location_name: "filter"))
    ListReferenceImportJobsRequest.struct_class = Types::ListReferenceImportJobsRequest

    ListReferenceImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListReferenceImportJobsResponse.add_member(:import_jobs, Shapes::ShapeRef.new(shape: ImportReferenceJobList, location_name: "importJobs"))
    ListReferenceImportJobsResponse.struct_class = Types::ListReferenceImportJobsResponse

    ListReferenceStoresRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListReferenceStoresRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListReferenceStoresRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListReferenceStoresRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ReferenceStoreFilter, location_name: "filter"))
    ListReferenceStoresRequest.struct_class = Types::ListReferenceStoresRequest

    ListReferenceStoresResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListReferenceStoresResponse.add_member(:reference_stores, Shapes::ShapeRef.new(shape: ReferenceStoreDetailList, required: true, location_name: "referenceStores"))
    ListReferenceStoresResponse.struct_class = Types::ListReferenceStoresResponse

    ListReferencesRequest.add_member(:reference_store_id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location: "uri", location_name: "referenceStoreId"))
    ListReferencesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListReferencesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListReferencesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListReferencesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ReferenceFilter, location_name: "filter"))
    ListReferencesRequest.struct_class = Types::ListReferencesRequest

    ListReferencesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListReferencesResponse.add_member(:references, Shapes::ShapeRef.new(shape: ReferenceList, required: true, location_name: "references"))
    ListReferencesResponse.struct_class = Types::ListReferencesResponse

    ListRunCachesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRunCachesRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRunCachesRequest.add_member(:starting_token, Shapes::ShapeRef.new(shape: ListToken, location: "querystring", location_name: "startingToken"))
    ListRunCachesRequest.struct_class = Types::ListRunCachesRequest

    ListRunCachesResponse.add_member(:items, Shapes::ShapeRef.new(shape: RunCacheList, location_name: "items"))
    ListRunCachesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ListToken, location_name: "nextToken"))
    ListRunCachesResponse.struct_class = Types::ListRunCachesResponse

    ListRunGroupsRequest.add_member(:name, Shapes::ShapeRef.new(shape: RunGroupName, location: "querystring", location_name: "name"))
    ListRunGroupsRequest.add_member(:starting_token, Shapes::ShapeRef.new(shape: RunGroupListToken, location: "querystring", location_name: "startingToken"))
    ListRunGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRunGroupsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRunGroupsRequest.struct_class = Types::ListRunGroupsRequest

    ListRunGroupsResponse.add_member(:items, Shapes::ShapeRef.new(shape: RunGroupList, location_name: "items"))
    ListRunGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: RunGroupListToken, location_name: "nextToken"))
    ListRunGroupsResponse.struct_class = Types::ListRunGroupsResponse

    ListRunTasksRequest.add_member(:id, Shapes::ShapeRef.new(shape: RunId, required: true, location: "uri", location_name: "id"))
    ListRunTasksRequest.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatus, location: "querystring", location_name: "status"))
    ListRunTasksRequest.add_member(:starting_token, Shapes::ShapeRef.new(shape: TaskListToken, location: "querystring", location_name: "startingToken"))
    ListRunTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRunTasksRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRunTasksRequest.struct_class = Types::ListRunTasksRequest

    ListRunTasksResponse.add_member(:items, Shapes::ShapeRef.new(shape: TaskList, location_name: "items"))
    ListRunTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: TaskListToken, location_name: "nextToken"))
    ListRunTasksResponse.struct_class = Types::ListRunTasksResponse

    ListRunsRequest.add_member(:name, Shapes::ShapeRef.new(shape: RunName, location: "querystring", location_name: "name"))
    ListRunsRequest.add_member(:run_group_id, Shapes::ShapeRef.new(shape: RunGroupId, location: "querystring", location_name: "runGroupId"))
    ListRunsRequest.add_member(:starting_token, Shapes::ShapeRef.new(shape: RunListToken, location: "querystring", location_name: "startingToken"))
    ListRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRunsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListRunsRequest.add_member(:status, Shapes::ShapeRef.new(shape: RunStatus, location: "querystring", location_name: "status"))
    ListRunsRequest.struct_class = Types::ListRunsRequest

    ListRunsResponse.add_member(:items, Shapes::ShapeRef.new(shape: RunList, location_name: "items"))
    ListRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: RunListToken, location_name: "nextToken"))
    ListRunsResponse.struct_class = Types::ListRunsResponse

    ListSequenceStoresRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSequenceStoresRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListSequenceStoresRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSequenceStoresRequest.add_member(:filter, Shapes::ShapeRef.new(shape: SequenceStoreFilter, location_name: "filter"))
    ListSequenceStoresRequest.struct_class = Types::ListSequenceStoresRequest

    ListSequenceStoresResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSequenceStoresResponse.add_member(:sequence_stores, Shapes::ShapeRef.new(shape: SequenceStoreDetailList, required: true, location_name: "sequenceStores"))
    ListSequenceStoresResponse.struct_class = Types::ListSequenceStoresResponse

    ListSharesRequest.add_member(:resource_owner, Shapes::ShapeRef.new(shape: ResourceOwner, required: true, location_name: "resourceOwner"))
    ListSharesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Filter, location_name: "filter"))
    ListSharesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListSharesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListSharesRequest.struct_class = Types::ListSharesRequest

    ListSharesResponse.add_member(:shares, Shapes::ShapeRef.new(shape: ShareDetailsList, required: true, location_name: "shares"))
    ListSharesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSharesResponse.struct_class = Types::ListSharesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListVariantImportJobsFilter.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    ListVariantImportJobsFilter.add_member(:store_name, Shapes::ShapeRef.new(shape: String, location_name: "storeName"))
    ListVariantImportJobsFilter.struct_class = Types::ListVariantImportJobsFilter

    ListVariantImportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListVariantImportJobsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListVariantImportJobsRequest.add_member(:ids, Shapes::ShapeRef.new(shape: ListVariantImportJobsRequestIdsList, location_name: "ids"))
    ListVariantImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListVariantImportJobsRequestNextTokenString, location: "querystring", location_name: "nextToken"))
    ListVariantImportJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListVariantImportJobsFilter, location_name: "filter"))
    ListVariantImportJobsRequest.struct_class = Types::ListVariantImportJobsRequest

    ListVariantImportJobsRequestIdsList.member = Shapes::ShapeRef.new(shape: ResourceIdentifier)

    ListVariantImportJobsResponse.add_member(:variant_import_jobs, Shapes::ShapeRef.new(shape: VariantImportJobItems, location_name: "variantImportJobs"))
    ListVariantImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListVariantImportJobsResponse.struct_class = Types::ListVariantImportJobsResponse

    ListVariantStoresFilter.add_member(:status, Shapes::ShapeRef.new(shape: StoreStatus, location_name: "status"))
    ListVariantStoresFilter.struct_class = Types::ListVariantStoresFilter

    ListVariantStoresRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListVariantStoresRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListVariantStoresRequest.add_member(:ids, Shapes::ShapeRef.new(shape: ListVariantStoresRequestIdsList, location_name: "ids"))
    ListVariantStoresRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListVariantStoresRequestNextTokenString, location: "querystring", location_name: "nextToken"))
    ListVariantStoresRequest.add_member(:filter, Shapes::ShapeRef.new(shape: ListVariantStoresFilter, location_name: "filter"))
    ListVariantStoresRequest.struct_class = Types::ListVariantStoresRequest

    ListVariantStoresRequestIdsList.member = Shapes::ShapeRef.new(shape: ResourceIdentifier)

    ListVariantStoresResponse.add_member(:variant_stores, Shapes::ShapeRef.new(shape: VariantStoreItems, location_name: "variantStores"))
    ListVariantStoresResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListVariantStoresResponse.struct_class = Types::ListVariantStoresResponse

    ListWorkflowVersionsRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location: "uri", location_name: "workflowId"))
    ListWorkflowVersionsRequest.add_member(:type, Shapes::ShapeRef.new(shape: WorkflowType, location: "querystring", location_name: "type"))
    ListWorkflowVersionsRequest.add_member(:workflow_owner_id, Shapes::ShapeRef.new(shape: WorkflowOwnerId, location: "querystring", location_name: "workflowOwnerId"))
    ListWorkflowVersionsRequest.add_member(:starting_token, Shapes::ShapeRef.new(shape: WorkflowVersionListToken, location: "querystring", location_name: "startingToken"))
    ListWorkflowVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListWorkflowVersionsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListWorkflowVersionsRequest.struct_class = Types::ListWorkflowVersionsRequest

    ListWorkflowVersionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: WorkflowVersionList, location_name: "items"))
    ListWorkflowVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: WorkflowVersionListToken, location_name: "nextToken"))
    ListWorkflowVersionsResponse.struct_class = Types::ListWorkflowVersionsResponse

    ListWorkflowsRequest.add_member(:type, Shapes::ShapeRef.new(shape: WorkflowType, location: "querystring", location_name: "type"))
    ListWorkflowsRequest.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowName, location: "querystring", location_name: "name"))
    ListWorkflowsRequest.add_member(:starting_token, Shapes::ShapeRef.new(shape: WorkflowListToken, location: "querystring", location_name: "startingToken"))
    ListWorkflowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListWorkflowsRequestMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListWorkflowsRequest.struct_class = Types::ListWorkflowsRequest

    ListWorkflowsResponse.add_member(:items, Shapes::ShapeRef.new(shape: WorkflowList, location_name: "items"))
    ListWorkflowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: WorkflowListToken, location_name: "nextToken"))
    ListWorkflowsResponse.struct_class = Types::ListWorkflowsResponse

    MultipartReadSetUploadList.member = Shapes::ShapeRef.new(shape: MultipartReadSetUploadListItem)

    MultipartReadSetUploadListItem.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "sequenceStoreId"))
    MultipartReadSetUploadListItem.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, required: true, location_name: "uploadId"))
    MultipartReadSetUploadListItem.add_member(:source_file_type, Shapes::ShapeRef.new(shape: FileType, required: true, location_name: "sourceFileType"))
    MultipartReadSetUploadListItem.add_member(:subject_id, Shapes::ShapeRef.new(shape: SubjectId, required: true, location_name: "subjectId"))
    MultipartReadSetUploadListItem.add_member(:sample_id, Shapes::ShapeRef.new(shape: SampleId, required: true, location_name: "sampleId"))
    MultipartReadSetUploadListItem.add_member(:generated_from, Shapes::ShapeRef.new(shape: GeneratedFrom, required: true, location_name: "generatedFrom"))
    MultipartReadSetUploadListItem.add_member(:reference_arn, Shapes::ShapeRef.new(shape: ReferenceArn, required: true, location_name: "referenceArn"))
    MultipartReadSetUploadListItem.add_member(:name, Shapes::ShapeRef.new(shape: ReadSetName, location_name: "name"))
    MultipartReadSetUploadListItem.add_member(:description, Shapes::ShapeRef.new(shape: ReadSetDescription, location_name: "description"))
    MultipartReadSetUploadListItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    MultipartReadSetUploadListItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    MultipartReadSetUploadListItem.struct_class = Types::MultipartReadSetUploadListItem

    NotSupportedOperationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    NotSupportedOperationException.struct_class = Types::NotSupportedOperationException

    PropagatedSetLevelTags.member = Shapes::ShapeRef.new(shape: TagKey)

    PutS3AccessPolicyRequest.add_member(:s3_access_point_arn, Shapes::ShapeRef.new(shape: S3AccessPointArn, required: true, location: "uri", location_name: "s3AccessPointArn"))
    PutS3AccessPolicyRequest.add_member(:s3_access_policy, Shapes::ShapeRef.new(shape: S3AccessPolicy, required: true, location_name: "s3AccessPolicy", metadata: {"jsonvalue" => true}))
    PutS3AccessPolicyRequest.struct_class = Types::PutS3AccessPolicyRequest

    PutS3AccessPolicyResponse.add_member(:s3_access_point_arn, Shapes::ShapeRef.new(shape: S3AccessPointArn, location_name: "s3AccessPointArn"))
    PutS3AccessPolicyResponse.add_member(:store_id, Shapes::ShapeRef.new(shape: StoreId, location_name: "storeId"))
    PutS3AccessPolicyResponse.add_member(:store_type, Shapes::ShapeRef.new(shape: StoreType, location_name: "storeType"))
    PutS3AccessPolicyResponse.struct_class = Types::PutS3AccessPolicyResponse

    RangeNotSatisfiableException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    RangeNotSatisfiableException.struct_class = Types::RangeNotSatisfiableException

    ReadOptions.add_member(:sep, Shapes::ShapeRef.new(shape: Separator, location_name: "sep"))
    ReadOptions.add_member(:encoding, Shapes::ShapeRef.new(shape: Encoding, location_name: "encoding"))
    ReadOptions.add_member(:quote, Shapes::ShapeRef.new(shape: Quote, location_name: "quote"))
    ReadOptions.add_member(:quote_all, Shapes::ShapeRef.new(shape: QuoteAll, location_name: "quoteAll"))
    ReadOptions.add_member(:escape, Shapes::ShapeRef.new(shape: EscapeChar, location_name: "escape"))
    ReadOptions.add_member(:escape_quotes, Shapes::ShapeRef.new(shape: EscapeQuotes, location_name: "escapeQuotes"))
    ReadOptions.add_member(:comment, Shapes::ShapeRef.new(shape: CommentChar, location_name: "comment"))
    ReadOptions.add_member(:header, Shapes::ShapeRef.new(shape: Header, location_name: "header"))
    ReadOptions.add_member(:line_sep, Shapes::ShapeRef.new(shape: LineSep, location_name: "lineSep"))
    ReadOptions.struct_class = Types::ReadOptions

    ReadSetBatchError.add_member(:id, Shapes::ShapeRef.new(shape: ReadSetId, required: true, location_name: "id"))
    ReadSetBatchError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    ReadSetBatchError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ReadSetBatchError.struct_class = Types::ReadSetBatchError

    ReadSetBatchErrorList.member = Shapes::ShapeRef.new(shape: ReadSetBatchError)

    ReadSetFiles.add_member(:source1, Shapes::ShapeRef.new(shape: FileInformation, location_name: "source1"))
    ReadSetFiles.add_member(:source2, Shapes::ShapeRef.new(shape: FileInformation, location_name: "source2"))
    ReadSetFiles.add_member(:index, Shapes::ShapeRef.new(shape: FileInformation, location_name: "index"))
    ReadSetFiles.struct_class = Types::ReadSetFiles

    ReadSetFilter.add_member(:name, Shapes::ShapeRef.new(shape: ReadSetName, location_name: "name"))
    ReadSetFilter.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetStatus, location_name: "status"))
    ReadSetFilter.add_member(:reference_arn, Shapes::ShapeRef.new(shape: ReferenceArnFilter, location_name: "referenceArn"))
    ReadSetFilter.add_member(:created_after, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAfter"))
    ReadSetFilter.add_member(:created_before, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdBefore"))
    ReadSetFilter.add_member(:sample_id, Shapes::ShapeRef.new(shape: SampleId, location_name: "sampleId"))
    ReadSetFilter.add_member(:subject_id, Shapes::ShapeRef.new(shape: SubjectId, location_name: "subjectId"))
    ReadSetFilter.add_member(:generated_from, Shapes::ShapeRef.new(shape: GeneratedFrom, location_name: "generatedFrom"))
    ReadSetFilter.add_member(:creation_type, Shapes::ShapeRef.new(shape: CreationType, location_name: "creationType"))
    ReadSetFilter.struct_class = Types::ReadSetFilter

    ReadSetIdList.member = Shapes::ShapeRef.new(shape: ReadSetId)

    ReadSetList.member = Shapes::ShapeRef.new(shape: ReadSetListItem)

    ReadSetListItem.add_member(:id, Shapes::ShapeRef.new(shape: ReadSetId, required: true, location_name: "id"))
    ReadSetListItem.add_member(:arn, Shapes::ShapeRef.new(shape: ReadSetArn, required: true, location_name: "arn"))
    ReadSetListItem.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "sequenceStoreId"))
    ReadSetListItem.add_member(:subject_id, Shapes::ShapeRef.new(shape: SubjectId, location_name: "subjectId"))
    ReadSetListItem.add_member(:sample_id, Shapes::ShapeRef.new(shape: SampleId, location_name: "sampleId"))
    ReadSetListItem.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetStatus, required: true, location_name: "status"))
    ReadSetListItem.add_member(:name, Shapes::ShapeRef.new(shape: ReadSetName, location_name: "name"))
    ReadSetListItem.add_member(:description, Shapes::ShapeRef.new(shape: ReadSetDescription, location_name: "description"))
    ReadSetListItem.add_member(:reference_arn, Shapes::ShapeRef.new(shape: ReferenceArn, location_name: "referenceArn"))
    ReadSetListItem.add_member(:file_type, Shapes::ShapeRef.new(shape: FileType, required: true, location_name: "fileType"))
    ReadSetListItem.add_member(:sequence_information, Shapes::ShapeRef.new(shape: SequenceInformation, location_name: "sequenceInformation"))
    ReadSetListItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    ReadSetListItem.add_member(:status_message, Shapes::ShapeRef.new(shape: ReadSetStatusMessage, location_name: "statusMessage"))
    ReadSetListItem.add_member(:creation_type, Shapes::ShapeRef.new(shape: CreationType, location_name: "creationType"))
    ReadSetListItem.add_member(:etag, Shapes::ShapeRef.new(shape: ETag, location_name: "etag"))
    ReadSetListItem.struct_class = Types::ReadSetListItem

    ReadSetS3Access.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "s3Uri"))
    ReadSetS3Access.struct_class = Types::ReadSetS3Access

    ReadSetUploadPartList.member = Shapes::ShapeRef.new(shape: ReadSetUploadPartListItem)

    ReadSetUploadPartListFilter.add_member(:created_after, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAfter"))
    ReadSetUploadPartListFilter.add_member(:created_before, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdBefore"))
    ReadSetUploadPartListFilter.struct_class = Types::ReadSetUploadPartListFilter

    ReadSetUploadPartListItem.add_member(:part_number, Shapes::ShapeRef.new(shape: ReadSetUploadPartListItemPartNumberInteger, required: true, location_name: "partNumber"))
    ReadSetUploadPartListItem.add_member(:part_size, Shapes::ShapeRef.new(shape: ReadSetUploadPartListItemPartSizeLong, required: true, location_name: "partSize"))
    ReadSetUploadPartListItem.add_member(:part_source, Shapes::ShapeRef.new(shape: ReadSetPartSource, required: true, location_name: "partSource"))
    ReadSetUploadPartListItem.add_member(:checksum, Shapes::ShapeRef.new(shape: String, required: true, location_name: "checksum"))
    ReadSetUploadPartListItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "creationTime"))
    ReadSetUploadPartListItem.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastUpdatedTime"))
    ReadSetUploadPartListItem.struct_class = Types::ReadSetUploadPartListItem

    ReferenceFiles.add_member(:source, Shapes::ShapeRef.new(shape: FileInformation, location_name: "source"))
    ReferenceFiles.add_member(:index, Shapes::ShapeRef.new(shape: FileInformation, location_name: "index"))
    ReferenceFiles.struct_class = Types::ReferenceFiles

    ReferenceFilter.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceName, location_name: "name"))
    ReferenceFilter.add_member(:md5, Shapes::ShapeRef.new(shape: Md5, location_name: "md5"))
    ReferenceFilter.add_member(:created_after, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAfter"))
    ReferenceFilter.add_member(:created_before, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdBefore"))
    ReferenceFilter.struct_class = Types::ReferenceFilter

    ReferenceItem.add_member(:reference_arn, Shapes::ShapeRef.new(shape: ReferenceArn, location_name: "referenceArn"))
    ReferenceItem.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ReferenceItem.add_member_subclass(:reference_arn, Types::ReferenceItem::ReferenceArn)
    ReferenceItem.add_member_subclass(:unknown, Types::ReferenceItem::Unknown)
    ReferenceItem.struct_class = Types::ReferenceItem

    ReferenceList.member = Shapes::ShapeRef.new(shape: ReferenceListItem)

    ReferenceListItem.add_member(:id, Shapes::ShapeRef.new(shape: ReferenceId, required: true, location_name: "id"))
    ReferenceListItem.add_member(:arn, Shapes::ShapeRef.new(shape: ReferenceArn, required: true, location_name: "arn"))
    ReferenceListItem.add_member(:reference_store_id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location_name: "referenceStoreId"))
    ReferenceListItem.add_member(:md5, Shapes::ShapeRef.new(shape: Md5, required: true, location_name: "md5"))
    ReferenceListItem.add_member(:status, Shapes::ShapeRef.new(shape: ReferenceStatus, location_name: "status"))
    ReferenceListItem.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceName, location_name: "name"))
    ReferenceListItem.add_member(:description, Shapes::ShapeRef.new(shape: ReferenceDescription, location_name: "description"))
    ReferenceListItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    ReferenceListItem.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updateTime"))
    ReferenceListItem.struct_class = Types::ReferenceListItem

    ReferenceStoreDetail.add_member(:arn, Shapes::ShapeRef.new(shape: ReferenceStoreArn, required: true, location_name: "arn"))
    ReferenceStoreDetail.add_member(:id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location_name: "id"))
    ReferenceStoreDetail.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceStoreName, location_name: "name"))
    ReferenceStoreDetail.add_member(:description, Shapes::ShapeRef.new(shape: ReferenceStoreDescription, location_name: "description"))
    ReferenceStoreDetail.add_member(:sse_config, Shapes::ShapeRef.new(shape: SseConfig, location_name: "sseConfig"))
    ReferenceStoreDetail.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    ReferenceStoreDetail.struct_class = Types::ReferenceStoreDetail

    ReferenceStoreDetailList.member = Shapes::ShapeRef.new(shape: ReferenceStoreDetail)

    ReferenceStoreFilter.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceStoreName, location_name: "name"))
    ReferenceStoreFilter.add_member(:created_after, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAfter"))
    ReferenceStoreFilter.add_member(:created_before, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdBefore"))
    ReferenceStoreFilter.struct_class = Types::ReferenceStoreFilter

    RequestTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    RequestTimeoutException.struct_class = Types::RequestTimeoutException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RunCacheList.member = Shapes::ShapeRef.new(shape: RunCacheListItem)

    RunCacheListItem.add_member(:arn, Shapes::ShapeRef.new(shape: RunCacheArn, location_name: "arn"))
    RunCacheListItem.add_member(:cache_behavior, Shapes::ShapeRef.new(shape: CacheBehavior, location_name: "cacheBehavior"))
    RunCacheListItem.add_member(:cache_s3_uri, Shapes::ShapeRef.new(shape: S3UriForBucketOrObject, location_name: "cacheS3Uri"))
    RunCacheListItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: RunCacheTimestamp, location_name: "creationTime"))
    RunCacheListItem.add_member(:id, Shapes::ShapeRef.new(shape: RunCacheId, location_name: "id"))
    RunCacheListItem.add_member(:name, Shapes::ShapeRef.new(shape: UserCustomName, location_name: "name"))
    RunCacheListItem.add_member(:status, Shapes::ShapeRef.new(shape: RunCacheStatus, location_name: "status"))
    RunCacheListItem.struct_class = Types::RunCacheListItem

    RunExportList.member = Shapes::ShapeRef.new(shape: RunExport)

    RunGroupList.member = Shapes::ShapeRef.new(shape: RunGroupListItem)

    RunGroupListItem.add_member(:arn, Shapes::ShapeRef.new(shape: RunGroupArn, location_name: "arn"))
    RunGroupListItem.add_member(:id, Shapes::ShapeRef.new(shape: RunGroupId, location_name: "id"))
    RunGroupListItem.add_member(:name, Shapes::ShapeRef.new(shape: RunGroupName, location_name: "name"))
    RunGroupListItem.add_member(:max_cpus, Shapes::ShapeRef.new(shape: RunGroupListItemMaxCpusInteger, location_name: "maxCpus"))
    RunGroupListItem.add_member(:max_runs, Shapes::ShapeRef.new(shape: RunGroupListItemMaxRunsInteger, location_name: "maxRuns"))
    RunGroupListItem.add_member(:max_duration, Shapes::ShapeRef.new(shape: RunGroupListItemMaxDurationInteger, location_name: "maxDuration"))
    RunGroupListItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: RunGroupTimestamp, location_name: "creationTime"))
    RunGroupListItem.add_member(:max_gpus, Shapes::ShapeRef.new(shape: RunGroupListItemMaxGpusInteger, location_name: "maxGpus"))
    RunGroupListItem.struct_class = Types::RunGroupListItem

    RunList.member = Shapes::ShapeRef.new(shape: RunListItem)

    RunListItem.add_member(:arn, Shapes::ShapeRef.new(shape: RunArn, location_name: "arn"))
    RunListItem.add_member(:id, Shapes::ShapeRef.new(shape: RunId, location_name: "id"))
    RunListItem.add_member(:status, Shapes::ShapeRef.new(shape: RunStatus, location_name: "status"))
    RunListItem.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, location_name: "workflowId"))
    RunListItem.add_member(:name, Shapes::ShapeRef.new(shape: RunName, location_name: "name"))
    RunListItem.add_member(:priority, Shapes::ShapeRef.new(shape: RunListItemPriorityInteger, location_name: "priority"))
    RunListItem.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: RunListItemStorageCapacityInteger, location_name: "storageCapacity"))
    RunListItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: RunTimestamp, location_name: "creationTime"))
    RunListItem.add_member(:start_time, Shapes::ShapeRef.new(shape: RunTimestamp, location_name: "startTime"))
    RunListItem.add_member(:stop_time, Shapes::ShapeRef.new(shape: RunTimestamp, location_name: "stopTime"))
    RunListItem.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, location_name: "storageType"))
    RunListItem.add_member(:workflow_version_name, Shapes::ShapeRef.new(shape: WorkflowVersionName, location_name: "workflowVersionName"))
    RunListItem.struct_class = Types::RunListItem

    RunLogLocation.add_member(:engine_log_stream, Shapes::ShapeRef.new(shape: EngineLogStream, location_name: "engineLogStream"))
    RunLogLocation.add_member(:run_log_stream, Shapes::ShapeRef.new(shape: RunLogStream, location_name: "runLogStream"))
    RunLogLocation.struct_class = Types::RunLogLocation

    RunResourceDigests.key = Shapes::ShapeRef.new(shape: RunResourceDigestKey)
    RunResourceDigests.value = Shapes::ShapeRef.new(shape: RunResourceDigest)

    S3AccessConfig.add_member(:access_log_location, Shapes::ShapeRef.new(shape: AccessLogLocation, location_name: "accessLogLocation"))
    S3AccessConfig.struct_class = Types::S3AccessConfig

    SchemaItem.key = Shapes::ShapeRef.new(shape: SchemaItemKeyString)
    SchemaItem.value = Shapes::ShapeRef.new(shape: SchemaValueType)

    SequenceInformation.add_member(:total_read_count, Shapes::ShapeRef.new(shape: Long, location_name: "totalReadCount"))
    SequenceInformation.add_member(:total_base_count, Shapes::ShapeRef.new(shape: Long, location_name: "totalBaseCount"))
    SequenceInformation.add_member(:generated_from, Shapes::ShapeRef.new(shape: GeneratedFrom, location_name: "generatedFrom"))
    SequenceInformation.add_member(:alignment, Shapes::ShapeRef.new(shape: String, location_name: "alignment"))
    SequenceInformation.struct_class = Types::SequenceInformation

    SequenceStoreDetail.add_member(:arn, Shapes::ShapeRef.new(shape: SequenceStoreArn, required: true, location_name: "arn"))
    SequenceStoreDetail.add_member(:id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "id"))
    SequenceStoreDetail.add_member(:name, Shapes::ShapeRef.new(shape: SequenceStoreName, location_name: "name"))
    SequenceStoreDetail.add_member(:description, Shapes::ShapeRef.new(shape: SequenceStoreDescription, location_name: "description"))
    SequenceStoreDetail.add_member(:sse_config, Shapes::ShapeRef.new(shape: SseConfig, location_name: "sseConfig"))
    SequenceStoreDetail.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    SequenceStoreDetail.add_member(:fallback_location, Shapes::ShapeRef.new(shape: FallbackLocation, location_name: "fallbackLocation"))
    SequenceStoreDetail.add_member(:e_tag_algorithm_family, Shapes::ShapeRef.new(shape: ETagAlgorithmFamily, location_name: "eTagAlgorithmFamily"))
    SequenceStoreDetail.add_member(:status, Shapes::ShapeRef.new(shape: SequenceStoreStatus, location_name: "status"))
    SequenceStoreDetail.add_member(:status_message, Shapes::ShapeRef.new(shape: SequenceStoreStatusMessage, location_name: "statusMessage"))
    SequenceStoreDetail.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updateTime"))
    SequenceStoreDetail.struct_class = Types::SequenceStoreDetail

    SequenceStoreDetailList.member = Shapes::ShapeRef.new(shape: SequenceStoreDetail)

    SequenceStoreFilter.add_member(:name, Shapes::ShapeRef.new(shape: SequenceStoreName, location_name: "name"))
    SequenceStoreFilter.add_member(:created_after, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAfter"))
    SequenceStoreFilter.add_member(:created_before, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdBefore"))
    SequenceStoreFilter.add_member(:status, Shapes::ShapeRef.new(shape: SequenceStoreStatus, location_name: "status"))
    SequenceStoreFilter.add_member(:updated_after, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAfter"))
    SequenceStoreFilter.add_member(:updated_before, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedBefore"))
    SequenceStoreFilter.struct_class = Types::SequenceStoreFilter

    SequenceStoreS3Access.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "s3Uri"))
    SequenceStoreS3Access.add_member(:s3_access_point_arn, Shapes::ShapeRef.new(shape: S3AccessPointArn, location_name: "s3AccessPointArn"))
    SequenceStoreS3Access.add_member(:access_log_location, Shapes::ShapeRef.new(shape: AccessLogLocation, location_name: "accessLogLocation"))
    SequenceStoreS3Access.struct_class = Types::SequenceStoreS3Access

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ShareDetails.add_member(:share_id, Shapes::ShapeRef.new(shape: String, location_name: "shareId"))
    ShareDetails.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "resourceArn"))
    ShareDetails.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ShareDetails.add_member(:principal_subscriber, Shapes::ShapeRef.new(shape: String, location_name: "principalSubscriber"))
    ShareDetails.add_member(:owner_id, Shapes::ShapeRef.new(shape: String, location_name: "ownerId"))
    ShareDetails.add_member(:status, Shapes::ShapeRef.new(shape: ShareStatus, location_name: "status"))
    ShareDetails.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    ShareDetails.add_member(:share_name, Shapes::ShapeRef.new(shape: ShareName, location_name: "shareName"))
    ShareDetails.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, location_name: "creationTime"))
    ShareDetails.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, location_name: "updateTime"))
    ShareDetails.struct_class = Types::ShareDetails

    ShareDetailsList.member = Shapes::ShapeRef.new(shape: ShareDetails)

    SourceFiles.add_member(:source1, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "source1"))
    SourceFiles.add_member(:source2, Shapes::ShapeRef.new(shape: S3Uri, location_name: "source2"))
    SourceFiles.struct_class = Types::SourceFiles

    SourceReference.add_member(:type, Shapes::ShapeRef.new(shape: SourceReferenceType, required: true, location_name: "type"))
    SourceReference.add_member(:value, Shapes::ShapeRef.new(shape: SourceReferenceValue, required: true, location_name: "value"))
    SourceReference.struct_class = Types::SourceReference

    SseConfig.add_member(:type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "type"))
    SseConfig.add_member(:key_arn, Shapes::ShapeRef.new(shape: SseConfigKeyArnString, location_name: "keyArn"))
    SseConfig.struct_class = Types::SseConfig

    StartAnnotationImportRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: StoreName, required: true, location_name: "destinationName"))
    StartAnnotationImportRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    StartAnnotationImportRequest.add_member(:items, Shapes::ShapeRef.new(shape: AnnotationImportItemSources, required: true, location_name: "items"))
    StartAnnotationImportRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: VersionName, location_name: "versionName"))
    StartAnnotationImportRequest.add_member(:format_options, Shapes::ShapeRef.new(shape: FormatOptions, location_name: "formatOptions"))
    StartAnnotationImportRequest.add_member(:run_left_normalization, Shapes::ShapeRef.new(shape: RunLeftNormalization, location_name: "runLeftNormalization"))
    StartAnnotationImportRequest.add_member(:annotation_fields, Shapes::ShapeRef.new(shape: AnnotationFieldMap, location_name: "annotationFields"))
    StartAnnotationImportRequest.struct_class = Types::StartAnnotationImportRequest

    StartAnnotationImportResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "jobId"))
    StartAnnotationImportResponse.struct_class = Types::StartAnnotationImportResponse

    StartReadSetActivationJobRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    StartReadSetActivationJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    StartReadSetActivationJobRequest.add_member(:sources, Shapes::ShapeRef.new(shape: StartReadSetActivationJobRequestSourcesList, required: true, location_name: "sources"))
    StartReadSetActivationJobRequest.struct_class = Types::StartReadSetActivationJobRequest

    StartReadSetActivationJobRequestSourcesList.member = Shapes::ShapeRef.new(shape: StartReadSetActivationJobSourceItem)

    StartReadSetActivationJobResponse.add_member(:id, Shapes::ShapeRef.new(shape: ActivationJobId, required: true, location_name: "id"))
    StartReadSetActivationJobResponse.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "sequenceStoreId"))
    StartReadSetActivationJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetActivationJobStatus, required: true, location_name: "status"))
    StartReadSetActivationJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    StartReadSetActivationJobResponse.struct_class = Types::StartReadSetActivationJobResponse

    StartReadSetActivationJobSourceItem.add_member(:read_set_id, Shapes::ShapeRef.new(shape: ReadSetId, required: true, location_name: "readSetId"))
    StartReadSetActivationJobSourceItem.struct_class = Types::StartReadSetActivationJobSourceItem

    StartReadSetExportJobRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    StartReadSetExportJobRequest.add_member(:destination, Shapes::ShapeRef.new(shape: S3Destination, required: true, location_name: "destination"))
    StartReadSetExportJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    StartReadSetExportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    StartReadSetExportJobRequest.add_member(:sources, Shapes::ShapeRef.new(shape: StartReadSetExportJobRequestSourcesList, required: true, location_name: "sources"))
    StartReadSetExportJobRequest.struct_class = Types::StartReadSetExportJobRequest

    StartReadSetExportJobRequestSourcesList.member = Shapes::ShapeRef.new(shape: ExportReadSet)

    StartReadSetExportJobResponse.add_member(:id, Shapes::ShapeRef.new(shape: ExportJobId, required: true, location_name: "id"))
    StartReadSetExportJobResponse.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "sequenceStoreId"))
    StartReadSetExportJobResponse.add_member(:destination, Shapes::ShapeRef.new(shape: S3Destination, required: true, location_name: "destination"))
    StartReadSetExportJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetExportJobStatus, required: true, location_name: "status"))
    StartReadSetExportJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    StartReadSetExportJobResponse.struct_class = Types::StartReadSetExportJobResponse

    StartReadSetImportJobRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    StartReadSetImportJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    StartReadSetImportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    StartReadSetImportJobRequest.add_member(:sources, Shapes::ShapeRef.new(shape: StartReadSetImportJobRequestSourcesList, required: true, location_name: "sources"))
    StartReadSetImportJobRequest.struct_class = Types::StartReadSetImportJobRequest

    StartReadSetImportJobRequestSourcesList.member = Shapes::ShapeRef.new(shape: StartReadSetImportJobSourceItem)

    StartReadSetImportJobResponse.add_member(:id, Shapes::ShapeRef.new(shape: ImportJobId, required: true, location_name: "id"))
    StartReadSetImportJobResponse.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "sequenceStoreId"))
    StartReadSetImportJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    StartReadSetImportJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReadSetImportJobStatus, required: true, location_name: "status"))
    StartReadSetImportJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    StartReadSetImportJobResponse.struct_class = Types::StartReadSetImportJobResponse

    StartReadSetImportJobSourceItem.add_member(:source_files, Shapes::ShapeRef.new(shape: SourceFiles, required: true, location_name: "sourceFiles"))
    StartReadSetImportJobSourceItem.add_member(:source_file_type, Shapes::ShapeRef.new(shape: FileType, required: true, location_name: "sourceFileType"))
    StartReadSetImportJobSourceItem.add_member(:subject_id, Shapes::ShapeRef.new(shape: SubjectId, required: true, location_name: "subjectId"))
    StartReadSetImportJobSourceItem.add_member(:sample_id, Shapes::ShapeRef.new(shape: SampleId, required: true, location_name: "sampleId"))
    StartReadSetImportJobSourceItem.add_member(:generated_from, Shapes::ShapeRef.new(shape: GeneratedFrom, location_name: "generatedFrom"))
    StartReadSetImportJobSourceItem.add_member(:reference_arn, Shapes::ShapeRef.new(shape: ReferenceArn, location_name: "referenceArn"))
    StartReadSetImportJobSourceItem.add_member(:name, Shapes::ShapeRef.new(shape: ReadSetName, location_name: "name"))
    StartReadSetImportJobSourceItem.add_member(:description, Shapes::ShapeRef.new(shape: ReadSetDescription, location_name: "description"))
    StartReadSetImportJobSourceItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartReadSetImportJobSourceItem.struct_class = Types::StartReadSetImportJobSourceItem

    StartReferenceImportJobRequest.add_member(:reference_store_id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location: "uri", location_name: "referenceStoreId"))
    StartReferenceImportJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    StartReferenceImportJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    StartReferenceImportJobRequest.add_member(:sources, Shapes::ShapeRef.new(shape: StartReferenceImportJobRequestSourcesList, required: true, location_name: "sources"))
    StartReferenceImportJobRequest.struct_class = Types::StartReferenceImportJobRequest

    StartReferenceImportJobRequestSourcesList.member = Shapes::ShapeRef.new(shape: StartReferenceImportJobSourceItem)

    StartReferenceImportJobResponse.add_member(:id, Shapes::ShapeRef.new(shape: ImportJobId, required: true, location_name: "id"))
    StartReferenceImportJobResponse.add_member(:reference_store_id, Shapes::ShapeRef.new(shape: ReferenceStoreId, required: true, location_name: "referenceStoreId"))
    StartReferenceImportJobResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    StartReferenceImportJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ReferenceImportJobStatus, required: true, location_name: "status"))
    StartReferenceImportJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    StartReferenceImportJobResponse.struct_class = Types::StartReferenceImportJobResponse

    StartReferenceImportJobSourceItem.add_member(:source_file, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "sourceFile"))
    StartReferenceImportJobSourceItem.add_member(:name, Shapes::ShapeRef.new(shape: ReferenceName, required: true, location_name: "name"))
    StartReferenceImportJobSourceItem.add_member(:description, Shapes::ShapeRef.new(shape: ReferenceDescription, location_name: "description"))
    StartReferenceImportJobSourceItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartReferenceImportJobSourceItem.struct_class = Types::StartReferenceImportJobSourceItem

    StartRunRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, location_name: "workflowId"))
    StartRunRequest.add_member(:workflow_type, Shapes::ShapeRef.new(shape: WorkflowType, location_name: "workflowType"))
    StartRunRequest.add_member(:run_id, Shapes::ShapeRef.new(shape: RunId, location_name: "runId"))
    StartRunRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RunRoleArn, required: true, location_name: "roleArn"))
    StartRunRequest.add_member(:name, Shapes::ShapeRef.new(shape: RunName, location_name: "name"))
    StartRunRequest.add_member(:cache_id, Shapes::ShapeRef.new(shape: NumericIdInArn, location_name: "cacheId"))
    StartRunRequest.add_member(:cache_behavior, Shapes::ShapeRef.new(shape: CacheBehavior, location_name: "cacheBehavior"))
    StartRunRequest.add_member(:run_group_id, Shapes::ShapeRef.new(shape: RunGroupId, location_name: "runGroupId"))
    StartRunRequest.add_member(:priority, Shapes::ShapeRef.new(shape: StartRunRequestPriorityInteger, location_name: "priority"))
    StartRunRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: RunParameters, location_name: "parameters"))
    StartRunRequest.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: StartRunRequestStorageCapacityInteger, location_name: "storageCapacity"))
    StartRunRequest.add_member(:output_uri, Shapes::ShapeRef.new(shape: RunOutputUri, location_name: "outputUri"))
    StartRunRequest.add_member(:log_level, Shapes::ShapeRef.new(shape: RunLogLevel, location_name: "logLevel"))
    StartRunRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartRunRequest.add_member(:request_id, Shapes::ShapeRef.new(shape: RunRequestId, required: true, location_name: "requestId", metadata: {"idempotencyToken" => true}))
    StartRunRequest.add_member(:retention_mode, Shapes::ShapeRef.new(shape: RunRetentionMode, location_name: "retentionMode"))
    StartRunRequest.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, location_name: "storageType"))
    StartRunRequest.add_member(:workflow_owner_id, Shapes::ShapeRef.new(shape: WorkflowOwnerId, location_name: "workflowOwnerId"))
    StartRunRequest.add_member(:workflow_version_name, Shapes::ShapeRef.new(shape: WorkflowVersionName, location_name: "workflowVersionName"))
    StartRunRequest.struct_class = Types::StartRunRequest

    StartRunResponse.add_member(:arn, Shapes::ShapeRef.new(shape: RunArn, location_name: "arn"))
    StartRunResponse.add_member(:id, Shapes::ShapeRef.new(shape: RunId, location_name: "id"))
    StartRunResponse.add_member(:status, Shapes::ShapeRef.new(shape: RunStatus, location_name: "status"))
    StartRunResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartRunResponse.add_member(:uuid, Shapes::ShapeRef.new(shape: RunUuid, location_name: "uuid"))
    StartRunResponse.add_member(:run_output_uri, Shapes::ShapeRef.new(shape: RunOutputUri, location_name: "runOutputUri"))
    StartRunResponse.struct_class = Types::StartRunResponse

    StartVariantImportRequest.add_member(:destination_name, Shapes::ShapeRef.new(shape: StoreName, required: true, location_name: "destinationName"))
    StartVariantImportRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    StartVariantImportRequest.add_member(:items, Shapes::ShapeRef.new(shape: VariantImportItemSources, required: true, location_name: "items"))
    StartVariantImportRequest.add_member(:run_left_normalization, Shapes::ShapeRef.new(shape: RunLeftNormalization, location_name: "runLeftNormalization"))
    StartVariantImportRequest.add_member(:annotation_fields, Shapes::ShapeRef.new(shape: AnnotationFieldMap, location_name: "annotationFields"))
    StartVariantImportRequest.struct_class = Types::StartVariantImportRequest

    StartVariantImportResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "jobId"))
    StartVariantImportResponse.struct_class = Types::StartVariantImportResponse

    StatusList.member = Shapes::ShapeRef.new(shape: ShareStatus)

    StoreOptions.add_member(:tsv_store_options, Shapes::ShapeRef.new(shape: TsvStoreOptions, location_name: "tsvStoreOptions"))
    StoreOptions.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    StoreOptions.add_member_subclass(:tsv_store_options, Types::StoreOptions::TsvStoreOptions)
    StoreOptions.add_member_subclass(:unknown, Types::StoreOptions::Unknown)
    StoreOptions.struct_class = Types::StoreOptions

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagResourceRequestTagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceRequestTagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequestTagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TaskList.member = Shapes::ShapeRef.new(shape: TaskListItem)

    TaskListItem.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskId, location_name: "taskId"))
    TaskListItem.add_member(:status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "status"))
    TaskListItem.add_member(:name, Shapes::ShapeRef.new(shape: TaskName, location_name: "name"))
    TaskListItem.add_member(:cpus, Shapes::ShapeRef.new(shape: TaskListItemCpusInteger, location_name: "cpus"))
    TaskListItem.add_member(:cache_hit, Shapes::ShapeRef.new(shape: Boolean, location_name: "cacheHit"))
    TaskListItem.add_member(:cache_s3_uri, Shapes::ShapeRef.new(shape: S3UriForBucketOrObject, location_name: "cacheS3Uri"))
    TaskListItem.add_member(:memory, Shapes::ShapeRef.new(shape: TaskListItemMemoryInteger, location_name: "memory"))
    TaskListItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: TaskTimestamp, location_name: "creationTime"))
    TaskListItem.add_member(:start_time, Shapes::ShapeRef.new(shape: TaskTimestamp, location_name: "startTime"))
    TaskListItem.add_member(:stop_time, Shapes::ShapeRef.new(shape: TaskTimestamp, location_name: "stopTime"))
    TaskListItem.add_member(:gpus, Shapes::ShapeRef.new(shape: TaskListItemGpusInteger, location_name: "gpus"))
    TaskListItem.add_member(:instance_type, Shapes::ShapeRef.new(shape: TaskInstanceType, location_name: "instanceType"))
    TaskListItem.struct_class = Types::TaskListItem

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TsvOptions.add_member(:read_options, Shapes::ShapeRef.new(shape: ReadOptions, location_name: "readOptions"))
    TsvOptions.struct_class = Types::TsvOptions

    TsvStoreOptions.add_member(:annotation_type, Shapes::ShapeRef.new(shape: AnnotationType, location_name: "annotationType"))
    TsvStoreOptions.add_member(:format_to_header, Shapes::ShapeRef.new(shape: FormatToHeader, location_name: "formatToHeader"))
    TsvStoreOptions.add_member(:schema, Shapes::ShapeRef.new(shape: TsvStoreOptionsSchemaList, location_name: "schema"))
    TsvStoreOptions.struct_class = Types::TsvStoreOptions

    TsvStoreOptionsSchemaList.member = Shapes::ShapeRef.new(shape: SchemaItem)

    TsvVersionOptions.add_member(:annotation_type, Shapes::ShapeRef.new(shape: AnnotationType, location_name: "annotationType"))
    TsvVersionOptions.add_member(:format_to_header, Shapes::ShapeRef.new(shape: FormatToHeader, location_name: "formatToHeader"))
    TsvVersionOptions.add_member(:schema, Shapes::ShapeRef.new(shape: TsvVersionOptionsSchemaList, location_name: "schema"))
    TsvVersionOptions.struct_class = Types::TsvVersionOptions

    TsvVersionOptionsSchemaList.member = Shapes::ShapeRef.new(shape: SchemaItem)

    TypeList.member = Shapes::ShapeRef.new(shape: ShareResourceType)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAnnotationStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    UpdateAnnotationStoreRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateAnnotationStoreRequest.struct_class = Types::UpdateAnnotationStoreRequest

    UpdateAnnotationStoreResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    UpdateAnnotationStoreResponse.add_member(:reference, Shapes::ShapeRef.new(shape: ReferenceItem, required: true, location_name: "reference"))
    UpdateAnnotationStoreResponse.add_member(:status, Shapes::ShapeRef.new(shape: StoreStatus, required: true, location_name: "status"))
    UpdateAnnotationStoreResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    UpdateAnnotationStoreResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    UpdateAnnotationStoreResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    UpdateAnnotationStoreResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    UpdateAnnotationStoreResponse.add_member(:store_options, Shapes::ShapeRef.new(shape: StoreOptions, location_name: "storeOptions"))
    UpdateAnnotationStoreResponse.add_member(:store_format, Shapes::ShapeRef.new(shape: StoreFormat, location_name: "storeFormat"))
    UpdateAnnotationStoreResponse.struct_class = Types::UpdateAnnotationStoreResponse

    UpdateAnnotationStoreVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    UpdateAnnotationStoreVersionRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "versionName"))
    UpdateAnnotationStoreVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateAnnotationStoreVersionRequest.struct_class = Types::UpdateAnnotationStoreVersionRequest

    UpdateAnnotationStoreVersionResponse.add_member(:store_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "storeId"))
    UpdateAnnotationStoreVersionResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    UpdateAnnotationStoreVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: VersionStatus, required: true, location_name: "status"))
    UpdateAnnotationStoreVersionResponse.add_member(:name, Shapes::ShapeRef.new(shape: StoreName, required: true, location_name: "name"))
    UpdateAnnotationStoreVersionResponse.add_member(:version_name, Shapes::ShapeRef.new(shape: VersionName, required: true, location_name: "versionName"))
    UpdateAnnotationStoreVersionResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    UpdateAnnotationStoreVersionResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    UpdateAnnotationStoreVersionResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    UpdateAnnotationStoreVersionResponse.struct_class = Types::UpdateAnnotationStoreVersionResponse

    UpdateRunCacheRequest.add_member(:cache_behavior, Shapes::ShapeRef.new(shape: CacheBehavior, location_name: "cacheBehavior"))
    UpdateRunCacheRequest.add_member(:description, Shapes::ShapeRef.new(shape: UserCustomDescription, location_name: "description"))
    UpdateRunCacheRequest.add_member(:id, Shapes::ShapeRef.new(shape: RunCacheId, required: true, location: "uri", location_name: "id"))
    UpdateRunCacheRequest.add_member(:name, Shapes::ShapeRef.new(shape: UserCustomName, location_name: "name"))
    UpdateRunCacheRequest.struct_class = Types::UpdateRunCacheRequest

    UpdateRunGroupRequest.add_member(:id, Shapes::ShapeRef.new(shape: RunGroupId, required: true, location: "uri", location_name: "id"))
    UpdateRunGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: RunGroupName, location_name: "name"))
    UpdateRunGroupRequest.add_member(:max_cpus, Shapes::ShapeRef.new(shape: UpdateRunGroupRequestMaxCpusInteger, location_name: "maxCpus"))
    UpdateRunGroupRequest.add_member(:max_runs, Shapes::ShapeRef.new(shape: UpdateRunGroupRequestMaxRunsInteger, location_name: "maxRuns"))
    UpdateRunGroupRequest.add_member(:max_duration, Shapes::ShapeRef.new(shape: UpdateRunGroupRequestMaxDurationInteger, location_name: "maxDuration"))
    UpdateRunGroupRequest.add_member(:max_gpus, Shapes::ShapeRef.new(shape: UpdateRunGroupRequestMaxGpusInteger, location_name: "maxGpus"))
    UpdateRunGroupRequest.struct_class = Types::UpdateRunGroupRequest

    UpdateSequenceStoreRequest.add_member(:id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "id"))
    UpdateSequenceStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: SequenceStoreName, location_name: "name"))
    UpdateSequenceStoreRequest.add_member(:description, Shapes::ShapeRef.new(shape: SequenceStoreDescription, location_name: "description"))
    UpdateSequenceStoreRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateSequenceStoreRequest.add_member(:fallback_location, Shapes::ShapeRef.new(shape: FallbackLocation, location_name: "fallbackLocation"))
    UpdateSequenceStoreRequest.add_member(:propagated_set_level_tags, Shapes::ShapeRef.new(shape: PropagatedSetLevelTags, location_name: "propagatedSetLevelTags"))
    UpdateSequenceStoreRequest.add_member(:s3_access_config, Shapes::ShapeRef.new(shape: S3AccessConfig, location_name: "s3AccessConfig"))
    UpdateSequenceStoreRequest.struct_class = Types::UpdateSequenceStoreRequest

    UpdateSequenceStoreResponse.add_member(:id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location_name: "id"))
    UpdateSequenceStoreResponse.add_member(:arn, Shapes::ShapeRef.new(shape: SequenceStoreArn, required: true, location_name: "arn"))
    UpdateSequenceStoreResponse.add_member(:name, Shapes::ShapeRef.new(shape: SequenceStoreName, location_name: "name"))
    UpdateSequenceStoreResponse.add_member(:description, Shapes::ShapeRef.new(shape: SequenceStoreDescription, location_name: "description"))
    UpdateSequenceStoreResponse.add_member(:sse_config, Shapes::ShapeRef.new(shape: SseConfig, location_name: "sseConfig"))
    UpdateSequenceStoreResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "creationTime"))
    UpdateSequenceStoreResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updateTime"))
    UpdateSequenceStoreResponse.add_member(:propagated_set_level_tags, Shapes::ShapeRef.new(shape: PropagatedSetLevelTags, location_name: "propagatedSetLevelTags"))
    UpdateSequenceStoreResponse.add_member(:status, Shapes::ShapeRef.new(shape: SequenceStoreStatus, location_name: "status"))
    UpdateSequenceStoreResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: SequenceStoreStatusMessage, location_name: "statusMessage"))
    UpdateSequenceStoreResponse.add_member(:fallback_location, Shapes::ShapeRef.new(shape: FallbackLocation, location_name: "fallbackLocation"))
    UpdateSequenceStoreResponse.add_member(:s3_access, Shapes::ShapeRef.new(shape: SequenceStoreS3Access, location_name: "s3Access"))
    UpdateSequenceStoreResponse.add_member(:e_tag_algorithm_family, Shapes::ShapeRef.new(shape: ETagAlgorithmFamily, location_name: "eTagAlgorithmFamily"))
    UpdateSequenceStoreResponse.struct_class = Types::UpdateSequenceStoreResponse

    UpdateVariantStoreRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    UpdateVariantStoreRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateVariantStoreRequest.struct_class = Types::UpdateVariantStoreRequest

    UpdateVariantStoreResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    UpdateVariantStoreResponse.add_member(:reference, Shapes::ShapeRef.new(shape: ReferenceItem, required: true, location_name: "reference"))
    UpdateVariantStoreResponse.add_member(:status, Shapes::ShapeRef.new(shape: StoreStatus, required: true, location_name: "status"))
    UpdateVariantStoreResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    UpdateVariantStoreResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    UpdateVariantStoreResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    UpdateVariantStoreResponse.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    UpdateVariantStoreResponse.struct_class = Types::UpdateVariantStoreResponse

    UpdateWorkflowRequest.add_member(:id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location: "uri", location_name: "id"))
    UpdateWorkflowRequest.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowName, location_name: "name"))
    UpdateWorkflowRequest.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowDescription, location_name: "description"))
    UpdateWorkflowRequest.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, location_name: "storageType"))
    UpdateWorkflowRequest.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: UpdateWorkflowRequestStorageCapacityInteger, location_name: "storageCapacity"))
    UpdateWorkflowRequest.add_member(:readme_markdown, Shapes::ShapeRef.new(shape: ReadmeMarkdown, location_name: "readmeMarkdown"))
    UpdateWorkflowRequest.struct_class = Types::UpdateWorkflowRequest

    UpdateWorkflowVersionRequest.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, required: true, location: "uri", location_name: "workflowId"))
    UpdateWorkflowVersionRequest.add_member(:version_name, Shapes::ShapeRef.new(shape: WorkflowVersionName, required: true, location: "uri", location_name: "versionName"))
    UpdateWorkflowVersionRequest.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowVersionDescription, location_name: "description"))
    UpdateWorkflowVersionRequest.add_member(:storage_type, Shapes::ShapeRef.new(shape: StorageType, location_name: "storageType"))
    UpdateWorkflowVersionRequest.add_member(:storage_capacity, Shapes::ShapeRef.new(shape: UpdateWorkflowVersionRequestStorageCapacityInteger, location_name: "storageCapacity"))
    UpdateWorkflowVersionRequest.add_member(:readme_markdown, Shapes::ShapeRef.new(shape: ReadmeMarkdown, location_name: "readmeMarkdown"))
    UpdateWorkflowVersionRequest.struct_class = Types::UpdateWorkflowVersionRequest

    UploadReadSetPartRequest.add_member(:sequence_store_id, Shapes::ShapeRef.new(shape: SequenceStoreId, required: true, location: "uri", location_name: "sequenceStoreId"))
    UploadReadSetPartRequest.add_member(:upload_id, Shapes::ShapeRef.new(shape: UploadId, required: true, location: "uri", location_name: "uploadId"))
    UploadReadSetPartRequest.add_member(:part_source, Shapes::ShapeRef.new(shape: ReadSetPartSource, required: true, location: "querystring", location_name: "partSource"))
    UploadReadSetPartRequest.add_member(:part_number, Shapes::ShapeRef.new(shape: UploadReadSetPartRequestPartNumberInteger, required: true, location: "querystring", location_name: "partNumber"))
    UploadReadSetPartRequest.add_member(:payload, Shapes::ShapeRef.new(shape: ReadSetPartStreamingBlob, required: true, location_name: "payload"))
    UploadReadSetPartRequest.struct_class = Types::UploadReadSetPartRequest
    UploadReadSetPartRequest[:payload] = :payload
    UploadReadSetPartRequest[:payload_member] = UploadReadSetPartRequest.member(:payload)

    UploadReadSetPartResponse.add_member(:checksum, Shapes::ShapeRef.new(shape: String, required: true, location_name: "checksum"))
    UploadReadSetPartResponse.struct_class = Types::UploadReadSetPartResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    VariantImportItemDetail.add_member(:source, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "source"))
    VariantImportItemDetail.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "jobStatus"))
    VariantImportItemDetail.add_member(:status_message, Shapes::ShapeRef.new(shape: JobStatusMsg, location_name: "statusMessage"))
    VariantImportItemDetail.struct_class = Types::VariantImportItemDetail

    VariantImportItemDetails.member = Shapes::ShapeRef.new(shape: VariantImportItemDetail)

    VariantImportItemSource.add_member(:source, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "source"))
    VariantImportItemSource.struct_class = Types::VariantImportItemSource

    VariantImportItemSources.member = Shapes::ShapeRef.new(shape: VariantImportItemSource)

    VariantImportJobItem.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    VariantImportJobItem.add_member(:destination_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "destinationName"))
    VariantImportJobItem.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    VariantImportJobItem.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "status"))
    VariantImportJobItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    VariantImportJobItem.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    VariantImportJobItem.add_member(:completion_time, Shapes::ShapeRef.new(shape: CompletionTime, location_name: "completionTime"))
    VariantImportJobItem.add_member(:run_left_normalization, Shapes::ShapeRef.new(shape: RunLeftNormalization, location_name: "runLeftNormalization"))
    VariantImportJobItem.add_member(:annotation_fields, Shapes::ShapeRef.new(shape: AnnotationFieldMap, location_name: "annotationFields"))
    VariantImportJobItem.struct_class = Types::VariantImportJobItem

    VariantImportJobItems.member = Shapes::ShapeRef.new(shape: VariantImportJobItem)

    VariantStoreItem.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "id"))
    VariantStoreItem.add_member(:reference, Shapes::ShapeRef.new(shape: ReferenceItem, required: true, location_name: "reference"))
    VariantStoreItem.add_member(:status, Shapes::ShapeRef.new(shape: StoreStatus, required: true, location_name: "status"))
    VariantStoreItem.add_member(:store_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "storeArn"))
    VariantStoreItem.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    VariantStoreItem.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    VariantStoreItem.add_member(:sse_config, Shapes::ShapeRef.new(shape: SseConfig, required: true, location_name: "sseConfig"))
    VariantStoreItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: CreationTime, required: true, location_name: "creationTime"))
    VariantStoreItem.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    VariantStoreItem.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, required: true, location_name: "statusMessage"))
    VariantStoreItem.add_member(:store_size_bytes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "storeSizeBytes"))
    VariantStoreItem.struct_class = Types::VariantStoreItem

    VariantStoreItems.member = Shapes::ShapeRef.new(shape: VariantStoreItem)

    VcfOptions.add_member(:ignore_qual_field, Shapes::ShapeRef.new(shape: Boolean, location_name: "ignoreQualField"))
    VcfOptions.add_member(:ignore_filter_field, Shapes::ShapeRef.new(shape: Boolean, location_name: "ignoreFilterField"))
    VcfOptions.struct_class = Types::VcfOptions

    VersionDeleteError.add_member(:version_name, Shapes::ShapeRef.new(shape: VersionName, required: true, location_name: "versionName"))
    VersionDeleteError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    VersionDeleteError.struct_class = Types::VersionDeleteError

    VersionDeleteErrorList.member = Shapes::ShapeRef.new(shape: VersionDeleteError)

    VersionList.member = Shapes::ShapeRef.new(shape: VersionName)

    VersionOptions.add_member(:tsv_version_options, Shapes::ShapeRef.new(shape: TsvVersionOptions, location_name: "tsvVersionOptions"))
    VersionOptions.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    VersionOptions.add_member_subclass(:tsv_version_options, Types::VersionOptions::TsvVersionOptions)
    VersionOptions.add_member_subclass(:unknown, Types::VersionOptions::Unknown)
    VersionOptions.struct_class = Types::VersionOptions

    WorkflowExportList.member = Shapes::ShapeRef.new(shape: WorkflowExport)

    WorkflowList.member = Shapes::ShapeRef.new(shape: WorkflowListItem)

    WorkflowListItem.add_member(:arn, Shapes::ShapeRef.new(shape: WorkflowArn, location_name: "arn"))
    WorkflowListItem.add_member(:id, Shapes::ShapeRef.new(shape: WorkflowId, location_name: "id"))
    WorkflowListItem.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowName, location_name: "name"))
    WorkflowListItem.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: "status"))
    WorkflowListItem.add_member(:type, Shapes::ShapeRef.new(shape: WorkflowType, location_name: "type"))
    WorkflowListItem.add_member(:digest, Shapes::ShapeRef.new(shape: WorkflowDigest, location_name: "digest"))
    WorkflowListItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: WorkflowTimestamp, location_name: "creationTime"))
    WorkflowListItem.add_member(:metadata, Shapes::ShapeRef.new(shape: WorkflowMetadata, location_name: "metadata"))
    WorkflowListItem.struct_class = Types::WorkflowListItem

    WorkflowMetadata.key = Shapes::ShapeRef.new(shape: WorkflowMetadataKey)
    WorkflowMetadata.value = Shapes::ShapeRef.new(shape: WorkflowMetadataValue)

    WorkflowParameter.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowParameterDescription, location_name: "description"))
    WorkflowParameter.add_member(:optional, Shapes::ShapeRef.new(shape: Boolean, location_name: "optional"))
    WorkflowParameter.struct_class = Types::WorkflowParameter

    WorkflowParameterTemplate.key = Shapes::ShapeRef.new(shape: WorkflowParameterName)
    WorkflowParameterTemplate.value = Shapes::ShapeRef.new(shape: WorkflowParameter)

    WorkflowVersionList.member = Shapes::ShapeRef.new(shape: WorkflowVersionListItem)

    WorkflowVersionListItem.add_member(:arn, Shapes::ShapeRef.new(shape: WorkflowVersionArn, location_name: "arn"))
    WorkflowVersionListItem.add_member(:workflow_id, Shapes::ShapeRef.new(shape: WorkflowId, location_name: "workflowId"))
    WorkflowVersionListItem.add_member(:version_name, Shapes::ShapeRef.new(shape: WorkflowVersionName, location_name: "versionName"))
    WorkflowVersionListItem.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowVersionDescription, location_name: "description"))
    WorkflowVersionListItem.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: "status"))
    WorkflowVersionListItem.add_member(:type, Shapes::ShapeRef.new(shape: WorkflowType, location_name: "type"))
    WorkflowVersionListItem.add_member(:digest, Shapes::ShapeRef.new(shape: WorkflowDigest, location_name: "digest"))
    WorkflowVersionListItem.add_member(:creation_time, Shapes::ShapeRef.new(shape: WorkflowTimestamp, location_name: "creationTime"))
    WorkflowVersionListItem.add_member(:metadata, Shapes::ShapeRef.new(shape: WorkflowMetadata, location_name: "metadata"))
    WorkflowVersionListItem.struct_class = Types::WorkflowVersionListItem


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-11-28"

      api.metadata = {
        "apiVersion" => "2022-11-28",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "omics",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Amazon Omics",
        "serviceId" => "Omics",
        "signatureVersion" => "v4",
        "signingName" => "omics",
        "uid" => "omics-2022-11-28",
      }

      api.add_operation(:abort_multipart_read_set_upload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AbortMultipartReadSetUpload"
        o.http_method = "DELETE"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/upload/{uploadId}/abort"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: AbortMultipartReadSetUploadRequest)
        o.output = Shapes::ShapeRef.new(shape: AbortMultipartReadSetUploadResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:accept_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptShare"
        o.http_method = "POST"
        o.http_request_uri = "/share/{shareId}"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: AcceptShareRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptShareResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:batch_delete_read_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteReadSet"
        o.http_method = "POST"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/readset/batch/delete"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteReadSetRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteReadSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:cancel_annotation_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelAnnotationImportJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/import/annotation/{jobId}"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: CancelAnnotationImportRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelAnnotationImportResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:cancel_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelRun"
        o.http_method = "POST"
        o.http_request_uri = "/run/{id}/cancel"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: CancelRunRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:cancel_variant_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelVariantImportJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/import/variant/{jobId}"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: CancelVariantImportRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelVariantImportResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:complete_multipart_read_set_upload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CompleteMultipartReadSetUpload"
        o.http_method = "POST"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/upload/{uploadId}/complete"
        o.endpoint_pattern = {
          "hostPrefix" => "storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: CompleteMultipartReadSetUploadRequest)
        o.output = Shapes::ShapeRef.new(shape: CompleteMultipartReadSetUploadResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:create_annotation_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAnnotationStore"
        o.http_method = "POST"
        o.http_request_uri = "/annotationStore"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateAnnotationStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAnnotationStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_annotation_store_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAnnotationStoreVersion"
        o.http_method = "POST"
        o.http_request_uri = "/annotationStore/{name}/version"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateAnnotationStoreVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAnnotationStoreVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_multipart_read_set_upload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMultipartReadSetUpload"
        o.http_method = "POST"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/upload"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateMultipartReadSetUploadRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMultipartReadSetUploadResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:create_reference_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReferenceStore"
        o.http_method = "POST"
        o.http_request_uri = "/referencestore"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateReferenceStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateReferenceStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:create_run_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRunCache"
        o.http_method = "POST"
        o.http_request_uri = "/runCache"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateRunCacheRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRunCacheResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:create_run_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRunGroup"
        o.http_method = "POST"
        o.http_request_uri = "/runGroup"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateRunGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRunGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:create_sequence_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSequenceStore"
        o.http_method = "POST"
        o.http_request_uri = "/sequencestore"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateSequenceStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSequenceStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:create_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateShare"
        o.http_method = "POST"
        o.http_request_uri = "/share"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateShareRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateShareResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_variant_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVariantStore"
        o.http_method = "POST"
        o.http_request_uri = "/variantStore"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateVariantStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVariantStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/workflow"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:create_workflow_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkflowVersion"
        o.http_method = "POST"
        o.http_request_uri = "/workflow/{workflowId}/version"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: CreateWorkflowVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkflowVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:delete_annotation_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAnnotationStore"
        o.http_method = "DELETE"
        o.http_request_uri = "/annotationStore/{name}"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAnnotationStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAnnotationStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_annotation_store_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAnnotationStoreVersions"
        o.http_method = "POST"
        o.http_request_uri = "/annotationStore/{name}/versions/delete"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAnnotationStoreVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAnnotationStoreVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_reference, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReference"
        o.http_method = "DELETE"
        o.http_request_uri = "/referencestore/{referenceStoreId}/reference/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteReferenceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteReferenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:delete_reference_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReferenceStore"
        o.http_method = "DELETE"
        o.http_request_uri = "/referencestore/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteReferenceStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteReferenceStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:delete_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRun"
        o.http_method = "DELETE"
        o.http_request_uri = "/run/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteRunRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:delete_run_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRunCache"
        o.http_method = "DELETE"
        o.http_request_uri = "/runCache/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteRunCacheRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:delete_run_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRunGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/runGroup/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteRunGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:delete_s3_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteS3AccessPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/s3accesspolicy/{s3AccessPointArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteS3AccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteS3AccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:delete_sequence_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSequenceStore"
        o.http_method = "DELETE"
        o.http_request_uri = "/sequencestore/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteSequenceStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSequenceStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:delete_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteShare"
        o.http_method = "DELETE"
        o.http_request_uri = "/share/{shareId}"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteShareRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteShareResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_variant_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVariantStore"
        o.http_method = "DELETE"
        o.http_request_uri = "/variantStore/{name}"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteVariantStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVariantStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkflow"
        o.http_method = "DELETE"
        o.http_request_uri = "/workflow/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:delete_workflow_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkflowVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/workflow/{workflowId}/version/{versionName}"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkflowVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_annotation_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAnnotationImportJob"
        o.http_method = "GET"
        o.http_request_uri = "/import/annotation/{jobId}"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetAnnotationImportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAnnotationImportResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_annotation_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAnnotationStore"
        o.http_method = "GET"
        o.http_request_uri = "/annotationStore/{name}"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetAnnotationStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAnnotationStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_annotation_store_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAnnotationStoreVersion"
        o.http_method = "GET"
        o.http_request_uri = "/annotationStore/{name}/version/{versionName}"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetAnnotationStoreVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAnnotationStoreVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_read_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReadSet"
        o.http_method = "GET"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/readset/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetReadSetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReadSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: RangeNotSatisfiableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_read_set_activation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReadSetActivationJob"
        o.http_method = "GET"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/activationjob/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetReadSetActivationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReadSetActivationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_read_set_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReadSetExportJob"
        o.http_method = "GET"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/exportjob/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetReadSetExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReadSetExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_read_set_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReadSetImportJob"
        o.http_method = "GET"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/importjob/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetReadSetImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReadSetImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_read_set_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReadSetMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/readset/{id}/metadata"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetReadSetMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReadSetMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_reference, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReference"
        o.http_method = "GET"
        o.http_request_uri = "/referencestore/{referenceStoreId}/reference/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetReferenceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReferenceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: RangeNotSatisfiableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_reference_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReferenceImportJob"
        o.http_method = "GET"
        o.http_request_uri = "/referencestore/{referenceStoreId}/importjob/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetReferenceImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReferenceImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_reference_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReferenceMetadata"
        o.http_method = "GET"
        o.http_request_uri = "/referencestore/{referenceStoreId}/reference/{id}/metadata"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetReferenceMetadataRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReferenceMetadataResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_reference_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReferenceStore"
        o.http_method = "GET"
        o.http_request_uri = "/referencestore/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetReferenceStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReferenceStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRun"
        o.http_method = "GET"
        o.http_request_uri = "/run/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetRunRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_run_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRunCache"
        o.http_method = "GET"
        o.http_request_uri = "/runCache/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetRunCacheRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRunCacheResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_run_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRunGroup"
        o.http_method = "GET"
        o.http_request_uri = "/runGroup/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetRunGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRunGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_run_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRunTask"
        o.http_method = "GET"
        o.http_request_uri = "/run/{id}/task/{taskId}"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetRunTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRunTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_s3_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetS3AccessPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/s3accesspolicy/{s3AccessPointArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetS3AccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetS3AccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_sequence_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSequenceStore"
        o.http_method = "GET"
        o.http_request_uri = "/sequencestore/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetSequenceStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSequenceStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetShare"
        o.http_method = "GET"
        o.http_request_uri = "/share/{shareId}"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetShareRequest)
        o.output = Shapes::ShapeRef.new(shape: GetShareResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_variant_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVariantImportJob"
        o.http_method = "GET"
        o.http_request_uri = "/import/variant/{jobId}"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetVariantImportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVariantImportResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_variant_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetVariantStore"
        o.http_method = "GET"
        o.http_request_uri = "/variantStore/{name}"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetVariantStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: GetVariantStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflow"
        o.http_method = "GET"
        o.http_request_uri = "/workflow/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:get_workflow_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflowVersion"
        o.http_method = "GET"
        o.http_request_uri = "/workflow/{workflowId}/version/{versionName}"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:list_annotation_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnnotationImportJobs"
        o.http_method = "POST"
        o.http_request_uri = "/import/annotations"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAnnotationImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAnnotationImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_annotation_store_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnnotationStoreVersions"
        o.http_method = "POST"
        o.http_request_uri = "/annotationStore/{name}/versions"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAnnotationStoreVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAnnotationStoreVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_annotation_stores, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnnotationStores"
        o.http_method = "POST"
        o.http_request_uri = "/annotationStores"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListAnnotationStoresRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAnnotationStoresResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_multipart_read_set_uploads, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMultipartReadSetUploads"
        o.http_method = "POST"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/uploads"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListMultipartReadSetUploadsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMultipartReadSetUploadsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_read_set_activation_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReadSetActivationJobs"
        o.http_method = "POST"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/activationjobs"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListReadSetActivationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReadSetActivationJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_read_set_export_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReadSetExportJobs"
        o.http_method = "POST"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/exportjobs"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListReadSetExportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReadSetExportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_read_set_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReadSetImportJobs"
        o.http_method = "POST"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/importjobs"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListReadSetImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReadSetImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_read_set_upload_parts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReadSetUploadParts"
        o.http_method = "POST"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/upload/{uploadId}/parts"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListReadSetUploadPartsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReadSetUploadPartsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_read_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReadSets"
        o.http_method = "POST"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/readsets"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListReadSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReadSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_reference_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReferenceImportJobs"
        o.http_method = "POST"
        o.http_request_uri = "/referencestore/{referenceStoreId}/importjobs"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListReferenceImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReferenceImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_reference_stores, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReferenceStores"
        o.http_method = "POST"
        o.http_request_uri = "/referencestores"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListReferenceStoresRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReferenceStoresResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_references, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListReferences"
        o.http_method = "POST"
        o.http_request_uri = "/referencestore/{referenceStoreId}/references"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListReferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListReferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_run_caches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRunCaches"
        o.http_method = "GET"
        o.http_request_uri = "/runCache"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListRunCachesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRunCachesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "starting_token"
          }
        )
      end)

      api.add_operation(:list_run_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRunGroups"
        o.http_method = "GET"
        o.http_request_uri = "/runGroup"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListRunGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRunGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "starting_token"
          }
        )
      end)

      api.add_operation(:list_run_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRunTasks"
        o.http_method = "GET"
        o.http_request_uri = "/run/{id}/task"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListRunTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRunTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "starting_token"
          }
        )
      end)

      api.add_operation(:list_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRuns"
        o.http_method = "GET"
        o.http_request_uri = "/run"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "starting_token"
          }
        )
      end)

      api.add_operation(:list_sequence_stores, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSequenceStores"
        o.http_method = "POST"
        o.http_request_uri = "/sequencestores"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListSequenceStoresRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSequenceStoresResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_shares, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListShares"
        o.http_method = "POST"
        o.http_request_uri = "/shares"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListSharesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSharesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "tags-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:list_variant_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVariantImportJobs"
        o.http_method = "POST"
        o.http_request_uri = "/import/variants"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListVariantImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVariantImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_variant_stores, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVariantStores"
        o.http_method = "POST"
        o.http_request_uri = "/variantStores"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListVariantStoresRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVariantStoresResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workflow_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflowVersions"
        o.http_method = "GET"
        o.http_request_uri = "/workflow/{workflowId}/version"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkflowVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "starting_token"
          }
        )
      end)

      api.add_operation(:list_workflows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflows"
        o.http_method = "GET"
        o.http_request_uri = "/workflow"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkflowsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "starting_token"
          }
        )
      end)

      api.add_operation(:put_s3_access_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutS3AccessPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/s3accesspolicy/{s3AccessPointArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: PutS3AccessPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutS3AccessPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:start_annotation_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAnnotationImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/import/annotation"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: StartAnnotationImportRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAnnotationImportResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_read_set_activation_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartReadSetActivationJob"
        o.http_method = "POST"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/activationjob"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: StartReadSetActivationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartReadSetActivationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:start_read_set_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartReadSetExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/exportjob"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: StartReadSetExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartReadSetExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:start_read_set_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartReadSetImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/importjob"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: StartReadSetImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartReadSetImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:start_reference_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartReferenceImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/referencestore/{referenceStoreId}/importjob"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: StartReferenceImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartReferenceImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:start_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartRun"
        o.http_method = "POST"
        o.http_request_uri = "/run"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: StartRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:start_variant_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartVariantImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/import/variant"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: StartVariantImportRequest)
        o.output = Shapes::ShapeRef.new(shape: StartVariantImportResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "tags-",
        }
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.endpoint_pattern = {
          "hostPrefix" => "tags-",
        }
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:update_annotation_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAnnotationStore"
        o.http_method = "POST"
        o.http_request_uri = "/annotationStore/{name}"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateAnnotationStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAnnotationStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_annotation_store_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAnnotationStoreVersion"
        o.http_method = "POST"
        o.http_request_uri = "/annotationStore/{name}/version/{versionName}"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateAnnotationStoreVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAnnotationStoreVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_run_cache, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRunCache"
        o.http_method = "POST"
        o.http_request_uri = "/runCache/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateRunCacheRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:update_run_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRunGroup"
        o.http_method = "POST"
        o.http_request_uri = "/runGroup/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateRunGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:update_sequence_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSequenceStore"
        o.http_method = "PATCH"
        o.http_request_uri = "/sequencestore/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "control-storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateSequenceStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSequenceStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:update_variant_store, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVariantStore"
        o.http_method = "POST"
        o.http_request_uri = "/variantStore/{name}"
        o.endpoint_pattern = {
          "hostPrefix" => "analytics-",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateVariantStoreRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVariantStoreResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkflow"
        o.http_method = "POST"
        o.http_request_uri = "/workflow/{id}"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:update_workflow_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkflowVersion"
        o.http_method = "POST"
        o.http_request_uri = "/workflow/{workflowId}/version/{versionName}"
        o.endpoint_pattern = {
          "hostPrefix" => "workflows-",
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkflowVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)

      api.add_operation(:upload_read_set_part, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UploadReadSetPart"
        o.http_method = "PUT"
        o.http_request_uri = "/sequencestore/{sequenceStoreId}/upload/{uploadId}/part"
        o['authtype'] = "v4-unsigned-body"
        o['unsignedPayload'] = true
        o.endpoint_pattern = {
          "hostPrefix" => "storage-",
        }
        o.input = Shapes::ShapeRef.new(shape: UploadReadSetPartRequest)
        o.output = Shapes::ShapeRef.new(shape: UploadReadSetPartResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
      end)
    end

  end
end
