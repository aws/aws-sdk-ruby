# frozen_string_literal: true

# This is generated code!

module Aws::S3Control
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AbortIncompleteMultipartUpload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#AbortIncompleteMultipartUpload", name: "AbortIncompleteMultipartUpload")
    AccessControlTranslation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#AccessControlTranslation", name: "AccessControlTranslation")
    AccessGrantArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#AccessGrantArn", name: "AccessGrantArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z\\-]+:s3:[a-z0-9\\-]+:\\d{12}:access\\-grants\\/grant/[a-zA-Z0-9\\-]+$"})
    AccessGrantId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#AccessGrantId", name: "AccessGrantId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    AccessGrantsInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#AccessGrantsInstanceArn", name: "AccessGrantsInstanceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z\\-]+:s3:[a-z0-9\\-]+:\\d{12}:access\\-grants\\/[a-zA-Z0-9\\-]+$"})
    AccessGrantsInstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#AccessGrantsInstanceId", name: "AccessGrantsInstanceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    AccessGrantsInstancesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#AccessGrantsInstancesList", name: "AccessGrantsInstancesList")
    AccessGrantsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#AccessGrantsList", name: "AccessGrantsList")
    AccessGrantsLocationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#AccessGrantsLocationArn", name: "AccessGrantsLocationArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[a-z\\-]+:s3:[a-z0-9\\-]+:\\d{12}:access\\-grants\\/location/[a-zA-Z0-9\\-]+$"})
    AccessGrantsLocationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#AccessGrantsLocationConfiguration", name: "AccessGrantsLocationConfiguration")
    AccessGrantsLocationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#AccessGrantsLocationId", name: "AccessGrantsLocationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    AccessGrantsLocationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#AccessGrantsLocationsList", name: "AccessGrantsLocationsList")
    AccessKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#AccessKeyId", name: "AccessKeyId", traits: {"smithy.api#sensitive" => {}})
    AccessPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#AccessPoint", name: "AccessPoint")
    AccessPointBucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#AccessPointBucketName", name: "AccessPointBucketName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    AccessPointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#AccessPointList", name: "AccessPointList")
    AccessPointName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#AccessPointName", name: "AccessPointName", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^\\d{12}$"})
    AccountLevel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#AccountLevel", name: "AccountLevel")
    ActivityMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ActivityMetrics", name: "ActivityMetrics")
    AdvancedCostOptimizationMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#AdvancedCostOptimizationMetrics", name: "AdvancedCostOptimizationMetrics")
    AdvancedDataProtectionMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#AdvancedDataProtectionMetrics", name: "AdvancedDataProtectionMetrics")
    Alias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#Alias", name: "Alias", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[0-9a-z\\\\-]{63}$"})
    AssociateAccessGrantsIdentityCenterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#AssociateAccessGrantsIdentityCenterRequest", name: "AssociateAccessGrantsIdentityCenterRequest")
    AsyncCreationTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3control#AsyncCreationTimestamp", name: "AsyncCreationTimestamp")
    AsyncErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#AsyncErrorDetails", name: "AsyncErrorDetails")
    AsyncOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#AsyncOperation", name: "AsyncOperation")
    AsyncOperationName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#AsyncOperationName", name: "AsyncOperationName")
    AsyncRequestParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#AsyncRequestParameters", name: "AsyncRequestParameters")
    AsyncRequestStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#AsyncRequestStatus", name: "AsyncRequestStatus")
    AsyncRequestTokenARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#AsyncRequestTokenARN", name: "AsyncRequestTokenARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:.+$"})
    AsyncResponseDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#AsyncResponseDetails", name: "AsyncResponseDetails")
    AwsLambdaTransformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#AwsLambdaTransformation", name: "AwsLambdaTransformation")
    AwsLambdaTransformationPayload = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#AwsLambdaTransformationPayload", name: "AwsLambdaTransformationPayload")
    AwsOrgArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#AwsOrgArn", name: "AwsOrgArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:[a-z\\-]+:organizations::\\d{12}:organization\\/o-[a-z0-9]{10,32}$"})
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client"})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3control#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BucketAlreadyExists = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#BucketAlreadyExists", name: "BucketAlreadyExists", traits: {"smithy.api#error" => "client"})
    BucketAlreadyOwnedByYou = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#BucketAlreadyOwnedByYou", name: "BucketAlreadyOwnedByYou", traits: {"smithy.api#error" => "client"})
    BucketCannedACL = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#BucketCannedACL", name: "BucketCannedACL")
    BucketIdentifierString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#BucketIdentifierString", name: "BucketIdentifierString")
    BucketLevel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#BucketLevel", name: "BucketLevel")
    BucketLocationConstraint = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#BucketLocationConstraint", name: "BucketLocationConstraint")
    BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#BucketName", name: "BucketName", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}})
    BucketVersioningStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#BucketVersioningStatus", name: "BucketVersioningStatus")
    Buckets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#Buckets", name: "Buckets")
    CallerAccessGrantsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#CallerAccessGrantsList", name: "CallerAccessGrantsList")
    CloudWatchMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CloudWatchMetrics", name: "CloudWatchMetrics")
    ComputeObjectChecksumAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#ComputeObjectChecksumAlgorithm", name: "ComputeObjectChecksumAlgorithm")
    ComputeObjectChecksumType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#ComputeObjectChecksumType", name: "ComputeObjectChecksumType")
    ConfigId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#ConfigId", name: "ConfigId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_\\.]+$"})
    ConfirmRemoveSelfBucketAccess = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3control#ConfirmRemoveSelfBucketAccess", name: "ConfirmRemoveSelfBucketAccess", traits: {"smithy.api#default" => false})
    ConfirmationRequired = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3control#ConfirmationRequired", name: "ConfirmationRequired", traits: {"smithy.api#default" => false})
    ContinuationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#ContinuationToken", name: "ContinuationToken")
    CreateAccessGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateAccessGrantRequest", name: "CreateAccessGrantRequest")
    CreateAccessGrantResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateAccessGrantResult", name: "CreateAccessGrantResult")
    CreateAccessGrantsInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateAccessGrantsInstanceRequest", name: "CreateAccessGrantsInstanceRequest")
    CreateAccessGrantsInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateAccessGrantsInstanceResult", name: "CreateAccessGrantsInstanceResult")
    CreateAccessGrantsLocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateAccessGrantsLocationRequest", name: "CreateAccessGrantsLocationRequest")
    CreateAccessGrantsLocationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateAccessGrantsLocationResult", name: "CreateAccessGrantsLocationResult")
    CreateAccessPointForObjectLambdaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateAccessPointForObjectLambdaRequest", name: "CreateAccessPointForObjectLambdaRequest")
    CreateAccessPointForObjectLambdaResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateAccessPointForObjectLambdaResult", name: "CreateAccessPointForObjectLambdaResult")
    CreateAccessPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateAccessPointRequest", name: "CreateAccessPointRequest")
    CreateAccessPointResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateAccessPointResult", name: "CreateAccessPointResult")
    CreateBucketConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateBucketConfiguration", name: "CreateBucketConfiguration")
    CreateBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateBucketRequest", name: "CreateBucketRequest")
    CreateBucketResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateBucketResult", name: "CreateBucketResult")
    CreateJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateJobRequest", name: "CreateJobRequest")
    CreateJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateJobResult", name: "CreateJobResult")
    CreateMultiRegionAccessPointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateMultiRegionAccessPointInput", name: "CreateMultiRegionAccessPointInput")
    CreateMultiRegionAccessPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateMultiRegionAccessPointRequest", name: "CreateMultiRegionAccessPointRequest")
    CreateMultiRegionAccessPointResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateMultiRegionAccessPointResult", name: "CreateMultiRegionAccessPointResult")
    CreateStorageLensGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#CreateStorageLensGroupRequest", name: "CreateStorageLensGroupRequest")
    CreationDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3control#CreationDate", name: "CreationDate")
    CreationTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3control#CreationTimestamp", name: "CreationTimestamp")
    Credentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#Credentials", name: "Credentials", traits: {"smithy.api#sensitive" => {}})
    DSSEKMSFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DSSEKMSFilter", name: "DSSEKMSFilter")
    DataSourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#DataSourceId", name: "DataSourceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 191}})
    DataSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#DataSourceType", name: "DataSourceType")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3control#Date", name: "Date")
    Days = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#Days", name: "Days", traits: {"smithy.api#default" => 0})
    DaysAfterInitiation = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#DaysAfterInitiation", name: "DaysAfterInitiation", traits: {"smithy.api#default" => 0})
    DeleteAccessGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteAccessGrantRequest", name: "DeleteAccessGrantRequest")
    DeleteAccessGrantsInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteAccessGrantsInstanceRequest", name: "DeleteAccessGrantsInstanceRequest")
    DeleteAccessGrantsInstanceResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteAccessGrantsInstanceResourcePolicyRequest", name: "DeleteAccessGrantsInstanceResourcePolicyRequest")
    DeleteAccessGrantsLocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteAccessGrantsLocationRequest", name: "DeleteAccessGrantsLocationRequest")
    DeleteAccessPointForObjectLambdaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteAccessPointForObjectLambdaRequest", name: "DeleteAccessPointForObjectLambdaRequest")
    DeleteAccessPointPolicyForObjectLambdaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteAccessPointPolicyForObjectLambdaRequest", name: "DeleteAccessPointPolicyForObjectLambdaRequest")
    DeleteAccessPointPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteAccessPointPolicyRequest", name: "DeleteAccessPointPolicyRequest")
    DeleteAccessPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteAccessPointRequest", name: "DeleteAccessPointRequest")
    DeleteAccessPointScopeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteAccessPointScopeRequest", name: "DeleteAccessPointScopeRequest")
    DeleteBucketLifecycleConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteBucketLifecycleConfigurationRequest", name: "DeleteBucketLifecycleConfigurationRequest")
    DeleteBucketPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteBucketPolicyRequest", name: "DeleteBucketPolicyRequest")
    DeleteBucketReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteBucketReplicationRequest", name: "DeleteBucketReplicationRequest")
    DeleteBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteBucketRequest", name: "DeleteBucketRequest")
    DeleteBucketTaggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteBucketTaggingRequest", name: "DeleteBucketTaggingRequest")
    DeleteJobTaggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteJobTaggingRequest", name: "DeleteJobTaggingRequest")
    DeleteJobTaggingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteJobTaggingResult", name: "DeleteJobTaggingResult")
    DeleteMarkerReplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteMarkerReplication", name: "DeleteMarkerReplication")
    DeleteMarkerReplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#DeleteMarkerReplicationStatus", name: "DeleteMarkerReplicationStatus")
    DeleteMultiRegionAccessPointInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteMultiRegionAccessPointInput", name: "DeleteMultiRegionAccessPointInput")
    DeleteMultiRegionAccessPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteMultiRegionAccessPointRequest", name: "DeleteMultiRegionAccessPointRequest")
    DeleteMultiRegionAccessPointResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteMultiRegionAccessPointResult", name: "DeleteMultiRegionAccessPointResult")
    DeletePublicAccessBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeletePublicAccessBlockRequest", name: "DeletePublicAccessBlockRequest")
    DeleteStorageLensConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteStorageLensConfigurationRequest", name: "DeleteStorageLensConfigurationRequest")
    DeleteStorageLensConfigurationTaggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteStorageLensConfigurationTaggingRequest", name: "DeleteStorageLensConfigurationTaggingRequest")
    DeleteStorageLensConfigurationTaggingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteStorageLensConfigurationTaggingResult", name: "DeleteStorageLensConfigurationTaggingResult")
    DeleteStorageLensGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DeleteStorageLensGroupRequest", name: "DeleteStorageLensGroupRequest")
    DescribeJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DescribeJobRequest", name: "DescribeJobRequest")
    DescribeJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DescribeJobResult", name: "DescribeJobResult")
    DescribeMultiRegionAccessPointOperationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DescribeMultiRegionAccessPointOperationRequest", name: "DescribeMultiRegionAccessPointOperationRequest")
    DescribeMultiRegionAccessPointOperationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DescribeMultiRegionAccessPointOperationResult", name: "DescribeMultiRegionAccessPointOperationResult")
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#Destination", name: "Destination")
    DetailedStatusCodesMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DetailedStatusCodesMetrics", name: "DetailedStatusCodesMetrics")
    DissociateAccessGrantsIdentityCenterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#DissociateAccessGrantsIdentityCenterRequest", name: "DissociateAccessGrantsIdentityCenterRequest")
    DurationSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#DurationSeconds", name: "DurationSeconds", traits: {"smithy.api#range" => {"min" => 900, "max" => 43200}})
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#EncryptionConfiguration", name: "EncryptionConfiguration")
    Endpoints = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.s3control#Endpoints", name: "Endpoints")
    EstablishedMultiRegionAccessPointPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#EstablishedMultiRegionAccessPointPolicy", name: "EstablishedMultiRegionAccessPointPolicy")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#ExceptionMessage", name: "ExceptionMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    Exclude = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#Exclude", name: "Exclude")
    ExistingObjectReplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ExistingObjectReplication", name: "ExistingObjectReplication")
    ExistingObjectReplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#ExistingObjectReplicationStatus", name: "ExistingObjectReplicationStatus")
    Expiration = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3control#Expiration", name: "Expiration")
    ExpirationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#ExpirationStatus", name: "ExpirationStatus")
    ExpiredObjectDeleteMarker = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3control#ExpiredObjectDeleteMarker", name: "ExpiredObjectDeleteMarker", traits: {"smithy.api#default" => false})
    Format = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#Format", name: "Format")
    FunctionArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#FunctionArnString", name: "FunctionArnString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    GeneratedManifestEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GeneratedManifestEncryption", name: "GeneratedManifestEncryption")
    GeneratedManifestFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#GeneratedManifestFormat", name: "GeneratedManifestFormat")
    GetAccessGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessGrantRequest", name: "GetAccessGrantRequest")
    GetAccessGrantResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessGrantResult", name: "GetAccessGrantResult")
    GetAccessGrantsInstanceForPrefixRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessGrantsInstanceForPrefixRequest", name: "GetAccessGrantsInstanceForPrefixRequest")
    GetAccessGrantsInstanceForPrefixResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessGrantsInstanceForPrefixResult", name: "GetAccessGrantsInstanceForPrefixResult")
    GetAccessGrantsInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessGrantsInstanceRequest", name: "GetAccessGrantsInstanceRequest")
    GetAccessGrantsInstanceResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessGrantsInstanceResourcePolicyRequest", name: "GetAccessGrantsInstanceResourcePolicyRequest")
    GetAccessGrantsInstanceResourcePolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessGrantsInstanceResourcePolicyResult", name: "GetAccessGrantsInstanceResourcePolicyResult")
    GetAccessGrantsInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessGrantsInstanceResult", name: "GetAccessGrantsInstanceResult")
    GetAccessGrantsLocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessGrantsLocationRequest", name: "GetAccessGrantsLocationRequest")
    GetAccessGrantsLocationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessGrantsLocationResult", name: "GetAccessGrantsLocationResult")
    GetAccessPointConfigurationForObjectLambdaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessPointConfigurationForObjectLambdaRequest", name: "GetAccessPointConfigurationForObjectLambdaRequest")
    GetAccessPointConfigurationForObjectLambdaResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessPointConfigurationForObjectLambdaResult", name: "GetAccessPointConfigurationForObjectLambdaResult")
    GetAccessPointForObjectLambdaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessPointForObjectLambdaRequest", name: "GetAccessPointForObjectLambdaRequest")
    GetAccessPointForObjectLambdaResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessPointForObjectLambdaResult", name: "GetAccessPointForObjectLambdaResult")
    GetAccessPointPolicyForObjectLambdaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessPointPolicyForObjectLambdaRequest", name: "GetAccessPointPolicyForObjectLambdaRequest")
    GetAccessPointPolicyForObjectLambdaResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessPointPolicyForObjectLambdaResult", name: "GetAccessPointPolicyForObjectLambdaResult")
    GetAccessPointPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessPointPolicyRequest", name: "GetAccessPointPolicyRequest")
    GetAccessPointPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessPointPolicyResult", name: "GetAccessPointPolicyResult")
    GetAccessPointPolicyStatusForObjectLambdaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessPointPolicyStatusForObjectLambdaRequest", name: "GetAccessPointPolicyStatusForObjectLambdaRequest")
    GetAccessPointPolicyStatusForObjectLambdaResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessPointPolicyStatusForObjectLambdaResult", name: "GetAccessPointPolicyStatusForObjectLambdaResult")
    GetAccessPointPolicyStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessPointPolicyStatusRequest", name: "GetAccessPointPolicyStatusRequest")
    GetAccessPointPolicyStatusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessPointPolicyStatusResult", name: "GetAccessPointPolicyStatusResult")
    GetAccessPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessPointRequest", name: "GetAccessPointRequest")
    GetAccessPointResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessPointResult", name: "GetAccessPointResult")
    GetAccessPointScopeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessPointScopeRequest", name: "GetAccessPointScopeRequest")
    GetAccessPointScopeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetAccessPointScopeResult", name: "GetAccessPointScopeResult")
    GetBucketLifecycleConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetBucketLifecycleConfigurationRequest", name: "GetBucketLifecycleConfigurationRequest")
    GetBucketLifecycleConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetBucketLifecycleConfigurationResult", name: "GetBucketLifecycleConfigurationResult")
    GetBucketPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetBucketPolicyRequest", name: "GetBucketPolicyRequest")
    GetBucketPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetBucketPolicyResult", name: "GetBucketPolicyResult")
    GetBucketReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetBucketReplicationRequest", name: "GetBucketReplicationRequest")
    GetBucketReplicationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetBucketReplicationResult", name: "GetBucketReplicationResult")
    GetBucketRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetBucketRequest", name: "GetBucketRequest")
    GetBucketResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetBucketResult", name: "GetBucketResult")
    GetBucketTaggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetBucketTaggingRequest", name: "GetBucketTaggingRequest")
    GetBucketTaggingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetBucketTaggingResult", name: "GetBucketTaggingResult")
    GetBucketVersioningRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetBucketVersioningRequest", name: "GetBucketVersioningRequest")
    GetBucketVersioningResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetBucketVersioningResult", name: "GetBucketVersioningResult")
    GetDataAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetDataAccessRequest", name: "GetDataAccessRequest")
    GetDataAccessResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetDataAccessResult", name: "GetDataAccessResult")
    GetJobTaggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetJobTaggingRequest", name: "GetJobTaggingRequest")
    GetJobTaggingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetJobTaggingResult", name: "GetJobTaggingResult")
    GetMultiRegionAccessPointPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetMultiRegionAccessPointPolicyRequest", name: "GetMultiRegionAccessPointPolicyRequest")
    GetMultiRegionAccessPointPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetMultiRegionAccessPointPolicyResult", name: "GetMultiRegionAccessPointPolicyResult")
    GetMultiRegionAccessPointPolicyStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetMultiRegionAccessPointPolicyStatusRequest", name: "GetMultiRegionAccessPointPolicyStatusRequest")
    GetMultiRegionAccessPointPolicyStatusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetMultiRegionAccessPointPolicyStatusResult", name: "GetMultiRegionAccessPointPolicyStatusResult")
    GetMultiRegionAccessPointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetMultiRegionAccessPointRequest", name: "GetMultiRegionAccessPointRequest")
    GetMultiRegionAccessPointResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetMultiRegionAccessPointResult", name: "GetMultiRegionAccessPointResult")
    GetMultiRegionAccessPointRoutesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetMultiRegionAccessPointRoutesRequest", name: "GetMultiRegionAccessPointRoutesRequest")
    GetMultiRegionAccessPointRoutesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetMultiRegionAccessPointRoutesResult", name: "GetMultiRegionAccessPointRoutesResult")
    GetPublicAccessBlockOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetPublicAccessBlockOutput", name: "GetPublicAccessBlockOutput")
    GetPublicAccessBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetPublicAccessBlockRequest", name: "GetPublicAccessBlockRequest")
    GetStorageLensConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetStorageLensConfigurationRequest", name: "GetStorageLensConfigurationRequest")
    GetStorageLensConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetStorageLensConfigurationResult", name: "GetStorageLensConfigurationResult")
    GetStorageLensConfigurationTaggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetStorageLensConfigurationTaggingRequest", name: "GetStorageLensConfigurationTaggingRequest")
    GetStorageLensConfigurationTaggingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetStorageLensConfigurationTaggingResult", name: "GetStorageLensConfigurationTaggingResult")
    GetStorageLensGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetStorageLensGroupRequest", name: "GetStorageLensGroupRequest")
    GetStorageLensGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#GetStorageLensGroupResult", name: "GetStorageLensGroupResult")
    GrantFullControl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#GrantFullControl", name: "GrantFullControl")
    GrantRead = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#GrantRead", name: "GrantRead")
    GrantReadACP = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#GrantReadACP", name: "GrantReadACP")
    GrantWrite = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#GrantWrite", name: "GrantWrite")
    GrantWriteACP = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#GrantWriteACP", name: "GrantWriteACP")
    Grantee = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#Grantee", name: "Grantee")
    GranteeIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#GranteeIdentifier", name: "GranteeIdentifier")
    GranteeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#GranteeType", name: "GranteeType")
    IAMRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#IAMRoleArn", name: "IAMRoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[^:]+:iam::\\d{12}:role/"})
    ID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#ID", name: "ID")
    IdempotencyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#IdempotencyException", name: "IdempotencyException", traits: {"smithy.api#error" => "client"})
    IdentityCenterApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#IdentityCenterApplicationArn", name: "IdentityCenterApplicationArn", traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:[^:]+:sso::\\d{12}:application/.*$"})
    IdentityCenterArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#IdentityCenterArn", name: "IdentityCenterArn", traits: {"smithy.api#length" => {"min" => 10, "max" => 1224}, "smithy.api#pattern" => "^arn:[^:]+:sso::(\\d{12}){0,1}:instance/.*$"})
    Include = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#Include", name: "Include")
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#InternalServiceException", name: "InternalServiceException", traits: {"smithy.api#error" => "server"})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"smithy.api#error" => "client"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client"})
    IsEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3control#IsEnabled", name: "IsEnabled", traits: {"smithy.api#default" => false})
    IsPublic = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3control#IsPublic", name: "IsPublic", traits: {"smithy.api#default" => false})
    JobArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#JobArn", name: "JobArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:[^:]+:s3:[a-zA-Z0-9\\-]+:\\d{12}:job\\/"})
    JobCreationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3control#JobCreationTime", name: "JobCreationTime")
    JobDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#JobDescriptor", name: "JobDescriptor")
    JobFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#JobFailure", name: "JobFailure")
    JobFailureCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#JobFailureCode", name: "JobFailureCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    JobFailureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#JobFailureList", name: "JobFailureList")
    JobFailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#JobFailureReason", name: "JobFailureReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#JobId", name: "JobId", traits: {"smithy.api#length" => {"min" => 5, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    JobListDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#JobListDescriptor", name: "JobListDescriptor")
    JobListDescriptorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#JobListDescriptorList", name: "JobListDescriptorList")
    JobManifest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#JobManifest", name: "JobManifest")
    JobManifestFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#JobManifestFieldList", name: "JobManifestFieldList")
    JobManifestFieldName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#JobManifestFieldName", name: "JobManifestFieldName")
    JobManifestFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#JobManifestFormat", name: "JobManifestFormat")
    JobManifestGenerator = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.s3control#JobManifestGenerator", name: "JobManifestGenerator")
    JobManifestGeneratorFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#JobManifestGeneratorFilter", name: "JobManifestGeneratorFilter")
    JobManifestLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#JobManifestLocation", name: "JobManifestLocation")
    JobManifestSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#JobManifestSpec", name: "JobManifestSpec")
    JobNumberOfTasksFailed = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#JobNumberOfTasksFailed", name: "JobNumberOfTasksFailed", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    JobNumberOfTasksSucceeded = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#JobNumberOfTasksSucceeded", name: "JobNumberOfTasksSucceeded", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    JobOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#JobOperation", name: "JobOperation")
    JobPriority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#JobPriority", name: "JobPriority", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    JobProgressSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#JobProgressSummary", name: "JobProgressSummary")
    JobReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#JobReport", name: "JobReport")
    JobReportFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#JobReportFormat", name: "JobReportFormat")
    JobReportScope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#JobReportScope", name: "JobReportScope")
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#JobStatus", name: "JobStatus")
    JobStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#JobStatusException", name: "JobStatusException", traits: {"smithy.api#error" => "client"})
    JobStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#JobStatusList", name: "JobStatusList")
    JobStatusUpdateReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#JobStatusUpdateReason", name: "JobStatusUpdateReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    JobTerminationDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3control#JobTerminationDate", name: "JobTerminationDate")
    JobTimeInStateSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#JobTimeInStateSeconds", name: "JobTimeInStateSeconds", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    JobTimers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#JobTimers", name: "JobTimers")
    JobTotalNumberOfTasks = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#JobTotalNumberOfTasks", name: "JobTotalNumberOfTasks", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    KeyNameConstraint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#KeyNameConstraint", name: "KeyNameConstraint")
    KmsKeyArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#KmsKeyArnString", name: "KmsKeyArnString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    LambdaInvokeOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#LambdaInvokeOperation", name: "LambdaInvokeOperation")
    LifecycleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#LifecycleConfiguration", name: "LifecycleConfiguration")
    LifecycleExpiration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#LifecycleExpiration", name: "LifecycleExpiration")
    LifecycleRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#LifecycleRule", name: "LifecycleRule")
    LifecycleRuleAndOperator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#LifecycleRuleAndOperator", name: "LifecycleRuleAndOperator")
    LifecycleRuleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#LifecycleRuleFilter", name: "LifecycleRuleFilter")
    LifecycleRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#LifecycleRules", name: "LifecycleRules")
    ListAccessGrantEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListAccessGrantEntry", name: "ListAccessGrantEntry")
    ListAccessGrantsInstanceEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListAccessGrantsInstanceEntry", name: "ListAccessGrantsInstanceEntry")
    ListAccessGrantsInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListAccessGrantsInstancesRequest", name: "ListAccessGrantsInstancesRequest")
    ListAccessGrantsInstancesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListAccessGrantsInstancesResult", name: "ListAccessGrantsInstancesResult")
    ListAccessGrantsLocationsEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListAccessGrantsLocationsEntry", name: "ListAccessGrantsLocationsEntry")
    ListAccessGrantsLocationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListAccessGrantsLocationsRequest", name: "ListAccessGrantsLocationsRequest")
    ListAccessGrantsLocationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListAccessGrantsLocationsResult", name: "ListAccessGrantsLocationsResult")
    ListAccessGrantsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListAccessGrantsRequest", name: "ListAccessGrantsRequest")
    ListAccessGrantsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListAccessGrantsResult", name: "ListAccessGrantsResult")
    ListAccessPointsForDirectoryBucketsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListAccessPointsForDirectoryBucketsRequest", name: "ListAccessPointsForDirectoryBucketsRequest")
    ListAccessPointsForDirectoryBucketsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListAccessPointsForDirectoryBucketsResult", name: "ListAccessPointsForDirectoryBucketsResult")
    ListAccessPointsForObjectLambdaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListAccessPointsForObjectLambdaRequest", name: "ListAccessPointsForObjectLambdaRequest")
    ListAccessPointsForObjectLambdaResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListAccessPointsForObjectLambdaResult", name: "ListAccessPointsForObjectLambdaResult")
    ListAccessPointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListAccessPointsRequest", name: "ListAccessPointsRequest")
    ListAccessPointsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListAccessPointsResult", name: "ListAccessPointsResult")
    ListCallerAccessGrantsEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListCallerAccessGrantsEntry", name: "ListCallerAccessGrantsEntry")
    ListCallerAccessGrantsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListCallerAccessGrantsRequest", name: "ListCallerAccessGrantsRequest")
    ListCallerAccessGrantsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListCallerAccessGrantsResult", name: "ListCallerAccessGrantsResult")
    ListJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListJobsRequest", name: "ListJobsRequest")
    ListJobsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListJobsResult", name: "ListJobsResult")
    ListMultiRegionAccessPointsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListMultiRegionAccessPointsRequest", name: "ListMultiRegionAccessPointsRequest")
    ListMultiRegionAccessPointsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListMultiRegionAccessPointsResult", name: "ListMultiRegionAccessPointsResult")
    ListRegionalBucketsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListRegionalBucketsRequest", name: "ListRegionalBucketsRequest")
    ListRegionalBucketsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListRegionalBucketsResult", name: "ListRegionalBucketsResult")
    ListStorageLensConfigurationEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListStorageLensConfigurationEntry", name: "ListStorageLensConfigurationEntry")
    ListStorageLensConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListStorageLensConfigurationsRequest", name: "ListStorageLensConfigurationsRequest")
    ListStorageLensConfigurationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListStorageLensConfigurationsResult", name: "ListStorageLensConfigurationsResult", traits: {"smithy.api#xmlName" => "ListStorageLensConfigurationResult"})
    ListStorageLensGroupEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListStorageLensGroupEntry", name: "ListStorageLensGroupEntry")
    ListStorageLensGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListStorageLensGroupsRequest", name: "ListStorageLensGroupsRequest")
    ListStorageLensGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListStorageLensGroupsResult", name: "ListStorageLensGroupsResult")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ListTagsForResourceResult", name: "ListTagsForResourceResult")
    Location = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#Location", name: "Location")
    MFA = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#MFA", name: "MFA")
    MFADelete = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#MFADelete", name: "MFADelete")
    MFADeleteStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#MFADeleteStatus", name: "MFADeleteStatus")
    ManifestPrefixString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#ManifestPrefixString", name: "ManifestPrefixString", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    MatchAnyPrefix = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#MatchAnyPrefix", name: "MatchAnyPrefix")
    MatchAnySuffix = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#MatchAnySuffix", name: "MatchAnySuffix")
    MatchAnyTag = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#MatchAnyTag", name: "MatchAnyTag")
    MatchObjectAge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#MatchObjectAge", name: "MatchObjectAge")
    MatchObjectSize = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#MatchObjectSize", name: "MatchObjectSize")
    MaxLength1024String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#MaxLength1024String", name: "MaxLength1024String", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000}})
    Metrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#Metrics", name: "Metrics")
    MetricsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#MetricsStatus", name: "MetricsStatus")
    MinStorageBytesPercentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.s3control#MinStorageBytesPercentage", name: "MinStorageBytesPercentage", traits: {"smithy.api#range" => {"min" => 0.1, "max" => 100}})
    Minutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#Minutes", name: "Minutes", traits: {"smithy.api#default" => 0})
    MultiRegionAccessPointAlias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#MultiRegionAccessPointAlias", name: "MultiRegionAccessPointAlias", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "^[a-z][a-z0-9]*[.]mrap$"})
    MultiRegionAccessPointClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#MultiRegionAccessPointClientToken", name: "MultiRegionAccessPointClientToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^\\S+$"})
    MultiRegionAccessPointId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#MultiRegionAccessPointId", name: "MultiRegionAccessPointId", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9\\:.-]{3,200}$"})
    MultiRegionAccessPointName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#MultiRegionAccessPointName", name: "MultiRegionAccessPointName", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^[a-z0-9][-a-z0-9]{1,48}[a-z0-9]$"})
    MultiRegionAccessPointPolicyDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#MultiRegionAccessPointPolicyDocument", name: "MultiRegionAccessPointPolicyDocument")
    MultiRegionAccessPointRegionalResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#MultiRegionAccessPointRegionalResponse", name: "MultiRegionAccessPointRegionalResponse")
    MultiRegionAccessPointRegionalResponseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#MultiRegionAccessPointRegionalResponseList", name: "MultiRegionAccessPointRegionalResponseList")
    MultiRegionAccessPointReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#MultiRegionAccessPointReport", name: "MultiRegionAccessPointReport")
    MultiRegionAccessPointReportList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#MultiRegionAccessPointReportList", name: "MultiRegionAccessPointReportList")
    MultiRegionAccessPointRoute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#MultiRegionAccessPointRoute", name: "MultiRegionAccessPointRoute")
    MultiRegionAccessPointStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#MultiRegionAccessPointStatus", name: "MultiRegionAccessPointStatus")
    MultiRegionAccessPointsAsyncResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#MultiRegionAccessPointsAsyncResponse", name: "MultiRegionAccessPointsAsyncResponse")
    NetworkOrigin = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#NetworkOrigin", name: "NetworkOrigin")
    NoSuchPublicAccessBlockConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#NoSuchPublicAccessBlockConfiguration", name: "NoSuchPublicAccessBlockConfiguration", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NoSuchPublicAccessBlockConfigurationMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#NoSuchPublicAccessBlockConfigurationMessage", name: "NoSuchPublicAccessBlockConfigurationMessage")
    NonEmptyKmsKeyArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#NonEmptyKmsKeyArnString", name: "NonEmptyKmsKeyArnString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^arn:aws[a-zA-Z0-9-]*:kms:[a-z0-9-]+:[0-9]{12}:key/[a-zA-Z0-9-]+$"})
    NonEmptyMaxLength1024String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#NonEmptyMaxLength1024String", name: "NonEmptyMaxLength1024String", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    NonEmptyMaxLength1024StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#NonEmptyMaxLength1024StringList", name: "NonEmptyMaxLength1024StringList")
    NonEmptyMaxLength2048String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#NonEmptyMaxLength2048String", name: "NonEmptyMaxLength2048String", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    NonEmptyMaxLength256String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#NonEmptyMaxLength256String", name: "NonEmptyMaxLength256String", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    NonEmptyMaxLength64String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#NonEmptyMaxLength64String", name: "NonEmptyMaxLength64String", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    NoncurrentVersionCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#NoncurrentVersionCount", name: "NoncurrentVersionCount", traits: {"smithy.api#default" => 0})
    NoncurrentVersionExpiration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#NoncurrentVersionExpiration", name: "NoncurrentVersionExpiration")
    NoncurrentVersionTransition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#NoncurrentVersionTransition", name: "NoncurrentVersionTransition")
    NoncurrentVersionTransitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#NoncurrentVersionTransitionList", name: "NoncurrentVersionTransitionList")
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client"})
    NotSSEFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#NotSSEFilter", name: "NotSSEFilter")
    ObjectAgeValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#ObjectAgeValue", name: "ObjectAgeValue", traits: {"smithy.api#default" => 0})
    ObjectCreationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3control#ObjectCreationTime", name: "ObjectCreationTime")
    ObjectEncryptionFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.s3control#ObjectEncryptionFilter", name: "ObjectEncryptionFilter")
    ObjectEncryptionFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#ObjectEncryptionFilterList", name: "ObjectEncryptionFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ObjectLambdaAccessPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ObjectLambdaAccessPoint", name: "ObjectLambdaAccessPoint")
    ObjectLambdaAccessPointAlias = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ObjectLambdaAccessPointAlias", name: "ObjectLambdaAccessPointAlias")
    ObjectLambdaAccessPointAliasStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#ObjectLambdaAccessPointAliasStatus", name: "ObjectLambdaAccessPointAliasStatus", traits: {"smithy.api#length" => {"min" => 2, "max" => 16}})
    ObjectLambdaAccessPointAliasValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#ObjectLambdaAccessPointAliasValue", name: "ObjectLambdaAccessPointAliasValue", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[0-9a-z\\\\-]{3,63}$"})
    ObjectLambdaAccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#ObjectLambdaAccessPointArn", name: "ObjectLambdaAccessPointArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[^:]+:s3-object-lambda:[^:]*:\\d{12}:accesspoint/"})
    ObjectLambdaAccessPointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#ObjectLambdaAccessPointList", name: "ObjectLambdaAccessPointList")
    ObjectLambdaAccessPointName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#ObjectLambdaAccessPointName", name: "ObjectLambdaAccessPointName", traits: {"smithy.api#length" => {"min" => 3, "max" => 45}, "smithy.api#pattern" => "^[a-z0-9]([a-z0-9\\-]*[a-z0-9])?$"})
    ObjectLambdaAllowedFeature = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#ObjectLambdaAllowedFeature", name: "ObjectLambdaAllowedFeature")
    ObjectLambdaAllowedFeaturesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#ObjectLambdaAllowedFeaturesList", name: "ObjectLambdaAllowedFeaturesList")
    ObjectLambdaConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ObjectLambdaConfiguration", name: "ObjectLambdaConfiguration")
    ObjectLambdaContentTransformation = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.s3control#ObjectLambdaContentTransformation", name: "ObjectLambdaContentTransformation")
    ObjectLambdaPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#ObjectLambdaPolicy", name: "ObjectLambdaPolicy")
    ObjectLambdaSupportingAccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#ObjectLambdaSupportingAccessPointArn", name: "ObjectLambdaSupportingAccessPointArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:[^:]+:s3:[^:]*:\\d{12}:accesspoint/"})
    ObjectLambdaTransformationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ObjectLambdaTransformationConfiguration", name: "ObjectLambdaTransformationConfiguration")
    ObjectLambdaTransformationConfigurationAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#ObjectLambdaTransformationConfigurationAction", name: "ObjectLambdaTransformationConfigurationAction")
    ObjectLambdaTransformationConfigurationActionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#ObjectLambdaTransformationConfigurationActionsList", name: "ObjectLambdaTransformationConfigurationActionsList")
    ObjectLambdaTransformationConfigurationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#ObjectLambdaTransformationConfigurationsList", name: "ObjectLambdaTransformationConfigurationsList")
    ObjectLockEnabledForBucket = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3control#ObjectLockEnabledForBucket", name: "ObjectLockEnabledForBucket", traits: {"smithy.api#default" => false})
    ObjectSizeGreaterThanBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#ObjectSizeGreaterThanBytes", name: "ObjectSizeGreaterThanBytes", traits: {"smithy.api#default" => 0})
    ObjectSizeLessThanBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#ObjectSizeLessThanBytes", name: "ObjectSizeLessThanBytes", traits: {"smithy.api#default" => 0})
    ObjectSizeValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#ObjectSizeValue", name: "ObjectSizeValue", traits: {"smithy.api#default" => 0})
    OperationName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#OperationName", name: "OperationName")
    Organization = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#Organization", name: "Organization", traits: {"smithy.api#length" => {"min" => 12, "max" => 34}, "smithy.api#pattern" => "^o-[a-z0-9]{10,32}$"})
    OutputSchemaVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#OutputSchemaVersion", name: "OutputSchemaVersion")
    OwnerOverride = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#OwnerOverride", name: "OwnerOverride")
    Permission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#Permission", name: "Permission")
    Policy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#Policy", name: "Policy")
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#PolicyDocument", name: "PolicyDocument", traits: {"smithy.api#length" => {"min" => 1, "max" => 350000}})
    PolicyStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PolicyStatus", name: "PolicyStatus")
    Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#Prefix", name: "Prefix")
    PrefixLevel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PrefixLevel", name: "PrefixLevel")
    PrefixLevelStorageMetrics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PrefixLevelStorageMetrics", name: "PrefixLevelStorageMetrics")
    PrefixesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#PrefixesList", name: "PrefixesList")
    Priority = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#Priority", name: "Priority", traits: {"smithy.api#default" => 0})
    Privilege = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#Privilege", name: "Privilege")
    ProposedMultiRegionAccessPointPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ProposedMultiRegionAccessPointPolicy", name: "ProposedMultiRegionAccessPointPolicy")
    PublicAccessBlockConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PublicAccessBlockConfiguration", name: "PublicAccessBlockConfiguration")
    PublicAccessBlockEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3control#PublicAccessBlockEnabled", name: "PublicAccessBlockEnabled", traits: {"smithy.api#default" => false})
    PutAccessGrantsInstanceResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutAccessGrantsInstanceResourcePolicyRequest", name: "PutAccessGrantsInstanceResourcePolicyRequest")
    PutAccessGrantsInstanceResourcePolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutAccessGrantsInstanceResourcePolicyResult", name: "PutAccessGrantsInstanceResourcePolicyResult")
    PutAccessPointConfigurationForObjectLambdaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutAccessPointConfigurationForObjectLambdaRequest", name: "PutAccessPointConfigurationForObjectLambdaRequest")
    PutAccessPointPolicyForObjectLambdaRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutAccessPointPolicyForObjectLambdaRequest", name: "PutAccessPointPolicyForObjectLambdaRequest")
    PutAccessPointPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutAccessPointPolicyRequest", name: "PutAccessPointPolicyRequest")
    PutAccessPointScopeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutAccessPointScopeRequest", name: "PutAccessPointScopeRequest")
    PutBucketLifecycleConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutBucketLifecycleConfigurationRequest", name: "PutBucketLifecycleConfigurationRequest")
    PutBucketPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutBucketPolicyRequest", name: "PutBucketPolicyRequest")
    PutBucketReplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutBucketReplicationRequest", name: "PutBucketReplicationRequest")
    PutBucketTaggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutBucketTaggingRequest", name: "PutBucketTaggingRequest")
    PutBucketVersioningRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutBucketVersioningRequest", name: "PutBucketVersioningRequest")
    PutJobTaggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutJobTaggingRequest", name: "PutJobTaggingRequest")
    PutJobTaggingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutJobTaggingResult", name: "PutJobTaggingResult")
    PutMultiRegionAccessPointPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutMultiRegionAccessPointPolicyInput", name: "PutMultiRegionAccessPointPolicyInput")
    PutMultiRegionAccessPointPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutMultiRegionAccessPointPolicyRequest", name: "PutMultiRegionAccessPointPolicyRequest")
    PutMultiRegionAccessPointPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutMultiRegionAccessPointPolicyResult", name: "PutMultiRegionAccessPointPolicyResult")
    PutPublicAccessBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutPublicAccessBlockRequest", name: "PutPublicAccessBlockRequest")
    PutStorageLensConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutStorageLensConfigurationRequest", name: "PutStorageLensConfigurationRequest")
    PutStorageLensConfigurationTaggingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutStorageLensConfigurationTaggingRequest", name: "PutStorageLensConfigurationTaggingRequest")
    PutStorageLensConfigurationTaggingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#PutStorageLensConfigurationTaggingResult", name: "PutStorageLensConfigurationTaggingResult")
    Region = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#Region", name: "Region")
    RegionCreationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#RegionCreationList", name: "RegionCreationList")
    RegionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#RegionName", name: "RegionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    RegionReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#RegionReport", name: "RegionReport")
    RegionReportList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#RegionReportList", name: "RegionReportList")
    RegionalBucket = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#RegionalBucket", name: "RegionalBucket")
    RegionalBucketList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#RegionalBucketList", name: "RegionalBucketList")
    Regions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#Regions", name: "Regions")
    ReplicaKmsKeyID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#ReplicaKmsKeyID", name: "ReplicaKmsKeyID")
    ReplicaModifications = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ReplicaModifications", name: "ReplicaModifications")
    ReplicaModificationsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#ReplicaModificationsStatus", name: "ReplicaModificationsStatus")
    ReplicationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ReplicationConfiguration", name: "ReplicationConfiguration")
    ReplicationRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ReplicationRule", name: "ReplicationRule")
    ReplicationRuleAndOperator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ReplicationRuleAndOperator", name: "ReplicationRuleAndOperator")
    ReplicationRuleFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ReplicationRuleFilter", name: "ReplicationRuleFilter")
    ReplicationRuleStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#ReplicationRuleStatus", name: "ReplicationRuleStatus")
    ReplicationRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#ReplicationRules", name: "ReplicationRules")
    ReplicationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#ReplicationStatus", name: "ReplicationStatus")
    ReplicationStatusFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#ReplicationStatusFilterList", name: "ReplicationStatusFilterList")
    ReplicationStorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#ReplicationStorageClass", name: "ReplicationStorageClass")
    ReplicationTime = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ReplicationTime", name: "ReplicationTime")
    ReplicationTimeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#ReplicationTimeStatus", name: "ReplicationTimeStatus")
    ReplicationTimeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#ReplicationTimeValue", name: "ReplicationTimeValue")
    ReportPrefixString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#ReportPrefixString", name: "ReportPrefixString", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}})
    RequestedJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#RequestedJobStatus", name: "RequestedJobStatus")
    Role = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#Role", name: "Role")
    RouteList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#RouteList", name: "RouteList")
    S3AWSRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#S3AWSRegion", name: "S3AWSRegion", traits: {"smithy.api#length" => {"min" => 5, "max" => 30}, "smithy.api#pattern" => "^[a-z0-9\\-]+$"})
    S3AccessControlList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3AccessControlList", name: "S3AccessControlList")
    S3AccessControlPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3AccessControlPolicy", name: "S3AccessControlPolicy")
    S3AccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#S3AccessPointArn", name: "S3AccessPointArn", traits: {"smithy.api#length" => {"min" => 4, "max" => 128}})
    S3BucketArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#S3BucketArnString", name: "S3BucketArnString", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:[^:]+:s3:"})
    S3BucketDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3BucketDestination", name: "S3BucketDestination")
    S3CannedAccessControlList = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#S3CannedAccessControlList", name: "S3CannedAccessControlList")
    S3ChecksumAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#S3ChecksumAlgorithm", name: "S3ChecksumAlgorithm")
    S3ComputeObjectChecksumOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3ComputeObjectChecksumOperation", name: "S3ComputeObjectChecksumOperation")
    S3ContentLength = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#S3ContentLength", name: "S3ContentLength", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    S3CopyObjectOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3CopyObjectOperation", name: "S3CopyObjectOperation")
    S3DeleteObjectTaggingOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3DeleteObjectTaggingOperation", name: "S3DeleteObjectTaggingOperation")
    S3ExpirationInDays = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#S3ExpirationInDays", name: "S3ExpirationInDays", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    S3GeneratedManifestDescriptor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3GeneratedManifestDescriptor", name: "S3GeneratedManifestDescriptor")
    S3GlacierJobTier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#S3GlacierJobTier", name: "S3GlacierJobTier")
    S3Grant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3Grant", name: "S3Grant")
    S3GrantList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#S3GrantList", name: "S3GrantList")
    S3Grantee = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3Grantee", name: "S3Grantee")
    S3GranteeTypeIdentifier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#S3GranteeTypeIdentifier", name: "S3GranteeTypeIdentifier")
    S3InitiateRestoreObjectOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3InitiateRestoreObjectOperation", name: "S3InitiateRestoreObjectOperation")
    S3JobManifestGenerator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3JobManifestGenerator", name: "S3JobManifestGenerator")
    S3KeyArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#S3KeyArnString", name: "S3KeyArnString", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^arn:[^:]+:s3:"})
    S3ManifestOutputLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3ManifestOutputLocation", name: "S3ManifestOutputLocation")
    S3MetadataDirective = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#S3MetadataDirective", name: "S3MetadataDirective")
    S3ObjectLockLegalHold = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3ObjectLockLegalHold", name: "S3ObjectLockLegalHold")
    S3ObjectLockLegalHoldStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#S3ObjectLockLegalHoldStatus", name: "S3ObjectLockLegalHoldStatus")
    S3ObjectLockMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#S3ObjectLockMode", name: "S3ObjectLockMode")
    S3ObjectLockRetentionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#S3ObjectLockRetentionMode", name: "S3ObjectLockRetentionMode")
    S3ObjectMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3ObjectMetadata", name: "S3ObjectMetadata")
    S3ObjectOwner = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3ObjectOwner", name: "S3ObjectOwner")
    S3ObjectVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#S3ObjectVersionId", name: "S3ObjectVersionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    S3Permission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#S3Permission", name: "S3Permission")
    S3Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#S3Prefix", name: "S3Prefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^.+$"})
    S3PrefixType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#S3PrefixType", name: "S3PrefixType")
    S3RegionalBucketArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#S3RegionalBucketArn", name: "S3RegionalBucketArn", traits: {"smithy.api#length" => {"min" => 4, "max" => 128}})
    S3RegionalOrS3ExpressBucketArnString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#S3RegionalOrS3ExpressBucketArnString", name: "S3RegionalOrS3ExpressBucketArnString", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:[^:]+:(s3|s3express):"})
    S3ReplicateObjectOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3ReplicateObjectOperation", name: "S3ReplicateObjectOperation")
    S3ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#S3ResourceArn", name: "S3ResourceArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1011}, "smithy.api#pattern" => "^arn:[^:]+:s3(express)?:[^:]"})
    S3Retention = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3Retention", name: "S3Retention")
    S3SSEAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#S3SSEAlgorithm", name: "S3SSEAlgorithm")
    S3SetObjectAclOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3SetObjectAclOperation", name: "S3SetObjectAclOperation")
    S3SetObjectLegalHoldOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3SetObjectLegalHoldOperation", name: "S3SetObjectLegalHoldOperation")
    S3SetObjectRetentionOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3SetObjectRetentionOperation", name: "S3SetObjectRetentionOperation")
    S3SetObjectTaggingOperation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3SetObjectTaggingOperation", name: "S3SetObjectTaggingOperation")
    S3StorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#S3StorageClass", name: "S3StorageClass")
    S3Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#S3Tag", name: "S3Tag")
    S3TagSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#S3TagSet", name: "S3TagSet")
    S3UserMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.s3control#S3UserMetadata", name: "S3UserMetadata", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}})
    SSECFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#SSECFilter", name: "SSECFilter")
    SSEKMS = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#SSEKMS", name: "SSEKMS", traits: {"smithy.api#xmlName" => "SSE-KMS"})
    SSEKMSEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#SSEKMSEncryption", name: "SSEKMSEncryption", traits: {"smithy.api#xmlName" => "SSE-KMS"})
    SSEKMSFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#SSEKMSFilter", name: "SSEKMSFilter")
    SSEKMSKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#SSEKMSKeyId", name: "SSEKMSKeyId")
    SSES3 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#SSES3", name: "SSES3", traits: {"smithy.api#xmlName" => "SSE-S3"})
    SSES3Encryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#SSES3Encryption", name: "SSES3Encryption", traits: {"smithy.api#xmlName" => "SSE-S3"})
    SSES3Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#SSES3Filter", name: "SSES3Filter")
    Scope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#Scope", name: "Scope")
    ScopePermission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#ScopePermission", name: "ScopePermission")
    ScopePermissionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#ScopePermissionList", name: "ScopePermissionList")
    SecretAccessKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#SecretAccessKey", name: "SecretAccessKey", traits: {"smithy.api#sensitive" => {}})
    SelectionCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#SelectionCriteria", name: "SelectionCriteria")
    SessionToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#SessionToken", name: "SessionToken", traits: {"smithy.api#sensitive" => {}})
    Setting = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.s3control#Setting", name: "Setting", traits: {"smithy.api#default" => false})
    SourceSelectionCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#SourceSelectionCriteria", name: "SourceSelectionCriteria")
    SseKmsEncryptedObjects = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#SseKmsEncryptedObjects", name: "SseKmsEncryptedObjects")
    SseKmsEncryptedObjectsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#SseKmsEncryptedObjectsStatus", name: "SseKmsEncryptedObjectsStatus")
    StorageClassList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#StorageClassList", name: "StorageClassList")
    StorageLensArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#StorageLensArn", name: "StorageLensArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:[a-z\\-]+:s3:[a-z0-9\\-]+:\\d{12}:storage\\-lens\\/"})
    StorageLensAwsOrg = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#StorageLensAwsOrg", name: "StorageLensAwsOrg")
    StorageLensConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#StorageLensConfiguration", name: "StorageLensConfiguration")
    StorageLensConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#StorageLensConfigurationList", name: "StorageLensConfigurationList")
    StorageLensDataExport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#StorageLensDataExport", name: "StorageLensDataExport")
    StorageLensDataExportEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#StorageLensDataExportEncryption", name: "StorageLensDataExportEncryption")
    StorageLensGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#StorageLensGroup", name: "StorageLensGroup")
    StorageLensGroupAndOperator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#StorageLensGroupAndOperator", name: "StorageLensGroupAndOperator")
    StorageLensGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#StorageLensGroupArn", name: "StorageLensGroupArn", traits: {"smithy.api#length" => {"min" => 4, "max" => 1024}, "smithy.api#pattern" => "^arn:[a-z\\-]+:s3:[a-z0-9\\-]+:\\d{12}:storage\\-lens\\-group\\/"})
    StorageLensGroupFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#StorageLensGroupFilter", name: "StorageLensGroupFilter")
    StorageLensGroupLevel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#StorageLensGroupLevel", name: "StorageLensGroupLevel")
    StorageLensGroupLevelExclude = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#StorageLensGroupLevelExclude", name: "StorageLensGroupLevelExclude")
    StorageLensGroupLevelInclude = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#StorageLensGroupLevelInclude", name: "StorageLensGroupLevelInclude")
    StorageLensGroupLevelSelectionCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#StorageLensGroupLevelSelectionCriteria", name: "StorageLensGroupLevelSelectionCriteria")
    StorageLensGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#StorageLensGroupList", name: "StorageLensGroupList")
    StorageLensGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#StorageLensGroupName", name: "StorageLensGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-\\_]+$"})
    StorageLensGroupOrOperator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#StorageLensGroupOrOperator", name: "StorageLensGroupOrOperator")
    StorageLensPrefixLevelDelimiter = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#StorageLensPrefixLevelDelimiter", name: "StorageLensPrefixLevelDelimiter", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    StorageLensPrefixLevelMaxDepth = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#StorageLensPrefixLevelMaxDepth", name: "StorageLensPrefixLevelMaxDepth", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    StorageLensTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#StorageLensTag", name: "StorageLensTag")
    StorageLensTags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#StorageLensTags", name: "StorageLensTags")
    StringForNextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#StringForNextToken", name: "StringForNextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[A-Za-z0-9\\+\\:\\/\\=\\?\\#-_]+$"})
    SubmitMultiRegionAccessPointRoutesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#SubmitMultiRegionAccessPointRoutesRequest", name: "SubmitMultiRegionAccessPointRoutesRequest")
    SubmitMultiRegionAccessPointRoutesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#SubmitMultiRegionAccessPointRoutesResult", name: "SubmitMultiRegionAccessPointRoutesResult")
    Suffix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#Suffix", name: "Suffix")
    SuspendedCause = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#SuspendedCause", name: "SuspendedCause", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    SuspendedDate = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3control#SuspendedDate", name: "SuspendedDate")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#Tag", name: "Tag")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagKeyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#TagKeyString", name: "TagKeyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#TagResourceResult", name: "TagResourceResult")
    TagValueString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#TagValueString", name: "TagValueString", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tagging = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#Tagging", name: "Tagging")
    TimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.s3control#TimeStamp", name: "TimeStamp")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client"})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client"})
    TrafficDialPercentage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.s3control#TrafficDialPercentage", name: "TrafficDialPercentage", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    Transition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#Transition", name: "Transition")
    TransitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.s3control#TransitionList", name: "TransitionList")
    TransitionStorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.s3control#TransitionStorageClass", name: "TransitionStorageClass")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#UntagResourceResult", name: "UntagResourceResult")
    UpdateAccessGrantsLocationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#UpdateAccessGrantsLocationRequest", name: "UpdateAccessGrantsLocationRequest")
    UpdateAccessGrantsLocationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#UpdateAccessGrantsLocationResult", name: "UpdateAccessGrantsLocationResult")
    UpdateJobPriorityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#UpdateJobPriorityRequest", name: "UpdateJobPriorityRequest")
    UpdateJobPriorityResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#UpdateJobPriorityResult", name: "UpdateJobPriorityResult")
    UpdateJobStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#UpdateJobStatusRequest", name: "UpdateJobStatusRequest")
    UpdateJobStatusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#UpdateJobStatusResult", name: "UpdateJobStatusResult")
    UpdateStorageLensGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#UpdateStorageLensGroupRequest", name: "UpdateStorageLensGroupRequest")
    UserArguments = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.s3control#UserArguments", name: "UserArguments", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    VersioningConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#VersioningConfiguration", name: "VersioningConfiguration")
    VpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.s3control#VpcConfiguration", name: "VpcConfiguration")
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.s3control#VpcId", name: "VpcId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})

    AbortIncompleteMultipartUpload.add_member(:days_after_initiation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DaysAfterInitiation, location_name: "DaysAfterInitiation", traits: {"smithy.api#default" => 0}))
    AbortIncompleteMultipartUpload.type = Types::AbortIncompleteMultipartUpload
    AccessControlTranslation.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OwnerOverride, location_name: "Owner", traits: {"smithy.api#required" => {}}))
    AccessControlTranslation.type = Types::AccessControlTranslation
    AccessGrantsInstancesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessGrantsInstanceEntry, traits: {"smithy.api#xmlName" => "AccessGrantsInstance"})
    AccessGrantsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessGrantEntry, traits: {"smithy.api#xmlName" => "AccessGrant"})
    AccessGrantsLocationConfiguration.add_member(:s3_sub_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "S3SubPrefix"))
    AccessGrantsLocationConfiguration.type = Types::AccessGrantsLocationConfiguration
    AccessGrantsLocationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessGrantsLocationsEntry, traits: {"smithy.api#xmlName" => "AccessGrantsLocation"})
    AccessPoint.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    AccessPoint.add_member(:network_origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkOrigin, location_name: "NetworkOrigin", traits: {"smithy.api#required" => {}}))
    AccessPoint.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    AccessPoint.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointBucketName, location_name: "Bucket", traits: {"smithy.api#required" => {}}))
    AccessPoint.add_member(:access_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessPointArn, location_name: "AccessPointArn"))
    AccessPoint.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Alias, location_name: "Alias"))
    AccessPoint.add_member(:bucket_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "BucketAccountId"))
    AccessPoint.add_member(:data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: "DataSourceId"))
    AccessPoint.add_member(:data_source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: "DataSourceType"))
    AccessPoint.type = Types::AccessPoint
    AccessPointList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPoint, traits: {"smithy.api#xmlName" => "AccessPoint"})
    AccountLevel.add_member(:activity_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityMetrics, location_name: "ActivityMetrics"))
    AccountLevel.add_member(:bucket_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketLevel, location_name: "BucketLevel", traits: {"smithy.api#required" => {}}))
    AccountLevel.add_member(:advanced_cost_optimization_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedCostOptimizationMetrics, location_name: "AdvancedCostOptimizationMetrics"))
    AccountLevel.add_member(:advanced_data_protection_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedDataProtectionMetrics, location_name: "AdvancedDataProtectionMetrics"))
    AccountLevel.add_member(:detailed_status_codes_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetailedStatusCodesMetrics, location_name: "DetailedStatusCodesMetrics"))
    AccountLevel.add_member(:storage_lens_group_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupLevel, location_name: "StorageLensGroupLevel"))
    AccountLevel.type = Types::AccountLevel
    ActivityMetrics.add_member(:is_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsEnabled, location_name: "IsEnabled", traits: {"smithy.api#default" => false}))
    ActivityMetrics.type = Types::ActivityMetrics
    AdvancedCostOptimizationMetrics.add_member(:is_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsEnabled, location_name: "IsEnabled", traits: {"smithy.api#default" => false}))
    AdvancedCostOptimizationMetrics.type = Types::AdvancedCostOptimizationMetrics
    AdvancedDataProtectionMetrics.add_member(:is_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsEnabled, location_name: "IsEnabled", traits: {"smithy.api#default" => false}))
    AdvancedDataProtectionMetrics.type = Types::AdvancedDataProtectionMetrics
    AssociateAccessGrantsIdentityCenterRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    AssociateAccessGrantsIdentityCenterRequest.add_member(:identity_center_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterArn, location_name: "IdentityCenterArn", traits: {"smithy.api#required" => {}}))
    AssociateAccessGrantsIdentityCenterRequest.type = Types::AssociateAccessGrantsIdentityCenterRequest
    AsyncErrorDetails.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLength1024String, location_name: "Code"))
    AsyncErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLength1024String, location_name: "Message"))
    AsyncErrorDetails.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLength1024String, location_name: "Resource"))
    AsyncErrorDetails.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLength1024String, location_name: "RequestId"))
    AsyncErrorDetails.type = Types::AsyncErrorDetails
    AsyncOperation.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncCreationTimestamp, location_name: "CreationTime"))
    AsyncOperation.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncOperationName, location_name: "Operation"))
    AsyncOperation.add_member(:request_token_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncRequestTokenARN, location_name: "RequestTokenARN"))
    AsyncOperation.add_member(:request_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncRequestParameters, location_name: "RequestParameters"))
    AsyncOperation.add_member(:request_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncRequestStatus, location_name: "RequestStatus"))
    AsyncOperation.add_member(:response_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncResponseDetails, location_name: "ResponseDetails"))
    AsyncOperation.type = Types::AsyncOperation
    AsyncOperationName.add_member(:create_multi_region_access_point, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CreateMultiRegionAccessPoint", traits: {"smithy.api#enumValue" => "CreateMultiRegionAccessPoint"}))
    AsyncOperationName.add_member(:delete_multi_region_access_point, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteMultiRegionAccessPoint", traits: {"smithy.api#enumValue" => "DeleteMultiRegionAccessPoint"}))
    AsyncOperationName.add_member(:put_multi_region_access_point_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PutMultiRegionAccessPointPolicy", traits: {"smithy.api#enumValue" => "PutMultiRegionAccessPointPolicy"}))
    AsyncRequestParameters.add_member(:create_multi_region_access_point_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMultiRegionAccessPointInput, location_name: "CreateMultiRegionAccessPointRequest"))
    AsyncRequestParameters.add_member(:delete_multi_region_access_point_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMultiRegionAccessPointInput, location_name: "DeleteMultiRegionAccessPointRequest"))
    AsyncRequestParameters.add_member(:put_multi_region_access_point_policy_request, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutMultiRegionAccessPointPolicyInput, location_name: "PutMultiRegionAccessPointPolicyRequest"))
    AsyncRequestParameters.type = Types::AsyncRequestParameters
    AsyncResponseDetails.add_member(:multi_region_access_point_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointsAsyncResponse, location_name: "MultiRegionAccessPointDetails"))
    AsyncResponseDetails.add_member(:error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncErrorDetails, location_name: "ErrorDetails"))
    AsyncResponseDetails.type = Types::AsyncResponseDetails
    AwsLambdaTransformation.add_member(:function_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionArnString, location_name: "FunctionArn", traits: {"smithy.api#required" => {}}))
    AwsLambdaTransformation.add_member(:function_payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLambdaTransformationPayload, location_name: "FunctionPayload"))
    AwsLambdaTransformation.type = Types::AwsLambdaTransformation
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    BadRequestException.type = Types::BadRequestException
    BucketAlreadyExists.type = Types::BucketAlreadyExists
    BucketAlreadyOwnedByYou.type = Types::BucketAlreadyOwnedByYou
    BucketCannedACL.add_member(:private, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "private", traits: {"smithy.api#enumValue" => "private"}))
    BucketCannedACL.add_member(:public_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "public_read", traits: {"smithy.api#enumValue" => "public-read"}))
    BucketCannedACL.add_member(:public_read_write, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "public_read_write", traits: {"smithy.api#enumValue" => "public-read-write"}))
    BucketCannedACL.add_member(:authenticated_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "authenticated_read", traits: {"smithy.api#enumValue" => "authenticated-read"}))
    BucketLevel.add_member(:activity_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivityMetrics, location_name: "ActivityMetrics"))
    BucketLevel.add_member(:prefix_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefixLevel, location_name: "PrefixLevel"))
    BucketLevel.add_member(:advanced_cost_optimization_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedCostOptimizationMetrics, location_name: "AdvancedCostOptimizationMetrics"))
    BucketLevel.add_member(:advanced_data_protection_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdvancedDataProtectionMetrics, location_name: "AdvancedDataProtectionMetrics"))
    BucketLevel.add_member(:detailed_status_codes_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetailedStatusCodesMetrics, location_name: "DetailedStatusCodesMetrics"))
    BucketLevel.type = Types::BucketLevel
    BucketLocationConstraint.add_member(:eu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EU", traits: {"smithy.api#enumValue" => "EU"}))
    BucketLocationConstraint.add_member(:eu_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "eu_west_1", traits: {"smithy.api#enumValue" => "eu-west-1"}))
    BucketLocationConstraint.add_member(:us_west_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "us_west_1", traits: {"smithy.api#enumValue" => "us-west-1"}))
    BucketLocationConstraint.add_member(:us_west_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "us_west_2", traits: {"smithy.api#enumValue" => "us-west-2"}))
    BucketLocationConstraint.add_member(:ap_south_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ap_south_1", traits: {"smithy.api#enumValue" => "ap-south-1"}))
    BucketLocationConstraint.add_member(:ap_southeast_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ap_southeast_1", traits: {"smithy.api#enumValue" => "ap-southeast-1"}))
    BucketLocationConstraint.add_member(:ap_southeast_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ap_southeast_2", traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    BucketLocationConstraint.add_member(:ap_northeast_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ap_northeast_1", traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    BucketLocationConstraint.add_member(:sa_east_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "sa_east_1", traits: {"smithy.api#enumValue" => "sa-east-1"}))
    BucketLocationConstraint.add_member(:cn_north_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "cn_north_1", traits: {"smithy.api#enumValue" => "cn-north-1"}))
    BucketLocationConstraint.add_member(:eu_central_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "eu_central_1", traits: {"smithy.api#enumValue" => "eu-central-1"}))
    BucketVersioningStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    BucketVersioningStatus.add_member(:suspended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Suspended", traits: {"smithy.api#enumValue" => "Suspended"}))
    Buckets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketArnString, traits: {"smithy.api#xmlName" => "Arn"})
    CallerAccessGrantsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCallerAccessGrantsEntry, traits: {"smithy.api#xmlName" => "AccessGrant"})
    CloudWatchMetrics.add_member(:is_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsEnabled, location_name: "IsEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    CloudWatchMetrics.type = Types::CloudWatchMetrics
    ComputeObjectChecksumAlgorithm.add_member(:crc32, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CRC32", traits: {"smithy.api#enumValue" => "CRC32"}))
    ComputeObjectChecksumAlgorithm.add_member(:crc32_c, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CRC32C", traits: {"smithy.api#enumValue" => "CRC32C"}))
    ComputeObjectChecksumAlgorithm.add_member(:crc64_nvme, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CRC64NVME", traits: {"smithy.api#enumValue" => "CRC64NVME"}))
    ComputeObjectChecksumAlgorithm.add_member(:md5, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MD5", traits: {"smithy.api#enumValue" => "MD5"}))
    ComputeObjectChecksumAlgorithm.add_member(:sha1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHA1", traits: {"smithy.api#enumValue" => "SHA1"}))
    ComputeObjectChecksumAlgorithm.add_member(:sha256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHA256", traits: {"smithy.api#enumValue" => "SHA256"}))
    ComputeObjectChecksumType.add_member(:full_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULL_OBJECT", traits: {"smithy.api#enumValue" => "FULL_OBJECT"}))
    ComputeObjectChecksumType.add_member(:composite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPOSITE", traits: {"smithy.api#enumValue" => "COMPOSITE"}))
    CreateAccessGrantRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    CreateAccessGrantRequest.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationId, location_name: "AccessGrantsLocationId", traits: {"smithy.api#required" => {}}))
    CreateAccessGrantRequest.add_member(:access_grants_location_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationConfiguration, location_name: "AccessGrantsLocationConfiguration"))
    CreateAccessGrantRequest.add_member(:grantee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Grantee, location_name: "Grantee", traits: {"smithy.api#required" => {}}))
    CreateAccessGrantRequest.add_member(:permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permission, location_name: "Permission", traits: {"smithy.api#required" => {}}))
    CreateAccessGrantRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: "ApplicationArn"))
    CreateAccessGrantRequest.add_member(:s3_prefix_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3PrefixType, location_name: "S3PrefixType"))
    CreateAccessGrantRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAccessGrantRequest.type = Types::CreateAccessGrantRequest
    CreateAccessGrantResult.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "CreatedAt"))
    CreateAccessGrantResult.add_member(:access_grant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantId, location_name: "AccessGrantId"))
    CreateAccessGrantResult.add_member(:access_grant_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantArn, location_name: "AccessGrantArn"))
    CreateAccessGrantResult.add_member(:grantee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Grantee, location_name: "Grantee"))
    CreateAccessGrantResult.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationId, location_name: "AccessGrantsLocationId"))
    CreateAccessGrantResult.add_member(:access_grants_location_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationConfiguration, location_name: "AccessGrantsLocationConfiguration"))
    CreateAccessGrantResult.add_member(:permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permission, location_name: "Permission"))
    CreateAccessGrantResult.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: "ApplicationArn"))
    CreateAccessGrantResult.add_member(:grant_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "GrantScope"))
    CreateAccessGrantResult.type = Types::CreateAccessGrantResult
    CreateAccessGrantsInstanceRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    CreateAccessGrantsInstanceRequest.add_member(:identity_center_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterArn, location_name: "IdentityCenterArn"))
    CreateAccessGrantsInstanceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAccessGrantsInstanceRequest.type = Types::CreateAccessGrantsInstanceRequest
    CreateAccessGrantsInstanceResult.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "CreatedAt"))
    CreateAccessGrantsInstanceResult.add_member(:access_grants_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsInstanceId, location_name: "AccessGrantsInstanceId"))
    CreateAccessGrantsInstanceResult.add_member(:access_grants_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsInstanceArn, location_name: "AccessGrantsInstanceArn"))
    CreateAccessGrantsInstanceResult.add_member(:identity_center_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterArn, location_name: "IdentityCenterArn", traits: {"smithy.api#deprecated" => {"message" => "IdentityCenterArn has been deprecated. Use IdentityCenterInstanceArn or IdentityCenterApplicationArn."}}))
    CreateAccessGrantsInstanceResult.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterArn, location_name: "IdentityCenterInstanceArn"))
    CreateAccessGrantsInstanceResult.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: "IdentityCenterApplicationArn"))
    CreateAccessGrantsInstanceResult.type = Types::CreateAccessGrantsInstanceResult
    CreateAccessGrantsLocationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    CreateAccessGrantsLocationRequest.add_member(:location_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "LocationScope", traits: {"smithy.api#required" => {}}))
    CreateAccessGrantsLocationRequest.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IAMRoleArn", traits: {"smithy.api#required" => {}}))
    CreateAccessGrantsLocationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAccessGrantsLocationRequest.type = Types::CreateAccessGrantsLocationRequest
    CreateAccessGrantsLocationResult.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "CreatedAt"))
    CreateAccessGrantsLocationResult.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationId, location_name: "AccessGrantsLocationId"))
    CreateAccessGrantsLocationResult.add_member(:access_grants_location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationArn, location_name: "AccessGrantsLocationArn"))
    CreateAccessGrantsLocationResult.add_member(:location_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "LocationScope"))
    CreateAccessGrantsLocationResult.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IAMRoleArn"))
    CreateAccessGrantsLocationResult.type = Types::CreateAccessGrantsLocationResult
    CreateAccessPointForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    CreateAccessPointForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAccessPointForObjectLambdaRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaConfiguration, location_name: "Configuration", traits: {"smithy.api#required" => {}}))
    CreateAccessPointForObjectLambdaRequest.type = Types::CreateAccessPointForObjectLambdaRequest
    CreateAccessPointForObjectLambdaResult.add_member(:object_lambda_access_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointArn, location_name: "ObjectLambdaAccessPointArn"))
    CreateAccessPointForObjectLambdaResult.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointAlias, location_name: "Alias"))
    CreateAccessPointForObjectLambdaResult.type = Types::CreateAccessPointForObjectLambdaResult
    CreateAccessPointRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    CreateAccessPointRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    CreateAccessPointRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    CreateAccessPointRequest.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    CreateAccessPointRequest.add_member(:public_access_block_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublicAccessBlockConfiguration, location_name: "PublicAccessBlockConfiguration"))
    CreateAccessPointRequest.add_member(:bucket_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "BucketAccountId"))
    CreateAccessPointRequest.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: "Scope"))
    CreateAccessPointRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAccessPointRequest.type = Types::CreateAccessPointRequest
    CreateAccessPointResult.add_member(:access_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessPointArn, location_name: "AccessPointArn"))
    CreateAccessPointResult.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Alias, location_name: "Alias"))
    CreateAccessPointResult.type = Types::CreateAccessPointResult
    CreateBucketConfiguration.add_member(:location_constraint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketLocationConstraint, location_name: "LocationConstraint"))
    CreateBucketConfiguration.type = Types::CreateBucketConfiguration
    CreateBucketRequest.add_member(:acl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketCannedACL, location_name: "ACL", traits: {"smithy.api#httpHeader" => "x-amz-acl"}))
    CreateBucketRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    CreateBucketRequest.add_member(:create_bucket_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBucketConfiguration, location_name: "CreateBucketConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "CreateBucketConfiguration"}))
    CreateBucketRequest.add_member(:grant_full_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantFullControl, location_name: "GrantFullControl", traits: {"smithy.api#httpHeader" => "x-amz-grant-full-control"}))
    CreateBucketRequest.add_member(:grant_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantRead, location_name: "GrantRead", traits: {"smithy.api#httpHeader" => "x-amz-grant-read"}))
    CreateBucketRequest.add_member(:grant_read_acp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantReadACP, location_name: "GrantReadACP", traits: {"smithy.api#httpHeader" => "x-amz-grant-read-acp"}))
    CreateBucketRequest.add_member(:grant_write, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantWrite, location_name: "GrantWrite", traits: {"smithy.api#httpHeader" => "x-amz-grant-write"}))
    CreateBucketRequest.add_member(:grant_write_acp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantWriteACP, location_name: "GrantWriteACP", traits: {"smithy.api#httpHeader" => "x-amz-grant-write-acp"}))
    CreateBucketRequest.add_member(:object_lock_enabled_for_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLockEnabledForBucket, location_name: "ObjectLockEnabledForBucket", traits: {"smithy.api#default" => false, "smithy.api#httpHeader" => "x-amz-bucket-object-lock-enabled"}))
    CreateBucketRequest.add_member(:outpost_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength64String, location_name: "OutpostId", traits: {"smithy.api#httpHeader" => "x-amz-outpost-id", "smithy.rules#contextParam" => {"name" => "OutpostId"}}))
    CreateBucketRequest[:http_payload] = :create_bucket_configuration
    CreateBucketRequest[:http_payload_member] = CreateBucketRequest.member(:create_bucket_configuration)
    CreateBucketRequest.type = Types::CreateBucketRequest
    CreateBucketResult.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateBucketResult.add_member(:bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3RegionalBucketArn, location_name: "BucketArn"))
    CreateBucketResult.type = Types::CreateBucketResult
    CreateJobRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    CreateJobRequest.add_member(:confirmation_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmationRequired, location_name: "ConfirmationRequired", traits: {"smithy.api#default" => nil}))
    CreateJobRequest.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobOperation, location_name: "Operation", traits: {"smithy.api#required" => {}}))
    CreateJobRequest.add_member(:report, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobReport, location_name: "Report", traits: {"smithy.api#required" => {}}))
    CreateJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength64String, location_name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateJobRequest.add_member(:manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobManifest, location_name: "Manifest"))
    CreateJobRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength256String, location_name: "Description"))
    CreateJobRequest.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobPriority, location_name: "Priority", traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    CreateJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3TagSet, location_name: "Tags"))
    CreateJobRequest.add_member(:manifest_generator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobManifestGenerator, location_name: "ManifestGenerator"))
    CreateJobRequest.type = Types::CreateJobRequest
    CreateJobResult.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    CreateJobResult.type = Types::CreateJobResult
    CreateMultiRegionAccessPointInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateMultiRegionAccessPointInput.add_member(:public_access_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublicAccessBlockConfiguration, location_name: "PublicAccessBlock"))
    CreateMultiRegionAccessPointInput.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionCreationList, location_name: "Regions", traits: {"smithy.api#required" => {}}))
    CreateMultiRegionAccessPointInput.type = Types::CreateMultiRegionAccessPointInput
    CreateMultiRegionAccessPointRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    CreateMultiRegionAccessPointRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateMultiRegionAccessPointRequest.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMultiRegionAccessPointInput, location_name: "Details", traits: {"smithy.api#required" => {}}))
    CreateMultiRegionAccessPointRequest.type = Types::CreateMultiRegionAccessPointRequest
    CreateMultiRegionAccessPointResult.add_member(:request_token_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncRequestTokenARN, location_name: "RequestTokenARN"))
    CreateMultiRegionAccessPointResult.type = Types::CreateMultiRegionAccessPointResult
    CreateStorageLensGroupRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    CreateStorageLensGroupRequest.add_member(:storage_lens_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroup, location_name: "StorageLensGroup", traits: {"smithy.api#required" => {}}))
    CreateStorageLensGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateStorageLensGroupRequest.type = Types::CreateStorageLensGroupRequest
    Credentials.add_member(:access_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessKeyId, location_name: "AccessKeyId"))
    Credentials.add_member(:secret_access_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretAccessKey, location_name: "SecretAccessKey"))
    Credentials.add_member(:session_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionToken, location_name: "SessionToken"))
    Credentials.add_member(:expiration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Expiration, location_name: "Expiration"))
    Credentials.type = Types::Credentials
    DSSEKMSFilter.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyKmsKeyArnString, location_name: "KmsKeyArn"))
    DSSEKMSFilter.type = Types::DSSEKMSFilter
    DeleteAccessGrantRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessGrantRequest.add_member(:access_grant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantId, location_name: "AccessGrantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessGrantRequest.type = Types::DeleteAccessGrantRequest
    DeleteAccessGrantsInstanceRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessGrantsInstanceRequest.type = Types::DeleteAccessGrantsInstanceRequest
    DeleteAccessGrantsInstanceResourcePolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessGrantsInstanceResourcePolicyRequest.type = Types::DeleteAccessGrantsInstanceResourcePolicyRequest
    DeleteAccessGrantsLocationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessGrantsLocationRequest.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationId, location_name: "AccessGrantsLocationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessGrantsLocationRequest.type = Types::DeleteAccessGrantsLocationRequest
    DeleteAccessPointForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessPointForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessPointForObjectLambdaRequest.type = Types::DeleteAccessPointForObjectLambdaRequest
    DeleteAccessPointPolicyForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessPointPolicyForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessPointPolicyForObjectLambdaRequest.type = Types::DeleteAccessPointPolicyForObjectLambdaRequest
    DeleteAccessPointPolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessPointPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    DeleteAccessPointPolicyRequest.type = Types::DeleteAccessPointPolicyRequest
    DeleteAccessPointRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessPointRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    DeleteAccessPointRequest.type = Types::DeleteAccessPointRequest
    DeleteAccessPointScopeRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "x-amz-account-id", "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessPointScopeRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    DeleteAccessPointScopeRequest.type = Types::DeleteAccessPointScopeRequest
    DeleteBucketLifecycleConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteBucketLifecycleConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketLifecycleConfigurationRequest.type = Types::DeleteBucketLifecycleConfigurationRequest
    DeleteBucketPolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteBucketPolicyRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketPolicyRequest.type = Types::DeleteBucketPolicyRequest
    DeleteBucketReplicationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteBucketReplicationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketReplicationRequest.type = Types::DeleteBucketReplicationRequest
    DeleteBucketRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteBucketRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketRequest.type = Types::DeleteBucketRequest
    DeleteBucketTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteBucketTaggingRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketTaggingRequest.type = Types::DeleteBucketTaggingRequest
    DeleteJobTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteJobTaggingRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteJobTaggingRequest.type = Types::DeleteJobTaggingRequest
    DeleteJobTaggingResult.type = Types::DeleteJobTaggingResult
    DeleteMarkerReplication.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMarkerReplicationStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    DeleteMarkerReplication.type = Types::DeleteMarkerReplication
    DeleteMarkerReplicationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    DeleteMarkerReplicationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    DeleteMultiRegionAccessPointInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteMultiRegionAccessPointInput.type = Types::DeleteMultiRegionAccessPointInput
    DeleteMultiRegionAccessPointRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteMultiRegionAccessPointRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteMultiRegionAccessPointRequest.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMultiRegionAccessPointInput, location_name: "Details", traits: {"smithy.api#required" => {}}))
    DeleteMultiRegionAccessPointRequest.type = Types::DeleteMultiRegionAccessPointRequest
    DeleteMultiRegionAccessPointResult.add_member(:request_token_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncRequestTokenARN, location_name: "RequestTokenARN"))
    DeleteMultiRegionAccessPointResult.type = Types::DeleteMultiRegionAccessPointResult
    DeletePublicAccessBlockRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeletePublicAccessBlockRequest.type = Types::DeletePublicAccessBlockRequest
    DeleteStorageLensConfigurationRequest.add_member(:config_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigId, location_name: "ConfigId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStorageLensConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteStorageLensConfigurationRequest.type = Types::DeleteStorageLensConfigurationRequest
    DeleteStorageLensConfigurationTaggingRequest.add_member(:config_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigId, location_name: "ConfigId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStorageLensConfigurationTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteStorageLensConfigurationTaggingRequest.type = Types::DeleteStorageLensConfigurationTaggingRequest
    DeleteStorageLensConfigurationTaggingResult.type = Types::DeleteStorageLensConfigurationTaggingResult
    DeleteStorageLensGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStorageLensGroupRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteStorageLensGroupRequest.type = Types::DeleteStorageLensGroupRequest
    DescribeJobRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DescribeJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobRequest.type = Types::DescribeJobRequest
    DescribeJobResult.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDescriptor, location_name: "Job"))
    DescribeJobResult.type = Types::DescribeJobResult
    DescribeMultiRegionAccessPointOperationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DescribeMultiRegionAccessPointOperationRequest.add_member(:request_token_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncRequestTokenARN, location_name: "RequestTokenARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeMultiRegionAccessPointOperationRequest.type = Types::DescribeMultiRegionAccessPointOperationRequest
    DescribeMultiRegionAccessPointOperationResult.add_member(:async_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncOperation, location_name: "AsyncOperation"))
    DescribeMultiRegionAccessPointOperationResult.type = Types::DescribeMultiRegionAccessPointOperationResult
    Destination.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "Account"))
    Destination.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketIdentifierString, location_name: "Bucket", traits: {"smithy.api#required" => {}}))
    Destination.add_member(:replication_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTime, location_name: "ReplicationTime"))
    Destination.add_member(:access_control_translation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlTranslation, location_name: "AccessControlTranslation"))
    Destination.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    Destination.add_member(:metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Metrics, location_name: "Metrics"))
    Destination.add_member(:storage_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationStorageClass, location_name: "StorageClass"))
    Destination.type = Types::Destination
    DetailedStatusCodesMetrics.add_member(:is_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsEnabled, location_name: "IsEnabled", traits: {"smithy.api#default" => false}))
    DetailedStatusCodesMetrics.type = Types::DetailedStatusCodesMetrics
    DissociateAccessGrantsIdentityCenterRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DissociateAccessGrantsIdentityCenterRequest.type = Types::DissociateAccessGrantsIdentityCenterRequest
    EncryptionConfiguration.add_member(:replica_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaKmsKeyID, location_name: "ReplicaKmsKeyID"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    Endpoints.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength64String)
    Endpoints.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String)
    EstablishedMultiRegionAccessPointPolicy.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    EstablishedMultiRegionAccessPointPolicy.type = Types::EstablishedMultiRegionAccessPointPolicy
    Exclude.add_member(:buckets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Buckets, location_name: "Buckets"))
    Exclude.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Regions, location_name: "Regions"))
    Exclude.type = Types::Exclude
    ExistingObjectReplication.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExistingObjectReplicationStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    ExistingObjectReplication.type = Types::ExistingObjectReplication
    ExistingObjectReplicationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ExistingObjectReplicationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    ExpirationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ExpirationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    Format.add_member(:csv, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    Format.add_member(:parquet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Parquet", traits: {"smithy.api#enumValue" => "Parquet"}))
    GeneratedManifestEncryption.add_member(:sses3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSES3Encryption, location_name: "SSES3", traits: {"smithy.api#xmlName" => "SSE-S3"}))
    GeneratedManifestEncryption.add_member(:ssekms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSEKMSEncryption, location_name: "SSEKMS", traits: {"smithy.api#xmlName" => "SSE-KMS"}))
    GeneratedManifestEncryption.type = Types::GeneratedManifestEncryption
    GeneratedManifestFormat.add_member(:s3_inventory_report_csv_20211130, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3InventoryReport_CSV_20211130", traits: {"smithy.api#enumValue" => "S3InventoryReport_CSV_20211130"}))
    GetAccessGrantRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessGrantRequest.add_member(:access_grant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantId, location_name: "AccessGrantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessGrantRequest.type = Types::GetAccessGrantRequest
    GetAccessGrantResult.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "CreatedAt"))
    GetAccessGrantResult.add_member(:access_grant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantId, location_name: "AccessGrantId"))
    GetAccessGrantResult.add_member(:access_grant_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantArn, location_name: "AccessGrantArn"))
    GetAccessGrantResult.add_member(:grantee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Grantee, location_name: "Grantee"))
    GetAccessGrantResult.add_member(:permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permission, location_name: "Permission"))
    GetAccessGrantResult.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationId, location_name: "AccessGrantsLocationId"))
    GetAccessGrantResult.add_member(:access_grants_location_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationConfiguration, location_name: "AccessGrantsLocationConfiguration"))
    GetAccessGrantResult.add_member(:grant_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "GrantScope"))
    GetAccessGrantResult.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: "ApplicationArn"))
    GetAccessGrantResult.type = Types::GetAccessGrantResult
    GetAccessGrantsInstanceForPrefixRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessGrantsInstanceForPrefixRequest.add_member(:s3_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "S3Prefix", traits: {"smithy.api#httpQuery" => "s3prefix", "smithy.api#required" => {}}))
    GetAccessGrantsInstanceForPrefixRequest.type = Types::GetAccessGrantsInstanceForPrefixRequest
    GetAccessGrantsInstanceForPrefixResult.add_member(:access_grants_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsInstanceArn, location_name: "AccessGrantsInstanceArn"))
    GetAccessGrantsInstanceForPrefixResult.add_member(:access_grants_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsInstanceId, location_name: "AccessGrantsInstanceId"))
    GetAccessGrantsInstanceForPrefixResult.type = Types::GetAccessGrantsInstanceForPrefixResult
    GetAccessGrantsInstanceRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessGrantsInstanceRequest.type = Types::GetAccessGrantsInstanceRequest
    GetAccessGrantsInstanceResourcePolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessGrantsInstanceResourcePolicyRequest.type = Types::GetAccessGrantsInstanceResourcePolicyRequest
    GetAccessGrantsInstanceResourcePolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "Policy"))
    GetAccessGrantsInstanceResourcePolicyResult.add_member(:organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Organization, location_name: "Organization"))
    GetAccessGrantsInstanceResourcePolicyResult.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "CreatedAt"))
    GetAccessGrantsInstanceResourcePolicyResult.type = Types::GetAccessGrantsInstanceResourcePolicyResult
    GetAccessGrantsInstanceResult.add_member(:access_grants_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsInstanceArn, location_name: "AccessGrantsInstanceArn"))
    GetAccessGrantsInstanceResult.add_member(:access_grants_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsInstanceId, location_name: "AccessGrantsInstanceId"))
    GetAccessGrantsInstanceResult.add_member(:identity_center_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterArn, location_name: "IdentityCenterArn", traits: {"smithy.api#deprecated" => {"message" => "IdentityCenterArn has been deprecated. Use IdentityCenterInstanceArn or IdentityCenterApplicationArn."}}))
    GetAccessGrantsInstanceResult.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterArn, location_name: "IdentityCenterInstanceArn"))
    GetAccessGrantsInstanceResult.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: "IdentityCenterApplicationArn"))
    GetAccessGrantsInstanceResult.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "CreatedAt"))
    GetAccessGrantsInstanceResult.type = Types::GetAccessGrantsInstanceResult
    GetAccessGrantsLocationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessGrantsLocationRequest.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationId, location_name: "AccessGrantsLocationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessGrantsLocationRequest.type = Types::GetAccessGrantsLocationRequest
    GetAccessGrantsLocationResult.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "CreatedAt"))
    GetAccessGrantsLocationResult.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationId, location_name: "AccessGrantsLocationId"))
    GetAccessGrantsLocationResult.add_member(:access_grants_location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationArn, location_name: "AccessGrantsLocationArn"))
    GetAccessGrantsLocationResult.add_member(:location_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "LocationScope"))
    GetAccessGrantsLocationResult.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IAMRoleArn"))
    GetAccessGrantsLocationResult.type = Types::GetAccessGrantsLocationResult
    GetAccessPointConfigurationForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessPointConfigurationForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessPointConfigurationForObjectLambdaRequest.type = Types::GetAccessPointConfigurationForObjectLambdaRequest
    GetAccessPointConfigurationForObjectLambdaResult.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaConfiguration, location_name: "Configuration"))
    GetAccessPointConfigurationForObjectLambdaResult.type = Types::GetAccessPointConfigurationForObjectLambdaResult
    GetAccessPointForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessPointForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessPointForObjectLambdaRequest.type = Types::GetAccessPointForObjectLambdaRequest
    GetAccessPointForObjectLambdaResult.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, location_name: "Name"))
    GetAccessPointForObjectLambdaResult.add_member(:public_access_block_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublicAccessBlockConfiguration, location_name: "PublicAccessBlockConfiguration"))
    GetAccessPointForObjectLambdaResult.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: "CreationDate"))
    GetAccessPointForObjectLambdaResult.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointAlias, location_name: "Alias"))
    GetAccessPointForObjectLambdaResult.type = Types::GetAccessPointForObjectLambdaResult
    GetAccessPointPolicyForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessPointPolicyForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessPointPolicyForObjectLambdaRequest.type = Types::GetAccessPointPolicyForObjectLambdaRequest
    GetAccessPointPolicyForObjectLambdaResult.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaPolicy, location_name: "Policy"))
    GetAccessPointPolicyForObjectLambdaResult.type = Types::GetAccessPointPolicyForObjectLambdaResult
    GetAccessPointPolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessPointPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    GetAccessPointPolicyRequest.type = Types::GetAccessPointPolicyRequest
    GetAccessPointPolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    GetAccessPointPolicyResult.type = Types::GetAccessPointPolicyResult
    GetAccessPointPolicyStatusForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessPointPolicyStatusForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessPointPolicyStatusForObjectLambdaRequest.type = Types::GetAccessPointPolicyStatusForObjectLambdaRequest
    GetAccessPointPolicyStatusForObjectLambdaResult.add_member(:policy_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyStatus, location_name: "PolicyStatus"))
    GetAccessPointPolicyStatusForObjectLambdaResult.type = Types::GetAccessPointPolicyStatusForObjectLambdaResult
    GetAccessPointPolicyStatusRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessPointPolicyStatusRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    GetAccessPointPolicyStatusRequest.type = Types::GetAccessPointPolicyStatusRequest
    GetAccessPointPolicyStatusResult.add_member(:policy_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyStatus, location_name: "PolicyStatus"))
    GetAccessPointPolicyStatusResult.type = Types::GetAccessPointPolicyStatusResult
    GetAccessPointRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessPointRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    GetAccessPointRequest.type = Types::GetAccessPointRequest
    GetAccessPointResult.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointName, location_name: "Name"))
    GetAccessPointResult.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointBucketName, location_name: "Bucket"))
    GetAccessPointResult.add_member(:network_origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkOrigin, location_name: "NetworkOrigin"))
    GetAccessPointResult.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    GetAccessPointResult.add_member(:public_access_block_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublicAccessBlockConfiguration, location_name: "PublicAccessBlockConfiguration"))
    GetAccessPointResult.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: "CreationDate"))
    GetAccessPointResult.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Alias, location_name: "Alias"))
    GetAccessPointResult.add_member(:access_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessPointArn, location_name: "AccessPointArn"))
    GetAccessPointResult.add_member(:endpoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoints, location_name: "Endpoints"))
    GetAccessPointResult.add_member(:bucket_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "BucketAccountId"))
    GetAccessPointResult.add_member(:data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: "DataSourceId"))
    GetAccessPointResult.add_member(:data_source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: "DataSourceType"))
    GetAccessPointResult.type = Types::GetAccessPointResult
    GetAccessPointScopeRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "x-amz-account-id", "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessPointScopeRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    GetAccessPointScopeRequest.type = Types::GetAccessPointScopeRequest
    GetAccessPointScopeResult.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: "Scope"))
    GetAccessPointScopeResult.type = Types::GetAccessPointScopeResult
    GetBucketLifecycleConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetBucketLifecycleConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketLifecycleConfigurationRequest.type = Types::GetBucketLifecycleConfigurationRequest
    GetBucketLifecycleConfigurationResult.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleRules, location_name: "Rules"))
    GetBucketLifecycleConfigurationResult.type = Types::GetBucketLifecycleConfigurationResult
    GetBucketPolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetBucketPolicyRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketPolicyRequest.type = Types::GetBucketPolicyRequest
    GetBucketPolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    GetBucketPolicyResult.type = Types::GetBucketPolicyResult
    GetBucketReplicationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetBucketReplicationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketReplicationRequest.type = Types::GetBucketReplicationRequest
    GetBucketReplicationResult.add_member(:replication_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfiguration, location_name: "ReplicationConfiguration"))
    GetBucketReplicationResult.type = Types::GetBucketReplicationResult
    GetBucketRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetBucketRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketRequest.type = Types::GetBucketRequest
    GetBucketResult.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket"))
    GetBucketResult.add_member(:public_access_block_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublicAccessBlockEnabled, location_name: "PublicAccessBlockEnabled", traits: {"smithy.api#default" => false}))
    GetBucketResult.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: "CreationDate"))
    GetBucketResult.type = Types::GetBucketResult
    GetBucketTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetBucketTaggingRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketTaggingRequest.type = Types::GetBucketTaggingRequest
    GetBucketTaggingResult.add_member(:tag_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3TagSet, location_name: "TagSet", traits: {"smithy.api#required" => {}}))
    GetBucketTaggingResult.type = Types::GetBucketTaggingResult
    GetBucketVersioningRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetBucketVersioningRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketVersioningRequest.type = Types::GetBucketVersioningRequest
    GetBucketVersioningResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketVersioningStatus, location_name: "Status"))
    GetBucketVersioningResult.add_member(:mfa_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MFADeleteStatus, location_name: "MFADelete", traits: {"smithy.api#xmlName" => "MfaDelete"}))
    GetBucketVersioningResult.type = Types::GetBucketVersioningResult
    GetDataAccessRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetDataAccessRequest.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "Target", traits: {"smithy.api#httpQuery" => "target", "smithy.api#required" => {}}))
    GetDataAccessRequest.add_member(:permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permission, location_name: "Permission", traits: {"smithy.api#httpQuery" => "permission", "smithy.api#required" => {}}))
    GetDataAccessRequest.add_member(:duration_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DurationSeconds, location_name: "DurationSeconds", traits: {"smithy.api#httpQuery" => "durationSeconds"}))
    GetDataAccessRequest.add_member(:privilege, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Privilege, location_name: "Privilege", traits: {"smithy.api#httpQuery" => "privilege"}))
    GetDataAccessRequest.add_member(:target_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3PrefixType, location_name: "TargetType", traits: {"smithy.api#httpQuery" => "targetType"}))
    GetDataAccessRequest.type = Types::GetDataAccessRequest
    GetDataAccessResult.add_member(:credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Credentials, location_name: "Credentials"))
    GetDataAccessResult.add_member(:matched_grant_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "MatchedGrantTarget"))
    GetDataAccessResult.add_member(:grantee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Grantee, location_name: "Grantee"))
    GetDataAccessResult.type = Types::GetDataAccessResult
    GetJobTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetJobTaggingRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobTaggingRequest.type = Types::GetJobTaggingRequest
    GetJobTaggingResult.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3TagSet, location_name: "Tags"))
    GetJobTaggingResult.type = Types::GetJobTaggingResult
    GetMultiRegionAccessPointPolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetMultiRegionAccessPointPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMultiRegionAccessPointPolicyRequest.type = Types::GetMultiRegionAccessPointPolicyRequest
    GetMultiRegionAccessPointPolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointPolicyDocument, location_name: "Policy"))
    GetMultiRegionAccessPointPolicyResult.type = Types::GetMultiRegionAccessPointPolicyResult
    GetMultiRegionAccessPointPolicyStatusRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetMultiRegionAccessPointPolicyStatusRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMultiRegionAccessPointPolicyStatusRequest.type = Types::GetMultiRegionAccessPointPolicyStatusRequest
    GetMultiRegionAccessPointPolicyStatusResult.add_member(:established, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyStatus, location_name: "Established"))
    GetMultiRegionAccessPointPolicyStatusResult.type = Types::GetMultiRegionAccessPointPolicyStatusResult
    GetMultiRegionAccessPointRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetMultiRegionAccessPointRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMultiRegionAccessPointRequest.type = Types::GetMultiRegionAccessPointRequest
    GetMultiRegionAccessPointResult.add_member(:access_point, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointReport, location_name: "AccessPoint"))
    GetMultiRegionAccessPointResult.type = Types::GetMultiRegionAccessPointResult
    GetMultiRegionAccessPointRoutesRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetMultiRegionAccessPointRoutesRequest.add_member(:mrap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointId, location_name: "Mrap", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMultiRegionAccessPointRoutesRequest.type = Types::GetMultiRegionAccessPointRoutesRequest
    GetMultiRegionAccessPointRoutesResult.add_member(:mrap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointId, location_name: "Mrap"))
    GetMultiRegionAccessPointRoutesResult.add_member(:routes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteList, location_name: "Routes"))
    GetMultiRegionAccessPointRoutesResult.type = Types::GetMultiRegionAccessPointRoutesResult
    GetPublicAccessBlockOutput.add_member(:public_access_block_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublicAccessBlockConfiguration, location_name: "PublicAccessBlockConfiguration", traits: {"smithy.api#httpPayload" => {}}))
    GetPublicAccessBlockOutput[:http_payload] = :public_access_block_configuration
    GetPublicAccessBlockOutput[:http_payload_member] = GetPublicAccessBlockOutput.member(:public_access_block_configuration)
    GetPublicAccessBlockOutput.type = Types::GetPublicAccessBlockOutput
    GetPublicAccessBlockRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetPublicAccessBlockRequest.type = Types::GetPublicAccessBlockRequest
    GetStorageLensConfigurationRequest.add_member(:config_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigId, location_name: "ConfigId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStorageLensConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetStorageLensConfigurationRequest.type = Types::GetStorageLensConfigurationRequest
    GetStorageLensConfigurationResult.add_member(:storage_lens_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensConfiguration, location_name: "StorageLensConfiguration", traits: {"smithy.api#httpPayload" => {}}))
    GetStorageLensConfigurationResult[:http_payload] = :storage_lens_configuration
    GetStorageLensConfigurationResult[:http_payload_member] = GetStorageLensConfigurationResult.member(:storage_lens_configuration)
    GetStorageLensConfigurationResult.type = Types::GetStorageLensConfigurationResult
    GetStorageLensConfigurationTaggingRequest.add_member(:config_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigId, location_name: "ConfigId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStorageLensConfigurationTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetStorageLensConfigurationTaggingRequest.type = Types::GetStorageLensConfigurationTaggingRequest
    GetStorageLensConfigurationTaggingResult.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensTags, location_name: "Tags"))
    GetStorageLensConfigurationTaggingResult.type = Types::GetStorageLensConfigurationTaggingResult
    GetStorageLensGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStorageLensGroupRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetStorageLensGroupRequest.type = Types::GetStorageLensGroupRequest
    GetStorageLensGroupResult.add_member(:storage_lens_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroup, location_name: "StorageLensGroup", traits: {"smithy.api#httpPayload" => {}}))
    GetStorageLensGroupResult[:http_payload] = :storage_lens_group
    GetStorageLensGroupResult[:http_payload_member] = GetStorageLensGroupResult.member(:storage_lens_group)
    GetStorageLensGroupResult.type = Types::GetStorageLensGroupResult
    Grantee.add_member(:grantee_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GranteeType, location_name: "GranteeType"))
    Grantee.add_member(:grantee_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GranteeIdentifier, location_name: "GranteeIdentifier"))
    Grantee.type = Types::Grantee
    GranteeType.add_member(:directory_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIRECTORY_USER", traits: {"smithy.api#enumValue" => "DIRECTORY_USER"}))
    GranteeType.add_member(:directory_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIRECTORY_GROUP", traits: {"smithy.api#enumValue" => "DIRECTORY_GROUP"}))
    GranteeType.add_member(:iam, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IAM", traits: {"smithy.api#enumValue" => "IAM"}))
    IdempotencyException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    IdempotencyException.type = Types::IdempotencyException
    Include.add_member(:buckets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Buckets, location_name: "Buckets"))
    Include.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Regions, location_name: "Regions"))
    Include.type = Types::Include
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InternalServiceException.type = Types::InternalServiceException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    JobDescriptor.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    JobDescriptor.add_member(:confirmation_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmationRequired, location_name: "ConfirmationRequired", traits: {"smithy.api#default" => nil}))
    JobDescriptor.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength256String, location_name: "Description"))
    JobDescriptor.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobArn, location_name: "JobArn"))
    JobDescriptor.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: "Status"))
    JobDescriptor.add_member(:manifest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobManifest, location_name: "Manifest"))
    JobDescriptor.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobOperation, location_name: "Operation"))
    JobDescriptor.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobPriority, location_name: "Priority", traits: {"smithy.api#default" => 0}))
    JobDescriptor.add_member(:progress_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobProgressSummary, location_name: "ProgressSummary"))
    JobDescriptor.add_member(:status_update_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusUpdateReason, location_name: "StatusUpdateReason"))
    JobDescriptor.add_member(:failure_reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobFailureList, location_name: "FailureReasons"))
    JobDescriptor.add_member(:report, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobReport, location_name: "Report"))
    JobDescriptor.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobCreationTime, location_name: "CreationTime"))
    JobDescriptor.add_member(:termination_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTerminationDate, location_name: "TerminationDate"))
    JobDescriptor.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "RoleArn"))
    JobDescriptor.add_member(:suspended_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuspendedDate, location_name: "SuspendedDate"))
    JobDescriptor.add_member(:suspended_cause, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuspendedCause, location_name: "SuspendedCause"))
    JobDescriptor.add_member(:manifest_generator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobManifestGenerator, location_name: "ManifestGenerator"))
    JobDescriptor.add_member(:generated_manifest_descriptor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3GeneratedManifestDescriptor, location_name: "GeneratedManifestDescriptor"))
    JobDescriptor.type = Types::JobDescriptor
    JobFailure.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobFailureCode, location_name: "FailureCode"))
    JobFailure.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobFailureReason, location_name: "FailureReason"))
    JobFailure.type = Types::JobFailure
    JobFailureList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobFailure)
    JobListDescriptor.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    JobListDescriptor.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength256String, location_name: "Description"))
    JobListDescriptor.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationName, location_name: "Operation"))
    JobListDescriptor.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobPriority, location_name: "Priority", traits: {"smithy.api#default" => 0}))
    JobListDescriptor.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: "Status"))
    JobListDescriptor.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobCreationTime, location_name: "CreationTime"))
    JobListDescriptor.add_member(:termination_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTerminationDate, location_name: "TerminationDate"))
    JobListDescriptor.add_member(:progress_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobProgressSummary, location_name: "ProgressSummary"))
    JobListDescriptor.type = Types::JobListDescriptor
    JobListDescriptorList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobListDescriptor)
    JobManifest.add_member(:spec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobManifestSpec, location_name: "Spec", traits: {"smithy.api#required" => {}}))
    JobManifest.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobManifestLocation, location_name: "Location", traits: {"smithy.api#required" => {}}))
    JobManifest.type = Types::JobManifest
    JobManifestFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobManifestFieldName)
    JobManifestFieldName.add_member(:ignore, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Ignore", traits: {"smithy.api#enumValue" => "Ignore"}))
    JobManifestFieldName.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Bucket", traits: {"smithy.api#enumValue" => "Bucket"}))
    JobManifestFieldName.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Key", traits: {"smithy.api#enumValue" => "Key"}))
    JobManifestFieldName.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VersionId", traits: {"smithy.api#enumValue" => "VersionId"}))
    JobManifestFormat.add_member(:s3_batch_operations_csv_20180820, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3BatchOperations_CSV_20180820", traits: {"smithy.api#enumValue" => "S3BatchOperations_CSV_20180820"}))
    JobManifestFormat.add_member(:s3_inventory_report_csv_20161130, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3InventoryReport_CSV_20161130", traits: {"smithy.api#enumValue" => "S3InventoryReport_CSV_20161130"}))
    JobManifestGenerator.add_member(:s3_job_manifest_generator, Types::JobManifestGenerator::S3JobManifestGenerator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3JobManifestGenerator, location_name: "S3JobManifestGenerator"))
    JobManifestGenerator.add_member(:unknown, Types::JobManifestGenerator::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    JobManifestGenerator.type = Types::JobManifestGenerator
    JobManifestGeneratorFilter.add_member(:eligible_for_replication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "EligibleForReplication", traits: {"smithy.api#default" => nil}))
    JobManifestGeneratorFilter.add_member(:created_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectCreationTime, location_name: "CreatedAfter"))
    JobManifestGeneratorFilter.add_member(:created_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectCreationTime, location_name: "CreatedBefore"))
    JobManifestGeneratorFilter.add_member(:object_replication_statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationStatusFilterList, location_name: "ObjectReplicationStatuses"))
    JobManifestGeneratorFilter.add_member(:key_name_constraint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyNameConstraint, location_name: "KeyNameConstraint"))
    JobManifestGeneratorFilter.add_member(:object_size_greater_than_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectSizeGreaterThanBytes, location_name: "ObjectSizeGreaterThanBytes", traits: {"smithy.api#default" => nil}))
    JobManifestGeneratorFilter.add_member(:object_size_less_than_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectSizeLessThanBytes, location_name: "ObjectSizeLessThanBytes", traits: {"smithy.api#default" => nil}))
    JobManifestGeneratorFilter.add_member(:match_any_storage_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageClassList, location_name: "MatchAnyStorageClass"))
    JobManifestGeneratorFilter.add_member(:match_any_object_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectEncryptionFilterList, location_name: "MatchAnyObjectEncryption"))
    JobManifestGeneratorFilter.type = Types::JobManifestGeneratorFilter
    JobManifestLocation.add_member(:object_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3KeyArnString, location_name: "ObjectArn", traits: {"smithy.api#required" => {}}))
    JobManifestLocation.add_member(:object_version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectVersionId, location_name: "ObjectVersionId"))
    JobManifestLocation.add_member(:e_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "ETag", traits: {"smithy.api#required" => {}}))
    JobManifestLocation.type = Types::JobManifestLocation
    JobManifestSpec.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobManifestFormat, location_name: "Format", traits: {"smithy.api#required" => {}}))
    JobManifestSpec.add_member(:fields, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobManifestFieldList, location_name: "Fields"))
    JobManifestSpec.type = Types::JobManifestSpec
    JobOperation.add_member(:lambda_invoke, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LambdaInvokeOperation, location_name: "LambdaInvoke"))
    JobOperation.add_member(:s3_put_object_copy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3CopyObjectOperation, location_name: "S3PutObjectCopy"))
    JobOperation.add_member(:s3_put_object_acl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3SetObjectAclOperation, location_name: "S3PutObjectAcl"))
    JobOperation.add_member(:s3_put_object_tagging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3SetObjectTaggingOperation, location_name: "S3PutObjectTagging"))
    JobOperation.add_member(:s3_delete_object_tagging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3DeleteObjectTaggingOperation, location_name: "S3DeleteObjectTagging"))
    JobOperation.add_member(:s3_initiate_restore_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3InitiateRestoreObjectOperation, location_name: "S3InitiateRestoreObject"))
    JobOperation.add_member(:s3_put_object_legal_hold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3SetObjectLegalHoldOperation, location_name: "S3PutObjectLegalHold"))
    JobOperation.add_member(:s3_put_object_retention, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3SetObjectRetentionOperation, location_name: "S3PutObjectRetention"))
    JobOperation.add_member(:s3_replicate_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ReplicateObjectOperation, location_name: "S3ReplicateObject"))
    JobOperation.add_member(:s3_compute_object_checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ComputeObjectChecksumOperation, location_name: "S3ComputeObjectChecksum"))
    JobOperation.type = Types::JobOperation
    JobProgressSummary.add_member(:total_number_of_tasks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTotalNumberOfTasks, location_name: "TotalNumberOfTasks", traits: {"smithy.api#default" => nil}))
    JobProgressSummary.add_member(:number_of_tasks_succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobNumberOfTasksSucceeded, location_name: "NumberOfTasksSucceeded", traits: {"smithy.api#default" => nil}))
    JobProgressSummary.add_member(:number_of_tasks_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobNumberOfTasksFailed, location_name: "NumberOfTasksFailed", traits: {"smithy.api#default" => nil}))
    JobProgressSummary.add_member(:timers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimers, location_name: "Timers"))
    JobProgressSummary.type = Types::JobProgressSummary
    JobReport.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketArnString, location_name: "Bucket"))
    JobReport.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobReportFormat, location_name: "Format"))
    JobReport.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    JobReport.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPrefixString, location_name: "Prefix"))
    JobReport.add_member(:report_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobReportScope, location_name: "ReportScope"))
    JobReport.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "ExpectedBucketOwner"))
    JobReport.type = Types::JobReport
    JobReportFormat.add_member(:report_csv_20180820, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Report_CSV_20180820", traits: {"smithy.api#enumValue" => "Report_CSV_20180820"}))
    JobReportScope.add_member(:all_tasks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AllTasks", traits: {"smithy.api#enumValue" => "AllTasks"}))
    JobReportScope.add_member(:failed_tasks_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FailedTasksOnly", traits: {"smithy.api#enumValue" => "FailedTasksOnly"}))
    JobStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    JobStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Cancelled", traits: {"smithy.api#enumValue" => "Cancelled"}))
    JobStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Cancelling", traits: {"smithy.api#enumValue" => "Cancelling"}))
    JobStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Complete", traits: {"smithy.api#enumValue" => "Complete"}))
    JobStatus.add_member(:completing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Completing", traits: {"smithy.api#enumValue" => "Completing"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    JobStatus.add_member(:failing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Failing", traits: {"smithy.api#enumValue" => "Failing"}))
    JobStatus.add_member(:new, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "New", traits: {"smithy.api#enumValue" => "New"}))
    JobStatus.add_member(:paused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Paused", traits: {"smithy.api#enumValue" => "Paused"}))
    JobStatus.add_member(:pausing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Pausing", traits: {"smithy.api#enumValue" => "Pausing"}))
    JobStatus.add_member(:preparing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Preparing", traits: {"smithy.api#enumValue" => "Preparing"}))
    JobStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Ready", traits: {"smithy.api#enumValue" => "Ready"}))
    JobStatus.add_member(:suspended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Suspended", traits: {"smithy.api#enumValue" => "Suspended"}))
    JobStatusException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    JobStatusException.type = Types::JobStatusException
    JobStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus)
    JobTimers.add_member(:elapsed_time_in_active_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobTimeInStateSeconds, location_name: "ElapsedTimeInActiveSeconds", traits: {"smithy.api#default" => nil}))
    JobTimers.type = Types::JobTimers
    KeyNameConstraint.add_member(:match_any_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024StringList, location_name: "MatchAnyPrefix"))
    KeyNameConstraint.add_member(:match_any_suffix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024StringList, location_name: "MatchAnySuffix"))
    KeyNameConstraint.add_member(:match_any_substring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024StringList, location_name: "MatchAnySubstring"))
    KeyNameConstraint.type = Types::KeyNameConstraint
    LambdaInvokeOperation.add_member(:function_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionArnString, location_name: "FunctionArn"))
    LambdaInvokeOperation.add_member(:invocation_schema_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength64String, location_name: "InvocationSchemaVersion"))
    LambdaInvokeOperation.add_member(:user_arguments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserArguments, location_name: "UserArguments"))
    LambdaInvokeOperation.type = Types::LambdaInvokeOperation
    LifecycleConfiguration.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleRules, location_name: "Rules"))
    LifecycleConfiguration.type = Types::LifecycleConfiguration
    LifecycleExpiration.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "Date"))
    LifecycleExpiration.add_member(:days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Days, location_name: "Days", traits: {"smithy.api#default" => 0}))
    LifecycleExpiration.add_member(:expired_object_delete_marker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredObjectDeleteMarker, location_name: "ExpiredObjectDeleteMarker", traits: {"smithy.api#default" => false}))
    LifecycleExpiration.type = Types::LifecycleExpiration
    LifecycleRule.add_member(:expiration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleExpiration, location_name: "Expiration"))
    LifecycleRule.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: "ID"))
    LifecycleRule.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleRuleFilter, location_name: "Filter"))
    LifecycleRule.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExpirationStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    LifecycleRule.add_member(:transitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitionList, location_name: "Transitions"))
    LifecycleRule.add_member(:noncurrent_version_transitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoncurrentVersionTransitionList, location_name: "NoncurrentVersionTransitions"))
    LifecycleRule.add_member(:noncurrent_version_expiration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoncurrentVersionExpiration, location_name: "NoncurrentVersionExpiration"))
    LifecycleRule.add_member(:abort_incomplete_multipart_upload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AbortIncompleteMultipartUpload, location_name: "AbortIncompleteMultipartUpload"))
    LifecycleRule.type = Types::LifecycleRule
    LifecycleRuleAndOperator.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    LifecycleRuleAndOperator.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3TagSet, location_name: "Tags"))
    LifecycleRuleAndOperator.add_member(:object_size_greater_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectSizeGreaterThanBytes, location_name: "ObjectSizeGreaterThan", traits: {"smithy.api#default" => nil}))
    LifecycleRuleAndOperator.add_member(:object_size_less_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectSizeLessThanBytes, location_name: "ObjectSizeLessThan", traits: {"smithy.api#default" => nil}))
    LifecycleRuleAndOperator.type = Types::LifecycleRuleAndOperator
    LifecycleRuleFilter.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    LifecycleRuleFilter.add_member(:tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Tag, location_name: "Tag"))
    LifecycleRuleFilter.add_member(:and, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleRuleAndOperator, location_name: "And"))
    LifecycleRuleFilter.add_member(:object_size_greater_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectSizeGreaterThanBytes, location_name: "ObjectSizeGreaterThan", traits: {"smithy.api#default" => nil}))
    LifecycleRuleFilter.add_member(:object_size_less_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectSizeLessThanBytes, location_name: "ObjectSizeLessThan", traits: {"smithy.api#default" => nil}))
    LifecycleRuleFilter.type = Types::LifecycleRuleFilter
    LifecycleRules.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleRule, traits: {"smithy.api#xmlName" => "Rule"})
    ListAccessGrantEntry.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "CreatedAt"))
    ListAccessGrantEntry.add_member(:access_grant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantId, location_name: "AccessGrantId"))
    ListAccessGrantEntry.add_member(:access_grant_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantArn, location_name: "AccessGrantArn"))
    ListAccessGrantEntry.add_member(:grantee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Grantee, location_name: "Grantee"))
    ListAccessGrantEntry.add_member(:permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permission, location_name: "Permission"))
    ListAccessGrantEntry.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationId, location_name: "AccessGrantsLocationId"))
    ListAccessGrantEntry.add_member(:access_grants_location_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationConfiguration, location_name: "AccessGrantsLocationConfiguration"))
    ListAccessGrantEntry.add_member(:grant_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "GrantScope"))
    ListAccessGrantEntry.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: "ApplicationArn"))
    ListAccessGrantEntry.type = Types::ListAccessGrantEntry
    ListAccessGrantsInstanceEntry.add_member(:access_grants_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsInstanceId, location_name: "AccessGrantsInstanceId"))
    ListAccessGrantsInstanceEntry.add_member(:access_grants_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsInstanceArn, location_name: "AccessGrantsInstanceArn"))
    ListAccessGrantsInstanceEntry.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "CreatedAt"))
    ListAccessGrantsInstanceEntry.add_member(:identity_center_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterArn, location_name: "IdentityCenterArn", traits: {"smithy.api#deprecated" => {"message" => "IdentityCenterArn has been deprecated. Use IdentityCenterInstanceArn or IdentityCenterApplicationArn."}}))
    ListAccessGrantsInstanceEntry.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterArn, location_name: "IdentityCenterInstanceArn"))
    ListAccessGrantsInstanceEntry.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: "IdentityCenterApplicationArn"))
    ListAccessGrantsInstanceEntry.type = Types::ListAccessGrantsInstanceEntry
    ListAccessGrantsInstancesRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListAccessGrantsInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessGrantsInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListAccessGrantsInstancesRequest.type = Types::ListAccessGrantsInstancesRequest
    ListAccessGrantsInstancesResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "NextToken"))
    ListAccessGrantsInstancesResult.add_member(:access_grants_instances_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsInstancesList, location_name: "AccessGrantsInstancesList"))
    ListAccessGrantsInstancesResult.type = Types::ListAccessGrantsInstancesResult
    ListAccessGrantsLocationsEntry.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "CreatedAt"))
    ListAccessGrantsLocationsEntry.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationId, location_name: "AccessGrantsLocationId"))
    ListAccessGrantsLocationsEntry.add_member(:access_grants_location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationArn, location_name: "AccessGrantsLocationArn"))
    ListAccessGrantsLocationsEntry.add_member(:location_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "LocationScope"))
    ListAccessGrantsLocationsEntry.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IAMRoleArn"))
    ListAccessGrantsLocationsEntry.type = Types::ListAccessGrantsLocationsEntry
    ListAccessGrantsLocationsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListAccessGrantsLocationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessGrantsLocationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListAccessGrantsLocationsRequest.add_member(:location_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "LocationScope", traits: {"smithy.api#httpQuery" => "locationscope"}))
    ListAccessGrantsLocationsRequest.type = Types::ListAccessGrantsLocationsRequest
    ListAccessGrantsLocationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "NextToken"))
    ListAccessGrantsLocationsResult.add_member(:access_grants_locations_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationsList, location_name: "AccessGrantsLocationsList"))
    ListAccessGrantsLocationsResult.type = Types::ListAccessGrantsLocationsResult
    ListAccessGrantsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListAccessGrantsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessGrantsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListAccessGrantsRequest.add_member(:grantee_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GranteeType, location_name: "GranteeType", traits: {"smithy.api#httpQuery" => "granteetype"}))
    ListAccessGrantsRequest.add_member(:grantee_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GranteeIdentifier, location_name: "GranteeIdentifier", traits: {"smithy.api#httpQuery" => "granteeidentifier"}))
    ListAccessGrantsRequest.add_member(:permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permission, location_name: "Permission", traits: {"smithy.api#httpQuery" => "permission"}))
    ListAccessGrantsRequest.add_member(:grant_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "GrantScope", traits: {"smithy.api#httpQuery" => "grantscope"}))
    ListAccessGrantsRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: "ApplicationArn", traits: {"smithy.api#httpQuery" => "application_arn"}))
    ListAccessGrantsRequest.type = Types::ListAccessGrantsRequest
    ListAccessGrantsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "NextToken"))
    ListAccessGrantsResult.add_member(:access_grants_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsList, location_name: "AccessGrantsList"))
    ListAccessGrantsResult.type = Types::ListAccessGrantsResult
    ListAccessPointsForDirectoryBucketsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "x-amz-account-id", "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListAccessPointsForDirectoryBucketsRequest.add_member(:directory_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "DirectoryBucket", traits: {"smithy.api#httpQuery" => "directoryBucket"}))
    ListAccessPointsForDirectoryBucketsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessPointsForDirectoryBucketsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListAccessPointsForDirectoryBucketsRequest.type = Types::ListAccessPointsForDirectoryBucketsRequest
    ListAccessPointsForDirectoryBucketsResult.add_member(:access_point_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointList, location_name: "AccessPointList"))
    ListAccessPointsForDirectoryBucketsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "NextToken"))
    ListAccessPointsForDirectoryBucketsResult.type = Types::ListAccessPointsForDirectoryBucketsResult
    ListAccessPointsForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListAccessPointsForObjectLambdaRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessPointsForObjectLambdaRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListAccessPointsForObjectLambdaRequest.type = Types::ListAccessPointsForObjectLambdaRequest
    ListAccessPointsForObjectLambdaResult.add_member(:object_lambda_access_point_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointList, location_name: "ObjectLambdaAccessPointList"))
    ListAccessPointsForObjectLambdaResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "NextToken"))
    ListAccessPointsForObjectLambdaResult.type = Types::ListAccessPointsForObjectLambdaResult
    ListAccessPointsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListAccessPointsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpQuery" => "bucket", "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    ListAccessPointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessPointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListAccessPointsRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceId, location_name: "DataSourceId", traits: {"smithy.api#httpQuery" => "dataSourceId"}))
    ListAccessPointsRequest.add_member(:data_source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: "DataSourceType", traits: {"smithy.api#httpQuery" => "dataSourceType"}))
    ListAccessPointsRequest.type = Types::ListAccessPointsRequest
    ListAccessPointsResult.add_member(:access_point_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointList, location_name: "AccessPointList"))
    ListAccessPointsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "NextToken"))
    ListAccessPointsResult.type = Types::ListAccessPointsResult
    ListCallerAccessGrantsEntry.add_member(:permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permission, location_name: "Permission"))
    ListCallerAccessGrantsEntry.add_member(:grant_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "GrantScope"))
    ListCallerAccessGrantsEntry.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityCenterApplicationArn, location_name: "ApplicationArn"))
    ListCallerAccessGrantsEntry.type = Types::ListCallerAccessGrantsEntry
    ListCallerAccessGrantsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListCallerAccessGrantsRequest.add_member(:grant_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "GrantScope", traits: {"smithy.api#httpQuery" => "grantscope"}))
    ListCallerAccessGrantsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCallerAccessGrantsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListCallerAccessGrantsRequest.add_member(:allowed_by_application, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowedByApplication", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "allowedByApplication"}))
    ListCallerAccessGrantsRequest.type = Types::ListCallerAccessGrantsRequest
    ListCallerAccessGrantsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "NextToken"))
    ListCallerAccessGrantsResult.add_member(:caller_access_grants_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallerAccessGrantsList, location_name: "CallerAccessGrantsList"))
    ListCallerAccessGrantsResult.type = Types::ListCallerAccessGrantsResult
    ListJobsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListJobsRequest.add_member(:job_statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusList, location_name: "JobStatuses", traits: {"smithy.api#httpQuery" => "jobStatuses"}))
    ListJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringForNextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListJobsRequest.type = Types::ListJobsRequest
    ListJobsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringForNextToken, location_name: "NextToken"))
    ListJobsResult.add_member(:jobs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobListDescriptorList, location_name: "Jobs"))
    ListJobsResult.type = Types::ListJobsResult
    ListMultiRegionAccessPointsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListMultiRegionAccessPointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMultiRegionAccessPointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListMultiRegionAccessPointsRequest.type = Types::ListMultiRegionAccessPointsRequest
    ListMultiRegionAccessPointsResult.add_member(:access_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointReportList, location_name: "AccessPoints"))
    ListMultiRegionAccessPointsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "NextToken"))
    ListMultiRegionAccessPointsResult.type = Types::ListMultiRegionAccessPointsResult
    ListRegionalBucketsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListRegionalBucketsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRegionalBucketsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListRegionalBucketsRequest.add_member(:outpost_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength64String, location_name: "OutpostId", traits: {"smithy.api#httpHeader" => "x-amz-outpost-id", "smithy.rules#contextParam" => {"name" => "OutpostId"}}))
    ListRegionalBucketsRequest.type = Types::ListRegionalBucketsRequest
    ListRegionalBucketsResult.add_member(:regional_bucket_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionalBucketList, location_name: "RegionalBucketList"))
    ListRegionalBucketsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "NextToken"))
    ListRegionalBucketsResult.type = Types::ListRegionalBucketsResult
    ListStorageLensConfigurationEntry.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigId, location_name: "Id", traits: {"smithy.api#required" => {}}))
    ListStorageLensConfigurationEntry.add_member(:storage_lens_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensArn, location_name: "StorageLensArn", traits: {"smithy.api#required" => {}}))
    ListStorageLensConfigurationEntry.add_member(:home_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AWSRegion, location_name: "HomeRegion", traits: {"smithy.api#required" => {}}))
    ListStorageLensConfigurationEntry.add_member(:is_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsEnabled, location_name: "IsEnabled", traits: {"smithy.api#default" => false}))
    ListStorageLensConfigurationEntry.type = Types::ListStorageLensConfigurationEntry
    ListStorageLensConfigurationsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListStorageLensConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListStorageLensConfigurationsRequest.type = Types::ListStorageLensConfigurationsRequest
    ListStorageLensConfigurationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "NextToken"))
    ListStorageLensConfigurationsResult.add_member(:storage_lens_configuration_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensConfigurationList, location_name: "StorageLensConfigurationList", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "StorageLensConfiguration"}))
    ListStorageLensConfigurationsResult.type = Types::ListStorageLensConfigurationsResult
    ListStorageLensGroupEntry.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ListStorageLensGroupEntry.add_member(:storage_lens_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupArn, location_name: "StorageLensGroupArn", traits: {"smithy.api#required" => {}}))
    ListStorageLensGroupEntry.add_member(:home_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AWSRegion, location_name: "HomeRegion", traits: {"smithy.api#required" => {}}))
    ListStorageLensGroupEntry.type = Types::ListStorageLensGroupEntry
    ListStorageLensGroupsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListStorageLensGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListStorageLensGroupsRequest.type = Types::ListStorageLensGroupsRequest
    ListStorageLensGroupsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "NextToken"))
    ListStorageLensGroupsResult.add_member(:storage_lens_group_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupList, location_name: "StorageLensGroupList", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "StorageLensGroup"}))
    ListStorageLensGroupsResult.type = Types::ListStorageLensGroupsResult
    ListTagsForResourceRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResult.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResult.type = Types::ListTagsForResourceResult
    MFADelete.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    MFADelete.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    MFADeleteStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    MFADeleteStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    MatchAnyPrefix.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, traits: {"smithy.api#xmlName" => "Prefix"})
    MatchAnySuffix.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Suffix, traits: {"smithy.api#xmlName" => "Suffix"})
    MatchAnyTag.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Tag, traits: {"smithy.api#xmlName" => "Tag"})
    MatchObjectAge.add_member(:days_greater_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectAgeValue, location_name: "DaysGreaterThan", traits: {"smithy.api#default" => 0}))
    MatchObjectAge.add_member(:days_less_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectAgeValue, location_name: "DaysLessThan", traits: {"smithy.api#default" => 0}))
    MatchObjectAge.type = Types::MatchObjectAge
    MatchObjectSize.add_member(:bytes_greater_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectSizeValue, location_name: "BytesGreaterThan", traits: {"smithy.api#default" => 0}))
    MatchObjectSize.add_member(:bytes_less_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectSizeValue, location_name: "BytesLessThan", traits: {"smithy.api#default" => 0}))
    MatchObjectSize.type = Types::MatchObjectSize
    Metrics.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricsStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    Metrics.add_member(:event_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTimeValue, location_name: "EventThreshold"))
    Metrics.type = Types::Metrics
    MetricsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    MetricsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    MultiRegionAccessPointPolicyDocument.add_member(:established, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EstablishedMultiRegionAccessPointPolicy, location_name: "Established"))
    MultiRegionAccessPointPolicyDocument.add_member(:proposed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProposedMultiRegionAccessPointPolicy, location_name: "Proposed"))
    MultiRegionAccessPointPolicyDocument.type = Types::MultiRegionAccessPointPolicyDocument
    MultiRegionAccessPointRegionalResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "Name"))
    MultiRegionAccessPointRegionalResponse.add_member(:request_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncRequestStatus, location_name: "RequestStatus"))
    MultiRegionAccessPointRegionalResponse.type = Types::MultiRegionAccessPointRegionalResponse
    MultiRegionAccessPointRegionalResponseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointRegionalResponse, traits: {"smithy.api#xmlName" => "Region"})
    MultiRegionAccessPointReport.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointName, location_name: "Name"))
    MultiRegionAccessPointReport.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointAlias, location_name: "Alias"))
    MultiRegionAccessPointReport.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "CreatedAt"))
    MultiRegionAccessPointReport.add_member(:public_access_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublicAccessBlockConfiguration, location_name: "PublicAccessBlock"))
    MultiRegionAccessPointReport.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointStatus, location_name: "Status"))
    MultiRegionAccessPointReport.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionReportList, location_name: "Regions"))
    MultiRegionAccessPointReport.type = Types::MultiRegionAccessPointReport
    MultiRegionAccessPointReportList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointReport, traits: {"smithy.api#xmlName" => "AccessPoint"})
    MultiRegionAccessPointRoute.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket"))
    MultiRegionAccessPointRoute.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "Region"))
    MultiRegionAccessPointRoute.add_member(:traffic_dial_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrafficDialPercentage, location_name: "TrafficDialPercentage", traits: {"smithy.api#required" => {}}))
    MultiRegionAccessPointRoute.type = Types::MultiRegionAccessPointRoute
    MultiRegionAccessPointStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    MultiRegionAccessPointStatus.add_member(:inconsistent_across_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCONSISTENT_ACROSS_REGIONS", traits: {"smithy.api#enumValue" => "INCONSISTENT_ACROSS_REGIONS"}))
    MultiRegionAccessPointStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    MultiRegionAccessPointStatus.add_member(:partially_created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARTIALLY_CREATED", traits: {"smithy.api#enumValue" => "PARTIALLY_CREATED"}))
    MultiRegionAccessPointStatus.add_member(:partially_deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARTIALLY_DELETED", traits: {"smithy.api#enumValue" => "PARTIALLY_DELETED"}))
    MultiRegionAccessPointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    MultiRegionAccessPointsAsyncResponse.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointRegionalResponseList, location_name: "Regions"))
    MultiRegionAccessPointsAsyncResponse.type = Types::MultiRegionAccessPointsAsyncResponse
    NetworkOrigin.add_member(:internet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Internet", traits: {"smithy.api#enumValue" => "Internet"}))
    NetworkOrigin.add_member(:vpc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VPC", traits: {"smithy.api#enumValue" => "VPC"}))
    NoSuchPublicAccessBlockConfiguration.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchPublicAccessBlockConfigurationMessage, location_name: "Message"))
    NoSuchPublicAccessBlockConfiguration.type = Types::NoSuchPublicAccessBlockConfiguration
    NonEmptyMaxLength1024StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String)
    NoncurrentVersionExpiration.add_member(:noncurrent_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Days, location_name: "NoncurrentDays", traits: {"smithy.api#default" => 0}))
    NoncurrentVersionExpiration.add_member(:newer_noncurrent_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoncurrentVersionCount, location_name: "NewerNoncurrentVersions", traits: {"smithy.api#default" => nil}))
    NoncurrentVersionExpiration.type = Types::NoncurrentVersionExpiration
    NoncurrentVersionTransition.add_member(:noncurrent_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Days, location_name: "NoncurrentDays", traits: {"smithy.api#default" => 0}))
    NoncurrentVersionTransition.add_member(:storage_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitionStorageClass, location_name: "StorageClass"))
    NoncurrentVersionTransition.type = Types::NoncurrentVersionTransition
    NoncurrentVersionTransitionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoncurrentVersionTransition, traits: {"smithy.api#xmlName" => "NoncurrentVersionTransition"})
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    NotFoundException.type = Types::NotFoundException
    NotSSEFilter.type = Types::NotSSEFilter
    ObjectEncryptionFilter.add_member(:sses3, Types::ObjectEncryptionFilter::SSES3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSES3Filter, location_name: "SSES3", traits: {"smithy.api#xmlName" => "SSE-S3"}))
    ObjectEncryptionFilter.add_member(:ssekms, Types::ObjectEncryptionFilter::SSEKMS, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSEKMSFilter, location_name: "SSEKMS", traits: {"smithy.api#xmlName" => "SSE-KMS"}))
    ObjectEncryptionFilter.add_member(:dssekms, Types::ObjectEncryptionFilter::DSSEKMS, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DSSEKMSFilter, location_name: "DSSEKMS", traits: {"smithy.api#xmlName" => "DSSE-KMS"}))
    ObjectEncryptionFilter.add_member(:ssec, Types::ObjectEncryptionFilter::SSEC, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSECFilter, location_name: "SSEC", traits: {"smithy.api#xmlName" => "SSE-C"}))
    ObjectEncryptionFilter.add_member(:notsse, Types::ObjectEncryptionFilter::NOTSSE, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotSSEFilter, location_name: "NOTSSE", traits: {"smithy.api#xmlName" => "NOT-SSE"}))
    ObjectEncryptionFilter.add_member(:unknown, Types::ObjectEncryptionFilter::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ObjectEncryptionFilter.type = Types::ObjectEncryptionFilter
    ObjectEncryptionFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectEncryptionFilter, traits: {"smithy.api#xmlName" => "ObjectEncryption"})
    ObjectLambdaAccessPoint.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ObjectLambdaAccessPoint.add_member(:object_lambda_access_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointArn, location_name: "ObjectLambdaAccessPointArn"))
    ObjectLambdaAccessPoint.add_member(:alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointAlias, location_name: "Alias"))
    ObjectLambdaAccessPoint.type = Types::ObjectLambdaAccessPoint
    ObjectLambdaAccessPointAlias.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointAliasValue, location_name: "Value"))
    ObjectLambdaAccessPointAlias.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointAliasStatus, location_name: "Status"))
    ObjectLambdaAccessPointAlias.type = Types::ObjectLambdaAccessPointAlias
    ObjectLambdaAccessPointAliasStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    ObjectLambdaAccessPointAliasStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    ObjectLambdaAccessPointList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPoint, traits: {"smithy.api#xmlName" => "ObjectLambdaAccessPoint"})
    ObjectLambdaAllowedFeature.add_member(:get_object_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GetObjectRange", traits: {"smithy.api#enumValue" => "GetObject-Range"}))
    ObjectLambdaAllowedFeature.add_member(:get_object_part_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GetObjectPartNumber", traits: {"smithy.api#enumValue" => "GetObject-PartNumber"}))
    ObjectLambdaAllowedFeature.add_member(:head_object_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HeadObjectRange", traits: {"smithy.api#enumValue" => "HeadObject-Range"}))
    ObjectLambdaAllowedFeature.add_member(:head_object_part_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HeadObjectPartNumber", traits: {"smithy.api#enumValue" => "HeadObject-PartNumber"}))
    ObjectLambdaAllowedFeaturesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAllowedFeature, traits: {"smithy.api#xmlName" => "AllowedFeature"})
    ObjectLambdaConfiguration.add_member(:supporting_access_point, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaSupportingAccessPointArn, location_name: "SupportingAccessPoint", traits: {"smithy.api#required" => {}}))
    ObjectLambdaConfiguration.add_member(:cloud_watch_metrics_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "CloudWatchMetricsEnabled", traits: {"smithy.api#default" => false}))
    ObjectLambdaConfiguration.add_member(:allowed_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAllowedFeaturesList, location_name: "AllowedFeatures"))
    ObjectLambdaConfiguration.add_member(:transformation_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaTransformationConfigurationsList, location_name: "TransformationConfigurations", traits: {"smithy.api#required" => {}}))
    ObjectLambdaConfiguration.type = Types::ObjectLambdaConfiguration
    ObjectLambdaContentTransformation.add_member(:aws_lambda, Types::ObjectLambdaContentTransformation::AwsLambda, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLambdaTransformation, location_name: "AwsLambda"))
    ObjectLambdaContentTransformation.add_member(:unknown, Types::ObjectLambdaContentTransformation::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ObjectLambdaContentTransformation.type = Types::ObjectLambdaContentTransformation
    ObjectLambdaTransformationConfiguration.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaTransformationConfigurationActionsList, location_name: "Actions", traits: {"smithy.api#required" => {}}))
    ObjectLambdaTransformationConfiguration.add_member(:content_transformation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaContentTransformation, location_name: "ContentTransformation", traits: {"smithy.api#required" => {}}))
    ObjectLambdaTransformationConfiguration.type = Types::ObjectLambdaTransformationConfiguration
    ObjectLambdaTransformationConfigurationAction.add_member(:get_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GetObject", traits: {"smithy.api#enumValue" => "GetObject"}))
    ObjectLambdaTransformationConfigurationAction.add_member(:head_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HeadObject", traits: {"smithy.api#enumValue" => "HeadObject"}))
    ObjectLambdaTransformationConfigurationAction.add_member(:list_objects, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ListObjects", traits: {"smithy.api#enumValue" => "ListObjects"}))
    ObjectLambdaTransformationConfigurationAction.add_member(:list_objects_v2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ListObjectsV2", traits: {"smithy.api#enumValue" => "ListObjectsV2"}))
    ObjectLambdaTransformationConfigurationActionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaTransformationConfigurationAction, traits: {"smithy.api#xmlName" => "Action"})
    ObjectLambdaTransformationConfigurationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaTransformationConfiguration, traits: {"smithy.api#xmlName" => "TransformationConfiguration"})
    OperationName.add_member(:lambda_invoke, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LambdaInvoke", traits: {"smithy.api#enumValue" => "LambdaInvoke"}))
    OperationName.add_member(:s3_put_object_copy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3PutObjectCopy", traits: {"smithy.api#enumValue" => "S3PutObjectCopy"}))
    OperationName.add_member(:s3_put_object_acl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3PutObjectAcl", traits: {"smithy.api#enumValue" => "S3PutObjectAcl"}))
    OperationName.add_member(:s3_put_object_tagging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3PutObjectTagging", traits: {"smithy.api#enumValue" => "S3PutObjectTagging"}))
    OperationName.add_member(:s3_delete_object_tagging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3DeleteObjectTagging", traits: {"smithy.api#enumValue" => "S3DeleteObjectTagging"}))
    OperationName.add_member(:s3_initiate_restore_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3InitiateRestoreObject", traits: {"smithy.api#enumValue" => "S3InitiateRestoreObject"}))
    OperationName.add_member(:s3_put_object_legal_hold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3PutObjectLegalHold", traits: {"smithy.api#enumValue" => "S3PutObjectLegalHold"}))
    OperationName.add_member(:s3_put_object_retention, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3PutObjectRetention", traits: {"smithy.api#enumValue" => "S3PutObjectRetention"}))
    OperationName.add_member(:s3_replicate_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3ReplicateObject", traits: {"smithy.api#enumValue" => "S3ReplicateObject"}))
    OperationName.add_member(:s3_compute_object_checksum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3ComputeObjectChecksum", traits: {"smithy.api#enumValue" => "S3ComputeObjectChecksum"}))
    OutputSchemaVersion.add_member(:v_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "V_1", traits: {"smithy.api#enumValue" => "V_1"}))
    OwnerOverride.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Destination", traits: {"smithy.api#enumValue" => "Destination"}))
    Permission.add_member(:read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READ", traits: {"smithy.api#enumValue" => "READ"}))
    Permission.add_member(:write, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WRITE", traits: {"smithy.api#enumValue" => "WRITE"}))
    Permission.add_member(:readwrite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READWRITE", traits: {"smithy.api#enumValue" => "READWRITE"}))
    PolicyStatus.add_member(:is_public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsPublic, location_name: "IsPublic", traits: {"smithy.api#default" => false, "smithy.api#xmlName" => "IsPublic"}))
    PolicyStatus.type = Types::PolicyStatus
    PrefixLevel.add_member(:storage_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefixLevelStorageMetrics, location_name: "StorageMetrics", traits: {"smithy.api#required" => {}}))
    PrefixLevel.type = Types::PrefixLevel
    PrefixLevelStorageMetrics.add_member(:is_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsEnabled, location_name: "IsEnabled", traits: {"smithy.api#default" => false}))
    PrefixLevelStorageMetrics.add_member(:selection_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SelectionCriteria, location_name: "SelectionCriteria"))
    PrefixLevelStorageMetrics.type = Types::PrefixLevelStorageMetrics
    PrefixesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, traits: {"smithy.api#xmlName" => "Prefix"})
    Privilege.add_member(:minimal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Minimal", traits: {"smithy.api#enumValue" => "Minimal"}))
    Privilege.add_member(:default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Default", traits: {"smithy.api#enumValue" => "Default"}))
    ProposedMultiRegionAccessPointPolicy.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    ProposedMultiRegionAccessPointPolicy.type = Types::ProposedMultiRegionAccessPointPolicy
    PublicAccessBlockConfiguration.add_member(:block_public_acls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Setting, location_name: "BlockPublicAcls", traits: {"smithy.api#default" => false, "smithy.api#xmlName" => "BlockPublicAcls"}))
    PublicAccessBlockConfiguration.add_member(:ignore_public_acls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Setting, location_name: "IgnorePublicAcls", traits: {"smithy.api#default" => false, "smithy.api#xmlName" => "IgnorePublicAcls"}))
    PublicAccessBlockConfiguration.add_member(:block_public_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Setting, location_name: "BlockPublicPolicy", traits: {"smithy.api#default" => false, "smithy.api#xmlName" => "BlockPublicPolicy"}))
    PublicAccessBlockConfiguration.add_member(:restrict_public_buckets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Setting, location_name: "RestrictPublicBuckets", traits: {"smithy.api#default" => false, "smithy.api#xmlName" => "RestrictPublicBuckets"}))
    PublicAccessBlockConfiguration.type = Types::PublicAccessBlockConfiguration
    PutAccessGrantsInstanceResourcePolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutAccessGrantsInstanceResourcePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "Policy", traits: {"smithy.api#required" => {}}))
    PutAccessGrantsInstanceResourcePolicyRequest.add_member(:organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Organization, location_name: "Organization"))
    PutAccessGrantsInstanceResourcePolicyRequest.type = Types::PutAccessGrantsInstanceResourcePolicyRequest
    PutAccessGrantsInstanceResourcePolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "Policy"))
    PutAccessGrantsInstanceResourcePolicyResult.add_member(:organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Organization, location_name: "Organization"))
    PutAccessGrantsInstanceResourcePolicyResult.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "CreatedAt"))
    PutAccessGrantsInstanceResourcePolicyResult.type = Types::PutAccessGrantsInstanceResourcePolicyResult
    PutAccessPointConfigurationForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutAccessPointConfigurationForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAccessPointConfigurationForObjectLambdaRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaConfiguration, location_name: "Configuration", traits: {"smithy.api#required" => {}}))
    PutAccessPointConfigurationForObjectLambdaRequest.type = Types::PutAccessPointConfigurationForObjectLambdaRequest
    PutAccessPointPolicyForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutAccessPointPolicyForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAccessPointPolicyForObjectLambdaRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLambdaPolicy, location_name: "Policy", traits: {"smithy.api#required" => {}}))
    PutAccessPointPolicyForObjectLambdaRequest.type = Types::PutAccessPointPolicyForObjectLambdaRequest
    PutAccessPointPolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutAccessPointPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    PutAccessPointPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: "Policy", traits: {"smithy.api#required" => {}}))
    PutAccessPointPolicyRequest.type = Types::PutAccessPointPolicyRequest
    PutAccessPointScopeRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "x-amz-account-id", "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutAccessPointScopeRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    PutAccessPointScopeRequest.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Scope, location_name: "Scope", traits: {"smithy.api#required" => {}}))
    PutAccessPointScopeRequest.type = Types::PutAccessPointScopeRequest
    PutBucketLifecycleConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutBucketLifecycleConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketLifecycleConfigurationRequest.add_member(:lifecycle_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleConfiguration, location_name: "LifecycleConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "LifecycleConfiguration"}))
    PutBucketLifecycleConfigurationRequest[:http_payload] = :lifecycle_configuration
    PutBucketLifecycleConfigurationRequest[:http_payload_member] = PutBucketLifecycleConfigurationRequest.member(:lifecycle_configuration)
    PutBucketLifecycleConfigurationRequest.type = Types::PutBucketLifecycleConfigurationRequest
    PutBucketPolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutBucketPolicyRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketPolicyRequest.add_member(:confirm_remove_self_bucket_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmRemoveSelfBucketAccess, location_name: "ConfirmRemoveSelfBucketAccess", traits: {"smithy.api#default" => false, "smithy.api#httpHeader" => "x-amz-confirm-remove-self-bucket-access"}))
    PutBucketPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: "Policy", traits: {"smithy.api#required" => {}}))
    PutBucketPolicyRequest.type = Types::PutBucketPolicyRequest
    PutBucketReplicationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutBucketReplicationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketReplicationRequest.add_member(:replication_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationConfiguration, location_name: "ReplicationConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "ReplicationConfiguration"}))
    PutBucketReplicationRequest[:http_payload] = :replication_configuration
    PutBucketReplicationRequest[:http_payload_member] = PutBucketReplicationRequest.member(:replication_configuration)
    PutBucketReplicationRequest.type = Types::PutBucketReplicationRequest
    PutBucketTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutBucketTaggingRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketTaggingRequest.add_member(:tagging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tagging, location_name: "Tagging", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "Tagging"}))
    PutBucketTaggingRequest[:http_payload] = :tagging
    PutBucketTaggingRequest[:http_payload_member] = PutBucketTaggingRequest.member(:tagging)
    PutBucketTaggingRequest.type = Types::PutBucketTaggingRequest
    PutBucketVersioningRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutBucketVersioningRequest.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketVersioningRequest.add_member(:mfa, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MFA, location_name: "MFA", traits: {"smithy.api#httpHeader" => "x-amz-mfa"}))
    PutBucketVersioningRequest.add_member(:versioning_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VersioningConfiguration, location_name: "VersioningConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "VersioningConfiguration"}))
    PutBucketVersioningRequest[:http_payload] = :versioning_configuration
    PutBucketVersioningRequest[:http_payload_member] = PutBucketVersioningRequest.member(:versioning_configuration)
    PutBucketVersioningRequest.type = Types::PutBucketVersioningRequest
    PutJobTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutJobTaggingRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutJobTaggingRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3TagSet, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    PutJobTaggingRequest.type = Types::PutJobTaggingRequest
    PutJobTaggingResult.type = Types::PutJobTaggingResult
    PutMultiRegionAccessPointPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    PutMultiRegionAccessPointPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, location_name: "Policy", traits: {"smithy.api#required" => {}}))
    PutMultiRegionAccessPointPolicyInput.type = Types::PutMultiRegionAccessPointPolicyInput
    PutMultiRegionAccessPointPolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutMultiRegionAccessPointPolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    PutMultiRegionAccessPointPolicyRequest.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutMultiRegionAccessPointPolicyInput, location_name: "Details", traits: {"smithy.api#required" => {}}))
    PutMultiRegionAccessPointPolicyRequest.type = Types::PutMultiRegionAccessPointPolicyRequest
    PutMultiRegionAccessPointPolicyResult.add_member(:request_token_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncRequestTokenARN, location_name: "RequestTokenARN"))
    PutMultiRegionAccessPointPolicyResult.type = Types::PutMultiRegionAccessPointPolicyResult
    PutPublicAccessBlockRequest.add_member(:public_access_block_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublicAccessBlockConfiguration, location_name: "PublicAccessBlockConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "PublicAccessBlockConfiguration"}))
    PutPublicAccessBlockRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutPublicAccessBlockRequest[:http_payload] = :public_access_block_configuration
    PutPublicAccessBlockRequest[:http_payload_member] = PutPublicAccessBlockRequest.member(:public_access_block_configuration)
    PutPublicAccessBlockRequest.type = Types::PutPublicAccessBlockRequest
    PutStorageLensConfigurationRequest.add_member(:config_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigId, location_name: "ConfigId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutStorageLensConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutStorageLensConfigurationRequest.add_member(:storage_lens_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensConfiguration, location_name: "StorageLensConfiguration", traits: {"smithy.api#required" => {}}))
    PutStorageLensConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensTags, location_name: "Tags"))
    PutStorageLensConfigurationRequest.type = Types::PutStorageLensConfigurationRequest
    PutStorageLensConfigurationTaggingRequest.add_member(:config_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigId, location_name: "ConfigId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutStorageLensConfigurationTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutStorageLensConfigurationTaggingRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensTags, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    PutStorageLensConfigurationTaggingRequest.type = Types::PutStorageLensConfigurationTaggingRequest
    PutStorageLensConfigurationTaggingResult.type = Types::PutStorageLensConfigurationTaggingResult
    Region.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#required" => {}}))
    Region.add_member(:bucket_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "BucketAccountId"))
    Region.type = Types::Region
    RegionCreationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, traits: {"smithy.api#xmlName" => "Region"})
    RegionReport.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket"))
    RegionReport.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: "Region"))
    RegionReport.add_member(:bucket_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "BucketAccountId"))
    RegionReport.type = Types::RegionReport
    RegionReportList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionReport, traits: {"smithy.api#xmlName" => "Region"})
    RegionalBucket.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket", traits: {"smithy.api#required" => {}}))
    RegionalBucket.add_member(:bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3RegionalBucketArn, location_name: "BucketArn"))
    RegionalBucket.add_member(:public_access_block_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PublicAccessBlockEnabled, location_name: "PublicAccessBlockEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    RegionalBucket.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationDate, location_name: "CreationDate", traits: {"smithy.api#required" => {}}))
    RegionalBucket.add_member(:outpost_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength64String, location_name: "OutpostId"))
    RegionalBucket.type = Types::RegionalBucket
    RegionalBucketList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionalBucket, traits: {"smithy.api#xmlName" => "RegionalBucket"})
    Regions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AWSRegion, traits: {"smithy.api#xmlName" => "Region"})
    ReplicaModifications.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaModificationsStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    ReplicaModifications.type = Types::ReplicaModifications
    ReplicaModificationsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ReplicaModificationsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    ReplicationConfiguration.add_member(:role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Role, location_name: "Role", traits: {"smithy.api#required" => {}}))
    ReplicationConfiguration.add_member(:rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRules, location_name: "Rules", traits: {"smithy.api#required" => {}}))
    ReplicationConfiguration.type = Types::ReplicationConfiguration
    ReplicationRule.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ID, location_name: "ID"))
    ReplicationRule.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Priority, location_name: "Priority", traits: {"smithy.api#default" => nil}))
    ReplicationRule.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix", traits: {"smithy.api#deprecated" => {"message" => "Prefix has been deprecated"}}))
    ReplicationRule.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRuleFilter, location_name: "Filter"))
    ReplicationRule.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRuleStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    ReplicationRule.add_member(:source_selection_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceSelectionCriteria, location_name: "SourceSelectionCriteria"))
    ReplicationRule.add_member(:existing_object_replication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExistingObjectReplication, location_name: "ExistingObjectReplication"))
    ReplicationRule.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: "Destination", traits: {"smithy.api#required" => {}}))
    ReplicationRule.add_member(:delete_marker_replication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMarkerReplication, location_name: "DeleteMarkerReplication"))
    ReplicationRule.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketIdentifierString, location_name: "Bucket", traits: {"smithy.api#required" => {}}))
    ReplicationRule.type = Types::ReplicationRule
    ReplicationRuleAndOperator.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    ReplicationRuleAndOperator.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3TagSet, location_name: "Tags"))
    ReplicationRuleAndOperator.type = Types::ReplicationRuleAndOperator
    ReplicationRuleFilter.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    ReplicationRuleFilter.add_member(:tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Tag, location_name: "Tag"))
    ReplicationRuleFilter.add_member(:and, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRuleAndOperator, location_name: "And"))
    ReplicationRuleFilter.type = Types::ReplicationRuleFilter
    ReplicationRuleStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ReplicationRuleStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    ReplicationRules.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationRule, traits: {"smithy.api#xmlName" => "Rule"})
    ReplicationStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ReplicationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ReplicationStatus.add_member(:replica, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPLICA", traits: {"smithy.api#enumValue" => "REPLICA"}))
    ReplicationStatus.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ReplicationStatusFilterList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationStatus)
    ReplicationStorageClass.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    ReplicationStorageClass.add_member(:reduced_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REDUCED_REDUNDANCY", traits: {"smithy.api#enumValue" => "REDUCED_REDUNDANCY"}))
    ReplicationStorageClass.add_member(:standard_ia, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD_IA", traits: {"smithy.api#enumValue" => "STANDARD_IA"}))
    ReplicationStorageClass.add_member(:onezone_ia, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONEZONE_IA", traits: {"smithy.api#enumValue" => "ONEZONE_IA"}))
    ReplicationStorageClass.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTELLIGENT_TIERING", traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    ReplicationStorageClass.add_member(:glacier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GLACIER", traits: {"smithy.api#enumValue" => "GLACIER"}))
    ReplicationStorageClass.add_member(:deep_archive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEEP_ARCHIVE", traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE"}))
    ReplicationStorageClass.add_member(:outposts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OUTPOSTS", traits: {"smithy.api#enumValue" => "OUTPOSTS"}))
    ReplicationStorageClass.add_member(:glacier_ir, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GLACIER_IR", traits: {"smithy.api#enumValue" => "GLACIER_IR"}))
    ReplicationTime.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTimeStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    ReplicationTime.add_member(:time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationTimeValue, location_name: "Time", traits: {"smithy.api#required" => {}}))
    ReplicationTime.type = Types::ReplicationTime
    ReplicationTimeStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ReplicationTimeStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    ReplicationTimeValue.add_member(:minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Minutes, location_name: "Minutes", traits: {"smithy.api#default" => nil}))
    ReplicationTimeValue.type = Types::ReplicationTimeValue
    RequestedJobStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Cancelled", traits: {"smithy.api#enumValue" => "Cancelled"}))
    RequestedJobStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Ready", traits: {"smithy.api#enumValue" => "Ready"}))
    RouteList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointRoute, traits: {"smithy.api#xmlName" => "Route"})
    S3AccessControlList.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectOwner, location_name: "Owner", traits: {"smithy.api#required" => {}}))
    S3AccessControlList.add_member(:grants, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3GrantList, location_name: "Grants"))
    S3AccessControlList.type = Types::S3AccessControlList
    S3AccessControlPolicy.add_member(:access_control_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessControlList, location_name: "AccessControlList"))
    S3AccessControlPolicy.add_member(:canned_access_control_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3CannedAccessControlList, location_name: "CannedAccessControlList"))
    S3AccessControlPolicy.type = Types::S3AccessControlPolicy
    S3BucketDestination.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: "Format", traits: {"smithy.api#required" => {}}))
    S3BucketDestination.add_member(:output_schema_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputSchemaVersion, location_name: "OutputSchemaVersion", traits: {"smithy.api#required" => {}}))
    S3BucketDestination.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#required" => {}}))
    S3BucketDestination.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketArnString, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    S3BucketDestination.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    S3BucketDestination.add_member(:encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensDataExportEncryption, location_name: "Encryption"))
    S3BucketDestination.type = Types::S3BucketDestination
    S3CannedAccessControlList.add_member(:private, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIVATE", traits: {"smithy.api#enumValue" => "private"}))
    S3CannedAccessControlList.add_member(:public_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUBLIC_READ", traits: {"smithy.api#enumValue" => "public-read"}))
    S3CannedAccessControlList.add_member(:public_read_write, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUBLIC_READ_WRITE", traits: {"smithy.api#enumValue" => "public-read-write"}))
    S3CannedAccessControlList.add_member(:aws_exec_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_EXEC_READ", traits: {"smithy.api#enumValue" => "aws-exec-read"}))
    S3CannedAccessControlList.add_member(:authenticated_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTHENTICATED_READ", traits: {"smithy.api#enumValue" => "authenticated-read"}))
    S3CannedAccessControlList.add_member(:bucket_owner_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUCKET_OWNER_READ", traits: {"smithy.api#enumValue" => "bucket-owner-read"}))
    S3CannedAccessControlList.add_member(:bucket_owner_full_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUCKET_OWNER_FULL_CONTROL", traits: {"smithy.api#enumValue" => "bucket-owner-full-control"}))
    S3ChecksumAlgorithm.add_member(:crc32, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CRC32", traits: {"smithy.api#enumValue" => "CRC32"}))
    S3ChecksumAlgorithm.add_member(:crc32_c, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CRC32C", traits: {"smithy.api#enumValue" => "CRC32C"}))
    S3ChecksumAlgorithm.add_member(:sha1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHA1", traits: {"smithy.api#enumValue" => "SHA1"}))
    S3ChecksumAlgorithm.add_member(:sha256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHA256", traits: {"smithy.api#enumValue" => "SHA256"}))
    S3ChecksumAlgorithm.add_member(:crc64_nvme, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CRC64NVME", traits: {"smithy.api#enumValue" => "CRC64NVME"}))
    S3ComputeObjectChecksumOperation.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeObjectChecksumAlgorithm, location_name: "ChecksumAlgorithm"))
    S3ComputeObjectChecksumOperation.add_member(:checksum_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeObjectChecksumType, location_name: "ChecksumType"))
    S3ComputeObjectChecksumOperation.type = Types::S3ComputeObjectChecksumOperation
    S3CopyObjectOperation.add_member(:target_resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3RegionalOrS3ExpressBucketArnString, location_name: "TargetResource"))
    S3CopyObjectOperation.add_member(:canned_access_control_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3CannedAccessControlList, location_name: "CannedAccessControlList"))
    S3CopyObjectOperation.add_member(:access_control_grants, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3GrantList, location_name: "AccessControlGrants"))
    S3CopyObjectOperation.add_member(:metadata_directive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3MetadataDirective, location_name: "MetadataDirective"))
    S3CopyObjectOperation.add_member(:modified_since_constraint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: "ModifiedSinceConstraint"))
    S3CopyObjectOperation.add_member(:new_object_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectMetadata, location_name: "NewObjectMetadata"))
    S3CopyObjectOperation.add_member(:new_object_tagging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3TagSet, location_name: "NewObjectTagging"))
    S3CopyObjectOperation.add_member(:redirect_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength2048String, location_name: "RedirectLocation"))
    S3CopyObjectOperation.add_member(:requester_pays, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "RequesterPays", traits: {"smithy.api#default" => false}))
    S3CopyObjectOperation.add_member(:storage_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3StorageClass, location_name: "StorageClass"))
    S3CopyObjectOperation.add_member(:un_modified_since_constraint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: "UnModifiedSinceConstraint"))
    S3CopyObjectOperation.add_member(:sse_aws_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArnString, location_name: "SSEAwsKmsKeyId"))
    S3CopyObjectOperation.add_member(:target_key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "TargetKeyPrefix"))
    S3CopyObjectOperation.add_member(:object_lock_legal_hold_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectLockLegalHoldStatus, location_name: "ObjectLockLegalHoldStatus"))
    S3CopyObjectOperation.add_member(:object_lock_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectLockMode, location_name: "ObjectLockMode"))
    S3CopyObjectOperation.add_member(:object_lock_retain_until_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: "ObjectLockRetainUntilDate"))
    S3CopyObjectOperation.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "BucketKeyEnabled", traits: {"smithy.api#default" => false}))
    S3CopyObjectOperation.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ChecksumAlgorithm, location_name: "ChecksumAlgorithm"))
    S3CopyObjectOperation.type = Types::S3CopyObjectOperation
    S3DeleteObjectTaggingOperation.type = Types::S3DeleteObjectTaggingOperation
    S3GeneratedManifestDescriptor.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedManifestFormat, location_name: "Format"))
    S3GeneratedManifestDescriptor.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobManifestLocation, location_name: "Location"))
    S3GeneratedManifestDescriptor.type = Types::S3GeneratedManifestDescriptor
    S3GlacierJobTier.add_member(:bulk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BULK", traits: {"smithy.api#enumValue" => "BULK"}))
    S3GlacierJobTier.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    S3Grant.add_member(:grantee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Grantee, location_name: "Grantee"))
    S3Grant.add_member(:permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Permission, location_name: "Permission"))
    S3Grant.type = Types::S3Grant
    S3GrantList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Grant)
    S3Grantee.add_member(:type_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3GranteeTypeIdentifier, location_name: "TypeIdentifier"))
    S3Grantee.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "Identifier"))
    S3Grantee.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "DisplayName"))
    S3Grantee.type = Types::S3Grantee
    S3GranteeTypeIdentifier.add_member(:canonical, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANONICAL", traits: {"smithy.api#enumValue" => "id"}))
    S3GranteeTypeIdentifier.add_member(:email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EMAIL_ADDRESS", traits: {"smithy.api#enumValue" => "emailAddress"}))
    S3GranteeTypeIdentifier.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GROUP", traits: {"smithy.api#enumValue" => "uri"}))
    S3InitiateRestoreObjectOperation.add_member(:expiration_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ExpirationInDays, location_name: "ExpirationInDays", traits: {"smithy.api#default" => nil}))
    S3InitiateRestoreObjectOperation.add_member(:glacier_job_tier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3GlacierJobTier, location_name: "GlacierJobTier"))
    S3InitiateRestoreObjectOperation.type = Types::S3InitiateRestoreObjectOperation
    S3JobManifestGenerator.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "ExpectedBucketOwner"))
    S3JobManifestGenerator.add_member(:source_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketArnString, location_name: "SourceBucket", traits: {"smithy.api#required" => {}}))
    S3JobManifestGenerator.add_member(:manifest_output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ManifestOutputLocation, location_name: "ManifestOutputLocation"))
    S3JobManifestGenerator.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobManifestGeneratorFilter, location_name: "Filter"))
    S3JobManifestGenerator.add_member(:enable_manifest_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableManifestOutput", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    S3JobManifestGenerator.type = Types::S3JobManifestGenerator
    S3ManifestOutputLocation.add_member(:expected_manifest_bucket_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "ExpectedManifestBucketOwner"))
    S3ManifestOutputLocation.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketArnString, location_name: "Bucket", traits: {"smithy.api#required" => {}}))
    S3ManifestOutputLocation.add_member(:manifest_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManifestPrefixString, location_name: "ManifestPrefix"))
    S3ManifestOutputLocation.add_member(:manifest_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedManifestEncryption, location_name: "ManifestEncryption"))
    S3ManifestOutputLocation.add_member(:manifest_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedManifestFormat, location_name: "ManifestFormat", traits: {"smithy.api#required" => {}}))
    S3ManifestOutputLocation.type = Types::S3ManifestOutputLocation
    S3MetadataDirective.add_member(:copy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COPY", traits: {"smithy.api#enumValue" => "COPY"}))
    S3MetadataDirective.add_member(:replace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPLACE", traits: {"smithy.api#enumValue" => "REPLACE"}))
    S3ObjectLockLegalHold.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectLockLegalHoldStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    S3ObjectLockLegalHold.type = Types::S3ObjectLockLegalHold
    S3ObjectLockLegalHoldStatus.add_member(:off, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OFF", traits: {"smithy.api#enumValue" => "OFF"}))
    S3ObjectLockLegalHoldStatus.add_member(:on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ON", traits: {"smithy.api#enumValue" => "ON"}))
    S3ObjectLockMode.add_member(:compliance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLIANCE", traits: {"smithy.api#enumValue" => "COMPLIANCE"}))
    S3ObjectLockMode.add_member(:governance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GOVERNANCE", traits: {"smithy.api#enumValue" => "GOVERNANCE"}))
    S3ObjectLockRetentionMode.add_member(:compliance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLIANCE", traits: {"smithy.api#enumValue" => "COMPLIANCE"}))
    S3ObjectLockRetentionMode.add_member(:governance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GOVERNANCE", traits: {"smithy.api#enumValue" => "GOVERNANCE"}))
    S3ObjectMetadata.add_member(:cache_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "CacheControl"))
    S3ObjectMetadata.add_member(:content_disposition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "ContentDisposition"))
    S3ObjectMetadata.add_member(:content_encoding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "ContentEncoding"))
    S3ObjectMetadata.add_member(:content_language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "ContentLanguage"))
    S3ObjectMetadata.add_member(:user_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3UserMetadata, location_name: "UserMetadata"))
    S3ObjectMetadata.add_member(:content_length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ContentLength, location_name: "ContentLength", traits: {"smithy.api#default" => nil}))
    S3ObjectMetadata.add_member(:content_md5, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "ContentMD5"))
    S3ObjectMetadata.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "ContentType"))
    S3ObjectMetadata.add_member(:http_expires_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: "HttpExpiresDate"))
    S3ObjectMetadata.add_member(:requester_charged, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "RequesterCharged", traits: {"smithy.api#default" => false}))
    S3ObjectMetadata.add_member(:sse_algorithm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3SSEAlgorithm, location_name: "SSEAlgorithm"))
    S3ObjectMetadata.type = Types::S3ObjectMetadata
    S3ObjectOwner.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "ID"))
    S3ObjectOwner.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "DisplayName"))
    S3ObjectOwner.type = Types::S3ObjectOwner
    S3Permission.add_member(:full_control, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULL_CONTROL", traits: {"smithy.api#enumValue" => "FULL_CONTROL"}))
    S3Permission.add_member(:read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READ", traits: {"smithy.api#enumValue" => "READ"}))
    S3Permission.add_member(:write, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WRITE", traits: {"smithy.api#enumValue" => "WRITE"}))
    S3Permission.add_member(:read_acp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READ_ACP", traits: {"smithy.api#enumValue" => "READ_ACP"}))
    S3Permission.add_member(:write_acp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WRITE_ACP", traits: {"smithy.api#enumValue" => "WRITE_ACP"}))
    S3PrefixType.add_member(:object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Object", traits: {"smithy.api#enumValue" => "Object"}))
    S3ReplicateObjectOperation.type = Types::S3ReplicateObjectOperation
    S3Retention.add_member(:retain_until_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: "RetainUntilDate"))
    S3Retention.add_member(:mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectLockRetentionMode, location_name: "Mode"))
    S3Retention.type = Types::S3Retention
    S3SSEAlgorithm.add_member(:aes256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AES256", traits: {"smithy.api#enumValue" => "AES256"}))
    S3SSEAlgorithm.add_member(:kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "KMS", traits: {"smithy.api#enumValue" => "KMS"}))
    S3SetObjectAclOperation.add_member(:access_control_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessControlPolicy, location_name: "AccessControlPolicy"))
    S3SetObjectAclOperation.type = Types::S3SetObjectAclOperation
    S3SetObjectLegalHoldOperation.add_member(:legal_hold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectLockLegalHold, location_name: "LegalHold", traits: {"smithy.api#required" => {}}))
    S3SetObjectLegalHoldOperation.type = Types::S3SetObjectLegalHoldOperation
    S3SetObjectRetentionOperation.add_member(:bypass_governance_retention, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "BypassGovernanceRetention", traits: {"smithy.api#default" => nil}))
    S3SetObjectRetentionOperation.add_member(:retention, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Retention, location_name: "Retention", traits: {"smithy.api#required" => {}}))
    S3SetObjectRetentionOperation.type = Types::S3SetObjectRetentionOperation
    S3SetObjectTaggingOperation.add_member(:tag_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3TagSet, location_name: "TagSet"))
    S3SetObjectTaggingOperation.type = Types::S3SetObjectTaggingOperation
    S3StorageClass.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    S3StorageClass.add_member(:standard_ia, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD_IA", traits: {"smithy.api#enumValue" => "STANDARD_IA"}))
    S3StorageClass.add_member(:onezone_ia, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONEZONE_IA", traits: {"smithy.api#enumValue" => "ONEZONE_IA"}))
    S3StorageClass.add_member(:glacier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GLACIER", traits: {"smithy.api#enumValue" => "GLACIER"}))
    S3StorageClass.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTELLIGENT_TIERING", traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    S3StorageClass.add_member(:deep_archive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEEP_ARCHIVE", traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE"}))
    S3StorageClass.add_member(:glacier_ir, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GLACIER_IR", traits: {"smithy.api#enumValue" => "GLACIER_IR"}))
    S3Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyString, location_name: "Key", traits: {"smithy.api#required" => {}}))
    S3Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueString, location_name: "Value", traits: {"smithy.api#required" => {}}))
    S3Tag.type = Types::S3Tag
    S3TagSet.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Tag)
    S3UserMetadata.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String)
    S3UserMetadata.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLength1024String)
    SSECFilter.type = Types::SSECFilter
    SSEKMS.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSEKMSKeyId, location_name: "KeyId", traits: {"smithy.api#required" => {}}))
    SSEKMS.type = Types::SSEKMS
    SSEKMSEncryption.add_member(:key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArnString, location_name: "KeyId", traits: {"smithy.api#required" => {}}))
    SSEKMSEncryption.type = Types::SSEKMSEncryption
    SSEKMSFilter.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyKmsKeyArnString, location_name: "KmsKeyArn"))
    SSEKMSFilter.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "BucketKeyEnabled", traits: {"smithy.api#default" => nil}))
    SSEKMSFilter.type = Types::SSEKMSFilter
    SSES3.type = Types::SSES3
    SSES3Encryption.type = Types::SSES3Encryption
    SSES3Filter.type = Types::SSES3Filter
    Scope.add_member(:prefixes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrefixesList, location_name: "Prefixes", traits: {"smithy.api#xmlName" => "Prefixes"}))
    Scope.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopePermissionList, location_name: "Permissions", traits: {"smithy.api#xmlName" => "Permissions"}))
    Scope.type = Types::Scope
    ScopePermission.add_member(:get_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GetObject", traits: {"smithy.api#enumValue" => "GetObject"}))
    ScopePermission.add_member(:get_object_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GetObjectAttributes", traits: {"smithy.api#enumValue" => "GetObjectAttributes"}))
    ScopePermission.add_member(:list_multipart_upload_parts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ListMultipartUploadParts", traits: {"smithy.api#enumValue" => "ListMultipartUploadParts"}))
    ScopePermission.add_member(:list_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ListBucket", traits: {"smithy.api#enumValue" => "ListBucket"}))
    ScopePermission.add_member(:list_bucket_multipart_uploads, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ListBucketMultipartUploads", traits: {"smithy.api#enumValue" => "ListBucketMultipartUploads"}))
    ScopePermission.add_member(:put_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PutObject", traits: {"smithy.api#enumValue" => "PutObject"}))
    ScopePermission.add_member(:delete_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DeleteObject", traits: {"smithy.api#enumValue" => "DeleteObject"}))
    ScopePermission.add_member(:abort_multipart_upload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AbortMultipartUpload", traits: {"smithy.api#enumValue" => "AbortMultipartUpload"}))
    ScopePermissionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopePermission, traits: {"smithy.api#xmlName" => "Permission"})
    SelectionCriteria.add_member(:delimiter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensPrefixLevelDelimiter, location_name: "Delimiter"))
    SelectionCriteria.add_member(:max_depth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensPrefixLevelMaxDepth, location_name: "MaxDepth"))
    SelectionCriteria.add_member(:min_storage_bytes_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MinStorageBytesPercentage, location_name: "MinStorageBytesPercentage"))
    SelectionCriteria.type = Types::SelectionCriteria
    SourceSelectionCriteria.add_member(:sse_kms_encrypted_objects, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SseKmsEncryptedObjects, location_name: "SseKmsEncryptedObjects"))
    SourceSelectionCriteria.add_member(:replica_modifications, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicaModifications, location_name: "ReplicaModifications"))
    SourceSelectionCriteria.type = Types::SourceSelectionCriteria
    SseKmsEncryptedObjects.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SseKmsEncryptedObjectsStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    SseKmsEncryptedObjects.type = Types::SseKmsEncryptedObjects
    SseKmsEncryptedObjectsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    SseKmsEncryptedObjectsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    StorageClassList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3StorageClass)
    StorageLensAwsOrg.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsOrgArn, location_name: "Arn", traits: {"smithy.api#required" => {}}))
    StorageLensAwsOrg.type = Types::StorageLensAwsOrg
    StorageLensConfiguration.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigId, location_name: "Id", traits: {"smithy.api#required" => {}}))
    StorageLensConfiguration.add_member(:account_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLevel, location_name: "AccountLevel", traits: {"smithy.api#required" => {}}))
    StorageLensConfiguration.add_member(:include, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Include, location_name: "Include"))
    StorageLensConfiguration.add_member(:exclude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Exclude, location_name: "Exclude"))
    StorageLensConfiguration.add_member(:data_export, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensDataExport, location_name: "DataExport"))
    StorageLensConfiguration.add_member(:is_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsEnabled, location_name: "IsEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    StorageLensConfiguration.add_member(:aws_org, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensAwsOrg, location_name: "AwsOrg"))
    StorageLensConfiguration.add_member(:storage_lens_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensArn, location_name: "StorageLensArn"))
    StorageLensConfiguration.type = Types::StorageLensConfiguration
    StorageLensConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStorageLensConfigurationEntry, traits: {"smithy.api#xmlName" => "StorageLensConfiguration"})
    StorageLensDataExport.add_member(:s3_bucket_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketDestination, location_name: "S3BucketDestination"))
    StorageLensDataExport.add_member(:cloud_watch_metrics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchMetrics, location_name: "CloudWatchMetrics"))
    StorageLensDataExport.type = Types::StorageLensDataExport
    StorageLensDataExportEncryption.add_member(:sses3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSES3, location_name: "SSES3", traits: {"smithy.api#xmlName" => "SSE-S3"}))
    StorageLensDataExportEncryption.add_member(:ssekms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSEKMS, location_name: "SSEKMS", traits: {"smithy.api#xmlName" => "SSE-KMS"}))
    StorageLensDataExportEncryption.type = Types::StorageLensDataExportEncryption
    StorageLensGroup.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    StorageLensGroup.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupFilter, location_name: "Filter", traits: {"smithy.api#required" => {}}))
    StorageLensGroup.add_member(:storage_lens_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupArn, location_name: "StorageLensGroupArn"))
    StorageLensGroup.type = Types::StorageLensGroup
    StorageLensGroupAndOperator.add_member(:match_any_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchAnyPrefix, location_name: "MatchAnyPrefix"))
    StorageLensGroupAndOperator.add_member(:match_any_suffix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchAnySuffix, location_name: "MatchAnySuffix"))
    StorageLensGroupAndOperator.add_member(:match_any_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchAnyTag, location_name: "MatchAnyTag"))
    StorageLensGroupAndOperator.add_member(:match_object_age, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchObjectAge, location_name: "MatchObjectAge"))
    StorageLensGroupAndOperator.add_member(:match_object_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchObjectSize, location_name: "MatchObjectSize"))
    StorageLensGroupAndOperator.type = Types::StorageLensGroupAndOperator
    StorageLensGroupFilter.add_member(:match_any_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchAnyPrefix, location_name: "MatchAnyPrefix"))
    StorageLensGroupFilter.add_member(:match_any_suffix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchAnySuffix, location_name: "MatchAnySuffix"))
    StorageLensGroupFilter.add_member(:match_any_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchAnyTag, location_name: "MatchAnyTag"))
    StorageLensGroupFilter.add_member(:match_object_age, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchObjectAge, location_name: "MatchObjectAge"))
    StorageLensGroupFilter.add_member(:match_object_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchObjectSize, location_name: "MatchObjectSize"))
    StorageLensGroupFilter.add_member(:and, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupAndOperator, location_name: "And"))
    StorageLensGroupFilter.add_member(:or, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupOrOperator, location_name: "Or"))
    StorageLensGroupFilter.type = Types::StorageLensGroupFilter
    StorageLensGroupLevel.add_member(:selection_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupLevelSelectionCriteria, location_name: "SelectionCriteria"))
    StorageLensGroupLevel.type = Types::StorageLensGroupLevel
    StorageLensGroupLevelExclude.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupArn, traits: {"smithy.api#xmlName" => "Arn"})
    StorageLensGroupLevelInclude.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupArn, traits: {"smithy.api#xmlName" => "Arn"})
    StorageLensGroupLevelSelectionCriteria.add_member(:include, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupLevelInclude, location_name: "Include"))
    StorageLensGroupLevelSelectionCriteria.add_member(:exclude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupLevelExclude, location_name: "Exclude"))
    StorageLensGroupLevelSelectionCriteria.type = Types::StorageLensGroupLevelSelectionCriteria
    StorageLensGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStorageLensGroupEntry, traits: {"smithy.api#xmlName" => "StorageLensGroup"})
    StorageLensGroupOrOperator.add_member(:match_any_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchAnyPrefix, location_name: "MatchAnyPrefix"))
    StorageLensGroupOrOperator.add_member(:match_any_suffix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchAnySuffix, location_name: "MatchAnySuffix"))
    StorageLensGroupOrOperator.add_member(:match_any_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchAnyTag, location_name: "MatchAnyTag"))
    StorageLensGroupOrOperator.add_member(:match_object_age, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchObjectAge, location_name: "MatchObjectAge"))
    StorageLensGroupOrOperator.add_member(:match_object_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchObjectSize, location_name: "MatchObjectSize"))
    StorageLensGroupOrOperator.type = Types::StorageLensGroupOrOperator
    StorageLensTag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyString, location_name: "Key", traits: {"smithy.api#required" => {}}))
    StorageLensTag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueString, location_name: "Value", traits: {"smithy.api#required" => {}}))
    StorageLensTag.type = Types::StorageLensTag
    StorageLensTags.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensTag, traits: {"smithy.api#xmlName" => "Tag"})
    SubmitMultiRegionAccessPointRoutesRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    SubmitMultiRegionAccessPointRoutesRequest.add_member(:mrap, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MultiRegionAccessPointId, location_name: "Mrap", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SubmitMultiRegionAccessPointRoutesRequest.add_member(:route_updates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RouteList, location_name: "RouteUpdates", traits: {"smithy.api#required" => {}}))
    SubmitMultiRegionAccessPointRoutesRequest.type = Types::SubmitMultiRegionAccessPointRoutesRequest
    SubmitMultiRegionAccessPointRoutesResult.type = Types::SubmitMultiRegionAccessPointRoutesResult
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyString, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueString, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyString)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag, traits: {"smithy.api#xmlName" => "Tag"})
    TagResourceRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResult.type = Types::TagResourceResult
    Tagging.add_member(:tag_set, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3TagSet, location_name: "TagSet", traits: {"smithy.api#required" => {}}))
    Tagging.type = Types::Tagging
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    TooManyTagsException.type = Types::TooManyTagsException
    Transition.add_member(:date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Date, location_name: "Date"))
    Transition.add_member(:days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Days, location_name: "Days", traits: {"smithy.api#default" => 0}))
    Transition.add_member(:storage_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransitionStorageClass, location_name: "StorageClass"))
    Transition.type = Types::Transition
    TransitionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Transition, traits: {"smithy.api#xmlName" => "Transition"})
    TransitionStorageClass.add_member(:glacier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GLACIER", traits: {"smithy.api#enumValue" => "GLACIER"}))
    TransitionStorageClass.add_member(:standard_ia, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD_IA", traits: {"smithy.api#enumValue" => "STANDARD_IA"}))
    TransitionStorageClass.add_member(:onezone_ia, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONEZONE_IA", traits: {"smithy.api#enumValue" => "ONEZONE_IA"}))
    TransitionStorageClass.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTELLIGENT_TIERING", traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    TransitionStorageClass.add_member(:deep_archive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEEP_ARCHIVE", traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE"}))
    UntagResourceRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ResourceArn, location_name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResult.type = Types::UntagResourceResult
    UpdateAccessGrantsLocationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    UpdateAccessGrantsLocationRequest.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationId, location_name: "AccessGrantsLocationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAccessGrantsLocationRequest.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IAMRoleArn", traits: {"smithy.api#required" => {}}))
    UpdateAccessGrantsLocationRequest.type = Types::UpdateAccessGrantsLocationRequest
    UpdateAccessGrantsLocationResult.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "CreatedAt"))
    UpdateAccessGrantsLocationResult.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationId, location_name: "AccessGrantsLocationId"))
    UpdateAccessGrantsLocationResult.add_member(:access_grants_location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessGrantsLocationArn, location_name: "AccessGrantsLocationArn"))
    UpdateAccessGrantsLocationResult.add_member(:location_scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: "LocationScope"))
    UpdateAccessGrantsLocationResult.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "IAMRoleArn"))
    UpdateAccessGrantsLocationResult.type = Types::UpdateAccessGrantsLocationResult
    UpdateJobPriorityRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    UpdateJobPriorityRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJobPriorityRequest.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobPriority, location_name: "Priority", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "priority", "smithy.api#required" => {}}))
    UpdateJobPriorityRequest.type = Types::UpdateJobPriorityRequest
    UpdateJobPriorityResult.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#required" => {}}))
    UpdateJobPriorityResult.add_member(:priority, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobPriority, location_name: "Priority", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    UpdateJobPriorityResult.type = Types::UpdateJobPriorityResult
    UpdateJobStatusRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    UpdateJobStatusRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJobStatusRequest.add_member(:requested_job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestedJobStatus, location_name: "RequestedJobStatus", traits: {"smithy.api#httpQuery" => "requestedJobStatus", "smithy.api#required" => {}}))
    UpdateJobStatusRequest.add_member(:status_update_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusUpdateReason, location_name: "StatusUpdateReason", traits: {"smithy.api#httpQuery" => "statusUpdateReason"}))
    UpdateJobStatusRequest.type = Types::UpdateJobStatusRequest
    UpdateJobStatusResult.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    UpdateJobStatusResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: "Status"))
    UpdateJobStatusResult.add_member(:status_update_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusUpdateReason, location_name: "StatusUpdateReason"))
    UpdateJobStatusResult.type = Types::UpdateJobStatusResult
    UpdateStorageLensGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroupName, location_name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStorageLensGroupRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    UpdateStorageLensGroupRequest.add_member(:storage_lens_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageLensGroup, location_name: "StorageLensGroup", traits: {"smithy.api#required" => {}}))
    UpdateStorageLensGroupRequest.type = Types::UpdateStorageLensGroupRequest
    UserArguments.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyMaxLength64String)
    UserArguments.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxLength1024String)
    VersioningConfiguration.add_member(:mfa_delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MFADelete, location_name: "MFADelete", traits: {"smithy.api#xmlName" => "MfaDelete"}))
    VersioningConfiguration.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketVersioningStatus, location_name: "Status"))
    VersioningConfiguration.type = Types::VersioningConfiguration
    VpcConfiguration.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId", traits: {"smithy.api#required" => {}}))
    VpcConfiguration.type = Types::VpcConfiguration

    AWSS3ControlServiceV20180820 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.s3control#AWSS3ControlServiceV20180820"
      service.name = "AWSS3ControlServiceV20180820"
      service.version = "2018-08-20"
      service.traits = {"aws.api#service" => {"sdkId" => "S3 Control", "arnNamespace" => "s3", "cloudFormationName" => "S3Control", "cloudTrailEventSource" => "s3control.amazonaws.com", "docId" => "s3control-2018-08-20", "endpointPrefix" => "s3-control"}, "aws.auth#sigv4" => {"name" => "s3"}, "aws.protocols#restXml" => {}, "smithy.api#title" => "AWS S3 Control", "smithy.api#xmlNamespace" => {"uri" => "http://awss3control.amazonaws.com/doc/2018-08-20/"}, "smithy.rules#clientContextParams" => {"UseArnRegion" => {"documentation" => "Enables this client to use an ARN's region when constructing an endpoint instead of the client's configured region.", "type" => "boolean"}}}
      service.add_operation(:associate_access_grants_identity_center, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#AssociateAccessGrantsIdentityCenter"
        operation.name = "AssociateAccessGrantsIdentityCenter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAccessGrantsIdentityCenterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/accessgrantsinstance/identitycenter", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:create_access_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateAccessGrant"
        operation.name = "CreateAccessGrant"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessGrantRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessGrantResult)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/accessgrantsinstance/grant", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:create_access_grants_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateAccessGrantsInstance"
        operation.name = "CreateAccessGrantsInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessGrantsInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessGrantsInstanceResult)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/accessgrantsinstance", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:create_access_grants_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateAccessGrantsLocation"
        operation.name = "CreateAccessGrantsLocation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessGrantsLocationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessGrantsLocationResult)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/accessgrantsinstance/location", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:create_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateAccessPoint"
        operation.name = "CreateAccessPoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessPointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessPointResult)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/accesspoint/{Name}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:create_access_point_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateAccessPointForObjectLambda"
        operation.name = "CreateAccessPointForObjectLambda"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessPointForObjectLambdaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessPointForObjectLambdaResult)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/accesspointforobjectlambda/{Name}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:create_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateBucket"
        operation.name = "CreateBucket"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBucketRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBucketResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketAlreadyExists)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketAlreadyOwnedByYou)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/bucket/{Bucket}", "code" => 200}, "smithy.api#httpChecksumRequired" => {}}
      end)
      service.add_operation(:create_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateJob"
        operation.name = "CreateJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/jobs", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:create_multi_region_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateMultiRegionAccessPoint"
        operation.name = "CreateMultiRegionAccessPoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMultiRegionAccessPointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMultiRegionAccessPointResult)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/async-requests/mrap/create", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:create_storage_lens_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateStorageLensGroup"
        operation.name = "CreateStorageLensGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStorageLensGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/storagelensgroup", "code" => 204}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessGrant"
        operation.name = "DeleteAccessGrant"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessGrantRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accessgrantsinstance/grant/{AccessGrantId}", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_grants_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessGrantsInstance"
        operation.name = "DeleteAccessGrantsInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessGrantsInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accessgrantsinstance", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_grants_instance_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessGrantsInstanceResourcePolicy"
        operation.name = "DeleteAccessGrantsInstanceResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessGrantsInstanceResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accessgrantsinstance/resourcepolicy", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_grants_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessGrantsLocation"
        operation.name = "DeleteAccessGrantsLocation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessGrantsLocationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accessgrantsinstance/location/{AccessGrantsLocationId}", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessPoint"
        operation.name = "DeleteAccessPoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessPointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accesspoint/{Name}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_point_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessPointForObjectLambda"
        operation.name = "DeleteAccessPointForObjectLambda"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessPointForObjectLambdaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accesspointforobjectlambda/{Name}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_point_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessPointPolicy"
        operation.name = "DeleteAccessPointPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessPointPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accesspoint/{Name}/policy", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_point_policy_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessPointPolicyForObjectLambda"
        operation.name = "DeleteAccessPointPolicyForObjectLambda"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessPointPolicyForObjectLambdaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accesspointforobjectlambda/{Name}/policy", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_point_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessPointScope"
        operation.name = "DeleteAccessPointScope"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessPointScopeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accesspoint/{Name}/scope", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}, "UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteBucket"
        operation.name = "DeleteBucket"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBucketRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/bucket/{Bucket}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_lifecycle_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteBucketLifecycleConfiguration"
        operation.name = "DeleteBucketLifecycleConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBucketLifecycleConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/bucket/{Bucket}/lifecycleconfiguration", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteBucketPolicy"
        operation.name = "DeleteBucketPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBucketPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/bucket/{Bucket}/policy", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteBucketReplication"
        operation.name = "DeleteBucketReplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBucketReplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/bucket/{Bucket}/replication", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteBucketTagging"
        operation.name = "DeleteBucketTagging"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBucketTaggingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/bucket/{Bucket}/tagging", "code" => 204}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_job_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteJobTagging"
        operation.name = "DeleteJobTagging"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJobTaggingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJobTaggingResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/jobs/{JobId}/tagging", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_multi_region_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteMultiRegionAccessPoint"
        operation.name = "DeleteMultiRegionAccessPoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMultiRegionAccessPointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMultiRegionAccessPointResult)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/async-requests/mrap/delete", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_public_access_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeletePublicAccessBlock"
        operation.name = "DeletePublicAccessBlock"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePublicAccessBlockRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/configuration/publicAccessBlock", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_storage_lens_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteStorageLensConfiguration"
        operation.name = "DeleteStorageLensConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStorageLensConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/storagelens/{ConfigId}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_storage_lens_configuration_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteStorageLensConfigurationTagging"
        operation.name = "DeleteStorageLensConfigurationTagging"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStorageLensConfigurationTaggingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStorageLensConfigurationTaggingResult)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/storagelens/{ConfigId}/tagging", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_storage_lens_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteStorageLensGroup"
        operation.name = "DeleteStorageLensGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStorageLensGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/storagelensgroup/{Name}", "code" => 204}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:describe_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DescribeJob"
        operation.name = "DescribeJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/jobs/{JobId}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:describe_multi_region_access_point_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DescribeMultiRegionAccessPointOperation"
        operation.name = "DescribeMultiRegionAccessPointOperation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMultiRegionAccessPointOperationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMultiRegionAccessPointOperationResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/async-requests/mrap/{RequestTokenARN+}", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:dissociate_access_grants_identity_center, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DissociateAccessGrantsIdentityCenter"
        operation.name = "DissociateAccessGrantsIdentityCenter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DissociateAccessGrantsIdentityCenterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accessgrantsinstance/identitycenter", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessGrant"
        operation.name = "GetAccessGrant"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessGrantRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessGrantResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance/grant/{AccessGrantId}", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_grants_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessGrantsInstance"
        operation.name = "GetAccessGrantsInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessGrantsInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessGrantsInstanceResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_grants_instance_for_prefix, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessGrantsInstanceForPrefix"
        operation.name = "GetAccessGrantsInstanceForPrefix"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessGrantsInstanceForPrefixRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessGrantsInstanceForPrefixResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance/prefix", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_grants_instance_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessGrantsInstanceResourcePolicy"
        operation.name = "GetAccessGrantsInstanceResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessGrantsInstanceResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessGrantsInstanceResourcePolicyResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance/resourcepolicy", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_grants_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessGrantsLocation"
        operation.name = "GetAccessGrantsLocation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessGrantsLocationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessGrantsLocationResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance/location/{AccessGrantsLocationId}", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessPoint"
        operation.name = "GetAccessPoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPointResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspoint/{Name}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_point_configuration_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessPointConfigurationForObjectLambda"
        operation.name = "GetAccessPointConfigurationForObjectLambda"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPointConfigurationForObjectLambdaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPointConfigurationForObjectLambdaResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspointforobjectlambda/{Name}/configuration", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_point_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessPointForObjectLambda"
        operation.name = "GetAccessPointForObjectLambda"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPointForObjectLambdaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPointForObjectLambdaResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspointforobjectlambda/{Name}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_point_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessPointPolicy"
        operation.name = "GetAccessPointPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPointPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPointPolicyResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspoint/{Name}/policy", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_point_policy_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessPointPolicyForObjectLambda"
        operation.name = "GetAccessPointPolicyForObjectLambda"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPointPolicyForObjectLambdaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPointPolicyForObjectLambdaResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspointforobjectlambda/{Name}/policy", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_point_policy_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessPointPolicyStatus"
        operation.name = "GetAccessPointPolicyStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPointPolicyStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPointPolicyStatusResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspoint/{Name}/policyStatus", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_point_policy_status_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessPointPolicyStatusForObjectLambda"
        operation.name = "GetAccessPointPolicyStatusForObjectLambda"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPointPolicyStatusForObjectLambdaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPointPolicyStatusForObjectLambdaResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspointforobjectlambda/{Name}/policyStatus", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_point_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessPointScope"
        operation.name = "GetAccessPointScope"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPointScopeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPointScopeResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspoint/{Name}/scope", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}, "UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetBucket"
        operation.name = "GetBucket"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/bucket/{Bucket}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_lifecycle_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetBucketLifecycleConfiguration"
        operation.name = "GetBucketLifecycleConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketLifecycleConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketLifecycleConfigurationResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/bucket/{Bucket}/lifecycleconfiguration", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetBucketPolicy"
        operation.name = "GetBucketPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketPolicyResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/bucket/{Bucket}/policy", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetBucketReplication"
        operation.name = "GetBucketReplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketReplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketReplicationResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/bucket/{Bucket}/replication", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetBucketTagging"
        operation.name = "GetBucketTagging"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketTaggingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketTaggingResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/bucket/{Bucket}/tagging", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_versioning, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetBucketVersioning"
        operation.name = "GetBucketVersioning"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketVersioningRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketVersioningResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/bucket/{Bucket}/versioning", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_data_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetDataAccess"
        operation.name = "GetDataAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataAccessResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance/dataaccess", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_job_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetJobTagging"
        operation.name = "GetJobTagging"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobTaggingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobTaggingResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/jobs/{JobId}/tagging", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_multi_region_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetMultiRegionAccessPoint"
        operation.name = "GetMultiRegionAccessPoint"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMultiRegionAccessPointRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMultiRegionAccessPointResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/mrap/instances/{Name+}", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_multi_region_access_point_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetMultiRegionAccessPointPolicy"
        operation.name = "GetMultiRegionAccessPointPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMultiRegionAccessPointPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMultiRegionAccessPointPolicyResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/mrap/instances/{Name+}/policy", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_multi_region_access_point_policy_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetMultiRegionAccessPointPolicyStatus"
        operation.name = "GetMultiRegionAccessPointPolicyStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMultiRegionAccessPointPolicyStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMultiRegionAccessPointPolicyStatusResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/mrap/instances/{Name+}/policystatus", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_multi_region_access_point_routes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetMultiRegionAccessPointRoutes"
        operation.name = "GetMultiRegionAccessPointRoutes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMultiRegionAccessPointRoutesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMultiRegionAccessPointRoutesResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/mrap/instances/{Mrap+}/routes", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_public_access_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetPublicAccessBlock"
        operation.name = "GetPublicAccessBlock"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPublicAccessBlockRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPublicAccessBlockOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NoSuchPublicAccessBlockConfiguration)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/configuration/publicAccessBlock", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_storage_lens_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetStorageLensConfiguration"
        operation.name = "GetStorageLensConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStorageLensConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStorageLensConfigurationResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/storagelens/{ConfigId}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_storage_lens_configuration_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetStorageLensConfigurationTagging"
        operation.name = "GetStorageLensConfigurationTagging"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStorageLensConfigurationTaggingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStorageLensConfigurationTaggingResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/storagelens/{ConfigId}/tagging", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_storage_lens_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetStorageLensGroup"
        operation.name = "GetStorageLensGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStorageLensGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetStorageLensGroupResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/storagelensgroup/{Name}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:list_access_grants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListAccessGrants"
        operation.name = "ListAccessGrants"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessGrantsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessGrantsResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance/grants", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListAccessGrants.new
      end)
      service.add_operation(:list_access_grants_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListAccessGrantsInstances"
        operation.name = "ListAccessGrantsInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessGrantsInstancesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessGrantsInstancesResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstances", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListAccessGrantsInstances.new
      end)
      service.add_operation(:list_access_grants_locations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListAccessGrantsLocations"
        operation.name = "ListAccessGrantsLocations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessGrantsLocationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessGrantsLocationsResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance/locations", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListAccessGrantsLocations.new
      end)
      service.add_operation(:list_access_points, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListAccessPoints"
        operation.name = "ListAccessPoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPointsResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspoint", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListAccessPoints.new
      end)
      service.add_operation(:list_access_points_for_directory_buckets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListAccessPointsForDirectoryBuckets"
        operation.name = "ListAccessPointsForDirectoryBuckets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPointsForDirectoryBucketsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPointsForDirectoryBucketsResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspointfordirectory", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}, "UseS3ExpressControlEndpoint" => {"value" => true}}}
        operation[:paginator] = Paginators::ListAccessPointsForDirectoryBuckets.new
      end)
      service.add_operation(:list_access_points_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListAccessPointsForObjectLambda"
        operation.name = "ListAccessPointsForObjectLambda"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPointsForObjectLambdaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPointsForObjectLambdaResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspointforobjectlambda", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListAccessPointsForObjectLambda.new
      end)
      service.add_operation(:list_caller_access_grants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListCallerAccessGrants"
        operation.name = "ListCallerAccessGrants"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCallerAccessGrantsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCallerAccessGrantsResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance/caller/grants", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListCallerAccessGrants.new
      end)
      service.add_operation(:list_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListJobs"
        operation.name = "ListJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/jobs", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_multi_region_access_points, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListMultiRegionAccessPoints"
        operation.name = "ListMultiRegionAccessPoints"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMultiRegionAccessPointsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMultiRegionAccessPointsResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/mrap/instances", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListMultiRegionAccessPoints.new
      end)
      service.add_operation(:list_regional_buckets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListRegionalBuckets"
        operation.name = "ListRegionalBuckets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegionalBucketsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListRegionalBucketsResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/bucket", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListRegionalBuckets.new
      end)
      service.add_operation(:list_storage_lens_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListStorageLensConfigurations"
        operation.name = "ListStorageLensConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStorageLensConfigurationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStorageLensConfigurationsResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/storagelens", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListStorageLensConfigurations.new
      end)
      service.add_operation(:list_storage_lens_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListStorageLensGroups"
        operation.name = "ListStorageLensGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStorageLensGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListStorageLensGroupsResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/storagelensgroup", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListStorageLensGroups.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/tags/{ResourceArn+}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_access_grants_instance_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutAccessGrantsInstanceResourcePolicy"
        operation.name = "PutAccessGrantsInstanceResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccessGrantsInstanceResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccessGrantsInstanceResourcePolicyResult)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/accessgrantsinstance/resourcepolicy", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_access_point_configuration_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutAccessPointConfigurationForObjectLambda"
        operation.name = "PutAccessPointConfigurationForObjectLambda"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccessPointConfigurationForObjectLambdaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/accesspointforobjectlambda/{Name}/configuration", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_access_point_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutAccessPointPolicy"
        operation.name = "PutAccessPointPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccessPointPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/accesspoint/{Name}/policy", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_access_point_policy_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutAccessPointPolicyForObjectLambda"
        operation.name = "PutAccessPointPolicyForObjectLambda"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccessPointPolicyForObjectLambdaRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/accesspointforobjectlambda/{Name}/policy", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_access_point_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutAccessPointScope"
        operation.name = "PutAccessPointScope"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccessPointScopeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/accesspoint/{Name}/scope", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}, "UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_lifecycle_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutBucketLifecycleConfiguration"
        operation.name = "PutBucketLifecycleConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBucketLifecycleConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/bucket/{Bucket}/lifecycleconfiguration", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutBucketPolicy"
        operation.name = "PutBucketPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBucketPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/bucket/{Bucket}/policy", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutBucketReplication"
        operation.name = "PutBucketReplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBucketReplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/bucket/{Bucket}/replication", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutBucketTagging"
        operation.name = "PutBucketTagging"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBucketTaggingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/bucket/{Bucket}/tagging", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_versioning, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutBucketVersioning"
        operation.name = "PutBucketVersioning"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutBucketVersioningRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/bucket/{Bucket}/versioning", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_job_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutJobTagging"
        operation.name = "PutJobTagging"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutJobTaggingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutJobTaggingResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/jobs/{JobId}/tagging", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_multi_region_access_point_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutMultiRegionAccessPointPolicy"
        operation.name = "PutMultiRegionAccessPointPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutMultiRegionAccessPointPolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutMultiRegionAccessPointPolicyResult)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/async-requests/mrap/put-policy", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_public_access_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutPublicAccessBlock"
        operation.name = "PutPublicAccessBlock"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutPublicAccessBlockRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/configuration/publicAccessBlock", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_storage_lens_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutStorageLensConfiguration"
        operation.name = "PutStorageLensConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutStorageLensConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/storagelens/{ConfigId}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_storage_lens_configuration_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutStorageLensConfigurationTagging"
        operation.name = "PutStorageLensConfigurationTagging"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutStorageLensConfigurationTaggingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutStorageLensConfigurationTaggingResult)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/storagelens/{ConfigId}/tagging", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:submit_multi_region_access_point_routes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#SubmitMultiRegionAccessPointRoutes"
        operation.name = "SubmitMultiRegionAccessPointRoutes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubmitMultiRegionAccessPointRoutesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubmitMultiRegionAccessPointRoutesResult)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v20180820/mrap/instances/{Mrap+}/routes", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResult)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/tags/{ResourceArn+}", "code" => 204}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResult)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/tags/{ResourceArn+}", "code" => 204}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:update_access_grants_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#UpdateAccessGrantsLocation"
        operation.name = "UpdateAccessGrantsLocation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccessGrantsLocationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccessGrantsLocationResult)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/accessgrantsinstance/location/{AccessGrantsLocationId}", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:update_job_priority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#UpdateJobPriority"
        operation.name = "UpdateJobPriority"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobPriorityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobPriorityResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/jobs/{JobId}/priority", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:update_job_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#UpdateJobStatus"
        operation.name = "UpdateJobStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateJobStatusResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatusException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/jobs/{JobId}/status", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:update_storage_lens_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#UpdateStorageLensGroup"
        operation.name = "UpdateStorageLensGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStorageLensGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/storagelensgroup/{Name}", "code" => 204}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
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
