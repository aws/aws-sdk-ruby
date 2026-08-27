# frozen_string_literal: true

# This is generated code!

module Aws::S3
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AbortDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#AbortDate", name: "AbortDate")
    AbortIncompleteMultipartUpload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#AbortIncompleteMultipartUpload", name: "AbortIncompleteMultipartUpload")
    AbortMultipartUploadOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#AbortMultipartUploadOutput", name: "AbortMultipartUploadOutput")
    AbortMultipartUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#AbortMultipartUploadRequest", name: "AbortMultipartUploadRequest")
    AbortRuleId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#AbortRuleId", name: "AbortRuleId")
    AccelerateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#AccelerateConfiguration", name: "AccelerateConfiguration")
    AcceptRanges = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#AcceptRanges", name: "AcceptRanges")
    AccessControlPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#AccessControlPolicy", name: "AccessControlPolicy")
    AccessControlTranslation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#AccessControlTranslation", name: "AccessControlTranslation")
    AccessKeyIdValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#AccessKeyIdValue", name: "AccessKeyIdValue")
    AccessPointAlias = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#AccessPointAlias", name: "AccessPointAlias")
    AccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#AccessPointArn", name: "AccessPointArn")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#AccountId", name: "AccountId")
    AllowQuotedRecordDelimiter = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#AllowQuotedRecordDelimiter", name: "AllowQuotedRecordDelimiter")
    AllowedHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#AllowedHeader", name: "AllowedHeader")
    AllowedHeaders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#AllowedHeaders", name: "AllowedHeaders")
    AllowedMethod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#AllowedMethod", name: "AllowedMethod")
    AllowedMethods = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#AllowedMethods", name: "AllowedMethods")
    AllowedOrigin = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#AllowedOrigin", name: "AllowedOrigin")
    AllowedOrigins = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#AllowedOrigins", name: "AllowedOrigins")
    AnalyticsAndOperator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#AnalyticsAndOperator", name: "AnalyticsAndOperator")
    AnalyticsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#AnalyticsConfiguration", name: "AnalyticsConfiguration")
    AnalyticsConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#AnalyticsConfigurationList", name: "AnalyticsConfigurationList")
    AnalyticsExportDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#AnalyticsExportDestination", name: "AnalyticsExportDestination")
    AnalyticsFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.s3#AnalyticsFilter", name: "AnalyticsFilter")
    AnalyticsId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#AnalyticsId", name: "AnalyticsId")
    AnalyticsS3BucketDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#AnalyticsS3BucketDestination", name: "AnalyticsS3BucketDestination")
    AnalyticsS3ExportFileFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#AnalyticsS3ExportFileFormat", name: "AnalyticsS3ExportFileFormat")
    ArchiveStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ArchiveStatus", name: "ArchiveStatus")
    Body = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.s3#Body", name: "Body")
    Bucket = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Bucket", name: "Bucket")
    BucketAccelerateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#BucketAccelerateStatus", name: "BucketAccelerateStatus")
    BucketAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#BucketAlreadyExists", name: "BucketAlreadyExists", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    BucketAlreadyOwnedByYou = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#BucketAlreadyOwnedByYou", name: "BucketAlreadyOwnedByYou", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    BucketCannedACL = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#BucketCannedACL", name: "BucketCannedACL")
    BucketInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#BucketInfo", name: "BucketInfo")
    BucketKeyEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#BucketKeyEnabled", name: "BucketKeyEnabled")
    BucketLifecycleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#BucketLifecycleConfiguration", name: "BucketLifecycleConfiguration")
    BucketLocationConstraint = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#BucketLocationConstraint", name: "BucketLocationConstraint")
    BucketLocationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#BucketLocationName", name: "BucketLocationName")
    BucketLoggingStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#BucketLoggingStatus", name: "BucketLoggingStatus")
    BucketLogsPermission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#BucketLogsPermission", name: "BucketLogsPermission")
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#BucketName", name: "BucketName")
    BucketRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#BucketRegion", name: "BucketRegion")
    BucketType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#BucketType", name: "BucketType")
    BucketVersioningStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#BucketVersioningStatus", name: "BucketVersioningStatus")
    Buckets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#Buckets", name: "Buckets")
    BypassGovernanceRetention = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#BypassGovernanceRetention", name: "BypassGovernanceRetention")
    BytesProcessed = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#BytesProcessed", name: "BytesProcessed")
    BytesReturned = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#BytesReturned", name: "BytesReturned")
    BytesScanned = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#BytesScanned", name: "BytesScanned")
    CORSConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CORSConfiguration", name: "CORSConfiguration")
    CORSRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CORSRule", name: "CORSRule")
    CORSRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#CORSRules", name: "CORSRules")
    CSVInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CSVInput", name: "CSVInput")
    CSVOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CSVOutput", name: "CSVOutput")
    CacheControl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#CacheControl", name: "CacheControl")
    Checksum = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Checksum", name: "Checksum")
    ChecksumAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ChecksumAlgorithm", name: "ChecksumAlgorithm")
    ChecksumAlgorithmList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#ChecksumAlgorithmList", name: "ChecksumAlgorithmList")
    ChecksumCRC32 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ChecksumCRC32", name: "ChecksumCRC32")
    ChecksumCRC32C = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ChecksumCRC32C", name: "ChecksumCRC32C")
    ChecksumCRC64NVME = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ChecksumCRC64NVME", name: "ChecksumCRC64NVME")
    ChecksumMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ChecksumMode", name: "ChecksumMode")
    ChecksumSHA1 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ChecksumSHA1", name: "ChecksumSHA1")
    ChecksumSHA256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ChecksumSHA256", name: "ChecksumSHA256")
    ChecksumType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ChecksumType", name: "ChecksumType")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ClientToken", name: "ClientToken")
    Code = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Code", name: "Code")
    Comments = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Comments", name: "Comments")
    CommonPrefix = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CommonPrefix", name: "CommonPrefix")
    CommonPrefixList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#CommonPrefixList", name: "CommonPrefixList")
    CompleteMultipartUploadOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CompleteMultipartUploadOutput", name: "CompleteMultipartUploadOutput", traits: {"smithy.api#xmlName" => "CompleteMultipartUploadResult"})
    CompleteMultipartUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CompleteMultipartUploadRequest", name: "CompleteMultipartUploadRequest")
    CompletedMultipartUpload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CompletedMultipartUpload", name: "CompletedMultipartUpload")
    CompletedPart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CompletedPart", name: "CompletedPart")
    CompletedPartList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#CompletedPartList", name: "CompletedPartList")
    CompressionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#CompressionType", name: "CompressionType")
    Condition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Condition", name: "Condition")
    ConfirmRemoveSelfBucketAccess = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#ConfirmRemoveSelfBucketAccess", name: "ConfirmRemoveSelfBucketAccess")
    ContentDisposition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ContentDisposition", name: "ContentDisposition")
    ContentEncoding = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ContentEncoding", name: "ContentEncoding")
    ContentLanguage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ContentLanguage", name: "ContentLanguage")
    ContentLength = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#ContentLength", name: "ContentLength")
    ContentMD5 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ContentMD5", name: "ContentMD5")
    ContentRange = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ContentRange", name: "ContentRange")
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ContentType", name: "ContentType")
    ContinuationEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ContinuationEvent", name: "ContinuationEvent")
    CopyObjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CopyObjectOutput", name: "CopyObjectOutput")
    CopyObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CopyObjectRequest", name: "CopyObjectRequest")
    CopyObjectResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CopyObjectResult", name: "CopyObjectResult")
    CopyPartResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CopyPartResult", name: "CopyPartResult")
    CopySource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#CopySource", name: "CopySource", traits: {"smithy.api#pattern" => "^\\/?.+\\/.+$"})
    CopySourceIfMatch = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#CopySourceIfMatch", name: "CopySourceIfMatch")
    CopySourceIfModifiedSince = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#CopySourceIfModifiedSince", name: "CopySourceIfModifiedSince")
    CopySourceIfNoneMatch = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#CopySourceIfNoneMatch", name: "CopySourceIfNoneMatch")
    CopySourceIfUnmodifiedSince = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#CopySourceIfUnmodifiedSince", name: "CopySourceIfUnmodifiedSince")
    CopySourceRange = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#CopySourceRange", name: "CopySourceRange")
    CopySourceSSECustomerAlgorithm = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#CopySourceSSECustomerAlgorithm", name: "CopySourceSSECustomerAlgorithm")
    CopySourceSSECustomerKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#CopySourceSSECustomerKey", name: "CopySourceSSECustomerKey", traits: {"smithy.api#sensitive" => {}})
    CopySourceSSECustomerKeyMD5 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#CopySourceSSECustomerKeyMD5", name: "CopySourceSSECustomerKeyMD5")
    CopySourceVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#CopySourceVersionId", name: "CopySourceVersionId")
    CreateBucketConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CreateBucketConfiguration", name: "CreateBucketConfiguration")
    CreateBucketMetadataConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CreateBucketMetadataConfigurationRequest", name: "CreateBucketMetadataConfigurationRequest")
    CreateBucketMetadataTableConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CreateBucketMetadataTableConfigurationRequest", name: "CreateBucketMetadataTableConfigurationRequest")
    CreateBucketOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CreateBucketOutput", name: "CreateBucketOutput")
    CreateBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CreateBucketRequest", name: "CreateBucketRequest")
    CreateMultipartUploadOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CreateMultipartUploadOutput", name: "CreateMultipartUploadOutput", traits: {"smithy.api#xmlName" => "InitiateMultipartUploadResult"})
    CreateMultipartUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CreateMultipartUploadRequest", name: "CreateMultipartUploadRequest")
    CreateSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CreateSessionOutput", name: "CreateSessionOutput", traits: {"smithy.api#xmlName" => "CreateSessionResult"})
    CreateSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#CreateSessionRequest", name: "CreateSessionRequest")
    CreationDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#CreationDate", name: "CreationDate")
    DataRedundancy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#DataRedundancy", name: "DataRedundancy")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#Date", name: "Date", traits: {"smithy.api#timestampFormat" => "date-time"})
    Days = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#Days", name: "Days")
    DaysAfterInitiation = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#DaysAfterInitiation", name: "DaysAfterInitiation")
    DefaultRetention = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DefaultRetention", name: "DefaultRetention")
    Delete = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Delete", name: "Delete")
    DeleteBucketAnalyticsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteBucketAnalyticsConfigurationRequest", name: "DeleteBucketAnalyticsConfigurationRequest")
    DeleteBucketCorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteBucketCorsRequest", name: "DeleteBucketCorsRequest")
    DeleteBucketEncryptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteBucketEncryptionRequest", name: "DeleteBucketEncryptionRequest")
    DeleteBucketIntelligentTieringConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteBucketIntelligentTieringConfigurationRequest", name: "DeleteBucketIntelligentTieringConfigurationRequest")
    DeleteBucketInventoryConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteBucketInventoryConfigurationRequest", name: "DeleteBucketInventoryConfigurationRequest")
    DeleteBucketLifecycleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteBucketLifecycleRequest", name: "DeleteBucketLifecycleRequest")
    DeleteBucketMetadataConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteBucketMetadataConfigurationRequest", name: "DeleteBucketMetadataConfigurationRequest")
    DeleteBucketMetadataTableConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteBucketMetadataTableConfigurationRequest", name: "DeleteBucketMetadataTableConfigurationRequest")
    DeleteBucketMetricsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteBucketMetricsConfigurationRequest", name: "DeleteBucketMetricsConfigurationRequest")
    DeleteBucketOwnershipControlsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteBucketOwnershipControlsRequest", name: "DeleteBucketOwnershipControlsRequest")
    DeleteBucketPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteBucketPolicyRequest", name: "DeleteBucketPolicyRequest")
    DeleteBucketReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteBucketReplicationRequest", name: "DeleteBucketReplicationRequest")
    DeleteBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteBucketRequest", name: "DeleteBucketRequest")
    DeleteBucketTaggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteBucketTaggingRequest", name: "DeleteBucketTaggingRequest")
    DeleteBucketWebsiteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteBucketWebsiteRequest", name: "DeleteBucketWebsiteRequest")
    DeleteMarker = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#DeleteMarker", name: "DeleteMarker")
    DeleteMarkerEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteMarkerEntry", name: "DeleteMarkerEntry")
    DeleteMarkerReplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteMarkerReplication", name: "DeleteMarkerReplication")
    DeleteMarkerReplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#DeleteMarkerReplicationStatus", name: "DeleteMarkerReplicationStatus")
    DeleteMarkerVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#DeleteMarkerVersionId", name: "DeleteMarkerVersionId")
    DeleteMarkers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#DeleteMarkers", name: "DeleteMarkers")
    DeleteObjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteObjectOutput", name: "DeleteObjectOutput")
    DeleteObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteObjectRequest", name: "DeleteObjectRequest")
    DeleteObjectTaggingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteObjectTaggingOutput", name: "DeleteObjectTaggingOutput")
    DeleteObjectTaggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteObjectTaggingRequest", name: "DeleteObjectTaggingRequest")
    DeleteObjectsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteObjectsOutput", name: "DeleteObjectsOutput", traits: {"smithy.api#xmlName" => "DeleteResult"})
    DeleteObjectsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeleteObjectsRequest", name: "DeleteObjectsRequest")
    DeletePublicAccessBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeletePublicAccessBlockRequest", name: "DeletePublicAccessBlockRequest")
    DeletedObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DeletedObject", name: "DeletedObject")
    DeletedObjects = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#DeletedObjects", name: "DeletedObjects")
    Delimiter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Delimiter", name: "Delimiter")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Description", name: "Description")
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Destination", name: "Destination")
    DestinationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#DestinationResult", name: "DestinationResult")
    DirectoryBucketToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#DirectoryBucketToken", name: "DirectoryBucketToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#DisplayName", name: "DisplayName")
    ETag = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ETag", name: "ETag")
    EmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#EmailAddress", name: "EmailAddress")
    EnableRequestProgress = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#EnableRequestProgress", name: "EnableRequestProgress")
    EncodingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#EncodingType", name: "EncodingType")
    Encryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Encryption", name: "Encryption")
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#EncryptionConfiguration", name: "EncryptionConfiguration")
    EncryptionTypeMismatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#EncryptionTypeMismatch", name: "EncryptionTypeMismatch", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    End = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#End", name: "End")
    EndEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#EndEvent", name: "EndEvent")
    Error = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Error", name: "Error")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ErrorCode", name: "ErrorCode")
    ErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ErrorDetails", name: "ErrorDetails")
    ErrorDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ErrorDocument", name: "ErrorDocument")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ErrorMessage", name: "ErrorMessage")
    Errors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#Errors", name: "Errors")
    Event = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#Event", name: "Event")
    EventBridgeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#EventBridgeConfiguration", name: "EventBridgeConfiguration")
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#EventList", name: "EventList")
    ExistingObjectReplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ExistingObjectReplication", name: "ExistingObjectReplication")
    ExistingObjectReplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ExistingObjectReplicationStatus", name: "ExistingObjectReplicationStatus")
    Expiration = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Expiration", name: "Expiration")
    ExpirationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ExpirationState", name: "ExpirationState")
    ExpirationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ExpirationStatus", name: "ExpirationStatus")
    ExpiredObjectDeleteMarker = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#ExpiredObjectDeleteMarker", name: "ExpiredObjectDeleteMarker")
    Expires = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Expires", name: "Expires")
    ExposeHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ExposeHeader", name: "ExposeHeader")
    ExposeHeaders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#ExposeHeaders", name: "ExposeHeaders")
    Expression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Expression", name: "Expression")
    ExpressionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ExpressionType", name: "ExpressionType")
    FetchOwner = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#FetchOwner", name: "FetchOwner")
    FieldDelimiter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#FieldDelimiter", name: "FieldDelimiter")
    FileHeaderInfo = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#FileHeaderInfo", name: "FileHeaderInfo")
    FilterRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#FilterRule", name: "FilterRule")
    FilterRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#FilterRuleList", name: "FilterRuleList")
    FilterRuleName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#FilterRuleName", name: "FilterRuleName")
    FilterRuleValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#FilterRuleValue", name: "FilterRuleValue")
    GetBucketAccelerateConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketAccelerateConfigurationOutput", name: "GetBucketAccelerateConfigurationOutput", traits: {"smithy.api#xmlName" => "AccelerateConfiguration"})
    GetBucketAccelerateConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketAccelerateConfigurationRequest", name: "GetBucketAccelerateConfigurationRequest")
    GetBucketAclOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketAclOutput", name: "GetBucketAclOutput", traits: {"smithy.api#xmlName" => "AccessControlPolicy"})
    GetBucketAclRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketAclRequest", name: "GetBucketAclRequest")
    GetBucketAnalyticsConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketAnalyticsConfigurationOutput", name: "GetBucketAnalyticsConfigurationOutput")
    GetBucketAnalyticsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketAnalyticsConfigurationRequest", name: "GetBucketAnalyticsConfigurationRequest")
    GetBucketCorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketCorsOutput", name: "GetBucketCorsOutput", traits: {"smithy.api#xmlName" => "CORSConfiguration"})
    GetBucketCorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketCorsRequest", name: "GetBucketCorsRequest")
    GetBucketEncryptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketEncryptionOutput", name: "GetBucketEncryptionOutput")
    GetBucketEncryptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketEncryptionRequest", name: "GetBucketEncryptionRequest")
    GetBucketIntelligentTieringConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketIntelligentTieringConfigurationOutput", name: "GetBucketIntelligentTieringConfigurationOutput")
    GetBucketIntelligentTieringConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketIntelligentTieringConfigurationRequest", name: "GetBucketIntelligentTieringConfigurationRequest")
    GetBucketInventoryConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketInventoryConfigurationOutput", name: "GetBucketInventoryConfigurationOutput")
    GetBucketInventoryConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketInventoryConfigurationRequest", name: "GetBucketInventoryConfigurationRequest")
    GetBucketLifecycleConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketLifecycleConfigurationOutput", name: "GetBucketLifecycleConfigurationOutput", traits: {"smithy.api#xmlName" => "LifecycleConfiguration"})
    GetBucketLifecycleConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketLifecycleConfigurationRequest", name: "GetBucketLifecycleConfigurationRequest")
    GetBucketLocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketLocationOutput", name: "GetBucketLocationOutput", traits: {"smithy.api#xmlName" => "LocationConstraint"})
    GetBucketLocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketLocationRequest", name: "GetBucketLocationRequest")
    GetBucketLoggingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketLoggingOutput", name: "GetBucketLoggingOutput", traits: {"smithy.api#xmlName" => "BucketLoggingStatus"})
    GetBucketLoggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketLoggingRequest", name: "GetBucketLoggingRequest")
    GetBucketMetadataConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketMetadataConfigurationOutput", name: "GetBucketMetadataConfigurationOutput")
    GetBucketMetadataConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketMetadataConfigurationRequest", name: "GetBucketMetadataConfigurationRequest")
    GetBucketMetadataConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketMetadataConfigurationResult", name: "GetBucketMetadataConfigurationResult")
    GetBucketMetadataTableConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketMetadataTableConfigurationOutput", name: "GetBucketMetadataTableConfigurationOutput")
    GetBucketMetadataTableConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketMetadataTableConfigurationRequest", name: "GetBucketMetadataTableConfigurationRequest")
    GetBucketMetadataTableConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketMetadataTableConfigurationResult", name: "GetBucketMetadataTableConfigurationResult")
    GetBucketMetricsConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketMetricsConfigurationOutput", name: "GetBucketMetricsConfigurationOutput")
    GetBucketMetricsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketMetricsConfigurationRequest", name: "GetBucketMetricsConfigurationRequest")
    GetBucketNotificationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketNotificationConfigurationOutput", name: "GetBucketNotificationConfigurationOutput")
    GetBucketNotificationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketNotificationConfigurationRequest", name: "GetBucketNotificationConfigurationRequest")
    GetBucketOwnershipControlsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketOwnershipControlsOutput", name: "GetBucketOwnershipControlsOutput")
    GetBucketOwnershipControlsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketOwnershipControlsRequest", name: "GetBucketOwnershipControlsRequest")
    GetBucketPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketPolicyOutput", name: "GetBucketPolicyOutput")
    GetBucketPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketPolicyRequest", name: "GetBucketPolicyRequest")
    GetBucketPolicyStatusOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketPolicyStatusOutput", name: "GetBucketPolicyStatusOutput")
    GetBucketPolicyStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketPolicyStatusRequest", name: "GetBucketPolicyStatusRequest")
    GetBucketReplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketReplicationOutput", name: "GetBucketReplicationOutput")
    GetBucketReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketReplicationRequest", name: "GetBucketReplicationRequest")
    GetBucketRequestPaymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketRequestPaymentOutput", name: "GetBucketRequestPaymentOutput", traits: {"smithy.api#xmlName" => "RequestPaymentConfiguration"})
    GetBucketRequestPaymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketRequestPaymentRequest", name: "GetBucketRequestPaymentRequest")
    GetBucketTaggingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketTaggingOutput", name: "GetBucketTaggingOutput", traits: {"smithy.api#xmlName" => "Tagging"})
    GetBucketTaggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketTaggingRequest", name: "GetBucketTaggingRequest")
    GetBucketVersioningOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketVersioningOutput", name: "GetBucketVersioningOutput", traits: {"smithy.api#xmlName" => "VersioningConfiguration"})
    GetBucketVersioningRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketVersioningRequest", name: "GetBucketVersioningRequest")
    GetBucketWebsiteOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketWebsiteOutput", name: "GetBucketWebsiteOutput", traits: {"smithy.api#xmlName" => "WebsiteConfiguration"})
    GetBucketWebsiteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetBucketWebsiteRequest", name: "GetBucketWebsiteRequest")
    GetObjectAclOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectAclOutput", name: "GetObjectAclOutput", traits: {"smithy.api#xmlName" => "AccessControlPolicy"})
    GetObjectAclRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectAclRequest", name: "GetObjectAclRequest")
    GetObjectAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectAttributesOutput", name: "GetObjectAttributesOutput", traits: {"smithy.api#xmlName" => "GetObjectAttributesResponse"})
    GetObjectAttributesParts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectAttributesParts", name: "GetObjectAttributesParts")
    GetObjectAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectAttributesRequest", name: "GetObjectAttributesRequest")
    GetObjectLegalHoldOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectLegalHoldOutput", name: "GetObjectLegalHoldOutput")
    GetObjectLegalHoldRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectLegalHoldRequest", name: "GetObjectLegalHoldRequest")
    GetObjectLockConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectLockConfigurationOutput", name: "GetObjectLockConfigurationOutput")
    GetObjectLockConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectLockConfigurationRequest", name: "GetObjectLockConfigurationRequest")
    GetObjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectOutput", name: "GetObjectOutput")
    GetObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectRequest", name: "GetObjectRequest")
    GetObjectResponseStatusCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#GetObjectResponseStatusCode", name: "GetObjectResponseStatusCode")
    GetObjectRetentionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectRetentionOutput", name: "GetObjectRetentionOutput")
    GetObjectRetentionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectRetentionRequest", name: "GetObjectRetentionRequest")
    GetObjectTaggingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectTaggingOutput", name: "GetObjectTaggingOutput", traits: {"smithy.api#xmlName" => "Tagging"})
    GetObjectTaggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectTaggingRequest", name: "GetObjectTaggingRequest")
    GetObjectTorrentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectTorrentOutput", name: "GetObjectTorrentOutput")
    GetObjectTorrentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetObjectTorrentRequest", name: "GetObjectTorrentRequest")
    GetPublicAccessBlockOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetPublicAccessBlockOutput", name: "GetPublicAccessBlockOutput")
    GetPublicAccessBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GetPublicAccessBlockRequest", name: "GetPublicAccessBlockRequest")
    GlacierJobParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#GlacierJobParameters", name: "GlacierJobParameters")
    Grant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Grant", name: "Grant")
    GrantFullControl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#GrantFullControl", name: "GrantFullControl")
    GrantRead = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#GrantRead", name: "GrantRead")
    GrantReadACP = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#GrantReadACP", name: "GrantReadACP")
    GrantWrite = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#GrantWrite", name: "GrantWrite")
    GrantWriteACP = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#GrantWriteACP", name: "GrantWriteACP")
    Grantee = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Grantee", name: "Grantee")
    Grants = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#Grants", name: "Grants")
    HeadBucketOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#HeadBucketOutput", name: "HeadBucketOutput")
    HeadBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#HeadBucketRequest", name: "HeadBucketRequest")
    HeadObjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#HeadObjectOutput", name: "HeadObjectOutput")
    HeadObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#HeadObjectRequest", name: "HeadObjectRequest")
    HostName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#HostName", name: "HostName")
    HttpErrorCodeReturnedEquals = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#HttpErrorCodeReturnedEquals", name: "HttpErrorCodeReturnedEquals")
    HttpRedirectCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#HttpRedirectCode", name: "HttpRedirectCode")
    ID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ID", name: "ID")
    IdempotencyParameterMismatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#IdempotencyParameterMismatch", name: "IdempotencyParameterMismatch", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IfMatch = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#IfMatch", name: "IfMatch")
    IfMatchInitiatedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#IfMatchInitiatedTime", name: "IfMatchInitiatedTime", traits: {"smithy.api#timestampFormat" => "http-date"})
    IfMatchLastModifiedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#IfMatchLastModifiedTime", name: "IfMatchLastModifiedTime", traits: {"smithy.api#timestampFormat" => "http-date"})
    IfMatchSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#IfMatchSize", name: "IfMatchSize")
    IfModifiedSince = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#IfModifiedSince", name: "IfModifiedSince")
    IfNoneMatch = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#IfNoneMatch", name: "IfNoneMatch")
    IfUnmodifiedSince = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#IfUnmodifiedSince", name: "IfUnmodifiedSince")
    IndexDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#IndexDocument", name: "IndexDocument")
    Initiated = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#Initiated", name: "Initiated")
    Initiator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Initiator", name: "Initiator")
    InputSerialization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#InputSerialization", name: "InputSerialization")
    IntelligentTieringAccessTier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#IntelligentTieringAccessTier", name: "IntelligentTieringAccessTier")
    IntelligentTieringAndOperator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#IntelligentTieringAndOperator", name: "IntelligentTieringAndOperator")
    IntelligentTieringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#IntelligentTieringConfiguration", name: "IntelligentTieringConfiguration")
    IntelligentTieringConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#IntelligentTieringConfigurationList", name: "IntelligentTieringConfigurationList")
    IntelligentTieringDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#IntelligentTieringDays", name: "IntelligentTieringDays")
    IntelligentTieringFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#IntelligentTieringFilter", name: "IntelligentTieringFilter")
    IntelligentTieringId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#IntelligentTieringId", name: "IntelligentTieringId")
    IntelligentTieringStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#IntelligentTieringStatus", name: "IntelligentTieringStatus")
    InvalidObjectState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#InvalidObjectState", name: "InvalidObjectState", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    InvalidRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#InvalidRequest", name: "InvalidRequest", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidWriteOffset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#InvalidWriteOffset", name: "InvalidWriteOffset", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InventoryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#InventoryConfiguration", name: "InventoryConfiguration")
    InventoryConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#InventoryConfigurationList", name: "InventoryConfigurationList")
    InventoryConfigurationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#InventoryConfigurationState", name: "InventoryConfigurationState")
    InventoryDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#InventoryDestination", name: "InventoryDestination")
    InventoryEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#InventoryEncryption", name: "InventoryEncryption")
    InventoryFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#InventoryFilter", name: "InventoryFilter")
    InventoryFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#InventoryFormat", name: "InventoryFormat")
    InventoryFrequency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#InventoryFrequency", name: "InventoryFrequency")
    InventoryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#InventoryId", name: "InventoryId")
    InventoryIncludedObjectVersions = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#InventoryIncludedObjectVersions", name: "InventoryIncludedObjectVersions")
    InventoryOptionalField = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#InventoryOptionalField", name: "InventoryOptionalField")
    InventoryOptionalFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#InventoryOptionalFields", name: "InventoryOptionalFields")
    InventoryS3BucketDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#InventoryS3BucketDestination", name: "InventoryS3BucketDestination")
    InventorySchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#InventorySchedule", name: "InventorySchedule")
    InventoryTableConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#InventoryTableConfiguration", name: "InventoryTableConfiguration")
    InventoryTableConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#InventoryTableConfigurationResult", name: "InventoryTableConfigurationResult")
    InventoryTableConfigurationUpdates = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#InventoryTableConfigurationUpdates", name: "InventoryTableConfigurationUpdates")
    IsEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#IsEnabled", name: "IsEnabled")
    IsLatest = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#IsLatest", name: "IsLatest")
    IsPublic = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#IsPublic", name: "IsPublic")
    IsRestoreInProgress = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#IsRestoreInProgress", name: "IsRestoreInProgress")
    IsTruncated = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#IsTruncated", name: "IsTruncated")
    JSONInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#JSONInput", name: "JSONInput")
    JSONOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#JSONOutput", name: "JSONOutput")
    JSONType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#JSONType", name: "JSONType")
    JournalTableConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#JournalTableConfiguration", name: "JournalTableConfiguration")
    JournalTableConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#JournalTableConfigurationResult", name: "JournalTableConfigurationResult")
    JournalTableConfigurationUpdates = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#JournalTableConfigurationUpdates", name: "JournalTableConfigurationUpdates")
    KMSContext = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#KMSContext", name: "KMSContext")
    KeyCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#KeyCount", name: "KeyCount")
    KeyMarker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#KeyMarker", name: "KeyMarker")
    KeyPrefixEquals = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#KeyPrefixEquals", name: "KeyPrefixEquals")
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#KmsKeyArn", name: "KmsKeyArn")
    LambdaFunctionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#LambdaFunctionArn", name: "LambdaFunctionArn")
    LambdaFunctionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#LambdaFunctionConfiguration", name: "LambdaFunctionConfiguration")
    LambdaFunctionConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#LambdaFunctionConfigurationList", name: "LambdaFunctionConfigurationList")
    LastModified = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#LastModified", name: "LastModified")
    LastModifiedTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#LastModifiedTime", name: "LastModifiedTime", traits: {"smithy.api#timestampFormat" => "http-date"})
    LifecycleExpiration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#LifecycleExpiration", name: "LifecycleExpiration")
    LifecycleRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#LifecycleRule", name: "LifecycleRule")
    LifecycleRuleAndOperator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#LifecycleRuleAndOperator", name: "LifecycleRuleAndOperator")
    LifecycleRuleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#LifecycleRuleFilter", name: "LifecycleRuleFilter")
    LifecycleRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#LifecycleRules", name: "LifecycleRules")
    ListBucketAnalyticsConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListBucketAnalyticsConfigurationsOutput", name: "ListBucketAnalyticsConfigurationsOutput", traits: {"smithy.api#xmlName" => "ListBucketAnalyticsConfigurationResult"})
    ListBucketAnalyticsConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListBucketAnalyticsConfigurationsRequest", name: "ListBucketAnalyticsConfigurationsRequest")
    ListBucketIntelligentTieringConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListBucketIntelligentTieringConfigurationsOutput", name: "ListBucketIntelligentTieringConfigurationsOutput")
    ListBucketIntelligentTieringConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListBucketIntelligentTieringConfigurationsRequest", name: "ListBucketIntelligentTieringConfigurationsRequest")
    ListBucketInventoryConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListBucketInventoryConfigurationsOutput", name: "ListBucketInventoryConfigurationsOutput", traits: {"smithy.api#xmlName" => "ListInventoryConfigurationsResult"})
    ListBucketInventoryConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListBucketInventoryConfigurationsRequest", name: "ListBucketInventoryConfigurationsRequest")
    ListBucketMetricsConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListBucketMetricsConfigurationsOutput", name: "ListBucketMetricsConfigurationsOutput", traits: {"smithy.api#xmlName" => "ListMetricsConfigurationsResult"})
    ListBucketMetricsConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListBucketMetricsConfigurationsRequest", name: "ListBucketMetricsConfigurationsRequest")
    ListBucketsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListBucketsOutput", name: "ListBucketsOutput", traits: {"smithy.api#xmlName" => "ListAllMyBucketsResult"})
    ListBucketsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListBucketsRequest", name: "ListBucketsRequest")
    ListDirectoryBucketsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListDirectoryBucketsOutput", name: "ListDirectoryBucketsOutput", traits: {"smithy.api#xmlName" => "ListAllMyDirectoryBucketsResult"})
    ListDirectoryBucketsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListDirectoryBucketsRequest", name: "ListDirectoryBucketsRequest")
    ListMultipartUploadsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListMultipartUploadsOutput", name: "ListMultipartUploadsOutput", traits: {"smithy.api#xmlName" => "ListMultipartUploadsResult"})
    ListMultipartUploadsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListMultipartUploadsRequest", name: "ListMultipartUploadsRequest")
    ListObjectVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListObjectVersionsOutput", name: "ListObjectVersionsOutput", traits: {"smithy.api#xmlName" => "ListVersionsResult"})
    ListObjectVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListObjectVersionsRequest", name: "ListObjectVersionsRequest")
    ListObjectsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListObjectsOutput", name: "ListObjectsOutput", traits: {"smithy.api#xmlName" => "ListBucketResult"})
    ListObjectsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListObjectsRequest", name: "ListObjectsRequest")
    ListObjectsV2Output = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListObjectsV2Output", name: "ListObjectsV2Output", traits: {"smithy.api#xmlName" => "ListBucketResult"})
    ListObjectsV2Request = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListObjectsV2Request", name: "ListObjectsV2Request")
    ListPartsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListPartsOutput", name: "ListPartsOutput", traits: {"smithy.api#xmlName" => "ListPartsResult"})
    ListPartsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ListPartsRequest", name: "ListPartsRequest")
    Location = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Location", name: "Location")
    LocationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#LocationInfo", name: "LocationInfo")
    LocationNameAsString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#LocationNameAsString", name: "LocationNameAsString")
    LocationPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#LocationPrefix", name: "LocationPrefix")
    LocationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#LocationType", name: "LocationType")
    LoggingEnabled = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#LoggingEnabled", name: "LoggingEnabled")
    MFA = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#MFA", name: "MFA")
    MFADelete = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#MFADelete", name: "MFADelete")
    MFADeleteStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#MFADeleteStatus", name: "MFADeleteStatus")
    Marker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Marker", name: "Marker")
    MaxAgeSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#MaxAgeSeconds", name: "MaxAgeSeconds")
    MaxBuckets = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#MaxBuckets", name: "MaxBuckets", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    MaxDirectoryBuckets = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#MaxDirectoryBuckets", name: "MaxDirectoryBuckets", traits: {"smithy.api#range" => {"min" => 0, "max" => 1000}})
    MaxKeys = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#MaxKeys", name: "MaxKeys")
    MaxParts = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#MaxParts", name: "MaxParts")
    MaxUploads = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#MaxUploads", name: "MaxUploads")
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Message", name: "Message")
    Metadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.s3#Metadata", name: "Metadata")
    MetadataConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#MetadataConfiguration", name: "MetadataConfiguration")
    MetadataConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#MetadataConfigurationResult", name: "MetadataConfigurationResult")
    MetadataDirective = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#MetadataDirective", name: "MetadataDirective")
    MetadataEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#MetadataEntry", name: "MetadataEntry")
    MetadataKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#MetadataKey", name: "MetadataKey")
    MetadataTableConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#MetadataTableConfiguration", name: "MetadataTableConfiguration")
    MetadataTableConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#MetadataTableConfigurationResult", name: "MetadataTableConfigurationResult")
    MetadataTableEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#MetadataTableEncryptionConfiguration", name: "MetadataTableEncryptionConfiguration")
    MetadataTableStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#MetadataTableStatus", name: "MetadataTableStatus")
    MetadataValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#MetadataValue", name: "MetadataValue")
    Metrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Metrics", name: "Metrics")
    MetricsAndOperator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#MetricsAndOperator", name: "MetricsAndOperator")
    MetricsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#MetricsConfiguration", name: "MetricsConfiguration")
    MetricsConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#MetricsConfigurationList", name: "MetricsConfigurationList")
    MetricsFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.s3#MetricsFilter", name: "MetricsFilter")
    MetricsId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#MetricsId", name: "MetricsId")
    MetricsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#MetricsStatus", name: "MetricsStatus")
    Minutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#Minutes", name: "Minutes")
    MissingMeta = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#MissingMeta", name: "MissingMeta")
    MpuObjectSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#MpuObjectSize", name: "MpuObjectSize")
    MultipartUpload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#MultipartUpload", name: "MultipartUpload")
    MultipartUploadId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#MultipartUploadId", name: "MultipartUploadId")
    MultipartUploadList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#MultipartUploadList", name: "MultipartUploadList")
    NextKeyMarker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#NextKeyMarker", name: "NextKeyMarker")
    NextMarker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#NextMarker", name: "NextMarker")
    NextPartNumberMarker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#NextPartNumberMarker", name: "NextPartNumberMarker")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#NextToken", name: "NextToken")
    NextUploadIdMarker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#NextUploadIdMarker", name: "NextUploadIdMarker")
    NextVersionIdMarker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#NextVersionIdMarker", name: "NextVersionIdMarker")
    NoSuchBucket = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#NoSuchBucket", name: "NoSuchBucket", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchKey = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#NoSuchKey", name: "NoSuchKey", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchUpload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#NoSuchUpload", name: "NoSuchUpload", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoncurrentVersionExpiration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#NoncurrentVersionExpiration", name: "NoncurrentVersionExpiration")
    NoncurrentVersionTransition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#NoncurrentVersionTransition", name: "NoncurrentVersionTransition")
    NoncurrentVersionTransitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#NoncurrentVersionTransitionList", name: "NoncurrentVersionTransitionList")
    NotFound = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#NotFound", name: "NotFound", traits: {"smithy.api#error" => "client"})
    NotificationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#NotificationConfiguration", name: "NotificationConfiguration")
    NotificationConfigurationFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#NotificationConfigurationFilter", name: "NotificationConfigurationFilter")
    NotificationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#NotificationId", name: "NotificationId")
    Object = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Object", name: "Object")
    ObjectAlreadyInActiveTierError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ObjectAlreadyInActiveTierError", name: "ObjectAlreadyInActiveTierError", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ObjectAttributes = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ObjectAttributes", name: "ObjectAttributes")
    ObjectAttributesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#ObjectAttributesList", name: "ObjectAttributesList")
    ObjectCannedACL = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ObjectCannedACL", name: "ObjectCannedACL")
    ObjectIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ObjectIdentifier", name: "ObjectIdentifier")
    ObjectIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#ObjectIdentifierList", name: "ObjectIdentifierList")
    ObjectKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ObjectKey", name: "ObjectKey", traits: {"smithy.api#length" => {"min" => 1}})
    ObjectList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#ObjectList", name: "ObjectList")
    ObjectLockConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ObjectLockConfiguration", name: "ObjectLockConfiguration")
    ObjectLockEnabled = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ObjectLockEnabled", name: "ObjectLockEnabled")
    ObjectLockEnabledForBucket = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#ObjectLockEnabledForBucket", name: "ObjectLockEnabledForBucket")
    ObjectLockLegalHold = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ObjectLockLegalHold", name: "ObjectLockLegalHold")
    ObjectLockLegalHoldStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ObjectLockLegalHoldStatus", name: "ObjectLockLegalHoldStatus")
    ObjectLockMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ObjectLockMode", name: "ObjectLockMode")
    ObjectLockRetainUntilDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#ObjectLockRetainUntilDate", name: "ObjectLockRetainUntilDate", traits: {"smithy.api#timestampFormat" => "date-time"})
    ObjectLockRetention = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ObjectLockRetention", name: "ObjectLockRetention")
    ObjectLockRetentionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ObjectLockRetentionMode", name: "ObjectLockRetentionMode")
    ObjectLockRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ObjectLockRule", name: "ObjectLockRule")
    ObjectLockToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ObjectLockToken", name: "ObjectLockToken")
    ObjectNotInActiveTierError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ObjectNotInActiveTierError", name: "ObjectNotInActiveTierError", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ObjectOwnership = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ObjectOwnership", name: "ObjectOwnership")
    ObjectPart = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ObjectPart", name: "ObjectPart")
    ObjectSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#ObjectSize", name: "ObjectSize")
    ObjectSizeGreaterThanBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#ObjectSizeGreaterThanBytes", name: "ObjectSizeGreaterThanBytes")
    ObjectSizeLessThanBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#ObjectSizeLessThanBytes", name: "ObjectSizeLessThanBytes")
    ObjectStorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ObjectStorageClass", name: "ObjectStorageClass")
    ObjectVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ObjectVersion", name: "ObjectVersion")
    ObjectVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ObjectVersionId", name: "ObjectVersionId")
    ObjectVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#ObjectVersionList", name: "ObjectVersionList")
    ObjectVersionStorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ObjectVersionStorageClass", name: "ObjectVersionStorageClass")
    OptionalObjectAttributes = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#OptionalObjectAttributes", name: "OptionalObjectAttributes")
    OptionalObjectAttributesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#OptionalObjectAttributesList", name: "OptionalObjectAttributesList")
    OutputLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#OutputLocation", name: "OutputLocation")
    OutputSerialization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#OutputSerialization", name: "OutputSerialization")
    Owner = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Owner", name: "Owner")
    OwnerOverride = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#OwnerOverride", name: "OwnerOverride")
    OwnershipControls = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#OwnershipControls", name: "OwnershipControls")
    OwnershipControlsRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#OwnershipControlsRule", name: "OwnershipControlsRule")
    OwnershipControlsRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#OwnershipControlsRules", name: "OwnershipControlsRules")
    ParquetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ParquetInput", name: "ParquetInput")
    Part = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Part", name: "Part")
    PartNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#PartNumber", name: "PartNumber")
    PartNumberMarker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#PartNumberMarker", name: "PartNumberMarker")
    PartitionDateSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#PartitionDateSource", name: "PartitionDateSource")
    PartitionedPrefix = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PartitionedPrefix", name: "PartitionedPrefix", traits: {"smithy.api#xmlName" => "PartitionedPrefix"})
    Parts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#Parts", name: "Parts")
    PartsCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#PartsCount", name: "PartsCount")
    PartsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#PartsList", name: "PartsList")
    Payer = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#Payer", name: "Payer")
    Permission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#Permission", name: "Permission")
    Policy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Policy", name: "Policy")
    PolicyStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PolicyStatus", name: "PolicyStatus")
    Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Prefix", name: "Prefix")
    Priority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#Priority", name: "Priority")
    Progress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Progress", name: "Progress")
    ProgressEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ProgressEvent", name: "ProgressEvent")
    Protocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#Protocol", name: "Protocol")
    PublicAccessBlockConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PublicAccessBlockConfiguration", name: "PublicAccessBlockConfiguration")
    PutBucketAccelerateConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketAccelerateConfigurationRequest", name: "PutBucketAccelerateConfigurationRequest")
    PutBucketAclRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketAclRequest", name: "PutBucketAclRequest")
    PutBucketAnalyticsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketAnalyticsConfigurationRequest", name: "PutBucketAnalyticsConfigurationRequest")
    PutBucketCorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketCorsRequest", name: "PutBucketCorsRequest")
    PutBucketEncryptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketEncryptionRequest", name: "PutBucketEncryptionRequest")
    PutBucketIntelligentTieringConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketIntelligentTieringConfigurationRequest", name: "PutBucketIntelligentTieringConfigurationRequest")
    PutBucketInventoryConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketInventoryConfigurationRequest", name: "PutBucketInventoryConfigurationRequest")
    PutBucketLifecycleConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketLifecycleConfigurationOutput", name: "PutBucketLifecycleConfigurationOutput")
    PutBucketLifecycleConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketLifecycleConfigurationRequest", name: "PutBucketLifecycleConfigurationRequest")
    PutBucketLoggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketLoggingRequest", name: "PutBucketLoggingRequest")
    PutBucketMetricsConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketMetricsConfigurationRequest", name: "PutBucketMetricsConfigurationRequest")
    PutBucketNotificationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketNotificationConfigurationRequest", name: "PutBucketNotificationConfigurationRequest")
    PutBucketOwnershipControlsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketOwnershipControlsRequest", name: "PutBucketOwnershipControlsRequest")
    PutBucketPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketPolicyRequest", name: "PutBucketPolicyRequest")
    PutBucketReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketReplicationRequest", name: "PutBucketReplicationRequest")
    PutBucketRequestPaymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketRequestPaymentRequest", name: "PutBucketRequestPaymentRequest")
    PutBucketTaggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketTaggingRequest", name: "PutBucketTaggingRequest")
    PutBucketVersioningRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketVersioningRequest", name: "PutBucketVersioningRequest")
    PutBucketWebsiteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutBucketWebsiteRequest", name: "PutBucketWebsiteRequest")
    PutObjectAclOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutObjectAclOutput", name: "PutObjectAclOutput")
    PutObjectAclRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutObjectAclRequest", name: "PutObjectAclRequest")
    PutObjectLegalHoldOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutObjectLegalHoldOutput", name: "PutObjectLegalHoldOutput")
    PutObjectLegalHoldRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutObjectLegalHoldRequest", name: "PutObjectLegalHoldRequest")
    PutObjectLockConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutObjectLockConfigurationOutput", name: "PutObjectLockConfigurationOutput")
    PutObjectLockConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutObjectLockConfigurationRequest", name: "PutObjectLockConfigurationRequest")
    PutObjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutObjectOutput", name: "PutObjectOutput")
    PutObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutObjectRequest", name: "PutObjectRequest")
    PutObjectRetentionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutObjectRetentionOutput", name: "PutObjectRetentionOutput")
    PutObjectRetentionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutObjectRetentionRequest", name: "PutObjectRetentionRequest")
    PutObjectTaggingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutObjectTaggingOutput", name: "PutObjectTaggingOutput")
    PutObjectTaggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutObjectTaggingRequest", name: "PutObjectTaggingRequest")
    PutPublicAccessBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#PutPublicAccessBlockRequest", name: "PutPublicAccessBlockRequest")
    QueueArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#QueueArn", name: "QueueArn")
    QueueConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#QueueConfiguration", name: "QueueConfiguration")
    QueueConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#QueueConfigurationList", name: "QueueConfigurationList")
    Quiet = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#Quiet", name: "Quiet")
    QuoteCharacter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#QuoteCharacter", name: "QuoteCharacter")
    QuoteEscapeCharacter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#QuoteEscapeCharacter", name: "QuoteEscapeCharacter")
    QuoteFields = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#QuoteFields", name: "QuoteFields")
    Range = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Range", name: "Range")
    RecordDelimiter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#RecordDelimiter", name: "RecordDelimiter")
    RecordExpiration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#RecordExpiration", name: "RecordExpiration")
    RecordExpirationDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#RecordExpirationDays", name: "RecordExpirationDays")
    RecordsEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#RecordsEvent", name: "RecordsEvent")
    Redirect = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Redirect", name: "Redirect")
    RedirectAllRequestsTo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#RedirectAllRequestsTo", name: "RedirectAllRequestsTo")
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Region", name: "Region", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    RenameObjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#RenameObjectOutput", name: "RenameObjectOutput")
    RenameObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#RenameObjectRequest", name: "RenameObjectRequest")
    RenameSource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#RenameSource", name: "RenameSource", traits: {"smithy.api#pattern" => "^\\/?.+\\/.+$"})
    RenameSourceIfMatch = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#RenameSourceIfMatch", name: "RenameSourceIfMatch")
    RenameSourceIfModifiedSince = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#RenameSourceIfModifiedSince", name: "RenameSourceIfModifiedSince", traits: {"smithy.api#timestampFormat" => "http-date"})
    RenameSourceIfNoneMatch = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#RenameSourceIfNoneMatch", name: "RenameSourceIfNoneMatch")
    RenameSourceIfUnmodifiedSince = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#RenameSourceIfUnmodifiedSince", name: "RenameSourceIfUnmodifiedSince", traits: {"smithy.api#timestampFormat" => "http-date"})
    ReplaceKeyPrefixWith = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ReplaceKeyPrefixWith", name: "ReplaceKeyPrefixWith")
    ReplaceKeyWith = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ReplaceKeyWith", name: "ReplaceKeyWith")
    ReplicaKmsKeyID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ReplicaKmsKeyID", name: "ReplicaKmsKeyID")
    ReplicaModifications = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ReplicaModifications", name: "ReplicaModifications")
    ReplicaModificationsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ReplicaModificationsStatus", name: "ReplicaModificationsStatus")
    ReplicationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ReplicationConfiguration", name: "ReplicationConfiguration")
    ReplicationRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ReplicationRule", name: "ReplicationRule")
    ReplicationRuleAndOperator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ReplicationRuleAndOperator", name: "ReplicationRuleAndOperator")
    ReplicationRuleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ReplicationRuleFilter", name: "ReplicationRuleFilter")
    ReplicationRuleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ReplicationRuleStatus", name: "ReplicationRuleStatus")
    ReplicationRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#ReplicationRules", name: "ReplicationRules")
    ReplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ReplicationStatus", name: "ReplicationStatus")
    ReplicationTime = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ReplicationTime", name: "ReplicationTime")
    ReplicationTimeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ReplicationTimeStatus", name: "ReplicationTimeStatus")
    ReplicationTimeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ReplicationTimeValue", name: "ReplicationTimeValue")
    RequestCharged = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#RequestCharged", name: "RequestCharged")
    RequestPayer = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#RequestPayer", name: "RequestPayer")
    RequestPaymentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#RequestPaymentConfiguration", name: "RequestPaymentConfiguration")
    RequestProgress = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#RequestProgress", name: "RequestProgress")
    RequestRoute = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#RequestRoute", name: "RequestRoute")
    RequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#RequestToken", name: "RequestToken")
    ResponseCacheControl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ResponseCacheControl", name: "ResponseCacheControl")
    ResponseContentDisposition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ResponseContentDisposition", name: "ResponseContentDisposition")
    ResponseContentEncoding = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ResponseContentEncoding", name: "ResponseContentEncoding")
    ResponseContentLanguage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ResponseContentLanguage", name: "ResponseContentLanguage")
    ResponseContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#ResponseContentType", name: "ResponseContentType")
    ResponseExpires = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#ResponseExpires", name: "ResponseExpires", traits: {"smithy.api#timestampFormat" => "http-date"})
    Restore = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Restore", name: "Restore")
    RestoreExpiryDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#RestoreExpiryDate", name: "RestoreExpiryDate")
    RestoreObjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#RestoreObjectOutput", name: "RestoreObjectOutput")
    RestoreObjectRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#RestoreObjectRequest", name: "RestoreObjectRequest")
    RestoreOutputPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#RestoreOutputPath", name: "RestoreOutputPath")
    RestoreRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#RestoreRequest", name: "RestoreRequest")
    RestoreRequestType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#RestoreRequestType", name: "RestoreRequestType")
    RestoreStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#RestoreStatus", name: "RestoreStatus")
    Role = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Role", name: "Role")
    RoutingRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#RoutingRule", name: "RoutingRule")
    RoutingRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#RoutingRules", name: "RoutingRules")
    S3KeyFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#S3KeyFilter", name: "S3KeyFilter")
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#S3Location", name: "S3Location")
    S3RegionalOrS3ExpressBucketArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#S3RegionalOrS3ExpressBucketArnString", name: "S3RegionalOrS3ExpressBucketArnString", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:[^:]+:(s3|s3express):"})
    S3TablesArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#S3TablesArn", name: "S3TablesArn")
    S3TablesBucketArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#S3TablesBucketArn", name: "S3TablesBucketArn")
    S3TablesBucketType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#S3TablesBucketType", name: "S3TablesBucketType")
    S3TablesDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#S3TablesDestination", name: "S3TablesDestination")
    S3TablesDestinationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#S3TablesDestinationResult", name: "S3TablesDestinationResult")
    S3TablesName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#S3TablesName", name: "S3TablesName")
    S3TablesNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#S3TablesNamespace", name: "S3TablesNamespace")
    SSECustomerAlgorithm = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#SSECustomerAlgorithm", name: "SSECustomerAlgorithm")
    SSECustomerKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#SSECustomerKey", name: "SSECustomerKey", traits: {"smithy.api#sensitive" => {}})
    SSECustomerKeyMD5 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#SSECustomerKeyMD5", name: "SSECustomerKeyMD5")
    SSEKMS = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#SSEKMS", name: "SSEKMS", traits: {"smithy.api#xmlName" => "SSE-KMS"})
    SSEKMSEncryptionContext = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#SSEKMSEncryptionContext", name: "SSEKMSEncryptionContext", traits: {"smithy.api#sensitive" => {}})
    SSEKMSKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#SSEKMSKeyId", name: "SSEKMSKeyId", traits: {"smithy.api#sensitive" => {}})
    SSES3 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#SSES3", name: "SSES3", traits: {"smithy.api#xmlName" => "SSE-S3"})
    ScanRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ScanRange", name: "ScanRange")
    SelectObjectContentEventStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.s3#SelectObjectContentEventStream", name: "SelectObjectContentEventStream", traits: {"smithy.api#streaming" => {}})
    SelectObjectContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#SelectObjectContentOutput", name: "SelectObjectContentOutput")
    SelectObjectContentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#SelectObjectContentRequest", name: "SelectObjectContentRequest")
    SelectParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#SelectParameters", name: "SelectParameters")
    ServerSideEncryption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#ServerSideEncryption", name: "ServerSideEncryption")
    ServerSideEncryptionByDefault = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ServerSideEncryptionByDefault", name: "ServerSideEncryptionByDefault")
    ServerSideEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ServerSideEncryptionConfiguration", name: "ServerSideEncryptionConfiguration")
    ServerSideEncryptionRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#ServerSideEncryptionRule", name: "ServerSideEncryptionRule")
    ServerSideEncryptionRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#ServerSideEncryptionRules", name: "ServerSideEncryptionRules")
    SessionCredentialValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#SessionCredentialValue", name: "SessionCredentialValue", traits: {"smithy.api#sensitive" => {}})
    SessionCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#SessionCredentials", name: "SessionCredentials")
    SessionExpiration = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3#SessionExpiration", name: "SessionExpiration")
    SessionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#SessionMode", name: "SessionMode")
    Setting = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#Setting", name: "Setting")
    SimplePrefix = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#SimplePrefix", name: "SimplePrefix", traits: {"smithy.api#xmlName" => "SimplePrefix"})
    Size = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#Size", name: "Size")
    SkipValidation = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3#SkipValidation", name: "SkipValidation")
    SourceSelectionCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#SourceSelectionCriteria", name: "SourceSelectionCriteria")
    SseKmsEncryptedObjects = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#SseKmsEncryptedObjects", name: "SseKmsEncryptedObjects")
    SseKmsEncryptedObjectsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#SseKmsEncryptedObjectsStatus", name: "SseKmsEncryptedObjectsStatus")
    Start = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#Start", name: "Start")
    StartAfter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#StartAfter", name: "StartAfter")
    Stats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Stats", name: "Stats")
    StatsEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#StatsEvent", name: "StatsEvent")
    StorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#StorageClass", name: "StorageClass")
    StorageClassAnalysis = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#StorageClassAnalysis", name: "StorageClassAnalysis")
    StorageClassAnalysisDataExport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#StorageClassAnalysisDataExport", name: "StorageClassAnalysisDataExport")
    StorageClassAnalysisSchemaVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#StorageClassAnalysisSchemaVersion", name: "StorageClassAnalysisSchemaVersion")
    StreamingBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.s3#StreamingBlob", name: "StreamingBlob", traits: {"smithy.api#streaming" => {}})
    Suffix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Suffix", name: "Suffix")
    TableSseAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#TableSseAlgorithm", name: "TableSseAlgorithm")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Tag", name: "Tag")
    TagCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#TagCount", name: "TagCount")
    TagSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#TagSet", name: "TagSet")
    Tagging = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Tagging", name: "Tagging")
    TaggingDirective = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#TaggingDirective", name: "TaggingDirective")
    TaggingHeader = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#TaggingHeader", name: "TaggingHeader")
    TargetBucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#TargetBucket", name: "TargetBucket")
    TargetGrant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#TargetGrant", name: "TargetGrant")
    TargetGrants = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#TargetGrants", name: "TargetGrants")
    TargetObjectKeyFormat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#TargetObjectKeyFormat", name: "TargetObjectKeyFormat")
    TargetPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#TargetPrefix", name: "TargetPrefix")
    Tier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#Tier", name: "Tier")
    Tiering = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Tiering", name: "Tiering")
    TieringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#TieringList", name: "TieringList")
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Token", name: "Token")
    TooManyParts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#TooManyParts", name: "TooManyParts", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TopicArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#TopicArn", name: "TopicArn")
    TopicConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#TopicConfiguration", name: "TopicConfiguration")
    TopicConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#TopicConfigurationList", name: "TopicConfigurationList")
    Transition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#Transition", name: "Transition")
    TransitionDefaultMinimumObjectSize = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#TransitionDefaultMinimumObjectSize", name: "TransitionDefaultMinimumObjectSize")
    TransitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#TransitionList", name: "TransitionList")
    TransitionStorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#TransitionStorageClass", name: "TransitionStorageClass")
    Type = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3#Type", name: "Type")
    URI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#URI", name: "URI")
    UpdateBucketMetadataInventoryTableConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#UpdateBucketMetadataInventoryTableConfigurationRequest", name: "UpdateBucketMetadataInventoryTableConfigurationRequest")
    UpdateBucketMetadataJournalTableConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#UpdateBucketMetadataJournalTableConfigurationRequest", name: "UpdateBucketMetadataJournalTableConfigurationRequest")
    UploadIdMarker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#UploadIdMarker", name: "UploadIdMarker")
    UploadPartCopyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#UploadPartCopyOutput", name: "UploadPartCopyOutput")
    UploadPartCopyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#UploadPartCopyRequest", name: "UploadPartCopyRequest")
    UploadPartOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#UploadPartOutput", name: "UploadPartOutput")
    UploadPartRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#UploadPartRequest", name: "UploadPartRequest")
    UserMetadata = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3#UserMetadata", name: "UserMetadata")
    Value = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#Value", name: "Value")
    VersionCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#VersionCount", name: "VersionCount")
    VersionIdMarker = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#VersionIdMarker", name: "VersionIdMarker")
    VersioningConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#VersioningConfiguration", name: "VersioningConfiguration")
    WebsiteConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#WebsiteConfiguration", name: "WebsiteConfiguration")
    WebsiteRedirectLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3#WebsiteRedirectLocation", name: "WebsiteRedirectLocation")
    WriteGetObjectResponseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3#WriteGetObjectResponseRequest", name: "WriteGetObjectResponseRequest")
    WriteOffsetBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#WriteOffsetBytes", name: "WriteOffsetBytes")
    Years = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3#Years", name: "Years")

    AbortIncompleteMultipartUpload.add_member(:days_after_initiation, ::Smithy::Schema::Shapes::MemberShape.new(target: DaysAfterInitiation, name: "DaysAfterInitiation"))
    AbortIncompleteMultipartUpload.type = Types::AbortIncompleteMultipartUpload
    AbortMultipartUploadOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    AbortMultipartUploadOutput.type = Types::AbortMultipartUploadOutput
    AbortMultipartUploadRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    AbortMultipartUploadRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Key"}}))
    AbortMultipartUploadRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MultipartUploadId, name: "UploadId", traits: {"smithy.api#httpQuery" => "uploadId", "smithy.api#required" => {}}))
    AbortMultipartUploadRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    AbortMultipartUploadRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    AbortMultipartUploadRequest.add_member(:if_match_initiated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IfMatchInitiatedTime, name: "IfMatchInitiatedTime", traits: {"smithy.api#httpHeader" => "x-amz-if-match-initiated-time"}))
    AbortMultipartUploadRequest.type = Types::AbortMultipartUploadRequest
    AccelerateConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketAccelerateStatus, name: "Status"))
    AccelerateConfiguration.type = Types::AccelerateConfiguration
    AccessControlPolicy.add_member(:grants, ::Smithy::Schema::Shapes::MemberShape.new(target: Grants, name: "Grants", traits: {"smithy.api#xmlName" => "AccessControlList"}))
    AccessControlPolicy.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner"))
    AccessControlPolicy.type = Types::AccessControlPolicy
    AccessControlTranslation.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerOverride, name: "Owner", traits: {"smithy.api#required" => {}}))
    AccessControlTranslation.type = Types::AccessControlTranslation
    AllowedHeaders.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedHeader, name: "member")
    AllowedMethods.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedMethod, name: "member")
    AllowedOrigins.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedOrigin, name: "member")
    AnalyticsAndOperator.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    AnalyticsAndOperator.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSet, name: "Tags", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Tag"}))
    AnalyticsAndOperator.type = Types::AnalyticsAndOperator
    AnalyticsConfiguration.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsId, name: "Id", traits: {"smithy.api#required" => {}}))
    AnalyticsConfiguration.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsFilter, name: "Filter"))
    AnalyticsConfiguration.add_member(:storage_class_analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClassAnalysis, name: "StorageClassAnalysis", traits: {"smithy.api#required" => {}}))
    AnalyticsConfiguration.type = Types::AnalyticsConfiguration
    AnalyticsConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsConfiguration, name: "member")
    AnalyticsExportDestination.add_member(:s3_bucket_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsS3BucketDestination, name: "S3BucketDestination", traits: {"smithy.api#required" => {}}))
    AnalyticsExportDestination.type = Types::AnalyticsExportDestination
    AnalyticsFilter.add_member(:prefix, Types::AnalyticsFilter::Prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    AnalyticsFilter.add_member(:tag, Types::AnalyticsFilter::Tag, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "Tag"))
    AnalyticsFilter.add_member(:and, Types::AnalyticsFilter::And, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsAndOperator, name: "And"))
    AnalyticsFilter.add_member(:unknown, Types::AnalyticsFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AnalyticsFilter.type = Types::AnalyticsFilter
    AnalyticsS3BucketDestination.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsS3ExportFileFormat, name: "Format", traits: {"smithy.api#required" => {}}))
    AnalyticsS3BucketDestination.add_member(:bucket_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "BucketAccountId"))
    AnalyticsS3BucketDestination.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#required" => {}}))
    AnalyticsS3BucketDestination.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    AnalyticsS3BucketDestination.type = Types::AnalyticsS3BucketDestination
    AnalyticsS3ExportFileFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    ArchiveStatus.add_member(:archive_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVE_ACCESS", traits: {"smithy.api#enumValue" => "ARCHIVE_ACCESS"}))
    ArchiveStatus.add_member(:deep_archive_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEEP_ARCHIVE_ACCESS", traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE_ACCESS"}))
    Bucket.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Name"))
    Bucket.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationDate, name: "CreationDate"))
    Bucket.add_member(:bucket_region, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketRegion, name: "BucketRegion"))
    Bucket.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3RegionalOrS3ExpressBucketArnString, name: "BucketArn"))
    Bucket.type = Types::Bucket
    BucketAccelerateStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    BucketAccelerateStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Suspended", traits: {"smithy.api#enumValue" => "Suspended"}))
    BucketAlreadyExists.type = Types::BucketAlreadyExists
    BucketAlreadyOwnedByYou.type = Types::BucketAlreadyOwnedByYou
    BucketCannedACL.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "private", traits: {"smithy.api#enumValue" => "private"}))
    BucketCannedACL.add_member(:public_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "public_read", traits: {"smithy.api#enumValue" => "public-read"}))
    BucketCannedACL.add_member(:public_read_write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "public_read_write", traits: {"smithy.api#enumValue" => "public-read-write"}))
    BucketCannedACL.add_member(:authenticated_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "authenticated_read", traits: {"smithy.api#enumValue" => "authenticated-read"}))
    BucketInfo.add_member(:data_redundancy, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRedundancy, name: "DataRedundancy"))
    BucketInfo.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketType, name: "Type"))
    BucketInfo.type = Types::BucketInfo
    BucketLifecycleConfiguration.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleRules, name: "Rules", traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Rule"}))
    BucketLifecycleConfiguration.type = Types::BucketLifecycleConfiguration
    BucketLocationConstraint.add_member(:af_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "af_south_1", traits: {"smithy.api#enumValue" => "af-south-1"}))
    BucketLocationConstraint.add_member(:ap_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ap_east_1", traits: {"smithy.api#enumValue" => "ap-east-1"}))
    BucketLocationConstraint.add_member(:ap_northeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ap_northeast_1", traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    BucketLocationConstraint.add_member(:ap_northeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ap_northeast_2", traits: {"smithy.api#enumValue" => "ap-northeast-2"}))
    BucketLocationConstraint.add_member(:ap_northeast_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ap_northeast_3", traits: {"smithy.api#enumValue" => "ap-northeast-3"}))
    BucketLocationConstraint.add_member(:ap_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ap_south_1", traits: {"smithy.api#enumValue" => "ap-south-1"}))
    BucketLocationConstraint.add_member(:ap_south_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ap_south_2", traits: {"smithy.api#enumValue" => "ap-south-2"}))
    BucketLocationConstraint.add_member(:ap_southeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ap_southeast_1", traits: {"smithy.api#enumValue" => "ap-southeast-1"}))
    BucketLocationConstraint.add_member(:ap_southeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ap_southeast_2", traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    BucketLocationConstraint.add_member(:ap_southeast_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ap_southeast_3", traits: {"smithy.api#enumValue" => "ap-southeast-3"}))
    BucketLocationConstraint.add_member(:ap_southeast_4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ap_southeast_4", traits: {"smithy.api#enumValue" => "ap-southeast-4"}))
    BucketLocationConstraint.add_member(:ap_southeast_5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ap_southeast_5", traits: {"smithy.api#enumValue" => "ap-southeast-5"}))
    BucketLocationConstraint.add_member(:ca_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ca_central_1", traits: {"smithy.api#enumValue" => "ca-central-1"}))
    BucketLocationConstraint.add_member(:cn_north_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cn_north_1", traits: {"smithy.api#enumValue" => "cn-north-1"}))
    BucketLocationConstraint.add_member(:cn_northwest_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cn_northwest_1", traits: {"smithy.api#enumValue" => "cn-northwest-1"}))
    BucketLocationConstraint.add_member(:eu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU", traits: {"smithy.api#enumValue" => "EU"}))
    BucketLocationConstraint.add_member(:eu_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "eu_central_1", traits: {"smithy.api#enumValue" => "eu-central-1"}))
    BucketLocationConstraint.add_member(:eu_central_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "eu_central_2", traits: {"smithy.api#enumValue" => "eu-central-2"}))
    BucketLocationConstraint.add_member(:eu_north_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "eu_north_1", traits: {"smithy.api#enumValue" => "eu-north-1"}))
    BucketLocationConstraint.add_member(:eu_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "eu_south_1", traits: {"smithy.api#enumValue" => "eu-south-1"}))
    BucketLocationConstraint.add_member(:eu_south_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "eu_south_2", traits: {"smithy.api#enumValue" => "eu-south-2"}))
    BucketLocationConstraint.add_member(:eu_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "eu_west_1", traits: {"smithy.api#enumValue" => "eu-west-1"}))
    BucketLocationConstraint.add_member(:eu_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "eu_west_2", traits: {"smithy.api#enumValue" => "eu-west-2"}))
    BucketLocationConstraint.add_member(:eu_west_3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "eu_west_3", traits: {"smithy.api#enumValue" => "eu-west-3"}))
    BucketLocationConstraint.add_member(:il_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "il_central_1", traits: {"smithy.api#enumValue" => "il-central-1"}))
    BucketLocationConstraint.add_member(:me_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "me_central_1", traits: {"smithy.api#enumValue" => "me-central-1"}))
    BucketLocationConstraint.add_member(:me_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "me_south_1", traits: {"smithy.api#enumValue" => "me-south-1"}))
    BucketLocationConstraint.add_member(:sa_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "sa_east_1", traits: {"smithy.api#enumValue" => "sa-east-1"}))
    BucketLocationConstraint.add_member(:us_east_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "us_east_2", traits: {"smithy.api#enumValue" => "us-east-2"}))
    BucketLocationConstraint.add_member(:us_gov_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "us_gov_east_1", traits: {"smithy.api#enumValue" => "us-gov-east-1"}))
    BucketLocationConstraint.add_member(:us_gov_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "us_gov_west_1", traits: {"smithy.api#enumValue" => "us-gov-west-1"}))
    BucketLocationConstraint.add_member(:us_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "us_west_1", traits: {"smithy.api#enumValue" => "us-west-1"}))
    BucketLocationConstraint.add_member(:us_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "us_west_2", traits: {"smithy.api#enumValue" => "us-west-2"}))
    BucketLoggingStatus.add_member(:logging_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingEnabled, name: "LoggingEnabled"))
    BucketLoggingStatus.type = Types::BucketLoggingStatus
    BucketLogsPermission.add_member(:full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_CONTROL", traits: {"smithy.api#enumValue" => "FULL_CONTROL"}))
    BucketLogsPermission.add_member(:read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ", traits: {"smithy.api#enumValue" => "READ"}))
    BucketLogsPermission.add_member(:write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WRITE", traits: {"smithy.api#enumValue" => "WRITE"}))
    BucketType.add_member(:directory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Directory", traits: {"smithy.api#enumValue" => "Directory"}))
    BucketVersioningStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    BucketVersioningStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Suspended", traits: {"smithy.api#enumValue" => "Suspended"}))
    Buckets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Bucket, name: "member", traits: {"smithy.api#xmlName" => "Bucket"})
    CORSConfiguration.add_member(:cors_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: CORSRules, name: "CORSRules", traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "CORSRule"}))
    CORSConfiguration.type = Types::CORSConfiguration
    CORSRule.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "ID"))
    CORSRule.add_member(:allowed_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedHeaders, name: "AllowedHeaders", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "AllowedHeader"}))
    CORSRule.add_member(:allowed_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedMethods, name: "AllowedMethods", traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "AllowedMethod"}))
    CORSRule.add_member(:allowed_origins, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedOrigins, name: "AllowedOrigins", traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "AllowedOrigin"}))
    CORSRule.add_member(:expose_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: ExposeHeaders, name: "ExposeHeaders", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "ExposeHeader"}))
    CORSRule.add_member(:max_age_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxAgeSeconds, name: "MaxAgeSeconds"))
    CORSRule.type = Types::CORSRule
    CORSRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CORSRule, name: "member")
    CSVInput.add_member(:file_header_info, ::Smithy::Schema::Shapes::MemberShape.new(target: FileHeaderInfo, name: "FileHeaderInfo"))
    CSVInput.add_member(:comments, ::Smithy::Schema::Shapes::MemberShape.new(target: Comments, name: "Comments"))
    CSVInput.add_member(:quote_escape_character, ::Smithy::Schema::Shapes::MemberShape.new(target: QuoteEscapeCharacter, name: "QuoteEscapeCharacter"))
    CSVInput.add_member(:record_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordDelimiter, name: "RecordDelimiter"))
    CSVInput.add_member(:field_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldDelimiter, name: "FieldDelimiter"))
    CSVInput.add_member(:quote_character, ::Smithy::Schema::Shapes::MemberShape.new(target: QuoteCharacter, name: "QuoteCharacter"))
    CSVInput.add_member(:allow_quoted_record_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowQuotedRecordDelimiter, name: "AllowQuotedRecordDelimiter"))
    CSVInput.type = Types::CSVInput
    CSVOutput.add_member(:quote_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: QuoteFields, name: "QuoteFields"))
    CSVOutput.add_member(:quote_escape_character, ::Smithy::Schema::Shapes::MemberShape.new(target: QuoteEscapeCharacter, name: "QuoteEscapeCharacter"))
    CSVOutput.add_member(:record_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordDelimiter, name: "RecordDelimiter"))
    CSVOutput.add_member(:field_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldDelimiter, name: "FieldDelimiter"))
    CSVOutput.add_member(:quote_character, ::Smithy::Schema::Shapes::MemberShape.new(target: QuoteCharacter, name: "QuoteCharacter"))
    CSVOutput.type = Types::CSVOutput
    Checksum.add_member(:checksum_crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32, name: "ChecksumCRC32"))
    Checksum.add_member(:checksum_crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32C, name: "ChecksumCRC32C"))
    Checksum.add_member(:checksum_crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC64NVME, name: "ChecksumCRC64NVME"))
    Checksum.add_member(:checksum_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA1, name: "ChecksumSHA1"))
    Checksum.add_member(:checksum_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA256, name: "ChecksumSHA256"))
    Checksum.add_member(:checksum_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumType, name: "ChecksumType"))
    Checksum.type = Types::Checksum
    ChecksumAlgorithm.add_member(:crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRC32", traits: {"smithy.api#enumValue" => "CRC32"}))
    ChecksumAlgorithm.add_member(:crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRC32C", traits: {"smithy.api#enumValue" => "CRC32C"}))
    ChecksumAlgorithm.add_member(:sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA1", traits: {"smithy.api#enumValue" => "SHA1"}))
    ChecksumAlgorithm.add_member(:sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA256", traits: {"smithy.api#enumValue" => "SHA256"}))
    ChecksumAlgorithm.add_member(:crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRC64NVME", traits: {"smithy.api#enumValue" => "CRC64NVME"}))
    ChecksumAlgorithmList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "member")
    ChecksumMode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ChecksumType.add_member(:composite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPOSITE", traits: {"smithy.api#enumValue" => "COMPOSITE"}))
    ChecksumType.add_member(:full_object, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_OBJECT", traits: {"smithy.api#enumValue" => "FULL_OBJECT"}))
    CommonPrefix.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    CommonPrefix.type = Types::CommonPrefix
    CommonPrefixList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CommonPrefix, name: "member")
    CompleteMultipartUploadOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location"))
    CompleteMultipartUploadOutput.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket"))
    CompleteMultipartUploadOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key"))
    CompleteMultipartUploadOutput.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: Expiration, name: "Expiration", traits: {"smithy.api#httpHeader" => "x-amz-expiration"}))
    CompleteMultipartUploadOutput.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ETag"))
    CompleteMultipartUploadOutput.add_member(:checksum_crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32, name: "ChecksumCRC32"))
    CompleteMultipartUploadOutput.add_member(:checksum_crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32C, name: "ChecksumCRC32C"))
    CompleteMultipartUploadOutput.add_member(:checksum_crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC64NVME, name: "ChecksumCRC64NVME"))
    CompleteMultipartUploadOutput.add_member(:checksum_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA1, name: "ChecksumSHA1"))
    CompleteMultipartUploadOutput.add_member(:checksum_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA256, name: "ChecksumSHA256"))
    CompleteMultipartUploadOutput.add_member(:checksum_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumType, name: "ChecksumType"))
    CompleteMultipartUploadOutput.add_member(:server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryption, name: "ServerSideEncryption", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption"}))
    CompleteMultipartUploadOutput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpHeader" => "x-amz-version-id"}))
    CompleteMultipartUploadOutput.add_member(:ssekms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "SSEKMSKeyId", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-aws-kms-key-id"}))
    CompleteMultipartUploadOutput.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketKeyEnabled, name: "BucketKeyEnabled", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-bucket-key-enabled"}))
    CompleteMultipartUploadOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    CompleteMultipartUploadOutput.type = Types::CompleteMultipartUploadOutput
    CompleteMultipartUploadRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    CompleteMultipartUploadRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Key"}}))
    CompleteMultipartUploadRequest.add_member(:multipart_upload, ::Smithy::Schema::Shapes::MemberShape.new(target: CompletedMultipartUpload, name: "MultipartUpload", traits: {"smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "CompleteMultipartUpload"}))
    CompleteMultipartUploadRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MultipartUploadId, name: "UploadId", traits: {"smithy.api#httpQuery" => "uploadId", "smithy.api#required" => {}}))
    CompleteMultipartUploadRequest.add_member(:checksum_crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32, name: "ChecksumCRC32", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc32"}))
    CompleteMultipartUploadRequest.add_member(:checksum_crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32C, name: "ChecksumCRC32C", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc32c"}))
    CompleteMultipartUploadRequest.add_member(:checksum_crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC64NVME, name: "ChecksumCRC64NVME", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc64nvme"}))
    CompleteMultipartUploadRequest.add_member(:checksum_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA1, name: "ChecksumSHA1", traits: {"smithy.api#httpHeader" => "x-amz-checksum-sha1"}))
    CompleteMultipartUploadRequest.add_member(:checksum_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA256, name: "ChecksumSHA256", traits: {"smithy.api#httpHeader" => "x-amz-checksum-sha256"}))
    CompleteMultipartUploadRequest.add_member(:checksum_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumType, name: "ChecksumType", traits: {"smithy.api#httpHeader" => "x-amz-checksum-type"}))
    CompleteMultipartUploadRequest.add_member(:mpu_object_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MpuObjectSize, name: "MpuObjectSize", traits: {"smithy.api#httpHeader" => "x-amz-mp-object-size"}))
    CompleteMultipartUploadRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    CompleteMultipartUploadRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    CompleteMultipartUploadRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: IfMatch, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    CompleteMultipartUploadRequest.add_member(:if_none_match, ::Smithy::Schema::Shapes::MemberShape.new(target: IfNoneMatch, name: "IfNoneMatch", traits: {"smithy.api#httpHeader" => "If-None-Match"}))
    CompleteMultipartUploadRequest.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    CompleteMultipartUploadRequest.add_member(:sse_customer_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKey, name: "SSECustomerKey", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key"}))
    CompleteMultipartUploadRequest.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    CompleteMultipartUploadRequest[:http_payload] = :multipart_upload
    CompleteMultipartUploadRequest[:http_payload_member] = CompleteMultipartUploadRequest.member(:multipart_upload)
    CompleteMultipartUploadRequest.type = Types::CompleteMultipartUploadRequest
    CompletedMultipartUpload.add_member(:parts, ::Smithy::Schema::Shapes::MemberShape.new(target: CompletedPartList, name: "Parts", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Part"}))
    CompletedMultipartUpload.type = Types::CompletedMultipartUpload
    CompletedPart.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ETag"))
    CompletedPart.add_member(:checksum_crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32, name: "ChecksumCRC32"))
    CompletedPart.add_member(:checksum_crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32C, name: "ChecksumCRC32C"))
    CompletedPart.add_member(:checksum_crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC64NVME, name: "ChecksumCRC64NVME"))
    CompletedPart.add_member(:checksum_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA1, name: "ChecksumSHA1"))
    CompletedPart.add_member(:checksum_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA256, name: "ChecksumSHA256"))
    CompletedPart.add_member(:part_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PartNumber, name: "PartNumber"))
    CompletedPart.type = Types::CompletedPart
    CompletedPartList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CompletedPart, name: "member")
    CompressionType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    CompressionType.add_member(:gzip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GZIP", traits: {"smithy.api#enumValue" => "GZIP"}))
    CompressionType.add_member(:bzip2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BZIP2", traits: {"smithy.api#enumValue" => "BZIP2"}))
    Condition.add_member(:http_error_code_returned_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpErrorCodeReturnedEquals, name: "HttpErrorCodeReturnedEquals"))
    Condition.add_member(:key_prefix_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyPrefixEquals, name: "KeyPrefixEquals"))
    Condition.type = Types::Condition
    ContinuationEvent.type = Types::ContinuationEvent
    CopyObjectOutput.add_member(:copy_object_result, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyObjectResult, name: "CopyObjectResult", traits: {"smithy.api#httpPayload" => {}}))
    CopyObjectOutput.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: Expiration, name: "Expiration", traits: {"smithy.api#httpHeader" => "x-amz-expiration"}))
    CopyObjectOutput.add_member(:copy_source_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceVersionId, name: "CopySourceVersionId", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-version-id"}))
    CopyObjectOutput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpHeader" => "x-amz-version-id"}))
    CopyObjectOutput.add_member(:server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryption, name: "ServerSideEncryption", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption"}))
    CopyObjectOutput.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    CopyObjectOutput.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    CopyObjectOutput.add_member(:ssekms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "SSEKMSKeyId", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-aws-kms-key-id"}))
    CopyObjectOutput.add_member(:ssekms_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSEncryptionContext, name: "SSEKMSEncryptionContext", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-context"}))
    CopyObjectOutput.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketKeyEnabled, name: "BucketKeyEnabled", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-bucket-key-enabled"}))
    CopyObjectOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    CopyObjectOutput[:http_payload] = :copy_object_result
    CopyObjectOutput[:http_payload_member] = CopyObjectOutput.member(:copy_object_result)
    CopyObjectOutput.type = Types::CopyObjectOutput
    CopyObjectRequest.add_member(:acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectCannedACL, name: "ACL", traits: {"smithy.api#httpHeader" => "x-amz-acl"}))
    CopyObjectRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    CopyObjectRequest.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheControl, name: "CacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    CopyObjectRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-checksum-algorithm"}))
    CopyObjectRequest.add_member(:content_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentDisposition, name: "ContentDisposition", traits: {"smithy.api#httpHeader" => "Content-Disposition"}))
    CopyObjectRequest.add_member(:content_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentEncoding, name: "ContentEncoding", traits: {"smithy.api#httpHeader" => "Content-Encoding"}))
    CopyObjectRequest.add_member(:content_language, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentLanguage, name: "ContentLanguage", traits: {"smithy.api#httpHeader" => "Content-Language"}))
    CopyObjectRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    CopyObjectRequest.add_member(:copy_source, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySource, name: "CopySource", traits: {"smithy.api#httpHeader" => "x-amz-copy-source", "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "CopySource"}}))
    CopyObjectRequest.add_member(:copy_source_if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceIfMatch, name: "CopySourceIfMatch", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-if-match"}))
    CopyObjectRequest.add_member(:copy_source_if_modified_since, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceIfModifiedSince, name: "CopySourceIfModifiedSince", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-if-modified-since"}))
    CopyObjectRequest.add_member(:copy_source_if_none_match, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceIfNoneMatch, name: "CopySourceIfNoneMatch", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-if-none-match"}))
    CopyObjectRequest.add_member(:copy_source_if_unmodified_since, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceIfUnmodifiedSince, name: "CopySourceIfUnmodifiedSince", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-if-unmodified-since"}))
    CopyObjectRequest.add_member(:expires, ::Smithy::Schema::Shapes::MemberShape.new(target: Expires, name: "Expires", traits: {"smithy.api#httpHeader" => "Expires"}))
    CopyObjectRequest.add_member(:grant_full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantFullControl, name: "GrantFullControl", traits: {"smithy.api#httpHeader" => "x-amz-grant-full-control"}))
    CopyObjectRequest.add_member(:grant_read, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantRead, name: "GrantRead", traits: {"smithy.api#httpHeader" => "x-amz-grant-read"}))
    CopyObjectRequest.add_member(:grant_read_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantReadACP, name: "GrantReadACP", traits: {"smithy.api#httpHeader" => "x-amz-grant-read-acp"}))
    CopyObjectRequest.add_member(:grant_write_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantWriteACP, name: "GrantWriteACP", traits: {"smithy.api#httpHeader" => "x-amz-grant-write-acp"}))
    CopyObjectRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Key"}}))
    CopyObjectRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata", traits: {"smithy.api#httpPrefixHeaders" => "x-amz-meta-"}))
    CopyObjectRequest.add_member(:metadata_directive, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataDirective, name: "MetadataDirective", traits: {"smithy.api#httpHeader" => "x-amz-metadata-directive"}))
    CopyObjectRequest.add_member(:tagging_directive, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggingDirective, name: "TaggingDirective", traits: {"smithy.api#httpHeader" => "x-amz-tagging-directive"}))
    CopyObjectRequest.add_member(:server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryption, name: "ServerSideEncryption", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption"}))
    CopyObjectRequest.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "StorageClass", traits: {"smithy.api#httpHeader" => "x-amz-storage-class"}))
    CopyObjectRequest.add_member(:website_redirect_location, ::Smithy::Schema::Shapes::MemberShape.new(target: WebsiteRedirectLocation, name: "WebsiteRedirectLocation", traits: {"smithy.api#httpHeader" => "x-amz-website-redirect-location"}))
    CopyObjectRequest.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    CopyObjectRequest.add_member(:sse_customer_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKey, name: "SSECustomerKey", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key"}))
    CopyObjectRequest.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    CopyObjectRequest.add_member(:ssekms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "SSEKMSKeyId", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-aws-kms-key-id"}))
    CopyObjectRequest.add_member(:ssekms_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSEncryptionContext, name: "SSEKMSEncryptionContext", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-context"}))
    CopyObjectRequest.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketKeyEnabled, name: "BucketKeyEnabled", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-bucket-key-enabled"}))
    CopyObjectRequest.add_member(:copy_source_sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceSSECustomerAlgorithm, name: "CopySourceSSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-server-side-encryption-customer-algorithm"}))
    CopyObjectRequest.add_member(:copy_source_sse_customer_key, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceSSECustomerKey, name: "CopySourceSSECustomerKey", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-server-side-encryption-customer-key"}))
    CopyObjectRequest.add_member(:copy_source_sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceSSECustomerKeyMD5, name: "CopySourceSSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-server-side-encryption-customer-key-MD5"}))
    CopyObjectRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    CopyObjectRequest.add_member(:tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggingHeader, name: "Tagging", traits: {"smithy.api#httpHeader" => "x-amz-tagging"}))
    CopyObjectRequest.add_member(:object_lock_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockMode, name: "ObjectLockMode", traits: {"smithy.api#httpHeader" => "x-amz-object-lock-mode"}))
    CopyObjectRequest.add_member(:object_lock_retain_until_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockRetainUntilDate, name: "ObjectLockRetainUntilDate", traits: {"smithy.api#httpHeader" => "x-amz-object-lock-retain-until-date"}))
    CopyObjectRequest.add_member(:object_lock_legal_hold_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockLegalHoldStatus, name: "ObjectLockLegalHoldStatus", traits: {"smithy.api#httpHeader" => "x-amz-object-lock-legal-hold"}))
    CopyObjectRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    CopyObjectRequest.add_member(:expected_source_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedSourceBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-source-expected-bucket-owner"}))
    CopyObjectRequest.type = Types::CopyObjectRequest
    CopyObjectResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ETag"))
    CopyObjectResult.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModified, name: "LastModified"))
    CopyObjectResult.add_member(:checksum_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumType, name: "ChecksumType"))
    CopyObjectResult.add_member(:checksum_crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32, name: "ChecksumCRC32"))
    CopyObjectResult.add_member(:checksum_crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32C, name: "ChecksumCRC32C"))
    CopyObjectResult.add_member(:checksum_crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC64NVME, name: "ChecksumCRC64NVME"))
    CopyObjectResult.add_member(:checksum_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA1, name: "ChecksumSHA1"))
    CopyObjectResult.add_member(:checksum_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA256, name: "ChecksumSHA256"))
    CopyObjectResult.type = Types::CopyObjectResult
    CopyPartResult.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ETag"))
    CopyPartResult.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModified, name: "LastModified"))
    CopyPartResult.add_member(:checksum_crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32, name: "ChecksumCRC32"))
    CopyPartResult.add_member(:checksum_crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32C, name: "ChecksumCRC32C"))
    CopyPartResult.add_member(:checksum_crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC64NVME, name: "ChecksumCRC64NVME"))
    CopyPartResult.add_member(:checksum_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA1, name: "ChecksumSHA1"))
    CopyPartResult.add_member(:checksum_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA256, name: "ChecksumSHA256"))
    CopyPartResult.type = Types::CopyPartResult
    CreateBucketConfiguration.add_member(:location_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketLocationConstraint, name: "LocationConstraint"))
    CreateBucketConfiguration.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationInfo, name: "Location"))
    CreateBucketConfiguration.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketInfo, name: "Bucket"))
    CreateBucketConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSet, name: "Tags"))
    CreateBucketConfiguration.type = Types::CreateBucketConfiguration
    CreateBucketMetadataConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    CreateBucketMetadataConfigurationRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    CreateBucketMetadataConfigurationRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    CreateBucketMetadataConfigurationRequest.add_member(:metadata_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataConfiguration, name: "MetadataConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "MetadataConfiguration"}))
    CreateBucketMetadataConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    CreateBucketMetadataConfigurationRequest[:http_payload] = :metadata_configuration
    CreateBucketMetadataConfigurationRequest[:http_payload_member] = CreateBucketMetadataConfigurationRequest.member(:metadata_configuration)
    CreateBucketMetadataConfigurationRequest.type = Types::CreateBucketMetadataConfigurationRequest
    CreateBucketMetadataTableConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    CreateBucketMetadataTableConfigurationRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    CreateBucketMetadataTableConfigurationRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    CreateBucketMetadataTableConfigurationRequest.add_member(:metadata_table_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTableConfiguration, name: "MetadataTableConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "MetadataTableConfiguration"}))
    CreateBucketMetadataTableConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    CreateBucketMetadataTableConfigurationRequest[:http_payload] = :metadata_table_configuration
    CreateBucketMetadataTableConfigurationRequest[:http_payload_member] = CreateBucketMetadataTableConfigurationRequest.member(:metadata_table_configuration)
    CreateBucketMetadataTableConfigurationRequest.type = Types::CreateBucketMetadataTableConfigurationRequest
    CreateBucketOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateBucketOutput.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3RegionalOrS3ExpressBucketArnString, name: "BucketArn", traits: {"smithy.api#httpHeader" => "x-amz-bucket-arn"}))
    CreateBucketOutput.type = Types::CreateBucketOutput
    CreateBucketRequest.add_member(:acl, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketCannedACL, name: "ACL", traits: {"smithy.api#httpHeader" => "x-amz-acl"}))
    CreateBucketRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    CreateBucketRequest.add_member(:create_bucket_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateBucketConfiguration, name: "CreateBucketConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "CreateBucketConfiguration"}))
    CreateBucketRequest.add_member(:grant_full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantFullControl, name: "GrantFullControl", traits: {"smithy.api#httpHeader" => "x-amz-grant-full-control"}))
    CreateBucketRequest.add_member(:grant_read, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantRead, name: "GrantRead", traits: {"smithy.api#httpHeader" => "x-amz-grant-read"}))
    CreateBucketRequest.add_member(:grant_read_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantReadACP, name: "GrantReadACP", traits: {"smithy.api#httpHeader" => "x-amz-grant-read-acp"}))
    CreateBucketRequest.add_member(:grant_write, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantWrite, name: "GrantWrite", traits: {"smithy.api#httpHeader" => "x-amz-grant-write"}))
    CreateBucketRequest.add_member(:grant_write_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantWriteACP, name: "GrantWriteACP", traits: {"smithy.api#httpHeader" => "x-amz-grant-write-acp"}))
    CreateBucketRequest.add_member(:object_lock_enabled_for_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockEnabledForBucket, name: "ObjectLockEnabledForBucket", traits: {"smithy.api#httpHeader" => "x-amz-bucket-object-lock-enabled"}))
    CreateBucketRequest.add_member(:object_ownership, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectOwnership, name: "ObjectOwnership", traits: {"smithy.api#httpHeader" => "x-amz-object-ownership"}))
    CreateBucketRequest[:http_payload] = :create_bucket_configuration
    CreateBucketRequest[:http_payload_member] = CreateBucketRequest.member(:create_bucket_configuration)
    CreateBucketRequest.type = Types::CreateBucketRequest
    CreateMultipartUploadOutput.add_member(:abort_date, ::Smithy::Schema::Shapes::MemberShape.new(target: AbortDate, name: "AbortDate", traits: {"smithy.api#httpHeader" => "x-amz-abort-date"}))
    CreateMultipartUploadOutput.add_member(:abort_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AbortRuleId, name: "AbortRuleId", traits: {"smithy.api#httpHeader" => "x-amz-abort-rule-id"}))
    CreateMultipartUploadOutput.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#xmlName" => "Bucket"}))
    CreateMultipartUploadOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key"))
    CreateMultipartUploadOutput.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MultipartUploadId, name: "UploadId"))
    CreateMultipartUploadOutput.add_member(:server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryption, name: "ServerSideEncryption", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption"}))
    CreateMultipartUploadOutput.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    CreateMultipartUploadOutput.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    CreateMultipartUploadOutput.add_member(:ssekms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "SSEKMSKeyId", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-aws-kms-key-id"}))
    CreateMultipartUploadOutput.add_member(:ssekms_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSEncryptionContext, name: "SSEKMSEncryptionContext", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-context"}))
    CreateMultipartUploadOutput.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketKeyEnabled, name: "BucketKeyEnabled", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-bucket-key-enabled"}))
    CreateMultipartUploadOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    CreateMultipartUploadOutput.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-checksum-algorithm"}))
    CreateMultipartUploadOutput.add_member(:checksum_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumType, name: "ChecksumType", traits: {"smithy.api#httpHeader" => "x-amz-checksum-type"}))
    CreateMultipartUploadOutput.type = Types::CreateMultipartUploadOutput
    CreateMultipartUploadRequest.add_member(:acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectCannedACL, name: "ACL", traits: {"smithy.api#httpHeader" => "x-amz-acl"}))
    CreateMultipartUploadRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    CreateMultipartUploadRequest.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheControl, name: "CacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    CreateMultipartUploadRequest.add_member(:content_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentDisposition, name: "ContentDisposition", traits: {"smithy.api#httpHeader" => "Content-Disposition"}))
    CreateMultipartUploadRequest.add_member(:content_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentEncoding, name: "ContentEncoding", traits: {"smithy.api#httpHeader" => "Content-Encoding"}))
    CreateMultipartUploadRequest.add_member(:content_language, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentLanguage, name: "ContentLanguage", traits: {"smithy.api#httpHeader" => "Content-Language"}))
    CreateMultipartUploadRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    CreateMultipartUploadRequest.add_member(:expires, ::Smithy::Schema::Shapes::MemberShape.new(target: Expires, name: "Expires", traits: {"smithy.api#httpHeader" => "Expires"}))
    CreateMultipartUploadRequest.add_member(:grant_full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantFullControl, name: "GrantFullControl", traits: {"smithy.api#httpHeader" => "x-amz-grant-full-control"}))
    CreateMultipartUploadRequest.add_member(:grant_read, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantRead, name: "GrantRead", traits: {"smithy.api#httpHeader" => "x-amz-grant-read"}))
    CreateMultipartUploadRequest.add_member(:grant_read_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantReadACP, name: "GrantReadACP", traits: {"smithy.api#httpHeader" => "x-amz-grant-read-acp"}))
    CreateMultipartUploadRequest.add_member(:grant_write_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantWriteACP, name: "GrantWriteACP", traits: {"smithy.api#httpHeader" => "x-amz-grant-write-acp"}))
    CreateMultipartUploadRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Key"}}))
    CreateMultipartUploadRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata", traits: {"smithy.api#httpPrefixHeaders" => "x-amz-meta-"}))
    CreateMultipartUploadRequest.add_member(:server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryption, name: "ServerSideEncryption", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption"}))
    CreateMultipartUploadRequest.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "StorageClass", traits: {"smithy.api#httpHeader" => "x-amz-storage-class"}))
    CreateMultipartUploadRequest.add_member(:website_redirect_location, ::Smithy::Schema::Shapes::MemberShape.new(target: WebsiteRedirectLocation, name: "WebsiteRedirectLocation", traits: {"smithy.api#httpHeader" => "x-amz-website-redirect-location"}))
    CreateMultipartUploadRequest.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    CreateMultipartUploadRequest.add_member(:sse_customer_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKey, name: "SSECustomerKey", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key"}))
    CreateMultipartUploadRequest.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    CreateMultipartUploadRequest.add_member(:ssekms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "SSEKMSKeyId", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-aws-kms-key-id"}))
    CreateMultipartUploadRequest.add_member(:ssekms_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSEncryptionContext, name: "SSEKMSEncryptionContext", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-context"}))
    CreateMultipartUploadRequest.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketKeyEnabled, name: "BucketKeyEnabled", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-bucket-key-enabled"}))
    CreateMultipartUploadRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    CreateMultipartUploadRequest.add_member(:tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggingHeader, name: "Tagging", traits: {"smithy.api#httpHeader" => "x-amz-tagging"}))
    CreateMultipartUploadRequest.add_member(:object_lock_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockMode, name: "ObjectLockMode", traits: {"smithy.api#httpHeader" => "x-amz-object-lock-mode"}))
    CreateMultipartUploadRequest.add_member(:object_lock_retain_until_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockRetainUntilDate, name: "ObjectLockRetainUntilDate", traits: {"smithy.api#httpHeader" => "x-amz-object-lock-retain-until-date"}))
    CreateMultipartUploadRequest.add_member(:object_lock_legal_hold_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockLegalHoldStatus, name: "ObjectLockLegalHoldStatus", traits: {"smithy.api#httpHeader" => "x-amz-object-lock-legal-hold"}))
    CreateMultipartUploadRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    CreateMultipartUploadRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-checksum-algorithm"}))
    CreateMultipartUploadRequest.add_member(:checksum_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumType, name: "ChecksumType", traits: {"smithy.api#httpHeader" => "x-amz-checksum-type"}))
    CreateMultipartUploadRequest.type = Types::CreateMultipartUploadRequest
    CreateSessionOutput.add_member(:server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryption, name: "ServerSideEncryption", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption"}))
    CreateSessionOutput.add_member(:ssekms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "SSEKMSKeyId", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-aws-kms-key-id"}))
    CreateSessionOutput.add_member(:ssekms_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSEncryptionContext, name: "SSEKMSEncryptionContext", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-context"}))
    CreateSessionOutput.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketKeyEnabled, name: "BucketKeyEnabled", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-bucket-key-enabled"}))
    CreateSessionOutput.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionCredentials, name: "Credentials", traits: {"smithy.api#required" => {}, "smithy.api#xmlName" => "Credentials"}))
    CreateSessionOutput.type = Types::CreateSessionOutput
    CreateSessionRequest.add_member(:session_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionMode, name: "SessionMode", traits: {"smithy.api#httpHeader" => "x-amz-create-session-mode"}))
    CreateSessionRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    CreateSessionRequest.add_member(:server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryption, name: "ServerSideEncryption", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption"}))
    CreateSessionRequest.add_member(:ssekms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "SSEKMSKeyId", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-aws-kms-key-id"}))
    CreateSessionRequest.add_member(:ssekms_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSEncryptionContext, name: "SSEKMSEncryptionContext", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-context"}))
    CreateSessionRequest.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketKeyEnabled, name: "BucketKeyEnabled", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-bucket-key-enabled"}))
    CreateSessionRequest.type = Types::CreateSessionRequest
    DataRedundancy.add_member(:single_availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SingleAvailabilityZone", traits: {"smithy.api#enumValue" => "SingleAvailabilityZone"}))
    DataRedundancy.add_member(:single_local_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SingleLocalZone", traits: {"smithy.api#enumValue" => "SingleLocalZone"}))
    DefaultRetention.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockRetentionMode, name: "Mode"))
    DefaultRetention.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: Days, name: "Days"))
    DefaultRetention.add_member(:years, ::Smithy::Schema::Shapes::MemberShape.new(target: Years, name: "Years"))
    DefaultRetention.type = Types::DefaultRetention
    Delete.add_member(:objects, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifierList, name: "Objects", traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Object"}))
    Delete.add_member(:quiet, ::Smithy::Schema::Shapes::MemberShape.new(target: Quiet, name: "Quiet"))
    Delete.type = Types::Delete
    DeleteBucketAnalyticsConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketAnalyticsConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsId, name: "Id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    DeleteBucketAnalyticsConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteBucketAnalyticsConfigurationRequest.type = Types::DeleteBucketAnalyticsConfigurationRequest
    DeleteBucketCorsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketCorsRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteBucketCorsRequest.type = Types::DeleteBucketCorsRequest
    DeleteBucketEncryptionRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketEncryptionRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteBucketEncryptionRequest.type = Types::DeleteBucketEncryptionRequest
    DeleteBucketIntelligentTieringConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketIntelligentTieringConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligentTieringId, name: "Id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    DeleteBucketIntelligentTieringConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteBucketIntelligentTieringConfigurationRequest.type = Types::DeleteBucketIntelligentTieringConfigurationRequest
    DeleteBucketInventoryConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketInventoryConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryId, name: "Id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    DeleteBucketInventoryConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteBucketInventoryConfigurationRequest.type = Types::DeleteBucketInventoryConfigurationRequest
    DeleteBucketLifecycleRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketLifecycleRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteBucketLifecycleRequest.type = Types::DeleteBucketLifecycleRequest
    DeleteBucketMetadataConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketMetadataConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteBucketMetadataConfigurationRequest.type = Types::DeleteBucketMetadataConfigurationRequest
    DeleteBucketMetadataTableConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketMetadataTableConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteBucketMetadataTableConfigurationRequest.type = Types::DeleteBucketMetadataTableConfigurationRequest
    DeleteBucketMetricsConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketMetricsConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsId, name: "Id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    DeleteBucketMetricsConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteBucketMetricsConfigurationRequest.type = Types::DeleteBucketMetricsConfigurationRequest
    DeleteBucketOwnershipControlsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketOwnershipControlsRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteBucketOwnershipControlsRequest.type = Types::DeleteBucketOwnershipControlsRequest
    DeleteBucketPolicyRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketPolicyRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteBucketPolicyRequest.type = Types::DeleteBucketPolicyRequest
    DeleteBucketReplicationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketReplicationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteBucketReplicationRequest.type = Types::DeleteBucketReplicationRequest
    DeleteBucketRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteBucketRequest.type = Types::DeleteBucketRequest
    DeleteBucketTaggingRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketTaggingRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteBucketTaggingRequest.type = Types::DeleteBucketTaggingRequest
    DeleteBucketWebsiteRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketWebsiteRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteBucketWebsiteRequest.type = Types::DeleteBucketWebsiteRequest
    DeleteMarkerEntry.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner"))
    DeleteMarkerEntry.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key"))
    DeleteMarkerEntry.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId"))
    DeleteMarkerEntry.add_member(:is_latest, ::Smithy::Schema::Shapes::MemberShape.new(target: IsLatest, name: "IsLatest"))
    DeleteMarkerEntry.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModified, name: "LastModified"))
    DeleteMarkerEntry.type = Types::DeleteMarkerEntry
    DeleteMarkerReplication.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteMarkerReplicationStatus, name: "Status"))
    DeleteMarkerReplication.type = Types::DeleteMarkerReplication
    DeleteMarkerReplicationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    DeleteMarkerReplicationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    DeleteMarkers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteMarkerEntry, name: "member")
    DeleteObjectOutput.add_member(:delete_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteMarker, name: "DeleteMarker", traits: {"smithy.api#httpHeader" => "x-amz-delete-marker"}))
    DeleteObjectOutput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpHeader" => "x-amz-version-id"}))
    DeleteObjectOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    DeleteObjectOutput.type = Types::DeleteObjectOutput
    DeleteObjectRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteObjectRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Key"}}))
    DeleteObjectRequest.add_member(:mfa, ::Smithy::Schema::Shapes::MemberShape.new(target: MFA, name: "MFA", traits: {"smithy.api#httpHeader" => "x-amz-mfa"}))
    DeleteObjectRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    DeleteObjectRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    DeleteObjectRequest.add_member(:bypass_governance_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: BypassGovernanceRetention, name: "BypassGovernanceRetention", traits: {"smithy.api#httpHeader" => "x-amz-bypass-governance-retention"}))
    DeleteObjectRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteObjectRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: IfMatch, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    DeleteObjectRequest.add_member(:if_match_last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: IfMatchLastModifiedTime, name: "IfMatchLastModifiedTime", traits: {"smithy.api#httpHeader" => "x-amz-if-match-last-modified-time"}))
    DeleteObjectRequest.add_member(:if_match_size, ::Smithy::Schema::Shapes::MemberShape.new(target: IfMatchSize, name: "IfMatchSize", traits: {"smithy.api#httpHeader" => "x-amz-if-match-size"}))
    DeleteObjectRequest.type = Types::DeleteObjectRequest
    DeleteObjectTaggingOutput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpHeader" => "x-amz-version-id"}))
    DeleteObjectTaggingOutput.type = Types::DeleteObjectTaggingOutput
    DeleteObjectTaggingRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteObjectTaggingRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteObjectTaggingRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    DeleteObjectTaggingRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteObjectTaggingRequest.type = Types::DeleteObjectTaggingRequest
    DeleteObjectsOutput.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletedObjects, name: "Deleted", traits: {"smithy.api#xmlFlattened" => {}}))
    DeleteObjectsOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    DeleteObjectsOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: Errors, name: "Errors", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Error"}))
    DeleteObjectsOutput.type = Types::DeleteObjectsOutput
    DeleteObjectsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteObjectsRequest.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: Delete, name: "Delete", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "Delete"}))
    DeleteObjectsRequest.add_member(:mfa, ::Smithy::Schema::Shapes::MemberShape.new(target: MFA, name: "MFA", traits: {"smithy.api#httpHeader" => "x-amz-mfa"}))
    DeleteObjectsRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    DeleteObjectsRequest.add_member(:bypass_governance_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: BypassGovernanceRetention, name: "BypassGovernanceRetention", traits: {"smithy.api#httpHeader" => "x-amz-bypass-governance-retention"}))
    DeleteObjectsRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeleteObjectsRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    DeleteObjectsRequest[:http_payload] = :delete
    DeleteObjectsRequest[:http_payload_member] = DeleteObjectsRequest.member(:delete)
    DeleteObjectsRequest.type = Types::DeleteObjectsRequest
    DeletePublicAccessBlockRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeletePublicAccessBlockRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    DeletePublicAccessBlockRequest.type = Types::DeletePublicAccessBlockRequest
    DeletedObject.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key"))
    DeletedObject.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId"))
    DeletedObject.add_member(:delete_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteMarker, name: "DeleteMarker"))
    DeletedObject.add_member(:delete_marker_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteMarkerVersionId, name: "DeleteMarkerVersionId"))
    DeletedObject.type = Types::DeletedObject
    DeletedObjects.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeletedObject, name: "member")
    Destination.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#required" => {}}))
    Destination.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "Account"))
    Destination.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "StorageClass"))
    Destination.add_member(:access_control_translation, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlTranslation, name: "AccessControlTranslation"))
    Destination.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    Destination.add_member(:replication_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTime, name: "ReplicationTime"))
    Destination.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: Metrics, name: "Metrics"))
    Destination.type = Types::Destination
    DestinationResult.add_member(:table_bucket_type, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesBucketType, name: "TableBucketType"))
    DestinationResult.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesBucketArn, name: "TableBucketArn"))
    DestinationResult.add_member(:table_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesNamespace, name: "TableNamespace"))
    DestinationResult.type = Types::DestinationResult
    EncodingType.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "url", traits: {"smithy.api#enumValue" => "url"}))
    Encryption.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryption, name: "EncryptionType", traits: {"smithy.api#required" => {}}))
    Encryption.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "KMSKeyId"))
    Encryption.add_member(:kms_context, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSContext, name: "KMSContext"))
    Encryption.type = Types::Encryption
    EncryptionConfiguration.add_member(:replica_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaKmsKeyID, name: "ReplicaKmsKeyID"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    EncryptionTypeMismatch.type = Types::EncryptionTypeMismatch
    EndEvent.type = Types::EndEvent
    Error.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key"))
    Error.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId"))
    Error.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "Code"))
    Error.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    Error.type = Types::Error
    ErrorDetails.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    ErrorDetails.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    ErrorDetails.type = Types::ErrorDetails
    ErrorDocument.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#required" => {}}))
    ErrorDocument.type = Types::ErrorDocument
    Errors.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Error, name: "member")
    Event.add_member(:s3_reduced_redundancy_lost_object, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ReducedRedundancyLostObject", traits: {"smithy.api#enumValue" => "s3:ReducedRedundancyLostObject"}))
    Event.add_member(:s3_object_created_, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ObjectCreated_", traits: {"smithy.api#enumValue" => "s3:ObjectCreated:*"}))
    Event.add_member(:s3_object_created_put, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ObjectCreated_Put", traits: {"smithy.api#enumValue" => "s3:ObjectCreated:Put"}))
    Event.add_member(:s3_object_created_post, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ObjectCreated_Post", traits: {"smithy.api#enumValue" => "s3:ObjectCreated:Post"}))
    Event.add_member(:s3_object_created_copy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ObjectCreated_Copy", traits: {"smithy.api#enumValue" => "s3:ObjectCreated:Copy"}))
    Event.add_member(:s3_object_created_complete_multipart_upload, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ObjectCreated_CompleteMultipartUpload", traits: {"smithy.api#enumValue" => "s3:ObjectCreated:CompleteMultipartUpload"}))
    Event.add_member(:s3_object_removed_, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ObjectRemoved_", traits: {"smithy.api#enumValue" => "s3:ObjectRemoved:*"}))
    Event.add_member(:s3_object_removed_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ObjectRemoved_Delete", traits: {"smithy.api#enumValue" => "s3:ObjectRemoved:Delete"}))
    Event.add_member(:s3_object_removed_delete_marker_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ObjectRemoved_DeleteMarkerCreated", traits: {"smithy.api#enumValue" => "s3:ObjectRemoved:DeleteMarkerCreated"}))
    Event.add_member(:s3_object_restore_, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ObjectRestore_", traits: {"smithy.api#enumValue" => "s3:ObjectRestore:*"}))
    Event.add_member(:s3_object_restore_post, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ObjectRestore_Post", traits: {"smithy.api#enumValue" => "s3:ObjectRestore:Post"}))
    Event.add_member(:s3_object_restore_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ObjectRestore_Completed", traits: {"smithy.api#enumValue" => "s3:ObjectRestore:Completed"}))
    Event.add_member(:s3_replication_, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_Replication_", traits: {"smithy.api#enumValue" => "s3:Replication:*"}))
    Event.add_member(:s3_replication_operation_failed_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_Replication_OperationFailedReplication", traits: {"smithy.api#enumValue" => "s3:Replication:OperationFailedReplication"}))
    Event.add_member(:s3_replication_operation_not_tracked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_Replication_OperationNotTracked", traits: {"smithy.api#enumValue" => "s3:Replication:OperationNotTracked"}))
    Event.add_member(:s3_replication_operation_missed_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_Replication_OperationMissedThreshold", traits: {"smithy.api#enumValue" => "s3:Replication:OperationMissedThreshold"}))
    Event.add_member(:s3_replication_operation_replicated_after_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_Replication_OperationReplicatedAfterThreshold", traits: {"smithy.api#enumValue" => "s3:Replication:OperationReplicatedAfterThreshold"}))
    Event.add_member(:s3_object_restore_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ObjectRestore_Delete", traits: {"smithy.api#enumValue" => "s3:ObjectRestore:Delete"}))
    Event.add_member(:s3_lifecycle_transition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_LifecycleTransition", traits: {"smithy.api#enumValue" => "s3:LifecycleTransition"}))
    Event.add_member(:s3_intelligent_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_IntelligentTiering", traits: {"smithy.api#enumValue" => "s3:IntelligentTiering"}))
    Event.add_member(:s3_object_acl_put, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ObjectAcl_Put", traits: {"smithy.api#enumValue" => "s3:ObjectAcl:Put"}))
    Event.add_member(:s3_lifecycle_expiration_, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_LifecycleExpiration_", traits: {"smithy.api#enumValue" => "s3:LifecycleExpiration:*"}))
    Event.add_member(:s3_lifecycle_expiration_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_LifecycleExpiration_Delete", traits: {"smithy.api#enumValue" => "s3:LifecycleExpiration:Delete"}))
    Event.add_member(:s3_lifecycle_expiration_delete_marker_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_LifecycleExpiration_DeleteMarkerCreated", traits: {"smithy.api#enumValue" => "s3:LifecycleExpiration:DeleteMarkerCreated"}))
    Event.add_member(:s3_object_tagging_, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ObjectTagging_", traits: {"smithy.api#enumValue" => "s3:ObjectTagging:*"}))
    Event.add_member(:s3_object_tagging_put, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ObjectTagging_Put", traits: {"smithy.api#enumValue" => "s3:ObjectTagging:Put"}))
    Event.add_member(:s3_object_tagging_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "s3_ObjectTagging_Delete", traits: {"smithy.api#enumValue" => "s3:ObjectTagging:Delete"}))
    EventBridgeConfiguration.type = Types::EventBridgeConfiguration
    EventList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "member")
    ExistingObjectReplication.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingObjectReplicationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ExistingObjectReplication.type = Types::ExistingObjectReplication
    ExistingObjectReplicationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ExistingObjectReplicationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    ExpirationState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ExpirationState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ExpirationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ExpirationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    ExposeHeaders.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExposeHeader, name: "member")
    ExpressionType.add_member(:sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQL", traits: {"smithy.api#enumValue" => "SQL"}))
    FileHeaderInfo.add_member(:use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USE", traits: {"smithy.api#enumValue" => "USE"}))
    FileHeaderInfo.add_member(:ignore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IGNORE", traits: {"smithy.api#enumValue" => "IGNORE"}))
    FileHeaderInfo.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    FilterRule.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterRuleName, name: "Name"))
    FilterRule.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterRuleValue, name: "Value"))
    FilterRule.type = Types::FilterRule
    FilterRuleList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FilterRule, name: "member")
    FilterRuleName.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "prefix", traits: {"smithy.api#enumValue" => "prefix"}))
    FilterRuleName.add_member(:suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "suffix", traits: {"smithy.api#enumValue" => "suffix"}))
    GetBucketAccelerateConfigurationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketAccelerateStatus, name: "Status"))
    GetBucketAccelerateConfigurationOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    GetBucketAccelerateConfigurationOutput.type = Types::GetBucketAccelerateConfigurationOutput
    GetBucketAccelerateConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketAccelerateConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketAccelerateConfigurationRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    GetBucketAccelerateConfigurationRequest.type = Types::GetBucketAccelerateConfigurationRequest
    GetBucketAclOutput.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner"))
    GetBucketAclOutput.add_member(:grants, ::Smithy::Schema::Shapes::MemberShape.new(target: Grants, name: "Grants", traits: {"smithy.api#xmlName" => "AccessControlList"}))
    GetBucketAclOutput.type = Types::GetBucketAclOutput
    GetBucketAclRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketAclRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketAclRequest.type = Types::GetBucketAclRequest
    GetBucketAnalyticsConfigurationOutput.add_member(:analytics_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsConfiguration, name: "AnalyticsConfiguration", traits: {"smithy.api#httpPayload" => {}}))
    GetBucketAnalyticsConfigurationOutput[:http_payload] = :analytics_configuration
    GetBucketAnalyticsConfigurationOutput[:http_payload_member] = GetBucketAnalyticsConfigurationOutput.member(:analytics_configuration)
    GetBucketAnalyticsConfigurationOutput.type = Types::GetBucketAnalyticsConfigurationOutput
    GetBucketAnalyticsConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketAnalyticsConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsId, name: "Id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    GetBucketAnalyticsConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketAnalyticsConfigurationRequest.type = Types::GetBucketAnalyticsConfigurationRequest
    GetBucketCorsOutput.add_member(:cors_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: CORSRules, name: "CORSRules", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "CORSRule"}))
    GetBucketCorsOutput.type = Types::GetBucketCorsOutput
    GetBucketCorsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketCorsRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketCorsRequest.type = Types::GetBucketCorsRequest
    GetBucketEncryptionOutput.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "ServerSideEncryptionConfiguration", traits: {"smithy.api#httpPayload" => {}}))
    GetBucketEncryptionOutput[:http_payload] = :server_side_encryption_configuration
    GetBucketEncryptionOutput[:http_payload_member] = GetBucketEncryptionOutput.member(:server_side_encryption_configuration)
    GetBucketEncryptionOutput.type = Types::GetBucketEncryptionOutput
    GetBucketEncryptionRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketEncryptionRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketEncryptionRequest.type = Types::GetBucketEncryptionRequest
    GetBucketIntelligentTieringConfigurationOutput.add_member(:intelligent_tiering_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligentTieringConfiguration, name: "IntelligentTieringConfiguration", traits: {"smithy.api#httpPayload" => {}}))
    GetBucketIntelligentTieringConfigurationOutput[:http_payload] = :intelligent_tiering_configuration
    GetBucketIntelligentTieringConfigurationOutput[:http_payload_member] = GetBucketIntelligentTieringConfigurationOutput.member(:intelligent_tiering_configuration)
    GetBucketIntelligentTieringConfigurationOutput.type = Types::GetBucketIntelligentTieringConfigurationOutput
    GetBucketIntelligentTieringConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketIntelligentTieringConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligentTieringId, name: "Id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    GetBucketIntelligentTieringConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketIntelligentTieringConfigurationRequest.type = Types::GetBucketIntelligentTieringConfigurationRequest
    GetBucketInventoryConfigurationOutput.add_member(:inventory_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryConfiguration, name: "InventoryConfiguration", traits: {"smithy.api#httpPayload" => {}}))
    GetBucketInventoryConfigurationOutput[:http_payload] = :inventory_configuration
    GetBucketInventoryConfigurationOutput[:http_payload_member] = GetBucketInventoryConfigurationOutput.member(:inventory_configuration)
    GetBucketInventoryConfigurationOutput.type = Types::GetBucketInventoryConfigurationOutput
    GetBucketInventoryConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketInventoryConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryId, name: "Id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    GetBucketInventoryConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketInventoryConfigurationRequest.type = Types::GetBucketInventoryConfigurationRequest
    GetBucketLifecycleConfigurationOutput.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleRules, name: "Rules", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Rule"}))
    GetBucketLifecycleConfigurationOutput.add_member(:transition_default_minimum_object_size, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitionDefaultMinimumObjectSize, name: "TransitionDefaultMinimumObjectSize", traits: {"smithy.api#httpHeader" => "x-amz-transition-default-minimum-object-size"}))
    GetBucketLifecycleConfigurationOutput.type = Types::GetBucketLifecycleConfigurationOutput
    GetBucketLifecycleConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketLifecycleConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketLifecycleConfigurationRequest.type = Types::GetBucketLifecycleConfigurationRequest
    GetBucketLocationOutput.add_member(:location_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketLocationConstraint, name: "LocationConstraint"))
    GetBucketLocationOutput.type = Types::GetBucketLocationOutput
    GetBucketLocationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketLocationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketLocationRequest.type = Types::GetBucketLocationRequest
    GetBucketLoggingOutput.add_member(:logging_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: LoggingEnabled, name: "LoggingEnabled"))
    GetBucketLoggingOutput.type = Types::GetBucketLoggingOutput
    GetBucketLoggingRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketLoggingRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketLoggingRequest.type = Types::GetBucketLoggingRequest
    GetBucketMetadataConfigurationOutput.add_member(:get_bucket_metadata_configuration_result, ::Smithy::Schema::Shapes::MemberShape.new(target: GetBucketMetadataConfigurationResult, name: "GetBucketMetadataConfigurationResult", traits: {"smithy.api#httpPayload" => {}}))
    GetBucketMetadataConfigurationOutput[:http_payload] = :get_bucket_metadata_configuration_result
    GetBucketMetadataConfigurationOutput[:http_payload_member] = GetBucketMetadataConfigurationOutput.member(:get_bucket_metadata_configuration_result)
    GetBucketMetadataConfigurationOutput.type = Types::GetBucketMetadataConfigurationOutput
    GetBucketMetadataConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketMetadataConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketMetadataConfigurationRequest.type = Types::GetBucketMetadataConfigurationRequest
    GetBucketMetadataConfigurationResult.add_member(:metadata_configuration_result, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataConfigurationResult, name: "MetadataConfigurationResult", traits: {"smithy.api#required" => {}}))
    GetBucketMetadataConfigurationResult.type = Types::GetBucketMetadataConfigurationResult
    GetBucketMetadataTableConfigurationOutput.add_member(:get_bucket_metadata_table_configuration_result, ::Smithy::Schema::Shapes::MemberShape.new(target: GetBucketMetadataTableConfigurationResult, name: "GetBucketMetadataTableConfigurationResult", traits: {"smithy.api#httpPayload" => {}}))
    GetBucketMetadataTableConfigurationOutput[:http_payload] = :get_bucket_metadata_table_configuration_result
    GetBucketMetadataTableConfigurationOutput[:http_payload_member] = GetBucketMetadataTableConfigurationOutput.member(:get_bucket_metadata_table_configuration_result)
    GetBucketMetadataTableConfigurationOutput.type = Types::GetBucketMetadataTableConfigurationOutput
    GetBucketMetadataTableConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketMetadataTableConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketMetadataTableConfigurationRequest.type = Types::GetBucketMetadataTableConfigurationRequest
    GetBucketMetadataTableConfigurationResult.add_member(:metadata_table_configuration_result, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTableConfigurationResult, name: "MetadataTableConfigurationResult", traits: {"smithy.api#required" => {}}))
    GetBucketMetadataTableConfigurationResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTableStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    GetBucketMetadataTableConfigurationResult.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "Error"))
    GetBucketMetadataTableConfigurationResult.type = Types::GetBucketMetadataTableConfigurationResult
    GetBucketMetricsConfigurationOutput.add_member(:metrics_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsConfiguration, name: "MetricsConfiguration", traits: {"smithy.api#httpPayload" => {}}))
    GetBucketMetricsConfigurationOutput[:http_payload] = :metrics_configuration
    GetBucketMetricsConfigurationOutput[:http_payload_member] = GetBucketMetricsConfigurationOutput.member(:metrics_configuration)
    GetBucketMetricsConfigurationOutput.type = Types::GetBucketMetricsConfigurationOutput
    GetBucketMetricsConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketMetricsConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsId, name: "Id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    GetBucketMetricsConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketMetricsConfigurationRequest.type = Types::GetBucketMetricsConfigurationRequest
    GetBucketNotificationConfigurationOutput.add_member(:topic_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicConfigurationList, name: "TopicConfigurations", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "TopicConfiguration"}))
    GetBucketNotificationConfigurationOutput.add_member(:queue_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueConfigurationList, name: "QueueConfigurations", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "QueueConfiguration"}))
    GetBucketNotificationConfigurationOutput.add_member(:lambda_function_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionConfigurationList, name: "LambdaFunctionConfigurations", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "CloudFunctionConfiguration"}))
    GetBucketNotificationConfigurationOutput.add_member(:event_bridge_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeConfiguration, name: "EventBridgeConfiguration"))
    GetBucketNotificationConfigurationOutput.type = Types::GetBucketNotificationConfigurationOutput
    GetBucketNotificationConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketNotificationConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketNotificationConfigurationRequest.type = Types::GetBucketNotificationConfigurationRequest
    GetBucketOwnershipControlsOutput.add_member(:ownership_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnershipControls, name: "OwnershipControls", traits: {"smithy.api#httpPayload" => {}}))
    GetBucketOwnershipControlsOutput[:http_payload] = :ownership_controls
    GetBucketOwnershipControlsOutput[:http_payload_member] = GetBucketOwnershipControlsOutput.member(:ownership_controls)
    GetBucketOwnershipControlsOutput.type = Types::GetBucketOwnershipControlsOutput
    GetBucketOwnershipControlsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketOwnershipControlsRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketOwnershipControlsRequest.type = Types::GetBucketOwnershipControlsRequest
    GetBucketPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy", traits: {"smithy.api#httpPayload" => {}}))
    GetBucketPolicyOutput[:http_payload] = :policy
    GetBucketPolicyOutput[:http_payload_member] = GetBucketPolicyOutput.member(:policy)
    GetBucketPolicyOutput.type = Types::GetBucketPolicyOutput
    GetBucketPolicyRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketPolicyRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketPolicyRequest.type = Types::GetBucketPolicyRequest
    GetBucketPolicyStatusOutput.add_member(:policy_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatus, name: "PolicyStatus", traits: {"smithy.api#httpPayload" => {}}))
    GetBucketPolicyStatusOutput[:http_payload] = :policy_status
    GetBucketPolicyStatusOutput[:http_payload_member] = GetBucketPolicyStatusOutput.member(:policy_status)
    GetBucketPolicyStatusOutput.type = Types::GetBucketPolicyStatusOutput
    GetBucketPolicyStatusRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketPolicyStatusRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketPolicyStatusRequest.type = Types::GetBucketPolicyStatusRequest
    GetBucketReplicationOutput.add_member(:replication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfiguration, name: "ReplicationConfiguration", traits: {"smithy.api#httpPayload" => {}}))
    GetBucketReplicationOutput[:http_payload] = :replication_configuration
    GetBucketReplicationOutput[:http_payload_member] = GetBucketReplicationOutput.member(:replication_configuration)
    GetBucketReplicationOutput.type = Types::GetBucketReplicationOutput
    GetBucketReplicationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketReplicationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketReplicationRequest.type = Types::GetBucketReplicationRequest
    GetBucketRequestPaymentOutput.add_member(:payer, ::Smithy::Schema::Shapes::MemberShape.new(target: Payer, name: "Payer"))
    GetBucketRequestPaymentOutput.type = Types::GetBucketRequestPaymentOutput
    GetBucketRequestPaymentRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketRequestPaymentRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketRequestPaymentRequest.type = Types::GetBucketRequestPaymentRequest
    GetBucketTaggingOutput.add_member(:tag_set, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSet, name: "TagSet", traits: {"smithy.api#required" => {}}))
    GetBucketTaggingOutput.type = Types::GetBucketTaggingOutput
    GetBucketTaggingRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketTaggingRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketTaggingRequest.type = Types::GetBucketTaggingRequest
    GetBucketVersioningOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketVersioningStatus, name: "Status"))
    GetBucketVersioningOutput.add_member(:mfa_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: MFADeleteStatus, name: "MFADelete", traits: {"smithy.api#xmlName" => "MfaDelete"}))
    GetBucketVersioningOutput.type = Types::GetBucketVersioningOutput
    GetBucketVersioningRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketVersioningRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketVersioningRequest.type = Types::GetBucketVersioningRequest
    GetBucketWebsiteOutput.add_member(:redirect_all_requests_to, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectAllRequestsTo, name: "RedirectAllRequestsTo"))
    GetBucketWebsiteOutput.add_member(:index_document, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexDocument, name: "IndexDocument"))
    GetBucketWebsiteOutput.add_member(:error_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDocument, name: "ErrorDocument"))
    GetBucketWebsiteOutput.add_member(:routing_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingRules, name: "RoutingRules"))
    GetBucketWebsiteOutput.type = Types::GetBucketWebsiteOutput
    GetBucketWebsiteRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketWebsiteRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetBucketWebsiteRequest.type = Types::GetBucketWebsiteRequest
    GetObjectAclOutput.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner"))
    GetObjectAclOutput.add_member(:grants, ::Smithy::Schema::Shapes::MemberShape.new(target: Grants, name: "Grants", traits: {"smithy.api#xmlName" => "AccessControlList"}))
    GetObjectAclOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    GetObjectAclOutput.type = Types::GetObjectAclOutput
    GetObjectAclRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetObjectAclRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Key"}}))
    GetObjectAclRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    GetObjectAclRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    GetObjectAclRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetObjectAclRequest.type = Types::GetObjectAclRequest
    GetObjectAttributesOutput.add_member(:delete_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteMarker, name: "DeleteMarker", traits: {"smithy.api#httpHeader" => "x-amz-delete-marker"}))
    GetObjectAttributesOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModified, name: "LastModified", traits: {"smithy.api#httpHeader" => "Last-Modified"}))
    GetObjectAttributesOutput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpHeader" => "x-amz-version-id"}))
    GetObjectAttributesOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    GetObjectAttributesOutput.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ETag"))
    GetObjectAttributesOutput.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: Checksum, name: "Checksum"))
    GetObjectAttributesOutput.add_member(:object_parts, ::Smithy::Schema::Shapes::MemberShape.new(target: GetObjectAttributesParts, name: "ObjectParts"))
    GetObjectAttributesOutput.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "StorageClass"))
    GetObjectAttributesOutput.add_member(:object_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSize, name: "ObjectSize"))
    GetObjectAttributesOutput.type = Types::GetObjectAttributesOutput
    GetObjectAttributesParts.add_member(:total_parts_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PartsCount, name: "TotalPartsCount", traits: {"smithy.api#xmlName" => "PartsCount"}))
    GetObjectAttributesParts.add_member(:part_number_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PartNumberMarker, name: "PartNumberMarker"))
    GetObjectAttributesParts.add_member(:next_part_number_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextPartNumberMarker, name: "NextPartNumberMarker"))
    GetObjectAttributesParts.add_member(:max_parts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxParts, name: "MaxParts"))
    GetObjectAttributesParts.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: IsTruncated, name: "IsTruncated"))
    GetObjectAttributesParts.add_member(:parts, ::Smithy::Schema::Shapes::MemberShape.new(target: PartsList, name: "Parts", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Part"}))
    GetObjectAttributesParts.type = Types::GetObjectAttributesParts
    GetObjectAttributesRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetObjectAttributesRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetObjectAttributesRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    GetObjectAttributesRequest.add_member(:max_parts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxParts, name: "MaxParts", traits: {"smithy.api#httpHeader" => "x-amz-max-parts"}))
    GetObjectAttributesRequest.add_member(:part_number_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PartNumberMarker, name: "PartNumberMarker", traits: {"smithy.api#httpHeader" => "x-amz-part-number-marker"}))
    GetObjectAttributesRequest.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    GetObjectAttributesRequest.add_member(:sse_customer_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKey, name: "SSECustomerKey", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key"}))
    GetObjectAttributesRequest.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    GetObjectAttributesRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    GetObjectAttributesRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetObjectAttributesRequest.add_member(:object_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectAttributesList, name: "ObjectAttributes", traits: {"smithy.api#httpHeader" => "x-amz-object-attributes", "smithy.api#required" => {}}))
    GetObjectAttributesRequest.type = Types::GetObjectAttributesRequest
    GetObjectLegalHoldOutput.add_member(:legal_hold, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockLegalHold, name: "LegalHold", traits: {"smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "LegalHold"}))
    GetObjectLegalHoldOutput[:http_payload] = :legal_hold
    GetObjectLegalHoldOutput[:http_payload_member] = GetObjectLegalHoldOutput.member(:legal_hold)
    GetObjectLegalHoldOutput.type = Types::GetObjectLegalHoldOutput
    GetObjectLegalHoldRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetObjectLegalHoldRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetObjectLegalHoldRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    GetObjectLegalHoldRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    GetObjectLegalHoldRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetObjectLegalHoldRequest.type = Types::GetObjectLegalHoldRequest
    GetObjectLockConfigurationOutput.add_member(:object_lock_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockConfiguration, name: "ObjectLockConfiguration", traits: {"smithy.api#httpPayload" => {}}))
    GetObjectLockConfigurationOutput[:http_payload] = :object_lock_configuration
    GetObjectLockConfigurationOutput[:http_payload_member] = GetObjectLockConfigurationOutput.member(:object_lock_configuration)
    GetObjectLockConfigurationOutput.type = Types::GetObjectLockConfigurationOutput
    GetObjectLockConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetObjectLockConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetObjectLockConfigurationRequest.type = Types::GetObjectLockConfigurationRequest
    GetObjectOutput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingBlob, name: "Body", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    GetObjectOutput.add_member(:delete_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteMarker, name: "DeleteMarker", traits: {"smithy.api#httpHeader" => "x-amz-delete-marker"}))
    GetObjectOutput.add_member(:accept_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptRanges, name: "AcceptRanges", traits: {"smithy.api#httpHeader" => "accept-ranges"}))
    GetObjectOutput.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: Expiration, name: "Expiration", traits: {"smithy.api#httpHeader" => "x-amz-expiration"}))
    GetObjectOutput.add_member(:restore, ::Smithy::Schema::Shapes::MemberShape.new(target: Restore, name: "Restore", traits: {"smithy.api#httpHeader" => "x-amz-restore"}))
    GetObjectOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModified, name: "LastModified", traits: {"smithy.api#httpHeader" => "Last-Modified"}))
    GetObjectOutput.add_member(:content_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentLength, name: "ContentLength", traits: {"smithy.api#httpHeader" => "Content-Length"}))
    GetObjectOutput.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    GetObjectOutput.add_member(:checksum_crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32, name: "ChecksumCRC32", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc32"}))
    GetObjectOutput.add_member(:checksum_crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32C, name: "ChecksumCRC32C", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc32c"}))
    GetObjectOutput.add_member(:checksum_crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC64NVME, name: "ChecksumCRC64NVME", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc64nvme"}))
    GetObjectOutput.add_member(:checksum_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA1, name: "ChecksumSHA1", traits: {"smithy.api#httpHeader" => "x-amz-checksum-sha1"}))
    GetObjectOutput.add_member(:checksum_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA256, name: "ChecksumSHA256", traits: {"smithy.api#httpHeader" => "x-amz-checksum-sha256"}))
    GetObjectOutput.add_member(:checksum_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumType, name: "ChecksumType", traits: {"smithy.api#httpHeader" => "x-amz-checksum-type"}))
    GetObjectOutput.add_member(:missing_meta, ::Smithy::Schema::Shapes::MemberShape.new(target: MissingMeta, name: "MissingMeta", traits: {"smithy.api#httpHeader" => "x-amz-missing-meta"}))
    GetObjectOutput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpHeader" => "x-amz-version-id"}))
    GetObjectOutput.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheControl, name: "CacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    GetObjectOutput.add_member(:content_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentDisposition, name: "ContentDisposition", traits: {"smithy.api#httpHeader" => "Content-Disposition"}))
    GetObjectOutput.add_member(:content_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentEncoding, name: "ContentEncoding", traits: {"smithy.api#httpHeader" => "Content-Encoding"}))
    GetObjectOutput.add_member(:content_language, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentLanguage, name: "ContentLanguage", traits: {"smithy.api#httpHeader" => "Content-Language"}))
    GetObjectOutput.add_member(:content_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentRange, name: "ContentRange", traits: {"smithy.api#httpHeader" => "Content-Range"}))
    GetObjectOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetObjectOutput.add_member(:expires, ::Smithy::Schema::Shapes::MemberShape.new(target: Expires, name: "Expires", traits: {"smithy.api#httpHeader" => "Expires"}))
    GetObjectOutput.add_member(:website_redirect_location, ::Smithy::Schema::Shapes::MemberShape.new(target: WebsiteRedirectLocation, name: "WebsiteRedirectLocation", traits: {"smithy.api#httpHeader" => "x-amz-website-redirect-location"}))
    GetObjectOutput.add_member(:server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryption, name: "ServerSideEncryption", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption"}))
    GetObjectOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata", traits: {"smithy.api#httpPrefixHeaders" => "x-amz-meta-"}))
    GetObjectOutput.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    GetObjectOutput.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    GetObjectOutput.add_member(:ssekms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "SSEKMSKeyId", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-aws-kms-key-id"}))
    GetObjectOutput.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketKeyEnabled, name: "BucketKeyEnabled", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-bucket-key-enabled"}))
    GetObjectOutput.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "StorageClass", traits: {"smithy.api#httpHeader" => "x-amz-storage-class"}))
    GetObjectOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    GetObjectOutput.add_member(:replication_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatus, name: "ReplicationStatus", traits: {"smithy.api#httpHeader" => "x-amz-replication-status"}))
    GetObjectOutput.add_member(:parts_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PartsCount, name: "PartsCount", traits: {"smithy.api#httpHeader" => "x-amz-mp-parts-count"}))
    GetObjectOutput.add_member(:tag_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TagCount, name: "TagCount", traits: {"smithy.api#httpHeader" => "x-amz-tagging-count"}))
    GetObjectOutput.add_member(:object_lock_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockMode, name: "ObjectLockMode", traits: {"smithy.api#httpHeader" => "x-amz-object-lock-mode"}))
    GetObjectOutput.add_member(:object_lock_retain_until_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockRetainUntilDate, name: "ObjectLockRetainUntilDate", traits: {"smithy.api#httpHeader" => "x-amz-object-lock-retain-until-date"}))
    GetObjectOutput.add_member(:object_lock_legal_hold_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockLegalHoldStatus, name: "ObjectLockLegalHoldStatus", traits: {"smithy.api#httpHeader" => "x-amz-object-lock-legal-hold"}))
    GetObjectOutput[:http_payload] = :body
    GetObjectOutput[:http_payload_member] = GetObjectOutput.member(:body)
    GetObjectOutput.type = Types::GetObjectOutput
    GetObjectRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetObjectRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: IfMatch, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    GetObjectRequest.add_member(:if_modified_since, ::Smithy::Schema::Shapes::MemberShape.new(target: IfModifiedSince, name: "IfModifiedSince", traits: {"smithy.api#httpHeader" => "If-Modified-Since"}))
    GetObjectRequest.add_member(:if_none_match, ::Smithy::Schema::Shapes::MemberShape.new(target: IfNoneMatch, name: "IfNoneMatch", traits: {"smithy.api#httpHeader" => "If-None-Match"}))
    GetObjectRequest.add_member(:if_unmodified_since, ::Smithy::Schema::Shapes::MemberShape.new(target: IfUnmodifiedSince, name: "IfUnmodifiedSince", traits: {"smithy.api#httpHeader" => "If-Unmodified-Since"}))
    GetObjectRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Key"}}))
    GetObjectRequest.add_member(:range, ::Smithy::Schema::Shapes::MemberShape.new(target: Range, name: "Range", traits: {"smithy.api#httpHeader" => "Range"}))
    GetObjectRequest.add_member(:response_cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseCacheControl, name: "ResponseCacheControl", traits: {"smithy.api#httpQuery" => "response-cache-control"}))
    GetObjectRequest.add_member(:response_content_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseContentDisposition, name: "ResponseContentDisposition", traits: {"smithy.api#httpQuery" => "response-content-disposition"}))
    GetObjectRequest.add_member(:response_content_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseContentEncoding, name: "ResponseContentEncoding", traits: {"smithy.api#httpQuery" => "response-content-encoding"}))
    GetObjectRequest.add_member(:response_content_language, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseContentLanguage, name: "ResponseContentLanguage", traits: {"smithy.api#httpQuery" => "response-content-language"}))
    GetObjectRequest.add_member(:response_content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseContentType, name: "ResponseContentType", traits: {"smithy.api#httpQuery" => "response-content-type"}))
    GetObjectRequest.add_member(:response_expires, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseExpires, name: "ResponseExpires", traits: {"smithy.api#httpQuery" => "response-expires"}))
    GetObjectRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    GetObjectRequest.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    GetObjectRequest.add_member(:sse_customer_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKey, name: "SSECustomerKey", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key"}))
    GetObjectRequest.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    GetObjectRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    GetObjectRequest.add_member(:part_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PartNumber, name: "PartNumber", traits: {"smithy.api#httpQuery" => "partNumber"}))
    GetObjectRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetObjectRequest.add_member(:checksum_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumMode, name: "ChecksumMode", traits: {"smithy.api#httpHeader" => "x-amz-checksum-mode"}))
    GetObjectRequest.type = Types::GetObjectRequest
    GetObjectRetentionOutput.add_member(:retention, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockRetention, name: "Retention", traits: {"smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "Retention"}))
    GetObjectRetentionOutput[:http_payload] = :retention
    GetObjectRetentionOutput[:http_payload_member] = GetObjectRetentionOutput.member(:retention)
    GetObjectRetentionOutput.type = Types::GetObjectRetentionOutput
    GetObjectRetentionRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetObjectRetentionRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetObjectRetentionRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    GetObjectRetentionRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    GetObjectRetentionRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetObjectRetentionRequest.type = Types::GetObjectRetentionRequest
    GetObjectTaggingOutput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpHeader" => "x-amz-version-id"}))
    GetObjectTaggingOutput.add_member(:tag_set, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSet, name: "TagSet", traits: {"smithy.api#required" => {}}))
    GetObjectTaggingOutput.type = Types::GetObjectTaggingOutput
    GetObjectTaggingRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetObjectTaggingRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetObjectTaggingRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    GetObjectTaggingRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetObjectTaggingRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    GetObjectTaggingRequest.type = Types::GetObjectTaggingRequest
    GetObjectTorrentOutput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingBlob, name: "Body", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    GetObjectTorrentOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    GetObjectTorrentOutput[:http_payload] = :body
    GetObjectTorrentOutput[:http_payload_member] = GetObjectTorrentOutput.member(:body)
    GetObjectTorrentOutput.type = Types::GetObjectTorrentOutput
    GetObjectTorrentRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetObjectTorrentRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetObjectTorrentRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    GetObjectTorrentRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetObjectTorrentRequest.type = Types::GetObjectTorrentRequest
    GetPublicAccessBlockOutput.add_member(:public_access_block_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessBlockConfiguration, name: "PublicAccessBlockConfiguration", traits: {"smithy.api#httpPayload" => {}}))
    GetPublicAccessBlockOutput[:http_payload] = :public_access_block_configuration
    GetPublicAccessBlockOutput[:http_payload_member] = GetPublicAccessBlockOutput.member(:public_access_block_configuration)
    GetPublicAccessBlockOutput.type = Types::GetPublicAccessBlockOutput
    GetPublicAccessBlockRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetPublicAccessBlockRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    GetPublicAccessBlockRequest.type = Types::GetPublicAccessBlockRequest
    GlacierJobParameters.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: Tier, name: "Tier", traits: {"smithy.api#required" => {}}))
    GlacierJobParameters.type = Types::GlacierJobParameters
    Grant.add_member(:grantee, ::Smithy::Schema::Shapes::MemberShape.new(target: Grantee, name: "Grantee", traits: {"smithy.api#xmlNamespace" => {"uri" => "http://www.w3.org/2001/XMLSchema-instance", "prefix" => "xsi"}}))
    Grant.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "Permission"))
    Grant.type = Types::Grant
    Grantee.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    Grantee.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "EmailAddress"))
    Grantee.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "ID"))
    Grantee.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "URI"))
    Grantee.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type", traits: {"smithy.api#required" => {}, "smithy.api#xmlAttribute" => {}, "smithy.api#xmlName" => "xsi:type"}))
    Grantee.type = Types::Grantee
    Grants.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Grant, name: "member", traits: {"smithy.api#xmlName" => "Grant"})
    HeadBucketOutput.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3RegionalOrS3ExpressBucketArnString, name: "BucketArn", traits: {"smithy.api#httpHeader" => "x-amz-bucket-arn"}))
    HeadBucketOutput.add_member(:bucket_location_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationType, name: "BucketLocationType", traits: {"smithy.api#httpHeader" => "x-amz-bucket-location-type"}))
    HeadBucketOutput.add_member(:bucket_location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketLocationName, name: "BucketLocationName", traits: {"smithy.api#httpHeader" => "x-amz-bucket-location-name"}))
    HeadBucketOutput.add_member(:bucket_region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "BucketRegion", traits: {"smithy.api#httpHeader" => "x-amz-bucket-region"}))
    HeadBucketOutput.add_member(:access_point_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointAlias, name: "AccessPointAlias", traits: {"smithy.api#httpHeader" => "x-amz-access-point-alias"}))
    HeadBucketOutput.type = Types::HeadBucketOutput
    HeadBucketRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    HeadBucketRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    HeadBucketRequest.type = Types::HeadBucketRequest
    HeadObjectOutput.add_member(:delete_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteMarker, name: "DeleteMarker", traits: {"smithy.api#httpHeader" => "x-amz-delete-marker"}))
    HeadObjectOutput.add_member(:accept_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptRanges, name: "AcceptRanges", traits: {"smithy.api#httpHeader" => "accept-ranges"}))
    HeadObjectOutput.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: Expiration, name: "Expiration", traits: {"smithy.api#httpHeader" => "x-amz-expiration"}))
    HeadObjectOutput.add_member(:restore, ::Smithy::Schema::Shapes::MemberShape.new(target: Restore, name: "Restore", traits: {"smithy.api#httpHeader" => "x-amz-restore"}))
    HeadObjectOutput.add_member(:archive_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveStatus, name: "ArchiveStatus", traits: {"smithy.api#httpHeader" => "x-amz-archive-status"}))
    HeadObjectOutput.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModified, name: "LastModified", traits: {"smithy.api#httpHeader" => "Last-Modified"}))
    HeadObjectOutput.add_member(:content_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentLength, name: "ContentLength", traits: {"smithy.api#httpHeader" => "Content-Length"}))
    HeadObjectOutput.add_member(:checksum_crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32, name: "ChecksumCRC32", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc32"}))
    HeadObjectOutput.add_member(:checksum_crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32C, name: "ChecksumCRC32C", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc32c"}))
    HeadObjectOutput.add_member(:checksum_crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC64NVME, name: "ChecksumCRC64NVME", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc64nvme"}))
    HeadObjectOutput.add_member(:checksum_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA1, name: "ChecksumSHA1", traits: {"smithy.api#httpHeader" => "x-amz-checksum-sha1"}))
    HeadObjectOutput.add_member(:checksum_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA256, name: "ChecksumSHA256", traits: {"smithy.api#httpHeader" => "x-amz-checksum-sha256"}))
    HeadObjectOutput.add_member(:checksum_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumType, name: "ChecksumType", traits: {"smithy.api#httpHeader" => "x-amz-checksum-type"}))
    HeadObjectOutput.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    HeadObjectOutput.add_member(:missing_meta, ::Smithy::Schema::Shapes::MemberShape.new(target: MissingMeta, name: "MissingMeta", traits: {"smithy.api#httpHeader" => "x-amz-missing-meta"}))
    HeadObjectOutput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpHeader" => "x-amz-version-id"}))
    HeadObjectOutput.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheControl, name: "CacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    HeadObjectOutput.add_member(:content_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentDisposition, name: "ContentDisposition", traits: {"smithy.api#httpHeader" => "Content-Disposition"}))
    HeadObjectOutput.add_member(:content_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentEncoding, name: "ContentEncoding", traits: {"smithy.api#httpHeader" => "Content-Encoding"}))
    HeadObjectOutput.add_member(:content_language, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentLanguage, name: "ContentLanguage", traits: {"smithy.api#httpHeader" => "Content-Language"}))
    HeadObjectOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    HeadObjectOutput.add_member(:content_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentRange, name: "ContentRange", traits: {"smithy.api#httpHeader" => "Content-Range"}))
    HeadObjectOutput.add_member(:expires, ::Smithy::Schema::Shapes::MemberShape.new(target: Expires, name: "Expires", traits: {"smithy.api#httpHeader" => "Expires"}))
    HeadObjectOutput.add_member(:website_redirect_location, ::Smithy::Schema::Shapes::MemberShape.new(target: WebsiteRedirectLocation, name: "WebsiteRedirectLocation", traits: {"smithy.api#httpHeader" => "x-amz-website-redirect-location"}))
    HeadObjectOutput.add_member(:server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryption, name: "ServerSideEncryption", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption"}))
    HeadObjectOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata", traits: {"smithy.api#httpPrefixHeaders" => "x-amz-meta-"}))
    HeadObjectOutput.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    HeadObjectOutput.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    HeadObjectOutput.add_member(:ssekms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "SSEKMSKeyId", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-aws-kms-key-id"}))
    HeadObjectOutput.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketKeyEnabled, name: "BucketKeyEnabled", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-bucket-key-enabled"}))
    HeadObjectOutput.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "StorageClass", traits: {"smithy.api#httpHeader" => "x-amz-storage-class"}))
    HeadObjectOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    HeadObjectOutput.add_member(:replication_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatus, name: "ReplicationStatus", traits: {"smithy.api#httpHeader" => "x-amz-replication-status"}))
    HeadObjectOutput.add_member(:parts_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PartsCount, name: "PartsCount", traits: {"smithy.api#httpHeader" => "x-amz-mp-parts-count"}))
    HeadObjectOutput.add_member(:tag_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TagCount, name: "TagCount", traits: {"smithy.api#httpHeader" => "x-amz-tagging-count"}))
    HeadObjectOutput.add_member(:object_lock_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockMode, name: "ObjectLockMode", traits: {"smithy.api#httpHeader" => "x-amz-object-lock-mode"}))
    HeadObjectOutput.add_member(:object_lock_retain_until_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockRetainUntilDate, name: "ObjectLockRetainUntilDate", traits: {"smithy.api#httpHeader" => "x-amz-object-lock-retain-until-date"}))
    HeadObjectOutput.add_member(:object_lock_legal_hold_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockLegalHoldStatus, name: "ObjectLockLegalHoldStatus", traits: {"smithy.api#httpHeader" => "x-amz-object-lock-legal-hold"}))
    HeadObjectOutput.type = Types::HeadObjectOutput
    HeadObjectRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    HeadObjectRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: IfMatch, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    HeadObjectRequest.add_member(:if_modified_since, ::Smithy::Schema::Shapes::MemberShape.new(target: IfModifiedSince, name: "IfModifiedSince", traits: {"smithy.api#httpHeader" => "If-Modified-Since"}))
    HeadObjectRequest.add_member(:if_none_match, ::Smithy::Schema::Shapes::MemberShape.new(target: IfNoneMatch, name: "IfNoneMatch", traits: {"smithy.api#httpHeader" => "If-None-Match"}))
    HeadObjectRequest.add_member(:if_unmodified_since, ::Smithy::Schema::Shapes::MemberShape.new(target: IfUnmodifiedSince, name: "IfUnmodifiedSince", traits: {"smithy.api#httpHeader" => "If-Unmodified-Since"}))
    HeadObjectRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Key"}}))
    HeadObjectRequest.add_member(:range, ::Smithy::Schema::Shapes::MemberShape.new(target: Range, name: "Range", traits: {"smithy.api#httpHeader" => "Range"}))
    HeadObjectRequest.add_member(:response_cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseCacheControl, name: "ResponseCacheControl", traits: {"smithy.api#httpQuery" => "response-cache-control"}))
    HeadObjectRequest.add_member(:response_content_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseContentDisposition, name: "ResponseContentDisposition", traits: {"smithy.api#httpQuery" => "response-content-disposition"}))
    HeadObjectRequest.add_member(:response_content_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseContentEncoding, name: "ResponseContentEncoding", traits: {"smithy.api#httpQuery" => "response-content-encoding"}))
    HeadObjectRequest.add_member(:response_content_language, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseContentLanguage, name: "ResponseContentLanguage", traits: {"smithy.api#httpQuery" => "response-content-language"}))
    HeadObjectRequest.add_member(:response_content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseContentType, name: "ResponseContentType", traits: {"smithy.api#httpQuery" => "response-content-type"}))
    HeadObjectRequest.add_member(:response_expires, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseExpires, name: "ResponseExpires", traits: {"smithy.api#httpQuery" => "response-expires"}))
    HeadObjectRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    HeadObjectRequest.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    HeadObjectRequest.add_member(:sse_customer_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKey, name: "SSECustomerKey", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key"}))
    HeadObjectRequest.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    HeadObjectRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    HeadObjectRequest.add_member(:part_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PartNumber, name: "PartNumber", traits: {"smithy.api#httpQuery" => "partNumber"}))
    HeadObjectRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    HeadObjectRequest.add_member(:checksum_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumMode, name: "ChecksumMode", traits: {"smithy.api#httpHeader" => "x-amz-checksum-mode"}))
    HeadObjectRequest.type = Types::HeadObjectRequest
    IdempotencyParameterMismatch.type = Types::IdempotencyParameterMismatch
    IndexDocument.add_member(:suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: Suffix, name: "Suffix", traits: {"smithy.api#required" => {}}))
    IndexDocument.type = Types::IndexDocument
    Initiator.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "ID"))
    Initiator.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    Initiator.type = Types::Initiator
    InputSerialization.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: CSVInput, name: "CSV"))
    InputSerialization.add_member(:compression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CompressionType, name: "CompressionType"))
    InputSerialization.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: JSONInput, name: "JSON"))
    InputSerialization.add_member(:parquet, ::Smithy::Schema::Shapes::MemberShape.new(target: ParquetInput, name: "Parquet"))
    InputSerialization.type = Types::InputSerialization
    IntelligentTieringAccessTier.add_member(:archive_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVE_ACCESS", traits: {"smithy.api#enumValue" => "ARCHIVE_ACCESS"}))
    IntelligentTieringAccessTier.add_member(:deep_archive_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEEP_ARCHIVE_ACCESS", traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE_ACCESS"}))
    IntelligentTieringAndOperator.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    IntelligentTieringAndOperator.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSet, name: "Tags", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Tag"}))
    IntelligentTieringAndOperator.type = Types::IntelligentTieringAndOperator
    IntelligentTieringConfiguration.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligentTieringId, name: "Id", traits: {"smithy.api#required" => {}}))
    IntelligentTieringConfiguration.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligentTieringFilter, name: "Filter"))
    IntelligentTieringConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligentTieringStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    IntelligentTieringConfiguration.add_member(:tierings, ::Smithy::Schema::Shapes::MemberShape.new(target: TieringList, name: "Tierings", traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Tiering"}))
    IntelligentTieringConfiguration.type = Types::IntelligentTieringConfiguration
    IntelligentTieringConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligentTieringConfiguration, name: "member")
    IntelligentTieringFilter.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    IntelligentTieringFilter.add_member(:tag, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "Tag"))
    IntelligentTieringFilter.add_member(:and, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligentTieringAndOperator, name: "And"))
    IntelligentTieringFilter.type = Types::IntelligentTieringFilter
    IntelligentTieringStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    IntelligentTieringStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    InvalidObjectState.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "StorageClass"))
    InvalidObjectState.add_member(:access_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligentTieringAccessTier, name: "AccessTier"))
    InvalidObjectState.type = Types::InvalidObjectState
    InvalidRequest.type = Types::InvalidRequest
    InvalidWriteOffset.type = Types::InvalidWriteOffset
    InventoryConfiguration.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryDestination, name: "Destination", traits: {"smithy.api#required" => {}}))
    InventoryConfiguration.add_member(:is_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: IsEnabled, name: "IsEnabled", traits: {"smithy.api#required" => {}}))
    InventoryConfiguration.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryFilter, name: "Filter"))
    InventoryConfiguration.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryId, name: "Id", traits: {"smithy.api#required" => {}}))
    InventoryConfiguration.add_member(:included_object_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryIncludedObjectVersions, name: "IncludedObjectVersions", traits: {"smithy.api#required" => {}}))
    InventoryConfiguration.add_member(:optional_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryOptionalFields, name: "OptionalFields"))
    InventoryConfiguration.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: InventorySchedule, name: "Schedule", traits: {"smithy.api#required" => {}}))
    InventoryConfiguration.type = Types::InventoryConfiguration
    InventoryConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryConfiguration, name: "member")
    InventoryConfigurationState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    InventoryConfigurationState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    InventoryDestination.add_member(:s3_bucket_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryS3BucketDestination, name: "S3BucketDestination", traits: {"smithy.api#required" => {}}))
    InventoryDestination.type = Types::InventoryDestination
    InventoryEncryption.add_member(:sses3, ::Smithy::Schema::Shapes::MemberShape.new(target: SSES3, name: "SSES3", traits: {"smithy.api#xmlName" => "SSE-S3"}))
    InventoryEncryption.add_member(:ssekms, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMS, name: "SSEKMS", traits: {"smithy.api#xmlName" => "SSE-KMS"}))
    InventoryEncryption.type = Types::InventoryEncryption
    InventoryFilter.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix", traits: {"smithy.api#required" => {}}))
    InventoryFilter.type = Types::InventoryFilter
    InventoryFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    InventoryFormat.add_member(:orc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORC", traits: {"smithy.api#enumValue" => "ORC"}))
    InventoryFormat.add_member(:parquet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Parquet", traits: {"smithy.api#enumValue" => "Parquet"}))
    InventoryFrequency.add_member(:daily, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Daily", traits: {"smithy.api#enumValue" => "Daily"}))
    InventoryFrequency.add_member(:weekly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Weekly", traits: {"smithy.api#enumValue" => "Weekly"}))
    InventoryIncludedObjectVersions.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "All", traits: {"smithy.api#enumValue" => "All"}))
    InventoryIncludedObjectVersions.add_member(:current, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Current", traits: {"smithy.api#enumValue" => "Current"}))
    InventoryOptionalField.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Size", traits: {"smithy.api#enumValue" => "Size"}))
    InventoryOptionalField.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LastModifiedDate", traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    InventoryOptionalField.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StorageClass", traits: {"smithy.api#enumValue" => "StorageClass"}))
    InventoryOptionalField.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ETag", traits: {"smithy.api#enumValue" => "ETag"}))
    InventoryOptionalField.add_member(:is_multipart_uploaded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IsMultipartUploaded", traits: {"smithy.api#enumValue" => "IsMultipartUploaded"}))
    InventoryOptionalField.add_member(:replication_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReplicationStatus", traits: {"smithy.api#enumValue" => "ReplicationStatus"}))
    InventoryOptionalField.add_member(:encryption_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EncryptionStatus", traits: {"smithy.api#enumValue" => "EncryptionStatus"}))
    InventoryOptionalField.add_member(:object_lock_retain_until_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ObjectLockRetainUntilDate", traits: {"smithy.api#enumValue" => "ObjectLockRetainUntilDate"}))
    InventoryOptionalField.add_member(:object_lock_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ObjectLockMode", traits: {"smithy.api#enumValue" => "ObjectLockMode"}))
    InventoryOptionalField.add_member(:object_lock_legal_hold_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ObjectLockLegalHoldStatus", traits: {"smithy.api#enumValue" => "ObjectLockLegalHoldStatus"}))
    InventoryOptionalField.add_member(:intelligent_tiering_access_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IntelligentTieringAccessTier", traits: {"smithy.api#enumValue" => "IntelligentTieringAccessTier"}))
    InventoryOptionalField.add_member(:bucket_key_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BucketKeyStatus", traits: {"smithy.api#enumValue" => "BucketKeyStatus"}))
    InventoryOptionalField.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChecksumAlgorithm", traits: {"smithy.api#enumValue" => "ChecksumAlgorithm"}))
    InventoryOptionalField.add_member(:object_access_control_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ObjectAccessControlList", traits: {"smithy.api#enumValue" => "ObjectAccessControlList"}))
    InventoryOptionalField.add_member(:object_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ObjectOwner", traits: {"smithy.api#enumValue" => "ObjectOwner"}))
    InventoryOptionalFields.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryOptionalField, name: "member", traits: {"smithy.api#xmlName" => "Field"})
    InventoryS3BucketDestination.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId"))
    InventoryS3BucketDestination.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#required" => {}}))
    InventoryS3BucketDestination.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryFormat, name: "Format", traits: {"smithy.api#required" => {}}))
    InventoryS3BucketDestination.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    InventoryS3BucketDestination.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryEncryption, name: "Encryption"))
    InventoryS3BucketDestination.type = Types::InventoryS3BucketDestination
    InventorySchedule.add_member(:frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryFrequency, name: "Frequency", traits: {"smithy.api#required" => {}}))
    InventorySchedule.type = Types::InventorySchedule
    InventoryTableConfiguration.add_member(:configuration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryConfigurationState, name: "ConfigurationState", traits: {"smithy.api#required" => {}}))
    InventoryTableConfiguration.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTableEncryptionConfiguration, name: "EncryptionConfiguration"))
    InventoryTableConfiguration.type = Types::InventoryTableConfiguration
    InventoryTableConfigurationResult.add_member(:configuration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryConfigurationState, name: "ConfigurationState", traits: {"smithy.api#required" => {}}))
    InventoryTableConfigurationResult.add_member(:table_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTableStatus, name: "TableStatus"))
    InventoryTableConfigurationResult.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "Error"))
    InventoryTableConfigurationResult.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesName, name: "TableName"))
    InventoryTableConfigurationResult.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesArn, name: "TableArn"))
    InventoryTableConfigurationResult.type = Types::InventoryTableConfigurationResult
    InventoryTableConfigurationUpdates.add_member(:configuration_state, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryConfigurationState, name: "ConfigurationState", traits: {"smithy.api#required" => {}}))
    InventoryTableConfigurationUpdates.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTableEncryptionConfiguration, name: "EncryptionConfiguration"))
    InventoryTableConfigurationUpdates.type = Types::InventoryTableConfigurationUpdates
    JSONInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: JSONType, name: "Type"))
    JSONInput.type = Types::JSONInput
    JSONOutput.add_member(:record_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordDelimiter, name: "RecordDelimiter"))
    JSONOutput.type = Types::JSONOutput
    JSONType.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT", traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    JSONType.add_member(:lines, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINES", traits: {"smithy.api#enumValue" => "LINES"}))
    JournalTableConfiguration.add_member(:record_expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordExpiration, name: "RecordExpiration", traits: {"smithy.api#required" => {}}))
    JournalTableConfiguration.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTableEncryptionConfiguration, name: "EncryptionConfiguration"))
    JournalTableConfiguration.type = Types::JournalTableConfiguration
    JournalTableConfigurationResult.add_member(:table_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataTableStatus, name: "TableStatus", traits: {"smithy.api#required" => {}}))
    JournalTableConfigurationResult.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "Error"))
    JournalTableConfigurationResult.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesName, name: "TableName", traits: {"smithy.api#required" => {}}))
    JournalTableConfigurationResult.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesArn, name: "TableArn"))
    JournalTableConfigurationResult.add_member(:record_expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordExpiration, name: "RecordExpiration", traits: {"smithy.api#required" => {}}))
    JournalTableConfigurationResult.type = Types::JournalTableConfigurationResult
    JournalTableConfigurationUpdates.add_member(:record_expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordExpiration, name: "RecordExpiration", traits: {"smithy.api#required" => {}}))
    JournalTableConfigurationUpdates.type = Types::JournalTableConfigurationUpdates
    LambdaFunctionConfiguration.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationId, name: "Id"))
    LambdaFunctionConfiguration.add_member(:lambda_function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionArn, name: "LambdaFunctionArn", traits: {"smithy.api#required" => {}, "smithy.api#xmlName" => "CloudFunction"}))
    LambdaFunctionConfiguration.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventList, name: "Events", traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Event"}))
    LambdaFunctionConfiguration.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfigurationFilter, name: "Filter"))
    LambdaFunctionConfiguration.type = Types::LambdaFunctionConfiguration
    LambdaFunctionConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionConfiguration, name: "member")
    LifecycleExpiration.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "Date"))
    LifecycleExpiration.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: Days, name: "Days"))
    LifecycleExpiration.add_member(:expired_object_delete_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiredObjectDeleteMarker, name: "ExpiredObjectDeleteMarker"))
    LifecycleExpiration.type = Types::LifecycleExpiration
    LifecycleRule.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExpiration, name: "Expiration"))
    LifecycleRule.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "ID"))
    LifecycleRule.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix", traits: {"smithy.api#deprecated" => {}}))
    LifecycleRule.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleRuleFilter, name: "Filter"))
    LifecycleRule.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    LifecycleRule.add_member(:transitions, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitionList, name: "Transitions", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Transition"}))
    LifecycleRule.add_member(:noncurrent_version_transitions, ::Smithy::Schema::Shapes::MemberShape.new(target: NoncurrentVersionTransitionList, name: "NoncurrentVersionTransitions", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "NoncurrentVersionTransition"}))
    LifecycleRule.add_member(:noncurrent_version_expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: NoncurrentVersionExpiration, name: "NoncurrentVersionExpiration"))
    LifecycleRule.add_member(:abort_incomplete_multipart_upload, ::Smithy::Schema::Shapes::MemberShape.new(target: AbortIncompleteMultipartUpload, name: "AbortIncompleteMultipartUpload"))
    LifecycleRule.type = Types::LifecycleRule
    LifecycleRuleAndOperator.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    LifecycleRuleAndOperator.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSet, name: "Tags", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Tag"}))
    LifecycleRuleAndOperator.add_member(:object_size_greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSizeGreaterThanBytes, name: "ObjectSizeGreaterThan"))
    LifecycleRuleAndOperator.add_member(:object_size_less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSizeLessThanBytes, name: "ObjectSizeLessThan"))
    LifecycleRuleAndOperator.type = Types::LifecycleRuleAndOperator
    LifecycleRuleFilter.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    LifecycleRuleFilter.add_member(:tag, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "Tag"))
    LifecycleRuleFilter.add_member(:object_size_greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSizeGreaterThanBytes, name: "ObjectSizeGreaterThan"))
    LifecycleRuleFilter.add_member(:object_size_less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSizeLessThanBytes, name: "ObjectSizeLessThan"))
    LifecycleRuleFilter.add_member(:and, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleRuleAndOperator, name: "And"))
    LifecycleRuleFilter.type = Types::LifecycleRuleFilter
    LifecycleRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleRule, name: "member")
    ListBucketAnalyticsConfigurationsOutput.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: IsTruncated, name: "IsTruncated"))
    ListBucketAnalyticsConfigurationsOutput.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "ContinuationToken"))
    ListBucketAnalyticsConfigurationsOutput.add_member(:next_continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextContinuationToken"))
    ListBucketAnalyticsConfigurationsOutput.add_member(:analytics_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsConfigurationList, name: "AnalyticsConfigurationList", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "AnalyticsConfiguration"}))
    ListBucketAnalyticsConfigurationsOutput.type = Types::ListBucketAnalyticsConfigurationsOutput
    ListBucketAnalyticsConfigurationsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    ListBucketAnalyticsConfigurationsRequest.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "ContinuationToken", traits: {"smithy.api#httpQuery" => "continuation-token"}))
    ListBucketAnalyticsConfigurationsRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    ListBucketAnalyticsConfigurationsRequest.type = Types::ListBucketAnalyticsConfigurationsRequest
    ListBucketIntelligentTieringConfigurationsOutput.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: IsTruncated, name: "IsTruncated"))
    ListBucketIntelligentTieringConfigurationsOutput.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "ContinuationToken"))
    ListBucketIntelligentTieringConfigurationsOutput.add_member(:next_continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextContinuationToken"))
    ListBucketIntelligentTieringConfigurationsOutput.add_member(:intelligent_tiering_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligentTieringConfigurationList, name: "IntelligentTieringConfigurationList", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "IntelligentTieringConfiguration"}))
    ListBucketIntelligentTieringConfigurationsOutput.type = Types::ListBucketIntelligentTieringConfigurationsOutput
    ListBucketIntelligentTieringConfigurationsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    ListBucketIntelligentTieringConfigurationsRequest.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "ContinuationToken", traits: {"smithy.api#httpQuery" => "continuation-token"}))
    ListBucketIntelligentTieringConfigurationsRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    ListBucketIntelligentTieringConfigurationsRequest.type = Types::ListBucketIntelligentTieringConfigurationsRequest
    ListBucketInventoryConfigurationsOutput.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "ContinuationToken"))
    ListBucketInventoryConfigurationsOutput.add_member(:inventory_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryConfigurationList, name: "InventoryConfigurationList", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "InventoryConfiguration"}))
    ListBucketInventoryConfigurationsOutput.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: IsTruncated, name: "IsTruncated"))
    ListBucketInventoryConfigurationsOutput.add_member(:next_continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextContinuationToken"))
    ListBucketInventoryConfigurationsOutput.type = Types::ListBucketInventoryConfigurationsOutput
    ListBucketInventoryConfigurationsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    ListBucketInventoryConfigurationsRequest.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "ContinuationToken", traits: {"smithy.api#httpQuery" => "continuation-token"}))
    ListBucketInventoryConfigurationsRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    ListBucketInventoryConfigurationsRequest.type = Types::ListBucketInventoryConfigurationsRequest
    ListBucketMetricsConfigurationsOutput.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: IsTruncated, name: "IsTruncated"))
    ListBucketMetricsConfigurationsOutput.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "ContinuationToken"))
    ListBucketMetricsConfigurationsOutput.add_member(:next_continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextContinuationToken"))
    ListBucketMetricsConfigurationsOutput.add_member(:metrics_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsConfigurationList, name: "MetricsConfigurationList", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "MetricsConfiguration"}))
    ListBucketMetricsConfigurationsOutput.type = Types::ListBucketMetricsConfigurationsOutput
    ListBucketMetricsConfigurationsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    ListBucketMetricsConfigurationsRequest.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "ContinuationToken", traits: {"smithy.api#httpQuery" => "continuation-token"}))
    ListBucketMetricsConfigurationsRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    ListBucketMetricsConfigurationsRequest.type = Types::ListBucketMetricsConfigurationsRequest
    ListBucketsOutput.add_member(:buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: Buckets, name: "Buckets"))
    ListBucketsOutput.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner"))
    ListBucketsOutput.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "ContinuationToken"))
    ListBucketsOutput.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    ListBucketsOutput.type = Types::ListBucketsOutput
    ListBucketsRequest.add_member(:max_buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxBuckets, name: "MaxBuckets", traits: {"smithy.api#httpQuery" => "max-buckets"}))
    ListBucketsRequest.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "ContinuationToken", traits: {"smithy.api#httpQuery" => "continuation-token"}))
    ListBucketsRequest.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix", traits: {"smithy.api#httpQuery" => "prefix"}))
    ListBucketsRequest.add_member(:bucket_region, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketRegion, name: "BucketRegion", traits: {"smithy.api#httpQuery" => "bucket-region"}))
    ListBucketsRequest.type = Types::ListBucketsRequest
    ListDirectoryBucketsOutput.add_member(:buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: Buckets, name: "Buckets"))
    ListDirectoryBucketsOutput.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryBucketToken, name: "ContinuationToken"))
    ListDirectoryBucketsOutput.type = Types::ListDirectoryBucketsOutput
    ListDirectoryBucketsRequest.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryBucketToken, name: "ContinuationToken", traits: {"smithy.api#httpQuery" => "continuation-token"}))
    ListDirectoryBucketsRequest.add_member(:max_directory_buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxDirectoryBuckets, name: "MaxDirectoryBuckets", traits: {"smithy.api#httpQuery" => "max-directory-buckets"}))
    ListDirectoryBucketsRequest.type = Types::ListDirectoryBucketsRequest
    ListMultipartUploadsOutput.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket"))
    ListMultipartUploadsOutput.add_member(:key_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyMarker, name: "KeyMarker"))
    ListMultipartUploadsOutput.add_member(:upload_id_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadIdMarker, name: "UploadIdMarker"))
    ListMultipartUploadsOutput.add_member(:next_key_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextKeyMarker, name: "NextKeyMarker"))
    ListMultipartUploadsOutput.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    ListMultipartUploadsOutput.add_member(:delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: Delimiter, name: "Delimiter"))
    ListMultipartUploadsOutput.add_member(:next_upload_id_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextUploadIdMarker, name: "NextUploadIdMarker"))
    ListMultipartUploadsOutput.add_member(:max_uploads, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxUploads, name: "MaxUploads"))
    ListMultipartUploadsOutput.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: IsTruncated, name: "IsTruncated"))
    ListMultipartUploadsOutput.add_member(:uploads, ::Smithy::Schema::Shapes::MemberShape.new(target: MultipartUploadList, name: "Uploads", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Upload"}))
    ListMultipartUploadsOutput.add_member(:common_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: CommonPrefixList, name: "CommonPrefixes", traits: {"smithy.api#xmlFlattened" => {}}))
    ListMultipartUploadsOutput.add_member(:encoding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingType, name: "EncodingType"))
    ListMultipartUploadsOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    ListMultipartUploadsOutput.type = Types::ListMultipartUploadsOutput
    ListMultipartUploadsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    ListMultipartUploadsRequest.add_member(:delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: Delimiter, name: "Delimiter", traits: {"smithy.api#httpQuery" => "delimiter"}))
    ListMultipartUploadsRequest.add_member(:encoding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingType, name: "EncodingType", traits: {"smithy.api#httpQuery" => "encoding-type"}))
    ListMultipartUploadsRequest.add_member(:key_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyMarker, name: "KeyMarker", traits: {"smithy.api#httpQuery" => "key-marker"}))
    ListMultipartUploadsRequest.add_member(:max_uploads, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxUploads, name: "MaxUploads", traits: {"smithy.api#httpQuery" => "max-uploads"}))
    ListMultipartUploadsRequest.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix", traits: {"smithy.api#httpQuery" => "prefix", "smithy.rules#contextParam" => {"name" => "Prefix"}}))
    ListMultipartUploadsRequest.add_member(:upload_id_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadIdMarker, name: "UploadIdMarker", traits: {"smithy.api#httpQuery" => "upload-id-marker"}))
    ListMultipartUploadsRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    ListMultipartUploadsRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    ListMultipartUploadsRequest.type = Types::ListMultipartUploadsRequest
    ListObjectVersionsOutput.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: IsTruncated, name: "IsTruncated"))
    ListObjectVersionsOutput.add_member(:key_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyMarker, name: "KeyMarker"))
    ListObjectVersionsOutput.add_member(:version_id_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionIdMarker, name: "VersionIdMarker"))
    ListObjectVersionsOutput.add_member(:next_key_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextKeyMarker, name: "NextKeyMarker"))
    ListObjectVersionsOutput.add_member(:next_version_id_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextVersionIdMarker, name: "NextVersionIdMarker"))
    ListObjectVersionsOutput.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionList, name: "Versions", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Version"}))
    ListObjectVersionsOutput.add_member(:delete_markers, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteMarkers, name: "DeleteMarkers", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "DeleteMarker"}))
    ListObjectVersionsOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Name"))
    ListObjectVersionsOutput.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    ListObjectVersionsOutput.add_member(:delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: Delimiter, name: "Delimiter"))
    ListObjectVersionsOutput.add_member(:max_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxKeys, name: "MaxKeys"))
    ListObjectVersionsOutput.add_member(:common_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: CommonPrefixList, name: "CommonPrefixes", traits: {"smithy.api#xmlFlattened" => {}}))
    ListObjectVersionsOutput.add_member(:encoding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingType, name: "EncodingType"))
    ListObjectVersionsOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    ListObjectVersionsOutput.type = Types::ListObjectVersionsOutput
    ListObjectVersionsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    ListObjectVersionsRequest.add_member(:delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: Delimiter, name: "Delimiter", traits: {"smithy.api#httpQuery" => "delimiter"}))
    ListObjectVersionsRequest.add_member(:encoding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingType, name: "EncodingType", traits: {"smithy.api#httpQuery" => "encoding-type"}))
    ListObjectVersionsRequest.add_member(:key_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyMarker, name: "KeyMarker", traits: {"smithy.api#httpQuery" => "key-marker"}))
    ListObjectVersionsRequest.add_member(:max_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxKeys, name: "MaxKeys", traits: {"smithy.api#httpQuery" => "max-keys"}))
    ListObjectVersionsRequest.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix", traits: {"smithy.api#httpQuery" => "prefix", "smithy.rules#contextParam" => {"name" => "Prefix"}}))
    ListObjectVersionsRequest.add_member(:version_id_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionIdMarker, name: "VersionIdMarker", traits: {"smithy.api#httpQuery" => "version-id-marker"}))
    ListObjectVersionsRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    ListObjectVersionsRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    ListObjectVersionsRequest.add_member(:optional_object_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalObjectAttributesList, name: "OptionalObjectAttributes", traits: {"smithy.api#httpHeader" => "x-amz-optional-object-attributes"}))
    ListObjectVersionsRequest.type = Types::ListObjectVersionsRequest
    ListObjectsOutput.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: IsTruncated, name: "IsTruncated"))
    ListObjectsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker"))
    ListObjectsOutput.add_member(:next_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextMarker, name: "NextMarker"))
    ListObjectsOutput.add_member(:contents, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectList, name: "Contents", traits: {"smithy.api#xmlFlattened" => {}}))
    ListObjectsOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Name"))
    ListObjectsOutput.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    ListObjectsOutput.add_member(:delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: Delimiter, name: "Delimiter"))
    ListObjectsOutput.add_member(:max_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxKeys, name: "MaxKeys"))
    ListObjectsOutput.add_member(:common_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: CommonPrefixList, name: "CommonPrefixes", traits: {"smithy.api#xmlFlattened" => {}}))
    ListObjectsOutput.add_member(:encoding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingType, name: "EncodingType"))
    ListObjectsOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    ListObjectsOutput.type = Types::ListObjectsOutput
    ListObjectsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    ListObjectsRequest.add_member(:delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: Delimiter, name: "Delimiter", traits: {"smithy.api#httpQuery" => "delimiter"}))
    ListObjectsRequest.add_member(:encoding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingType, name: "EncodingType", traits: {"smithy.api#httpQuery" => "encoding-type"}))
    ListObjectsRequest.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: Marker, name: "Marker", traits: {"smithy.api#httpQuery" => "marker"}))
    ListObjectsRequest.add_member(:max_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxKeys, name: "MaxKeys", traits: {"smithy.api#httpQuery" => "max-keys"}))
    ListObjectsRequest.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix", traits: {"smithy.api#httpQuery" => "prefix", "smithy.rules#contextParam" => {"name" => "Prefix"}}))
    ListObjectsRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    ListObjectsRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    ListObjectsRequest.add_member(:optional_object_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalObjectAttributesList, name: "OptionalObjectAttributes", traits: {"smithy.api#httpHeader" => "x-amz-optional-object-attributes"}))
    ListObjectsRequest.type = Types::ListObjectsRequest
    ListObjectsV2Output.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: IsTruncated, name: "IsTruncated"))
    ListObjectsV2Output.add_member(:contents, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectList, name: "Contents", traits: {"smithy.api#xmlFlattened" => {}}))
    ListObjectsV2Output.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Name"))
    ListObjectsV2Output.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    ListObjectsV2Output.add_member(:delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: Delimiter, name: "Delimiter"))
    ListObjectsV2Output.add_member(:max_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxKeys, name: "MaxKeys"))
    ListObjectsV2Output.add_member(:common_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: CommonPrefixList, name: "CommonPrefixes", traits: {"smithy.api#xmlFlattened" => {}}))
    ListObjectsV2Output.add_member(:encoding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingType, name: "EncodingType"))
    ListObjectsV2Output.add_member(:key_count, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyCount, name: "KeyCount"))
    ListObjectsV2Output.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "ContinuationToken"))
    ListObjectsV2Output.add_member(:next_continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextContinuationToken"))
    ListObjectsV2Output.add_member(:start_after, ::Smithy::Schema::Shapes::MemberShape.new(target: StartAfter, name: "StartAfter"))
    ListObjectsV2Output.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    ListObjectsV2Output.type = Types::ListObjectsV2Output
    ListObjectsV2Request.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    ListObjectsV2Request.add_member(:delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: Delimiter, name: "Delimiter", traits: {"smithy.api#httpQuery" => "delimiter"}))
    ListObjectsV2Request.add_member(:encoding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncodingType, name: "EncodingType", traits: {"smithy.api#httpQuery" => "encoding-type"}))
    ListObjectsV2Request.add_member(:max_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxKeys, name: "MaxKeys", traits: {"smithy.api#httpQuery" => "max-keys"}))
    ListObjectsV2Request.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix", traits: {"smithy.api#httpQuery" => "prefix", "smithy.rules#contextParam" => {"name" => "Prefix"}}))
    ListObjectsV2Request.add_member(:continuation_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "ContinuationToken", traits: {"smithy.api#httpQuery" => "continuation-token"}))
    ListObjectsV2Request.add_member(:fetch_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: FetchOwner, name: "FetchOwner", traits: {"smithy.api#httpQuery" => "fetch-owner"}))
    ListObjectsV2Request.add_member(:start_after, ::Smithy::Schema::Shapes::MemberShape.new(target: StartAfter, name: "StartAfter", traits: {"smithy.api#httpQuery" => "start-after"}))
    ListObjectsV2Request.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    ListObjectsV2Request.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    ListObjectsV2Request.add_member(:optional_object_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalObjectAttributesList, name: "OptionalObjectAttributes", traits: {"smithy.api#httpHeader" => "x-amz-optional-object-attributes"}))
    ListObjectsV2Request.type = Types::ListObjectsV2Request
    ListPartsOutput.add_member(:abort_date, ::Smithy::Schema::Shapes::MemberShape.new(target: AbortDate, name: "AbortDate", traits: {"smithy.api#httpHeader" => "x-amz-abort-date"}))
    ListPartsOutput.add_member(:abort_rule_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AbortRuleId, name: "AbortRuleId", traits: {"smithy.api#httpHeader" => "x-amz-abort-rule-id"}))
    ListPartsOutput.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket"))
    ListPartsOutput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key"))
    ListPartsOutput.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MultipartUploadId, name: "UploadId"))
    ListPartsOutput.add_member(:part_number_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PartNumberMarker, name: "PartNumberMarker"))
    ListPartsOutput.add_member(:next_part_number_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: NextPartNumberMarker, name: "NextPartNumberMarker"))
    ListPartsOutput.add_member(:max_parts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxParts, name: "MaxParts"))
    ListPartsOutput.add_member(:is_truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: IsTruncated, name: "IsTruncated"))
    ListPartsOutput.add_member(:parts, ::Smithy::Schema::Shapes::MemberShape.new(target: Parts, name: "Parts", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Part"}))
    ListPartsOutput.add_member(:initiator, ::Smithy::Schema::Shapes::MemberShape.new(target: Initiator, name: "Initiator"))
    ListPartsOutput.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner"))
    ListPartsOutput.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "StorageClass"))
    ListPartsOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    ListPartsOutput.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm"))
    ListPartsOutput.add_member(:checksum_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumType, name: "ChecksumType"))
    ListPartsOutput.type = Types::ListPartsOutput
    ListPartsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    ListPartsRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Key"}}))
    ListPartsRequest.add_member(:max_parts, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxParts, name: "MaxParts", traits: {"smithy.api#httpQuery" => "max-parts"}))
    ListPartsRequest.add_member(:part_number_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: PartNumberMarker, name: "PartNumberMarker", traits: {"smithy.api#httpQuery" => "part-number-marker"}))
    ListPartsRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MultipartUploadId, name: "UploadId", traits: {"smithy.api#httpQuery" => "uploadId", "smithy.api#required" => {}}))
    ListPartsRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    ListPartsRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    ListPartsRequest.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    ListPartsRequest.add_member(:sse_customer_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKey, name: "SSECustomerKey", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key"}))
    ListPartsRequest.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    ListPartsRequest.type = Types::ListPartsRequest
    LocationInfo.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationType, name: "Type"))
    LocationInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationNameAsString, name: "Name"))
    LocationInfo.type = Types::LocationInfo
    LocationType.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AvailabilityZone", traits: {"smithy.api#enumValue" => "AvailabilityZone"}))
    LocationType.add_member(:local_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LocalZone", traits: {"smithy.api#enumValue" => "LocalZone"}))
    LoggingEnabled.add_member(:target_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetBucket, name: "TargetBucket", traits: {"smithy.api#required" => {}}))
    LoggingEnabled.add_member(:target_grants, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGrants, name: "TargetGrants"))
    LoggingEnabled.add_member(:target_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetPrefix, name: "TargetPrefix", traits: {"smithy.api#required" => {}}))
    LoggingEnabled.add_member(:target_object_key_format, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetObjectKeyFormat, name: "TargetObjectKeyFormat"))
    LoggingEnabled.type = Types::LoggingEnabled
    MFADelete.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    MFADelete.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    MFADeleteStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    MFADeleteStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    Metadata.key = ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataKey, name: "key")
    Metadata.value = ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataValue, name: "value")
    MetadataConfiguration.add_member(:journal_table_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JournalTableConfiguration, name: "JournalTableConfiguration", traits: {"smithy.api#required" => {}}))
    MetadataConfiguration.add_member(:inventory_table_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryTableConfiguration, name: "InventoryTableConfiguration"))
    MetadataConfiguration.type = Types::MetadataConfiguration
    MetadataConfigurationResult.add_member(:destination_result, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationResult, name: "DestinationResult", traits: {"smithy.api#required" => {}}))
    MetadataConfigurationResult.add_member(:journal_table_configuration_result, ::Smithy::Schema::Shapes::MemberShape.new(target: JournalTableConfigurationResult, name: "JournalTableConfigurationResult"))
    MetadataConfigurationResult.add_member(:inventory_table_configuration_result, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryTableConfigurationResult, name: "InventoryTableConfigurationResult"))
    MetadataConfigurationResult.type = Types::MetadataConfigurationResult
    MetadataDirective.add_member(:copy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COPY", traits: {"smithy.api#enumValue" => "COPY"}))
    MetadataDirective.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE", traits: {"smithy.api#enumValue" => "REPLACE"}))
    MetadataEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataKey, name: "Name"))
    MetadataEntry.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataValue, name: "Value"))
    MetadataEntry.type = Types::MetadataEntry
    MetadataTableConfiguration.add_member(:s3_tables_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesDestination, name: "S3TablesDestination", traits: {"smithy.api#required" => {}}))
    MetadataTableConfiguration.type = Types::MetadataTableConfiguration
    MetadataTableConfigurationResult.add_member(:s3_tables_destination_result, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesDestinationResult, name: "S3TablesDestinationResult", traits: {"smithy.api#required" => {}}))
    MetadataTableConfigurationResult.type = Types::MetadataTableConfigurationResult
    MetadataTableEncryptionConfiguration.add_member(:sse_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: TableSseAlgorithm, name: "SseAlgorithm", traits: {"smithy.api#required" => {}}))
    MetadataTableEncryptionConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "KmsKeyArn"))
    MetadataTableEncryptionConfiguration.type = Types::MetadataTableEncryptionConfiguration
    Metrics.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    Metrics.add_member(:event_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTimeValue, name: "EventThreshold"))
    Metrics.type = Types::Metrics
    MetricsAndOperator.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    MetricsAndOperator.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSet, name: "Tags", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Tag"}))
    MetricsAndOperator.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointArn, name: "AccessPointArn"))
    MetricsAndOperator.type = Types::MetricsAndOperator
    MetricsConfiguration.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsId, name: "Id", traits: {"smithy.api#required" => {}}))
    MetricsConfiguration.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsFilter, name: "Filter"))
    MetricsConfiguration.type = Types::MetricsConfiguration
    MetricsConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsConfiguration, name: "member")
    MetricsFilter.add_member(:prefix, Types::MetricsFilter::Prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    MetricsFilter.add_member(:tag, Types::MetricsFilter::Tag, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "Tag"))
    MetricsFilter.add_member(:access_point_arn, Types::MetricsFilter::AccessPointArn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointArn, name: "AccessPointArn"))
    MetricsFilter.add_member(:and, Types::MetricsFilter::And, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsAndOperator, name: "And"))
    MetricsFilter.add_member(:unknown, Types::MetricsFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MetricsFilter.type = Types::MetricsFilter
    MetricsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    MetricsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    MultipartUpload.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MultipartUploadId, name: "UploadId"))
    MultipartUpload.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key"))
    MultipartUpload.add_member(:initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: Initiated, name: "Initiated"))
    MultipartUpload.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "StorageClass"))
    MultipartUpload.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner"))
    MultipartUpload.add_member(:initiator, ::Smithy::Schema::Shapes::MemberShape.new(target: Initiator, name: "Initiator"))
    MultipartUpload.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm"))
    MultipartUpload.add_member(:checksum_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumType, name: "ChecksumType"))
    MultipartUpload.type = Types::MultipartUpload
    MultipartUploadList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MultipartUpload, name: "member")
    NoSuchBucket.type = Types::NoSuchBucket
    NoSuchKey.type = Types::NoSuchKey
    NoSuchUpload.type = Types::NoSuchUpload
    NoncurrentVersionExpiration.add_member(:noncurrent_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Days, name: "NoncurrentDays"))
    NoncurrentVersionExpiration.add_member(:newer_noncurrent_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionCount, name: "NewerNoncurrentVersions"))
    NoncurrentVersionExpiration.type = Types::NoncurrentVersionExpiration
    NoncurrentVersionTransition.add_member(:noncurrent_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Days, name: "NoncurrentDays"))
    NoncurrentVersionTransition.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitionStorageClass, name: "StorageClass"))
    NoncurrentVersionTransition.add_member(:newer_noncurrent_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionCount, name: "NewerNoncurrentVersions"))
    NoncurrentVersionTransition.type = Types::NoncurrentVersionTransition
    NoncurrentVersionTransitionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NoncurrentVersionTransition, name: "member")
    NotFound.type = Types::NotFound
    NotificationConfiguration.add_member(:topic_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicConfigurationList, name: "TopicConfigurations", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "TopicConfiguration"}))
    NotificationConfiguration.add_member(:queue_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueConfigurationList, name: "QueueConfigurations", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "QueueConfiguration"}))
    NotificationConfiguration.add_member(:lambda_function_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionConfigurationList, name: "LambdaFunctionConfigurations", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "CloudFunctionConfiguration"}))
    NotificationConfiguration.add_member(:event_bridge_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EventBridgeConfiguration, name: "EventBridgeConfiguration"))
    NotificationConfiguration.type = Types::NotificationConfiguration
    NotificationConfigurationFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyFilter, name: "Key", traits: {"smithy.api#xmlName" => "S3Key"}))
    NotificationConfigurationFilter.type = Types::NotificationConfigurationFilter
    Object.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key"))
    Object.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModified, name: "LastModified"))
    Object.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ETag"))
    Object.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithmList, name: "ChecksumAlgorithm", traits: {"smithy.api#xmlFlattened" => {}}))
    Object.add_member(:checksum_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumType, name: "ChecksumType"))
    Object.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "Size"))
    Object.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectStorageClass, name: "StorageClass"))
    Object.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner"))
    Object.add_member(:restore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreStatus, name: "RestoreStatus"))
    Object.type = Types::Object
    ObjectAlreadyInActiveTierError.type = Types::ObjectAlreadyInActiveTierError
    ObjectAttributes.add_member(:etag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ETAG", traits: {"smithy.api#enumValue" => "ETag"}))
    ObjectAttributes.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHECKSUM", traits: {"smithy.api#enumValue" => "Checksum"}))
    ObjectAttributes.add_member(:object_parts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OBJECT_PARTS", traits: {"smithy.api#enumValue" => "ObjectParts"}))
    ObjectAttributes.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_CLASS", traits: {"smithy.api#enumValue" => "StorageClass"}))
    ObjectAttributes.add_member(:object_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OBJECT_SIZE", traits: {"smithy.api#enumValue" => "ObjectSize"}))
    ObjectAttributesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectAttributes, name: "member")
    ObjectCannedACL.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "private", traits: {"smithy.api#enumValue" => "private"}))
    ObjectCannedACL.add_member(:public_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "public_read", traits: {"smithy.api#enumValue" => "public-read"}))
    ObjectCannedACL.add_member(:public_read_write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "public_read_write", traits: {"smithy.api#enumValue" => "public-read-write"}))
    ObjectCannedACL.add_member(:authenticated_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "authenticated_read", traits: {"smithy.api#enumValue" => "authenticated-read"}))
    ObjectCannedACL.add_member(:aws_exec_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "aws_exec_read", traits: {"smithy.api#enumValue" => "aws-exec-read"}))
    ObjectCannedACL.add_member(:bucket_owner_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "bucket_owner_read", traits: {"smithy.api#enumValue" => "bucket-owner-read"}))
    ObjectCannedACL.add_member(:bucket_owner_full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "bucket_owner_full_control", traits: {"smithy.api#enumValue" => "bucket-owner-full-control"}))
    ObjectIdentifier.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#required" => {}}))
    ObjectIdentifier.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId"))
    ObjectIdentifier.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ETag"))
    ObjectIdentifier.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedTime, name: "LastModifiedTime"))
    ObjectIdentifier.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "Size"))
    ObjectIdentifier.type = Types::ObjectIdentifier
    ObjectIdentifierList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectIdentifier, name: "member")
    ObjectList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Object, name: "member")
    ObjectLockConfiguration.add_member(:object_lock_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockEnabled, name: "ObjectLockEnabled"))
    ObjectLockConfiguration.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockRule, name: "Rule"))
    ObjectLockConfiguration.type = Types::ObjectLockConfiguration
    ObjectLockEnabled.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ObjectLockLegalHold.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockLegalHoldStatus, name: "Status"))
    ObjectLockLegalHold.type = Types::ObjectLockLegalHold
    ObjectLockLegalHoldStatus.add_member(:on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON", traits: {"smithy.api#enumValue" => "ON"}))
    ObjectLockLegalHoldStatus.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFF", traits: {"smithy.api#enumValue" => "OFF"}))
    ObjectLockMode.add_member(:governance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOVERNANCE", traits: {"smithy.api#enumValue" => "GOVERNANCE"}))
    ObjectLockMode.add_member(:compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLIANCE", traits: {"smithy.api#enumValue" => "COMPLIANCE"}))
    ObjectLockRetention.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockRetentionMode, name: "Mode"))
    ObjectLockRetention.add_member(:retain_until_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "RetainUntilDate"))
    ObjectLockRetention.type = Types::ObjectLockRetention
    ObjectLockRetentionMode.add_member(:governance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOVERNANCE", traits: {"smithy.api#enumValue" => "GOVERNANCE"}))
    ObjectLockRetentionMode.add_member(:compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLIANCE", traits: {"smithy.api#enumValue" => "COMPLIANCE"}))
    ObjectLockRule.add_member(:default_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultRetention, name: "DefaultRetention"))
    ObjectLockRule.type = Types::ObjectLockRule
    ObjectNotInActiveTierError.type = Types::ObjectNotInActiveTierError
    ObjectOwnership.add_member(:bucket_owner_preferred, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BucketOwnerPreferred", traits: {"smithy.api#enumValue" => "BucketOwnerPreferred"}))
    ObjectOwnership.add_member(:object_writer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ObjectWriter", traits: {"smithy.api#enumValue" => "ObjectWriter"}))
    ObjectOwnership.add_member(:bucket_owner_enforced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BucketOwnerEnforced", traits: {"smithy.api#enumValue" => "BucketOwnerEnforced"}))
    ObjectPart.add_member(:part_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PartNumber, name: "PartNumber"))
    ObjectPart.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "Size"))
    ObjectPart.add_member(:checksum_crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32, name: "ChecksumCRC32"))
    ObjectPart.add_member(:checksum_crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32C, name: "ChecksumCRC32C"))
    ObjectPart.add_member(:checksum_crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC64NVME, name: "ChecksumCRC64NVME"))
    ObjectPart.add_member(:checksum_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA1, name: "ChecksumSHA1"))
    ObjectPart.add_member(:checksum_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA256, name: "ChecksumSHA256"))
    ObjectPart.type = Types::ObjectPart
    ObjectStorageClass.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    ObjectStorageClass.add_member(:reduced_redundancy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDUCED_REDUNDANCY", traits: {"smithy.api#enumValue" => "REDUCED_REDUNDANCY"}))
    ObjectStorageClass.add_member(:glacier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLACIER", traits: {"smithy.api#enumValue" => "GLACIER"}))
    ObjectStorageClass.add_member(:standard_ia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD_IA", traits: {"smithy.api#enumValue" => "STANDARD_IA"}))
    ObjectStorageClass.add_member(:onezone_ia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONEZONE_IA", traits: {"smithy.api#enumValue" => "ONEZONE_IA"}))
    ObjectStorageClass.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTELLIGENT_TIERING", traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    ObjectStorageClass.add_member(:deep_archive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEEP_ARCHIVE", traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE"}))
    ObjectStorageClass.add_member(:outposts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTPOSTS", traits: {"smithy.api#enumValue" => "OUTPOSTS"}))
    ObjectStorageClass.add_member(:glacier_ir, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLACIER_IR", traits: {"smithy.api#enumValue" => "GLACIER_IR"}))
    ObjectStorageClass.add_member(:snow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNOW", traits: {"smithy.api#enumValue" => "SNOW"}))
    ObjectStorageClass.add_member(:express_onezone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPRESS_ONEZONE", traits: {"smithy.api#enumValue" => "EXPRESS_ONEZONE"}))
    ObjectStorageClass.add_member(:fsx_openzfs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FSX_OPENZFS", traits: {"smithy.api#enumValue" => "FSX_OPENZFS"}))
    ObjectVersion.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ETag"))
    ObjectVersion.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithmList, name: "ChecksumAlgorithm", traits: {"smithy.api#xmlFlattened" => {}}))
    ObjectVersion.add_member(:checksum_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumType, name: "ChecksumType"))
    ObjectVersion.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "Size"))
    ObjectVersion.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionStorageClass, name: "StorageClass"))
    ObjectVersion.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key"))
    ObjectVersion.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId"))
    ObjectVersion.add_member(:is_latest, ::Smithy::Schema::Shapes::MemberShape.new(target: IsLatest, name: "IsLatest"))
    ObjectVersion.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModified, name: "LastModified"))
    ObjectVersion.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, name: "Owner"))
    ObjectVersion.add_member(:restore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreStatus, name: "RestoreStatus"))
    ObjectVersion.type = Types::ObjectVersion
    ObjectVersionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersion, name: "member")
    ObjectVersionStorageClass.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    OptionalObjectAttributes.add_member(:restore_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESTORE_STATUS", traits: {"smithy.api#enumValue" => "RestoreStatus"}))
    OptionalObjectAttributesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OptionalObjectAttributes, name: "member")
    OutputLocation.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "S3"))
    OutputLocation.type = Types::OutputLocation
    OutputSerialization.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: CSVOutput, name: "CSV"))
    OutputSerialization.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: JSONOutput, name: "JSON"))
    OutputSerialization.type = Types::OutputSerialization
    Owner.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    Owner.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "ID"))
    Owner.type = Types::Owner
    OwnerOverride.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Destination", traits: {"smithy.api#enumValue" => "Destination"}))
    OwnershipControls.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnershipControlsRules, name: "Rules", traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Rule"}))
    OwnershipControls.type = Types::OwnershipControls
    OwnershipControlsRule.add_member(:object_ownership, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectOwnership, name: "ObjectOwnership", traits: {"smithy.api#required" => {}}))
    OwnershipControlsRule.type = Types::OwnershipControlsRule
    OwnershipControlsRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OwnershipControlsRule, name: "member")
    ParquetInput.type = Types::ParquetInput
    Part.add_member(:part_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PartNumber, name: "PartNumber"))
    Part.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModified, name: "LastModified"))
    Part.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ETag"))
    Part.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "Size"))
    Part.add_member(:checksum_crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32, name: "ChecksumCRC32"))
    Part.add_member(:checksum_crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32C, name: "ChecksumCRC32C"))
    Part.add_member(:checksum_crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC64NVME, name: "ChecksumCRC64NVME"))
    Part.add_member(:checksum_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA1, name: "ChecksumSHA1"))
    Part.add_member(:checksum_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA256, name: "ChecksumSHA256"))
    Part.type = Types::Part
    PartitionDateSource.add_member(:event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EventTime", traits: {"smithy.api#enumValue" => "EventTime"}))
    PartitionDateSource.add_member(:delivery_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeliveryTime", traits: {"smithy.api#enumValue" => "DeliveryTime"}))
    PartitionedPrefix.add_member(:partition_date_source, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionDateSource, name: "PartitionDateSource"))
    PartitionedPrefix.type = Types::PartitionedPrefix
    Parts.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Part, name: "member")
    PartsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectPart, name: "member")
    Payer.add_member(:requester, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Requester", traits: {"smithy.api#enumValue" => "Requester"}))
    Payer.add_member(:bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BucketOwner", traits: {"smithy.api#enumValue" => "BucketOwner"}))
    Permission.add_member(:full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_CONTROL", traits: {"smithy.api#enumValue" => "FULL_CONTROL"}))
    Permission.add_member(:write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WRITE", traits: {"smithy.api#enumValue" => "WRITE"}))
    Permission.add_member(:write_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WRITE_ACP", traits: {"smithy.api#enumValue" => "WRITE_ACP"}))
    Permission.add_member(:read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ", traits: {"smithy.api#enumValue" => "READ"}))
    Permission.add_member(:read_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_ACP", traits: {"smithy.api#enumValue" => "READ_ACP"}))
    PolicyStatus.add_member(:is_public, ::Smithy::Schema::Shapes::MemberShape.new(target: IsPublic, name: "IsPublic", traits: {"smithy.api#xmlName" => "IsPublic"}))
    PolicyStatus.type = Types::PolicyStatus
    Progress.add_member(:bytes_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: BytesScanned, name: "BytesScanned"))
    Progress.add_member(:bytes_processed, ::Smithy::Schema::Shapes::MemberShape.new(target: BytesProcessed, name: "BytesProcessed"))
    Progress.add_member(:bytes_returned, ::Smithy::Schema::Shapes::MemberShape.new(target: BytesReturned, name: "BytesReturned"))
    Progress.type = Types::Progress
    ProgressEvent.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Progress, name: "Details", traits: {"smithy.api#eventPayload" => {}}))
    ProgressEvent.type = Types::ProgressEvent
    Protocol.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "http", traits: {"smithy.api#enumValue" => "http"}))
    Protocol.add_member(:https, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "https", traits: {"smithy.api#enumValue" => "https"}))
    PublicAccessBlockConfiguration.add_member(:block_public_acls, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, name: "BlockPublicAcls", traits: {"smithy.api#xmlName" => "BlockPublicAcls"}))
    PublicAccessBlockConfiguration.add_member(:ignore_public_acls, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, name: "IgnorePublicAcls", traits: {"smithy.api#xmlName" => "IgnorePublicAcls"}))
    PublicAccessBlockConfiguration.add_member(:block_public_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, name: "BlockPublicPolicy", traits: {"smithy.api#xmlName" => "BlockPublicPolicy"}))
    PublicAccessBlockConfiguration.add_member(:restrict_public_buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, name: "RestrictPublicBuckets", traits: {"smithy.api#xmlName" => "RestrictPublicBuckets"}))
    PublicAccessBlockConfiguration.type = Types::PublicAccessBlockConfiguration
    PutBucketAccelerateConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketAccelerateConfigurationRequest.add_member(:accelerate_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccelerateConfiguration, name: "AccelerateConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "AccelerateConfiguration"}))
    PutBucketAccelerateConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketAccelerateConfigurationRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutBucketAccelerateConfigurationRequest[:http_payload] = :accelerate_configuration
    PutBucketAccelerateConfigurationRequest[:http_payload_member] = PutBucketAccelerateConfigurationRequest.member(:accelerate_configuration)
    PutBucketAccelerateConfigurationRequest.type = Types::PutBucketAccelerateConfigurationRequest
    PutBucketAclRequest.add_member(:acl, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketCannedACL, name: "ACL", traits: {"smithy.api#httpHeader" => "x-amz-acl"}))
    PutBucketAclRequest.add_member(:access_control_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlPolicy, name: "AccessControlPolicy", traits: {"smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "AccessControlPolicy"}))
    PutBucketAclRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketAclRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutBucketAclRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutBucketAclRequest.add_member(:grant_full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantFullControl, name: "GrantFullControl", traits: {"smithy.api#httpHeader" => "x-amz-grant-full-control"}))
    PutBucketAclRequest.add_member(:grant_read, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantRead, name: "GrantRead", traits: {"smithy.api#httpHeader" => "x-amz-grant-read"}))
    PutBucketAclRequest.add_member(:grant_read_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantReadACP, name: "GrantReadACP", traits: {"smithy.api#httpHeader" => "x-amz-grant-read-acp"}))
    PutBucketAclRequest.add_member(:grant_write, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantWrite, name: "GrantWrite", traits: {"smithy.api#httpHeader" => "x-amz-grant-write"}))
    PutBucketAclRequest.add_member(:grant_write_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantWriteACP, name: "GrantWriteACP", traits: {"smithy.api#httpHeader" => "x-amz-grant-write-acp"}))
    PutBucketAclRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketAclRequest[:http_payload] = :access_control_policy
    PutBucketAclRequest[:http_payload_member] = PutBucketAclRequest.member(:access_control_policy)
    PutBucketAclRequest.type = Types::PutBucketAclRequest
    PutBucketAnalyticsConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketAnalyticsConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsId, name: "Id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    PutBucketAnalyticsConfigurationRequest.add_member(:analytics_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsConfiguration, name: "AnalyticsConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "AnalyticsConfiguration"}))
    PutBucketAnalyticsConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketAnalyticsConfigurationRequest[:http_payload] = :analytics_configuration
    PutBucketAnalyticsConfigurationRequest[:http_payload_member] = PutBucketAnalyticsConfigurationRequest.member(:analytics_configuration)
    PutBucketAnalyticsConfigurationRequest.type = Types::PutBucketAnalyticsConfigurationRequest
    PutBucketCorsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketCorsRequest.add_member(:cors_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CORSConfiguration, name: "CORSConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "CORSConfiguration"}))
    PutBucketCorsRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutBucketCorsRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutBucketCorsRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketCorsRequest[:http_payload] = :cors_configuration
    PutBucketCorsRequest[:http_payload_member] = PutBucketCorsRequest.member(:cors_configuration)
    PutBucketCorsRequest.type = Types::PutBucketCorsRequest
    PutBucketEncryptionRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketEncryptionRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutBucketEncryptionRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutBucketEncryptionRequest.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionConfiguration, name: "ServerSideEncryptionConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "ServerSideEncryptionConfiguration"}))
    PutBucketEncryptionRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketEncryptionRequest[:http_payload] = :server_side_encryption_configuration
    PutBucketEncryptionRequest[:http_payload_member] = PutBucketEncryptionRequest.member(:server_side_encryption_configuration)
    PutBucketEncryptionRequest.type = Types::PutBucketEncryptionRequest
    PutBucketIntelligentTieringConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketIntelligentTieringConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligentTieringId, name: "Id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    PutBucketIntelligentTieringConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketIntelligentTieringConfigurationRequest.add_member(:intelligent_tiering_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligentTieringConfiguration, name: "IntelligentTieringConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "IntelligentTieringConfiguration"}))
    PutBucketIntelligentTieringConfigurationRequest[:http_payload] = :intelligent_tiering_configuration
    PutBucketIntelligentTieringConfigurationRequest[:http_payload_member] = PutBucketIntelligentTieringConfigurationRequest.member(:intelligent_tiering_configuration)
    PutBucketIntelligentTieringConfigurationRequest.type = Types::PutBucketIntelligentTieringConfigurationRequest
    PutBucketInventoryConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketInventoryConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryId, name: "Id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    PutBucketInventoryConfigurationRequest.add_member(:inventory_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryConfiguration, name: "InventoryConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "InventoryConfiguration"}))
    PutBucketInventoryConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketInventoryConfigurationRequest[:http_payload] = :inventory_configuration
    PutBucketInventoryConfigurationRequest[:http_payload_member] = PutBucketInventoryConfigurationRequest.member(:inventory_configuration)
    PutBucketInventoryConfigurationRequest.type = Types::PutBucketInventoryConfigurationRequest
    PutBucketLifecycleConfigurationOutput.add_member(:transition_default_minimum_object_size, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitionDefaultMinimumObjectSize, name: "TransitionDefaultMinimumObjectSize", traits: {"smithy.api#httpHeader" => "x-amz-transition-default-minimum-object-size"}))
    PutBucketLifecycleConfigurationOutput.type = Types::PutBucketLifecycleConfigurationOutput
    PutBucketLifecycleConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketLifecycleConfigurationRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutBucketLifecycleConfigurationRequest.add_member(:lifecycle_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketLifecycleConfiguration, name: "LifecycleConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "LifecycleConfiguration"}))
    PutBucketLifecycleConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketLifecycleConfigurationRequest.add_member(:transition_default_minimum_object_size, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitionDefaultMinimumObjectSize, name: "TransitionDefaultMinimumObjectSize", traits: {"smithy.api#httpHeader" => "x-amz-transition-default-minimum-object-size"}))
    PutBucketLifecycleConfigurationRequest[:http_payload] = :lifecycle_configuration
    PutBucketLifecycleConfigurationRequest[:http_payload_member] = PutBucketLifecycleConfigurationRequest.member(:lifecycle_configuration)
    PutBucketLifecycleConfigurationRequest.type = Types::PutBucketLifecycleConfigurationRequest
    PutBucketLoggingRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketLoggingRequest.add_member(:bucket_logging_status, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketLoggingStatus, name: "BucketLoggingStatus", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "BucketLoggingStatus"}))
    PutBucketLoggingRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutBucketLoggingRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutBucketLoggingRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketLoggingRequest[:http_payload] = :bucket_logging_status
    PutBucketLoggingRequest[:http_payload_member] = PutBucketLoggingRequest.member(:bucket_logging_status)
    PutBucketLoggingRequest.type = Types::PutBucketLoggingRequest
    PutBucketMetricsConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketMetricsConfigurationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsId, name: "Id", traits: {"smithy.api#httpQuery" => "id", "smithy.api#required" => {}}))
    PutBucketMetricsConfigurationRequest.add_member(:metrics_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsConfiguration, name: "MetricsConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "MetricsConfiguration"}))
    PutBucketMetricsConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketMetricsConfigurationRequest[:http_payload] = :metrics_configuration
    PutBucketMetricsConfigurationRequest[:http_payload_member] = PutBucketMetricsConfigurationRequest.member(:metrics_configuration)
    PutBucketMetricsConfigurationRequest.type = Types::PutBucketMetricsConfigurationRequest
    PutBucketNotificationConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketNotificationConfigurationRequest.add_member(:notification_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfiguration, name: "NotificationConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "NotificationConfiguration"}))
    PutBucketNotificationConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketNotificationConfigurationRequest.add_member(:skip_destination_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: SkipValidation, name: "SkipDestinationValidation", traits: {"smithy.api#httpHeader" => "x-amz-skip-destination-validation"}))
    PutBucketNotificationConfigurationRequest[:http_payload] = :notification_configuration
    PutBucketNotificationConfigurationRequest[:http_payload_member] = PutBucketNotificationConfigurationRequest.member(:notification_configuration)
    PutBucketNotificationConfigurationRequest.type = Types::PutBucketNotificationConfigurationRequest
    PutBucketOwnershipControlsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketOwnershipControlsRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutBucketOwnershipControlsRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketOwnershipControlsRequest.add_member(:ownership_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnershipControls, name: "OwnershipControls", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "OwnershipControls"}))
    PutBucketOwnershipControlsRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutBucketOwnershipControlsRequest[:http_payload] = :ownership_controls
    PutBucketOwnershipControlsRequest[:http_payload_member] = PutBucketOwnershipControlsRequest.member(:ownership_controls)
    PutBucketOwnershipControlsRequest.type = Types::PutBucketOwnershipControlsRequest
    PutBucketPolicyRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketPolicyRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutBucketPolicyRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutBucketPolicyRequest.add_member(:confirm_remove_self_bucket_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmRemoveSelfBucketAccess, name: "ConfirmRemoveSelfBucketAccess", traits: {"smithy.api#httpHeader" => "x-amz-confirm-remove-self-bucket-access"}))
    PutBucketPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutBucketPolicyRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketPolicyRequest[:http_payload] = :policy
    PutBucketPolicyRequest[:http_payload_member] = PutBucketPolicyRequest.member(:policy)
    PutBucketPolicyRequest.type = Types::PutBucketPolicyRequest
    PutBucketReplicationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketReplicationRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutBucketReplicationRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutBucketReplicationRequest.add_member(:replication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfiguration, name: "ReplicationConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "ReplicationConfiguration"}))
    PutBucketReplicationRequest.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockToken, name: "Token", traits: {"smithy.api#httpHeader" => "x-amz-bucket-object-lock-token"}))
    PutBucketReplicationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketReplicationRequest[:http_payload] = :replication_configuration
    PutBucketReplicationRequest[:http_payload_member] = PutBucketReplicationRequest.member(:replication_configuration)
    PutBucketReplicationRequest.type = Types::PutBucketReplicationRequest
    PutBucketRequestPaymentRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketRequestPaymentRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutBucketRequestPaymentRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutBucketRequestPaymentRequest.add_member(:request_payment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPaymentConfiguration, name: "RequestPaymentConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "RequestPaymentConfiguration"}))
    PutBucketRequestPaymentRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketRequestPaymentRequest[:http_payload] = :request_payment_configuration
    PutBucketRequestPaymentRequest[:http_payload_member] = PutBucketRequestPaymentRequest.member(:request_payment_configuration)
    PutBucketRequestPaymentRequest.type = Types::PutBucketRequestPaymentRequest
    PutBucketTaggingRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketTaggingRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutBucketTaggingRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutBucketTaggingRequest.add_member(:tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: Tagging, name: "Tagging", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "Tagging"}))
    PutBucketTaggingRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketTaggingRequest[:http_payload] = :tagging
    PutBucketTaggingRequest[:http_payload_member] = PutBucketTaggingRequest.member(:tagging)
    PutBucketTaggingRequest.type = Types::PutBucketTaggingRequest
    PutBucketVersioningRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketVersioningRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutBucketVersioningRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutBucketVersioningRequest.add_member(:mfa, ::Smithy::Schema::Shapes::MemberShape.new(target: MFA, name: "MFA", traits: {"smithy.api#httpHeader" => "x-amz-mfa"}))
    PutBucketVersioningRequest.add_member(:versioning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VersioningConfiguration, name: "VersioningConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "VersioningConfiguration"}))
    PutBucketVersioningRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketVersioningRequest[:http_payload] = :versioning_configuration
    PutBucketVersioningRequest[:http_payload_member] = PutBucketVersioningRequest.member(:versioning_configuration)
    PutBucketVersioningRequest.type = Types::PutBucketVersioningRequest
    PutBucketWebsiteRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketWebsiteRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutBucketWebsiteRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutBucketWebsiteRequest.add_member(:website_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WebsiteConfiguration, name: "WebsiteConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "WebsiteConfiguration"}))
    PutBucketWebsiteRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutBucketWebsiteRequest[:http_payload] = :website_configuration
    PutBucketWebsiteRequest[:http_payload_member] = PutBucketWebsiteRequest.member(:website_configuration)
    PutBucketWebsiteRequest.type = Types::PutBucketWebsiteRequest
    PutObjectAclOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    PutObjectAclOutput.type = Types::PutObjectAclOutput
    PutObjectAclRequest.add_member(:acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectCannedACL, name: "ACL", traits: {"smithy.api#httpHeader" => "x-amz-acl"}))
    PutObjectAclRequest.add_member(:access_control_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlPolicy, name: "AccessControlPolicy", traits: {"smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "AccessControlPolicy"}))
    PutObjectAclRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutObjectAclRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutObjectAclRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutObjectAclRequest.add_member(:grant_full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantFullControl, name: "GrantFullControl", traits: {"smithy.api#httpHeader" => "x-amz-grant-full-control"}))
    PutObjectAclRequest.add_member(:grant_read, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantRead, name: "GrantRead", traits: {"smithy.api#httpHeader" => "x-amz-grant-read"}))
    PutObjectAclRequest.add_member(:grant_read_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantReadACP, name: "GrantReadACP", traits: {"smithy.api#httpHeader" => "x-amz-grant-read-acp"}))
    PutObjectAclRequest.add_member(:grant_write, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantWrite, name: "GrantWrite", traits: {"smithy.api#httpHeader" => "x-amz-grant-write"}))
    PutObjectAclRequest.add_member(:grant_write_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantWriteACP, name: "GrantWriteACP", traits: {"smithy.api#httpHeader" => "x-amz-grant-write-acp"}))
    PutObjectAclRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Key"}}))
    PutObjectAclRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    PutObjectAclRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    PutObjectAclRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutObjectAclRequest[:http_payload] = :access_control_policy
    PutObjectAclRequest[:http_payload_member] = PutObjectAclRequest.member(:access_control_policy)
    PutObjectAclRequest.type = Types::PutObjectAclRequest
    PutObjectLegalHoldOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    PutObjectLegalHoldOutput.type = Types::PutObjectLegalHoldOutput
    PutObjectLegalHoldRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutObjectLegalHoldRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutObjectLegalHoldRequest.add_member(:legal_hold, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockLegalHold, name: "LegalHold", traits: {"smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "LegalHold"}))
    PutObjectLegalHoldRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    PutObjectLegalHoldRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    PutObjectLegalHoldRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutObjectLegalHoldRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutObjectLegalHoldRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutObjectLegalHoldRequest[:http_payload] = :legal_hold
    PutObjectLegalHoldRequest[:http_payload_member] = PutObjectLegalHoldRequest.member(:legal_hold)
    PutObjectLegalHoldRequest.type = Types::PutObjectLegalHoldRequest
    PutObjectLockConfigurationOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    PutObjectLockConfigurationOutput.type = Types::PutObjectLockConfigurationOutput
    PutObjectLockConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutObjectLockConfigurationRequest.add_member(:object_lock_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockConfiguration, name: "ObjectLockConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "ObjectLockConfiguration"}))
    PutObjectLockConfigurationRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    PutObjectLockConfigurationRequest.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockToken, name: "Token", traits: {"smithy.api#httpHeader" => "x-amz-bucket-object-lock-token"}))
    PutObjectLockConfigurationRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutObjectLockConfigurationRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutObjectLockConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutObjectLockConfigurationRequest[:http_payload] = :object_lock_configuration
    PutObjectLockConfigurationRequest[:http_payload_member] = PutObjectLockConfigurationRequest.member(:object_lock_configuration)
    PutObjectLockConfigurationRequest.type = Types::PutObjectLockConfigurationRequest
    PutObjectOutput.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: Expiration, name: "Expiration", traits: {"smithy.api#httpHeader" => "x-amz-expiration"}))
    PutObjectOutput.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    PutObjectOutput.add_member(:checksum_crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32, name: "ChecksumCRC32", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc32"}))
    PutObjectOutput.add_member(:checksum_crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32C, name: "ChecksumCRC32C", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc32c"}))
    PutObjectOutput.add_member(:checksum_crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC64NVME, name: "ChecksumCRC64NVME", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc64nvme"}))
    PutObjectOutput.add_member(:checksum_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA1, name: "ChecksumSHA1", traits: {"smithy.api#httpHeader" => "x-amz-checksum-sha1"}))
    PutObjectOutput.add_member(:checksum_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA256, name: "ChecksumSHA256", traits: {"smithy.api#httpHeader" => "x-amz-checksum-sha256"}))
    PutObjectOutput.add_member(:checksum_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumType, name: "ChecksumType", traits: {"smithy.api#httpHeader" => "x-amz-checksum-type"}))
    PutObjectOutput.add_member(:server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryption, name: "ServerSideEncryption", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption"}))
    PutObjectOutput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpHeader" => "x-amz-version-id"}))
    PutObjectOutput.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    PutObjectOutput.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    PutObjectOutput.add_member(:ssekms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "SSEKMSKeyId", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-aws-kms-key-id"}))
    PutObjectOutput.add_member(:ssekms_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSEncryptionContext, name: "SSEKMSEncryptionContext", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-context"}))
    PutObjectOutput.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketKeyEnabled, name: "BucketKeyEnabled", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-bucket-key-enabled"}))
    PutObjectOutput.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "Size", traits: {"smithy.api#httpHeader" => "x-amz-object-size"}))
    PutObjectOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    PutObjectOutput.type = Types::PutObjectOutput
    PutObjectRequest.add_member(:acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectCannedACL, name: "ACL", traits: {"smithy.api#httpHeader" => "x-amz-acl"}))
    PutObjectRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingBlob, name: "Body", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    PutObjectRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutObjectRequest.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheControl, name: "CacheControl", traits: {"smithy.api#httpHeader" => "Cache-Control"}))
    PutObjectRequest.add_member(:content_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentDisposition, name: "ContentDisposition", traits: {"smithy.api#httpHeader" => "Content-Disposition"}))
    PutObjectRequest.add_member(:content_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentEncoding, name: "ContentEncoding", traits: {"smithy.api#httpHeader" => "Content-Encoding"}))
    PutObjectRequest.add_member(:content_language, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentLanguage, name: "ContentLanguage", traits: {"smithy.api#httpHeader" => "Content-Language"}))
    PutObjectRequest.add_member(:content_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentLength, name: "ContentLength", traits: {"smithy.api#httpHeader" => "Content-Length"}))
    PutObjectRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutObjectRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    PutObjectRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutObjectRequest.add_member(:checksum_crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32, name: "ChecksumCRC32", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc32"}))
    PutObjectRequest.add_member(:checksum_crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32C, name: "ChecksumCRC32C", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc32c"}))
    PutObjectRequest.add_member(:checksum_crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC64NVME, name: "ChecksumCRC64NVME", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc64nvme"}))
    PutObjectRequest.add_member(:checksum_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA1, name: "ChecksumSHA1", traits: {"smithy.api#httpHeader" => "x-amz-checksum-sha1"}))
    PutObjectRequest.add_member(:checksum_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA256, name: "ChecksumSHA256", traits: {"smithy.api#httpHeader" => "x-amz-checksum-sha256"}))
    PutObjectRequest.add_member(:expires, ::Smithy::Schema::Shapes::MemberShape.new(target: Expires, name: "Expires", traits: {"smithy.api#httpHeader" => "Expires"}))
    PutObjectRequest.add_member(:if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: IfMatch, name: "IfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    PutObjectRequest.add_member(:if_none_match, ::Smithy::Schema::Shapes::MemberShape.new(target: IfNoneMatch, name: "IfNoneMatch", traits: {"smithy.api#httpHeader" => "If-None-Match"}))
    PutObjectRequest.add_member(:grant_full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantFullControl, name: "GrantFullControl", traits: {"smithy.api#httpHeader" => "x-amz-grant-full-control"}))
    PutObjectRequest.add_member(:grant_read, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantRead, name: "GrantRead", traits: {"smithy.api#httpHeader" => "x-amz-grant-read"}))
    PutObjectRequest.add_member(:grant_read_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantReadACP, name: "GrantReadACP", traits: {"smithy.api#httpHeader" => "x-amz-grant-read-acp"}))
    PutObjectRequest.add_member(:grant_write_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantWriteACP, name: "GrantWriteACP", traits: {"smithy.api#httpHeader" => "x-amz-grant-write-acp"}))
    PutObjectRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Key"}}))
    PutObjectRequest.add_member(:write_offset_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: WriteOffsetBytes, name: "WriteOffsetBytes", traits: {"smithy.api#httpHeader" => "x-amz-write-offset-bytes"}))
    PutObjectRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata", traits: {"smithy.api#httpPrefixHeaders" => "x-amz-meta-"}))
    PutObjectRequest.add_member(:server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryption, name: "ServerSideEncryption", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption"}))
    PutObjectRequest.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "StorageClass", traits: {"smithy.api#httpHeader" => "x-amz-storage-class"}))
    PutObjectRequest.add_member(:website_redirect_location, ::Smithy::Schema::Shapes::MemberShape.new(target: WebsiteRedirectLocation, name: "WebsiteRedirectLocation", traits: {"smithy.api#httpHeader" => "x-amz-website-redirect-location"}))
    PutObjectRequest.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    PutObjectRequest.add_member(:sse_customer_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKey, name: "SSECustomerKey", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key"}))
    PutObjectRequest.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    PutObjectRequest.add_member(:ssekms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "SSEKMSKeyId", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-aws-kms-key-id"}))
    PutObjectRequest.add_member(:ssekms_encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSEncryptionContext, name: "SSEKMSEncryptionContext", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-context"}))
    PutObjectRequest.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketKeyEnabled, name: "BucketKeyEnabled", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-bucket-key-enabled"}))
    PutObjectRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    PutObjectRequest.add_member(:tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggingHeader, name: "Tagging", traits: {"smithy.api#httpHeader" => "x-amz-tagging"}))
    PutObjectRequest.add_member(:object_lock_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockMode, name: "ObjectLockMode", traits: {"smithy.api#httpHeader" => "x-amz-object-lock-mode"}))
    PutObjectRequest.add_member(:object_lock_retain_until_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockRetainUntilDate, name: "ObjectLockRetainUntilDate", traits: {"smithy.api#httpHeader" => "x-amz-object-lock-retain-until-date"}))
    PutObjectRequest.add_member(:object_lock_legal_hold_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockLegalHoldStatus, name: "ObjectLockLegalHoldStatus", traits: {"smithy.api#httpHeader" => "x-amz-object-lock-legal-hold"}))
    PutObjectRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutObjectRequest[:http_payload] = :body
    PutObjectRequest[:http_payload_member] = PutObjectRequest.member(:body)
    PutObjectRequest.type = Types::PutObjectRequest
    PutObjectRetentionOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    PutObjectRetentionOutput.type = Types::PutObjectRetentionOutput
    PutObjectRetentionRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutObjectRetentionRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutObjectRetentionRequest.add_member(:retention, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockRetention, name: "Retention", traits: {"smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "Retention"}))
    PutObjectRetentionRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    PutObjectRetentionRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    PutObjectRetentionRequest.add_member(:bypass_governance_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: BypassGovernanceRetention, name: "BypassGovernanceRetention", traits: {"smithy.api#httpHeader" => "x-amz-bypass-governance-retention"}))
    PutObjectRetentionRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutObjectRetentionRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutObjectRetentionRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutObjectRetentionRequest[:http_payload] = :retention
    PutObjectRetentionRequest[:http_payload_member] = PutObjectRetentionRequest.member(:retention)
    PutObjectRetentionRequest.type = Types::PutObjectRetentionRequest
    PutObjectTaggingOutput.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpHeader" => "x-amz-version-id"}))
    PutObjectTaggingOutput.type = Types::PutObjectTaggingOutput
    PutObjectTaggingRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutObjectTaggingRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutObjectTaggingRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    PutObjectTaggingRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutObjectTaggingRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutObjectTaggingRequest.add_member(:tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: Tagging, name: "Tagging", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "Tagging"}))
    PutObjectTaggingRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutObjectTaggingRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    PutObjectTaggingRequest[:http_payload] = :tagging
    PutObjectTaggingRequest[:http_payload_member] = PutObjectTaggingRequest.member(:tagging)
    PutObjectTaggingRequest.type = Types::PutObjectTaggingRequest
    PutPublicAccessBlockRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutPublicAccessBlockRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    PutPublicAccessBlockRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    PutPublicAccessBlockRequest.add_member(:public_access_block_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessBlockConfiguration, name: "PublicAccessBlockConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "PublicAccessBlockConfiguration"}))
    PutPublicAccessBlockRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    PutPublicAccessBlockRequest[:http_payload] = :public_access_block_configuration
    PutPublicAccessBlockRequest[:http_payload_member] = PutPublicAccessBlockRequest.member(:public_access_block_configuration)
    PutPublicAccessBlockRequest.type = Types::PutPublicAccessBlockRequest
    QueueConfiguration.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationId, name: "Id"))
    QueueConfiguration.add_member(:queue_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueArn, name: "QueueArn", traits: {"smithy.api#required" => {}, "smithy.api#xmlName" => "Queue"}))
    QueueConfiguration.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventList, name: "Events", traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Event"}))
    QueueConfiguration.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfigurationFilter, name: "Filter"))
    QueueConfiguration.type = Types::QueueConfiguration
    QueueConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueueConfiguration, name: "member")
    QuoteFields.add_member(:always, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALWAYS", traits: {"smithy.api#enumValue" => "ALWAYS"}))
    QuoteFields.add_member(:asneeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASNEEDED", traits: {"smithy.api#enumValue" => "ASNEEDED"}))
    RecordExpiration.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationState, name: "Expiration", traits: {"smithy.api#required" => {}}))
    RecordExpiration.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordExpirationDays, name: "Days"))
    RecordExpiration.type = Types::RecordExpiration
    RecordsEvent.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Body, name: "Payload", traits: {"smithy.api#eventPayload" => {}}))
    RecordsEvent.type = Types::RecordsEvent
    Redirect.add_member(:host_name, ::Smithy::Schema::Shapes::MemberShape.new(target: HostName, name: "HostName"))
    Redirect.add_member(:http_redirect_code, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpRedirectCode, name: "HttpRedirectCode"))
    Redirect.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol"))
    Redirect.add_member(:replace_key_prefix_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplaceKeyPrefixWith, name: "ReplaceKeyPrefixWith"))
    Redirect.add_member(:replace_key_with, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplaceKeyWith, name: "ReplaceKeyWith"))
    Redirect.type = Types::Redirect
    RedirectAllRequestsTo.add_member(:host_name, ::Smithy::Schema::Shapes::MemberShape.new(target: HostName, name: "HostName", traits: {"smithy.api#required" => {}}))
    RedirectAllRequestsTo.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "Protocol"))
    RedirectAllRequestsTo.type = Types::RedirectAllRequestsTo
    RenameObjectOutput.type = Types::RenameObjectOutput
    RenameObjectRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    RenameObjectRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Key"}}))
    RenameObjectRequest.add_member(:rename_source, ::Smithy::Schema::Shapes::MemberShape.new(target: RenameSource, name: "RenameSource", traits: {"smithy.api#httpHeader" => "x-amz-rename-source", "smithy.api#required" => {}}))
    RenameObjectRequest.add_member(:destination_if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: IfMatch, name: "DestinationIfMatch", traits: {"smithy.api#httpHeader" => "If-Match"}))
    RenameObjectRequest.add_member(:destination_if_none_match, ::Smithy::Schema::Shapes::MemberShape.new(target: IfNoneMatch, name: "DestinationIfNoneMatch", traits: {"smithy.api#httpHeader" => "If-None-Match"}))
    RenameObjectRequest.add_member(:destination_if_modified_since, ::Smithy::Schema::Shapes::MemberShape.new(target: IfModifiedSince, name: "DestinationIfModifiedSince", traits: {"smithy.api#httpHeader" => "If-Modified-Since"}))
    RenameObjectRequest.add_member(:destination_if_unmodified_since, ::Smithy::Schema::Shapes::MemberShape.new(target: IfUnmodifiedSince, name: "DestinationIfUnmodifiedSince", traits: {"smithy.api#httpHeader" => "If-Unmodified-Since"}))
    RenameObjectRequest.add_member(:source_if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: RenameSourceIfMatch, name: "SourceIfMatch", traits: {"smithy.api#httpHeader" => "x-amz-rename-source-if-match"}))
    RenameObjectRequest.add_member(:source_if_none_match, ::Smithy::Schema::Shapes::MemberShape.new(target: RenameSourceIfNoneMatch, name: "SourceIfNoneMatch", traits: {"smithy.api#httpHeader" => "x-amz-rename-source-if-none-match"}))
    RenameObjectRequest.add_member(:source_if_modified_since, ::Smithy::Schema::Shapes::MemberShape.new(target: RenameSourceIfModifiedSince, name: "SourceIfModifiedSince", traits: {"smithy.api#httpHeader" => "x-amz-rename-source-if-modified-since"}))
    RenameObjectRequest.add_member(:source_if_unmodified_since, ::Smithy::Schema::Shapes::MemberShape.new(target: RenameSourceIfUnmodifiedSince, name: "SourceIfUnmodifiedSince", traits: {"smithy.api#httpHeader" => "x-amz-rename-source-if-unmodified-since"}))
    RenameObjectRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#httpHeader" => "x-amz-client-token", "smithy.api#idempotencyToken" => {}}))
    RenameObjectRequest.type = Types::RenameObjectRequest
    ReplicaModifications.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaModificationsStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ReplicaModifications.type = Types::ReplicaModifications
    ReplicaModificationsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ReplicaModificationsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    ReplicationConfiguration.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "Role", traits: {"smithy.api#required" => {}}))
    ReplicationConfiguration.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationRules, name: "Rules", traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Rule"}))
    ReplicationConfiguration.type = Types::ReplicationConfiguration
    ReplicationRule.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "ID"))
    ReplicationRule.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "Priority"))
    ReplicationRule.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix", traits: {"smithy.api#deprecated" => {}}))
    ReplicationRule.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationRuleFilter, name: "Filter"))
    ReplicationRule.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationRuleStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ReplicationRule.add_member(:source_selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceSelectionCriteria, name: "SourceSelectionCriteria"))
    ReplicationRule.add_member(:existing_object_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingObjectReplication, name: "ExistingObjectReplication"))
    ReplicationRule.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "Destination", traits: {"smithy.api#required" => {}}))
    ReplicationRule.add_member(:delete_marker_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteMarkerReplication, name: "DeleteMarkerReplication"))
    ReplicationRule.type = Types::ReplicationRule
    ReplicationRuleAndOperator.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    ReplicationRuleAndOperator.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSet, name: "Tags", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Tag"}))
    ReplicationRuleAndOperator.type = Types::ReplicationRuleAndOperator
    ReplicationRuleFilter.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    ReplicationRuleFilter.add_member(:tag, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "Tag"))
    ReplicationRuleFilter.add_member(:and, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationRuleAndOperator, name: "And"))
    ReplicationRuleFilter.type = Types::ReplicationRuleFilter
    ReplicationRuleStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ReplicationRuleStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    ReplicationRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationRule, name: "member")
    ReplicationStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ReplicationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ReplicationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ReplicationStatus.add_member(:replica, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICA", traits: {"smithy.api#enumValue" => "REPLICA"}))
    ReplicationStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ReplicationTime.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTimeStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ReplicationTime.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTimeValue, name: "Time", traits: {"smithy.api#required" => {}}))
    ReplicationTime.type = Types::ReplicationTime
    ReplicationTimeStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ReplicationTimeStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    ReplicationTimeValue.add_member(:minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Minutes, name: "Minutes"))
    ReplicationTimeValue.type = Types::ReplicationTimeValue
    RequestCharged.add_member(:requester, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "requester", traits: {"smithy.api#enumValue" => "requester"}))
    RequestPayer.add_member(:requester, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "requester", traits: {"smithy.api#enumValue" => "requester"}))
    RequestPaymentConfiguration.add_member(:payer, ::Smithy::Schema::Shapes::MemberShape.new(target: Payer, name: "Payer", traits: {"smithy.api#required" => {}}))
    RequestPaymentConfiguration.type = Types::RequestPaymentConfiguration
    RequestProgress.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableRequestProgress, name: "Enabled"))
    RequestProgress.type = Types::RequestProgress
    RestoreObjectOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    RestoreObjectOutput.add_member(:restore_output_path, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreOutputPath, name: "RestoreOutputPath", traits: {"smithy.api#httpHeader" => "x-amz-restore-output-path"}))
    RestoreObjectOutput.type = Types::RestoreObjectOutput
    RestoreObjectRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    RestoreObjectRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RestoreObjectRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpQuery" => "versionId"}))
    RestoreObjectRequest.add_member(:restore_request, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreRequest, name: "RestoreRequest", traits: {"smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "RestoreRequest"}))
    RestoreObjectRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    RestoreObjectRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    RestoreObjectRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    RestoreObjectRequest[:http_payload] = :restore_request
    RestoreObjectRequest[:http_payload_member] = RestoreObjectRequest.member(:restore_request)
    RestoreObjectRequest.type = Types::RestoreObjectRequest
    RestoreRequest.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: Days, name: "Days"))
    RestoreRequest.add_member(:glacier_job_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: GlacierJobParameters, name: "GlacierJobParameters"))
    RestoreRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreRequestType, name: "Type"))
    RestoreRequest.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: Tier, name: "Tier"))
    RestoreRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    RestoreRequest.add_member(:select_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectParameters, name: "SelectParameters"))
    RestoreRequest.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputLocation, name: "OutputLocation"))
    RestoreRequest.type = Types::RestoreRequest
    RestoreRequestType.add_member(:select, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELECT", traits: {"smithy.api#enumValue" => "SELECT"}))
    RestoreStatus.add_member(:is_restore_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: IsRestoreInProgress, name: "IsRestoreInProgress"))
    RestoreStatus.add_member(:restore_expiry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: RestoreExpiryDate, name: "RestoreExpiryDate"))
    RestoreStatus.type = Types::RestoreStatus
    RoutingRule.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "Condition"))
    RoutingRule.add_member(:redirect, ::Smithy::Schema::Shapes::MemberShape.new(target: Redirect, name: "Redirect", traits: {"smithy.api#required" => {}}))
    RoutingRule.type = Types::RoutingRule
    RoutingRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingRule, name: "member", traits: {"smithy.api#xmlName" => "RoutingRule"})
    S3KeyFilter.add_member(:filter_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterRuleList, name: "FilterRules", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "FilterRule"}))
    S3KeyFilter.type = Types::S3KeyFilter
    S3Location.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "BucketName", traits: {"smithy.api#required" => {}}))
    S3Location.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationPrefix, name: "Prefix", traits: {"smithy.api#required" => {}}))
    S3Location.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, name: "Encryption"))
    S3Location.add_member(:canned_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectCannedACL, name: "CannedACL"))
    S3Location.add_member(:access_control_list, ::Smithy::Schema::Shapes::MemberShape.new(target: Grants, name: "AccessControlList"))
    S3Location.add_member(:tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: Tagging, name: "Tagging"))
    S3Location.add_member(:user_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: UserMetadata, name: "UserMetadata"))
    S3Location.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "StorageClass"))
    S3Location.type = Types::S3Location
    S3TablesBucketType.add_member(:aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "aws", traits: {"smithy.api#enumValue" => "aws"}))
    S3TablesBucketType.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "customer", traits: {"smithy.api#enumValue" => "customer"}))
    S3TablesDestination.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesBucketArn, name: "TableBucketArn", traits: {"smithy.api#required" => {}}))
    S3TablesDestination.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesName, name: "TableName", traits: {"smithy.api#required" => {}}))
    S3TablesDestination.type = Types::S3TablesDestination
    S3TablesDestinationResult.add_member(:table_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesBucketArn, name: "TableBucketArn", traits: {"smithy.api#required" => {}}))
    S3TablesDestinationResult.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesName, name: "TableName", traits: {"smithy.api#required" => {}}))
    S3TablesDestinationResult.add_member(:table_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesArn, name: "TableArn", traits: {"smithy.api#required" => {}}))
    S3TablesDestinationResult.add_member(:table_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TablesNamespace, name: "TableNamespace", traits: {"smithy.api#required" => {}}))
    S3TablesDestinationResult.type = Types::S3TablesDestinationResult
    SSEKMS.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "KeyId", traits: {"smithy.api#required" => {}}))
    SSEKMS.type = Types::SSEKMS
    SSES3.type = Types::SSES3
    ScanRange.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: Start, name: "Start"))
    ScanRange.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: End, name: "End"))
    ScanRange.type = Types::ScanRange
    SelectObjectContentEventStream.add_member(:records, Types::SelectObjectContentEventStream::Records, ::Smithy::Schema::Shapes::MemberShape.new(target: RecordsEvent, name: "Records"))
    SelectObjectContentEventStream.add_member(:stats, Types::SelectObjectContentEventStream::Stats, ::Smithy::Schema::Shapes::MemberShape.new(target: StatsEvent, name: "Stats"))
    SelectObjectContentEventStream.add_member(:progress, Types::SelectObjectContentEventStream::Progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ProgressEvent, name: "Progress"))
    SelectObjectContentEventStream.add_member(:cont, Types::SelectObjectContentEventStream::Cont, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationEvent, name: "Cont"))
    SelectObjectContentEventStream.add_member(:end, Types::SelectObjectContentEventStream::End, ::Smithy::Schema::Shapes::MemberShape.new(target: EndEvent, name: "End"))
    SelectObjectContentEventStream.add_member(:unknown, Types::SelectObjectContentEventStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    SelectObjectContentEventStream.type = Types::SelectObjectContentEventStream
    SelectObjectContentOutput.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectObjectContentEventStream, name: "Payload", traits: {"smithy.api#httpPayload" => {}}))
    SelectObjectContentOutput[:http_payload] = :payload
    SelectObjectContentOutput[:http_payload_member] = SelectObjectContentOutput.member(:payload)
    SelectObjectContentOutput.type = Types::SelectObjectContentOutput
    SelectObjectContentRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    SelectObjectContentRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SelectObjectContentRequest.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    SelectObjectContentRequest.add_member(:sse_customer_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKey, name: "SSECustomerKey", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key"}))
    SelectObjectContentRequest.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    SelectObjectContentRequest.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression", traits: {"smithy.api#required" => {}}))
    SelectObjectContentRequest.add_member(:expression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionType, name: "ExpressionType", traits: {"smithy.api#required" => {}}))
    SelectObjectContentRequest.add_member(:request_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestProgress, name: "RequestProgress"))
    SelectObjectContentRequest.add_member(:input_serialization, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSerialization, name: "InputSerialization", traits: {"smithy.api#required" => {}}))
    SelectObjectContentRequest.add_member(:output_serialization, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputSerialization, name: "OutputSerialization", traits: {"smithy.api#required" => {}}))
    SelectObjectContentRequest.add_member(:scan_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanRange, name: "ScanRange"))
    SelectObjectContentRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    SelectObjectContentRequest.type = Types::SelectObjectContentRequest
    SelectParameters.add_member(:input_serialization, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSerialization, name: "InputSerialization", traits: {"smithy.api#required" => {}}))
    SelectParameters.add_member(:expression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionType, name: "ExpressionType", traits: {"smithy.api#required" => {}}))
    SelectParameters.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression", traits: {"smithy.api#required" => {}}))
    SelectParameters.add_member(:output_serialization, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputSerialization, name: "OutputSerialization", traits: {"smithy.api#required" => {}}))
    SelectParameters.type = Types::SelectParameters
    ServerSideEncryption.add_member(:aes256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES256", traits: {"smithy.api#enumValue" => "AES256"}))
    ServerSideEncryption.add_member(:aws_fsx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "aws_fsx", traits: {"smithy.api#enumValue" => "aws:fsx"}))
    ServerSideEncryption.add_member(:aws_kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "aws_kms", traits: {"smithy.api#enumValue" => "aws:kms"}))
    ServerSideEncryption.add_member(:aws_kms_dsse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "aws_kms_dsse", traits: {"smithy.api#enumValue" => "aws:kms:dsse"}))
    ServerSideEncryptionByDefault.add_member(:sse_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryption, name: "SSEAlgorithm", traits: {"smithy.api#required" => {}}))
    ServerSideEncryptionByDefault.add_member(:kms_master_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "KMSMasterKeyID"))
    ServerSideEncryptionByDefault.type = Types::ServerSideEncryptionByDefault
    ServerSideEncryptionConfiguration.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionRules, name: "Rules", traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Rule"}))
    ServerSideEncryptionConfiguration.type = Types::ServerSideEncryptionConfiguration
    ServerSideEncryptionRule.add_member(:apply_server_side_encryption_by_default, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionByDefault, name: "ApplyServerSideEncryptionByDefault"))
    ServerSideEncryptionRule.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketKeyEnabled, name: "BucketKeyEnabled"))
    ServerSideEncryptionRule.type = Types::ServerSideEncryptionRule
    ServerSideEncryptionRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionRule, name: "member")
    SessionCredentials.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyIdValue, name: "AccessKeyId", traits: {"smithy.api#required" => {}, "smithy.api#xmlName" => "AccessKeyId"}))
    SessionCredentials.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionCredentialValue, name: "SecretAccessKey", traits: {"smithy.api#required" => {}, "smithy.api#xmlName" => "SecretAccessKey"}))
    SessionCredentials.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionCredentialValue, name: "SessionToken", traits: {"smithy.api#required" => {}, "smithy.api#xmlName" => "SessionToken"}))
    SessionCredentials.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionExpiration, name: "Expiration", traits: {"smithy.api#required" => {}, "smithy.api#xmlName" => "Expiration"}))
    SessionCredentials.type = Types::SessionCredentials
    SessionMode.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReadOnly", traits: {"smithy.api#enumValue" => "ReadOnly"}))
    SessionMode.add_member(:read_write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReadWrite", traits: {"smithy.api#enumValue" => "ReadWrite"}))
    SimplePrefix.type = Types::SimplePrefix
    SourceSelectionCriteria.add_member(:sse_kms_encrypted_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: SseKmsEncryptedObjects, name: "SseKmsEncryptedObjects"))
    SourceSelectionCriteria.add_member(:replica_modifications, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaModifications, name: "ReplicaModifications"))
    SourceSelectionCriteria.type = Types::SourceSelectionCriteria
    SseKmsEncryptedObjects.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SseKmsEncryptedObjectsStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    SseKmsEncryptedObjects.type = Types::SseKmsEncryptedObjects
    SseKmsEncryptedObjectsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    SseKmsEncryptedObjectsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    Stats.add_member(:bytes_scanned, ::Smithy::Schema::Shapes::MemberShape.new(target: BytesScanned, name: "BytesScanned"))
    Stats.add_member(:bytes_processed, ::Smithy::Schema::Shapes::MemberShape.new(target: BytesProcessed, name: "BytesProcessed"))
    Stats.add_member(:bytes_returned, ::Smithy::Schema::Shapes::MemberShape.new(target: BytesReturned, name: "BytesReturned"))
    Stats.type = Types::Stats
    StatsEvent.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Stats, name: "Details", traits: {"smithy.api#eventPayload" => {}}))
    StatsEvent.type = Types::StatsEvent
    StorageClass.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    StorageClass.add_member(:reduced_redundancy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDUCED_REDUNDANCY", traits: {"smithy.api#enumValue" => "REDUCED_REDUNDANCY"}))
    StorageClass.add_member(:standard_ia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD_IA", traits: {"smithy.api#enumValue" => "STANDARD_IA"}))
    StorageClass.add_member(:onezone_ia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONEZONE_IA", traits: {"smithy.api#enumValue" => "ONEZONE_IA"}))
    StorageClass.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTELLIGENT_TIERING", traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    StorageClass.add_member(:glacier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLACIER", traits: {"smithy.api#enumValue" => "GLACIER"}))
    StorageClass.add_member(:deep_archive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEEP_ARCHIVE", traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE"}))
    StorageClass.add_member(:outposts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTPOSTS", traits: {"smithy.api#enumValue" => "OUTPOSTS"}))
    StorageClass.add_member(:glacier_ir, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLACIER_IR", traits: {"smithy.api#enumValue" => "GLACIER_IR"}))
    StorageClass.add_member(:snow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNOW", traits: {"smithy.api#enumValue" => "SNOW"}))
    StorageClass.add_member(:express_onezone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPRESS_ONEZONE", traits: {"smithy.api#enumValue" => "EXPRESS_ONEZONE"}))
    StorageClass.add_member(:fsx_openzfs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FSX_OPENZFS", traits: {"smithy.api#enumValue" => "FSX_OPENZFS"}))
    StorageClassAnalysis.add_member(:data_export, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClassAnalysisDataExport, name: "DataExport"))
    StorageClassAnalysis.type = Types::StorageClassAnalysis
    StorageClassAnalysisDataExport.add_member(:output_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClassAnalysisSchemaVersion, name: "OutputSchemaVersion", traits: {"smithy.api#required" => {}}))
    StorageClassAnalysisDataExport.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyticsExportDestination, name: "Destination", traits: {"smithy.api#required" => {}}))
    StorageClassAnalysisDataExport.type = Types::StorageClassAnalysisDataExport
    StorageClassAnalysisSchemaVersion.add_member(:v_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V_1", traits: {"smithy.api#enumValue" => "V_1"}))
    TableSseAlgorithm.add_member(:aws_kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "aws_kms", traits: {"smithy.api#enumValue" => "aws:kms"}))
    TableSseAlgorithm.add_member(:aes256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES256", traits: {"smithy.api#enumValue" => "AES256"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagSet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member", traits: {"smithy.api#xmlName" => "Tag"})
    Tagging.add_member(:tag_set, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSet, name: "TagSet", traits: {"smithy.api#required" => {}}))
    Tagging.type = Types::Tagging
    TaggingDirective.add_member(:copy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COPY", traits: {"smithy.api#enumValue" => "COPY"}))
    TaggingDirective.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE", traits: {"smithy.api#enumValue" => "REPLACE"}))
    TargetGrant.add_member(:grantee, ::Smithy::Schema::Shapes::MemberShape.new(target: Grantee, name: "Grantee", traits: {"smithy.api#xmlNamespace" => {"uri" => "http://www.w3.org/2001/XMLSchema-instance", "prefix" => "xsi"}}))
    TargetGrant.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketLogsPermission, name: "Permission"))
    TargetGrant.type = Types::TargetGrant
    TargetGrants.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetGrant, name: "member", traits: {"smithy.api#xmlName" => "Grant"})
    TargetObjectKeyFormat.add_member(:simple_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: SimplePrefix, name: "SimplePrefix", traits: {"smithy.api#xmlName" => "SimplePrefix"}))
    TargetObjectKeyFormat.add_member(:partitioned_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionedPrefix, name: "PartitionedPrefix", traits: {"smithy.api#xmlName" => "PartitionedPrefix"}))
    TargetObjectKeyFormat.type = Types::TargetObjectKeyFormat
    Tier.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Standard", traits: {"smithy.api#enumValue" => "Standard"}))
    Tier.add_member(:bulk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bulk", traits: {"smithy.api#enumValue" => "Bulk"}))
    Tier.add_member(:expedited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Expedited", traits: {"smithy.api#enumValue" => "Expedited"}))
    Tiering.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligentTieringDays, name: "Days", traits: {"smithy.api#required" => {}}))
    Tiering.add_member(:access_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: IntelligentTieringAccessTier, name: "AccessTier", traits: {"smithy.api#required" => {}}))
    Tiering.type = Types::Tiering
    TieringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tiering, name: "member")
    TooManyParts.type = Types::TooManyParts
    TopicConfiguration.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationId, name: "Id"))
    TopicConfiguration.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicArn, name: "TopicArn", traits: {"smithy.api#required" => {}, "smithy.api#xmlName" => "Topic"}))
    TopicConfiguration.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventList, name: "Events", traits: {"smithy.api#required" => {}, "smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "Event"}))
    TopicConfiguration.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfigurationFilter, name: "Filter"))
    TopicConfiguration.type = Types::TopicConfiguration
    TopicConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TopicConfiguration, name: "member")
    Transition.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "Date"))
    Transition.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: Days, name: "Days"))
    Transition.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitionStorageClass, name: "StorageClass"))
    Transition.type = Types::Transition
    TransitionDefaultMinimumObjectSize.add_member(:varies_by_storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "varies_by_storage_class", traits: {"smithy.api#enumValue" => "varies_by_storage_class"}))
    TransitionDefaultMinimumObjectSize.add_member(:all_storage_classes_128_k, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "all_storage_classes_128K", traits: {"smithy.api#enumValue" => "all_storage_classes_128K"}))
    TransitionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Transition, name: "member")
    TransitionStorageClass.add_member(:glacier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLACIER", traits: {"smithy.api#enumValue" => "GLACIER"}))
    TransitionStorageClass.add_member(:standard_ia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD_IA", traits: {"smithy.api#enumValue" => "STANDARD_IA"}))
    TransitionStorageClass.add_member(:onezone_ia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONEZONE_IA", traits: {"smithy.api#enumValue" => "ONEZONE_IA"}))
    TransitionStorageClass.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTELLIGENT_TIERING", traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    TransitionStorageClass.add_member(:deep_archive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEEP_ARCHIVE", traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE"}))
    TransitionStorageClass.add_member(:glacier_ir, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLACIER_IR", traits: {"smithy.api#enumValue" => "GLACIER_IR"}))
    Type.add_member(:canonical_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CanonicalUser", traits: {"smithy.api#enumValue" => "CanonicalUser"}))
    Type.add_member(:amazon_customer_by_email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AmazonCustomerByEmail", traits: {"smithy.api#enumValue" => "AmazonCustomerByEmail"}))
    Type.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Group", traits: {"smithy.api#enumValue" => "Group"}))
    UpdateBucketMetadataInventoryTableConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    UpdateBucketMetadataInventoryTableConfigurationRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    UpdateBucketMetadataInventoryTableConfigurationRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    UpdateBucketMetadataInventoryTableConfigurationRequest.add_member(:inventory_table_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryTableConfigurationUpdates, name: "InventoryTableConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "InventoryTableConfiguration"}))
    UpdateBucketMetadataInventoryTableConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    UpdateBucketMetadataInventoryTableConfigurationRequest[:http_payload] = :inventory_table_configuration
    UpdateBucketMetadataInventoryTableConfigurationRequest[:http_payload_member] = UpdateBucketMetadataInventoryTableConfigurationRequest.member(:inventory_table_configuration)
    UpdateBucketMetadataInventoryTableConfigurationRequest.type = Types::UpdateBucketMetadataInventoryTableConfigurationRequest
    UpdateBucketMetadataJournalTableConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    UpdateBucketMetadataJournalTableConfigurationRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    UpdateBucketMetadataJournalTableConfigurationRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    UpdateBucketMetadataJournalTableConfigurationRequest.add_member(:journal_table_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: JournalTableConfigurationUpdates, name: "JournalTableConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "JournalTableConfiguration"}))
    UpdateBucketMetadataJournalTableConfigurationRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    UpdateBucketMetadataJournalTableConfigurationRequest[:http_payload] = :journal_table_configuration
    UpdateBucketMetadataJournalTableConfigurationRequest[:http_payload_member] = UpdateBucketMetadataJournalTableConfigurationRequest.member(:journal_table_configuration)
    UpdateBucketMetadataJournalTableConfigurationRequest.type = Types::UpdateBucketMetadataJournalTableConfigurationRequest
    UploadPartCopyOutput.add_member(:copy_source_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceVersionId, name: "CopySourceVersionId", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-version-id"}))
    UploadPartCopyOutput.add_member(:copy_part_result, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyPartResult, name: "CopyPartResult", traits: {"smithy.api#httpPayload" => {}}))
    UploadPartCopyOutput.add_member(:server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryption, name: "ServerSideEncryption", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption"}))
    UploadPartCopyOutput.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    UploadPartCopyOutput.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    UploadPartCopyOutput.add_member(:ssekms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "SSEKMSKeyId", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-aws-kms-key-id"}))
    UploadPartCopyOutput.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketKeyEnabled, name: "BucketKeyEnabled", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-bucket-key-enabled"}))
    UploadPartCopyOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    UploadPartCopyOutput[:http_payload] = :copy_part_result
    UploadPartCopyOutput[:http_payload_member] = UploadPartCopyOutput.member(:copy_part_result)
    UploadPartCopyOutput.type = Types::UploadPartCopyOutput
    UploadPartCopyRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    UploadPartCopyRequest.add_member(:copy_source, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySource, name: "CopySource", traits: {"smithy.api#httpHeader" => "x-amz-copy-source", "smithy.api#required" => {}}))
    UploadPartCopyRequest.add_member(:copy_source_if_match, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceIfMatch, name: "CopySourceIfMatch", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-if-match"}))
    UploadPartCopyRequest.add_member(:copy_source_if_modified_since, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceIfModifiedSince, name: "CopySourceIfModifiedSince", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-if-modified-since"}))
    UploadPartCopyRequest.add_member(:copy_source_if_none_match, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceIfNoneMatch, name: "CopySourceIfNoneMatch", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-if-none-match"}))
    UploadPartCopyRequest.add_member(:copy_source_if_unmodified_since, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceIfUnmodifiedSince, name: "CopySourceIfUnmodifiedSince", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-if-unmodified-since"}))
    UploadPartCopyRequest.add_member(:copy_source_range, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceRange, name: "CopySourceRange", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-range"}))
    UploadPartCopyRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UploadPartCopyRequest.add_member(:part_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PartNumber, name: "PartNumber", traits: {"smithy.api#httpQuery" => "partNumber", "smithy.api#required" => {}}))
    UploadPartCopyRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MultipartUploadId, name: "UploadId", traits: {"smithy.api#httpQuery" => "uploadId", "smithy.api#required" => {}}))
    UploadPartCopyRequest.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    UploadPartCopyRequest.add_member(:sse_customer_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKey, name: "SSECustomerKey", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key"}))
    UploadPartCopyRequest.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    UploadPartCopyRequest.add_member(:copy_source_sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceSSECustomerAlgorithm, name: "CopySourceSSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-server-side-encryption-customer-algorithm"}))
    UploadPartCopyRequest.add_member(:copy_source_sse_customer_key, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceSSECustomerKey, name: "CopySourceSSECustomerKey", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-server-side-encryption-customer-key"}))
    UploadPartCopyRequest.add_member(:copy_source_sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: CopySourceSSECustomerKeyMD5, name: "CopySourceSSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-copy-source-server-side-encryption-customer-key-MD5"}))
    UploadPartCopyRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    UploadPartCopyRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    UploadPartCopyRequest.add_member(:expected_source_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedSourceBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-source-expected-bucket-owner"}))
    UploadPartCopyRequest.type = Types::UploadPartCopyRequest
    UploadPartOutput.add_member(:server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryption, name: "ServerSideEncryption", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption"}))
    UploadPartOutput.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ETag", traits: {"smithy.api#httpHeader" => "ETag"}))
    UploadPartOutput.add_member(:checksum_crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32, name: "ChecksumCRC32", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc32"}))
    UploadPartOutput.add_member(:checksum_crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32C, name: "ChecksumCRC32C", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc32c"}))
    UploadPartOutput.add_member(:checksum_crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC64NVME, name: "ChecksumCRC64NVME", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc64nvme"}))
    UploadPartOutput.add_member(:checksum_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA1, name: "ChecksumSHA1", traits: {"smithy.api#httpHeader" => "x-amz-checksum-sha1"}))
    UploadPartOutput.add_member(:checksum_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA256, name: "ChecksumSHA256", traits: {"smithy.api#httpHeader" => "x-amz-checksum-sha256"}))
    UploadPartOutput.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    UploadPartOutput.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    UploadPartOutput.add_member(:ssekms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "SSEKMSKeyId", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-aws-kms-key-id"}))
    UploadPartOutput.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketKeyEnabled, name: "BucketKeyEnabled", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-bucket-key-enabled"}))
    UploadPartOutput.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-request-charged"}))
    UploadPartOutput.type = Types::UploadPartOutput
    UploadPartRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingBlob, name: "Body", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    UploadPartRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    UploadPartRequest.add_member(:content_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentLength, name: "ContentLength", traits: {"smithy.api#httpHeader" => "Content-Length"}))
    UploadPartRequest.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentMD5, name: "ContentMD5", traits: {"smithy.api#httpHeader" => "Content-MD5"}))
    UploadPartRequest.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumAlgorithm, name: "ChecksumAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-sdk-checksum-algorithm"}))
    UploadPartRequest.add_member(:checksum_crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32, name: "ChecksumCRC32", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc32"}))
    UploadPartRequest.add_member(:checksum_crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32C, name: "ChecksumCRC32C", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc32c"}))
    UploadPartRequest.add_member(:checksum_crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC64NVME, name: "ChecksumCRC64NVME", traits: {"smithy.api#httpHeader" => "x-amz-checksum-crc64nvme"}))
    UploadPartRequest.add_member(:checksum_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA1, name: "ChecksumSHA1", traits: {"smithy.api#httpHeader" => "x-amz-checksum-sha1"}))
    UploadPartRequest.add_member(:checksum_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA256, name: "ChecksumSHA256", traits: {"smithy.api#httpHeader" => "x-amz-checksum-sha256"}))
    UploadPartRequest.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectKey, name: "Key", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Key"}}))
    UploadPartRequest.add_member(:part_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PartNumber, name: "PartNumber", traits: {"smithy.api#httpQuery" => "partNumber", "smithy.api#required" => {}}))
    UploadPartRequest.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MultipartUploadId, name: "UploadId", traits: {"smithy.api#httpQuery" => "uploadId", "smithy.api#required" => {}}))
    UploadPartRequest.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-algorithm"}))
    UploadPartRequest.add_member(:sse_customer_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKey, name: "SSECustomerKey", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key"}))
    UploadPartRequest.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-server-side-encryption-customer-key-MD5"}))
    UploadPartRequest.add_member(:request_payer, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestPayer, name: "RequestPayer", traits: {"smithy.api#httpHeader" => "x-amz-request-payer"}))
    UploadPartRequest.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner", traits: {"smithy.api#httpHeader" => "x-amz-expected-bucket-owner"}))
    UploadPartRequest[:http_payload] = :body
    UploadPartRequest[:http_payload_member] = UploadPartRequest.member(:body)
    UploadPartRequest.type = Types::UploadPartRequest
    UserMetadata.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataEntry, name: "member", traits: {"smithy.api#xmlName" => "MetadataEntry"})
    VersioningConfiguration.add_member(:mfa_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: MFADelete, name: "MFADelete", traits: {"smithy.api#xmlName" => "MfaDelete"}))
    VersioningConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketVersioningStatus, name: "Status"))
    VersioningConfiguration.type = Types::VersioningConfiguration
    WebsiteConfiguration.add_member(:error_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDocument, name: "ErrorDocument"))
    WebsiteConfiguration.add_member(:index_document, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexDocument, name: "IndexDocument"))
    WebsiteConfiguration.add_member(:redirect_all_requests_to, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectAllRequestsTo, name: "RedirectAllRequestsTo"))
    WebsiteConfiguration.add_member(:routing_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingRules, name: "RoutingRules"))
    WebsiteConfiguration.type = Types::WebsiteConfiguration
    WriteGetObjectResponseRequest.add_member(:request_route, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestRoute, name: "RequestRoute", traits: {"smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "x-amz-request-route", "smithy.api#required" => {}}))
    WriteGetObjectResponseRequest.add_member(:request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestToken, name: "RequestToken", traits: {"smithy.api#httpHeader" => "x-amz-request-token", "smithy.api#required" => {}}))
    WriteGetObjectResponseRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingBlob, name: "Body", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    WriteGetObjectResponseRequest.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: GetObjectResponseStatusCode, name: "StatusCode", traits: {"smithy.api#httpHeader" => "x-amz-fwd-status"}))
    WriteGetObjectResponseRequest.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode", traits: {"smithy.api#httpHeader" => "x-amz-fwd-error-code"}))
    WriteGetObjectResponseRequest.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage", traits: {"smithy.api#httpHeader" => "x-amz-fwd-error-message"}))
    WriteGetObjectResponseRequest.add_member(:accept_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptRanges, name: "AcceptRanges", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-accept-ranges"}))
    WriteGetObjectResponseRequest.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheControl, name: "CacheControl", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-Cache-Control"}))
    WriteGetObjectResponseRequest.add_member(:content_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentDisposition, name: "ContentDisposition", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-Content-Disposition"}))
    WriteGetObjectResponseRequest.add_member(:content_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentEncoding, name: "ContentEncoding", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-Content-Encoding"}))
    WriteGetObjectResponseRequest.add_member(:content_language, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentLanguage, name: "ContentLanguage", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-Content-Language"}))
    WriteGetObjectResponseRequest.add_member(:content_length, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentLength, name: "ContentLength", traits: {"smithy.api#httpHeader" => "Content-Length"}))
    WriteGetObjectResponseRequest.add_member(:content_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentRange, name: "ContentRange", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-Content-Range"}))
    WriteGetObjectResponseRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentType", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-Content-Type"}))
    WriteGetObjectResponseRequest.add_member(:checksum_crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32, name: "ChecksumCRC32", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-checksum-crc32"}))
    WriteGetObjectResponseRequest.add_member(:checksum_crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC32C, name: "ChecksumCRC32C", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-checksum-crc32c"}))
    WriteGetObjectResponseRequest.add_member(:checksum_crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumCRC64NVME, name: "ChecksumCRC64NVME", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-checksum-crc64nvme"}))
    WriteGetObjectResponseRequest.add_member(:checksum_sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA1, name: "ChecksumSHA1", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-checksum-sha1"}))
    WriteGetObjectResponseRequest.add_member(:checksum_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ChecksumSHA256, name: "ChecksumSHA256", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-checksum-sha256"}))
    WriteGetObjectResponseRequest.add_member(:delete_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteMarker, name: "DeleteMarker", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-delete-marker"}))
    WriteGetObjectResponseRequest.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ETag, name: "ETag", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-ETag"}))
    WriteGetObjectResponseRequest.add_member(:expires, ::Smithy::Schema::Shapes::MemberShape.new(target: Expires, name: "Expires", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-Expires"}))
    WriteGetObjectResponseRequest.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: Expiration, name: "Expiration", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-expiration"}))
    WriteGetObjectResponseRequest.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModified, name: "LastModified", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-Last-Modified"}))
    WriteGetObjectResponseRequest.add_member(:missing_meta, ::Smithy::Schema::Shapes::MemberShape.new(target: MissingMeta, name: "MissingMeta", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-missing-meta"}))
    WriteGetObjectResponseRequest.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata", traits: {"smithy.api#httpPrefixHeaders" => "x-amz-meta-"}))
    WriteGetObjectResponseRequest.add_member(:object_lock_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockMode, name: "ObjectLockMode", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-object-lock-mode"}))
    WriteGetObjectResponseRequest.add_member(:object_lock_legal_hold_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockLegalHoldStatus, name: "ObjectLockLegalHoldStatus", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-object-lock-legal-hold"}))
    WriteGetObjectResponseRequest.add_member(:object_lock_retain_until_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockRetainUntilDate, name: "ObjectLockRetainUntilDate", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-object-lock-retain-until-date"}))
    WriteGetObjectResponseRequest.add_member(:parts_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PartsCount, name: "PartsCount", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-mp-parts-count"}))
    WriteGetObjectResponseRequest.add_member(:replication_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatus, name: "ReplicationStatus", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-replication-status"}))
    WriteGetObjectResponseRequest.add_member(:request_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestCharged, name: "RequestCharged", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-request-charged"}))
    WriteGetObjectResponseRequest.add_member(:restore, ::Smithy::Schema::Shapes::MemberShape.new(target: Restore, name: "Restore", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-restore"}))
    WriteGetObjectResponseRequest.add_member(:server_side_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryption, name: "ServerSideEncryption", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-server-side-encryption"}))
    WriteGetObjectResponseRequest.add_member(:sse_customer_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerAlgorithm, name: "SSECustomerAlgorithm", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-server-side-encryption-customer-algorithm"}))
    WriteGetObjectResponseRequest.add_member(:ssekms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "SSEKMSKeyId", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-server-side-encryption-aws-kms-key-id"}))
    WriteGetObjectResponseRequest.add_member(:sse_customer_key_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECustomerKeyMD5, name: "SSECustomerKeyMD5", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-server-side-encryption-customer-key-MD5"}))
    WriteGetObjectResponseRequest.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "StorageClass", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-storage-class"}))
    WriteGetObjectResponseRequest.add_member(:tag_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TagCount, name: "TagCount", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-tagging-count"}))
    WriteGetObjectResponseRequest.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectVersionId, name: "VersionId", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-version-id"}))
    WriteGetObjectResponseRequest.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketKeyEnabled, name: "BucketKeyEnabled", traits: {"smithy.api#httpHeader" => "x-amz-fwd-header-x-amz-server-side-encryption-bucket-key-enabled"}))
    WriteGetObjectResponseRequest[:http_payload] = :body
    WriteGetObjectResponseRequest[:http_payload_member] = WriteGetObjectResponseRequest.member(:body)
    WriteGetObjectResponseRequest.type = Types::WriteGetObjectResponseRequest

    AmazonS3 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.s3#AmazonS3"
      service.name = "AmazonS3"
      service.version = "2006-03-01"
      service.traits = {"aws.api#service" => {"sdkId" => "S3", "arnNamespace" => "s3", "cloudFormationName" => "S3", "cloudTrailEventSource" => "s3.amazonaws.com", "endpointPrefix" => "s3"}, "aws.auth#sigv4" => {"name" => "s3"}, "aws.protocols#restXml" => {"noErrorWrapping" => true}, "smithy.api#suppress" => ["RuleSetAuthSchemes"], "smithy.api#title" => "Amazon Simple Storage Service", "smithy.api#xmlNamespace" => {"uri" => "http://s3.amazonaws.com/doc/2006-03-01/"}, "smithy.rules#clientContextParams" => {"ForcePathStyle" => {"documentation" => "Forces this client to use path-style addressing for buckets.", "type" => "boolean"}, "UseArnRegion" => {"documentation" => "Enables this client to use an ARN's region when constructing an endpoint instead of the client's configured region.", "type" => "boolean"}, "DisableMultiRegionAccessPoints" => {"documentation" => "Disables this client's usage of Multi-Region Access Points.", "type" => "boolean"}, "Accelerate" => {"documentation" => "Enables this client to use S3 Transfer Acceleration endpoints.", "type" => "boolean"}, "DisableS3ExpressSessionAuth" => {"documentation" => "Disables this client's usage of Session Auth for S3Express       buckets and reverts to using conventional SigV4 for those.", "type" => "boolean"}}}
      service.add_operation(:abort_multipart_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#AbortMultipartUpload"
        operation.name = "AbortMultipartUpload"
        operation.input = AbortMultipartUploadRequest
        operation.output = AbortMultipartUploadOutput
        operation.errors << NoSuchUpload
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}/{Key+}?x-id=AbortMultipartUpload", "code" => 204}}
      end)
      service.add_operation(:complete_multipart_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#CompleteMultipartUpload"
        operation.name = "CompleteMultipartUpload"
        operation.input = CompleteMultipartUploadRequest
        operation.output = CompleteMultipartUploadOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{Bucket}/{Key+}", "code" => 200}}
      end)
      service.add_operation(:copy_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#CopyObject"
        operation.name = "CopyObject"
        operation.input = CopyObjectRequest
        operation.output = CopyObjectOutput
        operation.errors << ObjectNotInActiveTierError
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}/{Key+}?x-id=CopyObject", "code" => 200}, "smithy.rules#staticContextParams" => {"DisableS3ExpressSessionAuth" => {"value" => true}}}
      end)
      service.add_operation(:create_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#CreateBucket"
        operation.name = "CreateBucket"
        operation.input = CreateBucketRequest
        operation.output = CreateBucketOutput
        operation.errors << BucketAlreadyExists
        operation.errors << BucketAlreadyOwnedByYou
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}, "DisableAccessPoints" => {"value" => true}}}
      end)
      service.add_operation(:create_bucket_metadata_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#CreateBucketMetadataConfiguration"
        operation.name = "CreateBucketMetadataConfiguration"
        operation.input = CreateBucketMetadataConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "POST", "uri" => "/{Bucket}?metadataConfiguration", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:create_bucket_metadata_table_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#CreateBucketMetadataTableConfiguration"
        operation.name = "CreateBucketMetadataTableConfiguration"
        operation.input = CreateBucketMetadataTableConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "POST", "uri" => "/{Bucket}?metadataTable", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:create_multipart_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#CreateMultipartUpload"
        operation.name = "CreateMultipartUpload"
        operation.input = CreateMultipartUploadRequest
        operation.output = CreateMultipartUploadOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{Bucket}/{Key+}?uploads", "code" => 200}}
      end)
      service.add_operation(:create_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#CreateSession"
        operation.name = "CreateSession"
        operation.input = CreateSessionRequest
        operation.output = CreateSessionOutput
        operation.errors << NoSuchBucket
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?session", "code" => 200}, "smithy.rules#staticContextParams" => {"DisableS3ExpressSessionAuth" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteBucket"
        operation.name = "DeleteBucket"
        operation.input = DeleteBucketRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}", "code" => 204}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_analytics_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteBucketAnalyticsConfiguration"
        operation.name = "DeleteBucketAnalyticsConfiguration"
        operation.input = DeleteBucketAnalyticsConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}?analytics", "code" => 204}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_cors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteBucketCors"
        operation.name = "DeleteBucketCors"
        operation.input = DeleteBucketCorsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}?cors", "code" => 204}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_encryption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteBucketEncryption"
        operation.name = "DeleteBucketEncryption"
        operation.input = DeleteBucketEncryptionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}?encryption", "code" => 204}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_intelligent_tiering_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteBucketIntelligentTieringConfiguration"
        operation.name = "DeleteBucketIntelligentTieringConfiguration"
        operation.input = DeleteBucketIntelligentTieringConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}?intelligent-tiering", "code" => 204}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_inventory_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteBucketInventoryConfiguration"
        operation.name = "DeleteBucketInventoryConfiguration"
        operation.input = DeleteBucketInventoryConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}?inventory", "code" => 204}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_lifecycle, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteBucketLifecycle"
        operation.name = "DeleteBucketLifecycle"
        operation.input = DeleteBucketLifecycleRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}?lifecycle", "code" => 204}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_metadata_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteBucketMetadataConfiguration"
        operation.name = "DeleteBucketMetadataConfiguration"
        operation.input = DeleteBucketMetadataConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}?metadataConfiguration", "code" => 204}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_metadata_table_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteBucketMetadataTableConfiguration"
        operation.name = "DeleteBucketMetadataTableConfiguration"
        operation.input = DeleteBucketMetadataTableConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}?metadataTable", "code" => 204}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_metrics_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteBucketMetricsConfiguration"
        operation.name = "DeleteBucketMetricsConfiguration"
        operation.input = DeleteBucketMetricsConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}?metrics", "code" => 204}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_ownership_controls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteBucketOwnershipControls"
        operation.name = "DeleteBucketOwnershipControls"
        operation.input = DeleteBucketOwnershipControlsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}?ownershipControls", "code" => 204}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteBucketPolicy"
        operation.name = "DeleteBucketPolicy"
        operation.input = DeleteBucketPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}?policy", "code" => 204}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteBucketReplication"
        operation.name = "DeleteBucketReplication"
        operation.input = DeleteBucketReplicationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}?replication", "code" => 204}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteBucketTagging"
        operation.name = "DeleteBucketTagging"
        operation.input = DeleteBucketTaggingRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}?tagging", "code" => 204}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_website, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteBucketWebsite"
        operation.name = "DeleteBucketWebsite"
        operation.input = DeleteBucketWebsiteRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}?website", "code" => 204}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteObject"
        operation.name = "DeleteObject"
        operation.input = DeleteObjectRequest
        operation.output = DeleteObjectOutput
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}/{Key+}?x-id=DeleteObject", "code" => 204}}
      end)
      service.add_operation(:delete_object_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteObjectTagging"
        operation.name = "DeleteObjectTagging"
        operation.input = DeleteObjectTaggingRequest
        operation.output = DeleteObjectTaggingOutput
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}/{Key+}?tagging", "code" => 204}}
      end)
      service.add_operation(:delete_objects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeleteObjects"
        operation.name = "DeleteObjects"
        operation.input = DeleteObjectsRequest
        operation.output = DeleteObjectsOutput
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "POST", "uri" => "/{Bucket}?delete", "code" => 200}}
      end)
      service.add_operation(:delete_public_access_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#DeletePublicAccessBlock"
        operation.name = "DeletePublicAccessBlock"
        operation.input = DeletePublicAccessBlockRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{Bucket}?publicAccessBlock", "code" => 204}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_accelerate_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketAccelerateConfiguration"
        operation.name = "GetBucketAccelerateConfiguration"
        operation.input = GetBucketAccelerateConfigurationRequest
        operation.output = GetBucketAccelerateConfigurationOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?accelerate", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketAcl"
        operation.name = "GetBucketAcl"
        operation.input = GetBucketAclRequest
        operation.output = GetBucketAclOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?acl", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_analytics_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketAnalyticsConfiguration"
        operation.name = "GetBucketAnalyticsConfiguration"
        operation.input = GetBucketAnalyticsConfigurationRequest
        operation.output = GetBucketAnalyticsConfigurationOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?analytics&x-id=GetBucketAnalyticsConfiguration", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_cors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketCors"
        operation.name = "GetBucketCors"
        operation.input = GetBucketCorsRequest
        operation.output = GetBucketCorsOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?cors", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_encryption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketEncryption"
        operation.name = "GetBucketEncryption"
        operation.input = GetBucketEncryptionRequest
        operation.output = GetBucketEncryptionOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?encryption", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_intelligent_tiering_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketIntelligentTieringConfiguration"
        operation.name = "GetBucketIntelligentTieringConfiguration"
        operation.input = GetBucketIntelligentTieringConfigurationRequest
        operation.output = GetBucketIntelligentTieringConfigurationOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?intelligent-tiering&x-id=GetBucketIntelligentTieringConfiguration", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_inventory_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketInventoryConfiguration"
        operation.name = "GetBucketInventoryConfiguration"
        operation.input = GetBucketInventoryConfigurationRequest
        operation.output = GetBucketInventoryConfigurationOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?inventory&x-id=GetBucketInventoryConfiguration", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_lifecycle_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketLifecycleConfiguration"
        operation.name = "GetBucketLifecycleConfiguration"
        operation.input = GetBucketLifecycleConfigurationRequest
        operation.output = GetBucketLifecycleConfigurationOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?lifecycle", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketLocation"
        operation.name = "GetBucketLocation"
        operation.input = GetBucketLocationRequest
        operation.output = GetBucketLocationOutput
        operation.traits = {"aws.customizations#s3UnwrappedXmlOutput" => {}, "smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?location", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_logging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketLogging"
        operation.name = "GetBucketLogging"
        operation.input = GetBucketLoggingRequest
        operation.output = GetBucketLoggingOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?logging", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_metadata_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketMetadataConfiguration"
        operation.name = "GetBucketMetadataConfiguration"
        operation.input = GetBucketMetadataConfigurationRequest
        operation.output = GetBucketMetadataConfigurationOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?metadataConfiguration", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_metadata_table_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketMetadataTableConfiguration"
        operation.name = "GetBucketMetadataTableConfiguration"
        operation.input = GetBucketMetadataTableConfigurationRequest
        operation.output = GetBucketMetadataTableConfigurationOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?metadataTable", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_metrics_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketMetricsConfiguration"
        operation.name = "GetBucketMetricsConfiguration"
        operation.input = GetBucketMetricsConfigurationRequest
        operation.output = GetBucketMetricsConfigurationOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?metrics&x-id=GetBucketMetricsConfiguration", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_notification_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketNotificationConfiguration"
        operation.name = "GetBucketNotificationConfiguration"
        operation.input = GetBucketNotificationConfigurationRequest
        operation.output = GetBucketNotificationConfigurationOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?notification", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_ownership_controls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketOwnershipControls"
        operation.name = "GetBucketOwnershipControls"
        operation.input = GetBucketOwnershipControlsRequest
        operation.output = GetBucketOwnershipControlsOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?ownershipControls", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketPolicy"
        operation.name = "GetBucketPolicy"
        operation.input = GetBucketPolicyRequest
        operation.output = GetBucketPolicyOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?policy", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_policy_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketPolicyStatus"
        operation.name = "GetBucketPolicyStatus"
        operation.input = GetBucketPolicyStatusRequest
        operation.output = GetBucketPolicyStatusOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?policyStatus", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketReplication"
        operation.name = "GetBucketReplication"
        operation.input = GetBucketReplicationRequest
        operation.output = GetBucketReplicationOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?replication", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_request_payment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketRequestPayment"
        operation.name = "GetBucketRequestPayment"
        operation.input = GetBucketRequestPaymentRequest
        operation.output = GetBucketRequestPaymentOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?requestPayment", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketTagging"
        operation.name = "GetBucketTagging"
        operation.input = GetBucketTaggingRequest
        operation.output = GetBucketTaggingOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?tagging", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_versioning, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketVersioning"
        operation.name = "GetBucketVersioning"
        operation.input = GetBucketVersioningRequest
        operation.output = GetBucketVersioningOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?versioning", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_website, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetBucketWebsite"
        operation.name = "GetBucketWebsite"
        operation.input = GetBucketWebsiteRequest
        operation.output = GetBucketWebsiteOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?website", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetObject"
        operation.name = "GetObject"
        operation.input = GetObjectRequest
        operation.output = GetObjectOutput
        operation.errors << InvalidObjectState
        operation.errors << NoSuchKey
        operation.traits = {"aws.protocols#httpChecksum" => {"requestValidationModeMember" => "ChecksumMode", "responseAlgorithms" => ["CRC64NVME", "CRC32", "CRC32C", "SHA256", "SHA1"]}, "smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}/{Key+}?x-id=GetObject", "code" => 200}}
      end)
      service.add_operation(:get_object_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetObjectAcl"
        operation.name = "GetObjectAcl"
        operation.input = GetObjectAclRequest
        operation.output = GetObjectAclOutput
        operation.errors << NoSuchKey
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}/{Key+}?acl", "code" => 200}}
      end)
      service.add_operation(:get_object_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetObjectAttributes"
        operation.name = "GetObjectAttributes"
        operation.input = GetObjectAttributesRequest
        operation.output = GetObjectAttributesOutput
        operation.errors << NoSuchKey
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}/{Key+}?attributes", "code" => 200}}
      end)
      service.add_operation(:get_object_legal_hold, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetObjectLegalHold"
        operation.name = "GetObjectLegalHold"
        operation.input = GetObjectLegalHoldRequest
        operation.output = GetObjectLegalHoldOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}/{Key+}?legal-hold", "code" => 200}}
      end)
      service.add_operation(:get_object_lock_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetObjectLockConfiguration"
        operation.name = "GetObjectLockConfiguration"
        operation.input = GetObjectLockConfigurationRequest
        operation.output = GetObjectLockConfigurationOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?object-lock", "code" => 200}}
      end)
      service.add_operation(:get_object_retention, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetObjectRetention"
        operation.name = "GetObjectRetention"
        operation.input = GetObjectRetentionRequest
        operation.output = GetObjectRetentionOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}/{Key+}?retention", "code" => 200}}
      end)
      service.add_operation(:get_object_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetObjectTagging"
        operation.name = "GetObjectTagging"
        operation.input = GetObjectTaggingRequest
        operation.output = GetObjectTaggingOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}/{Key+}?tagging", "code" => 200}}
      end)
      service.add_operation(:get_object_torrent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetObjectTorrent"
        operation.name = "GetObjectTorrent"
        operation.input = GetObjectTorrentRequest
        operation.output = GetObjectTorrentOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}/{Key+}?torrent", "code" => 200}}
      end)
      service.add_operation(:get_public_access_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#GetPublicAccessBlock"
        operation.name = "GetPublicAccessBlock"
        operation.input = GetPublicAccessBlockRequest
        operation.output = GetPublicAccessBlockOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?publicAccessBlock", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:head_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#HeadBucket"
        operation.name = "HeadBucket"
        operation.input = HeadBucketRequest
        operation.output = HeadBucketOutput
        operation.errors << NotFound
        operation.traits = {"smithy.api#http" => {"method" => "HEAD", "uri" => "/{Bucket}", "code" => 200}}
      end)
      service.add_operation(:head_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#HeadObject"
        operation.name = "HeadObject"
        operation.input = HeadObjectRequest
        operation.output = HeadObjectOutput
        operation.errors << NotFound
        operation.traits = {"smithy.api#http" => {"method" => "HEAD", "uri" => "/{Bucket}/{Key+}", "code" => 200}}
      end)
      service.add_operation(:list_bucket_analytics_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#ListBucketAnalyticsConfigurations"
        operation.name = "ListBucketAnalyticsConfigurations"
        operation.input = ListBucketAnalyticsConfigurationsRequest
        operation.output = ListBucketAnalyticsConfigurationsOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?analytics&x-id=ListBucketAnalyticsConfigurations", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:list_bucket_intelligent_tiering_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#ListBucketIntelligentTieringConfigurations"
        operation.name = "ListBucketIntelligentTieringConfigurations"
        operation.input = ListBucketIntelligentTieringConfigurationsRequest
        operation.output = ListBucketIntelligentTieringConfigurationsOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?intelligent-tiering&x-id=ListBucketIntelligentTieringConfigurations", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:list_bucket_inventory_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#ListBucketInventoryConfigurations"
        operation.name = "ListBucketInventoryConfigurations"
        operation.input = ListBucketInventoryConfigurationsRequest
        operation.output = ListBucketInventoryConfigurationsOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?inventory&x-id=ListBucketInventoryConfigurations", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:list_bucket_metrics_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#ListBucketMetricsConfigurations"
        operation.name = "ListBucketMetricsConfigurations"
        operation.input = ListBucketMetricsConfigurationsRequest
        operation.output = ListBucketMetricsConfigurationsOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?metrics&x-id=ListBucketMetricsConfigurations", "code" => 200}}
      end)
      service.add_operation(:list_buckets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#ListBuckets"
        operation.name = "ListBuckets"
        operation.input = ListBucketsRequest
        operation.output = ListBucketsOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/?x-id=ListBuckets", "code" => 200}}
        operation[:paginator] = Paginators::ListBuckets.new
      end)
      service.add_operation(:list_directory_buckets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#ListDirectoryBuckets"
        operation.name = "ListDirectoryBuckets"
        operation.input = ListDirectoryBucketsRequest
        operation.output = ListDirectoryBucketsOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/?x-id=ListDirectoryBuckets", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
        operation[:paginator] = Paginators::ListDirectoryBuckets.new
      end)
      service.add_operation(:list_multipart_uploads, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#ListMultipartUploads"
        operation.name = "ListMultipartUploads"
        operation.input = ListMultipartUploadsRequest
        operation.output = ListMultipartUploadsOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?uploads", "code" => 200}}
      end)
      service.add_operation(:list_object_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#ListObjectVersions"
        operation.name = "ListObjectVersions"
        operation.input = ListObjectVersionsRequest
        operation.output = ListObjectVersionsOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?versions", "code" => 200}}
      end)
      service.add_operation(:list_objects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#ListObjects"
        operation.name = "ListObjects"
        operation.input = ListObjectsRequest
        operation.output = ListObjectsOutput
        operation.errors << NoSuchBucket
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}", "code" => 200}}
      end)
      service.add_operation(:list_objects_v2, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#ListObjectsV2"
        operation.name = "ListObjectsV2"
        operation.input = ListObjectsV2Request
        operation.output = ListObjectsV2Output
        operation.errors << NoSuchBucket
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}?list-type=2", "code" => 200}}
        operation[:paginator] = Paginators::ListObjectsV2.new
      end)
      service.add_operation(:list_parts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#ListParts"
        operation.name = "ListParts"
        operation.input = ListPartsRequest
        operation.output = ListPartsOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{Bucket}/{Key+}?x-id=ListParts", "code" => 200}}
        operation[:paginator] = Paginators::ListParts.new
      end)
      service.add_operation(:put_bucket_accelerate_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketAccelerateConfiguration"
        operation.name = "PutBucketAccelerateConfiguration"
        operation.input = PutBucketAccelerateConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?accelerate", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketAcl"
        operation.name = "PutBucketAcl"
        operation.input = PutBucketAclRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?acl", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_analytics_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketAnalyticsConfiguration"
        operation.name = "PutBucketAnalyticsConfiguration"
        operation.input = PutBucketAnalyticsConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?analytics", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_cors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketCors"
        operation.name = "PutBucketCors"
        operation.input = PutBucketCorsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?cors", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_encryption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketEncryption"
        operation.name = "PutBucketEncryption"
        operation.input = PutBucketEncryptionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?encryption", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_intelligent_tiering_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketIntelligentTieringConfiguration"
        operation.name = "PutBucketIntelligentTieringConfiguration"
        operation.input = PutBucketIntelligentTieringConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?intelligent-tiering", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_inventory_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketInventoryConfiguration"
        operation.name = "PutBucketInventoryConfiguration"
        operation.input = PutBucketInventoryConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?inventory", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_lifecycle_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketLifecycleConfiguration"
        operation.name = "PutBucketLifecycleConfiguration"
        operation.input = PutBucketLifecycleConfigurationRequest
        operation.output = PutBucketLifecycleConfigurationOutput
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?lifecycle", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_logging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketLogging"
        operation.name = "PutBucketLogging"
        operation.input = PutBucketLoggingRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?logging", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_metrics_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketMetricsConfiguration"
        operation.name = "PutBucketMetricsConfiguration"
        operation.input = PutBucketMetricsConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?metrics", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_notification_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketNotificationConfiguration"
        operation.name = "PutBucketNotificationConfiguration"
        operation.input = PutBucketNotificationConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?notification", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_ownership_controls, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketOwnershipControls"
        operation.name = "PutBucketOwnershipControls"
        operation.input = PutBucketOwnershipControlsRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?ownershipControls", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketPolicy"
        operation.name = "PutBucketPolicy"
        operation.input = PutBucketPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?policy", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketReplication"
        operation.name = "PutBucketReplication"
        operation.input = PutBucketReplicationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?replication", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_request_payment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketRequestPayment"
        operation.name = "PutBucketRequestPayment"
        operation.input = PutBucketRequestPaymentRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?requestPayment", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketTagging"
        operation.name = "PutBucketTagging"
        operation.input = PutBucketTaggingRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?tagging", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_versioning, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketVersioning"
        operation.name = "PutBucketVersioning"
        operation.input = PutBucketVersioningRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?versioning", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_website, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutBucketWebsite"
        operation.name = "PutBucketWebsite"
        operation.input = PutBucketWebsiteRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?website", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutObject"
        operation.name = "PutObject"
        operation.input = PutObjectRequest
        operation.output = PutObjectOutput
        operation.errors << EncryptionTypeMismatch
        operation.errors << InvalidRequest
        operation.errors << InvalidWriteOffset
        operation.errors << TooManyParts
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}/{Key+}?x-id=PutObject", "code" => 200}}
      end)
      service.add_operation(:put_object_acl, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutObjectAcl"
        operation.name = "PutObjectAcl"
        operation.input = PutObjectAclRequest
        operation.output = PutObjectAclOutput
        operation.errors << NoSuchKey
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}/{Key+}?acl", "code" => 200}}
      end)
      service.add_operation(:put_object_legal_hold, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutObjectLegalHold"
        operation.name = "PutObjectLegalHold"
        operation.input = PutObjectLegalHoldRequest
        operation.output = PutObjectLegalHoldOutput
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}/{Key+}?legal-hold", "code" => 200}}
      end)
      service.add_operation(:put_object_lock_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutObjectLockConfiguration"
        operation.name = "PutObjectLockConfiguration"
        operation.input = PutObjectLockConfigurationRequest
        operation.output = PutObjectLockConfigurationOutput
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?object-lock", "code" => 200}}
      end)
      service.add_operation(:put_object_retention, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutObjectRetention"
        operation.name = "PutObjectRetention"
        operation.input = PutObjectRetentionRequest
        operation.output = PutObjectRetentionOutput
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}/{Key+}?retention", "code" => 200}}
      end)
      service.add_operation(:put_object_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutObjectTagging"
        operation.name = "PutObjectTagging"
        operation.input = PutObjectTaggingRequest
        operation.output = PutObjectTaggingOutput
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}/{Key+}?tagging", "code" => 200}}
      end)
      service.add_operation(:put_public_access_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#PutPublicAccessBlock"
        operation.name = "PutPublicAccessBlock"
        operation.input = PutPublicAccessBlockRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?publicAccessBlock", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:rename_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#RenameObject"
        operation.name = "RenameObject"
        operation.input = RenameObjectRequest
        operation.output = RenameObjectOutput
        operation.errors << IdempotencyParameterMismatch
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}/{Key+}?renameObject", "code" => 200}}
      end)
      service.add_operation(:restore_object, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#RestoreObject"
        operation.name = "RestoreObject"
        operation.input = RestoreObjectRequest
        operation.output = RestoreObjectOutput
        operation.errors << ObjectAlreadyInActiveTierError
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm"}, "smithy.api#http" => {"method" => "POST", "uri" => "/{Bucket}/{Key+}?restore", "code" => 200}}
      end)
      service.add_operation(:select_object_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#SelectObjectContent"
        operation.name = "SelectObjectContent"
        operation.input = SelectObjectContentRequest
        operation.output = SelectObjectContentOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{Bucket}/{Key+}?select&select-type=2", "code" => 200}}
      end)
      service.add_operation(:update_bucket_metadata_inventory_table_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#UpdateBucketMetadataInventoryTableConfiguration"
        operation.name = "UpdateBucketMetadataInventoryTableConfiguration"
        operation.input = UpdateBucketMetadataInventoryTableConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?metadataInventoryTable", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:update_bucket_metadata_journal_table_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#UpdateBucketMetadataJournalTableConfiguration"
        operation.name = "UpdateBucketMetadataJournalTableConfiguration"
        operation.input = UpdateBucketMetadataJournalTableConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm", "requestChecksumRequired" => true}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}?metadataJournalTable", "code" => 200}, "smithy.rules#staticContextParams" => {"UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:upload_part, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#UploadPart"
        operation.name = "UploadPart"
        operation.input = UploadPartRequest
        operation.output = UploadPartOutput
        operation.traits = {"aws.protocols#httpChecksum" => {"requestAlgorithmMember" => "ChecksumAlgorithm"}, "smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}/{Key+}?x-id=UploadPart", "code" => 200}}
      end)
      service.add_operation(:upload_part_copy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#UploadPartCopy"
        operation.name = "UploadPartCopy"
        operation.input = UploadPartCopyRequest
        operation.output = UploadPartCopyOutput
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{Bucket}/{Key+}?x-id=UploadPartCopy", "code" => 200}, "smithy.rules#staticContextParams" => {"DisableS3ExpressSessionAuth" => {"value" => true}}}
      end)
      service.add_operation(:write_get_object_response, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3#WriteGetObjectResponse"
        operation.name = "WriteGetObjectResponse"
        operation.input = WriteGetObjectResponseRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.auth#unsignedPayload" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#endpoint" => {"hostPrefix" => "{RequestRoute}."}, "smithy.api#http" => {"method" => "POST", "uri" => "/WriteGetObjectResponse", "code" => 200}, "smithy.rules#staticContextParams" => {"UseObjectLambdaEndpoint" => {"value" => true}}}
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
