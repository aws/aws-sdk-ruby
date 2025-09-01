# frozen_string_literal: true

# This is generated code!

module Aws::Omics
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AbortMultipartReadSetUploadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#AbortMultipartReadSetUploadRequest', name: 'AbortMultipartReadSetUploadRequest')
    AbortMultipartReadSetUploadResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#AbortMultipartReadSetUploadResponse', name: 'AbortMultipartReadSetUploadResponse')
    Accelerators = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#Accelerators', name: 'Accelerators', traits: {"smithy.api#enum" => [{"name" => "GPU", "value" => "GPU"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    AcceptShareRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#AcceptShareRequest', name: 'AcceptShareRequest')
    AcceptShareResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#AcceptShareResponse', name: 'AcceptShareResponse')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessLogLocation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#AccessLogLocation', name: 'AccessLogLocation', traits: {"smithy.api#pattern" => "^$|^s3://([a-z0-9][a-z0-9-.]{1,61}[a-z0-9])/?((.{1,800})/)?$"})
    ActivateReadSetFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ActivateReadSetFilter', name: 'ActivateReadSetFilter')
    ActivateReadSetJobItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ActivateReadSetJobItem', name: 'ActivateReadSetJobItem')
    ActivateReadSetJobList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ActivateReadSetJobList', name: 'ActivateReadSetJobList')
    ActivateReadSetSourceItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ActivateReadSetSourceItem', name: 'ActivateReadSetSourceItem')
    ActivateReadSetSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ActivateReadSetSourceList', name: 'ActivateReadSetSourceList')
    ActivationJobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ActivationJobId', name: 'ActivationJobId', traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    AnnotationFieldMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.omics#AnnotationFieldMap', name: 'AnnotationFieldMap')
    AnnotationImportItemDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#AnnotationImportItemDetail', name: 'AnnotationImportItemDetail')
    AnnotationImportItemDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#AnnotationImportItemDetails', name: 'AnnotationImportItemDetails', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AnnotationImportItemSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#AnnotationImportItemSource', name: 'AnnotationImportItemSource')
    AnnotationImportItemSources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#AnnotationImportItemSources', name: 'AnnotationImportItemSources', traits: {"smithy.api#length" => {"min" => 1}})
    AnnotationImportJobItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#AnnotationImportJobItem', name: 'AnnotationImportJobItem')
    AnnotationImportJobItems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#AnnotationImportJobItems', name: 'AnnotationImportJobItems')
    AnnotationStoreItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#AnnotationStoreItem', name: 'AnnotationStoreItem')
    AnnotationStoreItems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#AnnotationStoreItems', name: 'AnnotationStoreItems')
    AnnotationStoreVersionItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#AnnotationStoreVersionItem', name: 'AnnotationStoreVersionItem')
    AnnotationStoreVersionItems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#AnnotationStoreVersionItems', name: 'AnnotationStoreVersionItems')
    AnnotationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#AnnotationType', name: 'AnnotationType', traits: {"smithy.api#enum" => [{"value" => "GENERIC", "name" => "GENERIC", "documentation" => "Generic text file. No genomic information"}, {"value" => "CHR_POS", "name" => "CHR_POS", "documentation" => "Contains contig and 1-base position"}, {"value" => "CHR_POS_REF_ALT", "name" => "CHR_POS_REF_ALT", "documentation" => "Contains contig, 1-base position, ref and alt allele information"}, {"value" => "CHR_START_END_ONE_BASE", "name" => "CHR_START_END_ONE_BASE", "documentation" => "Contains contig, start, and end positions. Coordinates are 1-based"}, {"value" => "CHR_START_END_REF_ALT_ONE_BASE", "name" => "CHR_START_END_REF_ALT_ONE_BASE", "documentation" => "Contains contig, start, end, ref and alt allele information. Coordinates are 1-based"}, {"value" => "CHR_START_END_ZERO_BASE", "name" => "CHR_START_END_ZERO_BASE", "documentation" => "Contains contig, start, and end positions. Coordinates are 0-based"}, {"value" => "CHR_START_END_REF_ALT_ZERO_BASE", "name" => "CHR_START_END_REF_ALT_ZERO_BASE", "documentation" => "Contains contig, start, end, ref and alt allele information. Coordinates are 0-based"}]})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:([^:\n]*):([^:\n]*):([^:\n]*):([0-9]{12}):([^:\n]*)$"})
    ArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ArnList', name: 'ArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    AwsAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    BatchDeleteReadSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#BatchDeleteReadSetRequest', name: 'BatchDeleteReadSetRequest')
    BatchDeleteReadSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#BatchDeleteReadSetResponse', name: 'BatchDeleteReadSetResponse')
    CacheBehavior = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#CacheBehavior', name: 'CacheBehavior', traits: {"smithy.api#enum" => [{"name" => "CACHE_ON_FAILURE", "value" => "CACHE_ON_FAILURE"}, {"name" => "CACHE_ALWAYS", "value" => "CACHE_ALWAYS"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    CancelAnnotationImportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CancelAnnotationImportRequest', name: 'CancelAnnotationImportRequest')
    CancelAnnotationImportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CancelAnnotationImportResponse', name: 'CancelAnnotationImportResponse')
    CancelRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CancelRunRequest', name: 'CancelRunRequest')
    CancelVariantImportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CancelVariantImportRequest', name: 'CancelVariantImportRequest')
    CancelVariantImportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CancelVariantImportResponse', name: 'CancelVariantImportResponse')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    CommentChar = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#CommentChar', name: 'CommentChar', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CompleteMultipartReadSetUploadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CompleteMultipartReadSetUploadRequest', name: 'CompleteMultipartReadSetUploadRequest')
    CompleteMultipartReadSetUploadResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CompleteMultipartReadSetUploadResponse', name: 'CompleteMultipartReadSetUploadResponse')
    CompleteReadSetUploadPartList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#CompleteReadSetUploadPartList', name: 'CompleteReadSetUploadPartList')
    CompleteReadSetUploadPartListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CompleteReadSetUploadPartListItem', name: 'CompleteReadSetUploadPartListItem')
    CompletionTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.omics#CompletionTime', name: 'CompletionTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ConnectionArn', name: 'ConnectionArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+$"})
    CreateAnnotationStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateAnnotationStoreRequest', name: 'CreateAnnotationStoreRequest')
    CreateAnnotationStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateAnnotationStoreResponse', name: 'CreateAnnotationStoreResponse')
    CreateAnnotationStoreVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateAnnotationStoreVersionRequest', name: 'CreateAnnotationStoreVersionRequest')
    CreateAnnotationStoreVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateAnnotationStoreVersionResponse', name: 'CreateAnnotationStoreVersionResponse')
    CreateMultipartReadSetUploadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateMultipartReadSetUploadRequest', name: 'CreateMultipartReadSetUploadRequest')
    CreateMultipartReadSetUploadResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateMultipartReadSetUploadResponse', name: 'CreateMultipartReadSetUploadResponse')
    CreateReferenceStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateReferenceStoreRequest', name: 'CreateReferenceStoreRequest')
    CreateReferenceStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateReferenceStoreResponse', name: 'CreateReferenceStoreResponse')
    CreateRunCacheRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateRunCacheRequest', name: 'CreateRunCacheRequest')
    CreateRunCacheResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateRunCacheResponse', name: 'CreateRunCacheResponse')
    CreateRunGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateRunGroupRequest', name: 'CreateRunGroupRequest')
    CreateRunGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateRunGroupResponse', name: 'CreateRunGroupResponse')
    CreateSequenceStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateSequenceStoreRequest', name: 'CreateSequenceStoreRequest')
    CreateSequenceStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateSequenceStoreResponse', name: 'CreateSequenceStoreResponse')
    CreateShareRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateShareRequest', name: 'CreateShareRequest')
    CreateShareResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateShareResponse', name: 'CreateShareResponse')
    CreateVariantStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateVariantStoreRequest', name: 'CreateVariantStoreRequest')
    CreateVariantStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateVariantStoreResponse', name: 'CreateVariantStoreResponse')
    CreateWorkflowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateWorkflowRequest', name: 'CreateWorkflowRequest')
    CreateWorkflowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateWorkflowResponse', name: 'CreateWorkflowResponse')
    CreateWorkflowVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateWorkflowVersionRequest', name: 'CreateWorkflowVersionRequest')
    CreateWorkflowVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#CreateWorkflowVersionResponse', name: 'CreateWorkflowVersionResponse')
    CreationJobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#CreationJobId', name: 'CreationJobId', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    CreationTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.omics#CreationTime', name: 'CreationTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    CreationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#CreationType', name: 'CreationType', traits: {"smithy.api#enum" => [{"value" => "IMPORT", "name" => "IMPORT"}, {"value" => "UPLOAD", "name" => "UPLOAD"}]})
    DefinitionRepository = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DefinitionRepository', name: 'DefinitionRepository')
    DefinitionRepositoryDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DefinitionRepositoryDetails', name: 'DefinitionRepositoryDetails')
    DeleteAnnotationStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteAnnotationStoreRequest', name: 'DeleteAnnotationStoreRequest')
    DeleteAnnotationStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteAnnotationStoreResponse', name: 'DeleteAnnotationStoreResponse')
    DeleteAnnotationStoreVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteAnnotationStoreVersionsRequest', name: 'DeleteAnnotationStoreVersionsRequest')
    DeleteAnnotationStoreVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteAnnotationStoreVersionsResponse', name: 'DeleteAnnotationStoreVersionsResponse')
    DeleteReferenceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteReferenceRequest', name: 'DeleteReferenceRequest')
    DeleteReferenceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteReferenceResponse', name: 'DeleteReferenceResponse')
    DeleteReferenceStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteReferenceStoreRequest', name: 'DeleteReferenceStoreRequest')
    DeleteReferenceStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteReferenceStoreResponse', name: 'DeleteReferenceStoreResponse')
    DeleteRunCacheRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteRunCacheRequest', name: 'DeleteRunCacheRequest')
    DeleteRunGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteRunGroupRequest', name: 'DeleteRunGroupRequest')
    DeleteRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteRunRequest', name: 'DeleteRunRequest')
    DeleteS3AccessPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteS3AccessPolicyRequest', name: 'DeleteS3AccessPolicyRequest')
    DeleteS3AccessPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteS3AccessPolicyResponse', name: 'DeleteS3AccessPolicyResponse')
    DeleteSequenceStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteSequenceStoreRequest', name: 'DeleteSequenceStoreRequest')
    DeleteSequenceStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteSequenceStoreResponse', name: 'DeleteSequenceStoreResponse')
    DeleteShareRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteShareRequest', name: 'DeleteShareRequest')
    DeleteShareResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteShareResponse', name: 'DeleteShareResponse')
    DeleteVariantStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteVariantStoreRequest', name: 'DeleteVariantStoreRequest')
    DeleteVariantStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteVariantStoreResponse', name: 'DeleteVariantStoreResponse')
    DeleteWorkflowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteWorkflowRequest', name: 'DeleteWorkflowRequest')
    DeleteWorkflowVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#DeleteWorkflowVersionRequest', name: 'DeleteWorkflowVersionRequest')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    ETag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ETag', name: 'ETag')
    ETagAlgorithm = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ETagAlgorithm', name: 'ETagAlgorithm', traits: {"smithy.api#enum" => [{"value" => "FASTQ_MD5up", "name" => "FASTQ_MD5UP"}, {"value" => "BAM_MD5up", "name" => "BAM_MD5UP"}, {"value" => "CRAM_MD5up", "name" => "CRAM_MD5UP"}, {"value" => "FASTQ_SHA256up", "name" => "FASTQ_SHA256UP"}, {"value" => "BAM_SHA256up", "name" => "BAM_SHA256UP"}, {"value" => "CRAM_SHA256up", "name" => "CRAM_SHA256UP"}, {"value" => "FASTQ_SHA512up", "name" => "FASTQ_SHA512UP"}, {"value" => "BAM_SHA512up", "name" => "BAM_SHA512UP"}, {"value" => "CRAM_SHA512up", "name" => "CRAM_SHA512UP"}]})
    ETagAlgorithmFamily = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ETagAlgorithmFamily', name: 'ETagAlgorithmFamily', traits: {"smithy.api#enum" => [{"value" => "MD5up", "name" => "MD5UP"}, {"value" => "SHA256up", "name" => "SHA256UP"}, {"value" => "SHA512up", "name" => "SHA512UP"}]})
    Encoding = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#Encoding', name: 'Encoding', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    EncryptionType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#EncryptionType', name: 'EncryptionType', traits: {"smithy.api#enum" => [{"value" => "KMS", "name" => "KMS", "documentation" => "KMS"}]})
    EngineLogStream = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#EngineLogStream', name: 'EngineLogStream', traits: {"smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    EngineVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#EngineVersion', name: 'EngineVersion', traits: {"smithy.api#pattern" => "^[0-9]{2}.[0-9]{2}.[0-9]$"})
    EscapeChar = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#EscapeChar', name: 'EscapeChar', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    EscapeQuotes = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.omics#EscapeQuotes', name: 'EscapeQuotes', traits: {"smithy.api#default" => false})
    ExcludeFilePatternList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ExcludeFilePatternList', name: 'ExcludeFilePatternList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#uniqueItems" => {}})
    ExportJobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ExportJobId', name: 'ExportJobId', traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    ExportReadSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ExportReadSet', name: 'ExportReadSet')
    ExportReadSetDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ExportReadSetDetail', name: 'ExportReadSetDetail')
    ExportReadSetDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ExportReadSetDetailList', name: 'ExportReadSetDetailList')
    ExportReadSetFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ExportReadSetFilter', name: 'ExportReadSetFilter')
    ExportReadSetJobDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ExportReadSetJobDetail', name: 'ExportReadSetJobDetail')
    ExportReadSetJobDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ExportReadSetJobDetailList', name: 'ExportReadSetJobDetailList')
    ExportReadSetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ExportReadSetList', name: 'ExportReadSetList')
    FallbackLocation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#FallbackLocation', name: 'FallbackLocation', traits: {"smithy.api#pattern" => "^$|^s3://([a-z0-9][a-z0-9-.]{1,61}[a-z0-9])/?((.{1,1024})/)?$"})
    FileInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#FileInformation', name: 'FileInformation')
    FileType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#FileType', name: 'FileType', traits: {"smithy.api#enum" => [{"value" => "FASTQ", "name" => "FASTQ"}, {"value" => "BAM", "name" => "BAM"}, {"value" => "CRAM", "name" => "CRAM"}, {"value" => "UBAM", "name" => "UBAM"}]})
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#Filter', name: 'Filter')
    FormatOptions = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.omics#FormatOptions', name: 'FormatOptions')
    FormatToHeader = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.omics#FormatToHeader', name: 'FormatToHeader')
    FormatToHeaderKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#FormatToHeaderKey', name: 'FormatToHeaderKey', traits: {"smithy.api#enum" => [{"value" => "CHR", "name" => "CHR"}, {"value" => "START", "name" => "START"}, {"value" => "END", "name" => "END"}, {"value" => "REF", "name" => "REF"}, {"value" => "ALT", "name" => "ALT"}, {"value" => "POS", "name" => "POS"}]})
    FullRepositoryId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#FullRepositoryId', name: 'FullRepositoryId', traits: {"smithy.api#pattern" => "^.+/.+$"})
    GeneratedFrom = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#GeneratedFrom', name: 'GeneratedFrom', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    GetAnnotationImportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetAnnotationImportRequest', name: 'GetAnnotationImportRequest')
    GetAnnotationImportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetAnnotationImportResponse', name: 'GetAnnotationImportResponse')
    GetAnnotationStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetAnnotationStoreRequest', name: 'GetAnnotationStoreRequest')
    GetAnnotationStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetAnnotationStoreResponse', name: 'GetAnnotationStoreResponse')
    GetAnnotationStoreVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetAnnotationStoreVersionRequest', name: 'GetAnnotationStoreVersionRequest')
    GetAnnotationStoreVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetAnnotationStoreVersionResponse', name: 'GetAnnotationStoreVersionResponse')
    GetReadSetActivationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReadSetActivationJobRequest', name: 'GetReadSetActivationJobRequest')
    GetReadSetActivationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReadSetActivationJobResponse', name: 'GetReadSetActivationJobResponse')
    GetReadSetExportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReadSetExportJobRequest', name: 'GetReadSetExportJobRequest')
    GetReadSetExportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReadSetExportJobResponse', name: 'GetReadSetExportJobResponse')
    GetReadSetImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReadSetImportJobRequest', name: 'GetReadSetImportJobRequest')
    GetReadSetImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReadSetImportJobResponse', name: 'GetReadSetImportJobResponse')
    GetReadSetMetadataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReadSetMetadataRequest', name: 'GetReadSetMetadataRequest')
    GetReadSetMetadataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReadSetMetadataResponse', name: 'GetReadSetMetadataResponse')
    GetReadSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReadSetRequest', name: 'GetReadSetRequest')
    GetReadSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReadSetResponse', name: 'GetReadSetResponse')
    GetReferenceImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReferenceImportJobRequest', name: 'GetReferenceImportJobRequest')
    GetReferenceImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReferenceImportJobResponse', name: 'GetReferenceImportJobResponse')
    GetReferenceMetadataRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReferenceMetadataRequest', name: 'GetReferenceMetadataRequest')
    GetReferenceMetadataResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReferenceMetadataResponse', name: 'GetReferenceMetadataResponse')
    GetReferenceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReferenceRequest', name: 'GetReferenceRequest')
    GetReferenceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReferenceResponse', name: 'GetReferenceResponse')
    GetReferenceStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReferenceStoreRequest', name: 'GetReferenceStoreRequest')
    GetReferenceStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetReferenceStoreResponse', name: 'GetReferenceStoreResponse')
    GetRunCacheRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetRunCacheRequest', name: 'GetRunCacheRequest')
    GetRunCacheResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetRunCacheResponse', name: 'GetRunCacheResponse')
    GetRunGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetRunGroupRequest', name: 'GetRunGroupRequest')
    GetRunGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetRunGroupResponse', name: 'GetRunGroupResponse')
    GetRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetRunRequest', name: 'GetRunRequest')
    GetRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetRunResponse', name: 'GetRunResponse')
    GetRunTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetRunTaskRequest', name: 'GetRunTaskRequest')
    GetRunTaskResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetRunTaskResponse', name: 'GetRunTaskResponse')
    GetS3AccessPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetS3AccessPolicyRequest', name: 'GetS3AccessPolicyRequest')
    GetS3AccessPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetS3AccessPolicyResponse', name: 'GetS3AccessPolicyResponse')
    GetSequenceStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetSequenceStoreRequest', name: 'GetSequenceStoreRequest')
    GetSequenceStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetSequenceStoreResponse', name: 'GetSequenceStoreResponse')
    GetShareRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetShareRequest', name: 'GetShareRequest')
    GetShareResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetShareResponse', name: 'GetShareResponse')
    GetVariantImportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetVariantImportRequest', name: 'GetVariantImportRequest')
    GetVariantImportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetVariantImportResponse', name: 'GetVariantImportResponse')
    GetVariantStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetVariantStoreRequest', name: 'GetVariantStoreRequest')
    GetVariantStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetVariantStoreResponse', name: 'GetVariantStoreResponse')
    GetWorkflowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetWorkflowRequest', name: 'GetWorkflowRequest')
    GetWorkflowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetWorkflowResponse', name: 'GetWorkflowResponse')
    GetWorkflowVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetWorkflowVersionRequest', name: 'GetWorkflowVersionRequest')
    GetWorkflowVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#GetWorkflowVersionResponse', name: 'GetWorkflowVersionResponse')
    Header = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.omics#Header', name: 'Header', traits: {"smithy.api#default" => false})
    IdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#IdList', name: 'IdList')
    ImportJobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ImportJobId', name: 'ImportJobId', traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    ImportReadSetFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ImportReadSetFilter', name: 'ImportReadSetFilter')
    ImportReadSetJobItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ImportReadSetJobItem', name: 'ImportReadSetJobItem')
    ImportReadSetJobList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ImportReadSetJobList', name: 'ImportReadSetJobList')
    ImportReadSetSourceItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ImportReadSetSourceItem', name: 'ImportReadSetSourceItem')
    ImportReadSetSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ImportReadSetSourceList', name: 'ImportReadSetSourceList')
    ImportReferenceFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ImportReferenceFilter', name: 'ImportReferenceFilter')
    ImportReferenceJobItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ImportReferenceJobItem', name: 'ImportReferenceJobItem')
    ImportReferenceJobList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ImportReferenceJobList', name: 'ImportReferenceJobList')
    ImportReferenceSourceItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ImportReferenceSourceItem', name: 'ImportReferenceSourceItem')
    ImportReferenceSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ImportReferenceSourceList', name: 'ImportReferenceSourceList')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    JobStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#JobStatus', name: 'JobStatus', traits: {"smithy.api#enum" => [{"value" => "SUBMITTED", "name" => "SUBMITTED", "documentation" => "The Job has been submitted to run"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS", "documentation" => "The Job is executing"}, {"value" => "CANCELLED", "name" => "CANCELLED", "documentation" => "The Job was cancelled"}, {"value" => "COMPLETED", "name" => "COMPLETED", "documentation" => "The Job has completed"}, {"value" => "FAILED", "name" => "FAILED", "documentation" => "The Job failed"}, {"value" => "COMPLETED_WITH_FAILURES", "name" => "COMPLETED_WITH_FAILURES", "documentation" => "The Job completed with failed runs"}]})
    JobStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#JobStatusMessage', name: 'JobStatusMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    JobStatusMsg = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#JobStatusMsg', name: 'JobStatusMsg')
    LineSep = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#LineSep', name: 'LineSep', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ListAnnotationImportJobsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListAnnotationImportJobsFilter', name: 'ListAnnotationImportJobsFilter')
    ListAnnotationImportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListAnnotationImportJobsRequest', name: 'ListAnnotationImportJobsRequest')
    ListAnnotationImportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListAnnotationImportJobsResponse', name: 'ListAnnotationImportJobsResponse')
    ListAnnotationStoreVersionsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListAnnotationStoreVersionsFilter', name: 'ListAnnotationStoreVersionsFilter')
    ListAnnotationStoreVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListAnnotationStoreVersionsRequest', name: 'ListAnnotationStoreVersionsRequest')
    ListAnnotationStoreVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListAnnotationStoreVersionsResponse', name: 'ListAnnotationStoreVersionsResponse')
    ListAnnotationStoresFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListAnnotationStoresFilter', name: 'ListAnnotationStoresFilter')
    ListAnnotationStoresRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListAnnotationStoresRequest', name: 'ListAnnotationStoresRequest')
    ListAnnotationStoresResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListAnnotationStoresResponse', name: 'ListAnnotationStoresResponse')
    ListMultipartReadSetUploadsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListMultipartReadSetUploadsRequest', name: 'ListMultipartReadSetUploadsRequest')
    ListMultipartReadSetUploadsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListMultipartReadSetUploadsResponse', name: 'ListMultipartReadSetUploadsResponse')
    ListReadSetActivationJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListReadSetActivationJobsRequest', name: 'ListReadSetActivationJobsRequest')
    ListReadSetActivationJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListReadSetActivationJobsResponse', name: 'ListReadSetActivationJobsResponse')
    ListReadSetExportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListReadSetExportJobsRequest', name: 'ListReadSetExportJobsRequest')
    ListReadSetExportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListReadSetExportJobsResponse', name: 'ListReadSetExportJobsResponse')
    ListReadSetImportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListReadSetImportJobsRequest', name: 'ListReadSetImportJobsRequest')
    ListReadSetImportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListReadSetImportJobsResponse', name: 'ListReadSetImportJobsResponse')
    ListReadSetUploadPartsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListReadSetUploadPartsRequest', name: 'ListReadSetUploadPartsRequest')
    ListReadSetUploadPartsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListReadSetUploadPartsResponse', name: 'ListReadSetUploadPartsResponse')
    ListReadSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListReadSetsRequest', name: 'ListReadSetsRequest')
    ListReadSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListReadSetsResponse', name: 'ListReadSetsResponse')
    ListReferenceImportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListReferenceImportJobsRequest', name: 'ListReferenceImportJobsRequest')
    ListReferenceImportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListReferenceImportJobsResponse', name: 'ListReferenceImportJobsResponse')
    ListReferenceStoresRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListReferenceStoresRequest', name: 'ListReferenceStoresRequest')
    ListReferenceStoresResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListReferenceStoresResponse', name: 'ListReferenceStoresResponse')
    ListReferencesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListReferencesRequest', name: 'ListReferencesRequest')
    ListReferencesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListReferencesResponse', name: 'ListReferencesResponse')
    ListRunCachesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListRunCachesRequest', name: 'ListRunCachesRequest')
    ListRunCachesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListRunCachesResponse', name: 'ListRunCachesResponse')
    ListRunGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListRunGroupsRequest', name: 'ListRunGroupsRequest')
    ListRunGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListRunGroupsResponse', name: 'ListRunGroupsResponse')
    ListRunTasksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListRunTasksRequest', name: 'ListRunTasksRequest')
    ListRunTasksResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListRunTasksResponse', name: 'ListRunTasksResponse')
    ListRunsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListRunsRequest', name: 'ListRunsRequest')
    ListRunsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListRunsResponse', name: 'ListRunsResponse')
    ListSequenceStoresRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListSequenceStoresRequest', name: 'ListSequenceStoresRequest')
    ListSequenceStoresResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListSequenceStoresResponse', name: 'ListSequenceStoresResponse')
    ListSharesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListSharesRequest', name: 'ListSharesRequest')
    ListSharesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListSharesResponse', name: 'ListSharesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ListToken', name: 'ListToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ListVariantImportJobsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListVariantImportJobsFilter', name: 'ListVariantImportJobsFilter')
    ListVariantImportJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListVariantImportJobsRequest', name: 'ListVariantImportJobsRequest')
    ListVariantImportJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListVariantImportJobsResponse', name: 'ListVariantImportJobsResponse')
    ListVariantStoresFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListVariantStoresFilter', name: 'ListVariantStoresFilter')
    ListVariantStoresRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListVariantStoresRequest', name: 'ListVariantStoresRequest')
    ListVariantStoresResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListVariantStoresResponse', name: 'ListVariantStoresResponse')
    ListWorkflowVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListWorkflowVersionsRequest', name: 'ListWorkflowVersionsRequest')
    ListWorkflowVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListWorkflowVersionsResponse', name: 'ListWorkflowVersionsResponse')
    ListWorkflowsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListWorkflowsRequest', name: 'ListWorkflowsRequest')
    ListWorkflowsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ListWorkflowsResponse', name: 'ListWorkflowsResponse')
    Md5 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#Md5', name: 'Md5', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}||\\p{N}]+$"})
    MultipartReadSetUploadList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#MultipartReadSetUploadList', name: 'MultipartReadSetUploadList')
    MultipartReadSetUploadListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#MultipartReadSetUploadListItem', name: 'MultipartReadSetUploadListItem')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 6144}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    NotSupportedOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#NotSupportedOperationException', name: 'NotSupportedOperationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 405})
    NumericIdInArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#NumericIdInArn', name: 'NumericIdInArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 18}, "smithy.api#pattern" => "^[0-9]+$"})
    ParameterTemplatePath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ParameterTemplatePath', name: 'ParameterTemplatePath', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    PropagatedSetLevelTags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#PropagatedSetLevelTags', name: 'PropagatedSetLevelTags', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    PutS3AccessPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#PutS3AccessPolicyRequest', name: 'PutS3AccessPolicyRequest')
    PutS3AccessPolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#PutS3AccessPolicyResponse', name: 'PutS3AccessPolicyResponse')
    Quote = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#Quote', name: 'Quote', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    QuoteAll = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.omics#QuoteAll', name: 'QuoteAll', traits: {"smithy.api#default" => false})
    Range = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#Range', name: 'Range', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{N}||\\p{P}]+$"})
    RangeNotSatisfiableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#RangeNotSatisfiableException', name: 'RangeNotSatisfiableException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 416, "smithy.api#retryable" => {}})
    ReadOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ReadOptions', name: 'ReadOptions')
    ReadSetActivationJobItemStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadSetActivationJobItemStatus', name: 'ReadSetActivationJobItemStatus', traits: {"smithy.api#enum" => [{"value" => "NOT_STARTED", "name" => "NOT_STARTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "FINISHED", "name" => "FINISHED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ReadSetActivationJobStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadSetActivationJobStatus', name: 'ReadSetActivationJobStatus', traits: {"smithy.api#enum" => [{"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "CANCELLING", "name" => "CANCELLING"}, {"value" => "CANCELLED", "name" => "CANCELLED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "COMPLETED_WITH_FAILURES", "name" => "COMPLETED_WITH_FAILURES"}]})
    ReadSetArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadSetArn', name: 'ReadSetArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^arn:.+$"})
    ReadSetBatchError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ReadSetBatchError', name: 'ReadSetBatchError')
    ReadSetBatchErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ReadSetBatchErrorList', name: 'ReadSetBatchErrorList')
    ReadSetDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadSetDescription', name: 'ReadSetDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReadSetExportJobItemStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadSetExportJobItemStatus', name: 'ReadSetExportJobItemStatus', traits: {"smithy.api#enum" => [{"value" => "NOT_STARTED", "name" => "NOT_STARTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "FINISHED", "name" => "FINISHED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ReadSetExportJobStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadSetExportJobStatus', name: 'ReadSetExportJobStatus', traits: {"smithy.api#enum" => [{"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "CANCELLING", "name" => "CANCELLING"}, {"value" => "CANCELLED", "name" => "CANCELLED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "COMPLETED_WITH_FAILURES", "name" => "COMPLETED_WITH_FAILURES"}]})
    ReadSetFile = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadSetFile', name: 'ReadSetFile', traits: {"smithy.api#enum" => [{"value" => "SOURCE1", "name" => "SOURCE1"}, {"value" => "SOURCE2", "name" => "SOURCE2"}, {"value" => "INDEX", "name" => "INDEX"}]})
    ReadSetFiles = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ReadSetFiles', name: 'ReadSetFiles')
    ReadSetFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ReadSetFilter', name: 'ReadSetFilter')
    ReadSetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadSetId', name: 'ReadSetId', traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    ReadSetIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ReadSetIdList', name: 'ReadSetIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ReadSetImportJobItemStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadSetImportJobItemStatus', name: 'ReadSetImportJobItemStatus', traits: {"smithy.api#enum" => [{"value" => "NOT_STARTED", "name" => "NOT_STARTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "FINISHED", "name" => "FINISHED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ReadSetImportJobStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadSetImportJobStatus', name: 'ReadSetImportJobStatus', traits: {"smithy.api#enum" => [{"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "CANCELLING", "name" => "CANCELLING"}, {"value" => "CANCELLED", "name" => "CANCELLED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "COMPLETED_WITH_FAILURES", "name" => "COMPLETED_WITH_FAILURES"}]})
    ReadSetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ReadSetList', name: 'ReadSetList')
    ReadSetListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ReadSetListItem', name: 'ReadSetListItem')
    ReadSetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadSetName', name: 'ReadSetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReadSetPartSource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadSetPartSource', name: 'ReadSetPartSource', traits: {"smithy.api#enum" => [{"value" => "SOURCE1", "name" => "SOURCE1"}, {"value" => "SOURCE2", "name" => "SOURCE2"}]})
    ReadSetPartStreamingBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.omics#ReadSetPartStreamingBlob', name: 'ReadSetPartStreamingBlob', traits: {"smithy.api#requiresLength" => {}, "smithy.api#streaming" => {}})
    ReadSetS3Access = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ReadSetS3Access', name: 'ReadSetS3Access')
    ReadSetStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadSetStatus', name: 'ReadSetStatus', traits: {"smithy.api#enum" => [{"value" => "ARCHIVED", "name" => "ARCHIVED"}, {"value" => "ACTIVATING", "name" => "ACTIVATING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "PROCESSING_UPLOAD", "name" => "PROCESSING_UPLOAD"}, {"value" => "UPLOAD_FAILED", "name" => "UPLOAD_FAILED"}]})
    ReadSetStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadSetStatusMessage', name: 'ReadSetStatusMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReadSetStreamingBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.omics#ReadSetStreamingBlob', name: 'ReadSetStreamingBlob', traits: {"smithy.api#streaming" => {}})
    ReadSetUploadPartList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ReadSetUploadPartList', name: 'ReadSetUploadPartList')
    ReadSetUploadPartListFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ReadSetUploadPartListFilter', name: 'ReadSetUploadPartListFilter')
    ReadSetUploadPartListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ReadSetUploadPartListItem', name: 'ReadSetUploadPartListItem')
    ReadmeMarkdown = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadmeMarkdown', name: 'ReadmeMarkdown', traits: {"smithy.api#mediaType" => "text/markdown"})
    ReadmePath = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadmePath', name: 'ReadmePath', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReadmeS3PresignedUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReadmeS3PresignedUrl', name: 'ReadmeS3PresignedUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReferenceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReferenceArn', name: 'ReferenceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^arn:.+$"})
    ReferenceArnFilter = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReferenceArnFilter', name: 'ReferenceArnFilter', traits: {"smithy.api#length" => {"min" => 0, "max" => 127}, "smithy.api#pattern" => "^$|^arn:.+$"})
    ReferenceCreationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReferenceCreationType', name: 'ReferenceCreationType', traits: {"smithy.api#enum" => [{"value" => "IMPORT", "name" => "IMPORT"}]})
    ReferenceDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReferenceDescription', name: 'ReferenceDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReferenceFile = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReferenceFile', name: 'ReferenceFile', traits: {"smithy.api#enum" => [{"value" => "SOURCE", "name" => "SOURCE"}, {"value" => "INDEX", "name" => "INDEX"}]})
    ReferenceFiles = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ReferenceFiles', name: 'ReferenceFiles')
    ReferenceFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ReferenceFilter', name: 'ReferenceFilter')
    ReferenceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReferenceId', name: 'ReferenceId', traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    ReferenceImportJobItemStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReferenceImportJobItemStatus', name: 'ReferenceImportJobItemStatus', traits: {"smithy.api#enum" => [{"value" => "NOT_STARTED", "name" => "NOT_STARTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "FINISHED", "name" => "FINISHED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ReferenceImportJobStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReferenceImportJobStatus', name: 'ReferenceImportJobStatus', traits: {"smithy.api#enum" => [{"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "CANCELLING", "name" => "CANCELLING"}, {"value" => "CANCELLED", "name" => "CANCELLED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "COMPLETED_WITH_FAILURES", "name" => "COMPLETED_WITH_FAILURES"}]})
    ReferenceItem = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.omics#ReferenceItem', name: 'ReferenceItem')
    ReferenceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ReferenceList', name: 'ReferenceList')
    ReferenceListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ReferenceListItem', name: 'ReferenceListItem')
    ReferenceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReferenceName', name: 'ReferenceName', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReferenceStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReferenceStatus', name: 'ReferenceStatus', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "DELETED", "name" => "DELETED"}]})
    ReferenceStoreArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReferenceStoreArn', name: 'ReferenceStoreArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^arn:.+$"})
    ReferenceStoreDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReferenceStoreDescription', name: 'ReferenceStoreDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReferenceStoreDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ReferenceStoreDetail', name: 'ReferenceStoreDetail')
    ReferenceStoreDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ReferenceStoreDetailList', name: 'ReferenceStoreDetailList')
    ReferenceStoreFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ReferenceStoreFilter', name: 'ReferenceStoreFilter')
    ReferenceStoreId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReferenceStoreId', name: 'ReferenceStoreId', traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    ReferenceStoreName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ReferenceStoreName', name: 'ReferenceStoreName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReferenceStreamingBlob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.omics#ReferenceStreamingBlob', name: 'ReferenceStreamingBlob', traits: {"smithy.api#streaming" => {}})
    RequestTimeoutException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#RequestTimeoutException', name: 'RequestTimeoutException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408})
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ResourceId', name: 'ResourceId', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ResourceIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ResourceIdentifier', name: 'ResourceIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceOwner = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ResourceOwner', name: 'ResourceOwner', traits: {"smithy.api#enum" => [{"value" => "SELF", "name" => "SELF", "documentation" => "The resource owner is the calling account"}, {"value" => "OTHER", "name" => "OTHER", "documentation" => "The resource owner is an account other than the caller"}]})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*"})
    RunArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunArn', name: 'RunArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:.+$"})
    RunCacheArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunCacheArn', name: 'RunCacheArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:.+$"})
    RunCacheId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunCacheId', name: 'RunCacheId', traits: {"smithy.api#length" => {"min" => 1, "max" => 18}, "smithy.api#pattern" => "^[0-9]+$"})
    RunCacheList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#RunCacheList', name: 'RunCacheList')
    RunCacheListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#RunCacheListItem', name: 'RunCacheListItem')
    RunCacheRequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunCacheRequestId', name: 'RunCacheRequestId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunCacheStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunCacheStatus', name: 'RunCacheStatus', traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "DELETED", "value" => "DELETED"}, {"name" => "FAILED", "value" => "FAILED"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    RunCacheTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.omics#RunCacheTimestamp', name: 'RunCacheTimestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    RunExport = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunExport', name: 'RunExport', traits: {"smithy.api#enum" => [{"name" => "DEFINITION", "value" => "DEFINITION"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    RunExportList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#RunExportList', name: 'RunExportList', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    RunFailureReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunFailureReason', name: 'RunFailureReason', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunGroupArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunGroupArn', name: 'RunGroupArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:.+$"})
    RunGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunGroupId', name: 'RunGroupId', traits: {"smithy.api#length" => {"min" => 1, "max" => 18}, "smithy.api#pattern" => "^[0-9]+$"})
    RunGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#RunGroupList', name: 'RunGroupList')
    RunGroupListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#RunGroupListItem', name: 'RunGroupListItem')
    RunGroupListToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunGroupListToken', name: 'RunGroupListToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunGroupName', name: 'RunGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunGroupRequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunGroupRequestId', name: 'RunGroupRequestId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunGroupTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.omics#RunGroupTimestamp', name: 'RunGroupTimestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    RunId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunId', name: 'RunId', traits: {"smithy.api#length" => {"min" => 1, "max" => 18}, "smithy.api#pattern" => "^[0-9]+$"})
    RunLeftNormalization = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.omics#RunLeftNormalization', name: 'RunLeftNormalization', traits: {"smithy.api#default" => false})
    RunList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#RunList', name: 'RunList')
    RunListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#RunListItem', name: 'RunListItem')
    RunListToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunListToken', name: 'RunListToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunLogLevel = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunLogLevel', name: 'RunLogLevel', traits: {"smithy.api#enum" => [{"name" => "OFF", "value" => "OFF"}, {"name" => "FATAL", "value" => "FATAL"}, {"name" => "ERROR", "value" => "ERROR"}, {"name" => "ALL", "value" => "ALL"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    RunLogLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#RunLogLocation', name: 'RunLogLocation')
    RunLogStream = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunLogStream', name: 'RunLogStream', traits: {"smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunName', name: 'RunName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunOutputUri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunOutputUri', name: 'RunOutputUri', traits: {"smithy.api#length" => {"min" => 1, "max" => 750}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunParameters = Smithy::Schema::Shapes::DocumentShape.new(id: 'com.amazonaws.omics#RunParameters', name: 'RunParameters')
    RunRequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunRequestId', name: 'RunRequestId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunResourceDigest = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunResourceDigest', name: 'RunResourceDigest', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunResourceDigestKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunResourceDigestKey', name: 'RunResourceDigestKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunResourceDigests = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.omics#RunResourceDigests', name: 'RunResourceDigests')
    RunRetentionMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunRetentionMode', name: 'RunRetentionMode', traits: {"smithy.api#enum" => [{"name" => "RETAIN", "value" => "RETAIN"}, {"name" => "REMOVE", "value" => "REMOVE"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    RunRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunRoleArn', name: 'RunRoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:.+$"})
    RunStartedBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunStartedBy', name: 'RunStartedBy', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RunStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunStatus', name: 'RunStatus', traits: {"smithy.api#enum" => [{"name" => "PENDING", "value" => "PENDING"}, {"name" => "STARTING", "value" => "STARTING"}, {"name" => "RUNNING", "value" => "RUNNING"}, {"name" => "STOPPING", "value" => "STOPPING"}, {"name" => "COMPLETED", "value" => "COMPLETED"}, {"name" => "DELETED", "value" => "DELETED"}, {"name" => "CANCELLED", "value" => "CANCELLED"}, {"name" => "FAILED", "value" => "FAILED"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    RunStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunStatusMessage', name: 'RunStatusMessage', traits: {"smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.omics#RunTimestamp', name: 'RunTimestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    RunUuid = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#RunUuid', name: 'RunUuid', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    S3AccessConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#S3AccessConfig', name: 'S3AccessConfig')
    S3AccessPointArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#S3AccessPointArn', name: 'S3AccessPointArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:[^:]*:s3:[^:]*:[^:]*:accesspoint/.*$"})
    S3AccessPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#S3AccessPolicy', name: 'S3AccessPolicy', traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}, "smithy.api#mediaType" => "application/json"})
    S3Destination = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#S3Destination', name: 'S3Destination', traits: {"smithy.api#pattern" => "^s3://([a-z0-9][a-z0-9-.]{1,61}[a-z0-9])/?((.{1,1024})/)?$"})
    S3Uri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#S3Uri', name: 'S3Uri', traits: {"smithy.api#pattern" => "^s3://([a-z0-9][a-z0-9-.]{1,61}[a-z0-9])/(.{1,1024})$"})
    S3UriForBucketOrObject = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#S3UriForBucketOrObject', name: 'S3UriForBucketOrObject', traits: {"smithy.api#pattern" => "^s3://([a-z0-9][a-z0-9-.]{1,61}[a-z0-9])(/(.{0,1024}))?$"})
    S3UriForObject = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#S3UriForObject', name: 'S3UriForObject', traits: {"smithy.api#pattern" => "^s3://([a-z0-9][a-z0-9-.]{1,61}[a-z0-9])/((.{1,1024}))$"})
    SampleId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#SampleId', name: 'SampleId', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    Schema = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#Schema', name: 'Schema')
    SchemaItem = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.omics#SchemaItem', name: 'SchemaItem', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SchemaValueType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#SchemaValueType', name: 'SchemaValueType', traits: {"smithy.api#enum" => [{"value" => "LONG", "name" => "LONG", "documentation" => "LONG type"}, {"value" => "INT", "name" => "INT", "documentation" => "INT type"}, {"value" => "STRING", "name" => "STRING", "documentation" => "STRING type"}, {"value" => "FLOAT", "name" => "FLOAT", "documentation" => "FLOAT type"}, {"value" => "DOUBLE", "name" => "DOUBLE", "documentation" => "DOUBLE type"}, {"value" => "BOOLEAN", "name" => "BOOLEAN", "documentation" => "BOOLEAN type"}]})
    Separator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#Separator', name: 'Separator', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    SequenceInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#SequenceInformation', name: 'SequenceInformation')
    SequenceStoreArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#SequenceStoreArn', name: 'SequenceStoreArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^arn:.+$"})
    SequenceStoreDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#SequenceStoreDescription', name: 'SequenceStoreDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    SequenceStoreDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#SequenceStoreDetail', name: 'SequenceStoreDetail')
    SequenceStoreDetailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#SequenceStoreDetailList', name: 'SequenceStoreDetailList')
    SequenceStoreFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#SequenceStoreFilter', name: 'SequenceStoreFilter')
    SequenceStoreId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#SequenceStoreId', name: 'SequenceStoreId', traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    SequenceStoreName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#SequenceStoreName', name: 'SequenceStoreName', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    SequenceStoreS3Access = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#SequenceStoreS3Access', name: 'SequenceStoreS3Access')
    SequenceStoreStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#SequenceStoreStatus', name: 'SequenceStoreStatus', traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "FAILED", "name" => "FAILED"}]})
    SequenceStoreStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#SequenceStoreStatusMessage', name: 'SequenceStoreStatusMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ShareDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ShareDetails', name: 'ShareDetails')
    ShareDetailsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#ShareDetailsList', name: 'ShareDetailsList')
    ShareName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ShareName', name: 'ShareName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ShareResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ShareResourceType', name: 'ShareResourceType', traits: {"smithy.api#enum" => [{"value" => "VARIANT_STORE", "name" => "VARIANT_STORE", "documentation" => "The share is on a variant store"}, {"value" => "ANNOTATION_STORE", "name" => "ANNOTATION_STORE", "documentation" => "The share is on an annotation store"}, {"value" => "WORKFLOW", "name" => "WORKFLOW", "documentation" => "The share is on a workflow"}]})
    ShareStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#ShareStatus', name: 'ShareStatus', traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING", "documentation" => "The share has been created but is not yet active"}, {"value" => "ACTIVATING", "name" => "ACTIVATING", "documentation" => "The share is activated"}, {"value" => "ACTIVE", "name" => "ACTIVE", "documentation" => "The share is active and can be used"}, {"value" => "DELETING", "name" => "DELETING", "documentation" => "The share is being deleted"}, {"value" => "DELETED", "name" => "DELETED", "documentation" => "The share has been deleted"}, {"value" => "FAILED", "name" => "FAILED", "documentation" => "The share has failed to activate or delete"}]})
    SourceFiles = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#SourceFiles', name: 'SourceFiles')
    SourceReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#SourceReference', name: 'SourceReference')
    SourceReferenceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#SourceReferenceType', name: 'SourceReferenceType', traits: {"smithy.api#enum" => [{"name" => "BRANCH", "value" => "BRANCH"}, {"name" => "TAG", "value" => "TAG"}, {"name" => "COMMIT", "value" => "COMMIT"}]})
    SourceReferenceValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#SourceReferenceValue', name: 'SourceReferenceValue')
    SseConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#SseConfig', name: 'SseConfig')
    StartAnnotationImportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartAnnotationImportRequest', name: 'StartAnnotationImportRequest')
    StartAnnotationImportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartAnnotationImportResponse', name: 'StartAnnotationImportResponse')
    StartReadSetActivationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartReadSetActivationJobRequest', name: 'StartReadSetActivationJobRequest')
    StartReadSetActivationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartReadSetActivationJobResponse', name: 'StartReadSetActivationJobResponse')
    StartReadSetActivationJobSourceItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartReadSetActivationJobSourceItem', name: 'StartReadSetActivationJobSourceItem')
    StartReadSetActivationJobSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#StartReadSetActivationJobSourceList', name: 'StartReadSetActivationJobSourceList')
    StartReadSetExportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartReadSetExportJobRequest', name: 'StartReadSetExportJobRequest')
    StartReadSetExportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartReadSetExportJobResponse', name: 'StartReadSetExportJobResponse')
    StartReadSetImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartReadSetImportJobRequest', name: 'StartReadSetImportJobRequest')
    StartReadSetImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartReadSetImportJobResponse', name: 'StartReadSetImportJobResponse')
    StartReadSetImportJobSourceItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartReadSetImportJobSourceItem', name: 'StartReadSetImportJobSourceItem')
    StartReadSetImportJobSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#StartReadSetImportJobSourceList', name: 'StartReadSetImportJobSourceList')
    StartReferenceImportJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartReferenceImportJobRequest', name: 'StartReferenceImportJobRequest')
    StartReferenceImportJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartReferenceImportJobResponse', name: 'StartReferenceImportJobResponse')
    StartReferenceImportJobSourceItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartReferenceImportJobSourceItem', name: 'StartReferenceImportJobSourceItem')
    StartReferenceImportJobSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#StartReferenceImportJobSourceList', name: 'StartReferenceImportJobSourceList')
    StartRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartRunRequest', name: 'StartRunRequest')
    StartRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartRunResponse', name: 'StartRunResponse')
    StartVariantImportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartVariantImportRequest', name: 'StartVariantImportRequest')
    StartVariantImportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#StartVariantImportResponse', name: 'StartVariantImportResponse')
    StatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#StatusList', name: 'StatusList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    StatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#StatusMessage', name: 'StatusMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    StorageType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#StorageType', name: 'StorageType', traits: {"smithy.api#enum" => [{"name" => "STATIC", "value" => "STATIC"}, {"name" => "DYNAMIC", "value" => "DYNAMIC"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    StoreFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#StoreFormat', name: 'StoreFormat', traits: {"smithy.api#enum" => [{"value" => "GFF", "name" => "GFF", "documentation" => "GFF3 Format"}, {"value" => "TSV", "name" => "TSV", "documentation" => "TSV Format"}, {"value" => "VCF", "name" => "VCF", "documentation" => "VCF Format"}]})
    StoreId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#StoreId', name: 'StoreId', traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    StoreName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#StoreName', name: 'StoreName', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^([a-z]){1}([a-z0-9_]){2,254}$"})
    StoreOptions = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.omics#StoreOptions', name: 'StoreOptions')
    StoreStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#StoreStatus', name: 'StoreStatus', traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING", "documentation" => "The Store is being created"}, {"value" => "UPDATING", "name" => "UPDATING", "documentation" => "The Store is updating"}, {"value" => "DELETING", "name" => "DELETING", "documentation" => "The Store is deleting"}, {"value" => "ACTIVE", "name" => "ACTIVE", "documentation" => "The Store is active"}, {"value" => "FAILED", "name" => "FAILED", "documentation" => "The Store creation failed"}]})
    StoreType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.omics#StoreType', name: 'StoreType')
    SubjectId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#SubjectId', name: 'SubjectId', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    TagArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#TagArn', name: 'TagArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^arn:.+$"})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.omics#TagMap', name: 'TagMap')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TaskFailureReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#TaskFailureReason', name: 'TaskFailureReason', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    TaskId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#TaskId', name: 'TaskId', traits: {"smithy.api#length" => {"min" => 1, "max" => 18}, "smithy.api#pattern" => "^[0-9]+$"})
    TaskInstanceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#TaskInstanceType', name: 'TaskInstanceType', traits: {"smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    TaskList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#TaskList', name: 'TaskList')
    TaskListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#TaskListItem', name: 'TaskListItem')
    TaskListToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#TaskListToken', name: 'TaskListToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    TaskLogStream = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#TaskLogStream', name: 'TaskLogStream', traits: {"smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    TaskName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#TaskName', name: 'TaskName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TaskStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#TaskStatus', name: 'TaskStatus', traits: {"smithy.api#enum" => [{"name" => "PENDING", "value" => "PENDING"}, {"name" => "STARTING", "value" => "STARTING"}, {"name" => "RUNNING", "value" => "RUNNING"}, {"name" => "STOPPING", "value" => "STOPPING"}, {"name" => "COMPLETED", "value" => "COMPLETED"}, {"name" => "CANCELLED", "value" => "CANCELLED"}, {"name" => "FAILED", "value" => "FAILED"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    TaskStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#TaskStatusMessage', name: 'TaskStatusMessage', traits: {"smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    TaskTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.omics#TaskTimestamp', name: 'TaskTimestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TsvOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#TsvOptions', name: 'TsvOptions')
    TsvStoreOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#TsvStoreOptions', name: 'TsvStoreOptions')
    TsvVersionOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#TsvVersionOptions', name: 'TsvVersionOptions')
    TypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#TypeList', name: 'TypeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAnnotationStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#UpdateAnnotationStoreRequest', name: 'UpdateAnnotationStoreRequest')
    UpdateAnnotationStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#UpdateAnnotationStoreResponse', name: 'UpdateAnnotationStoreResponse')
    UpdateAnnotationStoreVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#UpdateAnnotationStoreVersionRequest', name: 'UpdateAnnotationStoreVersionRequest')
    UpdateAnnotationStoreVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#UpdateAnnotationStoreVersionResponse', name: 'UpdateAnnotationStoreVersionResponse')
    UpdateRunCacheRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#UpdateRunCacheRequest', name: 'UpdateRunCacheRequest')
    UpdateRunGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#UpdateRunGroupRequest', name: 'UpdateRunGroupRequest')
    UpdateSequenceStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#UpdateSequenceStoreRequest', name: 'UpdateSequenceStoreRequest')
    UpdateSequenceStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#UpdateSequenceStoreResponse', name: 'UpdateSequenceStoreResponse')
    UpdateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.omics#UpdateTime', name: 'UpdateTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    UpdateVariantStoreRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#UpdateVariantStoreRequest', name: 'UpdateVariantStoreRequest')
    UpdateVariantStoreResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#UpdateVariantStoreResponse', name: 'UpdateVariantStoreResponse')
    UpdateWorkflowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#UpdateWorkflowRequest', name: 'UpdateWorkflowRequest')
    UpdateWorkflowVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#UpdateWorkflowVersionRequest', name: 'UpdateWorkflowVersionRequest')
    UploadId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#UploadId', name: 'UploadId', traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    UploadReadSetPartRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#UploadReadSetPartRequest', name: 'UploadReadSetPartRequest')
    UploadReadSetPartResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#UploadReadSetPartResponse', name: 'UploadReadSetPartResponse')
    UserCustomDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#UserCustomDescription', name: 'UserCustomDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    UserCustomName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#UserCustomName', name: 'UserCustomName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VariantImportItemDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#VariantImportItemDetail', name: 'VariantImportItemDetail')
    VariantImportItemDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#VariantImportItemDetails', name: 'VariantImportItemDetails', traits: {"smithy.api#length" => {"min" => 1}})
    VariantImportItemSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#VariantImportItemSource', name: 'VariantImportItemSource')
    VariantImportItemSources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#VariantImportItemSources', name: 'VariantImportItemSources', traits: {"smithy.api#length" => {"min" => 1}})
    VariantImportJobItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#VariantImportJobItem', name: 'VariantImportJobItem')
    VariantImportJobItems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#VariantImportJobItems', name: 'VariantImportJobItems')
    VariantStoreItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#VariantStoreItem', name: 'VariantStoreItem')
    VariantStoreItems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#VariantStoreItems', name: 'VariantStoreItems')
    VcfOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#VcfOptions', name: 'VcfOptions')
    VersionDeleteError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#VersionDeleteError', name: 'VersionDeleteError')
    VersionDeleteErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#VersionDeleteErrorList', name: 'VersionDeleteErrorList')
    VersionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#VersionList', name: 'VersionList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    VersionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#VersionName', name: 'VersionName', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^([a-z]){1}([a-z0-9_]){2,254}$"})
    VersionOptions = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.omics#VersionOptions', name: 'VersionOptions')
    VersionStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#VersionStatus', name: 'VersionStatus', traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING", "documentation" => "The Version is being created"}, {"value" => "UPDATING", "name" => "UPDATING", "documentation" => "The Version is updating"}, {"value" => "DELETING", "name" => "DELETING", "documentation" => "The Version is deleting"}, {"value" => "ACTIVE", "name" => "ACTIVE", "documentation" => "The Version is active"}, {"value" => "FAILED", "name" => "FAILED", "documentation" => "The Version creation failed"}]})
    WorkflowArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowArn', name: 'WorkflowArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:.+$"})
    WorkflowBucketOwnerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowBucketOwnerId', name: 'WorkflowBucketOwnerId', traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    WorkflowDefinition = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowDefinition', name: 'WorkflowDefinition', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowDescription', name: 'WorkflowDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowDigest = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowDigest', name: 'WorkflowDigest', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    WorkflowEngine = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowEngine', name: 'WorkflowEngine', traits: {"smithy.api#enum" => [{"name" => "WDL", "value" => "WDL"}, {"name" => "NEXTFLOW", "value" => "NEXTFLOW"}, {"name" => "CWL", "value" => "CWL"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    WorkflowExport = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowExport', name: 'WorkflowExport', traits: {"smithy.api#enum" => [{"name" => "DEFINITION", "value" => "DEFINITION"}, {"name" => "README", "value" => "README"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    WorkflowExportList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#WorkflowExportList', name: 'WorkflowExportList', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    WorkflowId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowId', name: 'WorkflowId', traits: {"smithy.api#length" => {"min" => 1, "max" => 18}, "smithy.api#pattern" => "^[0-9]+$"})
    WorkflowList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#WorkflowList', name: 'WorkflowList')
    WorkflowListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#WorkflowListItem', name: 'WorkflowListItem')
    WorkflowListToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowListToken', name: 'WorkflowListToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowMain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowMain', name: 'WorkflowMain', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowMetadata = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.omics#WorkflowMetadata', name: 'WorkflowMetadata')
    WorkflowMetadataKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowMetadataKey', name: 'WorkflowMetadataKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    WorkflowMetadataValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowMetadataValue', name: 'WorkflowMetadataValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    WorkflowName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowName', name: 'WorkflowName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowOwnerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowOwnerId', name: 'WorkflowOwnerId', traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    WorkflowParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#WorkflowParameter', name: 'WorkflowParameter')
    WorkflowParameterDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowParameterDescription', name: 'WorkflowParameterDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowParameterName', name: 'WorkflowParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowParameterTemplate = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.omics#WorkflowParameterTemplate', name: 'WorkflowParameterTemplate', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    WorkflowRequestId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowRequestId', name: 'WorkflowRequestId', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowStatus', name: 'WorkflowStatus', traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING"}, {"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "UPDATING", "value" => "UPDATING"}, {"name" => "DELETED", "value" => "DELETED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "INACTIVE", "value" => "INACTIVE"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    WorkflowStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowStatusMessage', name: 'WorkflowStatusMessage', traits: {"smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.omics#WorkflowTimestamp', name: 'WorkflowTimestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    WorkflowType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowType', name: 'WorkflowType', traits: {"smithy.api#enum" => [{"name" => "PRIVATE", "value" => "PRIVATE"}, {"name" => "READY2RUN", "value" => "READY2RUN"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    WorkflowUuid = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowUuid', name: 'WorkflowUuid', traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    WorkflowVersionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowVersionArn', name: 'WorkflowVersionArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^arn:.+$"})
    WorkflowVersionDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowVersionDescription', name: 'WorkflowVersionDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowVersionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.omics#WorkflowVersionList', name: 'WorkflowVersionList')
    WorkflowVersionListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.omics#WorkflowVersionListItem', name: 'WorkflowVersionListItem')
    WorkflowVersionListToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowVersionListToken', name: 'WorkflowVersionListToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowVersionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.omics#WorkflowVersionName', name: 'WorkflowVersionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9\\-\\._]*$"})

    AbortMultipartReadSetUploadRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The sequence store ID for the store involved in the multipart upload.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortMultipartReadSetUploadRequest.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The ID for the multipart upload.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortMultipartReadSetUploadRequest.type = Types::AbortMultipartReadSetUploadRequest
    AbortMultipartReadSetUploadResponse.type = Types::AbortMultipartReadSetUploadResponse
    AcceptShareRequest.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'shareId', traits: {"smithy.api#documentation" => "<p>The ID of the resource share.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AcceptShareRequest.type = Types::AcceptShareRequest
    AcceptShareResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the resource share.</p>"}))
    AcceptShareResponse.type = Types::AcceptShareResponse
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ActivateReadSetFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetActivationJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The filter's status.</p>"}))
    ActivateReadSetFilter.add_member(:created_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAfter', traits: {"smithy.api#documentation" => "<p>The filter's start date.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ActivateReadSetFilter.add_member(:created_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdBefore', traits: {"smithy.api#documentation" => "<p>The filter's end date.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ActivateReadSetFilter.type = Types::ActivateReadSetFilter
    ActivateReadSetJobItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivationJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    ActivateReadSetJobItem.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The job's sequence store ID.</p>", "smithy.api#required" => {}}))
    ActivateReadSetJobItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetActivationJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    ActivateReadSetJobItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ActivateReadSetJobItem.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p>When the job completed.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ActivateReadSetJobItem.type = Types::ActivateReadSetJobItem
    ActivateReadSetJobList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateReadSetJobItem)
    ActivateReadSetSourceItem.add_member(:read_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetId, location_name: 'readSetId', traits: {"smithy.api#documentation" => "<p>The source's read set ID.</p>", "smithy.api#required" => {}}))
    ActivateReadSetSourceItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetActivationJobItemStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The source's status.</p>", "smithy.api#required" => {}}))
    ActivateReadSetSourceItem.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The source's status message.</p>"}))
    ActivateReadSetSourceItem.type = Types::ActivateReadSetSourceItem
    ActivateReadSetSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateReadSetSourceItem)
    AnnotationFieldMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 21}})
    AnnotationFieldMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 21}})
    AnnotationImportItemDetail.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source file's location in Amazon S3.</p>", "smithy.api#required" => {}}))
    AnnotationImportItemDetail.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'jobStatus', traits: {"smithy.api#documentation" => "<p>The item's job status.</p>", "smithy.api#required" => {}}))
    AnnotationImportItemDetail.type = Types::AnnotationImportItemDetail
    AnnotationImportItemDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationImportItemDetail)
    AnnotationImportItemSource.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source file's location in Amazon S3.</p>", "smithy.api#required" => {}}))
    AnnotationImportItemSource.type = Types::AnnotationImportItemSource
    AnnotationImportItemSources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationImportItemSource)
    AnnotationImportJobItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    AnnotationImportJobItem.add_member(:destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'destinationName', traits: {"smithy.api#documentation" => "<p>The job's destination annotation store.</p>", "smithy.api#required" => {}}))
    AnnotationImportJobItem.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p> The name of the annotation store version. </p>", "smithy.api#required" => {}}))
    AnnotationImportJobItem.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The job's service role ARN.</p>", "smithy.api#required" => {}}))
    AnnotationImportJobItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    AnnotationImportJobItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}}))
    AnnotationImportJobItem.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>When the job was updated.</p>", "smithy.api#required" => {}}))
    AnnotationImportJobItem.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CompletionTime, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p>When the job completed.</p>"}))
    AnnotationImportJobItem.add_member(:run_left_normalization, Smithy::Schema::Shapes::ShapeRef.new(shape: RunLeftNormalization, location_name: 'runLeftNormalization', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>The job's left normalization setting.</p>"}))
    AnnotationImportJobItem.add_member(:annotation_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationFieldMap, location_name: 'annotationFields', traits: {"smithy.api#documentation" => "<p> The annotation schema generated by the parsed annotation data. </p>"}))
    AnnotationImportJobItem.type = Types::AnnotationImportJobItem
    AnnotationImportJobItems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationImportJobItem)
    AnnotationStoreItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceItem, location_name: 'reference', traits: {"smithy.api#documentation" => "<p>The store's genome reference.</p>", "smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The store's status.</p>", "smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'storeArn', traits: {"smithy.api#documentation" => "<p>The store's ARN.</p>", "smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>", "smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:store_format, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreFormat, location_name: 'storeFormat', traits: {"smithy.api#documentation" => "<p>The store's file format.</p>", "smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The store's description.</p>", "smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:sse_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SseConfig, location_name: 'sseConfig', traits: {"smithy.api#documentation" => "<p>The store's server-side encryption (SSE) settings.</p>", "smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The store's creation time.</p>", "smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>When the store was updated.</p>", "smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The store's status message.</p>", "smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:store_size_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'storeSizeBytes', traits: {"smithy.api#documentation" => "<p>The store's size in bytes.</p>", "smithy.api#required" => {}}))
    AnnotationStoreItem.type = Types::AnnotationStoreItem
    AnnotationStoreItems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationStoreItem)
    AnnotationStoreVersionItem.add_member(:store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'storeId', traits: {"smithy.api#documentation" => "<p> The store ID for an annotation store version. </p>", "smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The annotation store version ID. </p>", "smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of an annotation store version. </p>", "smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'versionArn', traits: {"smithy.api#documentation" => "<p> The Arn for an annotation store version. </p>", "smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> A name given to an annotation store version to distinguish it from others. </p>", "smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p> The name of an annotation store version. </p>", "smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of an annotation store version. </p>", "smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> The time stamp for when an annotation store version was created. </p>", "smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p> The time stamp for when an annotation store version was updated. </p>", "smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p> The status of an annotation store version. </p>", "smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:version_size_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'versionSizeBytes', traits: {"smithy.api#documentation" => "<p> The size of an annotation store version in Bytes. </p>", "smithy.api#required" => {}}))
    AnnotationStoreVersionItem.type = Types::AnnotationStoreVersionItem
    AnnotationStoreVersionItems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationStoreVersionItem)
    ArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    BatchDeleteReadSetRequest.add_member(:ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetIdList, location_name: 'ids', traits: {"smithy.api#documentation" => "<p>The read sets' IDs.</p>", "smithy.api#required" => {}}))
    BatchDeleteReadSetRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The read sets' sequence store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteReadSetRequest.type = Types::BatchDeleteReadSetRequest
    BatchDeleteReadSetResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetBatchErrorList, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>Errors returned by individual delete operations.</p>"}))
    BatchDeleteReadSetResponse.type = Types::BatchDeleteReadSetResponse
    CancelAnnotationImportRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelAnnotationImportRequest.type = Types::CancelAnnotationImportRequest
    CancelAnnotationImportResponse.type = Types::CancelAnnotationImportResponse
    CancelRunRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The run's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelRunRequest.type = Types::CancelRunRequest
    CancelVariantImportRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelVariantImportRequest.type = Types::CancelVariantImportRequest
    CancelVariantImportResponse.type = Types::CancelVariantImportResponse
    CompleteMultipartReadSetUploadRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The sequence store ID for the store involved in the multipart upload.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteMultipartReadSetUploadRequest.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The ID for the multipart upload.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteMultipartReadSetUploadRequest.add_member(:parts, Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteReadSetUploadPartList, location_name: 'parts', traits: {"smithy.api#documentation" => "<p>The individual uploads or parts of a multipart upload.</p>", "smithy.api#required" => {}}))
    CompleteMultipartReadSetUploadRequest.type = Types::CompleteMultipartReadSetUploadRequest
    CompleteMultipartReadSetUploadResponse.add_member(:read_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetId, location_name: 'readSetId', traits: {"smithy.api#documentation" => "<p>The read set ID created for an uploaded read set.</p>", "smithy.api#required" => {}}))
    CompleteMultipartReadSetUploadResponse.type = Types::CompleteMultipartReadSetUploadResponse
    CompleteReadSetUploadPartList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteReadSetUploadPartListItem)
    CompleteReadSetUploadPartListItem.add_member(:part_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'partNumber', traits: {"smithy.api#documentation" => "<p> A number identifying the part in a read set upload. </p>", "smithy.api#range" => {"min" => 1, "max" => 10000}, "smithy.api#required" => {}}))
    CompleteReadSetUploadPartListItem.add_member(:part_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetPartSource, location_name: 'partSource', traits: {"smithy.api#documentation" => "<p> The source file of the part being uploaded. </p>", "smithy.api#required" => {}}))
    CompleteReadSetUploadPartListItem.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p> A unique identifier used to confirm that parts are being added to the correct upload. </p>", "smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$", "smithy.api#required" => {}}))
    CompleteReadSetUploadPartListItem.type = Types::CompleteReadSetUploadPartListItem
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateAnnotationStoreRequest.add_member(:reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceItem, location_name: 'reference', traits: {"smithy.api#documentation" => "<p>The genome reference for the store's annotations.</p>"}))
    CreateAnnotationStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the store.</p>"}))
    CreateAnnotationStoreRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the store.</p>"}))
    CreateAnnotationStoreRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags for the store.</p>"}))
    CreateAnnotationStoreRequest.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p> The name given to an annotation store version to distinguish it from other versions. </p>"}))
    CreateAnnotationStoreRequest.add_member(:sse_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SseConfig, location_name: 'sseConfig', traits: {"smithy.api#documentation" => "<p>Server-side encryption (SSE) settings for the store.</p>"}))
    CreateAnnotationStoreRequest.add_member(:store_format, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreFormat, location_name: 'storeFormat', traits: {"smithy.api#documentation" => "<p>The annotation file format of the store.</p>", "smithy.api#required" => {}}))
    CreateAnnotationStoreRequest.add_member(:store_options, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreOptions, location_name: 'storeOptions', traits: {"smithy.api#documentation" => "<p>File parsing options for the annotation store.</p>"}))
    CreateAnnotationStoreRequest.type = Types::CreateAnnotationStoreRequest
    CreateAnnotationStoreResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#required" => {}}))
    CreateAnnotationStoreResponse.add_member(:reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceItem, location_name: 'reference', traits: {"smithy.api#documentation" => "<p>The store's genome reference. Required for all stores except TSV format with generic annotations.</p>"}))
    CreateAnnotationStoreResponse.add_member(:store_format, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreFormat, location_name: 'storeFormat', traits: {"smithy.api#documentation" => "<p>The annotation file format of the store.</p>"}))
    CreateAnnotationStoreResponse.add_member(:store_options, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreOptions, location_name: 'storeOptions', traits: {"smithy.api#documentation" => "<p>The store's file parsing options.</p>"}))
    CreateAnnotationStoreResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The store's status.</p>", "smithy.api#required" => {}}))
    CreateAnnotationStoreResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>", "smithy.api#required" => {}}))
    CreateAnnotationStoreResponse.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p> The name given to an annotation store version to distinguish it from other versions. </p>", "smithy.api#required" => {}}))
    CreateAnnotationStoreResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the store was created.</p>", "smithy.api#required" => {}}))
    CreateAnnotationStoreResponse.type = Types::CreateAnnotationStoreResponse
    CreateAnnotationStoreVersionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of an annotation store version from which versions are being created. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAnnotationStoreVersionRequest.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p> The name given to an annotation store version to distinguish it from other versions. </p>", "smithy.api#required" => {}}))
    CreateAnnotationStoreVersionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of an annotation store version. </p>"}))
    CreateAnnotationStoreVersionRequest.add_member(:version_options, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionOptions, location_name: 'versionOptions', traits: {"smithy.api#documentation" => "<p> The options for an annotation store version. </p>"}))
    CreateAnnotationStoreVersionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p> Any tags added to annotation store version. </p>"}))
    CreateAnnotationStoreVersionRequest.type = Types::CreateAnnotationStoreVersionRequest
    CreateAnnotationStoreVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p> A generated ID for the annotation store </p>", "smithy.api#required" => {}}))
    CreateAnnotationStoreVersionResponse.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p> The name given to an annotation store version to distinguish it from other versions. </p>", "smithy.api#required" => {}}))
    CreateAnnotationStoreVersionResponse.add_member(:store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'storeId', traits: {"smithy.api#documentation" => "<p> The ID for the annotation store from which new versions are being created. </p>", "smithy.api#required" => {}}))
    CreateAnnotationStoreVersionResponse.add_member(:version_options, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionOptions, location_name: 'versionOptions', traits: {"smithy.api#documentation" => "<p> The options for an annotation store version. </p>"}))
    CreateAnnotationStoreVersionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name given to an annotation store version to distinguish it from other versions. </p>", "smithy.api#required" => {}}))
    CreateAnnotationStoreVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of a annotation store version. </p>", "smithy.api#required" => {}}))
    CreateAnnotationStoreVersionResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> The time stamp for the creation of an annotation store version. </p>", "smithy.api#required" => {}}))
    CreateAnnotationStoreVersionResponse.type = Types::CreateAnnotationStoreVersionResponse
    CreateMultipartReadSetUploadRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The sequence store ID for the store that is the destination of the multipart uploads.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMultipartReadSetUploadRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>An idempotency token that can be used to avoid triggering multiple multipart uploads.</p>"}))
    CreateMultipartReadSetUploadRequest.add_member(:source_file_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FileType, location_name: 'sourceFileType', traits: {"smithy.api#documentation" => "<p>The type of file being uploaded.</p>", "smithy.api#required" => {}}))
    CreateMultipartReadSetUploadRequest.add_member(:subject_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectId, location_name: 'subjectId', traits: {"smithy.api#documentation" => "<p>The source's subject ID.</p>", "smithy.api#required" => {}}))
    CreateMultipartReadSetUploadRequest.add_member(:sample_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleId, location_name: 'sampleId', traits: {"smithy.api#documentation" => "<p>The source's sample ID.</p>", "smithy.api#required" => {}}))
    CreateMultipartReadSetUploadRequest.add_member(:generated_from, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedFrom, location_name: 'generatedFrom', traits: {"smithy.api#documentation" => "<p>Where the source originated.</p>"}))
    CreateMultipartReadSetUploadRequest.add_member(:reference_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceArn, location_name: 'referenceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the reference.</p>"}))
    CreateMultipartReadSetUploadRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the read set.</p>", "smithy.api#required" => {}}))
    CreateMultipartReadSetUploadRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the read set.</p>"}))
    CreateMultipartReadSetUploadRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Any tags to add to the read set.</p>"}))
    CreateMultipartReadSetUploadRequest.type = Types::CreateMultipartReadSetUploadRequest
    CreateMultipartReadSetUploadResponse.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The sequence store ID for the store that the read set will be created in.</p>", "smithy.api#required" => {}}))
    CreateMultipartReadSetUploadResponse.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The ID for the initiated multipart upload.</p>", "smithy.api#required" => {}}))
    CreateMultipartReadSetUploadResponse.add_member(:source_file_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FileType, location_name: 'sourceFileType', traits: {"smithy.api#documentation" => "<p>The file type of the read set source.</p>", "smithy.api#required" => {}}))
    CreateMultipartReadSetUploadResponse.add_member(:subject_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectId, location_name: 'subjectId', traits: {"smithy.api#documentation" => "<p>The source's subject ID.</p>", "smithy.api#required" => {}}))
    CreateMultipartReadSetUploadResponse.add_member(:sample_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleId, location_name: 'sampleId', traits: {"smithy.api#documentation" => "<p>The source's sample ID.</p>", "smithy.api#required" => {}}))
    CreateMultipartReadSetUploadResponse.add_member(:generated_from, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedFrom, location_name: 'generatedFrom', traits: {"smithy.api#documentation" => "<p>The source of the read set.</p>"}))
    CreateMultipartReadSetUploadResponse.add_member(:reference_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceArn, location_name: 'referenceArn', traits: {"smithy.api#documentation" => "<p>The read set source's reference ARN.</p>", "smithy.api#required" => {}}))
    CreateMultipartReadSetUploadResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the read set.</p>"}))
    CreateMultipartReadSetUploadResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the read set.</p>"}))
    CreateMultipartReadSetUploadResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to add to the read set.</p>"}))
    CreateMultipartReadSetUploadResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The creation time of the multipart upload.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CreateMultipartReadSetUploadResponse.type = Types::CreateMultipartReadSetUploadResponse
    CreateReferenceStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the store.</p>", "smithy.api#required" => {}}))
    CreateReferenceStoreRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the store.</p>"}))
    CreateReferenceStoreRequest.add_member(:sse_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SseConfig, location_name: 'sseConfig', traits: {"smithy.api#documentation" => "<p>Server-side encryption (SSE) settings for the store.</p>"}))
    CreateReferenceStoreRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags for the store.</p>"}))
    CreateReferenceStoreRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>To ensure that requests don't run multiple times, specify a unique token for each request.</p>"}))
    CreateReferenceStoreRequest.type = Types::CreateReferenceStoreRequest
    CreateReferenceStoreResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#required" => {}}))
    CreateReferenceStoreResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The store's ARN.</p>", "smithy.api#required" => {}}))
    CreateReferenceStoreResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>"}))
    CreateReferenceStoreResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The store's description.</p>"}))
    CreateReferenceStoreResponse.add_member(:sse_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SseConfig, location_name: 'sseConfig', traits: {"smithy.api#documentation" => "<p>The store's SSE settings.</p>"}))
    CreateReferenceStoreResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the store was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CreateReferenceStoreResponse.type = Types::CreateReferenceStoreResponse
    CreateRunCacheRequest.add_member(:cache_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehavior, location_name: 'cacheBehavior', traits: {"smithy.api#documentation" => "<p>Default cache behavior for runs that use this cache. Supported values are:</p> <p> <code>CACHE_ON_FAILURE</code>: Caches task outputs from completed tasks for runs that fail. This setting is useful if you're debugging a workflow that fails after several tasks completed successfully. The subsequent run uses the cache outputs for previously-completed tasks if the task definition, inputs, and container in ECR are identical to the prior run.</p> <p> <code>CACHE_ALWAYS</code>: Caches task outputs from completed tasks for all runs. This setting is useful in development mode, but do not use it in a production setting.</p> <p>If you don't specify a value, the default behavior is CACHE_ON_FAILURE. When you start a run that uses this cache, you can override the default cache behavior.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/omics/latest/dev/how-run-cache.html#run-cache-behavior\">Run cache behavior</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>"}))
    CreateRunCacheRequest.add_member(:cache_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3UriForBucketOrObject, location_name: 'cacheS3Location', traits: {"smithy.api#documentation" => "<p>Specify the S3 location for storing the cached task outputs. This data must be immediately accessible (not in an archived state).</p>", "smithy.api#required" => {}}))
    CreateRunCacheRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: UserCustomDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Enter a description of the run cache.</p>"}))
    CreateRunCacheRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserCustomName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Enter a user-friendly name for the run cache.</p>"}))
    CreateRunCacheRequest.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheRequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>A unique request token, to ensure idempotency. If you don't specify a token, Amazon Web Services HealthOmics automatically generates a universally unique identifier (UUID) for the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateRunCacheRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Specify one or more tags to associate with this run cache.</p>"}))
    CreateRunCacheRequest.add_member(:cache_bucket_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'cacheBucketOwnerId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the expected owner of the S3 bucket for the run cache. If not provided, your account ID is set as the owner of the bucket.</p>"}))
    CreateRunCacheRequest.type = Types::CreateRunCacheRequest
    CreateRunCacheResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Unique resource identifier for the run cache.</p>"}))
    CreateRunCacheResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>Identifier for the run cache.</p>"}))
    CreateRunCacheResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Run cache status.</p>"}))
    CreateRunCacheResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags associated with this run cache.</p>"}))
    CreateRunCacheResponse.type = Types::CreateRunCacheResponse
    CreateRunGroupRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the group.</p>"}))
    CreateRunGroupRequest.add_member(:max_cpus, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxCpus', traits: {"smithy.api#documentation" => "<p>The maximum number of CPUs that can run concurrently across all active runs in the run group.</p>", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    CreateRunGroupRequest.add_member(:max_runs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxRuns', traits: {"smithy.api#documentation" => "<p>The maximum number of runs that can be running at the same time.</p>", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    CreateRunGroupRequest.add_member(:max_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxDuration', traits: {"smithy.api#documentation" => "<p>The maximum time for each run (in minutes). If a run exceeds the maximum run time, the run fails automatically.</p>", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    CreateRunGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags for the group.</p>"}))
    CreateRunGroupRequest.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupRequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>To ensure that requests don't run multiple times, specify a unique ID for each request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateRunGroupRequest.add_member(:max_gpus, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxGpus', traits: {"smithy.api#documentation" => "<p>The maximum number of GPUs that can run concurrently across all active runs in the run group.</p>", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    CreateRunGroupRequest.type = Types::CreateRunGroupRequest
    CreateRunGroupResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The group's ARN.</p>"}))
    CreateRunGroupResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The group's ID.</p>"}))
    CreateRunGroupResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags for the run group.</p>"}))
    CreateRunGroupResponse.type = Types::CreateRunGroupResponse
    CreateSequenceStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the store.</p>", "smithy.api#required" => {}}))
    CreateSequenceStoreRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the store.</p>"}))
    CreateSequenceStoreRequest.add_member(:sse_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SseConfig, location_name: 'sseConfig', traits: {"smithy.api#documentation" => "<p>Server-side encryption (SSE) settings for the store.</p>"}))
    CreateSequenceStoreRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags for the store.</p>"}))
    CreateSequenceStoreRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>To ensure that requests don't run multiple times, specify a unique token for each request.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateSequenceStoreRequest.add_member(:fallback_location, Smithy::Schema::Shapes::ShapeRef.new(shape: FallbackLocation, location_name: 'fallbackLocation', traits: {"smithy.api#documentation" => "<p>An S3 location that is used to store files that have failed a direct upload.</p>"}))
    CreateSequenceStoreRequest.add_member(:e_tag_algorithm_family, Smithy::Schema::Shapes::ShapeRef.new(shape: ETagAlgorithmFamily, location_name: 'eTagAlgorithmFamily', traits: {"smithy.api#documentation" => "<p>The ETag algorithm family to use for ingested read sets.</p>"}))
    CreateSequenceStoreRequest.add_member(:propagated_set_level_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: PropagatedSetLevelTags, location_name: 'propagatedSetLevelTags', traits: {"smithy.api#documentation" => "<p>The tags keys to propagate to the S3 objects associated with read sets in the sequence store.</p>"}))
    CreateSequenceStoreRequest.add_member(:s3_access_config, Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessConfig, location_name: 's3AccessConfig', traits: {"smithy.api#documentation" => "<p>S3 access configuration parameters</p>"}))
    CreateSequenceStoreRequest.type = Types::CreateSequenceStoreRequest
    CreateSequenceStoreResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#required" => {}}))
    CreateSequenceStoreResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The store's ARN.</p>", "smithy.api#required" => {}}))
    CreateSequenceStoreResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>"}))
    CreateSequenceStoreResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The store's description.</p>"}))
    CreateSequenceStoreResponse.add_member(:sse_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SseConfig, location_name: 'sseConfig', traits: {"smithy.api#documentation" => "<p>The store's SSE settings.</p>"}))
    CreateSequenceStoreResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the store was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CreateSequenceStoreResponse.add_member(:fallback_location, Smithy::Schema::Shapes::ShapeRef.new(shape: FallbackLocation, location_name: 'fallbackLocation', traits: {"smithy.api#documentation" => "<p>An S3 location that is used to store files that have failed a direct upload.</p>"}))
    CreateSequenceStoreResponse.add_member(:e_tag_algorithm_family, Smithy::Schema::Shapes::ShapeRef.new(shape: ETagAlgorithmFamily, location_name: 'eTagAlgorithmFamily', traits: {"smithy.api#documentation" => "<p>The algorithm family of the ETag.</p>"}))
    CreateSequenceStoreResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the sequence store.</p>"}))
    CreateSequenceStoreResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The status message of the sequence store.</p>"}))
    CreateSequenceStoreResponse.add_member(:propagated_set_level_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: PropagatedSetLevelTags, location_name: 'propagatedSetLevelTags', traits: {"smithy.api#documentation" => "<p>The tags keys to propagate to the S3 objects associated with read sets in the sequence store.</p>"}))
    CreateSequenceStoreResponse.add_member(:s3_access, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreS3Access, location_name: 's3Access'))
    CreateSequenceStoreResponse.type = Types::CreateSequenceStoreResponse
    CreateShareRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to be shared.</p>", "smithy.api#required" => {}}))
    CreateShareRequest.add_member(:principal_subscriber, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'principalSubscriber', traits: {"smithy.api#documentation" => "<p>The principal subscriber is the account being offered shared access to the resource. </p>", "smithy.api#required" => {}}))
    CreateShareRequest.add_member(:share_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareName, location_name: 'shareName', traits: {"smithy.api#documentation" => "<p>A name that the owner defines for the share.</p>"}))
    CreateShareRequest.type = Types::CreateShareRequest
    CreateShareResponse.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'shareId', traits: {"smithy.api#documentation" => "<p>The ID that HealthOmics generates for the share.</p>"}))
    CreateShareResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the share.</p>"}))
    CreateShareResponse.add_member(:share_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareName, location_name: 'shareName', traits: {"smithy.api#documentation" => "<p>The name of the share.</p>"}))
    CreateShareResponse.type = Types::CreateShareResponse
    CreateVariantStoreRequest.add_member(:reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceItem, location_name: 'reference', traits: {"smithy.api#documentation" => "<p>The genome reference for the store's variants.</p>", "smithy.api#required" => {}}))
    CreateVariantStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the store.</p>"}))
    CreateVariantStoreRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the store.</p>"}))
    CreateVariantStoreRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags for the store.</p>"}))
    CreateVariantStoreRequest.add_member(:sse_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SseConfig, location_name: 'sseConfig', traits: {"smithy.api#documentation" => "<p>Server-side encryption (SSE) settings for the store.</p>"}))
    CreateVariantStoreRequest.type = Types::CreateVariantStoreRequest
    CreateVariantStoreResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#required" => {}}))
    CreateVariantStoreResponse.add_member(:reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceItem, location_name: 'reference', traits: {"smithy.api#documentation" => "<p>The store's genome reference.</p>"}))
    CreateVariantStoreResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The store's status.</p>", "smithy.api#required" => {}}))
    CreateVariantStoreResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>", "smithy.api#required" => {}}))
    CreateVariantStoreResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the store was created.</p>", "smithy.api#required" => {}}))
    CreateVariantStoreResponse.type = Types::CreateVariantStoreResponse
    CreateWorkflowRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name (optional but highly recommended) for the workflow to locate relevant information in the CloudWatch logs and Amazon Web Services HealthOmics console. </p>"}))
    CreateWorkflowRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the workflow.</p>"}))
    CreateWorkflowRequest.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowEngine, location_name: 'engine', traits: {"smithy.api#documentation" => "<p>The workflow engine for the workflow. This is only required if you have workflow definition files from more than one engine in your zip file. Otherwise, the service can detect the engine automatically from your workflow definition.</p>"}))
    CreateWorkflowRequest.add_member(:definition_zip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Blob, location_name: 'definitionZip', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>A ZIP archive containing the main workflow definition file and dependencies that it imports for the workflow. You can use a file with a ://fileb prefix instead of the Base64 string. For more information, see <a href=\"https://docs.aws.amazon.com/omics/latest/dev/workflow-defn-requirements.html\">Workflow definition requirements</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>"}))
    CreateWorkflowRequest.add_member(:definition_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDefinition, location_name: 'definitionUri', traits: {"smithy.api#documentation" => "<p>The S3 URI of a definition for the workflow. The S3 bucket must be in the same region as the workflow.</p>"}))
    CreateWorkflowRequest.add_member(:main, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowMain, location_name: 'main', traits: {"smithy.api#documentation" => "<p>The path of the main definition file for the workflow. This parameter is not required if the ZIP archive contains only one workflow definition file, or if the main definition file is named “main”. An example path is: <code>workflow-definition/main-file.wdl</code>. </p>"}))
    CreateWorkflowRequest.add_member(:parameter_template, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowParameterTemplate, location_name: 'parameterTemplate', traits: {"smithy.api#documentation" => "<p>A parameter template for the workflow. If this field is blank, Amazon Web Services HealthOmics will automatically parse the parameter template values from your workflow definition file. To override these service generated default values, provide a parameter template. To view an example of a parameter template, see <a href=\"https://docs.aws.amazon.com/omics/latest/dev/parameter-templates.html\">Parameter template files</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>"}))
    CreateWorkflowRequest.add_member(:storage_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'storageCapacity', traits: {"smithy.api#documentation" => "<p>The default static storage capacity (in gibibytes) for runs that use this workflow or workflow version. The <code>storageCapacity</code> can be overwritten at run time. The storage capacity is not required for runs with a <code>DYNAMIC</code> storage type.</p>", "smithy.api#range" => {"min" => 0, "max" => 100000}}))
    CreateWorkflowRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags for the workflow. You can define up to 50 tags for the workflow. For more information, see <a href=\"https://docs.aws.amazon.com/omics/latest/dev/add-a-tag.html\">Adding a tag</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>"}))
    CreateWorkflowRequest.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowRequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>An idempotency token to ensure that duplicate workflows are not created when Amazon Web Services HealthOmics submits retry requests.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateWorkflowRequest.add_member(:accelerators, Smithy::Schema::Shapes::ShapeRef.new(shape: Accelerators, location_name: 'accelerators', traits: {"smithy.api#documentation" => "<p>The computational accelerator specified to run the workflow.</p>"}))
    CreateWorkflowRequest.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageType, location_name: 'storageType', traits: {"smithy.api#documentation" => "<p>The default storage type for runs that use this workflow. The <code>storageType</code> can be overridden at run time. <code>DYNAMIC</code> storage dynamically scales the storage up or down, based on file system utilization. <code>STATIC</code> storage allocates a fixed amount of storage. For more information about dynamic and static storage types, see <a href=\"https://docs.aws.amazon.com/omics/latest/dev/workflows-run-types.html\">Run storage types</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>"}))
    CreateWorkflowRequest.add_member(:readme_markdown, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadmeMarkdown, location_name: 'readmeMarkdown', traits: {"smithy.api#documentation" => "<p>The markdown content for the workflow's README file. This provides documentation and usage information for users of the workflow.</p>"}))
    CreateWorkflowRequest.add_member(:parameter_template_path, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterTemplatePath, location_name: 'parameterTemplatePath', traits: {"smithy.api#documentation" => "<p>The path to the workflow parameter template JSON file within the repository. This file defines the input parameters for runs that use this workflow. If not specified, the workflow will be created without a parameter template.</p>"}))
    CreateWorkflowRequest.add_member(:readme_path, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadmePath, location_name: 'readmePath', traits: {"smithy.api#documentation" => "<p>The path to the workflow README markdown file within the repository. This file provides documentation and usage information for the workflow. If not specified, the <code>README.md</code> file from the root directory of the repository will be used.</p>"}))
    CreateWorkflowRequest.add_member(:definition_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionRepository, location_name: 'definitionRepository', traits: {"smithy.api#documentation" => "<p>The repository information for the workflow definition. This allows you to source your workflow definition directly from a code repository.</p>"}))
    CreateWorkflowRequest.add_member(:workflow_bucket_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowBucketOwnerId, location_name: 'workflowBucketOwnerId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the expected owner of the S3 bucket that contains the workflow definition. If not specified, the service skips the validation.</p>"}))
    CreateWorkflowRequest.add_member(:readme_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3UriForObject, location_name: 'readmeUri', traits: {"smithy.api#documentation" => "<p>The S3 URI of the README file for the workflow. This file provides documentation and usage information for the workflow. Requirements include:</p> <ul> <li> <p>The S3 URI must begin with <code>s3://USER-OWNED-BUCKET/</code> </p> </li> <li> <p>The requester must have access to the S3 bucket and object.</p> </li> <li> <p>The max README content length is 500 KiB.</p> </li> </ul>"}))
    CreateWorkflowRequest.type = Types::CreateWorkflowRequest
    CreateWorkflowResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The workflow's ARN.</p>"}))
    CreateWorkflowResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The workflow's ID.</p>"}))
    CreateWorkflowResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The workflow's status.</p>"}))
    CreateWorkflowResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The workflow's tags.</p>"}))
    CreateWorkflowResponse.add_member(:uuid, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowUuid, location_name: 'uuid', traits: {"smithy.api#documentation" => "<p>The universally unique identifier (UUID) value for this workflow.</p>"}))
    CreateWorkflowResponse.type = Types::CreateWorkflowResponse
    CreateWorkflowVersionRequest.add_member(:workflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'workflowId', traits: {"smithy.api#documentation" => "<p>The ID of the workflow where you are creating the new version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    CreateWorkflowVersionRequest.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p>A name for the workflow version. Provide a version name that is unique for this workflow. You cannot change the name after HealthOmics creates the version. </p> <p>The version name must start with a letter or number and it can include upper-case and lower-case letters, numbers, hyphens, periods and underscores. The maximum length is 64 characters. You can use a simple naming scheme, such as version1, version2, version3. You can also match your workflow versions with your own internal versioning conventions, such as 2.7.0, 2.7.1, 2.7.2.</p>", "smithy.api#required" => {}}))
    CreateWorkflowVersionRequest.add_member(:definition_zip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Blob, location_name: 'definitionZip', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>A zip archive containing the workflow definition for this workflow version.</p>"}))
    CreateWorkflowVersionRequest.add_member(:definition_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDefinition, location_name: 'definitionUri', traits: {"smithy.api#documentation" => "<p>The URI specifies the location of the workflow definition for this workflow version.</p>"}))
    CreateWorkflowVersionRequest.add_member(:accelerators, Smithy::Schema::Shapes::ShapeRef.new(shape: Accelerators, location_name: 'accelerators', traits: {"smithy.api#documentation" => "<p>The computational accelerator for this workflow version.</p>"}))
    CreateWorkflowVersionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for this workflow version.</p>"}))
    CreateWorkflowVersionRequest.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowEngine, location_name: 'engine', traits: {"smithy.api#documentation" => "<p>The workflow engine for this workflow version.</p>"}))
    CreateWorkflowVersionRequest.add_member(:main, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowMain, location_name: 'main', traits: {"smithy.api#documentation" => "<p>The path of the main definition file for this workflow version.</p>"}))
    CreateWorkflowVersionRequest.add_member(:parameter_template, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowParameterTemplate, location_name: 'parameterTemplate', traits: {"smithy.api#documentation" => "<p>The parameter template defines the input parameters for runs that use this workflow version.</p>"}))
    CreateWorkflowVersionRequest.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowRequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>To ensure that requests don't run multiple times, specify a unique ID for each request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateWorkflowVersionRequest.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageType, location_name: 'storageType', traits: {"smithy.api#documentation" => "<p>The default storage type for runs that use this workflow. STATIC storage allocates a fixed amount of storage. DYNAMIC storage dynamically scales the storage up or down, based on file system utilization. For more information about static and dynamic storage, see <a href=\"https://docs.aws.amazon.com/omics/latest/dev/Using-workflows.html\">Running workflows</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>"}))
    CreateWorkflowVersionRequest.add_member(:storage_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'storageCapacity', traits: {"smithy.api#documentation" => "<p>The default static storage capacity (in gibibytes) for runs that use this workflow or workflow version.</p>", "smithy.api#range" => {"min" => 0, "max" => 100000}}))
    CreateWorkflowVersionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Optional tags to associate with this workflow version.</p>"}))
    CreateWorkflowVersionRequest.add_member(:workflow_bucket_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowBucketOwnerId, location_name: 'workflowBucketOwnerId', traits: {"smithy.api#documentation" => "<p>Amazon Web Services Id of the owner of the S3 bucket that contains the workflow definition. You need to specify this parameter if your account is not the bucket owner.</p>"}))
    CreateWorkflowVersionRequest.add_member(:readme_markdown, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadmeMarkdown, location_name: 'readmeMarkdown', traits: {"smithy.api#documentation" => "<p>The markdown content for the workflow version's README file. This provides documentation and usage information for users of this specific workflow version.</p>"}))
    CreateWorkflowVersionRequest.add_member(:parameter_template_path, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterTemplatePath, location_name: 'parameterTemplatePath', traits: {"smithy.api#documentation" => "<p>The path to the workflow version parameter template JSON file within the repository. This file defines the input parameters for runs that use this workflow version. If not specified, the workflow version will be created without a parameter template.</p>"}))
    CreateWorkflowVersionRequest.add_member(:readme_path, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadmePath, location_name: 'readmePath', traits: {"smithy.api#documentation" => "<p>The path to the workflow version README markdown file within the repository. This file provides documentation and usage information for the workflow. If not specified, the <code>README.md</code> file from the root directory of the repository will be used.</p>"}))
    CreateWorkflowVersionRequest.add_member(:definition_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionRepository, location_name: 'definitionRepository', traits: {"smithy.api#documentation" => "<p>The repository information for the workflow version definition. This allows you to source your workflow version definition directly from a code repository.</p>"}))
    CreateWorkflowVersionRequest.add_member(:readme_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3UriForObject, location_name: 'readmeUri', traits: {"smithy.api#documentation" => "<p>The S3 URI of the README file for the workflow version. This file provides documentation and usage information for the workflow version. Requirements include:</p> <ul> <li> <p>The S3 URI must begin with <code>s3://USER-OWNED-BUCKET/</code> </p> </li> <li> <p>The requester must have access to the S3 bucket and object.</p> </li> <li> <p>The max README content length is 500 KiB.</p> </li> </ul>"}))
    CreateWorkflowVersionRequest.type = Types::CreateWorkflowVersionRequest
    CreateWorkflowVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the workflow version.</p>"}))
    CreateWorkflowVersionResponse.add_member(:workflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'workflowId', traits: {"smithy.api#documentation" => "<p>The workflow's ID.</p>"}))
    CreateWorkflowVersionResponse.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p>The workflow version name.</p>"}))
    CreateWorkflowVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The workflow version status.</p>"}))
    CreateWorkflowVersionResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The workflow version's tags.</p>"}))
    CreateWorkflowVersionResponse.add_member(:uuid, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowUuid, location_name: 'uuid', traits: {"smithy.api#documentation" => "<p>The universally unique identifier (UUID) value for this workflow version.</p>"}))
    CreateWorkflowVersionResponse.type = Types::CreateWorkflowVersionResponse
    DefinitionRepository.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'connectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connection to the source code repository.</p>", "smithy.api#required" => {}}))
    DefinitionRepository.add_member(:full_repository_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FullRepositoryId, location_name: 'fullRepositoryId', traits: {"smithy.api#documentation" => "<p>The full repository identifier, including the repository owner and name. For example, 'repository-owner/repository-name'.</p>", "smithy.api#required" => {}}))
    DefinitionRepository.add_member(:source_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceReference, location_name: 'sourceReference', traits: {"smithy.api#documentation" => "<p>The source reference for the repository, such as a branch name, tag, or commit ID.</p>"}))
    DefinitionRepository.add_member(:exclude_file_patterns, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeFilePatternList, location_name: 'excludeFilePatterns', traits: {"smithy.api#documentation" => "<p>A list of file patterns to exclude when retrieving the workflow definition from the repository.</p>"}))
    DefinitionRepository.type = Types::DefinitionRepository
    DefinitionRepositoryDetails.add_member(:connection_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionArn, location_name: 'connectionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the connection to the source code repository.</p>"}))
    DefinitionRepositoryDetails.add_member(:full_repository_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FullRepositoryId, location_name: 'fullRepositoryId', traits: {"smithy.api#documentation" => "<p>The full repository identifier, including the repository owner and name. For example, 'repository-owner/repository-name'.</p>"}))
    DefinitionRepositoryDetails.add_member(:source_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceReference, location_name: 'sourceReference', traits: {"smithy.api#documentation" => "<p>The source reference for the repository, such as a branch name, tag, or commit ID.</p>"}))
    DefinitionRepositoryDetails.add_member(:provider_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'providerType', traits: {"smithy.api#documentation" => "<p>The provider type of the source code repository, such as Bitbucket, GitHub, GitHubEnterpriseServer, GitLab, and GitLabSelfManaged.</p>"}))
    DefinitionRepositoryDetails.add_member(:provider_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'providerEndpoint', traits: {"smithy.api#documentation" => "<p>The endpoint URL of the source code repository provider.</p>"}))
    DefinitionRepositoryDetails.type = Types::DefinitionRepositoryDetails
    DeleteAnnotationStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAnnotationStoreRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'force', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether to force deletion.</p>", "smithy.api#httpQuery" => "force"}))
    DeleteAnnotationStoreRequest.type = Types::DeleteAnnotationStoreRequest
    DeleteAnnotationStoreResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The store's status.</p>", "smithy.api#required" => {}}))
    DeleteAnnotationStoreResponse.type = Types::DeleteAnnotationStoreResponse
    DeleteAnnotationStoreVersionsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the annotation store from which versions are being deleted. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAnnotationStoreVersionsRequest.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionList, location_name: 'versions', traits: {"smithy.api#documentation" => "<p> The versions of an annotation store to be deleted. </p>", "smithy.api#required" => {}}))
    DeleteAnnotationStoreVersionsRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'force', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p> Forces the deletion of an annotation store version when imports are in-progress.. </p>", "smithy.api#httpQuery" => "force"}))
    DeleteAnnotationStoreVersionsRequest.type = Types::DeleteAnnotationStoreVersionsRequest
    DeleteAnnotationStoreVersionsResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionDeleteErrorList, location_name: 'errors', traits: {"smithy.api#documentation" => "<p> Any errors that occur when attempting to delete an annotation store version. </p>"}))
    DeleteAnnotationStoreVersionsResponse.type = Types::DeleteAnnotationStoreVersionsResponse
    DeleteReferenceRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The reference's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "referenceId"}))
    DeleteReferenceRequest.add_member(:reference_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'referenceStoreId', traits: {"smithy.api#documentation" => "<p>The reference's store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteReferenceRequest.type = Types::DeleteReferenceRequest
    DeleteReferenceResponse.type = Types::DeleteReferenceResponse
    DeleteReferenceStoreRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "referenceStoreId"}))
    DeleteReferenceStoreRequest.type = Types::DeleteReferenceStoreRequest
    DeleteReferenceStoreResponse.type = Types::DeleteReferenceStoreResponse
    DeleteRunCacheRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>Run cache identifier for the cache you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRunCacheRequest.type = Types::DeleteRunCacheRequest
    DeleteRunGroupRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The run group's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRunGroupRequest.type = Types::DeleteRunGroupRequest
    DeleteRunRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The run's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRunRequest.type = Types::DeleteRunRequest
    DeleteS3AccessPolicyRequest.add_member(:s3_access_point_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessPointArn, location_name: 's3AccessPointArn', traits: {"smithy.api#documentation" => "<p>The S3 access point ARN that has the access policy.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteS3AccessPolicyRequest.type = Types::DeleteS3AccessPolicyRequest
    DeleteS3AccessPolicyResponse.type = Types::DeleteS3AccessPolicyResponse
    DeleteSequenceStoreRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The sequence store's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "sequenceStoreId"}))
    DeleteSequenceStoreRequest.type = Types::DeleteSequenceStoreRequest
    DeleteSequenceStoreResponse.type = Types::DeleteSequenceStoreResponse
    DeleteShareRequest.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'shareId', traits: {"smithy.api#documentation" => "<p>The ID for the resource share to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteShareRequest.type = Types::DeleteShareRequest
    DeleteShareResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the share being deleted.</p>"}))
    DeleteShareResponse.type = Types::DeleteShareResponse
    DeleteVariantStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVariantStoreRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: 'force', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether to force deletion.</p>", "smithy.api#httpQuery" => "force"}))
    DeleteVariantStoreRequest.type = Types::DeleteVariantStoreRequest
    DeleteVariantStoreResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The store's status.</p>", "smithy.api#required" => {}}))
    DeleteVariantStoreResponse.type = Types::DeleteVariantStoreResponse
    DeleteWorkflowRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The workflow's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkflowRequest.type = Types::DeleteWorkflowRequest
    DeleteWorkflowVersionRequest.add_member(:workflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'workflowId', traits: {"smithy.api#documentation" => "<p>The workflow's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    DeleteWorkflowVersionRequest.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p>The workflow version name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkflowVersionRequest.type = Types::DeleteWorkflowVersionRequest
    ETag.add_member(:algorithm, Smithy::Schema::Shapes::ShapeRef.new(shape: ETagAlgorithm, location_name: 'algorithm', traits: {"smithy.api#documentation" => "<p>The algorithm used to calculate the read set’s ETag(s).</p>"}))
    ETag.add_member(:source1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'source1', traits: {"smithy.api#documentation" => "<p>The ETag hash calculated on Source1 of the read set.</p>"}))
    ETag.add_member(:source2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'source2', traits: {"smithy.api#documentation" => "<p>The ETag hash calculated on Source2 of the read set.</p>"}))
    ETag.type = Types::ETag
    ExcludeFilePatternList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ExportReadSet.add_member(:read_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetId, location_name: 'readSetId', traits: {"smithy.api#documentation" => "<p>The set's ID.</p>", "smithy.api#required" => {}}))
    ExportReadSet.type = Types::ExportReadSet
    ExportReadSetDetail.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The set's ID.</p>", "smithy.api#required" => {}}))
    ExportReadSetDetail.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetExportJobItemStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The set's status.</p>", "smithy.api#required" => {}}))
    ExportReadSetDetail.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The set's status message.</p>"}))
    ExportReadSetDetail.type = Types::ExportReadSetDetail
    ExportReadSetDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportReadSetDetail)
    ExportReadSetFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetExportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A status to filter on.</p>"}))
    ExportReadSetFilter.add_member(:created_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAfter', traits: {"smithy.api#documentation" => "<p>The filter's start date.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ExportReadSetFilter.add_member(:created_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdBefore', traits: {"smithy.api#documentation" => "<p>The filter's end date.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ExportReadSetFilter.type = Types::ExportReadSetFilter
    ExportReadSetJobDetail.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    ExportReadSetJobDetail.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The job's sequence store ID.</p>", "smithy.api#required" => {}}))
    ExportReadSetJobDetail.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The job's destination in Amazon S3.</p>", "smithy.api#required" => {}}))
    ExportReadSetJobDetail.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetExportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    ExportReadSetJobDetail.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ExportReadSetJobDetail.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p>When the job completed.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ExportReadSetJobDetail.type = Types::ExportReadSetJobDetail
    ExportReadSetJobDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportReadSetJobDetail)
    ExportReadSetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportReadSet)
    FileInformation.add_member(:total_parts, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalParts', traits: {"smithy.api#documentation" => "<p>The file's total parts.</p>", "smithy.api#range" => {"min" => 1, "max" => 10000}}))
    FileInformation.add_member(:part_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'partSize', traits: {"smithy.api#documentation" => "<p>The file's part size.</p>", "smithy.api#range" => {"min" => 1, "max" => 5368709120}}))
    FileInformation.add_member(:content_length, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'contentLength', traits: {"smithy.api#documentation" => "<p>The file's content length.</p>", "smithy.api#range" => {"min" => 1, "max" => 5497558138880}}))
    FileInformation.add_member(:s3_access, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetS3Access, location_name: 's3Access', traits: {"smithy.api#documentation" => "<p>The S3 URI metadata of a sequence store.</p>"}))
    FileInformation.type = Types::FileInformation
    Filter.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'resourceArns', traits: {"smithy.api#documentation" => "<p>Filter based on the Amazon Resource Number (ARN) of the resource. You can specify up to 10 values.</p>"}))
    Filter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusList, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Filter based on the resource status. You can specify up to 10 values.</p>"}))
    Filter.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TypeList, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of resources to be filtered. You can specify one or more of the resource types.</p>"}))
    Filter.type = Types::Filter
    FormatOptions.add_member(:tsv_options, Types::FormatOptions::TsvOptions, Smithy::Schema::Shapes::ShapeRef.new(shape: TsvOptions, location_name: 'tsvOptions', traits: {"smithy.api#documentation" => "<p>Options for a TSV file.</p>"}))
    FormatOptions.add_member(:vcf_options, Types::FormatOptions::VcfOptions, Smithy::Schema::Shapes::ShapeRef.new(shape: VcfOptions, location_name: 'vcfOptions', traits: {"smithy.api#documentation" => "<p>Options for a VCF file.</p>"}))
    FormatOptions.add_member(:unknown, Types::FormatOptions::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    FormatOptions.type = Types::FormatOptions
    FormatToHeader.key = Smithy::Schema::Shapes::ShapeRef.new(shape: FormatToHeaderKey)
    FormatToHeader.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    GetAnnotationImportRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnnotationImportRequest.type = Types::GetAnnotationImportRequest
    GetAnnotationImportResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreName, location_name: 'destinationName', traits: {"smithy.api#documentation" => "<p>The job's destination annotation store.</p>", "smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p> The name of the annotation store version. </p>", "smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The job's service role ARN.</p>", "smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusMsg, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The job's status message.</p>", "smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>When the job was updated.</p>", "smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CompletionTime, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p>When the job completed.</p>", "smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationImportItemDetails, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The job's imported items.</p>", "smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:run_left_normalization, Smithy::Schema::Shapes::ShapeRef.new(shape: RunLeftNormalization, location_name: 'runLeftNormalization', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>The job's left normalization setting.</p>", "smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:format_options, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatOptions, location_name: 'formatOptions', traits: {"smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:annotation_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationFieldMap, location_name: 'annotationFields', traits: {"smithy.api#documentation" => "<p>The annotation schema generated by the parsed annotation data.</p>"}))
    GetAnnotationImportResponse.type = Types::GetAnnotationImportResponse
    GetAnnotationStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnnotationStoreRequest.type = Types::GetAnnotationStoreRequest
    GetAnnotationStoreResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceItem, location_name: 'reference', traits: {"smithy.api#documentation" => "<p>The store's genome reference.</p>", "smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The store's status.</p>", "smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'storeArn', traits: {"smithy.api#documentation" => "<p>The store's ARN.</p>", "smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>", "smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The store's description.</p>", "smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:sse_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SseConfig, location_name: 'sseConfig', traits: {"smithy.api#documentation" => "<p>The store's server-side encryption (SSE) settings.</p>", "smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the store was created.</p>", "smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>When the store was updated.</p>", "smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The store's tags.</p>", "smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:store_options, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreOptions, location_name: 'storeOptions', traits: {"smithy.api#documentation" => "<p>The store's parsing options.</p>"}))
    GetAnnotationStoreResponse.add_member(:store_format, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreFormat, location_name: 'storeFormat', traits: {"smithy.api#documentation" => "<p>The store's annotation file format.</p>"}))
    GetAnnotationStoreResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>A status message.</p>", "smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:store_size_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'storeSizeBytes', traits: {"smithy.api#documentation" => "<p>The store's size in bytes.</p>", "smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:num_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'numVersions', traits: {"smithy.api#documentation" => "<p> An integer indicating how many versions of an annotation store exist. </p>", "smithy.api#required" => {}}))
    GetAnnotationStoreResponse.type = Types::GetAnnotationStoreResponse
    GetAnnotationStoreVersionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name given to an annotation store version to distinguish it from others. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnnotationStoreVersionRequest.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p> The name given to an annotation store version to distinguish it from others. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnnotationStoreVersionRequest.type = Types::GetAnnotationStoreVersionRequest
    GetAnnotationStoreVersionResponse.add_member(:store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'storeId', traits: {"smithy.api#documentation" => "<p> The store ID for annotation store version. </p>", "smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The annotation store version ID. </p>", "smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of an annotation store version. </p>", "smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'versionArn', traits: {"smithy.api#documentation" => "<p> The Arn for the annotation store. </p>", "smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the annotation store. </p>", "smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p> The name given to an annotation store version to distinguish it from others. </p>", "smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description for an annotation store version. </p>", "smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> The time stamp for when an annotation store version was created. </p>", "smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p> The time stamp for when an annotation store version was updated. </p>", "smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p> Any tags associated with an annotation store version. </p>", "smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:version_options, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionOptions, location_name: 'versionOptions', traits: {"smithy.api#documentation" => "<p> The options for an annotation store version. </p>"}))
    GetAnnotationStoreVersionResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p> The status of an annotation store version. </p>", "smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:version_size_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'versionSizeBytes', traits: {"smithy.api#documentation" => "<p> The size of the annotation store version in Bytes. </p>", "smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.type = Types::GetAnnotationStoreVersionResponse
    GetReadSetActivationJobRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivationJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadSetActivationJobRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The job's sequence store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadSetActivationJobRequest.type = Types::GetReadSetActivationJobRequest
    GetReadSetActivationJobResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivationJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    GetReadSetActivationJobResponse.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The job's sequence store ID.</p>", "smithy.api#required" => {}}))
    GetReadSetActivationJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetActivationJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    GetReadSetActivationJobResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The job's status message.</p>"}))
    GetReadSetActivationJobResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetReadSetActivationJobResponse.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p>When the job completed.</p>", "smithy.api#timestampFormat" => "date-time"}))
    GetReadSetActivationJobResponse.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateReadSetSourceList, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The job's source files.</p>"}))
    GetReadSetActivationJobResponse.type = Types::GetReadSetActivationJobResponse
    GetReadSetExportJobRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The job's sequence store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadSetExportJobRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadSetExportJobRequest.type = Types::GetReadSetExportJobRequest
    GetReadSetExportJobResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    GetReadSetExportJobResponse.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The job's sequence store ID.</p>", "smithy.api#required" => {}}))
    GetReadSetExportJobResponse.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The job's destination in Amazon S3.</p>", "smithy.api#required" => {}}))
    GetReadSetExportJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetExportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    GetReadSetExportJobResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The job's status message.</p>"}))
    GetReadSetExportJobResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetReadSetExportJobResponse.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p>When the job completed.</p>", "smithy.api#timestampFormat" => "date-time"}))
    GetReadSetExportJobResponse.add_member(:read_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportReadSetDetailList, location_name: 'readSets', traits: {"smithy.api#documentation" => "<p>The job's read sets.</p>"}))
    GetReadSetExportJobResponse.type = Types::GetReadSetExportJobResponse
    GetReadSetImportJobRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadSetImportJobRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The job's sequence store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadSetImportJobRequest.type = Types::GetReadSetImportJobRequest
    GetReadSetImportJobResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    GetReadSetImportJobResponse.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The job's sequence store ID.</p>", "smithy.api#required" => {}}))
    GetReadSetImportJobResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The job's service role ARN.</p>", "smithy.api#required" => {}}))
    GetReadSetImportJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetImportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    GetReadSetImportJobResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The job's status message.</p>"}))
    GetReadSetImportJobResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetReadSetImportJobResponse.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p>When the job completed.</p>", "smithy.api#timestampFormat" => "date-time"}))
    GetReadSetImportJobResponse.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportReadSetSourceList, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The job's source files.</p>", "smithy.api#required" => {}}))
    GetReadSetImportJobResponse.type = Types::GetReadSetImportJobResponse
    GetReadSetMetadataRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The read set's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "readSetId"}))
    GetReadSetMetadataRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The read set's sequence store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadSetMetadataRequest.type = Types::GetReadSetMetadataRequest
    GetReadSetMetadataResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The read set's ID.</p>", "smithy.api#required" => {}}))
    GetReadSetMetadataResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The read set's ARN.</p>", "smithy.api#required" => {}}))
    GetReadSetMetadataResponse.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The read set's sequence store ID.</p>", "smithy.api#required" => {}}))
    GetReadSetMetadataResponse.add_member(:subject_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectId, location_name: 'subjectId', traits: {"smithy.api#documentation" => "<p>The read set's subject ID.</p>"}))
    GetReadSetMetadataResponse.add_member(:sample_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleId, location_name: 'sampleId', traits: {"smithy.api#documentation" => "<p>The read set's sample ID.</p>"}))
    GetReadSetMetadataResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The read set's status.</p>", "smithy.api#required" => {}}))
    GetReadSetMetadataResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The read set's name.</p>"}))
    GetReadSetMetadataResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The read set's description.</p>"}))
    GetReadSetMetadataResponse.add_member(:file_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FileType, location_name: 'fileType', traits: {"smithy.api#documentation" => "<p>The read set's file type.</p>", "smithy.api#required" => {}}))
    GetReadSetMetadataResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the read set was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetReadSetMetadataResponse.add_member(:sequence_information, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceInformation, location_name: 'sequenceInformation', traits: {"smithy.api#documentation" => "<p>The read set's sequence information.</p>"}))
    GetReadSetMetadataResponse.add_member(:reference_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceArn, location_name: 'referenceArn', traits: {"smithy.api#documentation" => "<p>The read set's genome reference ARN.</p>"}))
    GetReadSetMetadataResponse.add_member(:files, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetFiles, location_name: 'files', traits: {"smithy.api#documentation" => "<p>The read set's files.</p>"}))
    GetReadSetMetadataResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The status message for a read set. It provides more detail as to why the read set has a status. </p>"}))
    GetReadSetMetadataResponse.add_member(:creation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationType, location_name: 'creationType', traits: {"smithy.api#documentation" => "<p> The creation type of the read set. </p>"}))
    GetReadSetMetadataResponse.add_member(:etag, Smithy::Schema::Shapes::ShapeRef.new(shape: ETag, location_name: 'etag', traits: {"smithy.api#documentation" => "<p>The entity tag (ETag) is a hash of the object meant to represent its semantic content.</p>"}))
    GetReadSetMetadataResponse.add_member(:creation_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationJobId, location_name: 'creationJobId', traits: {"smithy.api#documentation" => "<p>The read set's creation job ID.</p>"}))
    GetReadSetMetadataResponse.type = Types::GetReadSetMetadataResponse
    GetReadSetRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The read set's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "readSetId"}))
    GetReadSetRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The read set's sequence store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadSetRequest.add_member(:file, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetFile, location_name: 'file', traits: {"smithy.api#documentation" => "<p>The file to retrieve.</p>", "smithy.api#httpQuery" => "file"}))
    GetReadSetRequest.add_member(:part_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'partNumber', traits: {"smithy.api#documentation" => "<p>The part number to retrieve.</p>", "smithy.api#httpQuery" => "partNumber", "smithy.api#range" => {"min" => 1, "max" => 10000}, "smithy.api#required" => {}}))
    GetReadSetRequest.type = Types::GetReadSetRequest
    GetReadSetResponse.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetStreamingBlob, location_name: 'payload', traits: {"smithy.api#default" => "", "smithy.api#documentation" => "<p>The read set file payload.</p>", "smithy.api#httpPayload" => {}}))
    GetReadSetResponse[:http_payload] = :payload
    GetReadSetResponse[:http_payload_member] = GetReadSetResponse.member(:payload)
    GetReadSetResponse.type = Types::GetReadSetResponse
    GetReferenceImportJobRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReferenceImportJobRequest.add_member(:reference_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'referenceStoreId', traits: {"smithy.api#documentation" => "<p>The job's reference store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReferenceImportJobRequest.type = Types::GetReferenceImportJobRequest
    GetReferenceImportJobResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    GetReferenceImportJobResponse.add_member(:reference_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'referenceStoreId', traits: {"smithy.api#documentation" => "<p>The job's reference store ID.</p>", "smithy.api#required" => {}}))
    GetReferenceImportJobResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The job's service role ARN.</p>", "smithy.api#required" => {}}))
    GetReferenceImportJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceImportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    GetReferenceImportJobResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The job's status message.</p>"}))
    GetReferenceImportJobResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetReferenceImportJobResponse.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p>When the job completed.</p>", "smithy.api#timestampFormat" => "date-time"}))
    GetReferenceImportJobResponse.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportReferenceSourceList, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The job's source files.</p>", "smithy.api#required" => {}}))
    GetReferenceImportJobResponse.type = Types::GetReferenceImportJobResponse
    GetReferenceMetadataRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The reference's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "referenceId"}))
    GetReferenceMetadataRequest.add_member(:reference_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'referenceStoreId', traits: {"smithy.api#documentation" => "<p>The reference's reference store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReferenceMetadataRequest.type = Types::GetReferenceMetadataRequest
    GetReferenceMetadataResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The reference's ID.</p>", "smithy.api#required" => {}}))
    GetReferenceMetadataResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The reference's ARN.</p>", "smithy.api#required" => {}}))
    GetReferenceMetadataResponse.add_member(:reference_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'referenceStoreId', traits: {"smithy.api#documentation" => "<p>The reference's reference store ID.</p>", "smithy.api#required" => {}}))
    GetReferenceMetadataResponse.add_member(:md5, Smithy::Schema::Shapes::ShapeRef.new(shape: Md5, location_name: 'md5', traits: {"smithy.api#documentation" => "<p>The reference's MD5 checksum.</p>", "smithy.api#required" => {}}))
    GetReferenceMetadataResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The reference's status.</p>"}))
    GetReferenceMetadataResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The reference's name.</p>"}))
    GetReferenceMetadataResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The reference's description.</p>"}))
    GetReferenceMetadataResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the reference was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetReferenceMetadataResponse.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>When the reference was updated.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetReferenceMetadataResponse.add_member(:files, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceFiles, location_name: 'files', traits: {"smithy.api#documentation" => "<p>The reference's files.</p>"}))
    GetReferenceMetadataResponse.add_member(:creation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceCreationType, location_name: 'creationType', traits: {"smithy.api#documentation" => "<p>The reference's creation type.</p>"}))
    GetReferenceMetadataResponse.add_member(:creation_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationJobId, location_name: 'creationJobId', traits: {"smithy.api#documentation" => "<p>The reference's creation job ID.</p>"}))
    GetReferenceMetadataResponse.type = Types::GetReferenceMetadataResponse
    GetReferenceRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The reference's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "referenceId"}))
    GetReferenceRequest.add_member(:reference_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'referenceStoreId', traits: {"smithy.api#documentation" => "<p>The reference's store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReferenceRequest.add_member(:range, Smithy::Schema::Shapes::ShapeRef.new(shape: Range, location_name: 'range', traits: {"smithy.api#documentation" => "<p>The range to retrieve.</p>", "smithy.api#httpHeader" => "Range"}))
    GetReferenceRequest.add_member(:part_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'partNumber', traits: {"smithy.api#documentation" => "<p>The part number to retrieve.</p>", "smithy.api#httpQuery" => "partNumber", "smithy.api#range" => {"min" => 1, "max" => 10000}, "smithy.api#required" => {}}))
    GetReferenceRequest.add_member(:file, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceFile, location_name: 'file', traits: {"smithy.api#documentation" => "<p>The file to retrieve.</p>", "smithy.api#httpQuery" => "file"}))
    GetReferenceRequest.type = Types::GetReferenceRequest
    GetReferenceResponse.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStreamingBlob, location_name: 'payload', traits: {"smithy.api#default" => "", "smithy.api#documentation" => "<p>The reference file payload.</p>", "smithy.api#httpPayload" => {}}))
    GetReferenceResponse[:http_payload] = :payload
    GetReferenceResponse[:http_payload_member] = GetReferenceResponse.member(:payload)
    GetReferenceResponse.type = Types::GetReferenceResponse
    GetReferenceStoreRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "referenceStoreId"}))
    GetReferenceStoreRequest.type = Types::GetReferenceStoreRequest
    GetReferenceStoreResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#required" => {}}))
    GetReferenceStoreResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The store's ARN.</p>", "smithy.api#required" => {}}))
    GetReferenceStoreResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>"}))
    GetReferenceStoreResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The store's description.</p>"}))
    GetReferenceStoreResponse.add_member(:sse_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SseConfig, location_name: 'sseConfig', traits: {"smithy.api#documentation" => "<p>The store's server-side encryption (SSE) settings.</p>"}))
    GetReferenceStoreResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the store was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetReferenceStoreResponse.type = Types::GetReferenceStoreResponse
    GetRunCacheRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the run cache to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRunCacheRequest.type = Types::GetRunCacheRequest
    GetRunCacheResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Unique resource identifier for the run cache.</p>"}))
    GetRunCacheResponse.add_member(:cache_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehavior, location_name: 'cacheBehavior', traits: {"smithy.api#documentation" => "<p>The default cache behavior for runs using this cache.</p>"}))
    GetRunCacheResponse.add_member(:cache_bucket_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'cacheBucketOwnerId', traits: {"smithy.api#documentation" => "<p>The identifier of the bucket owner.</p>"}))
    GetRunCacheResponse.add_member(:cache_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3UriForBucketOrObject, location_name: 'cacheS3Uri', traits: {"smithy.api#documentation" => "<p>The S3 URI where the cache data is stored.</p>"}))
    GetRunCacheResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheTimestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>Creation time of the run cache (an ISO 8601 formatted string).</p>"}))
    GetRunCacheResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: UserCustomDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The run cache description.</p>"}))
    GetRunCacheResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The run cache ID.</p>"}))
    GetRunCacheResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserCustomName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The run cache name.</p>"}))
    GetRunCacheResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The run cache status.</p>"}))
    GetRunCacheResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the run cache.</p>"}))
    GetRunCacheResponse.type = Types::GetRunCacheResponse
    GetRunGroupRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The group's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRunGroupRequest.type = Types::GetRunGroupRequest
    GetRunGroupResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The group's ARN.</p>"}))
    GetRunGroupResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The group's ID.</p>"}))
    GetRunGroupResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The group's name.</p>"}))
    GetRunGroupResponse.add_member(:max_cpus, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxCpus', traits: {"smithy.api#documentation" => "<p>The group's maximum number of CPUs to use.</p>", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    GetRunGroupResponse.add_member(:max_runs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxRuns', traits: {"smithy.api#documentation" => "<p>The maximum number of concurrent runs for the group.</p>", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    GetRunGroupResponse.add_member(:max_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxDuration', traits: {"smithy.api#documentation" => "<p>The group's maximum run time in minutes.</p>", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    GetRunGroupResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupTimestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the group was created.</p>"}))
    GetRunGroupResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The group's tags.</p>"}))
    GetRunGroupResponse.add_member(:max_gpus, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxGpus', traits: {"smithy.api#documentation" => "<p>The maximum GPUs that can be used by a run group.</p>", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    GetRunGroupResponse.type = Types::GetRunGroupResponse
    GetRunRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The run's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRunRequest.add_member(:export, Smithy::Schema::Shapes::ShapeRef.new(shape: RunExportList, location_name: 'export', traits: {"smithy.api#documentation" => "<p>The run's export format.</p>", "smithy.api#httpQuery" => "export"}))
    GetRunRequest.type = Types::GetRunRequest
    GetRunResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RunArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The run's ARN.</p>"}))
    GetRunResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The run's ID.</p>"}))
    GetRunResponse.add_member(:cache_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericIdInArn, location_name: 'cacheId', traits: {"smithy.api#documentation" => "<p>The run cache associated with the run.</p>"}))
    GetRunResponse.add_member(:cache_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehavior, location_name: 'cacheBehavior', traits: {"smithy.api#documentation" => "<p>The run cache behavior for the run.</p>"}))
    GetRunResponse.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineVersion, location_name: 'engineVersion', traits: {"smithy.api#documentation" => "<p>The actual Nextflow engine version that Amazon Web Services HealthOmics used for the run. The other workflow definition languages don't provide a value for this field.</p>"}))
    GetRunResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RunStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The run's status.</p>"}))
    GetRunResponse.add_member(:workflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'workflowId', traits: {"smithy.api#documentation" => "<p>The run's workflow ID.</p>"}))
    GetRunResponse.add_member(:workflow_type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowType, location_name: 'workflowType', traits: {"smithy.api#documentation" => "<p>The run's workflow type.</p>"}))
    GetRunResponse.add_member(:run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunId, location_name: 'runId', traits: {"smithy.api#documentation" => "<p>The run's ID.</p>"}))
    GetRunResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RunRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The run's service role ARN.</p>"}))
    GetRunResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RunName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The run's name.</p>"}))
    GetRunResponse.add_member(:run_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupId, location_name: 'runGroupId', traits: {"smithy.api#documentation" => "<p>The run's group ID.</p>"}))
    GetRunResponse.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The run's priority.</p>", "smithy.api#range" => {"min" => 0, "max" => 100000}}))
    GetRunResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDefinition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>The run's definition.</p>"}))
    GetRunResponse.add_member(:digest, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDigest, location_name: 'digest', traits: {"smithy.api#documentation" => "<p>The run's digest.</p>"}))
    GetRunResponse.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: RunParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>The run's parameters.</p>"}))
    GetRunResponse.add_member(:storage_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'storageCapacity', traits: {"smithy.api#documentation" => "<p>The run's storage capacity in gibibytes. For dynamic storage, after the run has completed, this value is the maximum amount of storage used during the run.</p>", "smithy.api#range" => {"min" => 0, "max" => 100000}}))
    GetRunResponse.add_member(:output_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: RunOutputUri, location_name: 'outputUri', traits: {"smithy.api#documentation" => "<p>The run's output URI.</p>"}))
    GetRunResponse.add_member(:log_level, Smithy::Schema::Shapes::ShapeRef.new(shape: RunLogLevel, location_name: 'logLevel', traits: {"smithy.api#documentation" => "<p>The run's log level.</p>"}))
    GetRunResponse.add_member(:resource_digests, Smithy::Schema::Shapes::ShapeRef.new(shape: RunResourceDigests, location_name: 'resourceDigests', traits: {"smithy.api#documentation" => "<p>The run's resource digests.</p>"}))
    GetRunResponse.add_member(:started_by, Smithy::Schema::Shapes::ShapeRef.new(shape: RunStartedBy, location_name: 'startedBy', traits: {"smithy.api#documentation" => "<p>Who started the run.</p>"}))
    GetRunResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: RunTimestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the run was created.</p>"}))
    GetRunResponse.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: RunTimestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>When the run started.</p>"}))
    GetRunResponse.add_member(:stop_time, Smithy::Schema::Shapes::ShapeRef.new(shape: RunTimestamp, location_name: 'stopTime', traits: {"smithy.api#documentation" => "<p>The run's stop time.</p>"}))
    GetRunResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: RunStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The run's status message.</p>"}))
    GetRunResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The run's tags.</p>"}))
    GetRunResponse.add_member(:accelerators, Smithy::Schema::Shapes::ShapeRef.new(shape: Accelerators, location_name: 'accelerators', traits: {"smithy.api#documentation" => "<p>The computational accelerator used to run the workflow.</p>"}))
    GetRunResponse.add_member(:retention_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: RunRetentionMode, location_name: 'retentionMode', traits: {"smithy.api#documentation" => "<p>The run's retention mode.</p>"}))
    GetRunResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: RunFailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The reason a run has failed.</p>"}))
    GetRunResponse.add_member(:log_location, Smithy::Schema::Shapes::ShapeRef.new(shape: RunLogLocation, location_name: 'logLocation', traits: {"smithy.api#documentation" => "<p>The location of the run log.</p>"}))
    GetRunResponse.add_member(:uuid, Smithy::Schema::Shapes::ShapeRef.new(shape: RunUuid, location_name: 'uuid', traits: {"smithy.api#documentation" => "<p>The universally unique identifier for a run.</p>"}))
    GetRunResponse.add_member(:run_output_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: RunOutputUri, location_name: 'runOutputUri', traits: {"smithy.api#documentation" => "<p>The destination for workflow outputs.</p>"}))
    GetRunResponse.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageType, location_name: 'storageType', traits: {"smithy.api#documentation" => "<p>The run's storage type.</p>"}))
    GetRunResponse.add_member(:workflow_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowOwnerId, location_name: 'workflowOwnerId', traits: {"smithy.api#documentation" => "<p>The ID of the workflow owner.</p>"}))
    GetRunResponse.add_member(:workflow_version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionName, location_name: 'workflowVersionName', traits: {"smithy.api#documentation" => "<p>The workflow version name.</p>"}))
    GetRunResponse.add_member(:workflow_uuid, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowUuid, location_name: 'workflowUuid', traits: {"smithy.api#documentation" => "<p>The universally unique identifier (UUID) value for the workflow.</p>"}))
    GetRunResponse.type = Types::GetRunResponse
    GetRunTaskRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The workflow run ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRunTaskRequest.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The task's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRunTaskRequest.type = Types::GetRunTaskRequest
    GetRunTaskResponse.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The task's ID.</p>"}))
    GetRunTaskResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The task's status.</p>"}))
    GetRunTaskResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The task's name.</p>"}))
    GetRunTaskResponse.add_member(:cpus, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'cpus', traits: {"smithy.api#documentation" => "<p>The task's CPU usage.</p>", "smithy.api#range" => {"min" => 1}}))
    GetRunTaskResponse.add_member(:cache_hit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'cacheHit', traits: {"smithy.api#documentation" => "<p>Set to true if Amazon Web Services HealthOmics found a matching entry in the run cache for this task.</p>"}))
    GetRunTaskResponse.add_member(:cache_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3UriForBucketOrObject, location_name: 'cacheS3Uri', traits: {"smithy.api#documentation" => "<p>The S3 URI of the cache location.</p>"}))
    GetRunTaskResponse.add_member(:memory, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'memory', traits: {"smithy.api#documentation" => "<p>The task's memory use in gigabytes.</p>", "smithy.api#range" => {"min" => 1}}))
    GetRunTaskResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskTimestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the task was created.</p>"}))
    GetRunTaskResponse.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskTimestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The task's start time.</p>"}))
    GetRunTaskResponse.add_member(:stop_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskTimestamp, location_name: 'stopTime', traits: {"smithy.api#documentation" => "<p>The task's stop time.</p>"}))
    GetRunTaskResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The task's status message.</p>"}))
    GetRunTaskResponse.add_member(:log_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskLogStream, location_name: 'logStream', traits: {"smithy.api#documentation" => "<p>The task's log stream.</p>"}))
    GetRunTaskResponse.add_member(:gpus, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'gpus', traits: {"smithy.api#documentation" => "<p>The number of Graphics Processing Units (GPU) specified in the task.</p>", "smithy.api#range" => {"min" => 0}}))
    GetRunTaskResponse.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskInstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The instance type for a task.</p>"}))
    GetRunTaskResponse.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskFailureReason, location_name: 'failureReason', traits: {"smithy.api#documentation" => "<p>The reason a task has failed.</p>"}))
    GetRunTaskResponse.type = Types::GetRunTaskResponse
    GetS3AccessPolicyRequest.add_member(:s3_access_point_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessPointArn, location_name: 's3AccessPointArn', traits: {"smithy.api#documentation" => "<p>The S3 access point ARN that has the access policy.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetS3AccessPolicyRequest.type = Types::GetS3AccessPolicyRequest
    GetS3AccessPolicyResponse.add_member(:s3_access_point_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessPointArn, location_name: 's3AccessPointArn', traits: {"smithy.api#documentation" => "<p>The S3 access point ARN that has the access policy.</p>"}))
    GetS3AccessPolicyResponse.add_member(:store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreId, location_name: 'storeId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services-generated Sequence Store or Reference Store ID.</p>"}))
    GetS3AccessPolicyResponse.add_member(:store_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreType, location_name: 'storeType', traits: {"smithy.api#documentation" => "<p>The type of store associated with the access point.</p>"}))
    GetS3AccessPolicyResponse.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The time when the policy was last updated.</p>", "smithy.api#timestampFormat" => "date-time"}))
    GetS3AccessPolicyResponse.add_member(:s3_access_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessPolicy, location_name: 's3AccessPolicy', traits: {"smithy.api#documentation" => "<p>The current resource policy that controls S3 access on the store.</p>", "smithy.api#required" => {}}))
    GetS3AccessPolicyResponse.type = Types::GetS3AccessPolicyResponse
    GetSequenceStoreRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "sequenceStoreId"}))
    GetSequenceStoreRequest.type = Types::GetSequenceStoreRequest
    GetSequenceStoreResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#required" => {}}))
    GetSequenceStoreResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The store's ARN.</p>", "smithy.api#required" => {}}))
    GetSequenceStoreResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>"}))
    GetSequenceStoreResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The store's description.</p>"}))
    GetSequenceStoreResponse.add_member(:sse_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SseConfig, location_name: 'sseConfig', traits: {"smithy.api#documentation" => "<p>The store's server-side encryption (SSE) settings.</p>"}))
    GetSequenceStoreResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the store was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSequenceStoreResponse.add_member(:fallback_location, Smithy::Schema::Shapes::ShapeRef.new(shape: FallbackLocation, location_name: 'fallbackLocation', traits: {"smithy.api#documentation" => "<p>An S3 location that is used to store files that have failed a direct upload.</p>"}))
    GetSequenceStoreResponse.add_member(:s3_access, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreS3Access, location_name: 's3Access', traits: {"smithy.api#documentation" => "<p>The S3 metadata of a sequence store, including the ARN and S3 URI of the S3 bucket.</p>"}))
    GetSequenceStoreResponse.add_member(:e_tag_algorithm_family, Smithy::Schema::Shapes::ShapeRef.new(shape: ETagAlgorithmFamily, location_name: 'eTagAlgorithmFamily', traits: {"smithy.api#documentation" => "<p>The algorithm family of the ETag.</p>"}))
    GetSequenceStoreResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the sequence store.</p>"}))
    GetSequenceStoreResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The status message of the sequence store.</p>"}))
    GetSequenceStoreResponse.add_member(:propagated_set_level_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: PropagatedSetLevelTags, location_name: 'propagatedSetLevelTags', traits: {"smithy.api#documentation" => "<p>The tags keys to propagate to the S3 objects associated with read sets in the sequence store.</p>"}))
    GetSequenceStoreResponse.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The last-updated time of the sequence store.</p>", "smithy.api#timestampFormat" => "date-time"}))
    GetSequenceStoreResponse.type = Types::GetSequenceStoreResponse
    GetShareRequest.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'shareId', traits: {"smithy.api#documentation" => "<p>The ID of the share.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetShareRequest.type = Types::GetShareRequest
    GetShareResponse.add_member(:share, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareDetails, location_name: 'share', traits: {"smithy.api#documentation" => "<p>A resource share details object. The object includes the status, the resourceArn, and ownerId.</p>"}))
    GetShareResponse.type = Types::GetShareResponse
    GetVariantImportRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVariantImportRequest.type = Types::GetVariantImportRequest
    GetVariantImportResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreName, location_name: 'destinationName', traits: {"smithy.api#documentation" => "<p>The job's destination variant store.</p>", "smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The job's service role ARN.</p>", "smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusMsg, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The job's status message.</p>", "smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>When the job was updated.</p>", "smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CompletionTime, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p>When the job completed.</p>"}))
    GetVariantImportResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: VariantImportItemDetails, location_name: 'items', traits: {"smithy.api#documentation" => "<p>The job's items.</p>", "smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:run_left_normalization, Smithy::Schema::Shapes::ShapeRef.new(shape: RunLeftNormalization, location_name: 'runLeftNormalization', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>The job's left normalization setting.</p>", "smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:annotation_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationFieldMap, location_name: 'annotationFields', traits: {"smithy.api#documentation" => "<p>The annotation schema generated by the parsed annotation data.</p>"}))
    GetVariantImportResponse.type = Types::GetVariantImportResponse
    GetVariantStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVariantStoreRequest.type = Types::GetVariantStoreRequest
    GetVariantStoreResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceItem, location_name: 'reference', traits: {"smithy.api#documentation" => "<p>The store's genome reference.</p>", "smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The store's status.</p>", "smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'storeArn', traits: {"smithy.api#documentation" => "<p>The store's ARN.</p>", "smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>", "smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The store's description.</p>", "smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:sse_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SseConfig, location_name: 'sseConfig', traits: {"smithy.api#documentation" => "<p>The store's server-side encryption (SSE) settings.</p>", "smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the store was created.</p>", "smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>When the store was updated.</p>", "smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The store's tags.</p>", "smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The store's status message.</p>", "smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:store_size_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'storeSizeBytes', traits: {"smithy.api#documentation" => "<p>The store's size in bytes.</p>", "smithy.api#required" => {}}))
    GetVariantStoreResponse.type = Types::GetVariantStoreResponse
    GetWorkflowRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The workflow's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The workflow's type.</p>", "smithy.api#httpQuery" => "type"}))
    GetWorkflowRequest.add_member(:export, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowExportList, location_name: 'export', traits: {"smithy.api#documentation" => "<p>The export format for the workflow.</p>", "smithy.api#httpQuery" => "export"}))
    GetWorkflowRequest.add_member(:workflow_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowOwnerId, location_name: 'workflowOwnerId', traits: {"smithy.api#documentation" => "<p>The ID of the workflow owner.</p>", "smithy.api#httpQuery" => "workflowOwnerId"}))
    GetWorkflowRequest.type = Types::GetWorkflowRequest
    GetWorkflowResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The workflow's ARN.</p>"}))
    GetWorkflowResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The workflow's ID.</p>"}))
    GetWorkflowResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The workflow's status.</p>"}))
    GetWorkflowResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The workflow's type.</p>"}))
    GetWorkflowResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The workflow's name.</p>"}))
    GetWorkflowResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The workflow's description.</p>"}))
    GetWorkflowResponse.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowEngine, location_name: 'engine', traits: {"smithy.api#documentation" => "<p>The workflow's engine.</p>"}))
    GetWorkflowResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDefinition, location_name: 'definition', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The workflow's definition.</p>"}))
    GetWorkflowResponse.add_member(:main, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowMain, location_name: 'main', traits: {"smithy.api#documentation" => "<p>The path of the main definition file for the workflow.</p>"}))
    GetWorkflowResponse.add_member(:digest, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDigest, location_name: 'digest', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The workflow's digest.</p>"}))
    GetWorkflowResponse.add_member(:parameter_template, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowParameterTemplate, location_name: 'parameterTemplate', traits: {"smithy.api#documentation" => "<p>The workflow's parameter template.</p>"}))
    GetWorkflowResponse.add_member(:storage_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'storageCapacity', traits: {"smithy.api#documentation" => "<p>The default static storage capacity (in gibibytes) for runs that use this workflow or workflow version.</p>", "smithy.api#range" => {"min" => 0, "max" => 100000}}))
    GetWorkflowResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowTimestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the workflow was created.</p>"}))
    GetWorkflowResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStatusMessage, location_name: 'statusMessage', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The workflow's status message.</p>"}))
    GetWorkflowResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The workflow's tags.</p>"}))
    GetWorkflowResponse.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>Gets metadata for the workflow.</p>"}))
    GetWorkflowResponse.add_member(:accelerators, Smithy::Schema::Shapes::ShapeRef.new(shape: Accelerators, location_name: 'accelerators', traits: {"smithy.api#documentation" => "<p>The computational accelerator specified to run the workflow. </p>"}))
    GetWorkflowResponse.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageType, location_name: 'storageType', traits: {"smithy.api#documentation" => "<p>The default storage type for runs using this workflow.</p>"}))
    GetWorkflowResponse.add_member(:uuid, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowUuid, location_name: 'uuid', traits: {"smithy.api#documentation" => "<p>The universally unique identifier (UUID) value for this workflow.</p>"}))
    GetWorkflowResponse.add_member(:readme, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadmeS3PresignedUrl, location_name: 'readme', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The README content for the workflow, providing documentation and usage information.</p>"}))
    GetWorkflowResponse.add_member(:definition_repository_details, Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionRepositoryDetails, location_name: 'definitionRepositoryDetails', traits: {"smithy.api#documentation" => "<p>Details about the source code repository that hosts the workflow definition files.</p>"}))
    GetWorkflowResponse.add_member(:readme_path, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadmePath, location_name: 'readmePath', traits: {"smithy.api#documentation" => "<p>The path to the workflow README markdown file within the repository. This file provides documentation and usage information for the workflow. If not specified, the <code>README.md</code> file from the root directory of the repository will be used.</p>"}))
    GetWorkflowResponse.type = Types::GetWorkflowResponse
    GetWorkflowVersionRequest.add_member(:workflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'workflowId', traits: {"smithy.api#documentation" => "<p>The workflow's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    GetWorkflowVersionRequest.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p>The workflow version name.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowVersionRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The workflow's type. </p>", "smithy.api#httpQuery" => "type"}))
    GetWorkflowVersionRequest.add_member(:export, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowExportList, location_name: 'export', traits: {"smithy.api#documentation" => "<p>The export format for the workflow.</p>", "smithy.api#httpQuery" => "export"}))
    GetWorkflowVersionRequest.add_member(:workflow_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowOwnerId, location_name: 'workflowOwnerId', traits: {"smithy.api#documentation" => "<p>Amazon Web Services Id of the owner of the workflow.</p>", "smithy.api#httpQuery" => "workflowOwnerId"}))
    GetWorkflowVersionRequest.type = Types::GetWorkflowVersionRequest
    GetWorkflowVersionResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the workflow version.</p>"}))
    GetWorkflowVersionResponse.add_member(:workflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'workflowId', traits: {"smithy.api#documentation" => "<p>The workflow's ID.</p>"}))
    GetWorkflowVersionResponse.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p>The workflow version name.</p>"}))
    GetWorkflowVersionResponse.add_member(:accelerators, Smithy::Schema::Shapes::ShapeRef.new(shape: Accelerators, location_name: 'accelerators', traits: {"smithy.api#documentation" => "<p>The accelerator for this workflow version.</p>"}))
    GetWorkflowVersionResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowTimestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the workflow version was created.</p>"}))
    GetWorkflowVersionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Description of the workflow version.</p>"}))
    GetWorkflowVersionResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDefinition, location_name: 'definition', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>Definition of the workflow version.</p>"}))
    GetWorkflowVersionResponse.add_member(:digest, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDigest, location_name: 'digest', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The workflow version's digest.</p>"}))
    GetWorkflowVersionResponse.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowEngine, location_name: 'engine', traits: {"smithy.api#documentation" => "<p>The workflow engine for this workflow version.</p>"}))
    GetWorkflowVersionResponse.add_member(:main, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowMain, location_name: 'main', traits: {"smithy.api#documentation" => "<p>The path of the main definition file for the workflow.</p>"}))
    GetWorkflowVersionResponse.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>The metadata for the workflow version.</p>"}))
    GetWorkflowVersionResponse.add_member(:parameter_template, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowParameterTemplate, location_name: 'parameterTemplate', traits: {"smithy.api#documentation" => "<p>The parameter template for the workflow version.</p>"}))
    GetWorkflowVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The workflow version status</p>"}))
    GetWorkflowVersionResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStatusMessage, location_name: 'statusMessage', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The workflow version status message</p>"}))
    GetWorkflowVersionResponse.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageType, location_name: 'storageType', traits: {"smithy.api#documentation" => "<p>The default storage type for the run.</p>"}))
    GetWorkflowVersionResponse.add_member(:storage_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'storageCapacity', traits: {"smithy.api#documentation" => "<p>The default run storage capacity for static storage.</p>", "smithy.api#range" => {"min" => 0, "max" => 100000}}))
    GetWorkflowVersionResponse.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The workflow version type</p>"}))
    GetWorkflowVersionResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The workflow version tags</p>"}))
    GetWorkflowVersionResponse.add_member(:uuid, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowUuid, location_name: 'uuid', traits: {"smithy.api#documentation" => "<p>The universally unique identifier (UUID) value for this workflow version</p>"}))
    GetWorkflowVersionResponse.add_member(:workflow_bucket_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowBucketOwnerId, location_name: 'workflowBucketOwnerId', traits: {"smithy.api#documentation" => "<p>Amazon Web Services Id of the owner of the bucket.</p>"}))
    GetWorkflowVersionResponse.add_member(:readme, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadmeS3PresignedUrl, location_name: 'readme', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>The README content for the workflow version, providing documentation and usage information specific to this version.</p>"}))
    GetWorkflowVersionResponse.add_member(:definition_repository_details, Smithy::Schema::Shapes::ShapeRef.new(shape: DefinitionRepositoryDetails, location_name: 'definitionRepositoryDetails', traits: {"smithy.api#documentation" => "<p>Details about the source code repository that hosts the workflow version definition files.</p>"}))
    GetWorkflowVersionResponse.add_member(:readme_path, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadmePath, location_name: 'readmePath', traits: {"smithy.api#documentation" => "<p>The path to the workflow version README markdown file within the repository. This file provides documentation and usage information for the workflow. If not specified, the <code>README.md</code> file from the root directory of the repository will be used.</p>"}))
    GetWorkflowVersionResponse.type = Types::GetWorkflowVersionResponse
    IdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier)
    ImportReadSetFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetImportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A status to filter on.</p>"}))
    ImportReadSetFilter.add_member(:created_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAfter', traits: {"smithy.api#documentation" => "<p>The filter's start date.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ImportReadSetFilter.add_member(:created_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdBefore', traits: {"smithy.api#documentation" => "<p>The filter's end date.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ImportReadSetFilter.type = Types::ImportReadSetFilter
    ImportReadSetJobItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    ImportReadSetJobItem.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The job's sequence store ID.</p>", "smithy.api#required" => {}}))
    ImportReadSetJobItem.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The job's service role ARN.</p>", "smithy.api#required" => {}}))
    ImportReadSetJobItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetImportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    ImportReadSetJobItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ImportReadSetJobItem.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p>When the job completed.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ImportReadSetJobItem.type = Types::ImportReadSetJobItem
    ImportReadSetJobList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportReadSetJobItem)
    ImportReadSetSourceItem.add_member(:source_files, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceFiles, location_name: 'sourceFiles', traits: {"smithy.api#documentation" => "<p>The source files' location in Amazon S3.</p>", "smithy.api#required" => {}}))
    ImportReadSetSourceItem.add_member(:source_file_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FileType, location_name: 'sourceFileType', traits: {"smithy.api#documentation" => "<p>The source's file type.</p>", "smithy.api#required" => {}}))
    ImportReadSetSourceItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetImportJobItemStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The source's status.</p>", "smithy.api#required" => {}}))
    ImportReadSetSourceItem.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The source's status message.</p>"}))
    ImportReadSetSourceItem.add_member(:subject_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectId, location_name: 'subjectId', traits: {"smithy.api#documentation" => "<p>The source's subject ID.</p>", "smithy.api#required" => {}}))
    ImportReadSetSourceItem.add_member(:sample_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleId, location_name: 'sampleId', traits: {"smithy.api#documentation" => "<p>The source's sample ID.</p>", "smithy.api#required" => {}}))
    ImportReadSetSourceItem.add_member(:generated_from, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedFrom, location_name: 'generatedFrom', traits: {"smithy.api#documentation" => "<p>Where the source originated.</p>"}))
    ImportReadSetSourceItem.add_member(:reference_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceArn, location_name: 'referenceArn', traits: {"smithy.api#documentation" => "<p>The source's genome reference ARN.</p>"}))
    ImportReadSetSourceItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The source's name.</p>"}))
    ImportReadSetSourceItem.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The source's description.</p>"}))
    ImportReadSetSourceItem.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The source's tags.</p>"}))
    ImportReadSetSourceItem.add_member(:read_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetId, location_name: 'readSetId', traits: {"smithy.api#documentation" => "<p>The source's read set ID.</p>"}))
    ImportReadSetSourceItem.type = Types::ImportReadSetSourceItem
    ImportReadSetSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportReadSetSourceItem)
    ImportReferenceFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceImportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A status to filter on.</p>"}))
    ImportReferenceFilter.add_member(:created_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAfter', traits: {"smithy.api#documentation" => "<p>The filter's start date.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ImportReferenceFilter.add_member(:created_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdBefore', traits: {"smithy.api#documentation" => "<p>The filter's end date.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ImportReferenceFilter.type = Types::ImportReferenceFilter
    ImportReferenceJobItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    ImportReferenceJobItem.add_member(:reference_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'referenceStoreId', traits: {"smithy.api#documentation" => "<p>The job's reference store ID.</p>", "smithy.api#required" => {}}))
    ImportReferenceJobItem.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The job's service role ARN.</p>", "smithy.api#required" => {}}))
    ImportReferenceJobItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceImportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    ImportReferenceJobItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ImportReferenceJobItem.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p>When the job completed.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ImportReferenceJobItem.type = Types::ImportReferenceJobItem
    ImportReferenceJobList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportReferenceJobItem)
    ImportReferenceSourceItem.add_member(:source_file, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'sourceFile', traits: {"smithy.api#documentation" => "<p>The source file's location in Amazon S3.</p>"}))
    ImportReferenceSourceItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceImportJobItemStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The source's status.</p>", "smithy.api#required" => {}}))
    ImportReferenceSourceItem.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The source's status message.</p>"}))
    ImportReferenceSourceItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The source's name.</p>"}))
    ImportReferenceSourceItem.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The source's description.</p>"}))
    ImportReferenceSourceItem.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The source's tags.</p>"}))
    ImportReferenceSourceItem.add_member(:reference_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceId, location_name: 'referenceId', traits: {"smithy.api#documentation" => "<p>The source's reference ID.</p>"}))
    ImportReferenceSourceItem.type = Types::ImportReferenceSourceItem
    ImportReferenceSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportReferenceSourceItem)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListAnnotationImportJobsFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A status to filter on.</p>"}))
    ListAnnotationImportJobsFilter.add_member(:store_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'storeName', traits: {"smithy.api#documentation" => "<p>A store name to filter on.</p>"}))
    ListAnnotationImportJobsFilter.type = Types::ListAnnotationImportJobsFilter
    ListAnnotationImportJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of jobs to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAnnotationImportJobsRequest.add_member(:ids, Smithy::Schema::Shapes::ShapeRef.new(shape: IdList, location_name: 'ids', traits: {"smithy.api#documentation" => "<p>IDs of annotation import jobs to retrieve.</p>", "smithy.api#length" => {"min" => 1, "max" => 20}}))
    ListAnnotationImportJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specifies the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListAnnotationImportJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnnotationImportJobsFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>A filter to apply to the list.</p>"}))
    ListAnnotationImportJobsRequest.type = Types::ListAnnotationImportJobsRequest
    ListAnnotationImportJobsResponse.add_member(:annotation_import_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationImportJobItems, location_name: 'annotationImportJobs', traits: {"smithy.api#documentation" => "<p>A list of jobs.</p>"}))
    ListAnnotationImportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specifies the pagination token from a previous request to retrieve the next page of results.</p>"}))
    ListAnnotationImportJobsResponse.type = Types::ListAnnotationImportJobsResponse
    ListAnnotationStoreVersionsFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of an annotation store version.</p>"}))
    ListAnnotationStoreVersionsFilter.type = Types::ListAnnotationStoreVersionsFilter
    ListAnnotationStoreVersionsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of an annotation store. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAnnotationStoreVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of annotation store versions to return in one page of results. </p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAnnotationStoreVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> Specifies the pagination token from a previous request to retrieve the next page of results. </p>", "smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListAnnotationStoreVersionsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnnotationStoreVersionsFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p> A filter to apply to the list of annotation store versions. </p>"}))
    ListAnnotationStoreVersionsRequest.type = Types::ListAnnotationStoreVersionsRequest
    ListAnnotationStoreVersionsResponse.add_member(:annotation_store_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationStoreVersionItems, location_name: 'annotationStoreVersions', traits: {"smithy.api#documentation" => "<p> Lists all versions of an annotation store. </p>"}))
    ListAnnotationStoreVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> Specifies the pagination token from a previous request to retrieve the next page of results. </p>"}))
    ListAnnotationStoreVersionsResponse.type = Types::ListAnnotationStoreVersionsResponse
    ListAnnotationStoresFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A status to filter on.</p>"}))
    ListAnnotationStoresFilter.type = Types::ListAnnotationStoresFilter
    ListAnnotationStoresRequest.add_member(:ids, Smithy::Schema::Shapes::ShapeRef.new(shape: IdList, location_name: 'ids', traits: {"smithy.api#documentation" => "<p>IDs of stores to list.</p>", "smithy.api#length" => {"min" => 1, "max" => 20}}))
    ListAnnotationStoresRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of stores to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAnnotationStoresRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListAnnotationStoresRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnnotationStoresFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>A filter to apply to the list.</p>"}))
    ListAnnotationStoresRequest.type = Types::ListAnnotationStoresRequest
    ListAnnotationStoresResponse.add_member(:annotation_stores, Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationStoreItems, location_name: 'annotationStores', traits: {"smithy.api#documentation" => "<p>A list of stores.</p>"}))
    ListAnnotationStoresResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListAnnotationStoresResponse.type = Types::ListAnnotationStoresResponse
    ListMultipartReadSetUploadsRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The Sequence Store ID used for the multipart uploads.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMultipartReadSetUploadsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of multipart uploads returned in a page.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListMultipartReadSetUploadsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token returned in the response of a previous ListMultipartReadSetUploads call. Used to get the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListMultipartReadSetUploadsRequest.type = Types::ListMultipartReadSetUploadsRequest
    ListMultipartReadSetUploadsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token returned in the response of a previous ListMultipartReadSetUploads call. Used to get the next page of results.</p>"}))
    ListMultipartReadSetUploadsResponse.add_member(:uploads, Smithy::Schema::Shapes::ShapeRef.new(shape: MultipartReadSetUploadList, location_name: 'uploads', traits: {"smithy.api#documentation" => "<p>An array of multipart uploads.</p>"}))
    ListMultipartReadSetUploadsResponse.type = Types::ListMultipartReadSetUploadsResponse
    ListReadSetActivationJobsRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The read set's sequence store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReadSetActivationJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of read set activation jobs to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReadSetActivationJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListReadSetActivationJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateReadSetFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>A filter to apply to the list.</p>"}))
    ListReadSetActivationJobsRequest.type = Types::ListReadSetActivationJobsRequest
    ListReadSetActivationJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListReadSetActivationJobsResponse.add_member(:activation_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateReadSetJobList, location_name: 'activationJobs', traits: {"smithy.api#documentation" => "<p>A list of jobs.</p>"}))
    ListReadSetActivationJobsResponse.type = Types::ListReadSetActivationJobsResponse
    ListReadSetExportJobsRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The jobs' sequence store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReadSetExportJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of jobs to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReadSetExportJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListReadSetExportJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportReadSetFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>A filter to apply to the list.</p>"}))
    ListReadSetExportJobsRequest.type = Types::ListReadSetExportJobsRequest
    ListReadSetExportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListReadSetExportJobsResponse.add_member(:export_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportReadSetJobDetailList, location_name: 'exportJobs', traits: {"smithy.api#documentation" => "<p>A list of jobs.</p>"}))
    ListReadSetExportJobsResponse.type = Types::ListReadSetExportJobsResponse
    ListReadSetImportJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of jobs to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReadSetImportJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListReadSetImportJobsRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The jobs' sequence store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReadSetImportJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportReadSetFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>A filter to apply to the list.</p>"}))
    ListReadSetImportJobsRequest.type = Types::ListReadSetImportJobsRequest
    ListReadSetImportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListReadSetImportJobsResponse.add_member(:import_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportReadSetJobList, location_name: 'importJobs', traits: {"smithy.api#documentation" => "<p>A list of jobs.</p>"}))
    ListReadSetImportJobsResponse.type = Types::ListReadSetImportJobsResponse
    ListReadSetUploadPartsRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The Sequence Store ID used for the multipart uploads.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReadSetUploadPartsRequest.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The ID for the initiated multipart upload.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReadSetUploadPartsRequest.add_member(:part_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetPartSource, location_name: 'partSource', traits: {"smithy.api#documentation" => "<p>The source file for the upload part.</p>", "smithy.api#required" => {}}))
    ListReadSetUploadPartsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of read set upload parts returned in a page.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReadSetUploadPartsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token returned in the response of a previous ListReadSetUploadPartsRequest call. Used to get the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListReadSetUploadPartsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetUploadPartListFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>Attributes used to filter for a specific subset of read set part uploads.</p>"}))
    ListReadSetUploadPartsRequest.type = Types::ListReadSetUploadPartsRequest
    ListReadSetUploadPartsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token returned in the response of a previous ListReadSetUploadParts call. Used to get the next page of results.</p>"}))
    ListReadSetUploadPartsResponse.add_member(:parts, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetUploadPartList, location_name: 'parts', traits: {"smithy.api#documentation" => "<p>An array of upload parts.</p>"}))
    ListReadSetUploadPartsResponse.type = Types::ListReadSetUploadPartsResponse
    ListReadSetsRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The jobs' sequence store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReadSetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of read sets to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReadSetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListReadSetsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>A filter to apply to the list.</p>"}))
    ListReadSetsRequest.type = Types::ListReadSetsRequest
    ListReadSetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListReadSetsResponse.add_member(:read_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetList, location_name: 'readSets', traits: {"smithy.api#documentation" => "<p>A list of read sets.</p>", "smithy.api#required" => {}}))
    ListReadSetsResponse.type = Types::ListReadSetsResponse
    ListReferenceImportJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of jobs to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReferenceImportJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListReferenceImportJobsRequest.add_member(:reference_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'referenceStoreId', traits: {"smithy.api#documentation" => "<p>The job's reference store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReferenceImportJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportReferenceFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>A filter to apply to the list.</p>"}))
    ListReferenceImportJobsRequest.type = Types::ListReferenceImportJobsRequest
    ListReferenceImportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListReferenceImportJobsResponse.add_member(:import_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportReferenceJobList, location_name: 'importJobs', traits: {"smithy.api#documentation" => "<p>A lis of jobs.</p>"}))
    ListReferenceImportJobsResponse.type = Types::ListReferenceImportJobsResponse
    ListReferenceStoresRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of stores to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReferenceStoresRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListReferenceStoresRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>A filter to apply to the list.</p>"}))
    ListReferenceStoresRequest.type = Types::ListReferenceStoresRequest
    ListReferenceStoresResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListReferenceStoresResponse.add_member(:reference_stores, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreDetailList, location_name: 'referenceStores', traits: {"smithy.api#documentation" => "<p>A list of reference stores.</p>", "smithy.api#required" => {}}))
    ListReferenceStoresResponse.type = Types::ListReferenceStoresResponse
    ListReferencesRequest.add_member(:reference_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'referenceStoreId', traits: {"smithy.api#documentation" => "<p>The references' reference store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReferencesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of references to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReferencesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListReferencesRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>A filter to apply to the list.</p>"}))
    ListReferencesRequest.type = Types::ListReferencesRequest
    ListReferencesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListReferencesResponse.add_member(:references, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceList, location_name: 'references', traits: {"smithy.api#documentation" => "<p>A list of references.</p>", "smithy.api#required" => {}}))
    ListReferencesResponse.type = Types::ListReferencesResponse
    ListRunCachesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRunCachesRequest.add_member(:starting_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ListToken, location_name: 'startingToken', traits: {"smithy.api#documentation" => "<p>Optional pagination token returned from a prior call to the <code>ListRunCaches</code> API operation.</p>", "smithy.api#httpQuery" => "startingToken"}))
    ListRunCachesRequest.type = Types::ListRunCachesRequest
    ListRunCachesResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Details about each run cache in the response.</p>"}))
    ListRunCachesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ListToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Pagination token to retrieve additional run caches. If the response does not have a <code>nextToken</code>value, you have reached to the end of the list.</p>"}))
    ListRunCachesResponse.type = Types::ListRunCachesResponse
    ListRunGroupsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The run groups' name.</p>", "smithy.api#httpQuery" => "name"}))
    ListRunGroupsRequest.add_member(:starting_token, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupListToken, location_name: 'startingToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "startingToken"}))
    ListRunGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of run groups to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRunGroupsRequest.type = Types::ListRunGroupsRequest
    ListRunGroupsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>A list of groups.</p>"}))
    ListRunGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupListToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListRunGroupsResponse.type = Types::ListRunGroupsResponse
    ListRunTasksRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The run's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRunTasksRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Filter the list by status.</p>", "smithy.api#httpQuery" => "status"}))
    ListRunTasksRequest.add_member(:starting_token, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskListToken, location_name: 'startingToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "startingToken"}))
    ListRunTasksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of run tasks to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRunTasksRequest.type = Types::ListRunTasksRequest
    ListRunTasksResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>A list of tasks.</p>"}))
    ListRunTasksResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskListToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListRunTasksResponse.type = Types::ListRunTasksResponse
    ListRunsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RunName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Filter the list by run name.</p>", "smithy.api#httpQuery" => "name"}))
    ListRunsRequest.add_member(:run_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupId, location_name: 'runGroupId', traits: {"smithy.api#documentation" => "<p>Filter the list by run group ID.</p>", "smithy.api#httpQuery" => "runGroupId"}))
    ListRunsRequest.add_member(:starting_token, Smithy::Schema::Shapes::ShapeRef.new(shape: RunListToken, location_name: 'startingToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "startingToken"}))
    ListRunsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of runs to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRunsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RunStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of a run.</p>", "smithy.api#httpQuery" => "status"}))
    ListRunsRequest.type = Types::ListRunsRequest
    ListRunsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: RunList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>A list of runs.</p>"}))
    ListRunsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: RunListToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListRunsResponse.type = Types::ListRunsResponse
    ListSequenceStoresRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of stores to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSequenceStoresRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSequenceStoresRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>A filter to apply to the list.</p>"}))
    ListSequenceStoresRequest.type = Types::ListSequenceStoresRequest
    ListSequenceStoresResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListSequenceStoresResponse.add_member(:sequence_stores, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreDetailList, location_name: 'sequenceStores', traits: {"smithy.api#documentation" => "<p>A list of sequence stores.</p>", "smithy.api#required" => {}}))
    ListSequenceStoresResponse.type = Types::ListSequenceStoresResponse
    ListSharesRequest.add_member(:resource_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceOwner, location_name: 'resourceOwner', traits: {"smithy.api#documentation" => "<p>The account that owns the resource shares.</p>", "smithy.api#required" => {}}))
    ListSharesRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: Filter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>Attributes that you use to filter for a specific subset of resource shares.</p>"}))
    ListSharesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Next token returned in the response of a previous ListReadSetUploadPartsRequest call. Used to get the next page of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSharesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of shares to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSharesRequest.type = Types::ListSharesRequest
    ListSharesResponse.add_member(:shares, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareDetailsList, location_name: 'shares', traits: {"smithy.api#documentation" => "<p>The shares available and their metadata details.</p>", "smithy.api#required" => {}}))
    ListSharesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> Next token returned in the response of a previous ListSharesResponse call. Used to get the next page of results. </p>"}))
    ListSharesResponse.type = Types::ListSharesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TagArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The resource's ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListVariantImportJobsFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A status to filter on.</p>"}))
    ListVariantImportJobsFilter.add_member(:store_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'storeName', traits: {"smithy.api#documentation" => "<p>A store name to filter on.</p>"}))
    ListVariantImportJobsFilter.type = Types::ListVariantImportJobsFilter
    ListVariantImportJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of import jobs to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListVariantImportJobsRequest.add_member(:ids, Smithy::Schema::Shapes::ShapeRef.new(shape: IdList, location_name: 'ids', traits: {"smithy.api#documentation" => "<p>A list of job IDs.</p>", "smithy.api#length" => {"min" => 1, "max" => 20}}))
    ListVariantImportJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListVariantImportJobsRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListVariantImportJobsFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>A filter to apply to the list.</p>"}))
    ListVariantImportJobsRequest.type = Types::ListVariantImportJobsRequest
    ListVariantImportJobsResponse.add_member(:variant_import_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: VariantImportJobItems, location_name: 'variantImportJobs', traits: {"smithy.api#documentation" => "<p>A list of jobs.</p>"}))
    ListVariantImportJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListVariantImportJobsResponse.type = Types::ListVariantImportJobsResponse
    ListVariantStoresFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A status to filter on.</p>"}))
    ListVariantStoresFilter.type = Types::ListVariantStoresFilter
    ListVariantStoresRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of stores to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListVariantStoresRequest.add_member(:ids, Smithy::Schema::Shapes::ShapeRef.new(shape: IdList, location_name: 'ids', traits: {"smithy.api#documentation" => "<p>A list of store IDs.</p>", "smithy.api#length" => {"min" => 1, "max" => 20}}))
    ListVariantStoresRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListVariantStoresRequest.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: ListVariantStoresFilter, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>A filter to apply to the list.</p>"}))
    ListVariantStoresRequest.type = Types::ListVariantStoresRequest
    ListVariantStoresResponse.add_member(:variant_stores, Smithy::Schema::Shapes::ShapeRef.new(shape: VariantStoreItems, location_name: 'variantStores', traits: {"smithy.api#documentation" => "<p>A list of variant stores.</p>"}))
    ListVariantStoresResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListVariantStoresResponse.type = Types::ListVariantStoresResponse
    ListWorkflowVersionsRequest.add_member(:workflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'workflowId', traits: {"smithy.api#documentation" => "<p>The workflow's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    ListWorkflowVersionsRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The workflow type.</p>", "smithy.api#httpQuery" => "type"}))
    ListWorkflowVersionsRequest.add_member(:workflow_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowOwnerId, location_name: 'workflowOwnerId', traits: {"smithy.api#documentation" => "<p>Amazon Web Services Id of the owner of the workflow.</p>", "smithy.api#httpQuery" => "workflowOwnerId"}))
    ListWorkflowVersionsRequest.add_member(:starting_token, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionListToken, location_name: 'startingToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "startingToken"}))
    ListWorkflowVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of workflows to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkflowVersionsRequest.type = Types::ListWorkflowVersionsRequest
    ListWorkflowVersionsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>A list of workflow version items.</p>"}))
    ListWorkflowVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionListToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListWorkflowVersionsResponse.type = Types::ListWorkflowVersionsResponse
    ListWorkflowsRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Filter the list by workflow type.</p>", "smithy.api#httpQuery" => "type"}))
    ListWorkflowsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Filter the list by workflow name.</p>", "smithy.api#httpQuery" => "name"}))
    ListWorkflowsRequest.add_member(:starting_token, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowListToken, location_name: 'startingToken', traits: {"smithy.api#documentation" => "<p>Specify the pagination token from a previous request to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "startingToken"}))
    ListWorkflowsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of workflows to return in one page of results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkflowsRequest.type = Types::ListWorkflowsRequest
    ListWorkflowsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>A list of workflow items.</p>"}))
    ListWorkflowsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowListToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token that's included if more results are available.</p>"}))
    ListWorkflowsResponse.type = Types::ListWorkflowsResponse
    MultipartReadSetUploadList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MultipartReadSetUploadListItem)
    MultipartReadSetUploadListItem.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p> The sequence store ID used for the multipart upload. </p>", "smithy.api#required" => {}}))
    MultipartReadSetUploadListItem.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p> The ID for the initiated multipart upload. </p>", "smithy.api#required" => {}}))
    MultipartReadSetUploadListItem.add_member(:source_file_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FileType, location_name: 'sourceFileType', traits: {"smithy.api#documentation" => "<p> The type of file the read set originated from. </p>", "smithy.api#required" => {}}))
    MultipartReadSetUploadListItem.add_member(:subject_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectId, location_name: 'subjectId', traits: {"smithy.api#documentation" => "<p> The read set source's subject ID. </p>", "smithy.api#required" => {}}))
    MultipartReadSetUploadListItem.add_member(:sample_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleId, location_name: 'sampleId', traits: {"smithy.api#documentation" => "<p> The read set source's sample ID. </p>", "smithy.api#required" => {}}))
    MultipartReadSetUploadListItem.add_member(:generated_from, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedFrom, location_name: 'generatedFrom', traits: {"smithy.api#documentation" => "<p> The source of an uploaded part. </p>", "smithy.api#required" => {}}))
    MultipartReadSetUploadListItem.add_member(:reference_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceArn, location_name: 'referenceArn', traits: {"smithy.api#documentation" => "<p> The source's reference ARN. </p>", "smithy.api#required" => {}}))
    MultipartReadSetUploadListItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of a read set. </p>"}))
    MultipartReadSetUploadListItem.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of a read set. </p>"}))
    MultipartReadSetUploadListItem.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p> Any tags you wish to add to a read set. </p>"}))
    MultipartReadSetUploadListItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> The time stamp for when a direct upload was created. </p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MultipartReadSetUploadListItem.type = Types::MultipartReadSetUploadListItem
    NotSupportedOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    NotSupportedOperationException.type = Types::NotSupportedOperationException
    PropagatedSetLevelTags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    PutS3AccessPolicyRequest.add_member(:s3_access_point_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessPointArn, location_name: 's3AccessPointArn', traits: {"smithy.api#documentation" => "<p>The S3 access point ARN where you want to put the access policy.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutS3AccessPolicyRequest.add_member(:s3_access_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessPolicy, location_name: 's3AccessPolicy', traits: {"smithy.api#documentation" => "<p>The resource policy that controls S3 access to the store.</p>", "smithy.api#required" => {}}))
    PutS3AccessPolicyRequest.type = Types::PutS3AccessPolicyRequest
    PutS3AccessPolicyResponse.add_member(:s3_access_point_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessPointArn, location_name: 's3AccessPointArn', traits: {"smithy.api#documentation" => "<p>The S3 access point ARN that now has the access policy.</p>"}))
    PutS3AccessPolicyResponse.add_member(:store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreId, location_name: 'storeId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services-generated Sequence Store or Reference Store ID.</p>"}))
    PutS3AccessPolicyResponse.add_member(:store_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreType, location_name: 'storeType', traits: {"smithy.api#documentation" => "<p>The type of store associated with the access point.</p>"}))
    PutS3AccessPolicyResponse.type = Types::PutS3AccessPolicyResponse
    RangeNotSatisfiableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    RangeNotSatisfiableException.type = Types::RangeNotSatisfiableException
    ReadOptions.add_member(:sep, Smithy::Schema::Shapes::ShapeRef.new(shape: Separator, location_name: 'sep', traits: {"smithy.api#documentation" => "<p>The file's field separator.</p>"}))
    ReadOptions.add_member(:encoding, Smithy::Schema::Shapes::ShapeRef.new(shape: Encoding, location_name: 'encoding', traits: {"smithy.api#documentation" => "<p>The file's encoding.</p>"}))
    ReadOptions.add_member(:quote, Smithy::Schema::Shapes::ShapeRef.new(shape: Quote, location_name: 'quote', traits: {"smithy.api#documentation" => "<p>The file's quote character.</p>"}))
    ReadOptions.add_member(:quote_all, Smithy::Schema::Shapes::ShapeRef.new(shape: QuoteAll, location_name: 'quoteAll', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether all values need to be quoted, or just those that contain quotes.</p>"}))
    ReadOptions.add_member(:escape, Smithy::Schema::Shapes::ShapeRef.new(shape: EscapeChar, location_name: 'escape', traits: {"smithy.api#documentation" => "<p>A character for escaping quotes in the file.</p>"}))
    ReadOptions.add_member(:escape_quotes, Smithy::Schema::Shapes::ShapeRef.new(shape: EscapeQuotes, location_name: 'escapeQuotes', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether quotes need to be escaped in the file.</p>"}))
    ReadOptions.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: CommentChar, location_name: 'comment', traits: {"smithy.api#documentation" => "<p>The file's comment character.</p>"}))
    ReadOptions.add_member(:header, Smithy::Schema::Shapes::ShapeRef.new(shape: Header, location_name: 'header', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the file has a header row.</p>"}))
    ReadOptions.add_member(:line_sep, Smithy::Schema::Shapes::ShapeRef.new(shape: LineSep, location_name: 'lineSep', traits: {"smithy.api#documentation" => "<p>A line separator for the file.</p>"}))
    ReadOptions.type = Types::ReadOptions
    ReadSetBatchError.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The error's ID.</p>", "smithy.api#required" => {}}))
    ReadSetBatchError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error's code.</p>", "smithy.api#required" => {}}))
    ReadSetBatchError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error's message.</p>", "smithy.api#required" => {}}))
    ReadSetBatchError.type = Types::ReadSetBatchError
    ReadSetBatchErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetBatchError)
    ReadSetFiles.add_member(:source1, Smithy::Schema::Shapes::ShapeRef.new(shape: FileInformation, location_name: 'source1', traits: {"smithy.api#documentation" => "<p>The location of the first file in Amazon S3.</p>"}))
    ReadSetFiles.add_member(:source2, Smithy::Schema::Shapes::ShapeRef.new(shape: FileInformation, location_name: 'source2', traits: {"smithy.api#documentation" => "<p>The location of the second file in Amazon S3.</p>"}))
    ReadSetFiles.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: FileInformation, location_name: 'index', traits: {"smithy.api#documentation" => "<p>The files' index.</p>"}))
    ReadSetFiles.type = Types::ReadSetFiles
    ReadSetFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name to filter on.</p>"}))
    ReadSetFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A status to filter on.</p>"}))
    ReadSetFilter.add_member(:reference_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceArnFilter, location_name: 'referenceArn', traits: {"smithy.api#documentation" => "<p>A genome reference ARN to filter on.</p>"}))
    ReadSetFilter.add_member(:created_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAfter', traits: {"smithy.api#documentation" => "<p>The filter's start date.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ReadSetFilter.add_member(:created_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdBefore', traits: {"smithy.api#documentation" => "<p>The filter's end date.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ReadSetFilter.add_member(:sample_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleId, location_name: 'sampleId', traits: {"smithy.api#documentation" => "<p> The read set source's sample ID. </p>"}))
    ReadSetFilter.add_member(:subject_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectId, location_name: 'subjectId', traits: {"smithy.api#documentation" => "<p> The read set source's subject ID. </p>"}))
    ReadSetFilter.add_member(:generated_from, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedFrom, location_name: 'generatedFrom', traits: {"smithy.api#documentation" => "<p> Where the source originated. </p>"}))
    ReadSetFilter.add_member(:creation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationType, location_name: 'creationType', traits: {"smithy.api#documentation" => "<p> The creation type of the read set. </p>"}))
    ReadSetFilter.type = Types::ReadSetFilter
    ReadSetIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetId)
    ReadSetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetListItem)
    ReadSetListItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The read set's ID.</p>", "smithy.api#required" => {}}))
    ReadSetListItem.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The read set's ARN.</p>", "smithy.api#required" => {}}))
    ReadSetListItem.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The read set's sequence store ID.</p>", "smithy.api#required" => {}}))
    ReadSetListItem.add_member(:subject_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectId, location_name: 'subjectId', traits: {"smithy.api#documentation" => "<p>The read set's subject ID.</p>"}))
    ReadSetListItem.add_member(:sample_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleId, location_name: 'sampleId', traits: {"smithy.api#documentation" => "<p>The read set's sample ID.</p>"}))
    ReadSetListItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The read set's status.</p>", "smithy.api#required" => {}}))
    ReadSetListItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The read set's name.</p>"}))
    ReadSetListItem.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The read set's description.</p>"}))
    ReadSetListItem.add_member(:reference_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceArn, location_name: 'referenceArn', traits: {"smithy.api#documentation" => "<p>The read set's genome reference ARN.</p>"}))
    ReadSetListItem.add_member(:file_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FileType, location_name: 'fileType', traits: {"smithy.api#documentation" => "<p>The read set's file type.</p>", "smithy.api#required" => {}}))
    ReadSetListItem.add_member(:sequence_information, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceInformation, location_name: 'sequenceInformation'))
    ReadSetListItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the read set was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ReadSetListItem.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p> The status for a read set. It provides more detail as to why the read set has a status. </p>"}))
    ReadSetListItem.add_member(:creation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationType, location_name: 'creationType', traits: {"smithy.api#documentation" => "<p> The creation type of the read set. </p>"}))
    ReadSetListItem.add_member(:etag, Smithy::Schema::Shapes::ShapeRef.new(shape: ETag, location_name: 'etag', traits: {"smithy.api#documentation" => "<p>The entity tag (ETag) is a hash of the object representing its semantic content.</p>"}))
    ReadSetListItem.type = Types::ReadSetListItem
    ReadSetS3Access.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 's3Uri', traits: {"smithy.api#documentation" => "<p>The S3 URI for each read set file.</p>"}))
    ReadSetS3Access.type = Types::ReadSetS3Access
    ReadSetUploadPartList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetUploadPartListItem)
    ReadSetUploadPartListFilter.add_member(:created_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAfter', traits: {"smithy.api#documentation" => "<p> Filters for read set uploads after a specified time. </p>", "smithy.api#timestampFormat" => "date-time"}))
    ReadSetUploadPartListFilter.add_member(:created_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdBefore', traits: {"smithy.api#documentation" => "<p> Filters for read set part uploads before a specified time. </p>", "smithy.api#timestampFormat" => "date-time"}))
    ReadSetUploadPartListFilter.type = Types::ReadSetUploadPartListFilter
    ReadSetUploadPartListItem.add_member(:part_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'partNumber', traits: {"smithy.api#documentation" => "<p> The number identifying the part in an upload. </p>", "smithy.api#range" => {"min" => 1, "max" => 10000}, "smithy.api#required" => {}}))
    ReadSetUploadPartListItem.add_member(:part_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'partSize', traits: {"smithy.api#documentation" => "<p> The size of the the part in an upload. </p>", "smithy.api#range" => {"min" => 1, "max" => 5368709120}, "smithy.api#required" => {}}))
    ReadSetUploadPartListItem.add_member(:part_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetPartSource, location_name: 'partSource', traits: {"smithy.api#documentation" => "<p> The origin of the part being direct uploaded. </p>", "smithy.api#required" => {}}))
    ReadSetUploadPartListItem.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p> A unique identifier used to confirm that parts are being added to the correct upload. </p>", "smithy.api#required" => {}}))
    ReadSetUploadPartListItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> The time stamp for when a direct upload was created. </p>", "smithy.api#timestampFormat" => "date-time"}))
    ReadSetUploadPartListItem.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p> The time stamp for the most recent update to an uploaded part. </p>", "smithy.api#timestampFormat" => "date-time"}))
    ReadSetUploadPartListItem.type = Types::ReadSetUploadPartListItem
    ReferenceFiles.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: FileInformation, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source file's location in Amazon S3.</p>"}))
    ReferenceFiles.add_member(:index, Smithy::Schema::Shapes::ShapeRef.new(shape: FileInformation, location_name: 'index', traits: {"smithy.api#documentation" => "<p>The files' index.</p>"}))
    ReferenceFiles.type = Types::ReferenceFiles
    ReferenceFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name to filter on.</p>"}))
    ReferenceFilter.add_member(:md5, Smithy::Schema::Shapes::ShapeRef.new(shape: Md5, location_name: 'md5', traits: {"smithy.api#documentation" => "<p>An MD5 checksum to filter on.</p>"}))
    ReferenceFilter.add_member(:created_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAfter', traits: {"smithy.api#documentation" => "<p>The filter's start date.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ReferenceFilter.add_member(:created_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdBefore', traits: {"smithy.api#documentation" => "<p>The filter's end date.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ReferenceFilter.type = Types::ReferenceFilter
    ReferenceItem.add_member(:reference_arn, Types::ReferenceItem::ReferenceArn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceArn, location_name: 'referenceArn', traits: {"smithy.api#documentation" => "<p>The reference's ARN.</p>"}))
    ReferenceItem.add_member(:unknown, Types::ReferenceItem::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ReferenceItem.type = Types::ReferenceItem
    ReferenceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceListItem)
    ReferenceListItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The reference's ID.</p>", "smithy.api#required" => {}}))
    ReferenceListItem.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The reference's ARN.</p>", "smithy.api#required" => {}}))
    ReferenceListItem.add_member(:reference_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'referenceStoreId', traits: {"smithy.api#documentation" => "<p>The reference's store ID.</p>", "smithy.api#required" => {}}))
    ReferenceListItem.add_member(:md5, Smithy::Schema::Shapes::ShapeRef.new(shape: Md5, location_name: 'md5', traits: {"smithy.api#documentation" => "<p>The reference's MD5 checksum.</p>", "smithy.api#required" => {}}))
    ReferenceListItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The reference's status.</p>"}))
    ReferenceListItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The reference's name.</p>"}))
    ReferenceListItem.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The reference's description.</p>"}))
    ReferenceListItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the reference was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ReferenceListItem.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>When the reference was updated.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ReferenceListItem.type = Types::ReferenceListItem
    ReferenceStoreDetail.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The store's ARN.</p>", "smithy.api#required" => {}}))
    ReferenceStoreDetail.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#required" => {}}))
    ReferenceStoreDetail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>"}))
    ReferenceStoreDetail.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The store's description.</p>"}))
    ReferenceStoreDetail.add_member(:sse_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SseConfig, location_name: 'sseConfig', traits: {"smithy.api#documentation" => "<p>The store's server-side encryption (SSE) settings.</p>"}))
    ReferenceStoreDetail.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the store was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ReferenceStoreDetail.type = Types::ReferenceStoreDetail
    ReferenceStoreDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreDetail)
    ReferenceStoreFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name to filter on.</p>"}))
    ReferenceStoreFilter.add_member(:created_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAfter', traits: {"smithy.api#documentation" => "<p>The filter's start date.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ReferenceStoreFilter.add_member(:created_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdBefore', traits: {"smithy.api#documentation" => "<p>The filter's end date.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ReferenceStoreFilter.type = Types::ReferenceStoreFilter
    RequestTimeoutException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    RequestTimeoutException.type = Types::RequestTimeoutException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RunCacheList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheListItem)
    RunCacheListItem.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Unique resource identifier for the run cache.</p>"}))
    RunCacheListItem.add_member(:cache_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehavior, location_name: 'cacheBehavior', traits: {"smithy.api#documentation" => "<p>Default cache behavior for the run cache.</p>"}))
    RunCacheListItem.add_member(:cache_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3UriForBucketOrObject, location_name: 'cacheS3Uri', traits: {"smithy.api#documentation" => "<p>The S3 uri for the run cache data.</p>"}))
    RunCacheListItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheTimestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time that this run cache was created (an ISO 8601 formatted string).</p>"}))
    RunCacheListItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier for this run cache.</p>"}))
    RunCacheListItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserCustomName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the run cache.</p>"}))
    RunCacheListItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The run cache status.</p>"}))
    RunCacheListItem.type = Types::RunCacheListItem
    RunExportList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RunExport)
    RunGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupListItem)
    RunGroupListItem.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The group's ARN.</p>"}))
    RunGroupListItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The group's ID.</p>"}))
    RunGroupListItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The group's name.</p>"}))
    RunGroupListItem.add_member(:max_cpus, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxCpus', traits: {"smithy.api#documentation" => "<p>The group's maximum CPU count setting.</p>", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    RunGroupListItem.add_member(:max_runs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxRuns', traits: {"smithy.api#documentation" => "<p>The group's maximum concurrent run setting.</p>", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    RunGroupListItem.add_member(:max_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxDuration', traits: {"smithy.api#documentation" => "<p>The group's maximum duration setting in minutes.</p>", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    RunGroupListItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupTimestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the group was created.</p>"}))
    RunGroupListItem.add_member(:max_gpus, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxGpus', traits: {"smithy.api#documentation" => "<p> The maximum GPUs that can be used by a run group. </p>", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    RunGroupListItem.type = Types::RunGroupListItem
    RunList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RunListItem)
    RunListItem.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RunArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The run's ARN.</p>"}))
    RunListItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The run's ID.</p>"}))
    RunListItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RunStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The run's status.</p>"}))
    RunListItem.add_member(:workflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'workflowId', traits: {"smithy.api#documentation" => "<p>The run's workflow ID.</p>"}))
    RunListItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RunName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The run's name.</p>"}))
    RunListItem.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>The run's priority.</p>", "smithy.api#range" => {"min" => 0, "max" => 100000}}))
    RunListItem.add_member(:storage_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'storageCapacity', traits: {"smithy.api#documentation" => "<p>The run's storage capacity in gibibytes. For dynamic storage, after the run has completed, this value is the maximum amount of storage used during the run.</p>", "smithy.api#range" => {"min" => 0, "max" => 100000}}))
    RunListItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: RunTimestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the run was created.</p>"}))
    RunListItem.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: RunTimestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>When the run started.</p>"}))
    RunListItem.add_member(:stop_time, Smithy::Schema::Shapes::ShapeRef.new(shape: RunTimestamp, location_name: 'stopTime', traits: {"smithy.api#documentation" => "<p>When the run stopped.</p>"}))
    RunListItem.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageType, location_name: 'storageType', traits: {"smithy.api#documentation" => "<p>The run's storage type.</p>"}))
    RunListItem.add_member(:workflow_version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionName, location_name: 'workflowVersionName', traits: {"smithy.api#documentation" => "<p>The name of the workflow version.</p>"}))
    RunListItem.type = Types::RunListItem
    RunLogLocation.add_member(:engine_log_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineLogStream, location_name: 'engineLogStream', traits: {"smithy.api#documentation" => "<p>The log stream ARN for the engine log.</p>"}))
    RunLogLocation.add_member(:run_log_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: RunLogStream, location_name: 'runLogStream', traits: {"smithy.api#documentation" => "<p>The log stream ARN for the run log.</p>"}))
    RunLogLocation.type = Types::RunLogLocation
    RunResourceDigests.key = Smithy::Schema::Shapes::ShapeRef.new(shape: RunResourceDigestKey)
    RunResourceDigests.value = Smithy::Schema::Shapes::ShapeRef.new(shape: RunResourceDigest)
    S3AccessConfig.add_member(:access_log_location, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogLocation, location_name: 'accessLogLocation', traits: {"smithy.api#documentation" => "<p>Location of the access logs.</p>"}))
    S3AccessConfig.type = Types::S3AccessConfig
    Schema.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaItem)
    SchemaItem.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#pattern" => "^[a-z0-9_]{1,255}$"})
    SchemaItem.value = Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaValueType)
    SequenceInformation.add_member(:total_read_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'totalReadCount', traits: {"smithy.api#documentation" => "<p>The sequence's total read count.</p>"}))
    SequenceInformation.add_member(:total_base_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'totalBaseCount', traits: {"smithy.api#documentation" => "<p>The sequence's total base count.</p>"}))
    SequenceInformation.add_member(:generated_from, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedFrom, location_name: 'generatedFrom', traits: {"smithy.api#documentation" => "<p>Where the sequence originated.</p>"}))
    SequenceInformation.add_member(:alignment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'alignment', traits: {"smithy.api#documentation" => "<p>The sequence's alignment setting.</p>"}))
    SequenceInformation.type = Types::SequenceInformation
    SequenceStoreDetail.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The store's ARN.</p>", "smithy.api#required" => {}}))
    SequenceStoreDetail.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#required" => {}}))
    SequenceStoreDetail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>"}))
    SequenceStoreDetail.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The store's description.</p>"}))
    SequenceStoreDetail.add_member(:sse_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SseConfig, location_name: 'sseConfig', traits: {"smithy.api#documentation" => "<p>The store's server-side encryption (SSE) settings.</p>"}))
    SequenceStoreDetail.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the store was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    SequenceStoreDetail.add_member(:fallback_location, Smithy::Schema::Shapes::ShapeRef.new(shape: FallbackLocation, location_name: 'fallbackLocation', traits: {"smithy.api#documentation" => "<p> An S3 location that is used to store files that have failed a direct upload. </p>"}))
    SequenceStoreDetail.add_member(:e_tag_algorithm_family, Smithy::Schema::Shapes::ShapeRef.new(shape: ETagAlgorithmFamily, location_name: 'eTagAlgorithmFamily', traits: {"smithy.api#documentation" => "<p>The algorithm family of the ETag.</p>"}))
    SequenceStoreDetail.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Status of the sequence store.</p>"}))
    SequenceStoreDetail.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The status message of the sequence store.</p>"}))
    SequenceStoreDetail.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The last-updated time of the Sequence Store.</p>", "smithy.api#timestampFormat" => "date-time"}))
    SequenceStoreDetail.type = Types::SequenceStoreDetail
    SequenceStoreDetailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreDetail)
    SequenceStoreFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name to filter on.</p>"}))
    SequenceStoreFilter.add_member(:created_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAfter', traits: {"smithy.api#documentation" => "<p>The filter's start date.</p>", "smithy.api#timestampFormat" => "date-time"}))
    SequenceStoreFilter.add_member(:created_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdBefore', traits: {"smithy.api#documentation" => "<p>The filter's end date.</p>", "smithy.api#timestampFormat" => "date-time"}))
    SequenceStoreFilter.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Filter results based on status.</p>"}))
    SequenceStoreFilter.add_member(:updated_after, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAfter', traits: {"smithy.api#documentation" => "<p>Filter results based on stores updated after the specified time.</p>", "smithy.api#timestampFormat" => "date-time"}))
    SequenceStoreFilter.add_member(:updated_before, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedBefore', traits: {"smithy.api#documentation" => "<p>Filter results based on stores updated before the specified time.</p>", "smithy.api#timestampFormat" => "date-time"}))
    SequenceStoreFilter.type = Types::SequenceStoreFilter
    SequenceStoreS3Access.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 's3Uri', traits: {"smithy.api#documentation" => "<p>The S3 URI of the sequence store.</p>"}))
    SequenceStoreS3Access.add_member(:s3_access_point_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessPointArn, location_name: 's3AccessPointArn', traits: {"smithy.api#documentation" => "<p>This is ARN of the access point associated with the S3 bucket storing read sets.</p>"}))
    SequenceStoreS3Access.add_member(:access_log_location, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessLogLocation, location_name: 'accessLogLocation', traits: {"smithy.api#documentation" => "<p>Location of the access logs.</p>"}))
    SequenceStoreS3Access.type = Types::SequenceStoreS3Access
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ShareDetails.add_member(:share_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'shareId', traits: {"smithy.api#documentation" => "<p>The ID of the resource share.</p>"}))
    ShareDetails.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Arn of the shared resource. </p>"}))
    ShareDetails.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the shared resource. </p>"}))
    ShareDetails.add_member(:principal_subscriber, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'principalSubscriber', traits: {"smithy.api#documentation" => "<p>The principal subscriber is the account that is sharing the resource.</p>"}))
    ShareDetails.add_member(:owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'ownerId', traits: {"smithy.api#documentation" => "<p>The account ID for the data owner. The owner creates the resource share.</p>"}))
    ShareDetails.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the share.</p>"}))
    ShareDetails.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The status message for a resource share. It provides additional details about the share status.</p>"}))
    ShareDetails.add_member(:share_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ShareName, location_name: 'shareName', traits: {"smithy.api#documentation" => "<p>The name of the resource share.</p>"}))
    ShareDetails.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The timestamp of when the resource share was created.</p>"}))
    ShareDetails.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The timestamp of the resource share update.</p>"}))
    ShareDetails.type = Types::ShareDetails
    ShareDetailsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ShareDetails)
    SourceFiles.add_member(:source1, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'source1', traits: {"smithy.api#documentation" => "<p>The location of the first file in Amazon S3.</p>", "smithy.api#required" => {}}))
    SourceFiles.add_member(:source2, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'source2', traits: {"smithy.api#documentation" => "<p>The location of the second file in Amazon S3.</p>"}))
    SourceFiles.type = Types::SourceFiles
    SourceReference.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceReferenceType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of source reference, such as branch, tag, or commit.</p>", "smithy.api#required" => {}}))
    SourceReference.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceReferenceValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the source reference, such as the branch name, tag name, or commit ID.</p>", "smithy.api#required" => {}}))
    SourceReference.type = Types::SourceReference
    SseConfig.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The encryption type.</p>", "smithy.api#required" => {}}))
    SseConfig.add_member(:key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'keyArn', traits: {"smithy.api#documentation" => "<p>An encryption key ARN.</p>", "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "arn:([^:\n]*):([^:\n]*):([^:\n]*):([0-9]{12}):([^:\n]*)"}))
    SseConfig.type = Types::SseConfig
    StartAnnotationImportRequest.add_member(:destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreName, location_name: 'destinationName', traits: {"smithy.api#documentation" => "<p>A destination annotation store for the job.</p>", "smithy.api#required" => {}}))
    StartAnnotationImportRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>A service role for the job.</p>", "smithy.api#required" => {}}))
    StartAnnotationImportRequest.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationImportItemSources, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Items to import.</p>", "smithy.api#required" => {}}))
    StartAnnotationImportRequest.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p> The name of the annotation store version. </p>"}))
    StartAnnotationImportRequest.add_member(:format_options, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatOptions, location_name: 'formatOptions', traits: {"smithy.api#documentation" => "<p>Formatting options for the annotation file.</p>"}))
    StartAnnotationImportRequest.add_member(:run_left_normalization, Smithy::Schema::Shapes::ShapeRef.new(shape: RunLeftNormalization, location_name: 'runLeftNormalization', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>The job's left normalization setting.</p>"}))
    StartAnnotationImportRequest.add_member(:annotation_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationFieldMap, location_name: 'annotationFields', traits: {"smithy.api#documentation" => "<p>The annotation schema generated by the parsed annotation data.</p>"}))
    StartAnnotationImportRequest.type = Types::StartAnnotationImportRequest
    StartAnnotationImportResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    StartAnnotationImportResponse.type = Types::StartAnnotationImportResponse
    StartReadSetActivationJobRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The read set's sequence store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartReadSetActivationJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>To ensure that jobs don't run multiple times, specify a unique token for each job.</p>"}))
    StartReadSetActivationJobRequest.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: StartReadSetActivationJobSourceList, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The job's source files.</p>", "smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#required" => {}}))
    StartReadSetActivationJobRequest.type = Types::StartReadSetActivationJobRequest
    StartReadSetActivationJobResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActivationJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    StartReadSetActivationJobResponse.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The read set's sequence store ID.</p>", "smithy.api#required" => {}}))
    StartReadSetActivationJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetActivationJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    StartReadSetActivationJobResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartReadSetActivationJobResponse.type = Types::StartReadSetActivationJobResponse
    StartReadSetActivationJobSourceItem.add_member(:read_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetId, location_name: 'readSetId', traits: {"smithy.api#documentation" => "<p>The source's read set ID.</p>", "smithy.api#required" => {}}))
    StartReadSetActivationJobSourceItem.type = Types::StartReadSetActivationJobSourceItem
    StartReadSetActivationJobSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReadSetActivationJobSourceItem)
    StartReadSetExportJobRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The read set's sequence store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartReadSetExportJobRequest.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>A location for exported files in Amazon S3.</p>", "smithy.api#required" => {}}))
    StartReadSetExportJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>A service role for the job.</p>", "smithy.api#required" => {}}))
    StartReadSetExportJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>To ensure that jobs don't run multiple times, specify a unique token for each job.</p>"}))
    StartReadSetExportJobRequest.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportReadSetList, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The job's source files.</p>", "smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    StartReadSetExportJobRequest.type = Types::StartReadSetExportJobRequest
    StartReadSetExportJobResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    StartReadSetExportJobResponse.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The read set's sequence store ID.</p>", "smithy.api#required" => {}}))
    StartReadSetExportJobResponse.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: 'destination', traits: {"smithy.api#documentation" => "<p>The job's output location.</p>", "smithy.api#required" => {}}))
    StartReadSetExportJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetExportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    StartReadSetExportJobResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartReadSetExportJobResponse.type = Types::StartReadSetExportJobResponse
    StartReadSetImportJobRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The read set's sequence store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartReadSetImportJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>A service role for the job.</p>", "smithy.api#required" => {}}))
    StartReadSetImportJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>To ensure that jobs don't run multiple times, specify a unique token for each job.</p>"}))
    StartReadSetImportJobRequest.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: StartReadSetImportJobSourceList, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The job's source files.</p>", "smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    StartReadSetImportJobRequest.type = Types::StartReadSetImportJobRequest
    StartReadSetImportJobResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    StartReadSetImportJobResponse.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The read set's sequence store ID.</p>", "smithy.api#required" => {}}))
    StartReadSetImportJobResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The job's service role ARN.</p>", "smithy.api#required" => {}}))
    StartReadSetImportJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetImportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    StartReadSetImportJobResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartReadSetImportJobResponse.type = Types::StartReadSetImportJobResponse
    StartReadSetImportJobSourceItem.add_member(:source_files, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceFiles, location_name: 'sourceFiles', traits: {"smithy.api#documentation" => "<p>The source files' location in Amazon S3.</p>", "smithy.api#required" => {}}))
    StartReadSetImportJobSourceItem.add_member(:source_file_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FileType, location_name: 'sourceFileType', traits: {"smithy.api#documentation" => "<p>The source's file type.</p>", "smithy.api#required" => {}}))
    StartReadSetImportJobSourceItem.add_member(:subject_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SubjectId, location_name: 'subjectId', traits: {"smithy.api#documentation" => "<p>The source's subject ID.</p>", "smithy.api#required" => {}}))
    StartReadSetImportJobSourceItem.add_member(:sample_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SampleId, location_name: 'sampleId', traits: {"smithy.api#documentation" => "<p>The source's sample ID.</p>", "smithy.api#required" => {}}))
    StartReadSetImportJobSourceItem.add_member(:generated_from, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedFrom, location_name: 'generatedFrom', traits: {"smithy.api#documentation" => "<p>Where the source originated.</p>"}))
    StartReadSetImportJobSourceItem.add_member(:reference_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceArn, location_name: 'referenceArn', traits: {"smithy.api#documentation" => "<p>The source's reference ARN.</p>"}))
    StartReadSetImportJobSourceItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The source's name.</p>"}))
    StartReadSetImportJobSourceItem.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The source's description.</p>"}))
    StartReadSetImportJobSourceItem.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The source's tags.</p>"}))
    StartReadSetImportJobSourceItem.type = Types::StartReadSetImportJobSourceItem
    StartReadSetImportJobSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReadSetImportJobSourceItem)
    StartReferenceImportJobRequest.add_member(:reference_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'referenceStoreId', traits: {"smithy.api#documentation" => "<p>The job's reference store ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartReferenceImportJobRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>A service role for the job.</p>", "smithy.api#required" => {}}))
    StartReferenceImportJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>To ensure that jobs don't run multiple times, specify a unique token for each job.</p>"}))
    StartReferenceImportJobRequest.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: StartReferenceImportJobSourceList, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The job's source files.</p>", "smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    StartReferenceImportJobRequest.type = Types::StartReferenceImportJobRequest
    StartReferenceImportJobResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportJobId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    StartReferenceImportJobResponse.add_member(:reference_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceStoreId, location_name: 'referenceStoreId', traits: {"smithy.api#documentation" => "<p>The job's reference store ID.</p>", "smithy.api#required" => {}}))
    StartReferenceImportJobResponse.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The job's service role ARN.</p>", "smithy.api#required" => {}}))
    StartReferenceImportJobResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceImportJobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    StartReferenceImportJobResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartReferenceImportJobResponse.type = Types::StartReferenceImportJobResponse
    StartReferenceImportJobSourceItem.add_member(:source_file, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'sourceFile', traits: {"smithy.api#documentation" => "<p>The source file's location in Amazon S3.</p>", "smithy.api#required" => {}}))
    StartReferenceImportJobSourceItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The source's name.</p>", "smithy.api#required" => {}}))
    StartReferenceImportJobSourceItem.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The source's description.</p>"}))
    StartReferenceImportJobSourceItem.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The source's tags.</p>"}))
    StartReferenceImportJobSourceItem.type = Types::StartReferenceImportJobSourceItem
    StartReferenceImportJobSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReferenceImportJobSourceItem)
    StartRunRequest.add_member(:workflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'workflowId', traits: {"smithy.api#documentation" => "<p>The run's workflow ID. The <code>workflowId</code> is not the UUID.</p>"}))
    StartRunRequest.add_member(:workflow_type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowType, location_name: 'workflowType', traits: {"smithy.api#documentation" => "<p>The run's workflow type. The <code>workflowType</code> must be specified if you are running a <code>READY2RUN</code> workflow. If you are running a <code>PRIVATE</code> workflow (default), you do not need to include the workflow type. </p>"}))
    StartRunRequest.add_member(:run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunId, location_name: 'runId', traits: {"smithy.api#documentation" => "<p>The ID of a run to duplicate.</p>"}))
    StartRunRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RunRoleArn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>A service role for the run. The <code>roleArn</code> requires access to Amazon Web Services HealthOmics, S3, Cloudwatch logs, and EC2. An example <code>roleArn</code> is <code>arn:aws:iam::123456789012:role/omics-service-role-serviceRole-W8O1XMPL7QZ</code>. In this example, the AWS account ID is <code>123456789012</code> and the role name is <code>omics-service-role-serviceRole-W8O1XMPL7QZ</code>.</p>", "smithy.api#required" => {}}))
    StartRunRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RunName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the run. This is recommended to view and organize runs in the Amazon Web Services HealthOmics console and CloudWatch logs.</p>"}))
    StartRunRequest.add_member(:cache_id, Smithy::Schema::Shapes::ShapeRef.new(shape: NumericIdInArn, location_name: 'cacheId', traits: {"smithy.api#documentation" => "<p>Identifier of the cache associated with this run. If you don't specify a cache ID, no task outputs are cached for this run.</p>"}))
    StartRunRequest.add_member(:cache_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehavior, location_name: 'cacheBehavior', traits: {"smithy.api#documentation" => "<p>The cache behavior for the run. You specify this value if you want to override the default behavior for the cache. You had set the default value when you created the cache. For more information, see <a href=\"https://docs.aws.amazon.com/omics/latest/dev/how-run-cache.html#run-cache-behavior\">Run cache behavior</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>"}))
    StartRunRequest.add_member(:run_group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupId, location_name: 'runGroupId', traits: {"smithy.api#documentation" => "<p>The run's group ID. Use a run group to cap the compute resources (and number of concurrent runs) for the runs that you add to the run group.</p>"}))
    StartRunRequest.add_member(:priority, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'priority', traits: {"smithy.api#documentation" => "<p>Use the run priority (highest: 1) to establish the order of runs in a run group when you start a run. If multiple runs share the same priority, the run that was initiated first will have the higher priority. Runs that do not belong to a run group can be assigned a priority. The priorities of these runs are ranked among other runs that are not in a run group. For more information, see <a href=\"https://docs.aws.amazon.com/omics/latest/dev/creating-run-groups.html#run-priority\">Run priority</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>", "smithy.api#range" => {"min" => 0, "max" => 100000}}))
    StartRunRequest.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: RunParameters, location_name: 'parameters', traits: {"smithy.api#documentation" => "<p>Parameters for the run. The run needs all required parameters and can include optional parameters. The run cannot include any parameters that are not defined in the parameter template. To retrieve parameters from the run, use the GetRun API operation.</p>"}))
    StartRunRequest.add_member(:storage_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'storageCapacity', traits: {"smithy.api#documentation" => "<p>The <code>STATIC</code> storage capacity (in gibibytes, GiB) for this run. The default run storage capacity is 1200 GiB. If your requested storage capacity is unavailable, the system rounds up the value to the nearest 1200 GiB multiple. If the requested storage capacity is still unavailable, the system rounds up the value to the nearest 2400 GiB multiple. This field is not required if the storage type is <code>DYNAMIC</code> (the system ignores any value that you enter).</p>", "smithy.api#range" => {"min" => 0, "max" => 100000}}))
    StartRunRequest.add_member(:output_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: RunOutputUri, location_name: 'outputUri', traits: {"smithy.api#documentation" => "<p>An output S3 URI for the run. The S3 bucket must be in the same region as the workflow. The role ARN must have permission to write to this S3 bucket.</p>"}))
    StartRunRequest.add_member(:log_level, Smithy::Schema::Shapes::ShapeRef.new(shape: RunLogLevel, location_name: 'logLevel', traits: {"smithy.api#documentation" => "<p>A log level for the run.</p>"}))
    StartRunRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags for the run. You can add up to 50 tags per run. For more information, see <a href=\"https://docs.aws.amazon.com/omics/latest/dev/add-a-tag.html\">Adding a tag</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>"}))
    StartRunRequest.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunRequestId, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>An idempotency token used to dedupe retry requests so that duplicate runs are not created.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartRunRequest.add_member(:retention_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: RunRetentionMode, location_name: 'retentionMode', traits: {"smithy.api#documentation" => "<p>The retention mode for the run. The default value is <code>RETAIN</code>. </p> <p>Amazon Web Services HealthOmics stores a fixed number of runs that are available to the console and API. In the default mode (<code>RETAIN</code>), you need to remove runs manually when the number of run exceeds the maximum. If you set the retention mode to <code>REMOVE</code>, Amazon Web Services HealthOmics automatically removes runs (that have mode set to <code>REMOVE</code>) when the number of run exceeds the maximum. All run logs are available in CloudWatch logs, if you need information about a run that is no longer available to the API.</p> <p>For more information about retention mode, see <a href=\"https://docs.aws.amazon.com/omics/latest/dev/starting-a-run.html\">Specifying run retention mode</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>"}))
    StartRunRequest.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageType, location_name: 'storageType', traits: {"smithy.api#documentation" => "<p>The storage type for the run. If you set the storage type to <code>DYNAMIC</code>, Amazon Web Services HealthOmics dynamically scales the storage up or down, based on file system utilization. By default, the run uses <code>STATIC</code> storage type, which allocates a fixed amount of storage. For more information about <code>DYNAMIC</code> and <code>STATIC</code> storage, see <a href=\"https://docs.aws.amazon.com/omics/latest/dev/workflows-run-types.html\">Run storage types</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>"}))
    StartRunRequest.add_member(:workflow_owner_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowOwnerId, location_name: 'workflowOwnerId', traits: {"smithy.api#documentation" => "<p>The 12-digit account ID of the workflow owner that is used for running a shared workflow. The workflow owner ID can be retrieved using the <code>GetShare</code> API operation. If you are the workflow owner, you do not need to include this ID.</p>"}))
    StartRunRequest.add_member(:workflow_version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionName, location_name: 'workflowVersionName', traits: {"smithy.api#documentation" => "<p>The name of the workflow version. Use workflow versions to track and organize changes to the workflow. If your workflow has multiple versions, the run uses the default version unless you specify a version name. To learn more, see <a href=\"https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html\">Workflow versioning</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>"}))
    StartRunRequest.type = Types::StartRunRequest
    StartRunResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RunArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>Unique resource identifier for the run.</p>"}))
    StartRunResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The run's ID.</p>"}))
    StartRunResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RunStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The run's status.</p>"}))
    StartRunResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The run's tags.</p>"}))
    StartRunResponse.add_member(:uuid, Smithy::Schema::Shapes::ShapeRef.new(shape: RunUuid, location_name: 'uuid', traits: {"smithy.api#documentation" => "<p>The universally unique identifier for a run.</p>"}))
    StartRunResponse.add_member(:run_output_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: RunOutputUri, location_name: 'runOutputUri', traits: {"smithy.api#documentation" => "<p>The destination for workflow outputs.</p>"}))
    StartRunResponse.type = Types::StartRunResponse
    StartVariantImportRequest.add_member(:destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreName, location_name: 'destinationName', traits: {"smithy.api#documentation" => "<p>The destination variant store for the job.</p>", "smithy.api#required" => {}}))
    StartVariantImportRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>A service role for the job.</p>", "smithy.api#required" => {}}))
    StartVariantImportRequest.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: VariantImportItemSources, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Items to import.</p>", "smithy.api#required" => {}}))
    StartVariantImportRequest.add_member(:run_left_normalization, Smithy::Schema::Shapes::ShapeRef.new(shape: RunLeftNormalization, location_name: 'runLeftNormalization', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>The job's left normalization setting.</p>"}))
    StartVariantImportRequest.add_member(:annotation_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationFieldMap, location_name: 'annotationFields', traits: {"smithy.api#documentation" => "<p>The annotation schema generated by the parsed annotation data.</p>"}))
    StartVariantImportRequest.type = Types::StartVariantImportRequest
    StartVariantImportResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    StartVariantImportResponse.type = Types::StartVariantImportResponse
    StatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ShareStatus)
    StoreOptions.add_member(:tsv_store_options, Types::StoreOptions::TsvStoreOptions, Smithy::Schema::Shapes::ShapeRef.new(shape: TsvStoreOptions, location_name: 'tsvStoreOptions', traits: {"smithy.api#documentation" => "<p>File settings for a TSV store.</p>"}))
    StoreOptions.add_member(:unknown, Types::StoreOptions::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    StoreOptions.type = Types::StoreOptions
    StoreType.add_member(:sequence_store, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEQUENCE_STORE', traits: {"smithy.api#enumValue" => "SEQUENCE_STORE"}))
    StoreType.add_member(:reference_store, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REFERENCE_STORE', traits: {"smithy.api#enumValue" => "REFERENCE_STORE"}))
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TagArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The resource's ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags for the resource.</p>", "smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TaskList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TaskListItem)
    TaskListItem.add_member(:task_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskId, location_name: 'taskId', traits: {"smithy.api#documentation" => "<p>The task's ID.</p>"}))
    TaskListItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The task's status.</p>"}))
    TaskListItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The task's name.</p>"}))
    TaskListItem.add_member(:cpus, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'cpus', traits: {"smithy.api#documentation" => "<p>The task's CPU count.</p>", "smithy.api#range" => {"min" => 1}}))
    TaskListItem.add_member(:cache_hit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'cacheHit', traits: {"smithy.api#documentation" => "<p>Set to true if Amazon Web Services HealthOmics found a matching entry in the run cache for this task.</p>"}))
    TaskListItem.add_member(:cache_s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3UriForBucketOrObject, location_name: 'cacheS3Uri', traits: {"smithy.api#documentation" => "<p>The S3 URI of the cache location.</p>"}))
    TaskListItem.add_member(:memory, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'memory', traits: {"smithy.api#documentation" => "<p>The task's memory use in gigabyes.</p>", "smithy.api#range" => {"min" => 1}}))
    TaskListItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskTimestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the task was created.</p>"}))
    TaskListItem.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskTimestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>When the task started.</p>"}))
    TaskListItem.add_member(:stop_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskTimestamp, location_name: 'stopTime', traits: {"smithy.api#documentation" => "<p>When the task stopped.</p>"}))
    TaskListItem.add_member(:gpus, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'gpus', traits: {"smithy.api#documentation" => "<p> The number of Graphics Processing Units (GPU) specified for the task. </p>", "smithy.api#range" => {"min" => 0}}))
    TaskListItem.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TaskInstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p> The instance type for a task.</p>"}))
    TaskListItem.type = Types::TaskListItem
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TsvOptions.add_member(:read_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadOptions, location_name: 'readOptions', traits: {"smithy.api#documentation" => "<p>The file's read options.</p>"}))
    TsvOptions.type = Types::TsvOptions
    TsvStoreOptions.add_member(:annotation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationType, location_name: 'annotationType', traits: {"smithy.api#documentation" => "<p>The store's annotation type.</p>"}))
    TsvStoreOptions.add_member(:format_to_header, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatToHeader, location_name: 'formatToHeader', traits: {"smithy.api#documentation" => "<p>The store's header key to column name mapping.</p>"}))
    TsvStoreOptions.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: Schema, location_name: 'schema', traits: {"smithy.api#documentation" => "<p>The store's schema.</p>", "smithy.api#length" => {"min" => 1, "max" => 5000}}))
    TsvStoreOptions.type = Types::TsvStoreOptions
    TsvVersionOptions.add_member(:annotation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationType, location_name: 'annotationType', traits: {"smithy.api#documentation" => "<p> The store version's annotation type. </p>"}))
    TsvVersionOptions.add_member(:format_to_header, Smithy::Schema::Shapes::ShapeRef.new(shape: FormatToHeader, location_name: 'formatToHeader', traits: {"smithy.api#documentation" => "<p> The annotation store version's header key to column name mapping. </p>"}))
    TsvVersionOptions.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: Schema, location_name: 'schema', traits: {"smithy.api#documentation" => "<p> The TSV schema for an annotation store version. </p>", "smithy.api#length" => {"min" => 1, "max" => 5000}}))
    TsvVersionOptions.type = Types::TsvVersionOptions
    TypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ShareResourceType)
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TagArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The resource's ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>Keys of tags to remove.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAnnotationStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the store.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAnnotationStoreRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the store.</p>"}))
    UpdateAnnotationStoreRequest.type = Types::UpdateAnnotationStoreRequest
    UpdateAnnotationStoreResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#required" => {}}))
    UpdateAnnotationStoreResponse.add_member(:reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceItem, location_name: 'reference', traits: {"smithy.api#documentation" => "<p>The store's genome reference.</p>", "smithy.api#required" => {}}))
    UpdateAnnotationStoreResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The store's status.</p>", "smithy.api#required" => {}}))
    UpdateAnnotationStoreResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>", "smithy.api#required" => {}}))
    UpdateAnnotationStoreResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The store's description.</p>", "smithy.api#required" => {}}))
    UpdateAnnotationStoreResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the store was created.</p>", "smithy.api#required" => {}}))
    UpdateAnnotationStoreResponse.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>When the store was updated.</p>", "smithy.api#required" => {}}))
    UpdateAnnotationStoreResponse.add_member(:store_options, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreOptions, location_name: 'storeOptions', traits: {"smithy.api#documentation" => "<p>Parsing options for the store.</p>"}))
    UpdateAnnotationStoreResponse.add_member(:store_format, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreFormat, location_name: 'storeFormat', traits: {"smithy.api#documentation" => "<p>The annotation file format of the store.</p>"}))
    UpdateAnnotationStoreResponse.type = Types::UpdateAnnotationStoreResponse
    UpdateAnnotationStoreVersionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of an annotation store. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionRequest.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p> The name of an annotation store version. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of an annotation store. </p>"}))
    UpdateAnnotationStoreVersionRequest.type = Types::UpdateAnnotationStoreVersionRequest
    UpdateAnnotationStoreVersionResponse.add_member(:store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'storeId', traits: {"smithy.api#documentation" => "<p> The annotation store ID. </p>", "smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The annotation store version ID. </p>", "smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of an annotation store version. </p>", "smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of an annotation store. </p>", "smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionResponse.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p> The name of an annotation store version. </p>", "smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description of an annotation store version. </p>", "smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p> The time stamp for when an annotation store version was created. </p>", "smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionResponse.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p> The time stamp for when an annotation store version was updated. </p>", "smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionResponse.type = Types::UpdateAnnotationStoreVersionResponse
    UpdateRunCacheRequest.add_member(:cache_behavior, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheBehavior, location_name: 'cacheBehavior', traits: {"smithy.api#documentation" => "<p>Update the default run cache behavior.</p>"}))
    UpdateRunCacheRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: UserCustomDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Update the run cache description.</p>"}))
    UpdateRunCacheRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunCacheId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The identifier of the run cache you want to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRunCacheRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserCustomName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Update the name of the run cache.</p>"}))
    UpdateRunCacheRequest.type = Types::UpdateRunCacheRequest
    UpdateRunGroupRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The group's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRunGroupRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RunGroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the group.</p>"}))
    UpdateRunGroupRequest.add_member(:max_cpus, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxCpus', traits: {"smithy.api#documentation" => "<p>The maximum number of CPUs to use.</p>", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    UpdateRunGroupRequest.add_member(:max_runs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxRuns', traits: {"smithy.api#documentation" => "<p>The maximum number of concurrent runs for the group.</p>", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    UpdateRunGroupRequest.add_member(:max_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxDuration', traits: {"smithy.api#documentation" => "<p>A maximum run time for the group in minutes.</p>", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    UpdateRunGroupRequest.add_member(:max_gpus, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxGpus', traits: {"smithy.api#documentation" => "<p>The maximum GPUs that can be used by a run group.</p>", "smithy.api#range" => {"min" => 1, "max" => 100000}}))
    UpdateRunGroupRequest.type = Types::UpdateRunGroupRequest
    UpdateSequenceStoreRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the sequence store.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "sequenceStoreId"}))
    UpdateSequenceStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the sequence store.</p>"}))
    UpdateSequenceStoreRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the sequence store.</p>"}))
    UpdateSequenceStoreRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>To ensure that requests don't run multiple times, specify a unique token for each request.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateSequenceStoreRequest.add_member(:fallback_location, Smithy::Schema::Shapes::ShapeRef.new(shape: FallbackLocation, location_name: 'fallbackLocation', traits: {"smithy.api#documentation" => "<p>The S3 URI of a bucket and folder to store Read Sets that fail to upload.</p>"}))
    UpdateSequenceStoreRequest.add_member(:propagated_set_level_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: PropagatedSetLevelTags, location_name: 'propagatedSetLevelTags', traits: {"smithy.api#documentation" => "<p>The tags keys to propagate to the S3 objects associated with read sets in the sequence store.</p>"}))
    UpdateSequenceStoreRequest.add_member(:s3_access_config, Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessConfig, location_name: 's3AccessConfig', traits: {"smithy.api#documentation" => "<p>S3 access configuration parameters.</p>"}))
    UpdateSequenceStoreRequest.type = Types::UpdateSequenceStoreRequest
    UpdateSequenceStoreResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the sequence store.</p>", "smithy.api#required" => {}}))
    UpdateSequenceStoreResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the sequence store.</p>", "smithy.api#required" => {}}))
    UpdateSequenceStoreResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the sequence store.</p>"}))
    UpdateSequenceStoreResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Description of the sequence store.</p>"}))
    UpdateSequenceStoreResponse.add_member(:sse_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SseConfig, location_name: 'sseConfig'))
    UpdateSequenceStoreResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The time when the store was created.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    UpdateSequenceStoreResponse.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The last-updated time of the Sequence Store.</p>", "smithy.api#timestampFormat" => "date-time"}))
    UpdateSequenceStoreResponse.add_member(:propagated_set_level_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: PropagatedSetLevelTags, location_name: 'propagatedSetLevelTags', traits: {"smithy.api#documentation" => "<p>The tags keys to propagate to the S3 objects associated with read sets in the sequence store.</p>"}))
    UpdateSequenceStoreResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the sequence store.</p>"}))
    UpdateSequenceStoreResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The status message of the sequence store.</p>"}))
    UpdateSequenceStoreResponse.add_member(:fallback_location, Smithy::Schema::Shapes::ShapeRef.new(shape: FallbackLocation, location_name: 'fallbackLocation', traits: {"smithy.api#documentation" => "<p>The S3 URI of a bucket and folder to store Read Sets that fail to upload.</p>"}))
    UpdateSequenceStoreResponse.add_member(:s3_access, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreS3Access, location_name: 's3Access'))
    UpdateSequenceStoreResponse.add_member(:e_tag_algorithm_family, Smithy::Schema::Shapes::ShapeRef.new(shape: ETagAlgorithmFamily, location_name: 'eTagAlgorithmFamily', traits: {"smithy.api#documentation" => "<p>The ETag algorithm family to use on ingested read sets.</p>"}))
    UpdateSequenceStoreResponse.type = Types::UpdateSequenceStoreResponse
    UpdateVariantStoreRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the store.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVariantStoreRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the store.</p>"}))
    UpdateVariantStoreRequest.type = Types::UpdateVariantStoreRequest
    UpdateVariantStoreResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#required" => {}}))
    UpdateVariantStoreResponse.add_member(:reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceItem, location_name: 'reference', traits: {"smithy.api#documentation" => "<p>The store's genome reference.</p>", "smithy.api#required" => {}}))
    UpdateVariantStoreResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The store's status.</p>", "smithy.api#required" => {}}))
    UpdateVariantStoreResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>", "smithy.api#required" => {}}))
    UpdateVariantStoreResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The store's description.</p>", "smithy.api#required" => {}}))
    UpdateVariantStoreResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the store was created.</p>", "smithy.api#required" => {}}))
    UpdateVariantStoreResponse.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>When the store was updated.</p>", "smithy.api#required" => {}}))
    UpdateVariantStoreResponse.type = Types::UpdateVariantStoreResponse
    UpdateWorkflowRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The workflow's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkflowRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A name for the workflow.</p>"}))
    UpdateWorkflowRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description for the workflow.</p>"}))
    UpdateWorkflowRequest.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageType, location_name: 'storageType', traits: {"smithy.api#documentation" => "<p>The default storage type for runs that use this workflow. STATIC storage allocates a fixed amount of storage. DYNAMIC storage dynamically scales the storage up or down, based on file system utilization. For more information about static and dynamic storage, see <a href=\"https://docs.aws.amazon.com/omics/latest/dev/Using-workflows.html\">Running workflows</a> in the <i>Amazon Web Services HealthOmics User Guide</i>. </p>"}))
    UpdateWorkflowRequest.add_member(:storage_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'storageCapacity', traits: {"smithy.api#documentation" => "<p>The default static storage capacity (in gibibytes) for runs that use this workflow or workflow version. </p>", "smithy.api#range" => {"min" => 0, "max" => 100000}}))
    UpdateWorkflowRequest.add_member(:readme_markdown, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadmeMarkdown, location_name: 'readmeMarkdown', traits: {"smithy.api#documentation" => "<p>The markdown content for the workflow's README file. This provides documentation and usage information for users of the workflow.</p>"}))
    UpdateWorkflowRequest.type = Types::UpdateWorkflowRequest
    UpdateWorkflowVersionRequest.add_member(:workflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'workflowId', traits: {"smithy.api#documentation" => "<p>The workflow's ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    UpdateWorkflowVersionRequest.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p>The name of the workflow version.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkflowVersionRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>Description of the workflow version.</p>"}))
    UpdateWorkflowVersionRequest.add_member(:storage_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageType, location_name: 'storageType', traits: {"smithy.api#documentation" => "<p>The default storage type for runs that use this workflow. STATIC storage allocates a fixed amount of storage. DYNAMIC storage dynamically scales the storage up or down, based on file system utilization. For more information about static and dynamic storage, see <a href=\"https://docs.aws.amazon.com/omics/latest/dev/Using-workflows.html\">Running workflows</a> in the <i>Amazon Web Services HealthOmics User Guide</i>.</p>"}))
    UpdateWorkflowVersionRequest.add_member(:storage_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'storageCapacity', traits: {"smithy.api#documentation" => "<p>The default static storage capacity (in gibibytes) for runs that use this workflow or workflow version.</p>", "smithy.api#range" => {"min" => 0, "max" => 100000}}))
    UpdateWorkflowVersionRequest.add_member(:readme_markdown, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadmeMarkdown, location_name: 'readmeMarkdown', traits: {"smithy.api#documentation" => "<p>The markdown content for the workflow version's README file. This provides documentation and usage information for users of this specific workflow version.</p>"}))
    UpdateWorkflowVersionRequest.type = Types::UpdateWorkflowVersionRequest
    UploadReadSetPartRequest.add_member(:sequence_store_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SequenceStoreId, location_name: 'sequenceStoreId', traits: {"smithy.api#documentation" => "<p>The Sequence Store ID used for the multipart upload.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UploadReadSetPartRequest.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadId, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The ID for the initiated multipart upload.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UploadReadSetPartRequest.add_member(:part_source, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetPartSource, location_name: 'partSource', traits: {"smithy.api#documentation" => "<p>The source file for an upload part.</p>", "smithy.api#httpQuery" => "partSource", "smithy.api#required" => {}}))
    UploadReadSetPartRequest.add_member(:part_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'partNumber', traits: {"smithy.api#documentation" => "<p>The number of the part being uploaded.</p>", "smithy.api#httpQuery" => "partNumber", "smithy.api#range" => {"min" => 1, "max" => 10000}, "smithy.api#required" => {}}))
    UploadReadSetPartRequest.add_member(:payload, Smithy::Schema::Shapes::ShapeRef.new(shape: ReadSetPartStreamingBlob, location_name: 'payload', traits: {"smithy.api#documentation" => "<p>The read set data to upload for a part.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UploadReadSetPartRequest[:http_payload] = :payload
    UploadReadSetPartRequest[:http_payload_member] = UploadReadSetPartRequest.member(:payload)
    UploadReadSetPartRequest.type = Types::UploadReadSetPartRequest
    UploadReadSetPartResponse.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>An identifier used to confirm that parts are being added to the intended upload.</p>", "smithy.api#required" => {}}))
    UploadReadSetPartResponse.type = Types::UploadReadSetPartResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    VariantImportItemDetail.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source file's location in Amazon S3.</p>", "smithy.api#required" => {}}))
    VariantImportItemDetail.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'jobStatus', traits: {"smithy.api#documentation" => "<p>The item's job status.</p>", "smithy.api#required" => {}}))
    VariantImportItemDetail.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusMsg, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p> A message that provides additional context about a job </p>"}))
    VariantImportItemDetail.type = Types::VariantImportItemDetail
    VariantImportItemDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VariantImportItemDetail)
    VariantImportItemSource.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source file's location in Amazon S3.</p>", "smithy.api#required" => {}}))
    VariantImportItemSource.type = Types::VariantImportItemSource
    VariantImportItemSources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VariantImportItemSource)
    VariantImportJobItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The job's ID.</p>", "smithy.api#required" => {}}))
    VariantImportJobItem.add_member(:destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'destinationName', traits: {"smithy.api#documentation" => "<p>The job's destination variant store.</p>", "smithy.api#required" => {}}))
    VariantImportJobItem.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'roleArn', traits: {"smithy.api#documentation" => "<p>The job's service role ARN.</p>", "smithy.api#required" => {}}))
    VariantImportJobItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The job's status.</p>", "smithy.api#required" => {}}))
    VariantImportJobItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the job was created.</p>", "smithy.api#required" => {}}))
    VariantImportJobItem.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>When the job was updated.</p>", "smithy.api#required" => {}}))
    VariantImportJobItem.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CompletionTime, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p>When the job completed.</p>"}))
    VariantImportJobItem.add_member(:run_left_normalization, Smithy::Schema::Shapes::ShapeRef.new(shape: RunLeftNormalization, location_name: 'runLeftNormalization', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>The job's left normalization setting.</p>"}))
    VariantImportJobItem.add_member(:annotation_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: AnnotationFieldMap, location_name: 'annotationFields', traits: {"smithy.api#documentation" => "<p> The annotation schema generated by the parsed annotation data. </p>"}))
    VariantImportJobItem.type = Types::VariantImportJobItem
    VariantImportJobItems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VariantImportJobItem)
    VariantStoreItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The store's ID.</p>", "smithy.api#required" => {}}))
    VariantStoreItem.add_member(:reference, Smithy::Schema::Shapes::ShapeRef.new(shape: ReferenceItem, location_name: 'reference', traits: {"smithy.api#documentation" => "<p>The store's genome reference.</p>", "smithy.api#required" => {}}))
    VariantStoreItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StoreStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The store's status.</p>", "smithy.api#required" => {}}))
    VariantStoreItem.add_member(:store_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'storeArn', traits: {"smithy.api#documentation" => "<p>The store's ARN.</p>", "smithy.api#required" => {}}))
    VariantStoreItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The store's name.</p>", "smithy.api#required" => {}}))
    VariantStoreItem.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The store's description.</p>", "smithy.api#required" => {}}))
    VariantStoreItem.add_member(:sse_config, Smithy::Schema::Shapes::ShapeRef.new(shape: SseConfig, location_name: 'sseConfig', traits: {"smithy.api#documentation" => "<p>The store's server-side encryption (SSE) settings.</p>", "smithy.api#required" => {}}))
    VariantStoreItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the store was created.</p>", "smithy.api#required" => {}}))
    VariantStoreItem.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>When the store was updated.</p>", "smithy.api#required" => {}}))
    VariantStoreItem.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The store's status message.</p>", "smithy.api#required" => {}}))
    VariantStoreItem.add_member(:store_size_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Long, location_name: 'storeSizeBytes', traits: {"smithy.api#documentation" => "<p>The store's size in bytes.</p>", "smithy.api#required" => {}}))
    VariantStoreItem.type = Types::VariantStoreItem
    VariantStoreItems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VariantStoreItem)
    VcfOptions.add_member(:ignore_qual_field, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'ignoreQualField', traits: {"smithy.api#documentation" => "<p>The file's ignore qual field setting.</p>"}))
    VcfOptions.add_member(:ignore_filter_field, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'ignoreFilterField', traits: {"smithy.api#documentation" => "<p>The file's ignore filter field setting.</p>"}))
    VcfOptions.type = Types::VcfOptions
    VersionDeleteError.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p> The name given to an annotation store version. </p>", "smithy.api#required" => {}}))
    VersionDeleteError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p> The message explaining the error in annotation store deletion. </p>", "smithy.api#required" => {}}))
    VersionDeleteError.type = Types::VersionDeleteError
    VersionDeleteErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VersionDeleteError)
    VersionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VersionName)
    VersionOptions.add_member(:tsv_version_options, Types::VersionOptions::TsvVersionOptions, Smithy::Schema::Shapes::ShapeRef.new(shape: TsvVersionOptions, location_name: 'tsvVersionOptions', traits: {"smithy.api#documentation" => "<p> File settings for a version of a TSV store. </p>"}))
    VersionOptions.add_member(:unknown, Types::VersionOptions::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    VersionOptions.type = Types::VersionOptions
    WorkflowExportList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowExport)
    WorkflowList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowListItem)
    WorkflowListItem.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The workflow's ARN.</p>"}))
    WorkflowListItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The workflow's ID.</p>"}))
    WorkflowListItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The workflow's name.</p>"}))
    WorkflowListItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The workflow's status.</p>"}))
    WorkflowListItem.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The workflow's type.</p>"}))
    WorkflowListItem.add_member(:digest, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDigest, location_name: 'digest', traits: {"smithy.api#documentation" => "<p>The workflow's digest.</p>"}))
    WorkflowListItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowTimestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>When the workflow was created.</p>"}))
    WorkflowListItem.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p> Any metadata available for workflow. The information listed may vary depending on the workflow, and there may also be no metadata to return. </p>"}))
    WorkflowListItem.type = Types::WorkflowListItem
    WorkflowMetadata.key = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowMetadataKey)
    WorkflowMetadata.value = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowMetadataValue)
    WorkflowParameter.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowParameterDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The parameter's description.</p>"}))
    WorkflowParameter.add_member(:optional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'optional', traits: {"smithy.api#documentation" => "<p>Whether the parameter is optional.</p>"}))
    WorkflowParameter.type = Types::WorkflowParameter
    WorkflowParameterTemplate.key = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowParameterName)
    WorkflowParameterTemplate.value = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowParameter)
    WorkflowVersionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionListItem)
    WorkflowVersionListItem.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>ARN of the workflow version.</p>"}))
    WorkflowVersionListItem.add_member(:workflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowId, location_name: 'workflowId', traits: {"smithy.api#documentation" => "<p>The workflow's ID.</p>"}))
    WorkflowVersionListItem.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionName, location_name: 'versionName', traits: {"smithy.api#documentation" => "<p>The name of the workflow version.</p>"}))
    WorkflowVersionListItem.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowVersionDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the workflow version.</p>"}))
    WorkflowVersionListItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the workflow version.</p>"}))
    WorkflowVersionListItem.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the workflow version.</p>"}))
    WorkflowVersionListItem.add_member(:digest, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDigest, location_name: 'digest', traits: {"smithy.api#documentation" => "<p>The digist of the workflow version.</p>"}))
    WorkflowVersionListItem.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowTimestamp, location_name: 'creationTime', traits: {"smithy.api#documentation" => "<p>The creation time of the workflow version.</p>"}))
    WorkflowVersionListItem.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowMetadata, location_name: 'metadata', traits: {"smithy.api#documentation" => "<p>Metadata for the workflow version.</p>"}))
    WorkflowVersionListItem.type = Types::WorkflowVersionListItem

    Omics = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.omics#Omics"
      service.name = "Omics"
      service.version = "2022-11-28"
      service.traits = {"aws.api#service" => {"sdkId" => "Omics", "arnNamespace" => "omics", "cloudTrailEventSource" => "omics.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "omics"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the presence of tag key-value pairs attached to the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the presence of tag key-value pairs in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the presence of tag keys in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Omics"}
      service.add_operation(:abort_multipart_read_set_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#AbortMultipartReadSetUpload"
        operation.name = "AbortMultipartReadSetUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AbortMultipartReadSetUploadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AbortMultipartReadSetUploadResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to abort multipart read set uploads", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/sequencestore/{sequenceStoreId}/upload/{uploadId}/abort"}}
      end)
      service.add_operation(:accept_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#AcceptShare"
        operation.name = "AcceptShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptShareRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptShareResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/share/{shareId}", "code" => 200}}
      end)
      service.add_operation(:batch_delete_read_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#BatchDeleteReadSet"
        operation.name = "BatchDeleteReadSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteReadSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteReadSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to batch delete Read Sets in the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/readset/batch/delete"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_annotation_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CancelAnnotationImportJob"
        operation.name = "CancelAnnotationImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelAnnotationImportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelAnnotationImportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/import/annotation/{jobId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CancelRun"
        operation.name = "CancelRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/run/{id}/cancel", "code" => 202}}
      end)
      service.add_operation(:cancel_variant_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CancelVariantImportJob"
        operation.name = "CancelVariantImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelVariantImportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelVariantImportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/import/variant/{jobId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:complete_multipart_read_set_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CompleteMultipartReadSetUpload"
        operation.name = "CompleteMultipartReadSetUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteMultipartReadSetUploadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteMultipartReadSetUploadResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to complete a multipart read set upload", "smithy.api#endpoint" => {"hostPrefix" => "storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/upload/{uploadId}/complete"}}
      end)
      service.add_operation(:create_annotation_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateAnnotationStore"
        operation.name = "CreateAnnotationStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnnotationStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnnotationStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create an Annotation Store"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/annotationStore", "code" => 200}}
      end)
      service.add_operation(:create_annotation_store_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateAnnotationStoreVersion"
        operation.name = "CreateAnnotationStoreVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnnotationStoreVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnnotationStoreVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/annotationStore/{name}/version", "code" => 200}}
      end)
      service.add_operation(:create_multipart_read_set_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateMultipartReadSetUpload"
        operation.name = "CreateMultipartReadSetUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMultipartReadSetUploadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMultipartReadSetUploadResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a multipart read set upload", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/upload"}}
      end)
      service.add_operation(:create_reference_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateReferenceStore"
        operation.name = "CreateReferenceStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReferenceStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReferenceStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a Reference Store", "aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/referencestore"}}
      end)
      service.add_operation(:create_run_cache, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateRunCache"
        operation.name = "CreateRunCache"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRunCacheRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRunCacheResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/runCache", "code" => 201}}
      end)
      service.add_operation(:create_run_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateRunGroup"
        operation.name = "CreateRunGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRunGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRunGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/runGroup", "code" => 201}}
      end)
      service.add_operation(:create_sequence_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateSequenceStore"
        operation.name = "CreateSequenceStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSequenceStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSequenceStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a Sequence Store", "aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore"}}
      end)
      service.add_operation(:create_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateShare"
        operation.name = "CreateShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateShareRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateShareResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/share", "code" => 200}}
      end)
      service.add_operation(:create_variant_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateVariantStore"
        operation.name = "CreateVariantStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVariantStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVariantStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a Variant Store"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/variantStore", "code" => 200}}
      end)
      service.add_operation(:create_workflow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateWorkflow"
        operation.name = "CreateWorkflow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkflowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkflowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/workflow", "code" => 201}}
      end)
      service.add_operation(:create_workflow_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateWorkflowVersion"
        operation.name = "CreateWorkflowVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkflowVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWorkflowVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/workflow/{workflowId}/version", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_annotation_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteAnnotationStore"
        operation.name = "DeleteAnnotationStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnnotationStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnnotationStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an Annotation Store"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/annotationStore/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_annotation_store_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteAnnotationStoreVersions"
        operation.name = "DeleteAnnotationStoreVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnnotationStoreVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnnotationStoreVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/annotationStore/{name}/versions/delete", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_reference, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteReference"
        operation.name = "DeleteReference"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReferenceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReferenceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete a Reference in the given Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/referencestore/{referenceStoreId}/reference/{id}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_reference_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteReferenceStore"
        operation.name = "DeleteReferenceStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReferenceStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReferenceStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete a Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/referencestore/{id}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteRun"
        operation.name = "DeleteRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/run/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_run_cache, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteRunCache"
        operation.name = "DeleteRunCache"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRunCacheRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/runCache/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_run_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteRunGroup"
        operation.name = "DeleteRunGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRunGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/runGroup/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_s3_access_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteS3AccessPolicy"
        operation.name = "DeleteS3AccessPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteS3AccessPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteS3AccessPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an access policy on a given store"}, "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/s3accesspolicy/{s3AccessPointArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_sequence_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteSequenceStore"
        operation.name = "DeleteSequenceStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSequenceStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSequenceStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete a Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/sequencestore/{id}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteShare"
        operation.name = "DeleteShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteShareRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteShareResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/share/{shareId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_variant_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteVariantStore"
        operation.name = "DeleteVariantStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVariantStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVariantStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a Variant Store"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/variantStore/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workflow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteWorkflow"
        operation.name = "DeleteWorkflow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkflowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/workflow/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workflow_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteWorkflowVersion"
        operation.name = "DeleteWorkflowVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWorkflowVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/workflow/{workflowId}/version/{versionName}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_annotation_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetAnnotationImportJob"
        operation.name = "GetAnnotationImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnnotationImportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnnotationImportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/import/annotation/{jobId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_annotation_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetAnnotationStore"
        operation.name = "GetAnnotationStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnnotationStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnnotationStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get detailed information about an Annotation Store"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/annotationStore/{name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_annotation_store_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetAnnotationStoreVersion"
        operation.name = "GetAnnotationStoreVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnnotationStoreVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnnotationStoreVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/annotationStore/{name}/version/{versionName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_read_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReadSet"
        operation.name = "GetReadSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReadSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReadSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RangeNotSatisfiableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get a Read Set in the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/sequencestore/{sequenceStoreId}/readset/{id}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_read_set_activation_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReadSetActivationJob"
        operation.name = "GetReadSetActivationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReadSetActivationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReadSetActivationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get details about a Read Set activation job for the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/sequencestore/{sequenceStoreId}/activationjob/{id}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_read_set_export_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReadSetExportJob"
        operation.name = "GetReadSetExportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReadSetExportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReadSetExportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get details about a Read Set export job for the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/sequencestore/{sequenceStoreId}/exportjob/{id}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_read_set_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReadSetImportJob"
        operation.name = "GetReadSetImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReadSetImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReadSetImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get details about a Read Set import job for the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/sequencestore/{sequenceStoreId}/importjob/{id}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_read_set_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReadSetMetadata"
        operation.name = "GetReadSetMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReadSetMetadataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReadSetMetadataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get details about a Read Set in the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/sequencestore/{sequenceStoreId}/readset/{id}/metadata"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_reference, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReference"
        operation.name = "GetReference"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReferenceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReferenceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RangeNotSatisfiableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get a Reference in the given Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/referencestore/{referenceStoreId}/reference/{id}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_reference_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReferenceImportJob"
        operation.name = "GetReferenceImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReferenceImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReferenceImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get details about a Reference import job for the given Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/referencestore/{referenceStoreId}/importjob/{id}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_reference_metadata, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReferenceMetadata"
        operation.name = "GetReferenceMetadata"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReferenceMetadataRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReferenceMetadataResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get details about a Reference in the given Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/referencestore/{referenceStoreId}/reference/{id}/metadata"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_reference_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReferenceStore"
        operation.name = "GetReferenceStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReferenceStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReferenceStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get details about a Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/referencestore/{id}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetRun"
        operation.name = "GetRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/run/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_run_cache, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetRunCache"
        operation.name = "GetRunCache"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRunCacheRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRunCacheResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/runCache/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_run_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetRunGroup"
        operation.name = "GetRunGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRunGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRunGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/runGroup/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_run_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetRunTask"
        operation.name = "GetRunTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRunTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRunTaskResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/run/{id}/task/{taskId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_s3_access_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetS3AccessPolicy"
        operation.name = "GetS3AccessPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetS3AccessPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetS3AccessPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get details about an access policy on a given store"}, "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/s3accesspolicy/{s3AccessPointArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sequence_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetSequenceStore"
        operation.name = "GetSequenceStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSequenceStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSequenceStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get details about a Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/sequencestore/{id}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_share, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetShare"
        operation.name = "GetShare"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetShareRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetShareResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/share/{shareId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_variant_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetVariantImportJob"
        operation.name = "GetVariantImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVariantImportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVariantImportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/import/variant/{jobId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_variant_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetVariantStore"
        operation.name = "GetVariantStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVariantStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVariantStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get detailed information about a Variant Store"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/variantStore/{name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workflow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetWorkflow"
        operation.name = "GetWorkflow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkflowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkflowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/workflow/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workflow_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetWorkflowVersion"
        operation.name = "GetWorkflowVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkflowVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkflowVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/workflow/{workflowId}/version/{versionName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_annotation_import_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListAnnotationImportJobs"
        operation.name = "ListAnnotationImportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnnotationImportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnnotationImportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/import/annotations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAnnotationImportJobs.new
      end)
      service.add_operation(:list_annotation_store_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListAnnotationStoreVersions"
        operation.name = "ListAnnotationStoreVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnnotationStoreVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnnotationStoreVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/annotationStore/{name}/versions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAnnotationStoreVersions.new
      end)
      service.add_operation(:list_annotation_stores, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListAnnotationStores"
        operation.name = "ListAnnotationStores"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnnotationStoresRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnnotationStoresResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of information about Annotation Stores"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/annotationStores", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAnnotationStores.new
      end)
      service.add_operation(:list_multipart_read_set_uploads, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListMultipartReadSetUploads"
        operation.name = "ListMultipartReadSetUploads"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMultipartReadSetUploadsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMultipartReadSetUploadsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list multipart read set uploads", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/uploads"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMultipartReadSetUploads.new
      end)
      service.add_operation(:list_read_set_activation_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListReadSetActivationJobs"
        operation.name = "ListReadSetActivationJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReadSetActivationJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReadSetActivationJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list Read Set activation jobs for the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/activationjobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReadSetActivationJobs.new
      end)
      service.add_operation(:list_read_set_export_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListReadSetExportJobs"
        operation.name = "ListReadSetExportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReadSetExportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReadSetExportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list Read Set export jobs for the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/exportjobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReadSetExportJobs.new
      end)
      service.add_operation(:list_read_set_import_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListReadSetImportJobs"
        operation.name = "ListReadSetImportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReadSetImportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReadSetImportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list Read Set import jobs for the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/importjobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReadSetImportJobs.new
      end)
      service.add_operation(:list_read_set_upload_parts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListReadSetUploadParts"
        operation.name = "ListReadSetUploadParts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReadSetUploadPartsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReadSetUploadPartsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list read set upload parts", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/upload/{uploadId}/parts"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReadSetUploadParts.new
      end)
      service.add_operation(:list_read_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListReadSets"
        operation.name = "ListReadSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReadSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReadSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list Read Sets in the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/readsets"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReadSets.new
      end)
      service.add_operation(:list_reference_import_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListReferenceImportJobs"
        operation.name = "ListReferenceImportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReferenceImportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReferenceImportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list Reference import jobs for the given Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/referencestore/{referenceStoreId}/importjobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReferenceImportJobs.new
      end)
      service.add_operation(:list_reference_stores, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListReferenceStores"
        operation.name = "ListReferenceStores"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReferenceStoresRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReferenceStoresResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list Reference Stores", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/referencestores"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReferenceStores.new
      end)
      service.add_operation(:list_references, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListReferences"
        operation.name = "ListReferences"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReferencesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReferencesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list References in the given Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/referencestore/{referenceStoreId}/references"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReferences.new
      end)
      service.add_operation(:list_run_caches, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListRunCaches"
        operation.name = "ListRunCaches"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRunCachesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRunCachesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/runCache", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRunCaches.new
      end)
      service.add_operation(:list_run_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListRunGroups"
        operation.name = "ListRunGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRunGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRunGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/runGroup", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRunGroups.new
      end)
      service.add_operation(:list_run_tasks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListRunTasks"
        operation.name = "ListRunTasks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRunTasksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRunTasksResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/run/{id}/task", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRunTasks.new
      end)
      service.add_operation(:list_runs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListRuns"
        operation.name = "ListRuns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRunsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRunsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/run", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRuns.new
      end)
      service.add_operation(:list_sequence_stores, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListSequenceStores"
        operation.name = "ListSequenceStores"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSequenceStoresRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSequenceStoresResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list Sequence Stores", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestores"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSequenceStores.new
      end)
      service.add_operation(:list_shares, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListShares"
        operation.name = "ListShares"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSharesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSharesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/shares", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListShares.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "tags-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_variant_import_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListVariantImportJobs"
        operation.name = "ListVariantImportJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVariantImportJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVariantImportJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/import/variants", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVariantImportJobs.new
      end)
      service.add_operation(:list_variant_stores, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListVariantStores"
        operation.name = "ListVariantStores"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVariantStoresRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVariantStoresResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of metadata for Variant Stores"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/variantStores", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVariantStores.new
      end)
      service.add_operation(:list_workflow_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListWorkflowVersions"
        operation.name = "ListWorkflowVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkflowVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkflowVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/workflow/{workflowId}/version", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflowVersions.new
      end)
      service.add_operation(:list_workflows, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListWorkflows"
        operation.name = "ListWorkflows"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkflowsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkflowsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/workflow", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflows.new
      end)
      service.add_operation(:put_s3_access_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#PutS3AccessPolicy"
        operation.name = "PutS3AccessPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutS3AccessPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutS3AccessPolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to put an access policy on a given store"}, "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/s3accesspolicy/{s3AccessPointArn}"}}
      end)
      service.add_operation(:start_annotation_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#StartAnnotationImportJob"
        operation.name = "StartAnnotationImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAnnotationImportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAnnotationImportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/import/annotation", "code" => 200}}
      end)
      service.add_operation(:start_read_set_activation_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#StartReadSetActivationJob"
        operation.name = "StartReadSetActivationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReadSetActivationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReadSetActivationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to start a Read Set activation job from the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/activationjob"}}
      end)
      service.add_operation(:start_read_set_export_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#StartReadSetExportJob"
        operation.name = "StartReadSetExportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReadSetExportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReadSetExportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to start a Read Set export job from the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/exportjob"}}
      end)
      service.add_operation(:start_read_set_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#StartReadSetImportJob"
        operation.name = "StartReadSetImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReadSetImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReadSetImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to start a Read Set import job into the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/importjob"}}
      end)
      service.add_operation(:start_reference_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#StartReferenceImportJob"
        operation.name = "StartReferenceImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReferenceImportJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReferenceImportJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to start a Reference import job into the given Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/referencestore/{referenceStoreId}/importjob"}}
      end)
      service.add_operation(:start_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#StartRun"
        operation.name = "StartRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/run", "code" => 201}}
      end)
      service.add_operation(:start_variant_import_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#StartVariantImportJob"
        operation.name = "StartVariantImportJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartVariantImportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartVariantImportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/import/variant", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "tags-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "tags-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_annotation_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UpdateAnnotationStore"
        operation.name = "UpdateAnnotationStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnnotationStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnnotationStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update information about the Annotation Store"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/annotationStore/{name}", "code" => 200}}
      end)
      service.add_operation(:update_annotation_store_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UpdateAnnotationStoreVersion"
        operation.name = "UpdateAnnotationStoreVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnnotationStoreVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnnotationStoreVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/annotationStore/{name}/version/{versionName}", "code" => 200}}
      end)
      service.add_operation(:update_run_cache, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UpdateRunCache"
        operation.name = "UpdateRunCache"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRunCacheRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/runCache/{id}", "code" => 202}}
      end)
      service.add_operation(:update_run_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UpdateRunGroup"
        operation.name = "UpdateRunGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRunGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/runGroup/{id}", "code" => 202}}
      end)
      service.add_operation(:update_sequence_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UpdateSequenceStore"
        operation.name = "UpdateSequenceStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSequenceStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSequenceStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/sequencestore/{id}"}}
      end)
      service.add_operation(:update_variant_store, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UpdateVariantStore"
        operation.name = "UpdateVariantStore"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVariantStoreRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVariantStoreResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update metadata about the Variant Store"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/variantStore/{name}", "code" => 200}}
      end)
      service.add_operation(:update_workflow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UpdateWorkflow"
        operation.name = "UpdateWorkflow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkflowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/workflow/{id}", "code" => 202}}
      end)
      service.add_operation(:update_workflow_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UpdateWorkflowVersion"
        operation.name = "UpdateWorkflowVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWorkflowVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/workflow/{workflowId}/version/{versionName}", "code" => 202}}
      end)
      service.add_operation(:upload_read_set_part, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UploadReadSetPart"
        operation.name = "UploadReadSetPart"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UploadReadSetPartRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UploadReadSetPartResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotSupportedOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.auth#unsignedPayload" => {}, "aws.iam#actionPermissionDescription" => "Grants permission to upload read set parts", "smithy.api#endpoint" => {"hostPrefix" => "storage-"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/sequencestore/{sequenceStoreId}/upload/{uploadId}/part"}}
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
