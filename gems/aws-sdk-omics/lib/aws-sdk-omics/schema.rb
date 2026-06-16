# frozen_string_literal: true

# This is generated code!

module Aws::Omics
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AbortMultipartReadSetUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#AbortMultipartReadSetUploadRequest", name: "AbortMultipartReadSetUploadRequest")
    AbortMultipartReadSetUploadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#AbortMultipartReadSetUploadResponse", name: "AbortMultipartReadSetUploadResponse")
    Accelerators = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#Accelerators", name: "Accelerators", traits: {"smithy.api#enum" => [{"name" => "GPU", "value" => "GPU"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    AcceptShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#AcceptShareRequest", name: "AcceptShareRequest")
    AcceptShareResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#AcceptShareResponse", name: "AcceptShareResponse")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessLogLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#AccessLogLocation", name: "AccessLogLocation", traits: {"smithy.api#pattern" => "^$|^s3://([a-z0-9][a-z0-9-.]{1,61}[a-z0-9])/?((.{1,800})/)?$"})
    ActivateReadSetFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ActivateReadSetFilter", name: "ActivateReadSetFilter")
    ActivateReadSetJobItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ActivateReadSetJobItem", name: "ActivateReadSetJobItem")
    ActivateReadSetJobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ActivateReadSetJobList", name: "ActivateReadSetJobList")
    ActivateReadSetSourceItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ActivateReadSetSourceItem", name: "ActivateReadSetSourceItem")
    ActivateReadSetSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ActivateReadSetSourceList", name: "ActivateReadSetSourceList")
    ActivationJobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ActivationJobId", name: "ActivationJobId", traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    AnnotationFieldMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.omics#AnnotationFieldMap", name: "AnnotationFieldMap")
    AnnotationImportItemDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#AnnotationImportItemDetail", name: "AnnotationImportItemDetail")
    AnnotationImportItemDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#AnnotationImportItemDetails", name: "AnnotationImportItemDetails", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AnnotationImportItemSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#AnnotationImportItemSource", name: "AnnotationImportItemSource")
    AnnotationImportItemSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#AnnotationImportItemSources", name: "AnnotationImportItemSources", traits: {"smithy.api#length" => {"min" => 1}})
    AnnotationImportJobItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#AnnotationImportJobItem", name: "AnnotationImportJobItem")
    AnnotationImportJobItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#AnnotationImportJobItems", name: "AnnotationImportJobItems")
    AnnotationStoreItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#AnnotationStoreItem", name: "AnnotationStoreItem")
    AnnotationStoreItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#AnnotationStoreItems", name: "AnnotationStoreItems")
    AnnotationStoreVersionItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#AnnotationStoreVersionItem", name: "AnnotationStoreVersionItem")
    AnnotationStoreVersionItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#AnnotationStoreVersionItems", name: "AnnotationStoreVersionItems")
    AnnotationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#AnnotationType", name: "AnnotationType", traits: {"smithy.api#enum" => [{"value" => "GENERIC", "name" => "GENERIC", "documentation" => "Generic text file. No genomic information"}, {"value" => "CHR_POS", "name" => "CHR_POS", "documentation" => "Contains contig and 1-base position"}, {"value" => "CHR_POS_REF_ALT", "name" => "CHR_POS_REF_ALT", "documentation" => "Contains contig, 1-base position, ref and alt allele information"}, {"value" => "CHR_START_END_ONE_BASE", "name" => "CHR_START_END_ONE_BASE", "documentation" => "Contains contig, start, and end positions. Coordinates are 1-based"}, {"value" => "CHR_START_END_REF_ALT_ONE_BASE", "name" => "CHR_START_END_REF_ALT_ONE_BASE", "documentation" => "Contains contig, start, end, ref and alt allele information. Coordinates are 1-based"}, {"value" => "CHR_START_END_ZERO_BASE", "name" => "CHR_START_END_ZERO_BASE", "documentation" => "Contains contig, start, and end positions. Coordinates are 0-based"}, {"value" => "CHR_START_END_REF_ALT_ZERO_BASE", "name" => "CHR_START_END_REF_ALT_ZERO_BASE", "documentation" => "Contains contig, start, end, ref and alt allele information. Coordinates are 0-based"}]})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:([^:\n]*):([^:\n]*):([^:\n]*):([0-9]{12}):([^:\n]*)$"})
    ArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ArnList", name: "ArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]+$"})
    BatchDeleteReadSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#BatchDeleteReadSetRequest", name: "BatchDeleteReadSetRequest")
    BatchDeleteReadSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#BatchDeleteReadSetResponse", name: "BatchDeleteReadSetResponse")
    CacheBehavior = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#CacheBehavior", name: "CacheBehavior", traits: {"smithy.api#enum" => [{"name" => "CACHE_ON_FAILURE", "value" => "CACHE_ON_FAILURE"}, {"name" => "CACHE_ALWAYS", "value" => "CACHE_ALWAYS"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    CancelAnnotationImportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CancelAnnotationImportRequest", name: "CancelAnnotationImportRequest")
    CancelAnnotationImportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CancelAnnotationImportResponse", name: "CancelAnnotationImportResponse")
    CancelRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CancelRunRequest", name: "CancelRunRequest")
    CancelVariantImportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CancelVariantImportRequest", name: "CancelVariantImportRequest")
    CancelVariantImportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CancelVariantImportResponse", name: "CancelVariantImportResponse")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    CommentChar = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#CommentChar", name: "CommentChar", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    CompleteMultipartReadSetUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CompleteMultipartReadSetUploadRequest", name: "CompleteMultipartReadSetUploadRequest")
    CompleteMultipartReadSetUploadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CompleteMultipartReadSetUploadResponse", name: "CompleteMultipartReadSetUploadResponse")
    CompleteReadSetUploadPartList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#CompleteReadSetUploadPartList", name: "CompleteReadSetUploadPartList")
    CompleteReadSetUploadPartListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CompleteReadSetUploadPartListItem", name: "CompleteReadSetUploadPartListItem")
    CompletionTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.omics#CompletionTime", name: "CompletionTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ConnectionArn", name: "ConnectionArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+$"})
    ContainerRegistryMap = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ContainerRegistryMap", name: "ContainerRegistryMap")
    CreateAnnotationStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateAnnotationStoreRequest", name: "CreateAnnotationStoreRequest")
    CreateAnnotationStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateAnnotationStoreResponse", name: "CreateAnnotationStoreResponse")
    CreateAnnotationStoreVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateAnnotationStoreVersionRequest", name: "CreateAnnotationStoreVersionRequest")
    CreateAnnotationStoreVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateAnnotationStoreVersionResponse", name: "CreateAnnotationStoreVersionResponse")
    CreateMultipartReadSetUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateMultipartReadSetUploadRequest", name: "CreateMultipartReadSetUploadRequest")
    CreateMultipartReadSetUploadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateMultipartReadSetUploadResponse", name: "CreateMultipartReadSetUploadResponse")
    CreateReferenceStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateReferenceStoreRequest", name: "CreateReferenceStoreRequest")
    CreateReferenceStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateReferenceStoreResponse", name: "CreateReferenceStoreResponse")
    CreateRunCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateRunCacheRequest", name: "CreateRunCacheRequest")
    CreateRunCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateRunCacheResponse", name: "CreateRunCacheResponse")
    CreateRunGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateRunGroupRequest", name: "CreateRunGroupRequest")
    CreateRunGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateRunGroupResponse", name: "CreateRunGroupResponse")
    CreateSequenceStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateSequenceStoreRequest", name: "CreateSequenceStoreRequest")
    CreateSequenceStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateSequenceStoreResponse", name: "CreateSequenceStoreResponse")
    CreateShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateShareRequest", name: "CreateShareRequest")
    CreateShareResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateShareResponse", name: "CreateShareResponse")
    CreateVariantStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateVariantStoreRequest", name: "CreateVariantStoreRequest")
    CreateVariantStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateVariantStoreResponse", name: "CreateVariantStoreResponse")
    CreateWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateWorkflowRequest", name: "CreateWorkflowRequest")
    CreateWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateWorkflowResponse", name: "CreateWorkflowResponse")
    CreateWorkflowVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateWorkflowVersionRequest", name: "CreateWorkflowVersionRequest")
    CreateWorkflowVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#CreateWorkflowVersionResponse", name: "CreateWorkflowVersionResponse")
    CreationJobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#CreationJobId", name: "CreationJobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[a-zA-Z0-9]+$"})
    CreationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.omics#CreationTime", name: "CreationTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    CreationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#CreationType", name: "CreationType", traits: {"smithy.api#enum" => [{"value" => "IMPORT", "name" => "IMPORT"}, {"value" => "UPLOAD", "name" => "UPLOAD"}]})
    DefinitionRepository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DefinitionRepository", name: "DefinitionRepository")
    DefinitionRepositoryDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DefinitionRepositoryDetails", name: "DefinitionRepositoryDetails")
    DeleteAnnotationStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteAnnotationStoreRequest", name: "DeleteAnnotationStoreRequest")
    DeleteAnnotationStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteAnnotationStoreResponse", name: "DeleteAnnotationStoreResponse")
    DeleteAnnotationStoreVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteAnnotationStoreVersionsRequest", name: "DeleteAnnotationStoreVersionsRequest")
    DeleteAnnotationStoreVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteAnnotationStoreVersionsResponse", name: "DeleteAnnotationStoreVersionsResponse")
    DeleteReferenceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteReferenceRequest", name: "DeleteReferenceRequest")
    DeleteReferenceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteReferenceResponse", name: "DeleteReferenceResponse")
    DeleteReferenceStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteReferenceStoreRequest", name: "DeleteReferenceStoreRequest")
    DeleteReferenceStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteReferenceStoreResponse", name: "DeleteReferenceStoreResponse")
    DeleteRunCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteRunCacheRequest", name: "DeleteRunCacheRequest")
    DeleteRunGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteRunGroupRequest", name: "DeleteRunGroupRequest")
    DeleteRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteRunRequest", name: "DeleteRunRequest")
    DeleteS3AccessPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteS3AccessPolicyRequest", name: "DeleteS3AccessPolicyRequest")
    DeleteS3AccessPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteS3AccessPolicyResponse", name: "DeleteS3AccessPolicyResponse")
    DeleteSequenceStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteSequenceStoreRequest", name: "DeleteSequenceStoreRequest")
    DeleteSequenceStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteSequenceStoreResponse", name: "DeleteSequenceStoreResponse")
    DeleteShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteShareRequest", name: "DeleteShareRequest")
    DeleteShareResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteShareResponse", name: "DeleteShareResponse")
    DeleteVariantStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteVariantStoreRequest", name: "DeleteVariantStoreRequest")
    DeleteVariantStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteVariantStoreResponse", name: "DeleteVariantStoreResponse")
    DeleteWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteWorkflowRequest", name: "DeleteWorkflowRequest")
    DeleteWorkflowVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#DeleteWorkflowVersionRequest", name: "DeleteWorkflowVersionRequest")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    ETag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ETag", name: "ETag")
    ETagAlgorithm = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ETagAlgorithm", name: "ETagAlgorithm", traits: {"smithy.api#enum" => [{"value" => "FASTQ_MD5up", "name" => "FASTQ_MD5UP"}, {"value" => "BAM_MD5up", "name" => "BAM_MD5UP"}, {"value" => "CRAM_MD5up", "name" => "CRAM_MD5UP"}, {"value" => "FASTQ_SHA256up", "name" => "FASTQ_SHA256UP"}, {"value" => "BAM_SHA256up", "name" => "BAM_SHA256UP"}, {"value" => "CRAM_SHA256up", "name" => "CRAM_SHA256UP"}, {"value" => "FASTQ_SHA512up", "name" => "FASTQ_SHA512UP"}, {"value" => "BAM_SHA512up", "name" => "BAM_SHA512UP"}, {"value" => "CRAM_SHA512up", "name" => "CRAM_SHA512UP"}]})
    ETagAlgorithmFamily = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ETagAlgorithmFamily", name: "ETagAlgorithmFamily", traits: {"smithy.api#enum" => [{"value" => "MD5up", "name" => "MD5UP"}, {"value" => "SHA256up", "name" => "SHA256UP"}, {"value" => "SHA512up", "name" => "SHA512UP"}]})
    EcrRepositoryPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#EcrRepositoryPrefix", name: "EcrRepositoryPrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    Encoding = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#Encoding", name: "Encoding", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    EncryptionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#EncryptionType", name: "EncryptionType", traits: {"smithy.api#enum" => [{"value" => "KMS", "name" => "KMS", "documentation" => "KMS"}]})
    EngineLogStream = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#EngineLogStream", name: "EngineLogStream", traits: {"smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    EngineVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#EngineVersion", name: "EngineVersion", traits: {"smithy.api#pattern" => "^[0-9]{2}.[0-9]{2}.[0-9]$"})
    EscapeChar = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#EscapeChar", name: "EscapeChar", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    EscapeQuotes = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.omics#EscapeQuotes", name: "EscapeQuotes", traits: {"smithy.api#default" => false})
    ExcludeFilePatternList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ExcludeFilePatternList", name: "ExcludeFilePatternList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#uniqueItems" => {}})
    ExportJobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ExportJobId", name: "ExportJobId", traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    ExportReadSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ExportReadSet", name: "ExportReadSet")
    ExportReadSetDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ExportReadSetDetail", name: "ExportReadSetDetail")
    ExportReadSetDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ExportReadSetDetailList", name: "ExportReadSetDetailList")
    ExportReadSetFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ExportReadSetFilter", name: "ExportReadSetFilter")
    ExportReadSetJobDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ExportReadSetJobDetail", name: "ExportReadSetJobDetail")
    ExportReadSetJobDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ExportReadSetJobDetailList", name: "ExportReadSetJobDetailList")
    ExportReadSetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ExportReadSetList", name: "ExportReadSetList")
    FallbackLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#FallbackLocation", name: "FallbackLocation", traits: {"smithy.api#pattern" => "^$|^s3://([a-z0-9][a-z0-9-.]{1,61}[a-z0-9])/?((.{1,1024})/)?$"})
    FileInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#FileInformation", name: "FileInformation")
    FileType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#FileType", name: "FileType", traits: {"smithy.api#enum" => [{"value" => "FASTQ", "name" => "FASTQ"}, {"value" => "BAM", "name" => "BAM"}, {"value" => "CRAM", "name" => "CRAM"}, {"value" => "UBAM", "name" => "UBAM"}]})
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#Filter", name: "Filter")
    FormatOptions = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.omics#FormatOptions", name: "FormatOptions")
    FormatToHeader = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.omics#FormatToHeader", name: "FormatToHeader")
    FormatToHeaderKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#FormatToHeaderKey", name: "FormatToHeaderKey", traits: {"smithy.api#enum" => [{"value" => "CHR", "name" => "CHR"}, {"value" => "START", "name" => "START"}, {"value" => "END", "name" => "END"}, {"value" => "REF", "name" => "REF"}, {"value" => "ALT", "name" => "ALT"}, {"value" => "POS", "name" => "POS"}]})
    FullRepositoryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#FullRepositoryId", name: "FullRepositoryId", traits: {"smithy.api#pattern" => "^.+/.+$"})
    GeneratedFrom = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#GeneratedFrom", name: "GeneratedFrom", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    GetAnnotationImportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetAnnotationImportRequest", name: "GetAnnotationImportRequest")
    GetAnnotationImportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetAnnotationImportResponse", name: "GetAnnotationImportResponse")
    GetAnnotationStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetAnnotationStoreRequest", name: "GetAnnotationStoreRequest")
    GetAnnotationStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetAnnotationStoreResponse", name: "GetAnnotationStoreResponse")
    GetAnnotationStoreVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetAnnotationStoreVersionRequest", name: "GetAnnotationStoreVersionRequest")
    GetAnnotationStoreVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetAnnotationStoreVersionResponse", name: "GetAnnotationStoreVersionResponse")
    GetReadSetActivationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReadSetActivationJobRequest", name: "GetReadSetActivationJobRequest")
    GetReadSetActivationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReadSetActivationJobResponse", name: "GetReadSetActivationJobResponse")
    GetReadSetExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReadSetExportJobRequest", name: "GetReadSetExportJobRequest")
    GetReadSetExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReadSetExportJobResponse", name: "GetReadSetExportJobResponse")
    GetReadSetImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReadSetImportJobRequest", name: "GetReadSetImportJobRequest")
    GetReadSetImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReadSetImportJobResponse", name: "GetReadSetImportJobResponse")
    GetReadSetMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReadSetMetadataRequest", name: "GetReadSetMetadataRequest")
    GetReadSetMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReadSetMetadataResponse", name: "GetReadSetMetadataResponse")
    GetReadSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReadSetRequest", name: "GetReadSetRequest")
    GetReadSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReadSetResponse", name: "GetReadSetResponse")
    GetReferenceImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReferenceImportJobRequest", name: "GetReferenceImportJobRequest")
    GetReferenceImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReferenceImportJobResponse", name: "GetReferenceImportJobResponse")
    GetReferenceMetadataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReferenceMetadataRequest", name: "GetReferenceMetadataRequest")
    GetReferenceMetadataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReferenceMetadataResponse", name: "GetReferenceMetadataResponse")
    GetReferenceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReferenceRequest", name: "GetReferenceRequest")
    GetReferenceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReferenceResponse", name: "GetReferenceResponse")
    GetReferenceStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReferenceStoreRequest", name: "GetReferenceStoreRequest")
    GetReferenceStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetReferenceStoreResponse", name: "GetReferenceStoreResponse")
    GetRunCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetRunCacheRequest", name: "GetRunCacheRequest")
    GetRunCacheResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetRunCacheResponse", name: "GetRunCacheResponse")
    GetRunGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetRunGroupRequest", name: "GetRunGroupRequest")
    GetRunGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetRunGroupResponse", name: "GetRunGroupResponse")
    GetRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetRunRequest", name: "GetRunRequest")
    GetRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetRunResponse", name: "GetRunResponse")
    GetRunTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetRunTaskRequest", name: "GetRunTaskRequest")
    GetRunTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetRunTaskResponse", name: "GetRunTaskResponse")
    GetS3AccessPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetS3AccessPolicyRequest", name: "GetS3AccessPolicyRequest")
    GetS3AccessPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetS3AccessPolicyResponse", name: "GetS3AccessPolicyResponse")
    GetSequenceStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetSequenceStoreRequest", name: "GetSequenceStoreRequest")
    GetSequenceStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetSequenceStoreResponse", name: "GetSequenceStoreResponse")
    GetShareRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetShareRequest", name: "GetShareRequest")
    GetShareResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetShareResponse", name: "GetShareResponse")
    GetVariantImportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetVariantImportRequest", name: "GetVariantImportRequest")
    GetVariantImportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetVariantImportResponse", name: "GetVariantImportResponse")
    GetVariantStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetVariantStoreRequest", name: "GetVariantStoreRequest")
    GetVariantStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetVariantStoreResponse", name: "GetVariantStoreResponse")
    GetWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetWorkflowRequest", name: "GetWorkflowRequest")
    GetWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetWorkflowResponse", name: "GetWorkflowResponse")
    GetWorkflowVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetWorkflowVersionRequest", name: "GetWorkflowVersionRequest")
    GetWorkflowVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#GetWorkflowVersionResponse", name: "GetWorkflowVersionResponse")
    Header = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.omics#Header", name: "Header", traits: {"smithy.api#default" => false})
    IdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#IdList", name: "IdList")
    ImageDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ImageDetails", name: "ImageDetails")
    ImageMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ImageMapping", name: "ImageMapping")
    ImageMappingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ImageMappingsList", name: "ImageMappingsList")
    ImportJobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ImportJobId", name: "ImportJobId", traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    ImportReadSetFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ImportReadSetFilter", name: "ImportReadSetFilter")
    ImportReadSetJobItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ImportReadSetJobItem", name: "ImportReadSetJobItem")
    ImportReadSetJobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ImportReadSetJobList", name: "ImportReadSetJobList")
    ImportReadSetSourceItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ImportReadSetSourceItem", name: "ImportReadSetSourceItem")
    ImportReadSetSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ImportReadSetSourceList", name: "ImportReadSetSourceList")
    ImportReferenceFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ImportReferenceFilter", name: "ImportReferenceFilter")
    ImportReferenceJobItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ImportReferenceJobItem", name: "ImportReferenceJobItem")
    ImportReferenceJobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ImportReferenceJobList", name: "ImportReferenceJobList")
    ImportReferenceSourceItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ImportReferenceSourceItem", name: "ImportReferenceSourceItem")
    ImportReferenceSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ImportReferenceSourceList", name: "ImportReferenceSourceList")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    JobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#JobStatus", name: "JobStatus", traits: {"smithy.api#enum" => [{"value" => "SUBMITTED", "name" => "SUBMITTED", "documentation" => "The Job has been submitted to run"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS", "documentation" => "The Job is executing"}, {"value" => "CANCELLED", "name" => "CANCELLED", "documentation" => "The Job was cancelled"}, {"value" => "COMPLETED", "name" => "COMPLETED", "documentation" => "The Job has completed"}, {"value" => "FAILED", "name" => "FAILED", "documentation" => "The Job failed"}, {"value" => "COMPLETED_WITH_FAILURES", "name" => "COMPLETED_WITH_FAILURES", "documentation" => "The Job completed with failed runs"}]})
    JobStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#JobStatusMessage", name: "JobStatusMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    JobStatusMsg = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#JobStatusMsg", name: "JobStatusMsg")
    LineSep = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#LineSep", name: "LineSep", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ListAnnotationImportJobsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListAnnotationImportJobsFilter", name: "ListAnnotationImportJobsFilter")
    ListAnnotationImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListAnnotationImportJobsRequest", name: "ListAnnotationImportJobsRequest")
    ListAnnotationImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListAnnotationImportJobsResponse", name: "ListAnnotationImportJobsResponse")
    ListAnnotationStoreVersionsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListAnnotationStoreVersionsFilter", name: "ListAnnotationStoreVersionsFilter")
    ListAnnotationStoreVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListAnnotationStoreVersionsRequest", name: "ListAnnotationStoreVersionsRequest")
    ListAnnotationStoreVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListAnnotationStoreVersionsResponse", name: "ListAnnotationStoreVersionsResponse")
    ListAnnotationStoresFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListAnnotationStoresFilter", name: "ListAnnotationStoresFilter")
    ListAnnotationStoresRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListAnnotationStoresRequest", name: "ListAnnotationStoresRequest")
    ListAnnotationStoresResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListAnnotationStoresResponse", name: "ListAnnotationStoresResponse")
    ListMultipartReadSetUploadsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListMultipartReadSetUploadsRequest", name: "ListMultipartReadSetUploadsRequest")
    ListMultipartReadSetUploadsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListMultipartReadSetUploadsResponse", name: "ListMultipartReadSetUploadsResponse")
    ListReadSetActivationJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListReadSetActivationJobsRequest", name: "ListReadSetActivationJobsRequest")
    ListReadSetActivationJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListReadSetActivationJobsResponse", name: "ListReadSetActivationJobsResponse")
    ListReadSetExportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListReadSetExportJobsRequest", name: "ListReadSetExportJobsRequest")
    ListReadSetExportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListReadSetExportJobsResponse", name: "ListReadSetExportJobsResponse")
    ListReadSetImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListReadSetImportJobsRequest", name: "ListReadSetImportJobsRequest")
    ListReadSetImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListReadSetImportJobsResponse", name: "ListReadSetImportJobsResponse")
    ListReadSetUploadPartsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListReadSetUploadPartsRequest", name: "ListReadSetUploadPartsRequest")
    ListReadSetUploadPartsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListReadSetUploadPartsResponse", name: "ListReadSetUploadPartsResponse")
    ListReadSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListReadSetsRequest", name: "ListReadSetsRequest")
    ListReadSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListReadSetsResponse", name: "ListReadSetsResponse")
    ListReferenceImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListReferenceImportJobsRequest", name: "ListReferenceImportJobsRequest")
    ListReferenceImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListReferenceImportJobsResponse", name: "ListReferenceImportJobsResponse")
    ListReferenceStoresRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListReferenceStoresRequest", name: "ListReferenceStoresRequest")
    ListReferenceStoresResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListReferenceStoresResponse", name: "ListReferenceStoresResponse")
    ListReferencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListReferencesRequest", name: "ListReferencesRequest")
    ListReferencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListReferencesResponse", name: "ListReferencesResponse")
    ListRunCachesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListRunCachesRequest", name: "ListRunCachesRequest")
    ListRunCachesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListRunCachesResponse", name: "ListRunCachesResponse")
    ListRunGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListRunGroupsRequest", name: "ListRunGroupsRequest")
    ListRunGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListRunGroupsResponse", name: "ListRunGroupsResponse")
    ListRunTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListRunTasksRequest", name: "ListRunTasksRequest")
    ListRunTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListRunTasksResponse", name: "ListRunTasksResponse")
    ListRunsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListRunsRequest", name: "ListRunsRequest")
    ListRunsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListRunsResponse", name: "ListRunsResponse")
    ListSequenceStoresRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListSequenceStoresRequest", name: "ListSequenceStoresRequest")
    ListSequenceStoresResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListSequenceStoresResponse", name: "ListSequenceStoresResponse")
    ListSharesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListSharesRequest", name: "ListSharesRequest")
    ListSharesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListSharesResponse", name: "ListSharesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ListToken", name: "ListToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ListVariantImportJobsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListVariantImportJobsFilter", name: "ListVariantImportJobsFilter")
    ListVariantImportJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListVariantImportJobsRequest", name: "ListVariantImportJobsRequest")
    ListVariantImportJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListVariantImportJobsResponse", name: "ListVariantImportJobsResponse")
    ListVariantStoresFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListVariantStoresFilter", name: "ListVariantStoresFilter")
    ListVariantStoresRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListVariantStoresRequest", name: "ListVariantStoresRequest")
    ListVariantStoresResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListVariantStoresResponse", name: "ListVariantStoresResponse")
    ListWorkflowVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListWorkflowVersionsRequest", name: "ListWorkflowVersionsRequest")
    ListWorkflowVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListWorkflowVersionsResponse", name: "ListWorkflowVersionsResponse")
    ListWorkflowsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListWorkflowsRequest", name: "ListWorkflowsRequest")
    ListWorkflowsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ListWorkflowsResponse", name: "ListWorkflowsResponse")
    Md5 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#Md5", name: "Md5", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}||\\p{N}]+$"})
    MultipartReadSetUploadList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#MultipartReadSetUploadList", name: "MultipartReadSetUploadList")
    MultipartReadSetUploadListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#MultipartReadSetUploadListItem", name: "MultipartReadSetUploadListItem")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 6144}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    NotSupportedOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#NotSupportedOperationException", name: "NotSupportedOperationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 405})
    NumericIdInArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#NumericIdInArn", name: "NumericIdInArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 18}, "smithy.api#pattern" => "^[0-9]+$"})
    ParameterTemplatePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ParameterTemplatePath", name: "ParameterTemplatePath", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    PropagatedSetLevelTags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#PropagatedSetLevelTags", name: "PropagatedSetLevelTags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    PutS3AccessPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#PutS3AccessPolicyRequest", name: "PutS3AccessPolicyRequest")
    PutS3AccessPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#PutS3AccessPolicyResponse", name: "PutS3AccessPolicyResponse")
    Quote = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#Quote", name: "Quote", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    QuoteAll = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.omics#QuoteAll", name: "QuoteAll", traits: {"smithy.api#default" => false})
    Range = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#Range", name: "Range", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{N}||\\p{P}]+$"})
    RangeNotSatisfiableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#RangeNotSatisfiableException", name: "RangeNotSatisfiableException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 416, "smithy.api#retryable" => {}})
    ReadOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ReadOptions", name: "ReadOptions")
    ReadSetActivationJobItemStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadSetActivationJobItemStatus", name: "ReadSetActivationJobItemStatus", traits: {"smithy.api#enum" => [{"value" => "NOT_STARTED", "name" => "NOT_STARTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "FINISHED", "name" => "FINISHED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ReadSetActivationJobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadSetActivationJobStatus", name: "ReadSetActivationJobStatus", traits: {"smithy.api#enum" => [{"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "CANCELLING", "name" => "CANCELLING"}, {"value" => "CANCELLED", "name" => "CANCELLED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "COMPLETED_WITH_FAILURES", "name" => "COMPLETED_WITH_FAILURES"}]})
    ReadSetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadSetArn", name: "ReadSetArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^arn:.+$"})
    ReadSetBatchError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ReadSetBatchError", name: "ReadSetBatchError")
    ReadSetBatchErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ReadSetBatchErrorList", name: "ReadSetBatchErrorList")
    ReadSetDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadSetDescription", name: "ReadSetDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReadSetExportJobItemStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadSetExportJobItemStatus", name: "ReadSetExportJobItemStatus", traits: {"smithy.api#enum" => [{"value" => "NOT_STARTED", "name" => "NOT_STARTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "FINISHED", "name" => "FINISHED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ReadSetExportJobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadSetExportJobStatus", name: "ReadSetExportJobStatus", traits: {"smithy.api#enum" => [{"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "CANCELLING", "name" => "CANCELLING"}, {"value" => "CANCELLED", "name" => "CANCELLED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "COMPLETED_WITH_FAILURES", "name" => "COMPLETED_WITH_FAILURES"}]})
    ReadSetFile = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadSetFile", name: "ReadSetFile", traits: {"smithy.api#enum" => [{"value" => "SOURCE1", "name" => "SOURCE1"}, {"value" => "SOURCE2", "name" => "SOURCE2"}, {"value" => "INDEX", "name" => "INDEX"}]})
    ReadSetFiles = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ReadSetFiles", name: "ReadSetFiles")
    ReadSetFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ReadSetFilter", name: "ReadSetFilter")
    ReadSetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadSetId", name: "ReadSetId", traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    ReadSetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ReadSetIdList", name: "ReadSetIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ReadSetImportJobItemStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadSetImportJobItemStatus", name: "ReadSetImportJobItemStatus", traits: {"smithy.api#enum" => [{"value" => "NOT_STARTED", "name" => "NOT_STARTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "FINISHED", "name" => "FINISHED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ReadSetImportJobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadSetImportJobStatus", name: "ReadSetImportJobStatus", traits: {"smithy.api#enum" => [{"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "CANCELLING", "name" => "CANCELLING"}, {"value" => "CANCELLED", "name" => "CANCELLED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "COMPLETED_WITH_FAILURES", "name" => "COMPLETED_WITH_FAILURES"}]})
    ReadSetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ReadSetList", name: "ReadSetList")
    ReadSetListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ReadSetListItem", name: "ReadSetListItem")
    ReadSetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadSetName", name: "ReadSetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReadSetPartSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadSetPartSource", name: "ReadSetPartSource", traits: {"smithy.api#enum" => [{"value" => "SOURCE1", "name" => "SOURCE1"}, {"value" => "SOURCE2", "name" => "SOURCE2"}]})
    ReadSetPartStreamingBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.omics#ReadSetPartStreamingBlob", name: "ReadSetPartStreamingBlob", traits: {"smithy.api#requiresLength" => {}, "smithy.api#streaming" => {}})
    ReadSetS3Access = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ReadSetS3Access", name: "ReadSetS3Access")
    ReadSetStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadSetStatus", name: "ReadSetStatus", traits: {"smithy.api#enum" => [{"value" => "ARCHIVED", "name" => "ARCHIVED"}, {"value" => "ACTIVATING", "name" => "ACTIVATING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "DELETED", "name" => "DELETED"}, {"value" => "PROCESSING_UPLOAD", "name" => "PROCESSING_UPLOAD"}, {"value" => "UPLOAD_FAILED", "name" => "UPLOAD_FAILED"}]})
    ReadSetStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadSetStatusMessage", name: "ReadSetStatusMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReadSetStreamingBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.omics#ReadSetStreamingBlob", name: "ReadSetStreamingBlob", traits: {"smithy.api#streaming" => {}})
    ReadSetUploadPartList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ReadSetUploadPartList", name: "ReadSetUploadPartList")
    ReadSetUploadPartListFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ReadSetUploadPartListFilter", name: "ReadSetUploadPartListFilter")
    ReadSetUploadPartListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ReadSetUploadPartListItem", name: "ReadSetUploadPartListItem")
    ReadmeMarkdown = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadmeMarkdown", name: "ReadmeMarkdown", traits: {"smithy.api#mediaType" => "text/markdown"})
    ReadmePath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadmePath", name: "ReadmePath", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReadmeS3PresignedUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReadmeS3PresignedUrl", name: "ReadmeS3PresignedUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReferenceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReferenceArn", name: "ReferenceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^arn:.+$"})
    ReferenceArnFilter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReferenceArnFilter", name: "ReferenceArnFilter", traits: {"smithy.api#length" => {"min" => 0, "max" => 127}, "smithy.api#pattern" => "^$|^arn:.+$"})
    ReferenceCreationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReferenceCreationType", name: "ReferenceCreationType", traits: {"smithy.api#enum" => [{"value" => "IMPORT", "name" => "IMPORT"}]})
    ReferenceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReferenceDescription", name: "ReferenceDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReferenceFile = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReferenceFile", name: "ReferenceFile", traits: {"smithy.api#enum" => [{"value" => "SOURCE", "name" => "SOURCE"}, {"value" => "INDEX", "name" => "INDEX"}]})
    ReferenceFiles = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ReferenceFiles", name: "ReferenceFiles")
    ReferenceFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ReferenceFilter", name: "ReferenceFilter")
    ReferenceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReferenceId", name: "ReferenceId", traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    ReferenceImportJobItemStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReferenceImportJobItemStatus", name: "ReferenceImportJobItemStatus", traits: {"smithy.api#enum" => [{"value" => "NOT_STARTED", "name" => "NOT_STARTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "FINISHED", "name" => "FINISHED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ReferenceImportJobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReferenceImportJobStatus", name: "ReferenceImportJobStatus", traits: {"smithy.api#enum" => [{"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "CANCELLING", "name" => "CANCELLING"}, {"value" => "CANCELLED", "name" => "CANCELLED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "COMPLETED_WITH_FAILURES", "name" => "COMPLETED_WITH_FAILURES"}]})
    ReferenceItem = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.omics#ReferenceItem", name: "ReferenceItem")
    ReferenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ReferenceList", name: "ReferenceList")
    ReferenceListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ReferenceListItem", name: "ReferenceListItem")
    ReferenceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReferenceName", name: "ReferenceName", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReferenceStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReferenceStatus", name: "ReferenceStatus", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "DELETED", "name" => "DELETED"}]})
    ReferenceStoreArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReferenceStoreArn", name: "ReferenceStoreArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^arn:.+$"})
    ReferenceStoreDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReferenceStoreDescription", name: "ReferenceStoreDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReferenceStoreDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ReferenceStoreDetail", name: "ReferenceStoreDetail")
    ReferenceStoreDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ReferenceStoreDetailList", name: "ReferenceStoreDetailList")
    ReferenceStoreFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ReferenceStoreFilter", name: "ReferenceStoreFilter")
    ReferenceStoreId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReferenceStoreId", name: "ReferenceStoreId", traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    ReferenceStoreName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ReferenceStoreName", name: "ReferenceStoreName", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ReferenceStreamingBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.omics#ReferenceStreamingBlob", name: "ReferenceStreamingBlob", traits: {"smithy.api#streaming" => {}})
    RegistryMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#RegistryMapping", name: "RegistryMapping")
    RegistryMappingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#RegistryMappingsList", name: "RegistryMappingsList")
    RequestTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#RequestTimeoutException", name: "RequestTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ResourceId", name: "ResourceId", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    ResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ResourceIdentifier", name: "ResourceIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ResourceOwner", name: "ResourceOwner", traits: {"smithy.api#enum" => [{"value" => "SELF", "name" => "SELF", "documentation" => "The resource owner is the calling account"}, {"value" => "OTHER", "name" => "OTHER", "documentation" => "The resource owner is an account other than the caller"}]})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.*"})
    RunArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunArn", name: "RunArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:.+$"})
    RunCacheArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunCacheArn", name: "RunCacheArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:.+$"})
    RunCacheId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunCacheId", name: "RunCacheId", traits: {"smithy.api#length" => {"min" => 1, "max" => 18}, "smithy.api#pattern" => "^[0-9]+$"})
    RunCacheList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#RunCacheList", name: "RunCacheList")
    RunCacheListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#RunCacheListItem", name: "RunCacheListItem")
    RunCacheRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunCacheRequestId", name: "RunCacheRequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunCacheStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunCacheStatus", name: "RunCacheStatus", traits: {"smithy.api#enum" => [{"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "DELETED", "value" => "DELETED"}, {"name" => "FAILED", "value" => "FAILED"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    RunCacheTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.omics#RunCacheTimestamp", name: "RunCacheTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    RunExport = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunExport", name: "RunExport", traits: {"smithy.api#enum" => [{"name" => "DEFINITION", "value" => "DEFINITION"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    RunExportList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#RunExportList", name: "RunExportList", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    RunFailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunFailureReason", name: "RunFailureReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunGroupArn", name: "RunGroupArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:.+$"})
    RunGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunGroupId", name: "RunGroupId", traits: {"smithy.api#length" => {"min" => 1, "max" => 18}, "smithy.api#pattern" => "^[0-9]+$"})
    RunGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#RunGroupList", name: "RunGroupList")
    RunGroupListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#RunGroupListItem", name: "RunGroupListItem")
    RunGroupListToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunGroupListToken", name: "RunGroupListToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunGroupName", name: "RunGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunGroupRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunGroupRequestId", name: "RunGroupRequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunGroupTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.omics#RunGroupTimestamp", name: "RunGroupTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    RunId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunId", name: "RunId", traits: {"smithy.api#length" => {"min" => 1, "max" => 18}, "smithy.api#pattern" => "^[0-9]+$"})
    RunLeftNormalization = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.omics#RunLeftNormalization", name: "RunLeftNormalization", traits: {"smithy.api#default" => false})
    RunList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#RunList", name: "RunList")
    RunListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#RunListItem", name: "RunListItem")
    RunListToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunListToken", name: "RunListToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunLogLevel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunLogLevel", name: "RunLogLevel", traits: {"smithy.api#enum" => [{"name" => "OFF", "value" => "OFF"}, {"name" => "FATAL", "value" => "FATAL"}, {"name" => "ERROR", "value" => "ERROR"}, {"name" => "ALL", "value" => "ALL"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    RunLogLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#RunLogLocation", name: "RunLogLocation")
    RunLogStream = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunLogStream", name: "RunLogStream", traits: {"smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunName", name: "RunName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunOutputUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunOutputUri", name: "RunOutputUri", traits: {"smithy.api#length" => {"min" => 1, "max" => 750}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunParameters = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.omics#RunParameters", name: "RunParameters")
    RunRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunRequestId", name: "RunRequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunResourceDigest = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunResourceDigest", name: "RunResourceDigest", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunResourceDigestKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunResourceDigestKey", name: "RunResourceDigestKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunResourceDigests = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.omics#RunResourceDigests", name: "RunResourceDigests")
    RunRetentionMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunRetentionMode", name: "RunRetentionMode", traits: {"smithy.api#enum" => [{"name" => "RETAIN", "value" => "RETAIN"}, {"name" => "REMOVE", "value" => "REMOVE"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    RunRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunRoleArn", name: "RunRoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:.+$"})
    RunStartedBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunStartedBy", name: "RunStartedBy", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    RunStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunStatus", name: "RunStatus", traits: {"smithy.api#enum" => [{"name" => "PENDING", "value" => "PENDING"}, {"name" => "STARTING", "value" => "STARTING"}, {"name" => "RUNNING", "value" => "RUNNING"}, {"name" => "STOPPING", "value" => "STOPPING"}, {"name" => "COMPLETED", "value" => "COMPLETED"}, {"name" => "DELETED", "value" => "DELETED"}, {"name" => "CANCELLED", "value" => "CANCELLED"}, {"name" => "FAILED", "value" => "FAILED"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    RunStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunStatusMessage", name: "RunStatusMessage", traits: {"smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    RunTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.omics#RunTimestamp", name: "RunTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    RunUuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#RunUuid", name: "RunUuid", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    S3AccessConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#S3AccessConfig", name: "S3AccessConfig")
    S3AccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#S3AccessPointArn", name: "S3AccessPointArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:[^:]*:s3:[^:]*:[^:]*:accesspoint/.*$"})
    S3AccessPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#S3AccessPolicy", name: "S3AccessPolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}, "smithy.api#mediaType" => "application/json"})
    S3Destination = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#S3Destination", name: "S3Destination", traits: {"smithy.api#pattern" => "^s3://([a-z0-9][a-z0-9-.]{1,61}[a-z0-9])/?((.{1,1024})/)?$"})
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#S3Uri", name: "S3Uri", traits: {"smithy.api#pattern" => "^s3://([a-z0-9][a-z0-9-.]{1,61}[a-z0-9])/(.{1,1024})$"})
    S3UriForBucketOrObject = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#S3UriForBucketOrObject", name: "S3UriForBucketOrObject", traits: {"smithy.api#pattern" => "^s3://([a-z0-9][a-z0-9-.]{1,61}[a-z0-9])(/(.{0,1024}))?$"})
    S3UriForObject = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#S3UriForObject", name: "S3UriForObject", traits: {"smithy.api#pattern" => "^s3://([a-z0-9][a-z0-9-.]{1,61}[a-z0-9])/((.{1,1024}))$"})
    SampleId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#SampleId", name: "SampleId", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    Schema = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#Schema", name: "Schema")
    SchemaItem = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.omics#SchemaItem", name: "SchemaItem", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    SchemaValueType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#SchemaValueType", name: "SchemaValueType", traits: {"smithy.api#enum" => [{"value" => "LONG", "name" => "LONG", "documentation" => "LONG type"}, {"value" => "INT", "name" => "INT", "documentation" => "INT type"}, {"value" => "STRING", "name" => "STRING", "documentation" => "STRING type"}, {"value" => "FLOAT", "name" => "FLOAT", "documentation" => "FLOAT type"}, {"value" => "DOUBLE", "name" => "DOUBLE", "documentation" => "DOUBLE type"}, {"value" => "BOOLEAN", "name" => "BOOLEAN", "documentation" => "BOOLEAN type"}]})
    Separator = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#Separator", name: "Separator", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    SequenceInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#SequenceInformation", name: "SequenceInformation")
    SequenceStoreArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#SequenceStoreArn", name: "SequenceStoreArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^arn:.+$"})
    SequenceStoreDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#SequenceStoreDescription", name: "SequenceStoreDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    SequenceStoreDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#SequenceStoreDetail", name: "SequenceStoreDetail")
    SequenceStoreDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#SequenceStoreDetailList", name: "SequenceStoreDetailList")
    SequenceStoreFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#SequenceStoreFilter", name: "SequenceStoreFilter")
    SequenceStoreId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#SequenceStoreId", name: "SequenceStoreId", traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    SequenceStoreName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#SequenceStoreName", name: "SequenceStoreName", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    SequenceStoreS3Access = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#SequenceStoreS3Access", name: "SequenceStoreS3Access")
    SequenceStoreStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#SequenceStoreStatus", name: "SequenceStoreStatus", traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "UPDATING", "name" => "UPDATING"}, {"value" => "DELETING", "name" => "DELETING"}, {"value" => "FAILED", "name" => "FAILED"}]})
    SequenceStoreStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#SequenceStoreStatusMessage", name: "SequenceStoreStatusMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ShareDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ShareDetails", name: "ShareDetails")
    ShareDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#ShareDetailsList", name: "ShareDetailsList")
    ShareName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ShareName", name: "ShareName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9_-]+$"})
    ShareResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ShareResourceType", name: "ShareResourceType", traits: {"smithy.api#enum" => [{"value" => "VARIANT_STORE", "name" => "VARIANT_STORE", "documentation" => "The share is on a variant store"}, {"value" => "ANNOTATION_STORE", "name" => "ANNOTATION_STORE", "documentation" => "The share is on an annotation store"}, {"value" => "WORKFLOW", "name" => "WORKFLOW", "documentation" => "The share is on a workflow"}]})
    ShareStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#ShareStatus", name: "ShareStatus", traits: {"smithy.api#enum" => [{"value" => "PENDING", "name" => "PENDING", "documentation" => "The share has been created but is not yet active"}, {"value" => "ACTIVATING", "name" => "ACTIVATING", "documentation" => "The share is activated"}, {"value" => "ACTIVE", "name" => "ACTIVE", "documentation" => "The share is active and can be used"}, {"value" => "DELETING", "name" => "DELETING", "documentation" => "The share is being deleted"}, {"value" => "DELETED", "name" => "DELETED", "documentation" => "The share has been deleted"}, {"value" => "FAILED", "name" => "FAILED", "documentation" => "The share has failed to activate or delete"}]})
    SourceFiles = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#SourceFiles", name: "SourceFiles")
    SourceReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#SourceReference", name: "SourceReference")
    SourceReferenceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#SourceReferenceType", name: "SourceReferenceType", traits: {"smithy.api#enum" => [{"name" => "BRANCH", "value" => "BRANCH"}, {"name" => "TAG", "value" => "TAG"}, {"name" => "COMMIT", "value" => "COMMIT"}]})
    SourceReferenceValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#SourceReferenceValue", name: "SourceReferenceValue")
    SseConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#SseConfig", name: "SseConfig")
    StartAnnotationImportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartAnnotationImportRequest", name: "StartAnnotationImportRequest")
    StartAnnotationImportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartAnnotationImportResponse", name: "StartAnnotationImportResponse")
    StartReadSetActivationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartReadSetActivationJobRequest", name: "StartReadSetActivationJobRequest")
    StartReadSetActivationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartReadSetActivationJobResponse", name: "StartReadSetActivationJobResponse")
    StartReadSetActivationJobSourceItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartReadSetActivationJobSourceItem", name: "StartReadSetActivationJobSourceItem")
    StartReadSetActivationJobSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#StartReadSetActivationJobSourceList", name: "StartReadSetActivationJobSourceList")
    StartReadSetExportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartReadSetExportJobRequest", name: "StartReadSetExportJobRequest")
    StartReadSetExportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartReadSetExportJobResponse", name: "StartReadSetExportJobResponse")
    StartReadSetImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartReadSetImportJobRequest", name: "StartReadSetImportJobRequest")
    StartReadSetImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartReadSetImportJobResponse", name: "StartReadSetImportJobResponse")
    StartReadSetImportJobSourceItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartReadSetImportJobSourceItem", name: "StartReadSetImportJobSourceItem")
    StartReadSetImportJobSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#StartReadSetImportJobSourceList", name: "StartReadSetImportJobSourceList")
    StartReferenceImportJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartReferenceImportJobRequest", name: "StartReferenceImportJobRequest")
    StartReferenceImportJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartReferenceImportJobResponse", name: "StartReferenceImportJobResponse")
    StartReferenceImportJobSourceItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartReferenceImportJobSourceItem", name: "StartReferenceImportJobSourceItem")
    StartReferenceImportJobSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#StartReferenceImportJobSourceList", name: "StartReferenceImportJobSourceList")
    StartRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartRunRequest", name: "StartRunRequest")
    StartRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartRunResponse", name: "StartRunResponse")
    StartVariantImportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartVariantImportRequest", name: "StartVariantImportRequest")
    StartVariantImportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#StartVariantImportResponse", name: "StartVariantImportResponse")
    StatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#StatusList", name: "StatusList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#StatusMessage", name: "StatusMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    StorageType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#StorageType", name: "StorageType", traits: {"smithy.api#enum" => [{"name" => "STATIC", "value" => "STATIC"}, {"name" => "DYNAMIC", "value" => "DYNAMIC"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    StoreFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#StoreFormat", name: "StoreFormat", traits: {"smithy.api#enum" => [{"value" => "GFF", "name" => "GFF", "documentation" => "GFF3 Format"}, {"value" => "TSV", "name" => "TSV", "documentation" => "TSV Format"}, {"value" => "VCF", "name" => "VCF", "documentation" => "VCF Format"}]})
    StoreId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#StoreId", name: "StoreId", traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    StoreName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#StoreName", name: "StoreName", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^([a-z]){1}([a-z0-9_]){2,254}$"})
    StoreOptions = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.omics#StoreOptions", name: "StoreOptions")
    StoreStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#StoreStatus", name: "StoreStatus", traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING", "documentation" => "The Store is being created"}, {"value" => "UPDATING", "name" => "UPDATING", "documentation" => "The Store is updating"}, {"value" => "DELETING", "name" => "DELETING", "documentation" => "The Store is deleting"}, {"value" => "ACTIVE", "name" => "ACTIVE", "documentation" => "The Store is active"}, {"value" => "FAILED", "name" => "FAILED", "documentation" => "The Store creation failed"}]})
    StoreType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.omics#StoreType", name: "StoreType")
    SubjectId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#SubjectId", name: "SubjectId", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    TagArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#TagArn", name: "TagArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^arn:.+$"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.omics#TagMap", name: "TagMap")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TaskFailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#TaskFailureReason", name: "TaskFailureReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    TaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#TaskId", name: "TaskId", traits: {"smithy.api#length" => {"min" => 1, "max" => 18}, "smithy.api#pattern" => "^[0-9]+$"})
    TaskImageDigest = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#TaskImageDigest", name: "TaskImageDigest", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^sha[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    TaskInstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#TaskInstanceType", name: "TaskInstanceType", traits: {"smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    TaskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#TaskList", name: "TaskList")
    TaskListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#TaskListItem", name: "TaskListItem")
    TaskListToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#TaskListToken", name: "TaskListToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    TaskLogStream = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#TaskLogStream", name: "TaskLogStream", traits: {"smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    TaskName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#TaskName", name: "TaskName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TaskStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#TaskStatus", name: "TaskStatus", traits: {"smithy.api#enum" => [{"name" => "PENDING", "value" => "PENDING"}, {"name" => "STARTING", "value" => "STARTING"}, {"name" => "RUNNING", "value" => "RUNNING"}, {"name" => "STOPPING", "value" => "STOPPING"}, {"name" => "COMPLETED", "value" => "COMPLETED"}, {"name" => "CANCELLED", "value" => "CANCELLED"}, {"name" => "FAILED", "value" => "FAILED"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    TaskStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#TaskStatusMessage", name: "TaskStatusMessage", traits: {"smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    TaskTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.omics#TaskTimestamp", name: "TaskTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    TsvOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#TsvOptions", name: "TsvOptions")
    TsvStoreOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#TsvStoreOptions", name: "TsvStoreOptions")
    TsvVersionOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#TsvVersionOptions", name: "TsvVersionOptions")
    TypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#TypeList", name: "TypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAnnotationStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#UpdateAnnotationStoreRequest", name: "UpdateAnnotationStoreRequest")
    UpdateAnnotationStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#UpdateAnnotationStoreResponse", name: "UpdateAnnotationStoreResponse")
    UpdateAnnotationStoreVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#UpdateAnnotationStoreVersionRequest", name: "UpdateAnnotationStoreVersionRequest")
    UpdateAnnotationStoreVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#UpdateAnnotationStoreVersionResponse", name: "UpdateAnnotationStoreVersionResponse")
    UpdateRunCacheRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#UpdateRunCacheRequest", name: "UpdateRunCacheRequest")
    UpdateRunGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#UpdateRunGroupRequest", name: "UpdateRunGroupRequest")
    UpdateSequenceStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#UpdateSequenceStoreRequest", name: "UpdateSequenceStoreRequest")
    UpdateSequenceStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#UpdateSequenceStoreResponse", name: "UpdateSequenceStoreResponse")
    UpdateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.omics#UpdateTime", name: "UpdateTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    UpdateVariantStoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#UpdateVariantStoreRequest", name: "UpdateVariantStoreRequest")
    UpdateVariantStoreResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#UpdateVariantStoreResponse", name: "UpdateVariantStoreResponse")
    UpdateWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#UpdateWorkflowRequest", name: "UpdateWorkflowRequest")
    UpdateWorkflowVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#UpdateWorkflowVersionRequest", name: "UpdateWorkflowVersionRequest")
    UploadId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#UploadId", name: "UploadId", traits: {"smithy.api#length" => {"min" => 10, "max" => 36}, "smithy.api#pattern" => "^[0-9]+$"})
    UploadReadSetPartRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#UploadReadSetPartRequest", name: "UploadReadSetPartRequest")
    UploadReadSetPartResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#UploadReadSetPartResponse", name: "UploadReadSetPartResponse")
    UpstreamRepositoryPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#UpstreamRepositoryPrefix", name: "UpstreamRepositoryPrefix", traits: {"smithy.api#length" => {"min" => 2, "max" => 30}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#Uri", name: "Uri", traits: {"smithy.api#length" => {"min" => 1, "max" => 750}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    UserCustomDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#UserCustomDescription", name: "UserCustomDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    UserCustomName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#UserCustomName", name: "UserCustomName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VariantImportItemDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#VariantImportItemDetail", name: "VariantImportItemDetail")
    VariantImportItemDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#VariantImportItemDetails", name: "VariantImportItemDetails", traits: {"smithy.api#length" => {"min" => 1}})
    VariantImportItemSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#VariantImportItemSource", name: "VariantImportItemSource")
    VariantImportItemSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#VariantImportItemSources", name: "VariantImportItemSources", traits: {"smithy.api#length" => {"min" => 1}})
    VariantImportJobItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#VariantImportJobItem", name: "VariantImportJobItem")
    VariantImportJobItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#VariantImportJobItems", name: "VariantImportJobItems")
    VariantStoreItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#VariantStoreItem", name: "VariantStoreItem")
    VariantStoreItems = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#VariantStoreItems", name: "VariantStoreItems")
    VcfOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#VcfOptions", name: "VcfOptions")
    VersionDeleteError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#VersionDeleteError", name: "VersionDeleteError")
    VersionDeleteErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#VersionDeleteErrorList", name: "VersionDeleteErrorList")
    VersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#VersionList", name: "VersionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    VersionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#VersionName", name: "VersionName", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^([a-z]){1}([a-z0-9_]){2,254}$"})
    VersionOptions = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.omics#VersionOptions", name: "VersionOptions")
    VersionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#VersionStatus", name: "VersionStatus", traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING", "documentation" => "The Version is being created"}, {"value" => "UPDATING", "name" => "UPDATING", "documentation" => "The Version is updating"}, {"value" => "DELETING", "name" => "DELETING", "documentation" => "The Version is deleting"}, {"value" => "ACTIVE", "name" => "ACTIVE", "documentation" => "The Version is active"}, {"value" => "FAILED", "name" => "FAILED", "documentation" => "The Version creation failed"}]})
    WorkflowArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowArn", name: "WorkflowArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:.+$"})
    WorkflowBucketOwnerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowBucketOwnerId", name: "WorkflowBucketOwnerId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    WorkflowDefinition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowDefinition", name: "WorkflowDefinition", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowDescription", name: "WorkflowDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowDigest = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowDigest", name: "WorkflowDigest", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    WorkflowEngine = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowEngine", name: "WorkflowEngine", traits: {"smithy.api#enum" => [{"name" => "WDL", "value" => "WDL"}, {"name" => "NEXTFLOW", "value" => "NEXTFLOW"}, {"name" => "CWL", "value" => "CWL"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    WorkflowExport = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowExport", name: "WorkflowExport", traits: {"smithy.api#enum" => [{"name" => "DEFINITION", "value" => "DEFINITION"}, {"name" => "README", "value" => "README"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    WorkflowExportList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#WorkflowExportList", name: "WorkflowExportList", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    WorkflowId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowId", name: "WorkflowId", traits: {"smithy.api#length" => {"min" => 1, "max" => 18}, "smithy.api#pattern" => "^[0-9]+$"})
    WorkflowList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#WorkflowList", name: "WorkflowList")
    WorkflowListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#WorkflowListItem", name: "WorkflowListItem")
    WorkflowListToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowListToken", name: "WorkflowListToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowMain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowMain", name: "WorkflowMain", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.omics#WorkflowMetadata", name: "WorkflowMetadata")
    WorkflowMetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowMetadataKey", name: "WorkflowMetadataKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    WorkflowMetadataValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowMetadataValue", name: "WorkflowMetadataValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    WorkflowName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowName", name: "WorkflowName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowOwnerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowOwnerId", name: "WorkflowOwnerId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    WorkflowParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#WorkflowParameter", name: "WorkflowParameter")
    WorkflowParameterDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowParameterDescription", name: "WorkflowParameterDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowParameterName", name: "WorkflowParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowParameterTemplate = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.omics#WorkflowParameterTemplate", name: "WorkflowParameterTemplate", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    WorkflowRequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowRequestId", name: "WorkflowRequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowStatus", name: "WorkflowStatus", traits: {"smithy.api#enum" => [{"name" => "CREATING", "value" => "CREATING"}, {"name" => "ACTIVE", "value" => "ACTIVE"}, {"name" => "UPDATING", "value" => "UPDATING"}, {"name" => "DELETED", "value" => "DELETED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "INACTIVE", "value" => "INACTIVE"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    WorkflowStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowStatusMessage", name: "WorkflowStatusMessage", traits: {"smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.omics#WorkflowTimestamp", name: "WorkflowTimestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    WorkflowType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowType", name: "WorkflowType", traits: {"smithy.api#enum" => [{"name" => "PRIVATE", "value" => "PRIVATE"}, {"name" => "READY2RUN", "value" => "READY2RUN"}], "smithy.api#length" => {"min" => 1, "max" => 64}})
    WorkflowUuid = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowUuid", name: "WorkflowUuid", traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    WorkflowVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowVersionArn", name: "WorkflowVersionArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 150}, "smithy.api#pattern" => "^arn:.+$"})
    WorkflowVersionDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowVersionDescription", name: "WorkflowVersionDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.omics#WorkflowVersionList", name: "WorkflowVersionList")
    WorkflowVersionListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.omics#WorkflowVersionListItem", name: "WorkflowVersionListItem")
    WorkflowVersionListToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowVersionListToken", name: "WorkflowVersionListToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$"})
    WorkflowVersionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.omics#WorkflowVersionName", name: "WorkflowVersionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9\\-\\._]*$"})

    AbortMultipartReadSetUploadRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortMultipartReadSetUploadRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, location_name: "uploadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortMultipartReadSetUploadRequest.type = Types::AbortMultipartReadSetUploadRequest
    AbortMultipartReadSetUploadResponse.type = Types::AbortMultipartReadSetUploadResponse
    AcceptShareRequest.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shareId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AcceptShareRequest.type = Types::AcceptShareRequest
    AcceptShareResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, location_name: "status"))
    AcceptShareResponse.type = Types::AcceptShareResponse
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ActivateReadSetFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetActivationJobStatus, location_name: "status"))
    ActivateReadSetFilter.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAfter", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ActivateReadSetFilter.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdBefore", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ActivateReadSetFilter.type = Types::ActivateReadSetFilter
    ActivateReadSetJobItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationJobId, location_name: "id", traits: {"smithy.api#required" => {}}))
    ActivateReadSetJobItem.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#required" => {}}))
    ActivateReadSetJobItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetActivationJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    ActivateReadSetJobItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ActivateReadSetJobItem.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "completionTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ActivateReadSetJobItem.type = Types::ActivateReadSetJobItem
    ActivateReadSetJobList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ActivateReadSetJobItem)
    ActivateReadSetSourceItem.add_member(:read_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetId, location_name: "readSetId", traits: {"smithy.api#required" => {}}))
    ActivateReadSetSourceItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetActivationJobItemStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    ActivateReadSetSourceItem.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusMessage, location_name: "statusMessage"))
    ActivateReadSetSourceItem.type = Types::ActivateReadSetSourceItem
    ActivateReadSetSourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ActivateReadSetSourceItem)
    AnnotationFieldMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 21}})
    AnnotationFieldMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 21}})
    AnnotationImportItemDetail.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, location_name: "source", traits: {"smithy.api#required" => {}}))
    AnnotationImportItemDetail.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "jobStatus", traits: {"smithy.api#required" => {}}))
    AnnotationImportItemDetail.type = Types::AnnotationImportItemDetail
    AnnotationImportItemDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationImportItemDetail)
    AnnotationImportItemSource.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, location_name: "source", traits: {"smithy.api#required" => {}}))
    AnnotationImportItemSource.type = Types::AnnotationImportItemSource
    AnnotationImportItemSources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationImportItemSource)
    AnnotationImportJobItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#required" => {}}))
    AnnotationImportJobItem.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "destinationName", traits: {"smithy.api#required" => {}}))
    AnnotationImportJobItem.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, location_name: "versionName", traits: {"smithy.api#required" => {}}))
    AnnotationImportJobItem.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    AnnotationImportJobItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    AnnotationImportJobItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    AnnotationImportJobItem.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    AnnotationImportJobItem.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CompletionTime, location_name: "completionTime"))
    AnnotationImportJobItem.add_member(:run_left_normalization, ::Smithy::Schema::Shapes::MemberShape.new(target: RunLeftNormalization, location_name: "runLeftNormalization", traits: {"smithy.api#default" => false}))
    AnnotationImportJobItem.add_member(:annotation_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationFieldMap, location_name: "annotationFields"))
    AnnotationImportJobItem.type = Types::AnnotationImportJobItem
    AnnotationImportJobItems.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationImportJobItem)
    AnnotationStoreItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceItem, location_name: "reference", traits: {"smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "storeArn", traits: {"smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:store_format, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreFormat, location_name: "storeFormat", traits: {"smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description", traits: {"smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:sse_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfig, location_name: "sseConfig", traits: {"smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, location_name: "statusMessage", traits: {"smithy.api#required" => {}}))
    AnnotationStoreItem.add_member(:store_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "storeSizeBytes", traits: {"smithy.api#required" => {}}))
    AnnotationStoreItem.type = Types::AnnotationStoreItem
    AnnotationStoreItems.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationStoreItem)
    AnnotationStoreVersionItem.add_member(:store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "storeId", traits: {"smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "versionArn", traits: {"smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreName, location_name: "name", traits: {"smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, location_name: "versionName", traits: {"smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description", traits: {"smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, location_name: "statusMessage", traits: {"smithy.api#required" => {}}))
    AnnotationStoreVersionItem.add_member(:version_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "versionSizeBytes", traits: {"smithy.api#required" => {}}))
    AnnotationStoreVersionItem.type = Types::AnnotationStoreVersionItem
    AnnotationStoreVersionItems.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationStoreVersionItem)
    ArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    BatchDeleteReadSetRequest.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetIdList, location_name: "ids", traits: {"smithy.api#required" => {}}))
    BatchDeleteReadSetRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchDeleteReadSetRequest.type = Types::BatchDeleteReadSetRequest
    BatchDeleteReadSetResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetBatchErrorList, location_name: "errors"))
    BatchDeleteReadSetResponse.type = Types::BatchDeleteReadSetResponse
    CancelAnnotationImportRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelAnnotationImportRequest.type = Types::CancelAnnotationImportRequest
    CancelAnnotationImportResponse.type = Types::CancelAnnotationImportResponse
    CancelRunRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelRunRequest.type = Types::CancelRunRequest
    CancelVariantImportRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelVariantImportRequest.type = Types::CancelVariantImportRequest
    CancelVariantImportResponse.type = Types::CancelVariantImportResponse
    CompleteMultipartReadSetUploadRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteMultipartReadSetUploadRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, location_name: "uploadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteMultipartReadSetUploadRequest.add_member(:parts, ::Smithy::Schema::Shapes::MemberShape.new(target: CompleteReadSetUploadPartList, location_name: "parts", traits: {"smithy.api#required" => {}}))
    CompleteMultipartReadSetUploadRequest.type = Types::CompleteMultipartReadSetUploadRequest
    CompleteMultipartReadSetUploadResponse.add_member(:read_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetId, location_name: "readSetId", traits: {"smithy.api#required" => {}}))
    CompleteMultipartReadSetUploadResponse.type = Types::CompleteMultipartReadSetUploadResponse
    CompleteReadSetUploadPartList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CompleteReadSetUploadPartListItem)
    CompleteReadSetUploadPartListItem.add_member(:part_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "partNumber", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}, "smithy.api#required" => {}}))
    CompleteReadSetUploadPartListItem.add_member(:part_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetPartSource, location_name: "partSource", traits: {"smithy.api#required" => {}}))
    CompleteReadSetUploadPartListItem.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "checksum", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[\\p{L}||\\p{M}||\\p{Z}||\\p{S}||\\p{N}||\\p{P}]+$", "smithy.api#required" => {}}))
    CompleteReadSetUploadPartListItem.type = Types::CompleteReadSetUploadPartListItem
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ContainerRegistryMap.add_member(:registry_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryMappingsList, location_name: "registryMappings"))
    ContainerRegistryMap.add_member(:image_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageMappingsList, location_name: "imageMappings"))
    ContainerRegistryMap.type = Types::ContainerRegistryMap
    CreateAnnotationStoreRequest.add_member(:reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceItem, location_name: "reference"))
    CreateAnnotationStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreName, location_name: "name"))
    CreateAnnotationStoreRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    CreateAnnotationStoreRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateAnnotationStoreRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, location_name: "versionName"))
    CreateAnnotationStoreRequest.add_member(:sse_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfig, location_name: "sseConfig"))
    CreateAnnotationStoreRequest.add_member(:store_format, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreFormat, location_name: "storeFormat", traits: {"smithy.api#required" => {}}))
    CreateAnnotationStoreRequest.add_member(:store_options, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreOptions, location_name: "storeOptions"))
    CreateAnnotationStoreRequest.type = Types::CreateAnnotationStoreRequest
    CreateAnnotationStoreResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    CreateAnnotationStoreResponse.add_member(:reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceItem, location_name: "reference"))
    CreateAnnotationStoreResponse.add_member(:store_format, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreFormat, location_name: "storeFormat"))
    CreateAnnotationStoreResponse.add_member(:store_options, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreOptions, location_name: "storeOptions"))
    CreateAnnotationStoreResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    CreateAnnotationStoreResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateAnnotationStoreResponse.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, location_name: "versionName", traits: {"smithy.api#required" => {}}))
    CreateAnnotationStoreResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    CreateAnnotationStoreResponse.type = Types::CreateAnnotationStoreResponse
    CreateAnnotationStoreVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreName, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAnnotationStoreVersionRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, location_name: "versionName", traits: {"smithy.api#required" => {}}))
    CreateAnnotationStoreVersionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    CreateAnnotationStoreVersionRequest.add_member(:version_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionOptions, location_name: "versionOptions"))
    CreateAnnotationStoreVersionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateAnnotationStoreVersionRequest.type = Types::CreateAnnotationStoreVersionRequest
    CreateAnnotationStoreVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    CreateAnnotationStoreVersionResponse.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, location_name: "versionName", traits: {"smithy.api#required" => {}}))
    CreateAnnotationStoreVersionResponse.add_member(:store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "storeId", traits: {"smithy.api#required" => {}}))
    CreateAnnotationStoreVersionResponse.add_member(:version_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionOptions, location_name: "versionOptions"))
    CreateAnnotationStoreVersionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateAnnotationStoreVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    CreateAnnotationStoreVersionResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    CreateAnnotationStoreVersionResponse.type = Types::CreateAnnotationStoreVersionResponse
    CreateMultipartReadSetUploadRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateMultipartReadSetUploadRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    CreateMultipartReadSetUploadRequest.add_member(:source_file_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileType, location_name: "sourceFileType", traits: {"smithy.api#required" => {}}))
    CreateMultipartReadSetUploadRequest.add_member(:subject_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectId, location_name: "subjectId", traits: {"smithy.api#required" => {}}))
    CreateMultipartReadSetUploadRequest.add_member(:sample_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleId, location_name: "sampleId", traits: {"smithy.api#required" => {}}))
    CreateMultipartReadSetUploadRequest.add_member(:generated_from, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedFrom, location_name: "generatedFrom"))
    CreateMultipartReadSetUploadRequest.add_member(:reference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceArn, location_name: "referenceArn"))
    CreateMultipartReadSetUploadRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateMultipartReadSetUploadRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetDescription, location_name: "description"))
    CreateMultipartReadSetUploadRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateMultipartReadSetUploadRequest.type = Types::CreateMultipartReadSetUploadRequest
    CreateMultipartReadSetUploadResponse.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#required" => {}}))
    CreateMultipartReadSetUploadResponse.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, location_name: "uploadId", traits: {"smithy.api#required" => {}}))
    CreateMultipartReadSetUploadResponse.add_member(:source_file_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileType, location_name: "sourceFileType", traits: {"smithy.api#required" => {}}))
    CreateMultipartReadSetUploadResponse.add_member(:subject_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectId, location_name: "subjectId", traits: {"smithy.api#required" => {}}))
    CreateMultipartReadSetUploadResponse.add_member(:sample_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleId, location_name: "sampleId", traits: {"smithy.api#required" => {}}))
    CreateMultipartReadSetUploadResponse.add_member(:generated_from, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedFrom, location_name: "generatedFrom"))
    CreateMultipartReadSetUploadResponse.add_member(:reference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceArn, location_name: "referenceArn", traits: {"smithy.api#required" => {}}))
    CreateMultipartReadSetUploadResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetName, location_name: "name"))
    CreateMultipartReadSetUploadResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetDescription, location_name: "description"))
    CreateMultipartReadSetUploadResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateMultipartReadSetUploadResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CreateMultipartReadSetUploadResponse.type = Types::CreateMultipartReadSetUploadResponse
    CreateReferenceStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateReferenceStoreRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreDescription, location_name: "description"))
    CreateReferenceStoreRequest.add_member(:sse_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfig, location_name: "sseConfig"))
    CreateReferenceStoreRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateReferenceStoreRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    CreateReferenceStoreRequest.type = Types::CreateReferenceStoreRequest
    CreateReferenceStoreResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "id", traits: {"smithy.api#required" => {}}))
    CreateReferenceStoreResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateReferenceStoreResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreName, location_name: "name"))
    CreateReferenceStoreResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreDescription, location_name: "description"))
    CreateReferenceStoreResponse.add_member(:sse_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfig, location_name: "sseConfig"))
    CreateReferenceStoreResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CreateReferenceStoreResponse.type = Types::CreateReferenceStoreResponse
    CreateRunCacheRequest.add_member(:cache_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehavior, location_name: "cacheBehavior"))
    CreateRunCacheRequest.add_member(:cache_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3UriForBucketOrObject, location_name: "cacheS3Location", traits: {"smithy.api#required" => {}}))
    CreateRunCacheRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: UserCustomDescription, location_name: "description"))
    CreateRunCacheRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserCustomName, location_name: "name"))
    CreateRunCacheRequest.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheRequestId, location_name: "requestId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateRunCacheRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateRunCacheRequest.add_member(:cache_bucket_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, location_name: "cacheBucketOwnerId"))
    CreateRunCacheRequest.type = Types::CreateRunCacheRequest
    CreateRunCacheResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheArn, location_name: "arn"))
    CreateRunCacheResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheId, location_name: "id"))
    CreateRunCacheResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheStatus, location_name: "status"))
    CreateRunCacheResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateRunCacheResponse.type = Types::CreateRunCacheResponse
    CreateRunGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupName, location_name: "name"))
    CreateRunGroupRequest.add_member(:max_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxCpus", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}}))
    CreateRunGroupRequest.add_member(:max_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxRuns", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}}))
    CreateRunGroupRequest.add_member(:max_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxDuration", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}}))
    CreateRunGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateRunGroupRequest.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupRequestId, location_name: "requestId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateRunGroupRequest.add_member(:max_gpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxGpus", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}}))
    CreateRunGroupRequest.type = Types::CreateRunGroupRequest
    CreateRunGroupResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupArn, location_name: "arn"))
    CreateRunGroupResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupId, location_name: "id"))
    CreateRunGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateRunGroupResponse.type = Types::CreateRunGroupResponse
    CreateSequenceStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateSequenceStoreRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreDescription, location_name: "description"))
    CreateSequenceStoreRequest.add_member(:sse_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfig, location_name: "sseConfig"))
    CreateSequenceStoreRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateSequenceStoreRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSequenceStoreRequest.add_member(:fallback_location, ::Smithy::Schema::Shapes::MemberShape.new(target: FallbackLocation, location_name: "fallbackLocation"))
    CreateSequenceStoreRequest.add_member(:e_tag_algorithm_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ETagAlgorithmFamily, location_name: "eTagAlgorithmFamily"))
    CreateSequenceStoreRequest.add_member(:propagated_set_level_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagatedSetLevelTags, location_name: "propagatedSetLevelTags"))
    CreateSequenceStoreRequest.add_member(:s3_access_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessConfig, location_name: "s3AccessConfig"))
    CreateSequenceStoreRequest.type = Types::CreateSequenceStoreRequest
    CreateSequenceStoreResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "id", traits: {"smithy.api#required" => {}}))
    CreateSequenceStoreResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateSequenceStoreResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreName, location_name: "name"))
    CreateSequenceStoreResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreDescription, location_name: "description"))
    CreateSequenceStoreResponse.add_member(:sse_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfig, location_name: "sseConfig"))
    CreateSequenceStoreResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CreateSequenceStoreResponse.add_member(:fallback_location, ::Smithy::Schema::Shapes::MemberShape.new(target: FallbackLocation, location_name: "fallbackLocation"))
    CreateSequenceStoreResponse.add_member(:e_tag_algorithm_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ETagAlgorithmFamily, location_name: "eTagAlgorithmFamily"))
    CreateSequenceStoreResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreStatus, location_name: "status"))
    CreateSequenceStoreResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreStatusMessage, location_name: "statusMessage"))
    CreateSequenceStoreResponse.add_member(:propagated_set_level_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagatedSetLevelTags, location_name: "propagatedSetLevelTags"))
    CreateSequenceStoreResponse.add_member(:s3_access, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreS3Access, location_name: "s3Access"))
    CreateSequenceStoreResponse.type = Types::CreateSequenceStoreResponse
    CreateShareRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    CreateShareRequest.add_member(:principal_subscriber, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "principalSubscriber", traits: {"smithy.api#required" => {}}))
    CreateShareRequest.add_member(:share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareName, location_name: "shareName"))
    CreateShareRequest.type = Types::CreateShareRequest
    CreateShareResponse.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shareId"))
    CreateShareResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, location_name: "status"))
    CreateShareResponse.add_member(:share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareName, location_name: "shareName"))
    CreateShareResponse.type = Types::CreateShareResponse
    CreateVariantStoreRequest.add_member(:reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceItem, location_name: "reference", traits: {"smithy.api#required" => {}}))
    CreateVariantStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreName, location_name: "name"))
    CreateVariantStoreRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    CreateVariantStoreRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateVariantStoreRequest.add_member(:sse_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfig, location_name: "sseConfig"))
    CreateVariantStoreRequest.type = Types::CreateVariantStoreRequest
    CreateVariantStoreResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    CreateVariantStoreResponse.add_member(:reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceItem, location_name: "reference"))
    CreateVariantStoreResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    CreateVariantStoreResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateVariantStoreResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    CreateVariantStoreResponse.type = Types::CreateVariantStoreResponse
    CreateWorkflowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowName, location_name: "name"))
    CreateWorkflowRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDescription, location_name: "description"))
    CreateWorkflowRequest.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowEngine, location_name: "engine"))
    CreateWorkflowRequest.add_member(:definition_zip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: "definitionZip", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateWorkflowRequest.add_member(:definition_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinition, location_name: "definitionUri"))
    CreateWorkflowRequest.add_member(:main, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowMain, location_name: "main"))
    CreateWorkflowRequest.add_member(:parameter_template, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterTemplate, location_name: "parameterTemplate"))
    CreateWorkflowRequest.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageCapacity", traits: {"smithy.api#range" => {"min" => 0, "max" => 100000}}))
    CreateWorkflowRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateWorkflowRequest.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRequestId, location_name: "requestId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateWorkflowRequest.add_member(:accelerators, ::Smithy::Schema::Shapes::MemberShape.new(target: Accelerators, location_name: "accelerators"))
    CreateWorkflowRequest.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, location_name: "storageType"))
    CreateWorkflowRequest.add_member(:container_registry_map, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRegistryMap, location_name: "containerRegistryMap"))
    CreateWorkflowRequest.add_member(:container_registry_map_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, location_name: "containerRegistryMapUri"))
    CreateWorkflowRequest.add_member(:readme_markdown, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadmeMarkdown, location_name: "readmeMarkdown"))
    CreateWorkflowRequest.add_member(:parameter_template_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterTemplatePath, location_name: "parameterTemplatePath"))
    CreateWorkflowRequest.add_member(:readme_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadmePath, location_name: "readmePath"))
    CreateWorkflowRequest.add_member(:definition_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionRepository, location_name: "definitionRepository"))
    CreateWorkflowRequest.add_member(:workflow_bucket_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBucketOwnerId, location_name: "workflowBucketOwnerId"))
    CreateWorkflowRequest.add_member(:readme_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3UriForObject, location_name: "readmeUri"))
    CreateWorkflowRequest.type = Types::CreateWorkflowRequest
    CreateWorkflowResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, location_name: "arn"))
    CreateWorkflowResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "id"))
    CreateWorkflowResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStatus, location_name: "status"))
    CreateWorkflowResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateWorkflowResponse.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowUuid, location_name: "uuid"))
    CreateWorkflowResponse.type = Types::CreateWorkflowResponse
    CreateWorkflowVersionRequest.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "workflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    CreateWorkflowVersionRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionName, location_name: "versionName", traits: {"smithy.api#required" => {}}))
    CreateWorkflowVersionRequest.add_member(:definition_zip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: "definitionZip", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    CreateWorkflowVersionRequest.add_member(:definition_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinition, location_name: "definitionUri"))
    CreateWorkflowVersionRequest.add_member(:accelerators, ::Smithy::Schema::Shapes::MemberShape.new(target: Accelerators, location_name: "accelerators"))
    CreateWorkflowVersionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionDescription, location_name: "description"))
    CreateWorkflowVersionRequest.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowEngine, location_name: "engine"))
    CreateWorkflowVersionRequest.add_member(:main, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowMain, location_name: "main"))
    CreateWorkflowVersionRequest.add_member(:parameter_template, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterTemplate, location_name: "parameterTemplate"))
    CreateWorkflowVersionRequest.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowRequestId, location_name: "requestId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateWorkflowVersionRequest.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, location_name: "storageType"))
    CreateWorkflowVersionRequest.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageCapacity", traits: {"smithy.api#range" => {"min" => 0, "max" => 100000}}))
    CreateWorkflowVersionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateWorkflowVersionRequest.add_member(:workflow_bucket_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBucketOwnerId, location_name: "workflowBucketOwnerId"))
    CreateWorkflowVersionRequest.add_member(:container_registry_map, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRegistryMap, location_name: "containerRegistryMap"))
    CreateWorkflowVersionRequest.add_member(:container_registry_map_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, location_name: "containerRegistryMapUri"))
    CreateWorkflowVersionRequest.add_member(:readme_markdown, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadmeMarkdown, location_name: "readmeMarkdown"))
    CreateWorkflowVersionRequest.add_member(:parameter_template_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterTemplatePath, location_name: "parameterTemplatePath"))
    CreateWorkflowVersionRequest.add_member(:readme_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadmePath, location_name: "readmePath"))
    CreateWorkflowVersionRequest.add_member(:definition_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionRepository, location_name: "definitionRepository"))
    CreateWorkflowVersionRequest.add_member(:readme_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3UriForObject, location_name: "readmeUri"))
    CreateWorkflowVersionRequest.type = Types::CreateWorkflowVersionRequest
    CreateWorkflowVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionArn, location_name: "arn"))
    CreateWorkflowVersionResponse.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "workflowId"))
    CreateWorkflowVersionResponse.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionName, location_name: "versionName"))
    CreateWorkflowVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStatus, location_name: "status"))
    CreateWorkflowVersionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateWorkflowVersionResponse.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowUuid, location_name: "uuid"))
    CreateWorkflowVersionResponse.type = Types::CreateWorkflowVersionResponse
    DefinitionRepository.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, location_name: "connectionArn", traits: {"smithy.api#required" => {}}))
    DefinitionRepository.add_member(:full_repository_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FullRepositoryId, location_name: "fullRepositoryId", traits: {"smithy.api#required" => {}}))
    DefinitionRepository.add_member(:source_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceReference, location_name: "sourceReference"))
    DefinitionRepository.add_member(:exclude_file_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeFilePatternList, location_name: "excludeFilePatterns"))
    DefinitionRepository.type = Types::DefinitionRepository
    DefinitionRepositoryDetails.add_member(:connection_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionArn, location_name: "connectionArn"))
    DefinitionRepositoryDetails.add_member(:full_repository_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FullRepositoryId, location_name: "fullRepositoryId"))
    DefinitionRepositoryDetails.add_member(:source_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceReference, location_name: "sourceReference"))
    DefinitionRepositoryDetails.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "providerType"))
    DefinitionRepositoryDetails.add_member(:provider_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "providerEndpoint"))
    DefinitionRepositoryDetails.type = Types::DefinitionRepositoryDetails
    DeleteAnnotationStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAnnotationStoreRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: "force", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "force"}))
    DeleteAnnotationStoreRequest.type = Types::DeleteAnnotationStoreRequest
    DeleteAnnotationStoreResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    DeleteAnnotationStoreResponse.type = Types::DeleteAnnotationStoreResponse
    DeleteAnnotationStoreVersionsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAnnotationStoreVersionsRequest.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionList, location_name: "versions", traits: {"smithy.api#required" => {}}))
    DeleteAnnotationStoreVersionsRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: "force", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "force"}))
    DeleteAnnotationStoreVersionsRequest.type = Types::DeleteAnnotationStoreVersionsRequest
    DeleteAnnotationStoreVersionsResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionDeleteErrorList, location_name: "errors"))
    DeleteAnnotationStoreVersionsResponse.type = Types::DeleteAnnotationStoreVersionsResponse
    DeleteReferenceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "referenceId"}))
    DeleteReferenceRequest.add_member(:reference_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "referenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteReferenceRequest.type = Types::DeleteReferenceRequest
    DeleteReferenceResponse.type = Types::DeleteReferenceResponse
    DeleteReferenceStoreRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "referenceStoreId"}))
    DeleteReferenceStoreRequest.type = Types::DeleteReferenceStoreRequest
    DeleteReferenceStoreResponse.type = Types::DeleteReferenceStoreResponse
    DeleteRunCacheRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRunCacheRequest.type = Types::DeleteRunCacheRequest
    DeleteRunGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRunGroupRequest.type = Types::DeleteRunGroupRequest
    DeleteRunRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRunRequest.type = Types::DeleteRunRequest
    DeleteS3AccessPolicyRequest.add_member(:s3_access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointArn, location_name: "s3AccessPointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteS3AccessPolicyRequest.type = Types::DeleteS3AccessPolicyRequest
    DeleteS3AccessPolicyResponse.type = Types::DeleteS3AccessPolicyResponse
    DeleteSequenceStoreRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "sequenceStoreId"}))
    DeleteSequenceStoreRequest.type = Types::DeleteSequenceStoreRequest
    DeleteSequenceStoreResponse.type = Types::DeleteSequenceStoreResponse
    DeleteShareRequest.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shareId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteShareRequest.type = Types::DeleteShareRequest
    DeleteShareResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, location_name: "status"))
    DeleteShareResponse.type = Types::DeleteShareResponse
    DeleteVariantStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVariantStoreRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::PrimitiveBoolean, location_name: "force", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "force"}))
    DeleteVariantStoreRequest.type = Types::DeleteVariantStoreRequest
    DeleteVariantStoreResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    DeleteVariantStoreResponse.type = Types::DeleteVariantStoreResponse
    DeleteWorkflowRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkflowRequest.type = Types::DeleteWorkflowRequest
    DeleteWorkflowVersionRequest.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "workflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    DeleteWorkflowVersionRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionName, location_name: "versionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWorkflowVersionRequest.type = Types::DeleteWorkflowVersionRequest
    ETag.add_member(:algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ETagAlgorithm, location_name: "algorithm"))
    ETag.add_member(:source1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "source1"))
    ETag.add_member(:source2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "source2"))
    ETag.type = Types::ETag
    ExcludeFilePatternList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String)
    ExportReadSet.add_member(:read_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetId, location_name: "readSetId", traits: {"smithy.api#required" => {}}))
    ExportReadSet.type = Types::ExportReadSet
    ExportReadSetDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetId, location_name: "id", traits: {"smithy.api#required" => {}}))
    ExportReadSetDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetExportJobItemStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    ExportReadSetDetail.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusMessage, location_name: "statusMessage"))
    ExportReadSetDetail.type = Types::ExportReadSetDetail
    ExportReadSetDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportReadSetDetail)
    ExportReadSetFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetExportJobStatus, location_name: "status"))
    ExportReadSetFilter.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAfter", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ExportReadSetFilter.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdBefore", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ExportReadSetFilter.type = Types::ExportReadSetFilter
    ExportReadSetJobDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportJobId, location_name: "id", traits: {"smithy.api#required" => {}}))
    ExportReadSetJobDetail.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#required" => {}}))
    ExportReadSetJobDetail.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Destination, location_name: "destination", traits: {"smithy.api#required" => {}}))
    ExportReadSetJobDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetExportJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    ExportReadSetJobDetail.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ExportReadSetJobDetail.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "completionTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ExportReadSetJobDetail.type = Types::ExportReadSetJobDetail
    ExportReadSetJobDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportReadSetJobDetail)
    ExportReadSetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExportReadSet)
    FileInformation.add_member(:total_parts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "totalParts", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}}))
    FileInformation.add_member(:part_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "partSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 5368709120}}))
    FileInformation.add_member(:content_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "contentLength", traits: {"smithy.api#range" => {"min" => 1, "max" => 5497558138880}}))
    FileInformation.add_member(:s3_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetS3Access, location_name: "s3Access"))
    FileInformation.type = Types::FileInformation
    Filter.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, location_name: "resourceArns"))
    Filter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusList, location_name: "status"))
    Filter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TypeList, location_name: "type"))
    Filter.type = Types::Filter
    FormatOptions.add_member(:tsv_options, Types::FormatOptions::TsvOptions, ::Smithy::Schema::Shapes::MemberShape.new(target: TsvOptions, location_name: "tsvOptions"))
    FormatOptions.add_member(:vcf_options, Types::FormatOptions::VcfOptions, ::Smithy::Schema::Shapes::MemberShape.new(target: VcfOptions, location_name: "vcfOptions"))
    FormatOptions.add_member(:unknown, Types::FormatOptions::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FormatOptions.type = Types::FormatOptions
    FormatToHeader.key = ::Smithy::Schema::Shapes::MemberShape.new(target: FormatToHeaderKey)
    FormatToHeader.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    GetAnnotationImportRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnnotationImportRequest.type = Types::GetAnnotationImportRequest
    GetAnnotationImportResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreName, location_name: "destinationName", traits: {"smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, location_name: "versionName", traits: {"smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusMsg, location_name: "statusMessage", traits: {"smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CompletionTime, location_name: "completionTime", traits: {"smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationImportItemDetails, location_name: "items", traits: {"smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:run_left_normalization, ::Smithy::Schema::Shapes::MemberShape.new(target: RunLeftNormalization, location_name: "runLeftNormalization", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:format_options, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatOptions, location_name: "formatOptions", traits: {"smithy.api#required" => {}}))
    GetAnnotationImportResponse.add_member(:annotation_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationFieldMap, location_name: "annotationFields"))
    GetAnnotationImportResponse.type = Types::GetAnnotationImportResponse
    GetAnnotationStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnnotationStoreRequest.type = Types::GetAnnotationStoreRequest
    GetAnnotationStoreResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceItem, location_name: "reference", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "storeArn", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:sse_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfig, location_name: "sseConfig", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:store_options, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreOptions, location_name: "storeOptions"))
    GetAnnotationStoreResponse.add_member(:store_format, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreFormat, location_name: "storeFormat"))
    GetAnnotationStoreResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, location_name: "statusMessage", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:store_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "storeSizeBytes", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreResponse.add_member(:num_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "numVersions", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreResponse.type = Types::GetAnnotationStoreResponse
    GetAnnotationStoreVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnnotationStoreVersionRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "versionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnnotationStoreVersionRequest.type = Types::GetAnnotationStoreVersionRequest
    GetAnnotationStoreVersionResponse.add_member(:store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "storeId", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "versionArn", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, location_name: "versionName", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:version_options, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionOptions, location_name: "versionOptions"))
    GetAnnotationStoreVersionResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, location_name: "statusMessage", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.add_member(:version_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "versionSizeBytes", traits: {"smithy.api#required" => {}}))
    GetAnnotationStoreVersionResponse.type = Types::GetAnnotationStoreVersionResponse
    GetReadSetActivationJobRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationJobId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadSetActivationJobRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadSetActivationJobRequest.type = Types::GetReadSetActivationJobRequest
    GetReadSetActivationJobResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationJobId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetReadSetActivationJobResponse.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#required" => {}}))
    GetReadSetActivationJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetActivationJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetReadSetActivationJobResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusMessage, location_name: "statusMessage"))
    GetReadSetActivationJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetReadSetActivationJobResponse.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "completionTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetReadSetActivationJobResponse.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivateReadSetSourceList, location_name: "sources"))
    GetReadSetActivationJobResponse.type = Types::GetReadSetActivationJobResponse
    GetReadSetExportJobRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadSetExportJobRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportJobId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadSetExportJobRequest.type = Types::GetReadSetExportJobRequest
    GetReadSetExportJobResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportJobId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetReadSetExportJobResponse.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#required" => {}}))
    GetReadSetExportJobResponse.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Destination, location_name: "destination", traits: {"smithy.api#required" => {}}))
    GetReadSetExportJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetExportJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetReadSetExportJobResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusMessage, location_name: "statusMessage"))
    GetReadSetExportJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetReadSetExportJobResponse.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "completionTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetReadSetExportJobResponse.add_member(:read_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportReadSetDetailList, location_name: "readSets"))
    GetReadSetExportJobResponse.type = Types::GetReadSetExportJobResponse
    GetReadSetImportJobRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadSetImportJobRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadSetImportJobRequest.type = Types::GetReadSetImportJobRequest
    GetReadSetImportJobResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetReadSetImportJobResponse.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#required" => {}}))
    GetReadSetImportJobResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    GetReadSetImportJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetImportJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetReadSetImportJobResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusMessage, location_name: "statusMessage"))
    GetReadSetImportJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetReadSetImportJobResponse.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "completionTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetReadSetImportJobResponse.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportReadSetSourceList, location_name: "sources", traits: {"smithy.api#required" => {}}))
    GetReadSetImportJobResponse.type = Types::GetReadSetImportJobResponse
    GetReadSetMetadataRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "readSetId"}))
    GetReadSetMetadataRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadSetMetadataRequest.type = Types::GetReadSetMetadataRequest
    GetReadSetMetadataResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetReadSetMetadataResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetReadSetMetadataResponse.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#required" => {}}))
    GetReadSetMetadataResponse.add_member(:subject_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectId, location_name: "subjectId"))
    GetReadSetMetadataResponse.add_member(:sample_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleId, location_name: "sampleId"))
    GetReadSetMetadataResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetReadSetMetadataResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetName, location_name: "name"))
    GetReadSetMetadataResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetDescription, location_name: "description"))
    GetReadSetMetadataResponse.add_member(:file_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileType, location_name: "fileType", traits: {"smithy.api#required" => {}}))
    GetReadSetMetadataResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetReadSetMetadataResponse.add_member(:sequence_information, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceInformation, location_name: "sequenceInformation"))
    GetReadSetMetadataResponse.add_member(:reference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceArn, location_name: "referenceArn"))
    GetReadSetMetadataResponse.add_member(:files, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetFiles, location_name: "files"))
    GetReadSetMetadataResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetStatusMessage, location_name: "statusMessage"))
    GetReadSetMetadataResponse.add_member(:creation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationType, location_name: "creationType"))
    GetReadSetMetadataResponse.add_member(:etag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, location_name: "etag"))
    GetReadSetMetadataResponse.add_member(:creation_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationJobId, location_name: "creationJobId"))
    GetReadSetMetadataResponse.type = Types::GetReadSetMetadataResponse
    GetReadSetRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "readSetId"}))
    GetReadSetRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReadSetRequest.add_member(:file, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetFile, location_name: "file", traits: {"smithy.api#httpQuery" => "file"}))
    GetReadSetRequest.add_member(:part_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "partNumber", traits: {"smithy.api#httpQuery" => "partNumber", "smithy.api#range" => {"min" => 1, "max" => 10000}, "smithy.api#required" => {}}))
    GetReadSetRequest.type = Types::GetReadSetRequest
    GetReadSetResponse.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetStreamingBlob, location_name: "payload", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    GetReadSetResponse[:http_payload] = :payload
    GetReadSetResponse[:http_payload_member] = GetReadSetResponse.member(:payload)
    GetReadSetResponse.type = Types::GetReadSetResponse
    GetReferenceImportJobRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReferenceImportJobRequest.add_member(:reference_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "referenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReferenceImportJobRequest.type = Types::GetReferenceImportJobRequest
    GetReferenceImportJobResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetReferenceImportJobResponse.add_member(:reference_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "referenceStoreId", traits: {"smithy.api#required" => {}}))
    GetReferenceImportJobResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    GetReferenceImportJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceImportJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetReferenceImportJobResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusMessage, location_name: "statusMessage"))
    GetReferenceImportJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetReferenceImportJobResponse.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "completionTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetReferenceImportJobResponse.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportReferenceSourceList, location_name: "sources", traits: {"smithy.api#required" => {}}))
    GetReferenceImportJobResponse.type = Types::GetReferenceImportJobResponse
    GetReferenceMetadataRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "referenceId"}))
    GetReferenceMetadataRequest.add_member(:reference_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "referenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReferenceMetadataRequest.type = Types::GetReferenceMetadataRequest
    GetReferenceMetadataResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetReferenceMetadataResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetReferenceMetadataResponse.add_member(:reference_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "referenceStoreId", traits: {"smithy.api#required" => {}}))
    GetReferenceMetadataResponse.add_member(:md5, ::Smithy::Schema::Shapes::MemberShape.new(target: Md5, location_name: "md5", traits: {"smithy.api#required" => {}}))
    GetReferenceMetadataResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStatus, location_name: "status"))
    GetReferenceMetadataResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceName, location_name: "name"))
    GetReferenceMetadataResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceDescription, location_name: "description"))
    GetReferenceMetadataResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetReferenceMetadataResponse.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "updateTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetReferenceMetadataResponse.add_member(:files, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceFiles, location_name: "files"))
    GetReferenceMetadataResponse.add_member(:creation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceCreationType, location_name: "creationType"))
    GetReferenceMetadataResponse.add_member(:creation_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationJobId, location_name: "creationJobId"))
    GetReferenceMetadataResponse.type = Types::GetReferenceMetadataResponse
    GetReferenceRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "referenceId"}))
    GetReferenceRequest.add_member(:reference_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "referenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReferenceRequest.add_member(:range, ::Smithy::Schema::Shapes::MemberShape.new(target: Range, location_name: "range", traits: {"smithy.api#httpHeader" => "Range"}))
    GetReferenceRequest.add_member(:part_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "partNumber", traits: {"smithy.api#httpQuery" => "partNumber", "smithy.api#range" => {"min" => 1, "max" => 10000}, "smithy.api#required" => {}}))
    GetReferenceRequest.add_member(:file, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceFile, location_name: "file", traits: {"smithy.api#httpQuery" => "file"}))
    GetReferenceRequest.type = Types::GetReferenceRequest
    GetReferenceResponse.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStreamingBlob, location_name: "payload", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    GetReferenceResponse[:http_payload] = :payload
    GetReferenceResponse[:http_payload_member] = GetReferenceResponse.member(:payload)
    GetReferenceResponse.type = Types::GetReferenceResponse
    GetReferenceStoreRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "referenceStoreId"}))
    GetReferenceStoreRequest.type = Types::GetReferenceStoreRequest
    GetReferenceStoreResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetReferenceStoreResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetReferenceStoreResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreName, location_name: "name"))
    GetReferenceStoreResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreDescription, location_name: "description"))
    GetReferenceStoreResponse.add_member(:sse_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfig, location_name: "sseConfig"))
    GetReferenceStoreResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetReferenceStoreResponse.type = Types::GetReferenceStoreResponse
    GetRunCacheRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRunCacheRequest.type = Types::GetRunCacheRequest
    GetRunCacheResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheArn, location_name: "arn"))
    GetRunCacheResponse.add_member(:cache_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehavior, location_name: "cacheBehavior"))
    GetRunCacheResponse.add_member(:cache_bucket_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, location_name: "cacheBucketOwnerId"))
    GetRunCacheResponse.add_member(:cache_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3UriForBucketOrObject, location_name: "cacheS3Uri"))
    GetRunCacheResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheTimestamp, location_name: "creationTime"))
    GetRunCacheResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: UserCustomDescription, location_name: "description"))
    GetRunCacheResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheId, location_name: "id"))
    GetRunCacheResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserCustomName, location_name: "name"))
    GetRunCacheResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheStatus, location_name: "status"))
    GetRunCacheResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    GetRunCacheResponse.type = Types::GetRunCacheResponse
    GetRunGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRunGroupRequest.type = Types::GetRunGroupRequest
    GetRunGroupResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupArn, location_name: "arn"))
    GetRunGroupResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupId, location_name: "id"))
    GetRunGroupResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupName, location_name: "name"))
    GetRunGroupResponse.add_member(:max_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxCpus", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}}))
    GetRunGroupResponse.add_member(:max_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxRuns", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}}))
    GetRunGroupResponse.add_member(:max_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxDuration", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}}))
    GetRunGroupResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupTimestamp, location_name: "creationTime"))
    GetRunGroupResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    GetRunGroupResponse.add_member(:max_gpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxGpus", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}}))
    GetRunGroupResponse.type = Types::GetRunGroupResponse
    GetRunRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRunRequest.add_member(:export, ::Smithy::Schema::Shapes::MemberShape.new(target: RunExportList, location_name: "export", traits: {"smithy.api#httpQuery" => "export"}))
    GetRunRequest.type = Types::GetRunRequest
    GetRunResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RunArn, location_name: "arn"))
    GetRunResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunId, location_name: "id"))
    GetRunResponse.add_member(:cache_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericIdInArn, location_name: "cacheId"))
    GetRunResponse.add_member(:cache_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehavior, location_name: "cacheBehavior"))
    GetRunResponse.add_member(:engine_version, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineVersion, location_name: "engineVersion"))
    GetRunResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RunStatus, location_name: "status"))
    GetRunResponse.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "workflowId"))
    GetRunResponse.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, location_name: "workflowType"))
    GetRunResponse.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunId, location_name: "runId"))
    GetRunResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RunRoleArn, location_name: "roleArn"))
    GetRunResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RunName, location_name: "name"))
    GetRunResponse.add_member(:run_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupId, location_name: "runGroupId"))
    GetRunResponse.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "priority", traits: {"smithy.api#range" => {"min" => 0, "max" => 100000}}))
    GetRunResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinition, location_name: "definition"))
    GetRunResponse.add_member(:digest, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDigest, location_name: "digest"))
    GetRunResponse.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RunParameters, location_name: "parameters"))
    GetRunResponse.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageCapacity", traits: {"smithy.api#range" => {"min" => 0, "max" => 100000}}))
    GetRunResponse.add_member(:output_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: RunOutputUri, location_name: "outputUri"))
    GetRunResponse.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RunLogLevel, location_name: "logLevel"))
    GetRunResponse.add_member(:resource_digests, ::Smithy::Schema::Shapes::MemberShape.new(target: RunResourceDigests, location_name: "resourceDigests"))
    GetRunResponse.add_member(:started_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RunStartedBy, location_name: "startedBy"))
    GetRunResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: RunTimestamp, location_name: "creationTime"))
    GetRunResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: RunTimestamp, location_name: "startTime"))
    GetRunResponse.add_member(:stop_time, ::Smithy::Schema::Shapes::MemberShape.new(target: RunTimestamp, location_name: "stopTime"))
    GetRunResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: RunStatusMessage, location_name: "statusMessage"))
    GetRunResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    GetRunResponse.add_member(:accelerators, ::Smithy::Schema::Shapes::MemberShape.new(target: Accelerators, location_name: "accelerators"))
    GetRunResponse.add_member(:retention_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RunRetentionMode, location_name: "retentionMode"))
    GetRunResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RunFailureReason, location_name: "failureReason"))
    GetRunResponse.add_member(:log_location, ::Smithy::Schema::Shapes::MemberShape.new(target: RunLogLocation, location_name: "logLocation"))
    GetRunResponse.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: RunUuid, location_name: "uuid"))
    GetRunResponse.add_member(:run_output_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: RunOutputUri, location_name: "runOutputUri"))
    GetRunResponse.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, location_name: "storageType"))
    GetRunResponse.add_member(:workflow_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowOwnerId, location_name: "workflowOwnerId"))
    GetRunResponse.add_member(:workflow_version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionName, location_name: "workflowVersionName"))
    GetRunResponse.add_member(:workflow_uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowUuid, location_name: "workflowUuid"))
    GetRunResponse.type = Types::GetRunResponse
    GetRunTaskRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRunTaskRequest.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, location_name: "taskId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRunTaskRequest.type = Types::GetRunTaskRequest
    GetRunTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, location_name: "taskId"))
    GetRunTaskResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, location_name: "status"))
    GetRunTaskResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskName, location_name: "name"))
    GetRunTaskResponse.add_member(:cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpus", traits: {"smithy.api#range" => {"min" => 1}}))
    GetRunTaskResponse.add_member(:cache_hit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "cacheHit"))
    GetRunTaskResponse.add_member(:cache_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3UriForBucketOrObject, location_name: "cacheS3Uri"))
    GetRunTaskResponse.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memory", traits: {"smithy.api#range" => {"min" => 1}}))
    GetRunTaskResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskTimestamp, location_name: "creationTime"))
    GetRunTaskResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskTimestamp, location_name: "startTime"))
    GetRunTaskResponse.add_member(:stop_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskTimestamp, location_name: "stopTime"))
    GetRunTaskResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatusMessage, location_name: "statusMessage"))
    GetRunTaskResponse.add_member(:log_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskLogStream, location_name: "logStream"))
    GetRunTaskResponse.add_member(:gpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "gpus", traits: {"smithy.api#range" => {"min" => 0}}))
    GetRunTaskResponse.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskInstanceType, location_name: "instanceType"))
    GetRunTaskResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFailureReason, location_name: "failureReason"))
    GetRunTaskResponse.add_member(:image_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageDetails, location_name: "imageDetails"))
    GetRunTaskResponse.type = Types::GetRunTaskResponse
    GetS3AccessPolicyRequest.add_member(:s3_access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointArn, location_name: "s3AccessPointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetS3AccessPolicyRequest.type = Types::GetS3AccessPolicyRequest
    GetS3AccessPolicyResponse.add_member(:s3_access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointArn, location_name: "s3AccessPointArn"))
    GetS3AccessPolicyResponse.add_member(:store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreId, location_name: "storeId"))
    GetS3AccessPolicyResponse.add_member(:store_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreType, location_name: "storeType"))
    GetS3AccessPolicyResponse.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "updateTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetS3AccessPolicyResponse.add_member(:s3_access_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPolicy, location_name: "s3AccessPolicy", traits: {"smithy.api#required" => {}}))
    GetS3AccessPolicyResponse.type = Types::GetS3AccessPolicyResponse
    GetSequenceStoreRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "sequenceStoreId"}))
    GetSequenceStoreRequest.type = Types::GetSequenceStoreRequest
    GetSequenceStoreResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetSequenceStoreResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetSequenceStoreResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreName, location_name: "name"))
    GetSequenceStoreResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreDescription, location_name: "description"))
    GetSequenceStoreResponse.add_member(:sse_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfig, location_name: "sseConfig"))
    GetSequenceStoreResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSequenceStoreResponse.add_member(:fallback_location, ::Smithy::Schema::Shapes::MemberShape.new(target: FallbackLocation, location_name: "fallbackLocation"))
    GetSequenceStoreResponse.add_member(:s3_access, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreS3Access, location_name: "s3Access"))
    GetSequenceStoreResponse.add_member(:e_tag_algorithm_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ETagAlgorithmFamily, location_name: "eTagAlgorithmFamily"))
    GetSequenceStoreResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreStatus, location_name: "status"))
    GetSequenceStoreResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreStatusMessage, location_name: "statusMessage"))
    GetSequenceStoreResponse.add_member(:propagated_set_level_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagatedSetLevelTags, location_name: "propagatedSetLevelTags"))
    GetSequenceStoreResponse.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "updateTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetSequenceStoreResponse.type = Types::GetSequenceStoreResponse
    GetShareRequest.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shareId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetShareRequest.type = Types::GetShareRequest
    GetShareResponse.add_member(:share, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareDetails, location_name: "share"))
    GetShareResponse.type = Types::GetShareResponse
    GetVariantImportRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVariantImportRequest.type = Types::GetVariantImportRequest
    GetVariantImportResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreName, location_name: "destinationName", traits: {"smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusMsg, location_name: "statusMessage", traits: {"smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CompletionTime, location_name: "completionTime"))
    GetVariantImportResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: VariantImportItemDetails, location_name: "items", traits: {"smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:run_left_normalization, ::Smithy::Schema::Shapes::MemberShape.new(target: RunLeftNormalization, location_name: "runLeftNormalization", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    GetVariantImportResponse.add_member(:annotation_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationFieldMap, location_name: "annotationFields"))
    GetVariantImportResponse.type = Types::GetVariantImportResponse
    GetVariantStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVariantStoreRequest.type = Types::GetVariantStoreRequest
    GetVariantStoreResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceItem, location_name: "reference", traits: {"smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "storeArn", traits: {"smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description", traits: {"smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:sse_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfig, location_name: "sseConfig", traits: {"smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, location_name: "statusMessage", traits: {"smithy.api#required" => {}}))
    GetVariantStoreResponse.add_member(:store_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "storeSizeBytes", traits: {"smithy.api#required" => {}}))
    GetVariantStoreResponse.type = Types::GetVariantStoreResponse
    GetWorkflowRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, location_name: "type", traits: {"smithy.api#httpQuery" => "type"}))
    GetWorkflowRequest.add_member(:export, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExportList, location_name: "export", traits: {"smithy.api#httpQuery" => "export"}))
    GetWorkflowRequest.add_member(:workflow_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowOwnerId, location_name: "workflowOwnerId", traits: {"smithy.api#httpQuery" => "workflowOwnerId"}))
    GetWorkflowRequest.type = Types::GetWorkflowRequest
    GetWorkflowResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, location_name: "arn"))
    GetWorkflowResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "id"))
    GetWorkflowResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStatus, location_name: "status"))
    GetWorkflowResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, location_name: "type"))
    GetWorkflowResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowName, location_name: "name"))
    GetWorkflowResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDescription, location_name: "description"))
    GetWorkflowResponse.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowEngine, location_name: "engine"))
    GetWorkflowResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinition, location_name: "definition", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetWorkflowResponse.add_member(:main, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowMain, location_name: "main"))
    GetWorkflowResponse.add_member(:digest, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDigest, location_name: "digest", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetWorkflowResponse.add_member(:parameter_template, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterTemplate, location_name: "parameterTemplate"))
    GetWorkflowResponse.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageCapacity", traits: {"smithy.api#range" => {"min" => 0, "max" => 100000}}))
    GetWorkflowResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowTimestamp, location_name: "creationTime"))
    GetWorkflowResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStatusMessage, location_name: "statusMessage", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetWorkflowResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    GetWorkflowResponse.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowMetadata, location_name: "metadata"))
    GetWorkflowResponse.add_member(:accelerators, ::Smithy::Schema::Shapes::MemberShape.new(target: Accelerators, location_name: "accelerators"))
    GetWorkflowResponse.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, location_name: "storageType"))
    GetWorkflowResponse.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowUuid, location_name: "uuid"))
    GetWorkflowResponse.add_member(:container_registry_map, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRegistryMap, location_name: "containerRegistryMap"))
    GetWorkflowResponse.add_member(:readme, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadmeS3PresignedUrl, location_name: "readme", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetWorkflowResponse.add_member(:definition_repository_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionRepositoryDetails, location_name: "definitionRepositoryDetails"))
    GetWorkflowResponse.add_member(:readme_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadmePath, location_name: "readmePath"))
    GetWorkflowResponse.type = Types::GetWorkflowResponse
    GetWorkflowVersionRequest.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "workflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    GetWorkflowVersionRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionName, location_name: "versionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowVersionRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, location_name: "type", traits: {"smithy.api#httpQuery" => "type"}))
    GetWorkflowVersionRequest.add_member(:export, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExportList, location_name: "export", traits: {"smithy.api#httpQuery" => "export"}))
    GetWorkflowVersionRequest.add_member(:workflow_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowOwnerId, location_name: "workflowOwnerId", traits: {"smithy.api#httpQuery" => "workflowOwnerId"}))
    GetWorkflowVersionRequest.type = Types::GetWorkflowVersionRequest
    GetWorkflowVersionResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionArn, location_name: "arn"))
    GetWorkflowVersionResponse.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "workflowId"))
    GetWorkflowVersionResponse.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionName, location_name: "versionName"))
    GetWorkflowVersionResponse.add_member(:accelerators, ::Smithy::Schema::Shapes::MemberShape.new(target: Accelerators, location_name: "accelerators"))
    GetWorkflowVersionResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowTimestamp, location_name: "creationTime"))
    GetWorkflowVersionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionDescription, location_name: "description"))
    GetWorkflowVersionResponse.add_member(:definition, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDefinition, location_name: "definition", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetWorkflowVersionResponse.add_member(:digest, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDigest, location_name: "digest", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetWorkflowVersionResponse.add_member(:engine, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowEngine, location_name: "engine"))
    GetWorkflowVersionResponse.add_member(:main, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowMain, location_name: "main"))
    GetWorkflowVersionResponse.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowMetadata, location_name: "metadata"))
    GetWorkflowVersionResponse.add_member(:parameter_template, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterTemplate, location_name: "parameterTemplate"))
    GetWorkflowVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStatus, location_name: "status"))
    GetWorkflowVersionResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStatusMessage, location_name: "statusMessage", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetWorkflowVersionResponse.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, location_name: "storageType"))
    GetWorkflowVersionResponse.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageCapacity", traits: {"smithy.api#range" => {"min" => 0, "max" => 100000}}))
    GetWorkflowVersionResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, location_name: "type"))
    GetWorkflowVersionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    GetWorkflowVersionResponse.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowUuid, location_name: "uuid"))
    GetWorkflowVersionResponse.add_member(:workflow_bucket_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBucketOwnerId, location_name: "workflowBucketOwnerId"))
    GetWorkflowVersionResponse.add_member(:container_registry_map, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRegistryMap, location_name: "containerRegistryMap"))
    GetWorkflowVersionResponse.add_member(:readme, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadmeS3PresignedUrl, location_name: "readme", traits: {"aws.cloudformation#cfnExcludeProperty" => {}}))
    GetWorkflowVersionResponse.add_member(:definition_repository_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DefinitionRepositoryDetails, location_name: "definitionRepositoryDetails"))
    GetWorkflowVersionResponse.add_member(:readme_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadmePath, location_name: "readmePath"))
    GetWorkflowVersionResponse.type = Types::GetWorkflowVersionResponse
    IdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier)
    ImageDetails.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, location_name: "image"))
    ImageDetails.add_member(:image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskImageDigest, location_name: "imageDigest"))
    ImageDetails.add_member(:source_image, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, location_name: "sourceImage"))
    ImageDetails.type = Types::ImageDetails
    ImageMapping.add_member(:source_image, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, location_name: "sourceImage"))
    ImageMapping.add_member(:destination_image, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, location_name: "destinationImage"))
    ImageMapping.type = Types::ImageMapping
    ImageMappingsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImageMapping)
    ImportReadSetFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetImportJobStatus, location_name: "status"))
    ImportReadSetFilter.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAfter", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ImportReadSetFilter.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdBefore", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ImportReadSetFilter.type = Types::ImportReadSetFilter
    ImportReadSetJobItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobId, location_name: "id", traits: {"smithy.api#required" => {}}))
    ImportReadSetJobItem.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#required" => {}}))
    ImportReadSetJobItem.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    ImportReadSetJobItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetImportJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    ImportReadSetJobItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ImportReadSetJobItem.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "completionTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ImportReadSetJobItem.type = Types::ImportReadSetJobItem
    ImportReadSetJobList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImportReadSetJobItem)
    ImportReadSetSourceItem.add_member(:source_files, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFiles, location_name: "sourceFiles", traits: {"smithy.api#required" => {}}))
    ImportReadSetSourceItem.add_member(:source_file_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileType, location_name: "sourceFileType", traits: {"smithy.api#required" => {}}))
    ImportReadSetSourceItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetImportJobItemStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    ImportReadSetSourceItem.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusMessage, location_name: "statusMessage"))
    ImportReadSetSourceItem.add_member(:subject_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectId, location_name: "subjectId", traits: {"smithy.api#required" => {}}))
    ImportReadSetSourceItem.add_member(:sample_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleId, location_name: "sampleId", traits: {"smithy.api#required" => {}}))
    ImportReadSetSourceItem.add_member(:generated_from, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedFrom, location_name: "generatedFrom"))
    ImportReadSetSourceItem.add_member(:reference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceArn, location_name: "referenceArn"))
    ImportReadSetSourceItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetName, location_name: "name"))
    ImportReadSetSourceItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetDescription, location_name: "description"))
    ImportReadSetSourceItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ImportReadSetSourceItem.add_member(:read_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetId, location_name: "readSetId"))
    ImportReadSetSourceItem.type = Types::ImportReadSetSourceItem
    ImportReadSetSourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImportReadSetSourceItem)
    ImportReferenceFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceImportJobStatus, location_name: "status"))
    ImportReferenceFilter.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAfter", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ImportReferenceFilter.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdBefore", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ImportReferenceFilter.type = Types::ImportReferenceFilter
    ImportReferenceJobItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobId, location_name: "id", traits: {"smithy.api#required" => {}}))
    ImportReferenceJobItem.add_member(:reference_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "referenceStoreId", traits: {"smithy.api#required" => {}}))
    ImportReferenceJobItem.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    ImportReferenceJobItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceImportJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    ImportReferenceJobItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ImportReferenceJobItem.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "completionTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ImportReferenceJobItem.type = Types::ImportReferenceJobItem
    ImportReferenceJobList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImportReferenceJobItem)
    ImportReferenceSourceItem.add_member(:source_file, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, location_name: "sourceFile"))
    ImportReferenceSourceItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceImportJobItemStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    ImportReferenceSourceItem.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusMessage, location_name: "statusMessage"))
    ImportReferenceSourceItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceName, location_name: "name"))
    ImportReferenceSourceItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceDescription, location_name: "description"))
    ImportReferenceSourceItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ImportReferenceSourceItem.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceId, location_name: "referenceId"))
    ImportReferenceSourceItem.type = Types::ImportReferenceSourceItem
    ImportReferenceSourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImportReferenceSourceItem)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListAnnotationImportJobsFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "status"))
    ListAnnotationImportJobsFilter.add_member(:store_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "storeName"))
    ListAnnotationImportJobsFilter.type = Types::ListAnnotationImportJobsFilter
    ListAnnotationImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAnnotationImportJobsRequest.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IdList, location_name: "ids", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}}))
    ListAnnotationImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListAnnotationImportJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAnnotationImportJobsFilter, location_name: "filter"))
    ListAnnotationImportJobsRequest.type = Types::ListAnnotationImportJobsRequest
    ListAnnotationImportJobsResponse.add_member(:annotation_import_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationImportJobItems, location_name: "annotationImportJobs"))
    ListAnnotationImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListAnnotationImportJobsResponse.type = Types::ListAnnotationImportJobsResponse
    ListAnnotationStoreVersionsFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionStatus, location_name: "status"))
    ListAnnotationStoreVersionsFilter.type = Types::ListAnnotationStoreVersionsFilter
    ListAnnotationStoreVersionsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAnnotationStoreVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAnnotationStoreVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListAnnotationStoreVersionsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAnnotationStoreVersionsFilter, location_name: "filter"))
    ListAnnotationStoreVersionsRequest.type = Types::ListAnnotationStoreVersionsRequest
    ListAnnotationStoreVersionsResponse.add_member(:annotation_store_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationStoreVersionItems, location_name: "annotationStoreVersions"))
    ListAnnotationStoreVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListAnnotationStoreVersionsResponse.type = Types::ListAnnotationStoreVersionsResponse
    ListAnnotationStoresFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreStatus, location_name: "status"))
    ListAnnotationStoresFilter.type = Types::ListAnnotationStoresFilter
    ListAnnotationStoresRequest.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IdList, location_name: "ids", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}}))
    ListAnnotationStoresRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListAnnotationStoresRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListAnnotationStoresRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAnnotationStoresFilter, location_name: "filter"))
    ListAnnotationStoresRequest.type = Types::ListAnnotationStoresRequest
    ListAnnotationStoresResponse.add_member(:annotation_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationStoreItems, location_name: "annotationStores"))
    ListAnnotationStoresResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListAnnotationStoresResponse.type = Types::ListAnnotationStoresResponse
    ListMultipartReadSetUploadsRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMultipartReadSetUploadsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListMultipartReadSetUploadsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMultipartReadSetUploadsRequest.type = Types::ListMultipartReadSetUploadsRequest
    ListMultipartReadSetUploadsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListMultipartReadSetUploadsResponse.add_member(:uploads, ::Smithy::Schema::Shapes::MemberShape.new(target: MultipartReadSetUploadList, location_name: "uploads"))
    ListMultipartReadSetUploadsResponse.type = Types::ListMultipartReadSetUploadsResponse
    ListReadSetActivationJobsRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReadSetActivationJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReadSetActivationJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReadSetActivationJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivateReadSetFilter, location_name: "filter"))
    ListReadSetActivationJobsRequest.type = Types::ListReadSetActivationJobsRequest
    ListReadSetActivationJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListReadSetActivationJobsResponse.add_member(:activation_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivateReadSetJobList, location_name: "activationJobs"))
    ListReadSetActivationJobsResponse.type = Types::ListReadSetActivationJobsResponse
    ListReadSetExportJobsRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReadSetExportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReadSetExportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReadSetExportJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportReadSetFilter, location_name: "filter"))
    ListReadSetExportJobsRequest.type = Types::ListReadSetExportJobsRequest
    ListReadSetExportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListReadSetExportJobsResponse.add_member(:export_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportReadSetJobDetailList, location_name: "exportJobs"))
    ListReadSetExportJobsResponse.type = Types::ListReadSetExportJobsResponse
    ListReadSetImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReadSetImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReadSetImportJobsRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReadSetImportJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportReadSetFilter, location_name: "filter"))
    ListReadSetImportJobsRequest.type = Types::ListReadSetImportJobsRequest
    ListReadSetImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListReadSetImportJobsResponse.add_member(:import_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportReadSetJobList, location_name: "importJobs"))
    ListReadSetImportJobsResponse.type = Types::ListReadSetImportJobsResponse
    ListReadSetUploadPartsRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReadSetUploadPartsRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, location_name: "uploadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReadSetUploadPartsRequest.add_member(:part_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetPartSource, location_name: "partSource", traits: {"smithy.api#required" => {}}))
    ListReadSetUploadPartsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReadSetUploadPartsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReadSetUploadPartsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetUploadPartListFilter, location_name: "filter"))
    ListReadSetUploadPartsRequest.type = Types::ListReadSetUploadPartsRequest
    ListReadSetUploadPartsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListReadSetUploadPartsResponse.add_member(:parts, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetUploadPartList, location_name: "parts"))
    ListReadSetUploadPartsResponse.type = Types::ListReadSetUploadPartsResponse
    ListReadSetsRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReadSetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReadSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReadSetsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetFilter, location_name: "filter"))
    ListReadSetsRequest.type = Types::ListReadSetsRequest
    ListReadSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListReadSetsResponse.add_member(:read_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetList, location_name: "readSets", traits: {"smithy.api#required" => {}}))
    ListReadSetsResponse.type = Types::ListReadSetsResponse
    ListReferenceImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReferenceImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReferenceImportJobsRequest.add_member(:reference_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "referenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReferenceImportJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportReferenceFilter, location_name: "filter"))
    ListReferenceImportJobsRequest.type = Types::ListReferenceImportJobsRequest
    ListReferenceImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListReferenceImportJobsResponse.add_member(:import_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportReferenceJobList, location_name: "importJobs"))
    ListReferenceImportJobsResponse.type = Types::ListReferenceImportJobsResponse
    ListReferenceStoresRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReferenceStoresRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReferenceStoresRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreFilter, location_name: "filter"))
    ListReferenceStoresRequest.type = Types::ListReferenceStoresRequest
    ListReferenceStoresResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListReferenceStoresResponse.add_member(:reference_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreDetailList, location_name: "referenceStores", traits: {"smithy.api#required" => {}}))
    ListReferenceStoresResponse.type = Types::ListReferenceStoresResponse
    ListReferencesRequest.add_member(:reference_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "referenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListReferencesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListReferencesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReferencesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceFilter, location_name: "filter"))
    ListReferencesRequest.type = Types::ListReferencesRequest
    ListReferencesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListReferencesResponse.add_member(:references, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceList, location_name: "references", traits: {"smithy.api#required" => {}}))
    ListReferencesResponse.type = Types::ListReferencesResponse
    ListRunCachesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRunCachesRequest.add_member(:starting_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ListToken, location_name: "startingToken", traits: {"smithy.api#httpQuery" => "startingToken"}))
    ListRunCachesRequest.type = Types::ListRunCachesRequest
    ListRunCachesResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheList, location_name: "items"))
    ListRunCachesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ListToken, location_name: "nextToken"))
    ListRunCachesResponse.type = Types::ListRunCachesResponse
    ListRunGroupsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupName, location_name: "name", traits: {"smithy.api#httpQuery" => "name"}))
    ListRunGroupsRequest.add_member(:starting_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupListToken, location_name: "startingToken", traits: {"smithy.api#httpQuery" => "startingToken"}))
    ListRunGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRunGroupsRequest.type = Types::ListRunGroupsRequest
    ListRunGroupsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupList, location_name: "items"))
    ListRunGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupListToken, location_name: "nextToken"))
    ListRunGroupsResponse.type = Types::ListRunGroupsResponse
    ListRunTasksRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRunTasksRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, location_name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListRunTasksRequest.add_member(:starting_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskListToken, location_name: "startingToken", traits: {"smithy.api#httpQuery" => "startingToken"}))
    ListRunTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRunTasksRequest.type = Types::ListRunTasksRequest
    ListRunTasksResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, location_name: "items"))
    ListRunTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskListToken, location_name: "nextToken"))
    ListRunTasksResponse.type = Types::ListRunTasksResponse
    ListRunsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RunName, location_name: "name", traits: {"smithy.api#httpQuery" => "name"}))
    ListRunsRequest.add_member(:run_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupId, location_name: "runGroupId", traits: {"smithy.api#httpQuery" => "runGroupId"}))
    ListRunsRequest.add_member(:starting_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RunListToken, location_name: "startingToken", traits: {"smithy.api#httpQuery" => "startingToken"}))
    ListRunsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListRunsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RunStatus, location_name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListRunsRequest.type = Types::ListRunsRequest
    ListRunsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: RunList, location_name: "items"))
    ListRunsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RunListToken, location_name: "nextToken"))
    ListRunsResponse.type = Types::ListRunsResponse
    ListSequenceStoresRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSequenceStoresRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSequenceStoresRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreFilter, location_name: "filter"))
    ListSequenceStoresRequest.type = Types::ListSequenceStoresRequest
    ListSequenceStoresResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListSequenceStoresResponse.add_member(:sequence_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreDetailList, location_name: "sequenceStores", traits: {"smithy.api#required" => {}}))
    ListSequenceStoresResponse.type = Types::ListSequenceStoresResponse
    ListSharesRequest.add_member(:resource_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceOwner, location_name: "resourceOwner", traits: {"smithy.api#required" => {}}))
    ListSharesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, location_name: "filter"))
    ListSharesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSharesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSharesRequest.type = Types::ListSharesRequest
    ListSharesResponse.add_member(:shares, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareDetailsList, location_name: "shares", traits: {"smithy.api#required" => {}}))
    ListSharesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListSharesResponse.type = Types::ListSharesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListVariantImportJobsFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "status"))
    ListVariantImportJobsFilter.add_member(:store_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "storeName"))
    ListVariantImportJobsFilter.type = Types::ListVariantImportJobsFilter
    ListVariantImportJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListVariantImportJobsRequest.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IdList, location_name: "ids", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}}))
    ListVariantImportJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListVariantImportJobsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListVariantImportJobsFilter, location_name: "filter"))
    ListVariantImportJobsRequest.type = Types::ListVariantImportJobsRequest
    ListVariantImportJobsResponse.add_member(:variant_import_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: VariantImportJobItems, location_name: "variantImportJobs"))
    ListVariantImportJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListVariantImportJobsResponse.type = Types::ListVariantImportJobsResponse
    ListVariantStoresFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreStatus, location_name: "status"))
    ListVariantStoresFilter.type = Types::ListVariantStoresFilter
    ListVariantStoresRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListVariantStoresRequest.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: IdList, location_name: "ids", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}}))
    ListVariantStoresRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListVariantStoresRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListVariantStoresFilter, location_name: "filter"))
    ListVariantStoresRequest.type = Types::ListVariantStoresRequest
    ListVariantStoresResponse.add_member(:variant_stores, ::Smithy::Schema::Shapes::MemberShape.new(target: VariantStoreItems, location_name: "variantStores"))
    ListVariantStoresResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nextToken"))
    ListVariantStoresResponse.type = Types::ListVariantStoresResponse
    ListWorkflowVersionsRequest.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "workflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    ListWorkflowVersionsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, location_name: "type", traits: {"smithy.api#httpQuery" => "type"}))
    ListWorkflowVersionsRequest.add_member(:workflow_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowOwnerId, location_name: "workflowOwnerId", traits: {"smithy.api#httpQuery" => "workflowOwnerId"}))
    ListWorkflowVersionsRequest.add_member(:starting_token, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionListToken, location_name: "startingToken", traits: {"smithy.api#httpQuery" => "startingToken"}))
    ListWorkflowVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkflowVersionsRequest.type = Types::ListWorkflowVersionsRequest
    ListWorkflowVersionsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionList, location_name: "items"))
    ListWorkflowVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionListToken, location_name: "nextToken"))
    ListWorkflowVersionsResponse.type = Types::ListWorkflowVersionsResponse
    ListWorkflowsRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, location_name: "type", traits: {"smithy.api#httpQuery" => "type"}))
    ListWorkflowsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowName, location_name: "name", traits: {"smithy.api#httpQuery" => "name"}))
    ListWorkflowsRequest.add_member(:starting_token, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowListToken, location_name: "startingToken", traits: {"smithy.api#httpQuery" => "startingToken"}))
    ListWorkflowsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkflowsRequest.type = Types::ListWorkflowsRequest
    ListWorkflowsResponse.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowList, location_name: "items"))
    ListWorkflowsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowListToken, location_name: "nextToken"))
    ListWorkflowsResponse.type = Types::ListWorkflowsResponse
    MultipartReadSetUploadList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MultipartReadSetUploadListItem)
    MultipartReadSetUploadListItem.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#required" => {}}))
    MultipartReadSetUploadListItem.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, location_name: "uploadId", traits: {"smithy.api#required" => {}}))
    MultipartReadSetUploadListItem.add_member(:source_file_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileType, location_name: "sourceFileType", traits: {"smithy.api#required" => {}}))
    MultipartReadSetUploadListItem.add_member(:subject_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectId, location_name: "subjectId", traits: {"smithy.api#required" => {}}))
    MultipartReadSetUploadListItem.add_member(:sample_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleId, location_name: "sampleId", traits: {"smithy.api#required" => {}}))
    MultipartReadSetUploadListItem.add_member(:generated_from, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedFrom, location_name: "generatedFrom", traits: {"smithy.api#required" => {}}))
    MultipartReadSetUploadListItem.add_member(:reference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceArn, location_name: "referenceArn", traits: {"smithy.api#required" => {}}))
    MultipartReadSetUploadListItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetName, location_name: "name"))
    MultipartReadSetUploadListItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetDescription, location_name: "description"))
    MultipartReadSetUploadListItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    MultipartReadSetUploadListItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MultipartReadSetUploadListItem.type = Types::MultipartReadSetUploadListItem
    NotSupportedOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    NotSupportedOperationException.type = Types::NotSupportedOperationException
    PropagatedSetLevelTags.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    PutS3AccessPolicyRequest.add_member(:s3_access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointArn, location_name: "s3AccessPointArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutS3AccessPolicyRequest.add_member(:s3_access_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPolicy, location_name: "s3AccessPolicy", traits: {"smithy.api#required" => {}}))
    PutS3AccessPolicyRequest.type = Types::PutS3AccessPolicyRequest
    PutS3AccessPolicyResponse.add_member(:s3_access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointArn, location_name: "s3AccessPointArn"))
    PutS3AccessPolicyResponse.add_member(:store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreId, location_name: "storeId"))
    PutS3AccessPolicyResponse.add_member(:store_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreType, location_name: "storeType"))
    PutS3AccessPolicyResponse.type = Types::PutS3AccessPolicyResponse
    RangeNotSatisfiableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    RangeNotSatisfiableException.type = Types::RangeNotSatisfiableException
    ReadOptions.add_member(:sep, ::Smithy::Schema::Shapes::MemberShape.new(target: Separator, location_name: "sep"))
    ReadOptions.add_member(:encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: Encoding, location_name: "encoding"))
    ReadOptions.add_member(:quote, ::Smithy::Schema::Shapes::MemberShape.new(target: Quote, location_name: "quote"))
    ReadOptions.add_member(:quote_all, ::Smithy::Schema::Shapes::MemberShape.new(target: QuoteAll, location_name: "quoteAll", traits: {"smithy.api#default" => false}))
    ReadOptions.add_member(:escape, ::Smithy::Schema::Shapes::MemberShape.new(target: EscapeChar, location_name: "escape"))
    ReadOptions.add_member(:escape_quotes, ::Smithy::Schema::Shapes::MemberShape.new(target: EscapeQuotes, location_name: "escapeQuotes", traits: {"smithy.api#default" => false}))
    ReadOptions.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: CommentChar, location_name: "comment"))
    ReadOptions.add_member(:header, ::Smithy::Schema::Shapes::MemberShape.new(target: Header, location_name: "header", traits: {"smithy.api#default" => false}))
    ReadOptions.add_member(:line_sep, ::Smithy::Schema::Shapes::MemberShape.new(target: LineSep, location_name: "lineSep"))
    ReadOptions.type = Types::ReadOptions
    ReadSetBatchError.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetId, location_name: "id", traits: {"smithy.api#required" => {}}))
    ReadSetBatchError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "code", traits: {"smithy.api#required" => {}}))
    ReadSetBatchError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ReadSetBatchError.type = Types::ReadSetBatchError
    ReadSetBatchErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetBatchError)
    ReadSetFiles.add_member(:source1, ::Smithy::Schema::Shapes::MemberShape.new(target: FileInformation, location_name: "source1"))
    ReadSetFiles.add_member(:source2, ::Smithy::Schema::Shapes::MemberShape.new(target: FileInformation, location_name: "source2"))
    ReadSetFiles.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: FileInformation, location_name: "index"))
    ReadSetFiles.type = Types::ReadSetFiles
    ReadSetFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetName, location_name: "name"))
    ReadSetFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetStatus, location_name: "status"))
    ReadSetFilter.add_member(:reference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceArnFilter, location_name: "referenceArn"))
    ReadSetFilter.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAfter", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ReadSetFilter.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdBefore", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ReadSetFilter.add_member(:sample_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleId, location_name: "sampleId"))
    ReadSetFilter.add_member(:subject_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectId, location_name: "subjectId"))
    ReadSetFilter.add_member(:generated_from, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedFrom, location_name: "generatedFrom"))
    ReadSetFilter.add_member(:creation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationType, location_name: "creationType"))
    ReadSetFilter.type = Types::ReadSetFilter
    ReadSetIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetId)
    ReadSetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetListItem)
    ReadSetListItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetId, location_name: "id", traits: {"smithy.api#required" => {}}))
    ReadSetListItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    ReadSetListItem.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#required" => {}}))
    ReadSetListItem.add_member(:subject_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectId, location_name: "subjectId"))
    ReadSetListItem.add_member(:sample_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleId, location_name: "sampleId"))
    ReadSetListItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    ReadSetListItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetName, location_name: "name"))
    ReadSetListItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetDescription, location_name: "description"))
    ReadSetListItem.add_member(:reference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceArn, location_name: "referenceArn"))
    ReadSetListItem.add_member(:file_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileType, location_name: "fileType", traits: {"smithy.api#required" => {}}))
    ReadSetListItem.add_member(:sequence_information, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceInformation, location_name: "sequenceInformation"))
    ReadSetListItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ReadSetListItem.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetStatusMessage, location_name: "statusMessage"))
    ReadSetListItem.add_member(:creation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationType, location_name: "creationType"))
    ReadSetListItem.add_member(:etag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, location_name: "etag"))
    ReadSetListItem.type = Types::ReadSetListItem
    ReadSetS3Access.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, location_name: "s3Uri"))
    ReadSetS3Access.type = Types::ReadSetS3Access
    ReadSetUploadPartList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetUploadPartListItem)
    ReadSetUploadPartListFilter.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAfter", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ReadSetUploadPartListFilter.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdBefore", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ReadSetUploadPartListFilter.type = Types::ReadSetUploadPartListFilter
    ReadSetUploadPartListItem.add_member(:part_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "partNumber", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}, "smithy.api#required" => {}}))
    ReadSetUploadPartListItem.add_member(:part_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "partSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 5368709120}, "smithy.api#required" => {}}))
    ReadSetUploadPartListItem.add_member(:part_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetPartSource, location_name: "partSource", traits: {"smithy.api#required" => {}}))
    ReadSetUploadPartListItem.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "checksum", traits: {"smithy.api#required" => {}}))
    ReadSetUploadPartListItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ReadSetUploadPartListItem.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdatedTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ReadSetUploadPartListItem.type = Types::ReadSetUploadPartListItem
    ReferenceFiles.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: FileInformation, location_name: "source"))
    ReferenceFiles.add_member(:index, ::Smithy::Schema::Shapes::MemberShape.new(target: FileInformation, location_name: "index"))
    ReferenceFiles.type = Types::ReferenceFiles
    ReferenceFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceName, location_name: "name"))
    ReferenceFilter.add_member(:md5, ::Smithy::Schema::Shapes::MemberShape.new(target: Md5, location_name: "md5"))
    ReferenceFilter.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAfter", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ReferenceFilter.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdBefore", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ReferenceFilter.type = Types::ReferenceFilter
    ReferenceItem.add_member(:reference_arn, Types::ReferenceItem::ReferenceArn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceArn, location_name: "referenceArn"))
    ReferenceItem.add_member(:unknown, Types::ReferenceItem::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ReferenceItem.type = Types::ReferenceItem
    ReferenceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceListItem)
    ReferenceListItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    ReferenceListItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    ReferenceListItem.add_member(:reference_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "referenceStoreId", traits: {"smithy.api#required" => {}}))
    ReferenceListItem.add_member(:md5, ::Smithy::Schema::Shapes::MemberShape.new(target: Md5, location_name: "md5", traits: {"smithy.api#required" => {}}))
    ReferenceListItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStatus, location_name: "status"))
    ReferenceListItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceName, location_name: "name"))
    ReferenceListItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceDescription, location_name: "description"))
    ReferenceListItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ReferenceListItem.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "updateTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ReferenceListItem.type = Types::ReferenceListItem
    ReferenceStoreDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    ReferenceStoreDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "id", traits: {"smithy.api#required" => {}}))
    ReferenceStoreDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreName, location_name: "name"))
    ReferenceStoreDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreDescription, location_name: "description"))
    ReferenceStoreDetail.add_member(:sse_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfig, location_name: "sseConfig"))
    ReferenceStoreDetail.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ReferenceStoreDetail.type = Types::ReferenceStoreDetail
    ReferenceStoreDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreDetail)
    ReferenceStoreFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreName, location_name: "name"))
    ReferenceStoreFilter.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAfter", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ReferenceStoreFilter.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdBefore", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ReferenceStoreFilter.type = Types::ReferenceStoreFilter
    RegistryMapping.add_member(:upstream_registry_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, location_name: "upstreamRegistryUrl"))
    RegistryMapping.add_member(:ecr_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrRepositoryPrefix, location_name: "ecrRepositoryPrefix"))
    RegistryMapping.add_member(:upstream_repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: UpstreamRepositoryPrefix, location_name: "upstreamRepositoryPrefix"))
    RegistryMapping.add_member(:ecr_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, location_name: "ecrAccountId"))
    RegistryMapping.type = Types::RegistryMapping
    RegistryMappingsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryMapping)
    RequestTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    RequestTimeoutException.type = Types::RequestTimeoutException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RunCacheList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheListItem)
    RunCacheListItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheArn, location_name: "arn"))
    RunCacheListItem.add_member(:cache_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehavior, location_name: "cacheBehavior"))
    RunCacheListItem.add_member(:cache_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3UriForBucketOrObject, location_name: "cacheS3Uri"))
    RunCacheListItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheTimestamp, location_name: "creationTime"))
    RunCacheListItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheId, location_name: "id"))
    RunCacheListItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserCustomName, location_name: "name"))
    RunCacheListItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheStatus, location_name: "status"))
    RunCacheListItem.type = Types::RunCacheListItem
    RunExportList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RunExport)
    RunGroupList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupListItem)
    RunGroupListItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupArn, location_name: "arn"))
    RunGroupListItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupId, location_name: "id"))
    RunGroupListItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupName, location_name: "name"))
    RunGroupListItem.add_member(:max_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxCpus", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}}))
    RunGroupListItem.add_member(:max_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxRuns", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}}))
    RunGroupListItem.add_member(:max_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxDuration", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}}))
    RunGroupListItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupTimestamp, location_name: "creationTime"))
    RunGroupListItem.add_member(:max_gpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxGpus", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}}))
    RunGroupListItem.type = Types::RunGroupListItem
    RunList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RunListItem)
    RunListItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RunArn, location_name: "arn"))
    RunListItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunId, location_name: "id"))
    RunListItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RunStatus, location_name: "status"))
    RunListItem.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "workflowId"))
    RunListItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RunName, location_name: "name"))
    RunListItem.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "priority", traits: {"smithy.api#range" => {"min" => 0, "max" => 100000}}))
    RunListItem.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageCapacity", traits: {"smithy.api#range" => {"min" => 0, "max" => 100000}}))
    RunListItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: RunTimestamp, location_name: "creationTime"))
    RunListItem.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: RunTimestamp, location_name: "startTime"))
    RunListItem.add_member(:stop_time, ::Smithy::Schema::Shapes::MemberShape.new(target: RunTimestamp, location_name: "stopTime"))
    RunListItem.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, location_name: "storageType"))
    RunListItem.add_member(:workflow_version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionName, location_name: "workflowVersionName"))
    RunListItem.type = Types::RunListItem
    RunLogLocation.add_member(:engine_log_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineLogStream, location_name: "engineLogStream"))
    RunLogLocation.add_member(:run_log_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: RunLogStream, location_name: "runLogStream"))
    RunLogLocation.type = Types::RunLogLocation
    RunResourceDigests.key = ::Smithy::Schema::Shapes::MemberShape.new(target: RunResourceDigestKey)
    RunResourceDigests.value = ::Smithy::Schema::Shapes::MemberShape.new(target: RunResourceDigest)
    S3AccessConfig.add_member(:access_log_location, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogLocation, location_name: "accessLogLocation"))
    S3AccessConfig.type = Types::S3AccessConfig
    Schema.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaItem)
    SchemaItem.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#pattern" => "^[a-z0-9_]{1,255}$"})
    SchemaItem.value = ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaValueType)
    SequenceInformation.add_member(:total_read_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "totalReadCount"))
    SequenceInformation.add_member(:total_base_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "totalBaseCount"))
    SequenceInformation.add_member(:generated_from, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedFrom, location_name: "generatedFrom"))
    SequenceInformation.add_member(:alignment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "alignment"))
    SequenceInformation.type = Types::SequenceInformation
    SequenceStoreDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    SequenceStoreDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "id", traits: {"smithy.api#required" => {}}))
    SequenceStoreDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreName, location_name: "name"))
    SequenceStoreDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreDescription, location_name: "description"))
    SequenceStoreDetail.add_member(:sse_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfig, location_name: "sseConfig"))
    SequenceStoreDetail.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    SequenceStoreDetail.add_member(:fallback_location, ::Smithy::Schema::Shapes::MemberShape.new(target: FallbackLocation, location_name: "fallbackLocation"))
    SequenceStoreDetail.add_member(:e_tag_algorithm_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ETagAlgorithmFamily, location_name: "eTagAlgorithmFamily"))
    SequenceStoreDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreStatus, location_name: "status"))
    SequenceStoreDetail.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreStatusMessage, location_name: "statusMessage"))
    SequenceStoreDetail.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "updateTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    SequenceStoreDetail.type = Types::SequenceStoreDetail
    SequenceStoreDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreDetail)
    SequenceStoreFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreName, location_name: "name"))
    SequenceStoreFilter.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAfter", traits: {"smithy.api#timestampFormat" => "date-time"}))
    SequenceStoreFilter.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdBefore", traits: {"smithy.api#timestampFormat" => "date-time"}))
    SequenceStoreFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreStatus, location_name: "status"))
    SequenceStoreFilter.add_member(:updated_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "updatedAfter", traits: {"smithy.api#timestampFormat" => "date-time"}))
    SequenceStoreFilter.add_member(:updated_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "updatedBefore", traits: {"smithy.api#timestampFormat" => "date-time"}))
    SequenceStoreFilter.type = Types::SequenceStoreFilter
    SequenceStoreS3Access.add_member(:s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, location_name: "s3Uri"))
    SequenceStoreS3Access.add_member(:s3_access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointArn, location_name: "s3AccessPointArn"))
    SequenceStoreS3Access.add_member(:access_log_location, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessLogLocation, location_name: "accessLogLocation"))
    SequenceStoreS3Access.type = Types::SequenceStoreS3Access
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ShareDetails.add_member(:share_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "shareId"))
    ShareDetails.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn"))
    ShareDetails.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId"))
    ShareDetails.add_member(:principal_subscriber, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "principalSubscriber"))
    ShareDetails.add_member(:owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "ownerId"))
    ShareDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus, location_name: "status"))
    ShareDetails.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, location_name: "statusMessage"))
    ShareDetails.add_member(:share_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ShareName, location_name: "shareName"))
    ShareDetails.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime"))
    ShareDetails.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime"))
    ShareDetails.type = Types::ShareDetails
    ShareDetailsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ShareDetails)
    SourceFiles.add_member(:source1, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, location_name: "source1", traits: {"smithy.api#required" => {}}))
    SourceFiles.add_member(:source2, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, location_name: "source2"))
    SourceFiles.type = Types::SourceFiles
    SourceReference.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceReferenceType, location_name: "type", traits: {"smithy.api#required" => {}}))
    SourceReference.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceReferenceValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    SourceReference.type = Types::SourceReference
    SseConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, location_name: "type", traits: {"smithy.api#required" => {}}))
    SseConfig.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "keyArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "arn:([^:\n]*):([^:\n]*):([^:\n]*):([0-9]{12}):([^:\n]*)"}))
    SseConfig.type = Types::SseConfig
    StartAnnotationImportRequest.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreName, location_name: "destinationName", traits: {"smithy.api#required" => {}}))
    StartAnnotationImportRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    StartAnnotationImportRequest.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationImportItemSources, location_name: "items", traits: {"smithy.api#required" => {}}))
    StartAnnotationImportRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, location_name: "versionName"))
    StartAnnotationImportRequest.add_member(:format_options, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatOptions, location_name: "formatOptions"))
    StartAnnotationImportRequest.add_member(:run_left_normalization, ::Smithy::Schema::Shapes::MemberShape.new(target: RunLeftNormalization, location_name: "runLeftNormalization", traits: {"smithy.api#default" => false}))
    StartAnnotationImportRequest.add_member(:annotation_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationFieldMap, location_name: "annotationFields"))
    StartAnnotationImportRequest.type = Types::StartAnnotationImportRequest
    StartAnnotationImportResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "jobId", traits: {"smithy.api#required" => {}}))
    StartAnnotationImportResponse.type = Types::StartAnnotationImportResponse
    StartReadSetActivationJobRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartReadSetActivationJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    StartReadSetActivationJobRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: StartReadSetActivationJobSourceList, location_name: "sources", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#required" => {}}))
    StartReadSetActivationJobRequest.type = Types::StartReadSetActivationJobRequest
    StartReadSetActivationJobResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivationJobId, location_name: "id", traits: {"smithy.api#required" => {}}))
    StartReadSetActivationJobResponse.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#required" => {}}))
    StartReadSetActivationJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetActivationJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    StartReadSetActivationJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartReadSetActivationJobResponse.type = Types::StartReadSetActivationJobResponse
    StartReadSetActivationJobSourceItem.add_member(:read_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetId, location_name: "readSetId", traits: {"smithy.api#required" => {}}))
    StartReadSetActivationJobSourceItem.type = Types::StartReadSetActivationJobSourceItem
    StartReadSetActivationJobSourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StartReadSetActivationJobSourceItem)
    StartReadSetExportJobRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartReadSetExportJobRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Destination, location_name: "destination", traits: {"smithy.api#required" => {}}))
    StartReadSetExportJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    StartReadSetExportJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    StartReadSetExportJobRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportReadSetList, location_name: "sources", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    StartReadSetExportJobRequest.type = Types::StartReadSetExportJobRequest
    StartReadSetExportJobResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportJobId, location_name: "id", traits: {"smithy.api#required" => {}}))
    StartReadSetExportJobResponse.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#required" => {}}))
    StartReadSetExportJobResponse.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Destination, location_name: "destination", traits: {"smithy.api#required" => {}}))
    StartReadSetExportJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetExportJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    StartReadSetExportJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartReadSetExportJobResponse.type = Types::StartReadSetExportJobResponse
    StartReadSetImportJobRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartReadSetImportJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    StartReadSetImportJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    StartReadSetImportJobRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: StartReadSetImportJobSourceList, location_name: "sources", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    StartReadSetImportJobRequest.type = Types::StartReadSetImportJobRequest
    StartReadSetImportJobResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobId, location_name: "id", traits: {"smithy.api#required" => {}}))
    StartReadSetImportJobResponse.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#required" => {}}))
    StartReadSetImportJobResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    StartReadSetImportJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetImportJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    StartReadSetImportJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartReadSetImportJobResponse.type = Types::StartReadSetImportJobResponse
    StartReadSetImportJobSourceItem.add_member(:source_files, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceFiles, location_name: "sourceFiles", traits: {"smithy.api#required" => {}}))
    StartReadSetImportJobSourceItem.add_member(:source_file_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileType, location_name: "sourceFileType", traits: {"smithy.api#required" => {}}))
    StartReadSetImportJobSourceItem.add_member(:subject_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubjectId, location_name: "subjectId", traits: {"smithy.api#required" => {}}))
    StartReadSetImportJobSourceItem.add_member(:sample_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SampleId, location_name: "sampleId", traits: {"smithy.api#required" => {}}))
    StartReadSetImportJobSourceItem.add_member(:generated_from, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedFrom, location_name: "generatedFrom"))
    StartReadSetImportJobSourceItem.add_member(:reference_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceArn, location_name: "referenceArn"))
    StartReadSetImportJobSourceItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetName, location_name: "name"))
    StartReadSetImportJobSourceItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetDescription, location_name: "description"))
    StartReadSetImportJobSourceItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    StartReadSetImportJobSourceItem.type = Types::StartReadSetImportJobSourceItem
    StartReadSetImportJobSourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StartReadSetImportJobSourceItem)
    StartReferenceImportJobRequest.add_member(:reference_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "referenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartReferenceImportJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    StartReferenceImportJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    StartReferenceImportJobRequest.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: StartReferenceImportJobSourceList, location_name: "sources", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    StartReferenceImportJobRequest.type = Types::StartReferenceImportJobRequest
    StartReferenceImportJobResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportJobId, location_name: "id", traits: {"smithy.api#required" => {}}))
    StartReferenceImportJobResponse.add_member(:reference_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceStoreId, location_name: "referenceStoreId", traits: {"smithy.api#required" => {}}))
    StartReferenceImportJobResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    StartReferenceImportJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceImportJobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    StartReferenceImportJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    StartReferenceImportJobResponse.type = Types::StartReferenceImportJobResponse
    StartReferenceImportJobSourceItem.add_member(:source_file, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, location_name: "sourceFile", traits: {"smithy.api#required" => {}}))
    StartReferenceImportJobSourceItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    StartReferenceImportJobSourceItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceDescription, location_name: "description"))
    StartReferenceImportJobSourceItem.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    StartReferenceImportJobSourceItem.type = Types::StartReferenceImportJobSourceItem
    StartReferenceImportJobSourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StartReferenceImportJobSourceItem)
    StartRunRequest.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "workflowId"))
    StartRunRequest.add_member(:workflow_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, location_name: "workflowType"))
    StartRunRequest.add_member(:run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunId, location_name: "runId"))
    StartRunRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RunRoleArn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    StartRunRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RunName, location_name: "name"))
    StartRunRequest.add_member(:cache_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NumericIdInArn, location_name: "cacheId"))
    StartRunRequest.add_member(:cache_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehavior, location_name: "cacheBehavior"))
    StartRunRequest.add_member(:run_group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupId, location_name: "runGroupId"))
    StartRunRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "priority", traits: {"smithy.api#range" => {"min" => 0, "max" => 100000}}))
    StartRunRequest.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: RunParameters, location_name: "parameters"))
    StartRunRequest.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageCapacity", traits: {"smithy.api#range" => {"min" => 0, "max" => 100000}}))
    StartRunRequest.add_member(:output_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: RunOutputUri, location_name: "outputUri", traits: {"smithy.api#required" => {}}))
    StartRunRequest.add_member(:log_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RunLogLevel, location_name: "logLevel"))
    StartRunRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    StartRunRequest.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunRequestId, location_name: "requestId", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartRunRequest.add_member(:retention_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RunRetentionMode, location_name: "retentionMode"))
    StartRunRequest.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, location_name: "storageType"))
    StartRunRequest.add_member(:workflow_owner_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowOwnerId, location_name: "workflowOwnerId"))
    StartRunRequest.add_member(:workflow_version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionName, location_name: "workflowVersionName"))
    StartRunRequest.type = Types::StartRunRequest
    StartRunResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RunArn, location_name: "arn"))
    StartRunResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunId, location_name: "id"))
    StartRunResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RunStatus, location_name: "status"))
    StartRunResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    StartRunResponse.add_member(:uuid, ::Smithy::Schema::Shapes::MemberShape.new(target: RunUuid, location_name: "uuid"))
    StartRunResponse.add_member(:run_output_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: RunOutputUri, location_name: "runOutputUri"))
    StartRunResponse.type = Types::StartRunResponse
    StartVariantImportRequest.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreName, location_name: "destinationName", traits: {"smithy.api#required" => {}}))
    StartVariantImportRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    StartVariantImportRequest.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: VariantImportItemSources, location_name: "items", traits: {"smithy.api#required" => {}}))
    StartVariantImportRequest.add_member(:run_left_normalization, ::Smithy::Schema::Shapes::MemberShape.new(target: RunLeftNormalization, location_name: "runLeftNormalization", traits: {"smithy.api#default" => false}))
    StartVariantImportRequest.add_member(:annotation_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationFieldMap, location_name: "annotationFields"))
    StartVariantImportRequest.type = Types::StartVariantImportRequest
    StartVariantImportResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "jobId", traits: {"smithy.api#required" => {}}))
    StartVariantImportResponse.type = Types::StartVariantImportResponse
    StatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ShareStatus)
    StoreOptions.add_member(:tsv_store_options, Types::StoreOptions::TsvStoreOptions, ::Smithy::Schema::Shapes::MemberShape.new(target: TsvStoreOptions, location_name: "tsvStoreOptions"))
    StoreOptions.add_member(:unknown, Types::StoreOptions::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    StoreOptions.type = Types::StoreOptions
    StoreType.add_member(:sequence_store, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SEQUENCE_STORE", traits: {"smithy.api#enumValue" => "SEQUENCE_STORE"}))
    StoreType.add_member(:reference_store, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REFERENCE_STORE", traits: {"smithy.api#enumValue" => "REFERENCE_STORE"}))
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TaskList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskListItem)
    TaskListItem.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskId, location_name: "taskId"))
    TaskListItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, location_name: "status"))
    TaskListItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskName, location_name: "name"))
    TaskListItem.add_member(:cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "cpus", traits: {"smithy.api#range" => {"min" => 1}}))
    TaskListItem.add_member(:cache_hit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "cacheHit"))
    TaskListItem.add_member(:cache_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3UriForBucketOrObject, location_name: "cacheS3Uri"))
    TaskListItem.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "memory", traits: {"smithy.api#range" => {"min" => 1}}))
    TaskListItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskTimestamp, location_name: "creationTime"))
    TaskListItem.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskTimestamp, location_name: "startTime"))
    TaskListItem.add_member(:stop_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskTimestamp, location_name: "stopTime"))
    TaskListItem.add_member(:gpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "gpus", traits: {"smithy.api#range" => {"min" => 0}}))
    TaskListItem.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskInstanceType, location_name: "instanceType"))
    TaskListItem.type = Types::TaskListItem
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TsvOptions.add_member(:read_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadOptions, location_name: "readOptions"))
    TsvOptions.type = Types::TsvOptions
    TsvStoreOptions.add_member(:annotation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationType, location_name: "annotationType"))
    TsvStoreOptions.add_member(:format_to_header, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatToHeader, location_name: "formatToHeader"))
    TsvStoreOptions.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: Schema, location_name: "schema", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}}))
    TsvStoreOptions.type = Types::TsvStoreOptions
    TsvVersionOptions.add_member(:annotation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationType, location_name: "annotationType"))
    TsvVersionOptions.add_member(:format_to_header, ::Smithy::Schema::Shapes::MemberShape.new(target: FormatToHeader, location_name: "formatToHeader"))
    TsvVersionOptions.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: Schema, location_name: "schema", traits: {"smithy.api#length" => {"min" => 1, "max" => 5000}}))
    TsvVersionOptions.type = Types::TsvVersionOptions
    TypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ShareResourceType)
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAnnotationStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAnnotationStoreRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    UpdateAnnotationStoreRequest.type = Types::UpdateAnnotationStoreRequest
    UpdateAnnotationStoreResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    UpdateAnnotationStoreResponse.add_member(:reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceItem, location_name: "reference", traits: {"smithy.api#required" => {}}))
    UpdateAnnotationStoreResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    UpdateAnnotationStoreResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    UpdateAnnotationStoreResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description", traits: {"smithy.api#required" => {}}))
    UpdateAnnotationStoreResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    UpdateAnnotationStoreResponse.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    UpdateAnnotationStoreResponse.add_member(:store_options, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreOptions, location_name: "storeOptions"))
    UpdateAnnotationStoreResponse.add_member(:store_format, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreFormat, location_name: "storeFormat"))
    UpdateAnnotationStoreResponse.type = Types::UpdateAnnotationStoreResponse
    UpdateAnnotationStoreVersionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "versionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    UpdateAnnotationStoreVersionRequest.type = Types::UpdateAnnotationStoreVersionRequest
    UpdateAnnotationStoreVersionResponse.add_member(:store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "storeId", traits: {"smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreName, location_name: "name", traits: {"smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionResponse.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, location_name: "versionName", traits: {"smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description", traits: {"smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionResponse.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    UpdateAnnotationStoreVersionResponse.type = Types::UpdateAnnotationStoreVersionResponse
    UpdateRunCacheRequest.add_member(:cache_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheBehavior, location_name: "cacheBehavior"))
    UpdateRunCacheRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: UserCustomDescription, location_name: "description"))
    UpdateRunCacheRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunCacheId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRunCacheRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserCustomName, location_name: "name"))
    UpdateRunCacheRequest.type = Types::UpdateRunCacheRequest
    UpdateRunGroupRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRunGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RunGroupName, location_name: "name"))
    UpdateRunGroupRequest.add_member(:max_cpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxCpus", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}}))
    UpdateRunGroupRequest.add_member(:max_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxRuns", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}}))
    UpdateRunGroupRequest.add_member(:max_duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxDuration", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}}))
    UpdateRunGroupRequest.add_member(:max_gpus, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxGpus", traits: {"smithy.api#range" => {"min" => 1, "max" => 100000}}))
    UpdateRunGroupRequest.type = Types::UpdateRunGroupRequest
    UpdateSequenceStoreRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "sequenceStoreId"}))
    UpdateSequenceStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreName, location_name: "name"))
    UpdateSequenceStoreRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreDescription, location_name: "description"))
    UpdateSequenceStoreRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateSequenceStoreRequest.add_member(:fallback_location, ::Smithy::Schema::Shapes::MemberShape.new(target: FallbackLocation, location_name: "fallbackLocation"))
    UpdateSequenceStoreRequest.add_member(:propagated_set_level_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagatedSetLevelTags, location_name: "propagatedSetLevelTags"))
    UpdateSequenceStoreRequest.add_member(:s3_access_config, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessConfig, location_name: "s3AccessConfig"))
    UpdateSequenceStoreRequest.type = Types::UpdateSequenceStoreRequest
    UpdateSequenceStoreResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "id", traits: {"smithy.api#required" => {}}))
    UpdateSequenceStoreResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateSequenceStoreResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreName, location_name: "name"))
    UpdateSequenceStoreResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreDescription, location_name: "description"))
    UpdateSequenceStoreResponse.add_member(:sse_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfig, location_name: "sseConfig"))
    UpdateSequenceStoreResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    UpdateSequenceStoreResponse.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "updateTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateSequenceStoreResponse.add_member(:propagated_set_level_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagatedSetLevelTags, location_name: "propagatedSetLevelTags"))
    UpdateSequenceStoreResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreStatus, location_name: "status"))
    UpdateSequenceStoreResponse.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreStatusMessage, location_name: "statusMessage"))
    UpdateSequenceStoreResponse.add_member(:fallback_location, ::Smithy::Schema::Shapes::MemberShape.new(target: FallbackLocation, location_name: "fallbackLocation"))
    UpdateSequenceStoreResponse.add_member(:s3_access, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreS3Access, location_name: "s3Access"))
    UpdateSequenceStoreResponse.add_member(:e_tag_algorithm_family, ::Smithy::Schema::Shapes::MemberShape.new(target: ETagAlgorithmFamily, location_name: "eTagAlgorithmFamily"))
    UpdateSequenceStoreResponse.type = Types::UpdateSequenceStoreResponse
    UpdateVariantStoreRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateVariantStoreRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    UpdateVariantStoreRequest.type = Types::UpdateVariantStoreRequest
    UpdateVariantStoreResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    UpdateVariantStoreResponse.add_member(:reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceItem, location_name: "reference", traits: {"smithy.api#required" => {}}))
    UpdateVariantStoreResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    UpdateVariantStoreResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    UpdateVariantStoreResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description", traits: {"smithy.api#required" => {}}))
    UpdateVariantStoreResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    UpdateVariantStoreResponse.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    UpdateVariantStoreResponse.type = Types::UpdateVariantStoreResponse
    UpdateWorkflowRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkflowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowName, location_name: "name"))
    UpdateWorkflowRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDescription, location_name: "description"))
    UpdateWorkflowRequest.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, location_name: "storageType"))
    UpdateWorkflowRequest.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageCapacity", traits: {"smithy.api#range" => {"min" => 0, "max" => 100000}}))
    UpdateWorkflowRequest.add_member(:readme_markdown, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadmeMarkdown, location_name: "readmeMarkdown"))
    UpdateWorkflowRequest.type = Types::UpdateWorkflowRequest
    UpdateWorkflowVersionRequest.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "workflowId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "id"}))
    UpdateWorkflowVersionRequest.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionName, location_name: "versionName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWorkflowVersionRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionDescription, location_name: "description"))
    UpdateWorkflowVersionRequest.add_member(:storage_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageType, location_name: "storageType"))
    UpdateWorkflowVersionRequest.add_member(:storage_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "storageCapacity", traits: {"smithy.api#range" => {"min" => 0, "max" => 100000}}))
    UpdateWorkflowVersionRequest.add_member(:readme_markdown, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadmeMarkdown, location_name: "readmeMarkdown"))
    UpdateWorkflowVersionRequest.type = Types::UpdateWorkflowVersionRequest
    UploadReadSetPartRequest.add_member(:sequence_store_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SequenceStoreId, location_name: "sequenceStoreId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UploadReadSetPartRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadId, location_name: "uploadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UploadReadSetPartRequest.add_member(:part_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetPartSource, location_name: "partSource", traits: {"smithy.api#httpQuery" => "partSource", "smithy.api#required" => {}}))
    UploadReadSetPartRequest.add_member(:part_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "partNumber", traits: {"smithy.api#httpQuery" => "partNumber", "smithy.api#range" => {"min" => 1, "max" => 10000}, "smithy.api#required" => {}}))
    UploadReadSetPartRequest.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadSetPartStreamingBlob, location_name: "payload", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UploadReadSetPartRequest[:http_payload] = :payload
    UploadReadSetPartRequest[:http_payload_member] = UploadReadSetPartRequest.member(:payload)
    UploadReadSetPartRequest.type = Types::UploadReadSetPartRequest
    UploadReadSetPartResponse.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "checksum", traits: {"smithy.api#required" => {}}))
    UploadReadSetPartResponse.type = Types::UploadReadSetPartResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    VariantImportItemDetail.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, location_name: "source", traits: {"smithy.api#required" => {}}))
    VariantImportItemDetail.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "jobStatus", traits: {"smithy.api#required" => {}}))
    VariantImportItemDetail.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusMsg, location_name: "statusMessage"))
    VariantImportItemDetail.type = Types::VariantImportItemDetail
    VariantImportItemDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VariantImportItemDetail)
    VariantImportItemSource.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, location_name: "source", traits: {"smithy.api#required" => {}}))
    VariantImportItemSource.type = Types::VariantImportItemSource
    VariantImportItemSources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VariantImportItemSource)
    VariantImportJobItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "id", traits: {"smithy.api#required" => {}}))
    VariantImportJobItem.add_member(:destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "destinationName", traits: {"smithy.api#required" => {}}))
    VariantImportJobItem.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    VariantImportJobItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    VariantImportJobItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    VariantImportJobItem.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    VariantImportJobItem.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CompletionTime, location_name: "completionTime"))
    VariantImportJobItem.add_member(:run_left_normalization, ::Smithy::Schema::Shapes::MemberShape.new(target: RunLeftNormalization, location_name: "runLeftNormalization", traits: {"smithy.api#default" => false}))
    VariantImportJobItem.add_member(:annotation_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: AnnotationFieldMap, location_name: "annotationFields"))
    VariantImportJobItem.type = Types::VariantImportJobItem
    VariantImportJobItems.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VariantImportJobItem)
    VariantStoreItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    VariantStoreItem.add_member(:reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ReferenceItem, location_name: "reference", traits: {"smithy.api#required" => {}}))
    VariantStoreItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StoreStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    VariantStoreItem.add_member(:store_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "storeArn", traits: {"smithy.api#required" => {}}))
    VariantStoreItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    VariantStoreItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description", traits: {"smithy.api#required" => {}}))
    VariantStoreItem.add_member(:sse_config, ::Smithy::Schema::Shapes::MemberShape.new(target: SseConfig, location_name: "sseConfig", traits: {"smithy.api#required" => {}}))
    VariantStoreItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTime, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    VariantStoreItem.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    VariantStoreItem.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, location_name: "statusMessage", traits: {"smithy.api#required" => {}}))
    VariantStoreItem.add_member(:store_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, location_name: "storeSizeBytes", traits: {"smithy.api#required" => {}}))
    VariantStoreItem.type = Types::VariantStoreItem
    VariantStoreItems.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VariantStoreItem)
    VcfOptions.add_member(:ignore_qual_field, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "ignoreQualField"))
    VcfOptions.add_member(:ignore_filter_field, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "ignoreFilterField"))
    VcfOptions.type = Types::VcfOptions
    VersionDeleteError.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName, location_name: "versionName", traits: {"smithy.api#required" => {}}))
    VersionDeleteError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    VersionDeleteError.type = Types::VersionDeleteError
    VersionDeleteErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VersionDeleteError)
    VersionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VersionName)
    VersionOptions.add_member(:tsv_version_options, Types::VersionOptions::TsvVersionOptions, ::Smithy::Schema::Shapes::MemberShape.new(target: TsvVersionOptions, location_name: "tsvVersionOptions"))
    VersionOptions.add_member(:unknown, Types::VersionOptions::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    VersionOptions.type = Types::VersionOptions
    WorkflowExportList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExport)
    WorkflowList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowListItem)
    WorkflowListItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowArn, location_name: "arn"))
    WorkflowListItem.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "id"))
    WorkflowListItem.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowName, location_name: "name"))
    WorkflowListItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStatus, location_name: "status"))
    WorkflowListItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, location_name: "type"))
    WorkflowListItem.add_member(:digest, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDigest, location_name: "digest"))
    WorkflowListItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowTimestamp, location_name: "creationTime"))
    WorkflowListItem.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowMetadata, location_name: "metadata"))
    WorkflowListItem.type = Types::WorkflowListItem
    WorkflowMetadata.key = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowMetadataKey)
    WorkflowMetadata.value = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowMetadataValue)
    WorkflowParameter.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterDescription, location_name: "description"))
    WorkflowParameter.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "optional"))
    WorkflowParameter.type = Types::WorkflowParameter
    WorkflowParameterTemplate.key = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterName)
    WorkflowParameterTemplate.value = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameter)
    WorkflowVersionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionListItem)
    WorkflowVersionListItem.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionArn, location_name: "arn"))
    WorkflowVersionListItem.add_member(:workflow_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowId, location_name: "workflowId"))
    WorkflowVersionListItem.add_member(:version_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionName, location_name: "versionName"))
    WorkflowVersionListItem.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionDescription, location_name: "description"))
    WorkflowVersionListItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStatus, location_name: "status"))
    WorkflowVersionListItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, location_name: "type"))
    WorkflowVersionListItem.add_member(:digest, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowDigest, location_name: "digest"))
    WorkflowVersionListItem.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowTimestamp, location_name: "creationTime"))
    WorkflowVersionListItem.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowMetadata, location_name: "metadata"))
    WorkflowVersionListItem.type = Types::WorkflowVersionListItem

    Omics = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.omics#Omics"
      service.name = "Omics"
      service.version = "2022-11-28"
      service.traits = {"aws.api#service" => {"sdkId" => "Omics", "arnNamespace" => "omics", "cloudTrailEventSource" => "omics.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "omics"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the presence of tag key-value pairs attached to the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the presence of tag key-value pairs in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the presence of tag keys in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Omics"}
      service.add_operation(:abort_multipart_read_set_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#AbortMultipartReadSetUpload"
        operation.name = "AbortMultipartReadSetUpload"
        operation.input = AbortMultipartReadSetUploadRequest
        operation.output = AbortMultipartReadSetUploadResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotSupportedOperationException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to abort multipart read set uploads", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/sequencestore/{sequenceStoreId}/upload/{uploadId}/abort"}}
      end)
      service.add_operation(:accept_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#AcceptShare"
        operation.name = "AcceptShare"
        operation.input = AcceptShareRequest
        operation.output = AcceptShareResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/share/{shareId}", "code" => 200}}
      end)
      service.add_operation(:batch_delete_read_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#BatchDeleteReadSet"
        operation.name = "BatchDeleteReadSet"
        operation.input = BatchDeleteReadSetRequest
        operation.output = BatchDeleteReadSetResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to batch delete Read Sets in the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/readset/batch/delete"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_annotation_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CancelAnnotationImportJob"
        operation.name = "CancelAnnotationImportJob"
        operation.input = CancelAnnotationImportRequest
        operation.output = CancelAnnotationImportResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/import/annotation/{jobId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CancelRun"
        operation.name = "CancelRun"
        operation.input = CancelRunRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/run/{id}/cancel", "code" => 202}}
      end)
      service.add_operation(:cancel_variant_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CancelVariantImportJob"
        operation.name = "CancelVariantImportJob"
        operation.input = CancelVariantImportRequest
        operation.output = CancelVariantImportResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/import/variant/{jobId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:complete_multipart_read_set_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CompleteMultipartReadSetUpload"
        operation.name = "CompleteMultipartReadSetUpload"
        operation.input = CompleteMultipartReadSetUploadRequest
        operation.output = CompleteMultipartReadSetUploadResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotSupportedOperationException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to complete a multipart read set upload", "smithy.api#endpoint" => {"hostPrefix" => "storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/upload/{uploadId}/complete"}}
      end)
      service.add_operation(:create_annotation_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateAnnotationStore"
        operation.name = "CreateAnnotationStore"
        operation.input = CreateAnnotationStoreRequest
        operation.output = CreateAnnotationStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create an Annotation Store"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/annotationStore", "code" => 200}}
      end)
      service.add_operation(:create_annotation_store_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateAnnotationStoreVersion"
        operation.name = "CreateAnnotationStoreVersion"
        operation.input = CreateAnnotationStoreVersionRequest
        operation.output = CreateAnnotationStoreVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/annotationStore/{name}/version", "code" => 200}}
      end)
      service.add_operation(:create_multipart_read_set_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateMultipartReadSetUpload"
        operation.name = "CreateMultipartReadSetUpload"
        operation.input = CreateMultipartReadSetUploadRequest
        operation.output = CreateMultipartReadSetUploadResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotSupportedOperationException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a multipart read set upload", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/upload"}}
      end)
      service.add_operation(:create_reference_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateReferenceStore"
        operation.name = "CreateReferenceStore"
        operation.input = CreateReferenceStoreRequest
        operation.output = CreateReferenceStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a Reference Store", "aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/referencestore"}}
      end)
      service.add_operation(:create_run_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateRunCache"
        operation.name = "CreateRunCache"
        operation.input = CreateRunCacheRequest
        operation.output = CreateRunCacheResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/runCache", "code" => 201}}
      end)
      service.add_operation(:create_run_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateRunGroup"
        operation.name = "CreateRunGroup"
        operation.input = CreateRunGroupRequest
        operation.output = CreateRunGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/runGroup", "code" => 201}}
      end)
      service.add_operation(:create_sequence_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateSequenceStore"
        operation.name = "CreateSequenceStore"
        operation.input = CreateSequenceStoreRequest
        operation.output = CreateSequenceStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a Sequence Store", "aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore"}}
      end)
      service.add_operation(:create_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateShare"
        operation.name = "CreateShare"
        operation.input = CreateShareRequest
        operation.output = CreateShareResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/share", "code" => 200}}
      end)
      service.add_operation(:create_variant_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateVariantStore"
        operation.name = "CreateVariantStore"
        operation.input = CreateVariantStoreRequest
        operation.output = CreateVariantStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to create a Variant Store"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/variantStore", "code" => 200}}
      end)
      service.add_operation(:create_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateWorkflow"
        operation.name = "CreateWorkflow"
        operation.input = CreateWorkflowRequest
        operation.output = CreateWorkflowResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/workflow", "code" => 201}}
      end)
      service.add_operation(:create_workflow_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#CreateWorkflowVersion"
        operation.name = "CreateWorkflowVersion"
        operation.input = CreateWorkflowVersionRequest
        operation.output = CreateWorkflowVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/workflow/{workflowId}/version", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_annotation_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteAnnotationStore"
        operation.name = "DeleteAnnotationStore"
        operation.input = DeleteAnnotationStoreRequest
        operation.output = DeleteAnnotationStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an Annotation Store"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/annotationStore/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_annotation_store_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteAnnotationStoreVersions"
        operation.name = "DeleteAnnotationStoreVersions"
        operation.input = DeleteAnnotationStoreVersionsRequest
        operation.output = DeleteAnnotationStoreVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/annotationStore/{name}/versions/delete", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_reference, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteReference"
        operation.name = "DeleteReference"
        operation.input = DeleteReferenceRequest
        operation.output = DeleteReferenceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete a Reference in the given Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/referencestore/{referenceStoreId}/reference/{id}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_reference_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteReferenceStore"
        operation.name = "DeleteReferenceStore"
        operation.input = DeleteReferenceStoreRequest
        operation.output = DeleteReferenceStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete a Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/referencestore/{id}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteRun"
        operation.name = "DeleteRun"
        operation.input = DeleteRunRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/run/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_run_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteRunCache"
        operation.name = "DeleteRunCache"
        operation.input = DeleteRunCacheRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/runCache/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_run_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteRunGroup"
        operation.name = "DeleteRunGroup"
        operation.input = DeleteRunGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/runGroup/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_s3_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteS3AccessPolicy"
        operation.name = "DeleteS3AccessPolicy"
        operation.input = DeleteS3AccessPolicyRequest
        operation.output = DeleteS3AccessPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotSupportedOperationException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete an access policy on a given store"}, "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/s3accesspolicy/{s3AccessPointArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_sequence_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteSequenceStore"
        operation.name = "DeleteSequenceStore"
        operation.input = DeleteSequenceStoreRequest
        operation.output = DeleteSequenceStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete a Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/sequencestore/{id}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteShare"
        operation.name = "DeleteShare"
        operation.input = DeleteShareRequest
        operation.output = DeleteShareResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/share/{shareId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_variant_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteVariantStore"
        operation.name = "DeleteVariantStore"
        operation.input = DeleteVariantStoreRequest
        operation.output = DeleteVariantStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a Variant Store"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/variantStore/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteWorkflow"
        operation.name = "DeleteWorkflow"
        operation.input = DeleteWorkflowRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/workflow/{id}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_workflow_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#DeleteWorkflowVersion"
        operation.name = "DeleteWorkflowVersion"
        operation.input = DeleteWorkflowVersionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/workflow/{workflowId}/version/{versionName}", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_annotation_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetAnnotationImportJob"
        operation.name = "GetAnnotationImportJob"
        operation.input = GetAnnotationImportRequest
        operation.output = GetAnnotationImportResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/import/annotation/{jobId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_annotation_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetAnnotationStore"
        operation.name = "GetAnnotationStore"
        operation.input = GetAnnotationStoreRequest
        operation.output = GetAnnotationStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get detailed information about an Annotation Store"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/annotationStore/{name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_annotation_store_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetAnnotationStoreVersion"
        operation.name = "GetAnnotationStoreVersion"
        operation.input = GetAnnotationStoreVersionRequest
        operation.output = GetAnnotationStoreVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/annotationStore/{name}/version/{versionName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_read_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReadSet"
        operation.name = "GetReadSet"
        operation.input = GetReadSetRequest
        operation.output = GetReadSetResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RangeNotSatisfiableException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get a Read Set in the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/sequencestore/{sequenceStoreId}/readset/{id}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_read_set_activation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReadSetActivationJob"
        operation.name = "GetReadSetActivationJob"
        operation.input = GetReadSetActivationJobRequest
        operation.output = GetReadSetActivationJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get details about a Read Set activation job for the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/sequencestore/{sequenceStoreId}/activationjob/{id}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_read_set_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReadSetExportJob"
        operation.name = "GetReadSetExportJob"
        operation.input = GetReadSetExportJobRequest
        operation.output = GetReadSetExportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get details about a Read Set export job for the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/sequencestore/{sequenceStoreId}/exportjob/{id}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_read_set_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReadSetImportJob"
        operation.name = "GetReadSetImportJob"
        operation.input = GetReadSetImportJobRequest
        operation.output = GetReadSetImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get details about a Read Set import job for the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/sequencestore/{sequenceStoreId}/importjob/{id}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_read_set_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReadSetMetadata"
        operation.name = "GetReadSetMetadata"
        operation.input = GetReadSetMetadataRequest
        operation.output = GetReadSetMetadataResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get details about a Read Set in the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/sequencestore/{sequenceStoreId}/readset/{id}/metadata"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_reference, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReference"
        operation.name = "GetReference"
        operation.input = GetReferenceRequest
        operation.output = GetReferenceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RangeNotSatisfiableException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get a Reference in the given Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/referencestore/{referenceStoreId}/reference/{id}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_reference_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReferenceImportJob"
        operation.name = "GetReferenceImportJob"
        operation.input = GetReferenceImportJobRequest
        operation.output = GetReferenceImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get details about a Reference import job for the given Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/referencestore/{referenceStoreId}/importjob/{id}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_reference_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReferenceMetadata"
        operation.name = "GetReferenceMetadata"
        operation.input = GetReferenceMetadataRequest
        operation.output = GetReferenceMetadataResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get details about a Reference in the given Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/referencestore/{referenceStoreId}/reference/{id}/metadata"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_reference_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetReferenceStore"
        operation.name = "GetReferenceStore"
        operation.input = GetReferenceStoreRequest
        operation.output = GetReferenceStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get details about a Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/referencestore/{id}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetRun"
        operation.name = "GetRun"
        operation.input = GetRunRequest
        operation.output = GetRunResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/run/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_run_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetRunCache"
        operation.name = "GetRunCache"
        operation.input = GetRunCacheRequest
        operation.output = GetRunCacheResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/runCache/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_run_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetRunGroup"
        operation.name = "GetRunGroup"
        operation.input = GetRunGroupRequest
        operation.output = GetRunGroupResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/runGroup/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_run_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetRunTask"
        operation.name = "GetRunTask"
        operation.input = GetRunTaskRequest
        operation.output = GetRunTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/run/{id}/task/{taskId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_s3_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetS3AccessPolicy"
        operation.name = "GetS3AccessPolicy"
        operation.input = GetS3AccessPolicyRequest
        operation.output = GetS3AccessPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotSupportedOperationException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get details about an access policy on a given store"}, "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/s3accesspolicy/{s3AccessPointArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sequence_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetSequenceStore"
        operation.name = "GetSequenceStore"
        operation.input = GetSequenceStoreRequest
        operation.output = GetSequenceStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get details about a Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/sequencestore/{id}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_share, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetShare"
        operation.name = "GetShare"
        operation.input = GetShareRequest
        operation.output = GetShareResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/share/{shareId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_variant_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetVariantImportJob"
        operation.name = "GetVariantImportJob"
        operation.input = GetVariantImportRequest
        operation.output = GetVariantImportResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/import/variant/{jobId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_variant_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetVariantStore"
        operation.name = "GetVariantStore"
        operation.input = GetVariantStoreRequest
        operation.output = GetVariantStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get detailed information about a Variant Store"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/variantStore/{name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetWorkflow"
        operation.name = "GetWorkflow"
        operation.input = GetWorkflowRequest
        operation.output = GetWorkflowResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/workflow/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workflow_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#GetWorkflowVersion"
        operation.name = "GetWorkflowVersion"
        operation.input = GetWorkflowVersionRequest
        operation.output = GetWorkflowVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/workflow/{workflowId}/version/{versionName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_annotation_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListAnnotationImportJobs"
        operation.name = "ListAnnotationImportJobs"
        operation.input = ListAnnotationImportJobsRequest
        operation.output = ListAnnotationImportJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/import/annotations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAnnotationImportJobs.new
      end)
      service.add_operation(:list_annotation_store_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListAnnotationStoreVersions"
        operation.name = "ListAnnotationStoreVersions"
        operation.input = ListAnnotationStoreVersionsRequest
        operation.output = ListAnnotationStoreVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/annotationStore/{name}/versions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAnnotationStoreVersions.new
      end)
      service.add_operation(:list_annotation_stores, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListAnnotationStores"
        operation.name = "ListAnnotationStores"
        operation.input = ListAnnotationStoresRequest
        operation.output = ListAnnotationStoresResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of information about Annotation Stores"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/annotationStores", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAnnotationStores.new
      end)
      service.add_operation(:list_multipart_read_set_uploads, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListMultipartReadSetUploads"
        operation.name = "ListMultipartReadSetUploads"
        operation.input = ListMultipartReadSetUploadsRequest
        operation.output = ListMultipartReadSetUploadsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotSupportedOperationException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list multipart read set uploads", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/uploads"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListMultipartReadSetUploads.new
      end)
      service.add_operation(:list_read_set_activation_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListReadSetActivationJobs"
        operation.name = "ListReadSetActivationJobs"
        operation.input = ListReadSetActivationJobsRequest
        operation.output = ListReadSetActivationJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list Read Set activation jobs for the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/activationjobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReadSetActivationJobs.new
      end)
      service.add_operation(:list_read_set_export_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListReadSetExportJobs"
        operation.name = "ListReadSetExportJobs"
        operation.input = ListReadSetExportJobsRequest
        operation.output = ListReadSetExportJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list Read Set export jobs for the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/exportjobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReadSetExportJobs.new
      end)
      service.add_operation(:list_read_set_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListReadSetImportJobs"
        operation.name = "ListReadSetImportJobs"
        operation.input = ListReadSetImportJobsRequest
        operation.output = ListReadSetImportJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list Read Set import jobs for the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/importjobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReadSetImportJobs.new
      end)
      service.add_operation(:list_read_set_upload_parts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListReadSetUploadParts"
        operation.name = "ListReadSetUploadParts"
        operation.input = ListReadSetUploadPartsRequest
        operation.output = ListReadSetUploadPartsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotSupportedOperationException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list read set upload parts", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/upload/{uploadId}/parts"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReadSetUploadParts.new
      end)
      service.add_operation(:list_read_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListReadSets"
        operation.name = "ListReadSets"
        operation.input = ListReadSetsRequest
        operation.output = ListReadSetsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list Read Sets in the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/readsets"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReadSets.new
      end)
      service.add_operation(:list_reference_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListReferenceImportJobs"
        operation.name = "ListReferenceImportJobs"
        operation.input = ListReferenceImportJobsRequest
        operation.output = ListReferenceImportJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list Reference import jobs for the given Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/referencestore/{referenceStoreId}/importjobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReferenceImportJobs.new
      end)
      service.add_operation(:list_reference_stores, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListReferenceStores"
        operation.name = "ListReferenceStores"
        operation.input = ListReferenceStoresRequest
        operation.output = ListReferenceStoresResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list Reference Stores", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/referencestores"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReferenceStores.new
      end)
      service.add_operation(:list_references, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListReferences"
        operation.name = "ListReferences"
        operation.input = ListReferencesRequest
        operation.output = ListReferencesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list References in the given Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/referencestore/{referenceStoreId}/references"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReferences.new
      end)
      service.add_operation(:list_run_caches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListRunCaches"
        operation.name = "ListRunCaches"
        operation.input = ListRunCachesRequest
        operation.output = ListRunCachesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/runCache", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRunCaches.new
      end)
      service.add_operation(:list_run_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListRunGroups"
        operation.name = "ListRunGroups"
        operation.input = ListRunGroupsRequest
        operation.output = ListRunGroupsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/runGroup", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRunGroups.new
      end)
      service.add_operation(:list_run_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListRunTasks"
        operation.name = "ListRunTasks"
        operation.input = ListRunTasksRequest
        operation.output = ListRunTasksResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/run/{id}/task", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRunTasks.new
      end)
      service.add_operation(:list_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListRuns"
        operation.name = "ListRuns"
        operation.input = ListRunsRequest
        operation.output = ListRunsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/run", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRuns.new
      end)
      service.add_operation(:list_sequence_stores, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListSequenceStores"
        operation.name = "ListSequenceStores"
        operation.input = ListSequenceStoresRequest
        operation.output = ListSequenceStoresResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list Sequence Stores", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestores"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSequenceStores.new
      end)
      service.add_operation(:list_shares, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListShares"
        operation.name = "ListShares"
        operation.input = ListSharesRequest
        operation.output = ListSharesResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/shares", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListShares.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "tags-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_variant_import_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListVariantImportJobs"
        operation.name = "ListVariantImportJobs"
        operation.input = ListVariantImportJobsRequest
        operation.output = ListVariantImportJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/import/variants", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVariantImportJobs.new
      end)
      service.add_operation(:list_variant_stores, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListVariantStores"
        operation.name = "ListVariantStores"
        operation.input = ListVariantStoresRequest
        operation.output = ListVariantStoresResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve a list of metadata for Variant Stores"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/variantStores", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListVariantStores.new
      end)
      service.add_operation(:list_workflow_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListWorkflowVersions"
        operation.name = "ListWorkflowVersions"
        operation.input = ListWorkflowVersionsRequest
        operation.output = ListWorkflowVersionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/workflow/{workflowId}/version", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflowVersions.new
      end)
      service.add_operation(:list_workflows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#ListWorkflows"
        operation.name = "ListWorkflows"
        operation.input = ListWorkflowsRequest
        operation.output = ListWorkflowsResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "GET", "uri" => "/workflow", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflows.new
      end)
      service.add_operation(:put_s3_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#PutS3AccessPolicy"
        operation.name = "PutS3AccessPolicy"
        operation.input = PutS3AccessPolicyRequest
        operation.output = PutS3AccessPolicyResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotSupportedOperationException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to put an access policy on a given store"}, "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/s3accesspolicy/{s3AccessPointArn}"}}
      end)
      service.add_operation(:start_annotation_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#StartAnnotationImportJob"
        operation.name = "StartAnnotationImportJob"
        operation.input = StartAnnotationImportRequest
        operation.output = StartAnnotationImportResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/import/annotation", "code" => 200}}
      end)
      service.add_operation(:start_read_set_activation_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#StartReadSetActivationJob"
        operation.name = "StartReadSetActivationJob"
        operation.input = StartReadSetActivationJobRequest
        operation.output = StartReadSetActivationJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to start a Read Set activation job from the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/activationjob"}}
      end)
      service.add_operation(:start_read_set_export_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#StartReadSetExportJob"
        operation.name = "StartReadSetExportJob"
        operation.input = StartReadSetExportJobRequest
        operation.output = StartReadSetExportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to start a Read Set export job from the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/exportjob"}}
      end)
      service.add_operation(:start_read_set_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#StartReadSetImportJob"
        operation.name = "StartReadSetImportJob"
        operation.input = StartReadSetImportJobRequest
        operation.output = StartReadSetImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to start a Read Set import job into the given Sequence Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/sequencestore/{sequenceStoreId}/importjob"}}
      end)
      service.add_operation(:start_reference_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#StartReferenceImportJob"
        operation.name = "StartReferenceImportJob"
        operation.input = StartReferenceImportJobRequest
        operation.output = StartReferenceImportJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to start a Reference import job into the given Reference Store", "smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/referencestore/{referenceStoreId}/importjob"}}
      end)
      service.add_operation(:start_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#StartRun"
        operation.name = "StartRun"
        operation.input = StartRunRequest
        operation.output = StartRunResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/run", "code" => 201}}
      end)
      service.add_operation(:start_variant_import_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#StartVariantImportJob"
        operation.name = "StartVariantImportJob"
        operation.input = StartVariantImportRequest
        operation.output = StartVariantImportResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/import/variant", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "tags-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "tags-"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_annotation_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UpdateAnnotationStore"
        operation.name = "UpdateAnnotationStore"
        operation.input = UpdateAnnotationStoreRequest
        operation.output = UpdateAnnotationStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update information about the Annotation Store"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/annotationStore/{name}", "code" => 200}}
      end)
      service.add_operation(:update_annotation_store_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UpdateAnnotationStoreVersion"
        operation.name = "UpdateAnnotationStoreVersion"
        operation.input = UpdateAnnotationStoreVersionRequest
        operation.output = UpdateAnnotationStoreVersionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/annotationStore/{name}/version/{versionName}", "code" => 200}}
      end)
      service.add_operation(:update_run_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UpdateRunCache"
        operation.name = "UpdateRunCache"
        operation.input = UpdateRunCacheRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/runCache/{id}", "code" => 202}}
      end)
      service.add_operation(:update_run_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UpdateRunGroup"
        operation.name = "UpdateRunGroup"
        operation.input = UpdateRunGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/runGroup/{id}", "code" => 202}}
      end)
      service.add_operation(:update_sequence_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UpdateSequenceStore"
        operation.name = "UpdateSequenceStore"
        operation.input = UpdateSequenceStoreRequest
        operation.output = UpdateSequenceStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "control-storage-"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/sequencestore/{id}"}}
      end)
      service.add_operation(:update_variant_store, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UpdateVariantStore"
        operation.name = "UpdateVariantStore"
        operation.input = UpdateVariantStoreRequest
        operation.output = UpdateVariantStoreResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to update metadata about the Variant Store"}, "smithy.api#endpoint" => {"hostPrefix" => "analytics-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/variantStore/{name}", "code" => 200}}
      end)
      service.add_operation(:update_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UpdateWorkflow"
        operation.name = "UpdateWorkflow"
        operation.input = UpdateWorkflowRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/workflow/{id}", "code" => 202}}
      end)
      service.add_operation(:update_workflow_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UpdateWorkflowVersion"
        operation.name = "UpdateWorkflowVersion"
        operation.input = UpdateWorkflowVersionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "workflows-"}, "smithy.api#http" => {"method" => "POST", "uri" => "/workflow/{workflowId}/version/{versionName}", "code" => 202}}
      end)
      service.add_operation(:upload_read_set_part, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.omics#UploadReadSetPart"
        operation.name = "UploadReadSetPart"
        operation.input = UploadReadSetPartRequest
        operation.output = UploadReadSetPartResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << NotSupportedOperationException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.auth#unsignedPayload" => {}, "aws.iam#actionPermissionDescription" => "Grants permission to upload read set parts", "smithy.api#endpoint" => {"hostPrefix" => "storage-"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/sequencestore/{sequenceStoreId}/upload/{uploadId}/part"}}
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
