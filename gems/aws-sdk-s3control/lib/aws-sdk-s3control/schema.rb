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

    AbortIncompleteMultipartUpload.add_member(:days_after_initiation, ::Smithy::Schema::Shapes::MemberShape.new(target: DaysAfterInitiation, name: "DaysAfterInitiation", traits: {"smithy.api#default" => 0}))
    AbortIncompleteMultipartUpload.type = Types::AbortIncompleteMultipartUpload
    AccessControlTranslation.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: OwnerOverride, name: "Owner", traits: {"smithy.api#required" => {}}))
    AccessControlTranslation.type = Types::AccessControlTranslation
    AccessGrantsInstancesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAccessGrantsInstanceEntry, name: "member", traits: {"smithy.api#xmlName" => "AccessGrantsInstance"}))
    AccessGrantsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAccessGrantEntry, name: "member", traits: {"smithy.api#xmlName" => "AccessGrant"}))
    AccessGrantsLocationConfiguration.add_member(:s3_sub_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "S3SubPrefix"))
    AccessGrantsLocationConfiguration.type = Types::AccessGrantsLocationConfiguration
    AccessGrantsLocationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAccessGrantsLocationsEntry, name: "member", traits: {"smithy.api#xmlName" => "AccessGrantsLocation"}))
    AccessPoint.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "Name", traits: {"smithy.api#required" => {}}))
    AccessPoint.add_member(:network_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkOrigin, name: "NetworkOrigin", traits: {"smithy.api#required" => {}}))
    AccessPoint.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "VpcConfiguration"))
    AccessPoint.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointBucketName, name: "Bucket", traits: {"smithy.api#required" => {}}))
    AccessPoint.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointArn, name: "AccessPointArn"))
    AccessPoint.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Alias"))
    AccessPoint.add_member(:bucket_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "BucketAccountId"))
    AccessPoint.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "DataSourceId"))
    AccessPoint.add_member(:data_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceType, name: "DataSourceType"))
    AccessPoint.type = Types::AccessPoint
    AccessPointList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPoint, name: "member", traits: {"smithy.api#xmlName" => "AccessPoint"}))
    AccountLevel.add_member(:activity_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityMetrics, name: "ActivityMetrics"))
    AccountLevel.add_member(:bucket_level, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketLevel, name: "BucketLevel", traits: {"smithy.api#required" => {}}))
    AccountLevel.add_member(:advanced_cost_optimization_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedCostOptimizationMetrics, name: "AdvancedCostOptimizationMetrics"))
    AccountLevel.add_member(:advanced_data_protection_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedDataProtectionMetrics, name: "AdvancedDataProtectionMetrics"))
    AccountLevel.add_member(:detailed_status_codes_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailedStatusCodesMetrics, name: "DetailedStatusCodesMetrics"))
    AccountLevel.add_member(:storage_lens_group_level, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupLevel, name: "StorageLensGroupLevel"))
    AccountLevel.type = Types::AccountLevel
    ActivityMetrics.add_member(:is_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: IsEnabled, name: "IsEnabled", traits: {"smithy.api#default" => false}))
    ActivityMetrics.type = Types::ActivityMetrics
    AdvancedCostOptimizationMetrics.add_member(:is_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: IsEnabled, name: "IsEnabled", traits: {"smithy.api#default" => false}))
    AdvancedCostOptimizationMetrics.type = Types::AdvancedCostOptimizationMetrics
    AdvancedDataProtectionMetrics.add_member(:is_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: IsEnabled, name: "IsEnabled", traits: {"smithy.api#default" => false}))
    AdvancedDataProtectionMetrics.type = Types::AdvancedDataProtectionMetrics
    AssociateAccessGrantsIdentityCenterRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    AssociateAccessGrantsIdentityCenterRequest.add_member(:identity_center_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterArn, name: "IdentityCenterArn", traits: {"smithy.api#required" => {}}))
    AssociateAccessGrantsIdentityCenterRequest.type = Types::AssociateAccessGrantsIdentityCenterRequest
    AsyncErrorDetails.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLength1024String, name: "Code"))
    AsyncErrorDetails.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLength1024String, name: "Message"))
    AsyncErrorDetails.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLength1024String, name: "Resource"))
    AsyncErrorDetails.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLength1024String, name: "RequestId"))
    AsyncErrorDetails.type = Types::AsyncErrorDetails
    AsyncOperation.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncCreationTimestamp, name: "CreationTime"))
    AsyncOperation.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncOperationName, name: "Operation"))
    AsyncOperation.add_member(:request_token_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncRequestTokenARN, name: "RequestTokenARN"))
    AsyncOperation.add_member(:request_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncRequestParameters, name: "RequestParameters"))
    AsyncOperation.add_member(:request_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncRequestStatus, name: "RequestStatus"))
    AsyncOperation.add_member(:response_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncResponseDetails, name: "ResponseDetails"))
    AsyncOperation.type = Types::AsyncOperation
    AsyncOperationName.add_member(:create_multi_region_access_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreateMultiRegionAccessPoint", traits: {"smithy.api#enumValue" => "CreateMultiRegionAccessPoint"}))
    AsyncOperationName.add_member(:delete_multi_region_access_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteMultiRegionAccessPoint", traits: {"smithy.api#enumValue" => "DeleteMultiRegionAccessPoint"}))
    AsyncOperationName.add_member(:put_multi_region_access_point_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PutMultiRegionAccessPointPolicy", traits: {"smithy.api#enumValue" => "PutMultiRegionAccessPointPolicy"}))
    AsyncRequestParameters.add_member(:create_multi_region_access_point_request, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateMultiRegionAccessPointInput, name: "CreateMultiRegionAccessPointRequest"))
    AsyncRequestParameters.add_member(:delete_multi_region_access_point_request, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteMultiRegionAccessPointInput, name: "DeleteMultiRegionAccessPointRequest"))
    AsyncRequestParameters.add_member(:put_multi_region_access_point_policy_request, ::Smithy::Schema::Shapes::MemberShape.new(target: PutMultiRegionAccessPointPolicyInput, name: "PutMultiRegionAccessPointPolicyRequest"))
    AsyncRequestParameters.type = Types::AsyncRequestParameters
    AsyncResponseDetails.add_member(:multi_region_access_point_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointsAsyncResponse, name: "MultiRegionAccessPointDetails"))
    AsyncResponseDetails.add_member(:error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncErrorDetails, name: "ErrorDetails"))
    AsyncResponseDetails.type = Types::AsyncResponseDetails
    AwsLambdaTransformation.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArnString, name: "FunctionArn", traits: {"smithy.api#required" => {}}))
    AwsLambdaTransformation.add_member(:function_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsLambdaTransformationPayload, name: "FunctionPayload"))
    AwsLambdaTransformation.type = Types::AwsLambdaTransformation
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    BadRequestException.type = Types::BadRequestException
    BucketAlreadyExists.type = Types::BucketAlreadyExists
    BucketAlreadyOwnedByYou.type = Types::BucketAlreadyOwnedByYou
    BucketCannedACL.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "private", traits: {"smithy.api#enumValue" => "private"}))
    BucketCannedACL.add_member(:public_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "public_read", traits: {"smithy.api#enumValue" => "public-read"}))
    BucketCannedACL.add_member(:public_read_write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "public_read_write", traits: {"smithy.api#enumValue" => "public-read-write"}))
    BucketCannedACL.add_member(:authenticated_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "authenticated_read", traits: {"smithy.api#enumValue" => "authenticated-read"}))
    BucketLevel.add_member(:activity_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ActivityMetrics, name: "ActivityMetrics"))
    BucketLevel.add_member(:prefix_level, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefixLevel, name: "PrefixLevel"))
    BucketLevel.add_member(:advanced_cost_optimization_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedCostOptimizationMetrics, name: "AdvancedCostOptimizationMetrics"))
    BucketLevel.add_member(:advanced_data_protection_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedDataProtectionMetrics, name: "AdvancedDataProtectionMetrics"))
    BucketLevel.add_member(:detailed_status_codes_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: DetailedStatusCodesMetrics, name: "DetailedStatusCodesMetrics"))
    BucketLevel.type = Types::BucketLevel
    BucketLocationConstraint.add_member(:eu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU", traits: {"smithy.api#enumValue" => "EU"}))
    BucketLocationConstraint.add_member(:eu_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "eu_west_1", traits: {"smithy.api#enumValue" => "eu-west-1"}))
    BucketLocationConstraint.add_member(:us_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "us_west_1", traits: {"smithy.api#enumValue" => "us-west-1"}))
    BucketLocationConstraint.add_member(:us_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "us_west_2", traits: {"smithy.api#enumValue" => "us-west-2"}))
    BucketLocationConstraint.add_member(:ap_south_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ap_south_1", traits: {"smithy.api#enumValue" => "ap-south-1"}))
    BucketLocationConstraint.add_member(:ap_southeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ap_southeast_1", traits: {"smithy.api#enumValue" => "ap-southeast-1"}))
    BucketLocationConstraint.add_member(:ap_southeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ap_southeast_2", traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    BucketLocationConstraint.add_member(:ap_northeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ap_northeast_1", traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    BucketLocationConstraint.add_member(:sa_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "sa_east_1", traits: {"smithy.api#enumValue" => "sa-east-1"}))
    BucketLocationConstraint.add_member(:cn_north_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "cn_north_1", traits: {"smithy.api#enumValue" => "cn-north-1"}))
    BucketLocationConstraint.add_member(:eu_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "eu_central_1", traits: {"smithy.api#enumValue" => "eu-central-1"}))
    BucketVersioningStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    BucketVersioningStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Suspended", traits: {"smithy.api#enumValue" => "Suspended"}))
    Buckets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketArnString, name: "member", traits: {"smithy.api#xmlName" => "Arn"}))
    CallerAccessGrantsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListCallerAccessGrantsEntry, name: "member", traits: {"smithy.api#xmlName" => "AccessGrant"}))
    CloudWatchMetrics.add_member(:is_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: IsEnabled, name: "IsEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    CloudWatchMetrics.type = Types::CloudWatchMetrics
    ComputeObjectChecksumAlgorithm.add_member(:crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRC32", traits: {"smithy.api#enumValue" => "CRC32"}))
    ComputeObjectChecksumAlgorithm.add_member(:crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRC32C", traits: {"smithy.api#enumValue" => "CRC32C"}))
    ComputeObjectChecksumAlgorithm.add_member(:crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRC64NVME", traits: {"smithy.api#enumValue" => "CRC64NVME"}))
    ComputeObjectChecksumAlgorithm.add_member(:md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MD5", traits: {"smithy.api#enumValue" => "MD5"}))
    ComputeObjectChecksumAlgorithm.add_member(:sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA1", traits: {"smithy.api#enumValue" => "SHA1"}))
    ComputeObjectChecksumAlgorithm.add_member(:sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA256", traits: {"smithy.api#enumValue" => "SHA256"}))
    ComputeObjectChecksumType.add_member(:full_object, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_OBJECT", traits: {"smithy.api#enumValue" => "FULL_OBJECT"}))
    ComputeObjectChecksumType.add_member(:composite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPOSITE", traits: {"smithy.api#enumValue" => "COMPOSITE"}))
    CreateAccessGrantRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    CreateAccessGrantRequest.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationId, name: "AccessGrantsLocationId", traits: {"smithy.api#required" => {}}))
    CreateAccessGrantRequest.add_member(:access_grants_location_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationConfiguration, name: "AccessGrantsLocationConfiguration"))
    CreateAccessGrantRequest.add_member(:grantee, ::Smithy::Schema::Shapes::MemberShape.new(target: Grantee, name: "Grantee", traits: {"smithy.api#required" => {}}))
    CreateAccessGrantRequest.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "Permission", traits: {"smithy.api#required" => {}}))
    CreateAccessGrantRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterApplicationArn, name: "ApplicationArn"))
    CreateAccessGrantRequest.add_member(:s3_prefix_type, ::Smithy::Schema::Shapes::MemberShape.new(target: S3PrefixType, name: "S3PrefixType"))
    CreateAccessGrantRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateAccessGrantRequest.type = Types::CreateAccessGrantRequest
    CreateAccessGrantResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "CreatedAt"))
    CreateAccessGrantResult.add_member(:access_grant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantId, name: "AccessGrantId"))
    CreateAccessGrantResult.add_member(:access_grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantArn, name: "AccessGrantArn"))
    CreateAccessGrantResult.add_member(:grantee, ::Smithy::Schema::Shapes::MemberShape.new(target: Grantee, name: "Grantee"))
    CreateAccessGrantResult.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationId, name: "AccessGrantsLocationId"))
    CreateAccessGrantResult.add_member(:access_grants_location_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationConfiguration, name: "AccessGrantsLocationConfiguration"))
    CreateAccessGrantResult.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "Permission"))
    CreateAccessGrantResult.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterApplicationArn, name: "ApplicationArn"))
    CreateAccessGrantResult.add_member(:grant_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "GrantScope"))
    CreateAccessGrantResult.type = Types::CreateAccessGrantResult
    CreateAccessGrantsInstanceRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    CreateAccessGrantsInstanceRequest.add_member(:identity_center_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterArn, name: "IdentityCenterArn"))
    CreateAccessGrantsInstanceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateAccessGrantsInstanceRequest.type = Types::CreateAccessGrantsInstanceRequest
    CreateAccessGrantsInstanceResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "CreatedAt"))
    CreateAccessGrantsInstanceResult.add_member(:access_grants_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsInstanceId, name: "AccessGrantsInstanceId"))
    CreateAccessGrantsInstanceResult.add_member(:access_grants_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsInstanceArn, name: "AccessGrantsInstanceArn"))
    CreateAccessGrantsInstanceResult.add_member(:identity_center_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterArn, name: "IdentityCenterArn", traits: {"smithy.api#deprecated" => {"message" => "IdentityCenterArn has been deprecated. Use IdentityCenterInstanceArn or IdentityCenterApplicationArn."}}))
    CreateAccessGrantsInstanceResult.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterArn, name: "IdentityCenterInstanceArn"))
    CreateAccessGrantsInstanceResult.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterApplicationArn, name: "IdentityCenterApplicationArn"))
    CreateAccessGrantsInstanceResult.type = Types::CreateAccessGrantsInstanceResult
    CreateAccessGrantsLocationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    CreateAccessGrantsLocationRequest.add_member(:location_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "LocationScope", traits: {"smithy.api#required" => {}}))
    CreateAccessGrantsLocationRequest.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IAMRoleArn", traits: {"smithy.api#required" => {}}))
    CreateAccessGrantsLocationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateAccessGrantsLocationRequest.type = Types::CreateAccessGrantsLocationRequest
    CreateAccessGrantsLocationResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "CreatedAt"))
    CreateAccessGrantsLocationResult.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationId, name: "AccessGrantsLocationId"))
    CreateAccessGrantsLocationResult.add_member(:access_grants_location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationArn, name: "AccessGrantsLocationArn"))
    CreateAccessGrantsLocationResult.add_member(:location_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "LocationScope"))
    CreateAccessGrantsLocationResult.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IAMRoleArn"))
    CreateAccessGrantsLocationResult.type = Types::CreateAccessGrantsLocationResult
    CreateAccessPointForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    CreateAccessPointForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAccessPointForObjectLambdaRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaConfiguration, name: "Configuration", traits: {"smithy.api#required" => {}}))
    CreateAccessPointForObjectLambdaRequest.type = Types::CreateAccessPointForObjectLambdaRequest
    CreateAccessPointForObjectLambdaResult.add_member(:object_lambda_access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointArn, name: "ObjectLambdaAccessPointArn"))
    CreateAccessPointForObjectLambdaResult.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointAlias, name: "Alias"))
    CreateAccessPointForObjectLambdaResult.type = Types::CreateAccessPointForObjectLambdaResult
    CreateAccessPointRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    CreateAccessPointRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    CreateAccessPointRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    CreateAccessPointRequest.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "VpcConfiguration"))
    CreateAccessPointRequest.add_member(:public_access_block_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessBlockConfiguration, name: "PublicAccessBlockConfiguration"))
    CreateAccessPointRequest.add_member(:bucket_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "BucketAccountId"))
    CreateAccessPointRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope"))
    CreateAccessPointRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateAccessPointRequest.type = Types::CreateAccessPointRequest
    CreateAccessPointResult.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointArn, name: "AccessPointArn"))
    CreateAccessPointResult.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Alias"))
    CreateAccessPointResult.type = Types::CreateAccessPointResult
    CreateBucketConfiguration.add_member(:location_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketLocationConstraint, name: "LocationConstraint"))
    CreateBucketConfiguration.type = Types::CreateBucketConfiguration
    CreateBucketRequest.add_member(:acl, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketCannedACL, name: "ACL", traits: {"smithy.api#httpHeader" => "x-amz-acl"}))
    CreateBucketRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    CreateBucketRequest.add_member(:create_bucket_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateBucketConfiguration, name: "CreateBucketConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "CreateBucketConfiguration"}))
    CreateBucketRequest.add_member(:grant_full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantFullControl, name: "GrantFullControl", traits: {"smithy.api#httpHeader" => "x-amz-grant-full-control"}))
    CreateBucketRequest.add_member(:grant_read, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantRead, name: "GrantRead", traits: {"smithy.api#httpHeader" => "x-amz-grant-read"}))
    CreateBucketRequest.add_member(:grant_read_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantReadACP, name: "GrantReadACP", traits: {"smithy.api#httpHeader" => "x-amz-grant-read-acp"}))
    CreateBucketRequest.add_member(:grant_write, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantWrite, name: "GrantWrite", traits: {"smithy.api#httpHeader" => "x-amz-grant-write"}))
    CreateBucketRequest.add_member(:grant_write_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantWriteACP, name: "GrantWriteACP", traits: {"smithy.api#httpHeader" => "x-amz-grant-write-acp"}))
    CreateBucketRequest.add_member(:object_lock_enabled_for_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLockEnabledForBucket, name: "ObjectLockEnabledForBucket", traits: {"smithy.api#default" => false, "smithy.api#httpHeader" => "x-amz-bucket-object-lock-enabled"}))
    CreateBucketRequest.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength64String, name: "OutpostId", traits: {"smithy.api#httpHeader" => "x-amz-outpost-id", "smithy.rules#contextParam" => {"name" => "OutpostId"}}))
    CreateBucketRequest[:http_payload] = :create_bucket_configuration
    CreateBucketRequest[:http_payload_member] = CreateBucketRequest.member(:create_bucket_configuration)
    CreateBucketRequest.type = Types::CreateBucketRequest
    CreateBucketResult.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "Location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateBucketResult.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3RegionalBucketArn, name: "BucketArn"))
    CreateBucketResult.type = Types::CreateBucketResult
    CreateJobRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    CreateJobRequest.add_member(:confirmation_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmationRequired, name: "ConfirmationRequired", traits: {"smithy.api#default" => nil}))
    CreateJobRequest.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: JobOperation, name: "Operation", traits: {"smithy.api#required" => {}}))
    CreateJobRequest.add_member(:report, ::Smithy::Schema::Shapes::MemberShape.new(target: JobReport, name: "Report", traits: {"smithy.api#required" => {}}))
    CreateJobRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength64String, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateJobRequest.add_member(:manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: JobManifest, name: "Manifest"))
    CreateJobRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength256String, name: "Description"))
    CreateJobRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: JobPriority, name: "Priority", traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    CreateJobRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    CreateJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TagSet, name: "Tags"))
    CreateJobRequest.add_member(:manifest_generator, ::Smithy::Schema::Shapes::MemberShape.new(target: JobManifestGenerator, name: "ManifestGenerator"))
    CreateJobRequest.type = Types::CreateJobRequest
    CreateJobResult.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    CreateJobResult.type = Types::CreateJobResult
    CreateMultiRegionAccessPointInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateMultiRegionAccessPointInput.add_member(:public_access_block, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessBlockConfiguration, name: "PublicAccessBlock"))
    CreateMultiRegionAccessPointInput.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionCreationList, name: "Regions", traits: {"smithy.api#required" => {}}))
    CreateMultiRegionAccessPointInput.type = Types::CreateMultiRegionAccessPointInput
    CreateMultiRegionAccessPointRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    CreateMultiRegionAccessPointRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateMultiRegionAccessPointRequest.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateMultiRegionAccessPointInput, name: "Details", traits: {"smithy.api#required" => {}}))
    CreateMultiRegionAccessPointRequest.type = Types::CreateMultiRegionAccessPointRequest
    CreateMultiRegionAccessPointResult.add_member(:request_token_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncRequestTokenARN, name: "RequestTokenARN"))
    CreateMultiRegionAccessPointResult.type = Types::CreateMultiRegionAccessPointResult
    CreateStorageLensGroupRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    CreateStorageLensGroupRequest.add_member(:storage_lens_group, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroup, name: "StorageLensGroup", traits: {"smithy.api#required" => {}}))
    CreateStorageLensGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateStorageLensGroupRequest.type = Types::CreateStorageLensGroupRequest
    Credentials.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessKeyId, name: "AccessKeyId"))
    Credentials.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretAccessKey, name: "SecretAccessKey"))
    Credentials.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionToken, name: "SessionToken"))
    Credentials.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: Expiration, name: "Expiration"))
    Credentials.type = Types::Credentials
    DSSEKMSFilter.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyKmsKeyArnString, name: "KmsKeyArn"))
    DSSEKMSFilter.type = Types::DSSEKMSFilter
    DeleteAccessGrantRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessGrantRequest.add_member(:access_grant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantId, name: "AccessGrantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessGrantRequest.type = Types::DeleteAccessGrantRequest
    DeleteAccessGrantsInstanceRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessGrantsInstanceRequest.type = Types::DeleteAccessGrantsInstanceRequest
    DeleteAccessGrantsInstanceResourcePolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessGrantsInstanceResourcePolicyRequest.type = Types::DeleteAccessGrantsInstanceResourcePolicyRequest
    DeleteAccessGrantsLocationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessGrantsLocationRequest.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationId, name: "AccessGrantsLocationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessGrantsLocationRequest.type = Types::DeleteAccessGrantsLocationRequest
    DeleteAccessPointForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessPointForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessPointForObjectLambdaRequest.type = Types::DeleteAccessPointForObjectLambdaRequest
    DeleteAccessPointPolicyForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessPointPolicyForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAccessPointPolicyForObjectLambdaRequest.type = Types::DeleteAccessPointPolicyForObjectLambdaRequest
    DeleteAccessPointPolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessPointPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    DeleteAccessPointPolicyRequest.type = Types::DeleteAccessPointPolicyRequest
    DeleteAccessPointRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessPointRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    DeleteAccessPointRequest.type = Types::DeleteAccessPointRequest
    DeleteAccessPointScopeRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "x-amz-account-id", "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteAccessPointScopeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    DeleteAccessPointScopeRequest.type = Types::DeleteAccessPointScopeRequest
    DeleteBucketLifecycleConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteBucketLifecycleConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketLifecycleConfigurationRequest.type = Types::DeleteBucketLifecycleConfigurationRequest
    DeleteBucketPolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteBucketPolicyRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketPolicyRequest.type = Types::DeleteBucketPolicyRequest
    DeleteBucketReplicationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteBucketReplicationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketReplicationRequest.type = Types::DeleteBucketReplicationRequest
    DeleteBucketRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteBucketRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketRequest.type = Types::DeleteBucketRequest
    DeleteBucketTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteBucketTaggingRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    DeleteBucketTaggingRequest.type = Types::DeleteBucketTaggingRequest
    DeleteJobTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteJobTaggingRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteJobTaggingRequest.type = Types::DeleteJobTaggingRequest
    DeleteJobTaggingResult.type = Types::DeleteJobTaggingResult
    DeleteMarkerReplication.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteMarkerReplicationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    DeleteMarkerReplication.type = Types::DeleteMarkerReplication
    DeleteMarkerReplicationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    DeleteMarkerReplicationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    DeleteMultiRegionAccessPointInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointName, name: "Name", traits: {"smithy.api#required" => {}}))
    DeleteMultiRegionAccessPointInput.type = Types::DeleteMultiRegionAccessPointInput
    DeleteMultiRegionAccessPointRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteMultiRegionAccessPointRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DeleteMultiRegionAccessPointRequest.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteMultiRegionAccessPointInput, name: "Details", traits: {"smithy.api#required" => {}}))
    DeleteMultiRegionAccessPointRequest.type = Types::DeleteMultiRegionAccessPointRequest
    DeleteMultiRegionAccessPointResult.add_member(:request_token_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncRequestTokenARN, name: "RequestTokenARN"))
    DeleteMultiRegionAccessPointResult.type = Types::DeleteMultiRegionAccessPointResult
    DeletePublicAccessBlockRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeletePublicAccessBlockRequest.type = Types::DeletePublicAccessBlockRequest
    DeleteStorageLensConfigurationRequest.add_member(:config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigId, name: "ConfigId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStorageLensConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteStorageLensConfigurationRequest.type = Types::DeleteStorageLensConfigurationRequest
    DeleteStorageLensConfigurationTaggingRequest.add_member(:config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigId, name: "ConfigId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStorageLensConfigurationTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteStorageLensConfigurationTaggingRequest.type = Types::DeleteStorageLensConfigurationTaggingRequest
    DeleteStorageLensConfigurationTaggingResult.type = Types::DeleteStorageLensConfigurationTaggingResult
    DeleteStorageLensGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteStorageLensGroupRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DeleteStorageLensGroupRequest.type = Types::DeleteStorageLensGroupRequest
    DescribeJobRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DescribeJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobRequest.type = Types::DescribeJobRequest
    DescribeJobResult.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDescriptor, name: "Job"))
    DescribeJobResult.type = Types::DescribeJobResult
    DescribeMultiRegionAccessPointOperationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DescribeMultiRegionAccessPointOperationRequest.add_member(:request_token_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncRequestTokenARN, name: "RequestTokenARN", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeMultiRegionAccessPointOperationRequest.type = Types::DescribeMultiRegionAccessPointOperationRequest
    DescribeMultiRegionAccessPointOperationResult.add_member(:async_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncOperation, name: "AsyncOperation"))
    DescribeMultiRegionAccessPointOperationResult.type = Types::DescribeMultiRegionAccessPointOperationResult
    Destination.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "Account"))
    Destination.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketIdentifierString, name: "Bucket", traits: {"smithy.api#required" => {}}))
    Destination.add_member(:replication_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTime, name: "ReplicationTime"))
    Destination.add_member(:access_control_translation, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlTranslation, name: "AccessControlTranslation"))
    Destination.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    Destination.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: Metrics, name: "Metrics"))
    Destination.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStorageClass, name: "StorageClass"))
    Destination.type = Types::Destination
    DetailedStatusCodesMetrics.add_member(:is_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: IsEnabled, name: "IsEnabled", traits: {"smithy.api#default" => false}))
    DetailedStatusCodesMetrics.type = Types::DetailedStatusCodesMetrics
    DissociateAccessGrantsIdentityCenterRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    DissociateAccessGrantsIdentityCenterRequest.type = Types::DissociateAccessGrantsIdentityCenterRequest
    EncryptionConfiguration.add_member(:replica_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaKmsKeyID, name: "ReplicaKmsKeyID"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    Endpoints.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength64String, name: "key"))
    Endpoints.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "value"))
    EstablishedMultiRegionAccessPointPolicy.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy"))
    EstablishedMultiRegionAccessPointPolicy.type = Types::EstablishedMultiRegionAccessPointPolicy
    Exclude.add_member(:buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: Buckets, name: "Buckets"))
    Exclude.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "Regions"))
    Exclude.type = Types::Exclude
    ExistingObjectReplication.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingObjectReplicationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ExistingObjectReplication.type = Types::ExistingObjectReplication
    ExistingObjectReplicationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ExistingObjectReplicationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    ExpirationStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ExpirationStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    Format.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "CSV"}))
    Format.add_member(:parquet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Parquet", traits: {"smithy.api#enumValue" => "Parquet"}))
    GeneratedManifestEncryption.add_member(:sses3, ::Smithy::Schema::Shapes::MemberShape.new(target: SSES3Encryption, name: "SSES3", traits: {"smithy.api#xmlName" => "SSE-S3"}))
    GeneratedManifestEncryption.add_member(:ssekms, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSEncryption, name: "SSEKMS", traits: {"smithy.api#xmlName" => "SSE-KMS"}))
    GeneratedManifestEncryption.type = Types::GeneratedManifestEncryption
    GeneratedManifestFormat.add_member(:s3_inventory_report_csv_20211130, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3InventoryReport_CSV_20211130", traits: {"smithy.api#enumValue" => "S3InventoryReport_CSV_20211130"}))
    GetAccessGrantRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessGrantRequest.add_member(:access_grant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantId, name: "AccessGrantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessGrantRequest.type = Types::GetAccessGrantRequest
    GetAccessGrantResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "CreatedAt"))
    GetAccessGrantResult.add_member(:access_grant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantId, name: "AccessGrantId"))
    GetAccessGrantResult.add_member(:access_grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantArn, name: "AccessGrantArn"))
    GetAccessGrantResult.add_member(:grantee, ::Smithy::Schema::Shapes::MemberShape.new(target: Grantee, name: "Grantee"))
    GetAccessGrantResult.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "Permission"))
    GetAccessGrantResult.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationId, name: "AccessGrantsLocationId"))
    GetAccessGrantResult.add_member(:access_grants_location_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationConfiguration, name: "AccessGrantsLocationConfiguration"))
    GetAccessGrantResult.add_member(:grant_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "GrantScope"))
    GetAccessGrantResult.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterApplicationArn, name: "ApplicationArn"))
    GetAccessGrantResult.type = Types::GetAccessGrantResult
    GetAccessGrantsInstanceForPrefixRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessGrantsInstanceForPrefixRequest.add_member(:s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "S3Prefix", traits: {"smithy.api#httpQuery" => "s3prefix", "smithy.api#required" => {}}))
    GetAccessGrantsInstanceForPrefixRequest.type = Types::GetAccessGrantsInstanceForPrefixRequest
    GetAccessGrantsInstanceForPrefixResult.add_member(:access_grants_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsInstanceArn, name: "AccessGrantsInstanceArn"))
    GetAccessGrantsInstanceForPrefixResult.add_member(:access_grants_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsInstanceId, name: "AccessGrantsInstanceId"))
    GetAccessGrantsInstanceForPrefixResult.type = Types::GetAccessGrantsInstanceForPrefixResult
    GetAccessGrantsInstanceRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessGrantsInstanceRequest.type = Types::GetAccessGrantsInstanceRequest
    GetAccessGrantsInstanceResourcePolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessGrantsInstanceResourcePolicyRequest.type = Types::GetAccessGrantsInstanceResourcePolicyRequest
    GetAccessGrantsInstanceResourcePolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "Policy"))
    GetAccessGrantsInstanceResourcePolicyResult.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: Organization, name: "Organization"))
    GetAccessGrantsInstanceResourcePolicyResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "CreatedAt"))
    GetAccessGrantsInstanceResourcePolicyResult.type = Types::GetAccessGrantsInstanceResourcePolicyResult
    GetAccessGrantsInstanceResult.add_member(:access_grants_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsInstanceArn, name: "AccessGrantsInstanceArn"))
    GetAccessGrantsInstanceResult.add_member(:access_grants_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsInstanceId, name: "AccessGrantsInstanceId"))
    GetAccessGrantsInstanceResult.add_member(:identity_center_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterArn, name: "IdentityCenterArn", traits: {"smithy.api#deprecated" => {"message" => "IdentityCenterArn has been deprecated. Use IdentityCenterInstanceArn or IdentityCenterApplicationArn."}}))
    GetAccessGrantsInstanceResult.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterArn, name: "IdentityCenterInstanceArn"))
    GetAccessGrantsInstanceResult.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterApplicationArn, name: "IdentityCenterApplicationArn"))
    GetAccessGrantsInstanceResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "CreatedAt"))
    GetAccessGrantsInstanceResult.type = Types::GetAccessGrantsInstanceResult
    GetAccessGrantsLocationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessGrantsLocationRequest.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationId, name: "AccessGrantsLocationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessGrantsLocationRequest.type = Types::GetAccessGrantsLocationRequest
    GetAccessGrantsLocationResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "CreatedAt"))
    GetAccessGrantsLocationResult.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationId, name: "AccessGrantsLocationId"))
    GetAccessGrantsLocationResult.add_member(:access_grants_location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationArn, name: "AccessGrantsLocationArn"))
    GetAccessGrantsLocationResult.add_member(:location_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "LocationScope"))
    GetAccessGrantsLocationResult.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IAMRoleArn"))
    GetAccessGrantsLocationResult.type = Types::GetAccessGrantsLocationResult
    GetAccessPointConfigurationForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessPointConfigurationForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessPointConfigurationForObjectLambdaRequest.type = Types::GetAccessPointConfigurationForObjectLambdaRequest
    GetAccessPointConfigurationForObjectLambdaResult.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaConfiguration, name: "Configuration"))
    GetAccessPointConfigurationForObjectLambdaResult.type = Types::GetAccessPointConfigurationForObjectLambdaResult
    GetAccessPointForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessPointForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessPointForObjectLambdaRequest.type = Types::GetAccessPointForObjectLambdaRequest
    GetAccessPointForObjectLambdaResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointName, name: "Name"))
    GetAccessPointForObjectLambdaResult.add_member(:public_access_block_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessBlockConfiguration, name: "PublicAccessBlockConfiguration"))
    GetAccessPointForObjectLambdaResult.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationDate, name: "CreationDate"))
    GetAccessPointForObjectLambdaResult.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointAlias, name: "Alias"))
    GetAccessPointForObjectLambdaResult.type = Types::GetAccessPointForObjectLambdaResult
    GetAccessPointPolicyForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessPointPolicyForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessPointPolicyForObjectLambdaRequest.type = Types::GetAccessPointPolicyForObjectLambdaRequest
    GetAccessPointPolicyForObjectLambdaResult.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaPolicy, name: "Policy"))
    GetAccessPointPolicyForObjectLambdaResult.type = Types::GetAccessPointPolicyForObjectLambdaResult
    GetAccessPointPolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessPointPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    GetAccessPointPolicyRequest.type = Types::GetAccessPointPolicyRequest
    GetAccessPointPolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy"))
    GetAccessPointPolicyResult.type = Types::GetAccessPointPolicyResult
    GetAccessPointPolicyStatusForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessPointPolicyStatusForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessPointPolicyStatusForObjectLambdaRequest.type = Types::GetAccessPointPolicyStatusForObjectLambdaRequest
    GetAccessPointPolicyStatusForObjectLambdaResult.add_member(:policy_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatus, name: "PolicyStatus"))
    GetAccessPointPolicyStatusForObjectLambdaResult.type = Types::GetAccessPointPolicyStatusForObjectLambdaResult
    GetAccessPointPolicyStatusRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessPointPolicyStatusRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    GetAccessPointPolicyStatusRequest.type = Types::GetAccessPointPolicyStatusRequest
    GetAccessPointPolicyStatusResult.add_member(:policy_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatus, name: "PolicyStatus"))
    GetAccessPointPolicyStatusResult.type = Types::GetAccessPointPolicyStatusResult
    GetAccessPointRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessPointRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    GetAccessPointRequest.type = Types::GetAccessPointRequest
    GetAccessPointResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "Name"))
    GetAccessPointResult.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointBucketName, name: "Bucket"))
    GetAccessPointResult.add_member(:network_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkOrigin, name: "NetworkOrigin"))
    GetAccessPointResult.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "VpcConfiguration"))
    GetAccessPointResult.add_member(:public_access_block_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessBlockConfiguration, name: "PublicAccessBlockConfiguration"))
    GetAccessPointResult.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationDate, name: "CreationDate"))
    GetAccessPointResult.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Alias"))
    GetAccessPointResult.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointArn, name: "AccessPointArn"))
    GetAccessPointResult.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoints, name: "Endpoints"))
    GetAccessPointResult.add_member(:bucket_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "BucketAccountId"))
    GetAccessPointResult.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "DataSourceId"))
    GetAccessPointResult.add_member(:data_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceType, name: "DataSourceType"))
    GetAccessPointResult.type = Types::GetAccessPointResult
    GetAccessPointScopeRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "x-amz-account-id", "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetAccessPointScopeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    GetAccessPointScopeRequest.type = Types::GetAccessPointScopeRequest
    GetAccessPointScopeResult.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope"))
    GetAccessPointScopeResult.type = Types::GetAccessPointScopeResult
    GetBucketLifecycleConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetBucketLifecycleConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketLifecycleConfigurationRequest.type = Types::GetBucketLifecycleConfigurationRequest
    GetBucketLifecycleConfigurationResult.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleRules, name: "Rules"))
    GetBucketLifecycleConfigurationResult.type = Types::GetBucketLifecycleConfigurationResult
    GetBucketPolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetBucketPolicyRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketPolicyRequest.type = Types::GetBucketPolicyRequest
    GetBucketPolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy"))
    GetBucketPolicyResult.type = Types::GetBucketPolicyResult
    GetBucketReplicationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetBucketReplicationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketReplicationRequest.type = Types::GetBucketReplicationRequest
    GetBucketReplicationResult.add_member(:replication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfiguration, name: "ReplicationConfiguration"))
    GetBucketReplicationResult.type = Types::GetBucketReplicationResult
    GetBucketRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetBucketRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketRequest.type = Types::GetBucketRequest
    GetBucketResult.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket"))
    GetBucketResult.add_member(:public_access_block_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessBlockEnabled, name: "PublicAccessBlockEnabled", traits: {"smithy.api#default" => false}))
    GetBucketResult.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationDate, name: "CreationDate"))
    GetBucketResult.type = Types::GetBucketResult
    GetBucketTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetBucketTaggingRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketTaggingRequest.type = Types::GetBucketTaggingRequest
    GetBucketTaggingResult.add_member(:tag_set, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TagSet, name: "TagSet", traits: {"smithy.api#required" => {}}))
    GetBucketTaggingResult.type = Types::GetBucketTaggingResult
    GetBucketVersioningRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetBucketVersioningRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    GetBucketVersioningRequest.type = Types::GetBucketVersioningRequest
    GetBucketVersioningResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketVersioningStatus, name: "Status"))
    GetBucketVersioningResult.add_member(:mfa_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: MFADeleteStatus, name: "MFADelete", traits: {"smithy.api#xmlName" => "MfaDelete"}))
    GetBucketVersioningResult.type = Types::GetBucketVersioningResult
    GetDataAccessRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetDataAccessRequest.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "Target", traits: {"smithy.api#httpQuery" => "target", "smithy.api#required" => {}}))
    GetDataAccessRequest.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "Permission", traits: {"smithy.api#httpQuery" => "permission", "smithy.api#required" => {}}))
    GetDataAccessRequest.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: DurationSeconds, name: "DurationSeconds", traits: {"smithy.api#httpQuery" => "durationSeconds"}))
    GetDataAccessRequest.add_member(:privilege, ::Smithy::Schema::Shapes::MemberShape.new(target: Privilege, name: "Privilege", traits: {"smithy.api#httpQuery" => "privilege"}))
    GetDataAccessRequest.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: S3PrefixType, name: "TargetType", traits: {"smithy.api#httpQuery" => "targetType"}))
    GetDataAccessRequest.type = Types::GetDataAccessRequest
    GetDataAccessResult.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: Credentials, name: "Credentials"))
    GetDataAccessResult.add_member(:matched_grant_target, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "MatchedGrantTarget"))
    GetDataAccessResult.add_member(:grantee, ::Smithy::Schema::Shapes::MemberShape.new(target: Grantee, name: "Grantee"))
    GetDataAccessResult.type = Types::GetDataAccessResult
    GetJobTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetJobTaggingRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobTaggingRequest.type = Types::GetJobTaggingRequest
    GetJobTaggingResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TagSet, name: "Tags"))
    GetJobTaggingResult.type = Types::GetJobTaggingResult
    GetMultiRegionAccessPointPolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetMultiRegionAccessPointPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMultiRegionAccessPointPolicyRequest.type = Types::GetMultiRegionAccessPointPolicyRequest
    GetMultiRegionAccessPointPolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointPolicyDocument, name: "Policy"))
    GetMultiRegionAccessPointPolicyResult.type = Types::GetMultiRegionAccessPointPolicyResult
    GetMultiRegionAccessPointPolicyStatusRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetMultiRegionAccessPointPolicyStatusRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMultiRegionAccessPointPolicyStatusRequest.type = Types::GetMultiRegionAccessPointPolicyStatusRequest
    GetMultiRegionAccessPointPolicyStatusResult.add_member(:established, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyStatus, name: "Established"))
    GetMultiRegionAccessPointPolicyStatusResult.type = Types::GetMultiRegionAccessPointPolicyStatusResult
    GetMultiRegionAccessPointRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetMultiRegionAccessPointRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMultiRegionAccessPointRequest.type = Types::GetMultiRegionAccessPointRequest
    GetMultiRegionAccessPointResult.add_member(:access_point, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointReport, name: "AccessPoint"))
    GetMultiRegionAccessPointResult.type = Types::GetMultiRegionAccessPointResult
    GetMultiRegionAccessPointRoutesRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetMultiRegionAccessPointRoutesRequest.add_member(:mrap, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointId, name: "Mrap", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMultiRegionAccessPointRoutesRequest.type = Types::GetMultiRegionAccessPointRoutesRequest
    GetMultiRegionAccessPointRoutesResult.add_member(:mrap, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointId, name: "Mrap"))
    GetMultiRegionAccessPointRoutesResult.add_member(:routes, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteList, name: "Routes"))
    GetMultiRegionAccessPointRoutesResult.type = Types::GetMultiRegionAccessPointRoutesResult
    GetPublicAccessBlockOutput.add_member(:public_access_block_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessBlockConfiguration, name: "PublicAccessBlockConfiguration", traits: {"smithy.api#httpPayload" => {}}))
    GetPublicAccessBlockOutput[:http_payload] = :public_access_block_configuration
    GetPublicAccessBlockOutput[:http_payload_member] = GetPublicAccessBlockOutput.member(:public_access_block_configuration)
    GetPublicAccessBlockOutput.type = Types::GetPublicAccessBlockOutput
    GetPublicAccessBlockRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetPublicAccessBlockRequest.type = Types::GetPublicAccessBlockRequest
    GetStorageLensConfigurationRequest.add_member(:config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigId, name: "ConfigId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStorageLensConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetStorageLensConfigurationRequest.type = Types::GetStorageLensConfigurationRequest
    GetStorageLensConfigurationResult.add_member(:storage_lens_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensConfiguration, name: "StorageLensConfiguration", traits: {"smithy.api#httpPayload" => {}}))
    GetStorageLensConfigurationResult[:http_payload] = :storage_lens_configuration
    GetStorageLensConfigurationResult[:http_payload_member] = GetStorageLensConfigurationResult.member(:storage_lens_configuration)
    GetStorageLensConfigurationResult.type = Types::GetStorageLensConfigurationResult
    GetStorageLensConfigurationTaggingRequest.add_member(:config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigId, name: "ConfigId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStorageLensConfigurationTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetStorageLensConfigurationTaggingRequest.type = Types::GetStorageLensConfigurationTaggingRequest
    GetStorageLensConfigurationTaggingResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensTags, name: "Tags"))
    GetStorageLensConfigurationTaggingResult.type = Types::GetStorageLensConfigurationTaggingResult
    GetStorageLensGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetStorageLensGroupRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    GetStorageLensGroupRequest.type = Types::GetStorageLensGroupRequest
    GetStorageLensGroupResult.add_member(:storage_lens_group, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroup, name: "StorageLensGroup", traits: {"smithy.api#httpPayload" => {}}))
    GetStorageLensGroupResult[:http_payload] = :storage_lens_group
    GetStorageLensGroupResult[:http_payload_member] = GetStorageLensGroupResult.member(:storage_lens_group)
    GetStorageLensGroupResult.type = Types::GetStorageLensGroupResult
    Grantee.add_member(:grantee_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GranteeType, name: "GranteeType"))
    Grantee.add_member(:grantee_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GranteeIdentifier, name: "GranteeIdentifier"))
    Grantee.type = Types::Grantee
    GranteeType.add_member(:directory_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECTORY_USER", traits: {"smithy.api#enumValue" => "DIRECTORY_USER"}))
    GranteeType.add_member(:directory_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECTORY_GROUP", traits: {"smithy.api#enumValue" => "DIRECTORY_GROUP"}))
    GranteeType.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM", traits: {"smithy.api#enumValue" => "IAM"}))
    IdempotencyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    IdempotencyException.type = Types::IdempotencyException
    Include.add_member(:buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: Buckets, name: "Buckets"))
    Include.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: Regions, name: "Regions"))
    Include.type = Types::Include
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InternalServiceException.type = Types::InternalServiceException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    JobDescriptor.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    JobDescriptor.add_member(:confirmation_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmationRequired, name: "ConfirmationRequired", traits: {"smithy.api#default" => nil}))
    JobDescriptor.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength256String, name: "Description"))
    JobDescriptor.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "JobArn"))
    JobDescriptor.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "Status"))
    JobDescriptor.add_member(:manifest, ::Smithy::Schema::Shapes::MemberShape.new(target: JobManifest, name: "Manifest"))
    JobDescriptor.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: JobOperation, name: "Operation"))
    JobDescriptor.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: JobPriority, name: "Priority", traits: {"smithy.api#default" => 0}))
    JobDescriptor.add_member(:progress_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: JobProgressSummary, name: "ProgressSummary"))
    JobDescriptor.add_member(:status_update_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusUpdateReason, name: "StatusUpdateReason"))
    JobDescriptor.add_member(:failure_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: JobFailureList, name: "FailureReasons"))
    JobDescriptor.add_member(:report, ::Smithy::Schema::Shapes::MemberShape.new(target: JobReport, name: "Report"))
    JobDescriptor.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: JobCreationTime, name: "CreationTime"))
    JobDescriptor.add_member(:termination_date, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTerminationDate, name: "TerminationDate"))
    JobDescriptor.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "RoleArn"))
    JobDescriptor.add_member(:suspended_date, ::Smithy::Schema::Shapes::MemberShape.new(target: SuspendedDate, name: "SuspendedDate"))
    JobDescriptor.add_member(:suspended_cause, ::Smithy::Schema::Shapes::MemberShape.new(target: SuspendedCause, name: "SuspendedCause"))
    JobDescriptor.add_member(:manifest_generator, ::Smithy::Schema::Shapes::MemberShape.new(target: JobManifestGenerator, name: "ManifestGenerator"))
    JobDescriptor.add_member(:generated_manifest_descriptor, ::Smithy::Schema::Shapes::MemberShape.new(target: S3GeneratedManifestDescriptor, name: "GeneratedManifestDescriptor"))
    JobDescriptor.type = Types::JobDescriptor
    JobFailure.add_member(:failure_code, ::Smithy::Schema::Shapes::MemberShape.new(target: JobFailureCode, name: "FailureCode"))
    JobFailure.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: JobFailureReason, name: "FailureReason"))
    JobFailure.type = Types::JobFailure
    JobFailureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobFailure, name: "member"))
    JobListDescriptor.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    JobListDescriptor.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength256String, name: "Description"))
    JobListDescriptor.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationName, name: "Operation"))
    JobListDescriptor.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: JobPriority, name: "Priority", traits: {"smithy.api#default" => 0}))
    JobListDescriptor.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "Status"))
    JobListDescriptor.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: JobCreationTime, name: "CreationTime"))
    JobListDescriptor.add_member(:termination_date, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTerminationDate, name: "TerminationDate"))
    JobListDescriptor.add_member(:progress_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: JobProgressSummary, name: "ProgressSummary"))
    JobListDescriptor.type = Types::JobListDescriptor
    JobListDescriptorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobListDescriptor, name: "member"))
    JobManifest.add_member(:spec, ::Smithy::Schema::Shapes::MemberShape.new(target: JobManifestSpec, name: "Spec", traits: {"smithy.api#required" => {}}))
    JobManifest.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: JobManifestLocation, name: "Location", traits: {"smithy.api#required" => {}}))
    JobManifest.type = Types::JobManifest
    JobManifestFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobManifestFieldName, name: "member"))
    JobManifestFieldName.add_member(:ignore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ignore", traits: {"smithy.api#enumValue" => "Ignore"}))
    JobManifestFieldName.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Bucket", traits: {"smithy.api#enumValue" => "Bucket"}))
    JobManifestFieldName.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Key", traits: {"smithy.api#enumValue" => "Key"}))
    JobManifestFieldName.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VersionId", traits: {"smithy.api#enumValue" => "VersionId"}))
    JobManifestFormat.add_member(:s3_batch_operations_csv_20180820, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3BatchOperations_CSV_20180820", traits: {"smithy.api#enumValue" => "S3BatchOperations_CSV_20180820"}))
    JobManifestFormat.add_member(:s3_inventory_report_csv_20161130, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3InventoryReport_CSV_20161130", traits: {"smithy.api#enumValue" => "S3InventoryReport_CSV_20161130"}))
    JobManifestGenerator.add_member(:s3_job_manifest_generator, Types::JobManifestGenerator::S3JobManifestGenerator, ::Smithy::Schema::Shapes::MemberShape.new(target: S3JobManifestGenerator, name: "S3JobManifestGenerator"))
    JobManifestGenerator.add_member(:unknown, Types::JobManifestGenerator::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    JobManifestGenerator.type = Types::JobManifestGenerator
    JobManifestGeneratorFilter.add_member(:eligible_for_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EligibleForReplication", traits: {"smithy.api#default" => nil}))
    JobManifestGeneratorFilter.add_member(:created_after, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectCreationTime, name: "CreatedAfter"))
    JobManifestGeneratorFilter.add_member(:created_before, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectCreationTime, name: "CreatedBefore"))
    JobManifestGeneratorFilter.add_member(:object_replication_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatusFilterList, name: "ObjectReplicationStatuses"))
    JobManifestGeneratorFilter.add_member(:key_name_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyNameConstraint, name: "KeyNameConstraint"))
    JobManifestGeneratorFilter.add_member(:object_size_greater_than_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSizeGreaterThanBytes, name: "ObjectSizeGreaterThanBytes", traits: {"smithy.api#default" => nil}))
    JobManifestGeneratorFilter.add_member(:object_size_less_than_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSizeLessThanBytes, name: "ObjectSizeLessThanBytes", traits: {"smithy.api#default" => nil}))
    JobManifestGeneratorFilter.add_member(:match_any_storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClassList, name: "MatchAnyStorageClass"))
    JobManifestGeneratorFilter.add_member(:match_any_object_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectEncryptionFilterList, name: "MatchAnyObjectEncryption"))
    JobManifestGeneratorFilter.type = Types::JobManifestGeneratorFilter
    JobManifestLocation.add_member(:object_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3KeyArnString, name: "ObjectArn", traits: {"smithy.api#required" => {}}))
    JobManifestLocation.add_member(:object_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectVersionId, name: "ObjectVersionId"))
    JobManifestLocation.add_member(:e_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "ETag", traits: {"smithy.api#required" => {}}))
    JobManifestLocation.type = Types::JobManifestLocation
    JobManifestSpec.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: JobManifestFormat, name: "Format", traits: {"smithy.api#required" => {}}))
    JobManifestSpec.add_member(:fields, ::Smithy::Schema::Shapes::MemberShape.new(target: JobManifestFieldList, name: "Fields"))
    JobManifestSpec.type = Types::JobManifestSpec
    JobOperation.add_member(:lambda_invoke, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaInvokeOperation, name: "LambdaInvoke"))
    JobOperation.add_member(:s3_put_object_copy, ::Smithy::Schema::Shapes::MemberShape.new(target: S3CopyObjectOperation, name: "S3PutObjectCopy"))
    JobOperation.add_member(:s3_put_object_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SetObjectAclOperation, name: "S3PutObjectAcl"))
    JobOperation.add_member(:s3_put_object_tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SetObjectTaggingOperation, name: "S3PutObjectTagging"))
    JobOperation.add_member(:s3_delete_object_tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DeleteObjectTaggingOperation, name: "S3DeleteObjectTagging"))
    JobOperation.add_member(:s3_initiate_restore_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3InitiateRestoreObjectOperation, name: "S3InitiateRestoreObject"))
    JobOperation.add_member(:s3_put_object_legal_hold, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SetObjectLegalHoldOperation, name: "S3PutObjectLegalHold"))
    JobOperation.add_member(:s3_put_object_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SetObjectRetentionOperation, name: "S3PutObjectRetention"))
    JobOperation.add_member(:s3_replicate_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ReplicateObjectOperation, name: "S3ReplicateObject"))
    JobOperation.add_member(:s3_compute_object_checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ComputeObjectChecksumOperation, name: "S3ComputeObjectChecksum"))
    JobOperation.type = Types::JobOperation
    JobProgressSummary.add_member(:total_number_of_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTotalNumberOfTasks, name: "TotalNumberOfTasks", traits: {"smithy.api#default" => nil}))
    JobProgressSummary.add_member(:number_of_tasks_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: JobNumberOfTasksSucceeded, name: "NumberOfTasksSucceeded", traits: {"smithy.api#default" => nil}))
    JobProgressSummary.add_member(:number_of_tasks_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: JobNumberOfTasksFailed, name: "NumberOfTasksFailed", traits: {"smithy.api#default" => nil}))
    JobProgressSummary.add_member(:timers, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTimers, name: "Timers"))
    JobProgressSummary.type = Types::JobProgressSummary
    JobReport.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketArnString, name: "Bucket"))
    JobReport.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: JobReportFormat, name: "Format"))
    JobReport.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    JobReport.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPrefixString, name: "Prefix"))
    JobReport.add_member(:report_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: JobReportScope, name: "ReportScope"))
    JobReport.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner"))
    JobReport.type = Types::JobReport
    JobReportFormat.add_member(:report_csv_20180820, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Report_CSV_20180820", traits: {"smithy.api#enumValue" => "Report_CSV_20180820"}))
    JobReportScope.add_member(:all_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AllTasks", traits: {"smithy.api#enumValue" => "AllTasks"}))
    JobReportScope.add_member(:failed_tasks_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailedTasksOnly", traits: {"smithy.api#enumValue" => "FailedTasksOnly"}))
    JobStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    JobStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cancelled", traits: {"smithy.api#enumValue" => "Cancelled"}))
    JobStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cancelling", traits: {"smithy.api#enumValue" => "Cancelling"}))
    JobStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Complete", traits: {"smithy.api#enumValue" => "Complete"}))
    JobStatus.add_member(:completing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Completing", traits: {"smithy.api#enumValue" => "Completing"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    JobStatus.add_member(:failing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failing", traits: {"smithy.api#enumValue" => "Failing"}))
    JobStatus.add_member(:new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "New", traits: {"smithy.api#enumValue" => "New"}))
    JobStatus.add_member(:paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Paused", traits: {"smithy.api#enumValue" => "Paused"}))
    JobStatus.add_member(:pausing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pausing", traits: {"smithy.api#enumValue" => "Pausing"}))
    JobStatus.add_member(:preparing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Preparing", traits: {"smithy.api#enumValue" => "Preparing"}))
    JobStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ready", traits: {"smithy.api#enumValue" => "Ready"}))
    JobStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Suspended", traits: {"smithy.api#enumValue" => "Suspended"}))
    JobStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    JobStatusException.type = Types::JobStatusException
    JobStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "member"))
    JobTimers.add_member(:elapsed_time_in_active_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTimeInStateSeconds, name: "ElapsedTimeInActiveSeconds", traits: {"smithy.api#default" => nil}))
    JobTimers.type = Types::JobTimers
    KeyNameConstraint.add_member(:match_any_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024StringList, name: "MatchAnyPrefix"))
    KeyNameConstraint.add_member(:match_any_suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024StringList, name: "MatchAnySuffix"))
    KeyNameConstraint.add_member(:match_any_substring, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024StringList, name: "MatchAnySubstring"))
    KeyNameConstraint.type = Types::KeyNameConstraint
    LambdaInvokeOperation.add_member(:function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArnString, name: "FunctionArn"))
    LambdaInvokeOperation.add_member(:invocation_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength64String, name: "InvocationSchemaVersion"))
    LambdaInvokeOperation.add_member(:user_arguments, ::Smithy::Schema::Shapes::MemberShape.new(target: UserArguments, name: "UserArguments"))
    LambdaInvokeOperation.type = Types::LambdaInvokeOperation
    LifecycleConfiguration.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleRules, name: "Rules"))
    LifecycleConfiguration.type = Types::LifecycleConfiguration
    LifecycleExpiration.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "Date"))
    LifecycleExpiration.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: Days, name: "Days", traits: {"smithy.api#default" => 0}))
    LifecycleExpiration.add_member(:expired_object_delete_marker, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpiredObjectDeleteMarker, name: "ExpiredObjectDeleteMarker", traits: {"smithy.api#default" => false}))
    LifecycleExpiration.type = Types::LifecycleExpiration
    LifecycleRule.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExpiration, name: "Expiration"))
    LifecycleRule.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "ID"))
    LifecycleRule.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleRuleFilter, name: "Filter"))
    LifecycleRule.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpirationStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    LifecycleRule.add_member(:transitions, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitionList, name: "Transitions"))
    LifecycleRule.add_member(:noncurrent_version_transitions, ::Smithy::Schema::Shapes::MemberShape.new(target: NoncurrentVersionTransitionList, name: "NoncurrentVersionTransitions"))
    LifecycleRule.add_member(:noncurrent_version_expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: NoncurrentVersionExpiration, name: "NoncurrentVersionExpiration"))
    LifecycleRule.add_member(:abort_incomplete_multipart_upload, ::Smithy::Schema::Shapes::MemberShape.new(target: AbortIncompleteMultipartUpload, name: "AbortIncompleteMultipartUpload"))
    LifecycleRule.type = Types::LifecycleRule
    LifecycleRuleAndOperator.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    LifecycleRuleAndOperator.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TagSet, name: "Tags"))
    LifecycleRuleAndOperator.add_member(:object_size_greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSizeGreaterThanBytes, name: "ObjectSizeGreaterThan", traits: {"smithy.api#default" => nil}))
    LifecycleRuleAndOperator.add_member(:object_size_less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSizeLessThanBytes, name: "ObjectSizeLessThan", traits: {"smithy.api#default" => nil}))
    LifecycleRuleAndOperator.type = Types::LifecycleRuleAndOperator
    LifecycleRuleFilter.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    LifecycleRuleFilter.add_member(:tag, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Tag, name: "Tag"))
    LifecycleRuleFilter.add_member(:and, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleRuleAndOperator, name: "And"))
    LifecycleRuleFilter.add_member(:object_size_greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSizeGreaterThanBytes, name: "ObjectSizeGreaterThan", traits: {"smithy.api#default" => nil}))
    LifecycleRuleFilter.add_member(:object_size_less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSizeLessThanBytes, name: "ObjectSizeLessThan", traits: {"smithy.api#default" => nil}))
    LifecycleRuleFilter.type = Types::LifecycleRuleFilter
    LifecycleRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleRule, name: "member", traits: {"smithy.api#xmlName" => "Rule"}))
    ListAccessGrantEntry.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "CreatedAt"))
    ListAccessGrantEntry.add_member(:access_grant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantId, name: "AccessGrantId"))
    ListAccessGrantEntry.add_member(:access_grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantArn, name: "AccessGrantArn"))
    ListAccessGrantEntry.add_member(:grantee, ::Smithy::Schema::Shapes::MemberShape.new(target: Grantee, name: "Grantee"))
    ListAccessGrantEntry.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "Permission"))
    ListAccessGrantEntry.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationId, name: "AccessGrantsLocationId"))
    ListAccessGrantEntry.add_member(:access_grants_location_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationConfiguration, name: "AccessGrantsLocationConfiguration"))
    ListAccessGrantEntry.add_member(:grant_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "GrantScope"))
    ListAccessGrantEntry.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterApplicationArn, name: "ApplicationArn"))
    ListAccessGrantEntry.type = Types::ListAccessGrantEntry
    ListAccessGrantsInstanceEntry.add_member(:access_grants_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsInstanceId, name: "AccessGrantsInstanceId"))
    ListAccessGrantsInstanceEntry.add_member(:access_grants_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsInstanceArn, name: "AccessGrantsInstanceArn"))
    ListAccessGrantsInstanceEntry.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "CreatedAt"))
    ListAccessGrantsInstanceEntry.add_member(:identity_center_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterArn, name: "IdentityCenterArn", traits: {"smithy.api#deprecated" => {"message" => "IdentityCenterArn has been deprecated. Use IdentityCenterInstanceArn or IdentityCenterApplicationArn."}}))
    ListAccessGrantsInstanceEntry.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterArn, name: "IdentityCenterInstanceArn"))
    ListAccessGrantsInstanceEntry.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterApplicationArn, name: "IdentityCenterApplicationArn"))
    ListAccessGrantsInstanceEntry.type = Types::ListAccessGrantsInstanceEntry
    ListAccessGrantsInstancesRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListAccessGrantsInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessGrantsInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListAccessGrantsInstancesRequest.type = Types::ListAccessGrantsInstancesRequest
    ListAccessGrantsInstancesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "NextToken"))
    ListAccessGrantsInstancesResult.add_member(:access_grants_instances_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsInstancesList, name: "AccessGrantsInstancesList"))
    ListAccessGrantsInstancesResult.type = Types::ListAccessGrantsInstancesResult
    ListAccessGrantsLocationsEntry.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "CreatedAt"))
    ListAccessGrantsLocationsEntry.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationId, name: "AccessGrantsLocationId"))
    ListAccessGrantsLocationsEntry.add_member(:access_grants_location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationArn, name: "AccessGrantsLocationArn"))
    ListAccessGrantsLocationsEntry.add_member(:location_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "LocationScope"))
    ListAccessGrantsLocationsEntry.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IAMRoleArn"))
    ListAccessGrantsLocationsEntry.type = Types::ListAccessGrantsLocationsEntry
    ListAccessGrantsLocationsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListAccessGrantsLocationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessGrantsLocationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListAccessGrantsLocationsRequest.add_member(:location_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "LocationScope", traits: {"smithy.api#httpQuery" => "locationscope"}))
    ListAccessGrantsLocationsRequest.type = Types::ListAccessGrantsLocationsRequest
    ListAccessGrantsLocationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "NextToken"))
    ListAccessGrantsLocationsResult.add_member(:access_grants_locations_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationsList, name: "AccessGrantsLocationsList"))
    ListAccessGrantsLocationsResult.type = Types::ListAccessGrantsLocationsResult
    ListAccessGrantsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListAccessGrantsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessGrantsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListAccessGrantsRequest.add_member(:grantee_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GranteeType, name: "GranteeType", traits: {"smithy.api#httpQuery" => "granteetype"}))
    ListAccessGrantsRequest.add_member(:grantee_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: GranteeIdentifier, name: "GranteeIdentifier", traits: {"smithy.api#httpQuery" => "granteeidentifier"}))
    ListAccessGrantsRequest.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "Permission", traits: {"smithy.api#httpQuery" => "permission"}))
    ListAccessGrantsRequest.add_member(:grant_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "GrantScope", traits: {"smithy.api#httpQuery" => "grantscope"}))
    ListAccessGrantsRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterApplicationArn, name: "ApplicationArn", traits: {"smithy.api#httpQuery" => "application_arn"}))
    ListAccessGrantsRequest.type = Types::ListAccessGrantsRequest
    ListAccessGrantsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "NextToken"))
    ListAccessGrantsResult.add_member(:access_grants_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsList, name: "AccessGrantsList"))
    ListAccessGrantsResult.type = Types::ListAccessGrantsResult
    ListAccessPointsForDirectoryBucketsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "x-amz-account-id", "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListAccessPointsForDirectoryBucketsRequest.add_member(:directory_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "DirectoryBucket", traits: {"smithy.api#httpQuery" => "directoryBucket"}))
    ListAccessPointsForDirectoryBucketsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessPointsForDirectoryBucketsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListAccessPointsForDirectoryBucketsRequest.type = Types::ListAccessPointsForDirectoryBucketsRequest
    ListAccessPointsForDirectoryBucketsResult.add_member(:access_point_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointList, name: "AccessPointList"))
    ListAccessPointsForDirectoryBucketsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "NextToken"))
    ListAccessPointsForDirectoryBucketsResult.type = Types::ListAccessPointsForDirectoryBucketsResult
    ListAccessPointsForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListAccessPointsForObjectLambdaRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessPointsForObjectLambdaRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListAccessPointsForObjectLambdaRequest.type = Types::ListAccessPointsForObjectLambdaRequest
    ListAccessPointsForObjectLambdaResult.add_member(:object_lambda_access_point_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointList, name: "ObjectLambdaAccessPointList"))
    ListAccessPointsForObjectLambdaResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "NextToken"))
    ListAccessPointsForObjectLambdaResult.type = Types::ListAccessPointsForObjectLambdaResult
    ListAccessPointsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListAccessPointsRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpQuery" => "bucket", "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    ListAccessPointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessPointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListAccessPointsRequest.add_member(:data_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceId, name: "DataSourceId", traits: {"smithy.api#httpQuery" => "dataSourceId"}))
    ListAccessPointsRequest.add_member(:data_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceType, name: "DataSourceType", traits: {"smithy.api#httpQuery" => "dataSourceType"}))
    ListAccessPointsRequest.type = Types::ListAccessPointsRequest
    ListAccessPointsResult.add_member(:access_point_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointList, name: "AccessPointList"))
    ListAccessPointsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "NextToken"))
    ListAccessPointsResult.type = Types::ListAccessPointsResult
    ListCallerAccessGrantsEntry.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "Permission"))
    ListCallerAccessGrantsEntry.add_member(:grant_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "GrantScope"))
    ListCallerAccessGrantsEntry.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterApplicationArn, name: "ApplicationArn"))
    ListCallerAccessGrantsEntry.type = Types::ListCallerAccessGrantsEntry
    ListCallerAccessGrantsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListCallerAccessGrantsRequest.add_member(:grant_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "GrantScope", traits: {"smithy.api#httpQuery" => "grantscope"}))
    ListCallerAccessGrantsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCallerAccessGrantsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListCallerAccessGrantsRequest.add_member(:allowed_by_application, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AllowedByApplication", traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "allowedByApplication"}))
    ListCallerAccessGrantsRequest.type = Types::ListCallerAccessGrantsRequest
    ListCallerAccessGrantsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "NextToken"))
    ListCallerAccessGrantsResult.add_member(:caller_access_grants_list, ::Smithy::Schema::Shapes::MemberShape.new(target: CallerAccessGrantsList, name: "CallerAccessGrantsList"))
    ListCallerAccessGrantsResult.type = Types::ListCallerAccessGrantsResult
    ListJobsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListJobsRequest.add_member(:job_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusList, name: "JobStatuses", traits: {"smithy.api#httpQuery" => "jobStatuses"}))
    ListJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: StringForNextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListJobsRequest.type = Types::ListJobsRequest
    ListJobsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: StringForNextToken, name: "NextToken"))
    ListJobsResult.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: JobListDescriptorList, name: "Jobs"))
    ListJobsResult.type = Types::ListJobsResult
    ListMultiRegionAccessPointsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListMultiRegionAccessPointsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMultiRegionAccessPointsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListMultiRegionAccessPointsRequest.type = Types::ListMultiRegionAccessPointsRequest
    ListMultiRegionAccessPointsResult.add_member(:access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointReportList, name: "AccessPoints"))
    ListMultiRegionAccessPointsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "NextToken"))
    ListMultiRegionAccessPointsResult.type = Types::ListMultiRegionAccessPointsResult
    ListRegionalBucketsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListRegionalBucketsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRegionalBucketsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListRegionalBucketsRequest.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength64String, name: "OutpostId", traits: {"smithy.api#httpHeader" => "x-amz-outpost-id", "smithy.rules#contextParam" => {"name" => "OutpostId"}}))
    ListRegionalBucketsRequest.type = Types::ListRegionalBucketsRequest
    ListRegionalBucketsResult.add_member(:regional_bucket_list, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionalBucketList, name: "RegionalBucketList"))
    ListRegionalBucketsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "NextToken"))
    ListRegionalBucketsResult.type = Types::ListRegionalBucketsResult
    ListStorageLensConfigurationEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigId, name: "Id", traits: {"smithy.api#required" => {}}))
    ListStorageLensConfigurationEntry.add_member(:storage_lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensArn, name: "StorageLensArn", traits: {"smithy.api#required" => {}}))
    ListStorageLensConfigurationEntry.add_member(:home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AWSRegion, name: "HomeRegion", traits: {"smithy.api#required" => {}}))
    ListStorageLensConfigurationEntry.add_member(:is_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: IsEnabled, name: "IsEnabled", traits: {"smithy.api#default" => false}))
    ListStorageLensConfigurationEntry.type = Types::ListStorageLensConfigurationEntry
    ListStorageLensConfigurationsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListStorageLensConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListStorageLensConfigurationsRequest.type = Types::ListStorageLensConfigurationsRequest
    ListStorageLensConfigurationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "NextToken"))
    ListStorageLensConfigurationsResult.add_member(:storage_lens_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensConfigurationList, name: "StorageLensConfigurationList", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "StorageLensConfiguration"}))
    ListStorageLensConfigurationsResult.type = Types::ListStorageLensConfigurationsResult
    ListStorageLensGroupEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupName, name: "Name", traits: {"smithy.api#required" => {}}))
    ListStorageLensGroupEntry.add_member(:storage_lens_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupArn, name: "StorageLensGroupArn", traits: {"smithy.api#required" => {}}))
    ListStorageLensGroupEntry.add_member(:home_region, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AWSRegion, name: "HomeRegion", traits: {"smithy.api#required" => {}}))
    ListStorageLensGroupEntry.type = Types::ListStorageLensGroupEntry
    ListStorageLensGroupsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListStorageLensGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListStorageLensGroupsRequest.type = Types::ListStorageLensGroupsRequest
    ListStorageLensGroupsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ContinuationToken, name: "NextToken"))
    ListStorageLensGroupsResult.add_member(:storage_lens_group_list, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupList, name: "StorageLensGroupList", traits: {"smithy.api#xmlFlattened" => {}, "smithy.api#xmlName" => "StorageLensGroup"}))
    ListStorageLensGroupsResult.type = Types::ListStorageLensGroupsResult
    ListTagsForResourceRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResult.type = Types::ListTagsForResourceResult
    MFADelete.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    MFADelete.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    MFADeleteStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    MFADeleteStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    MatchAnyPrefix.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "member", traits: {"smithy.api#xmlName" => "Prefix"}))
    MatchAnySuffix.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Suffix, name: "member", traits: {"smithy.api#xmlName" => "Suffix"}))
    MatchAnyTag.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Tag, name: "member", traits: {"smithy.api#xmlName" => "Tag"}))
    MatchObjectAge.add_member(:days_greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectAgeValue, name: "DaysGreaterThan", traits: {"smithy.api#default" => 0}))
    MatchObjectAge.add_member(:days_less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectAgeValue, name: "DaysLessThan", traits: {"smithy.api#default" => 0}))
    MatchObjectAge.type = Types::MatchObjectAge
    MatchObjectSize.add_member(:bytes_greater_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSizeValue, name: "BytesGreaterThan", traits: {"smithy.api#default" => 0}))
    MatchObjectSize.add_member(:bytes_less_than, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectSizeValue, name: "BytesLessThan", traits: {"smithy.api#default" => 0}))
    MatchObjectSize.type = Types::MatchObjectSize
    Metrics.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricsStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    Metrics.add_member(:event_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTimeValue, name: "EventThreshold"))
    Metrics.type = Types::Metrics
    MetricsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    MetricsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    MultiRegionAccessPointPolicyDocument.add_member(:established, ::Smithy::Schema::Shapes::MemberShape.new(target: EstablishedMultiRegionAccessPointPolicy, name: "Established"))
    MultiRegionAccessPointPolicyDocument.add_member(:proposed, ::Smithy::Schema::Shapes::MemberShape.new(target: ProposedMultiRegionAccessPointPolicy, name: "Proposed"))
    MultiRegionAccessPointPolicyDocument.type = Types::MultiRegionAccessPointPolicyDocument
    MultiRegionAccessPointRegionalResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "Name"))
    MultiRegionAccessPointRegionalResponse.add_member(:request_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncRequestStatus, name: "RequestStatus"))
    MultiRegionAccessPointRegionalResponse.type = Types::MultiRegionAccessPointRegionalResponse
    MultiRegionAccessPointRegionalResponseList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointRegionalResponse, name: "member", traits: {"smithy.api#xmlName" => "Region"}))
    MultiRegionAccessPointReport.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointName, name: "Name"))
    MultiRegionAccessPointReport.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointAlias, name: "Alias"))
    MultiRegionAccessPointReport.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "CreatedAt"))
    MultiRegionAccessPointReport.add_member(:public_access_block, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessBlockConfiguration, name: "PublicAccessBlock"))
    MultiRegionAccessPointReport.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointStatus, name: "Status"))
    MultiRegionAccessPointReport.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionReportList, name: "Regions"))
    MultiRegionAccessPointReport.type = Types::MultiRegionAccessPointReport
    MultiRegionAccessPointReportList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointReport, name: "member", traits: {"smithy.api#xmlName" => "AccessPoint"}))
    MultiRegionAccessPointRoute.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket"))
    MultiRegionAccessPointRoute.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "Region"))
    MultiRegionAccessPointRoute.add_member(:traffic_dial_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: TrafficDialPercentage, name: "TrafficDialPercentage", traits: {"smithy.api#required" => {}}))
    MultiRegionAccessPointRoute.type = Types::MultiRegionAccessPointRoute
    MultiRegionAccessPointStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    MultiRegionAccessPointStatus.add_member(:inconsistent_across_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCONSISTENT_ACROSS_REGIONS", traits: {"smithy.api#enumValue" => "INCONSISTENT_ACROSS_REGIONS"}))
    MultiRegionAccessPointStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    MultiRegionAccessPointStatus.add_member(:partially_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIALLY_CREATED", traits: {"smithy.api#enumValue" => "PARTIALLY_CREATED"}))
    MultiRegionAccessPointStatus.add_member(:partially_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTIALLY_DELETED", traits: {"smithy.api#enumValue" => "PARTIALLY_DELETED"}))
    MultiRegionAccessPointStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    MultiRegionAccessPointsAsyncResponse.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointRegionalResponseList, name: "Regions"))
    MultiRegionAccessPointsAsyncResponse.type = Types::MultiRegionAccessPointsAsyncResponse
    NetworkOrigin.add_member(:internet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Internet", traits: {"smithy.api#enumValue" => "Internet"}))
    NetworkOrigin.add_member(:vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC", traits: {"smithy.api#enumValue" => "VPC"}))
    NoSuchPublicAccessBlockConfiguration.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NoSuchPublicAccessBlockConfigurationMessage, name: "Message"))
    NoSuchPublicAccessBlockConfiguration.type = Types::NoSuchPublicAccessBlockConfiguration
    NonEmptyMaxLength1024StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "member"))
    NoncurrentVersionExpiration.add_member(:noncurrent_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Days, name: "NoncurrentDays", traits: {"smithy.api#default" => 0}))
    NoncurrentVersionExpiration.add_member(:newer_noncurrent_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: NoncurrentVersionCount, name: "NewerNoncurrentVersions", traits: {"smithy.api#default" => nil}))
    NoncurrentVersionExpiration.type = Types::NoncurrentVersionExpiration
    NoncurrentVersionTransition.add_member(:noncurrent_days, ::Smithy::Schema::Shapes::MemberShape.new(target: Days, name: "NoncurrentDays", traits: {"smithy.api#default" => 0}))
    NoncurrentVersionTransition.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitionStorageClass, name: "StorageClass"))
    NoncurrentVersionTransition.type = Types::NoncurrentVersionTransition
    NoncurrentVersionTransitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NoncurrentVersionTransition, name: "member", traits: {"smithy.api#xmlName" => "NoncurrentVersionTransition"}))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    NotFoundException.type = Types::NotFoundException
    NotSSEFilter.type = Types::NotSSEFilter
    ObjectEncryptionFilter.add_member(:sses3, Types::ObjectEncryptionFilter::SSES3, ::Smithy::Schema::Shapes::MemberShape.new(target: SSES3Filter, name: "SSES3", traits: {"smithy.api#xmlName" => "SSE-S3"}))
    ObjectEncryptionFilter.add_member(:ssekms, Types::ObjectEncryptionFilter::SSEKMS, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSFilter, name: "SSEKMS", traits: {"smithy.api#xmlName" => "SSE-KMS"}))
    ObjectEncryptionFilter.add_member(:dssekms, Types::ObjectEncryptionFilter::DSSEKMS, ::Smithy::Schema::Shapes::MemberShape.new(target: DSSEKMSFilter, name: "DSSEKMS", traits: {"smithy.api#xmlName" => "DSSE-KMS"}))
    ObjectEncryptionFilter.add_member(:ssec, Types::ObjectEncryptionFilter::SSEC, ::Smithy::Schema::Shapes::MemberShape.new(target: SSECFilter, name: "SSEC", traits: {"smithy.api#xmlName" => "SSE-C"}))
    ObjectEncryptionFilter.add_member(:notsse, Types::ObjectEncryptionFilter::NOTSSE, ::Smithy::Schema::Shapes::MemberShape.new(target: NotSSEFilter, name: "NOTSSE", traits: {"smithy.api#xmlName" => "NOT-SSE"}))
    ObjectEncryptionFilter.add_member(:unknown, Types::ObjectEncryptionFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ObjectEncryptionFilter.type = Types::ObjectEncryptionFilter
    ObjectEncryptionFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectEncryptionFilter, name: "member", traits: {"smithy.api#xmlName" => "ObjectEncryption"}))
    ObjectLambdaAccessPoint.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointName, name: "Name", traits: {"smithy.api#required" => {}}))
    ObjectLambdaAccessPoint.add_member(:object_lambda_access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointArn, name: "ObjectLambdaAccessPointArn"))
    ObjectLambdaAccessPoint.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointAlias, name: "Alias"))
    ObjectLambdaAccessPoint.type = Types::ObjectLambdaAccessPoint
    ObjectLambdaAccessPointAlias.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointAliasValue, name: "Value"))
    ObjectLambdaAccessPointAlias.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointAliasStatus, name: "Status"))
    ObjectLambdaAccessPointAlias.type = Types::ObjectLambdaAccessPointAlias
    ObjectLambdaAccessPointAliasStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    ObjectLambdaAccessPointAliasStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    ObjectLambdaAccessPointList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPoint, name: "member", traits: {"smithy.api#xmlName" => "ObjectLambdaAccessPoint"}))
    ObjectLambdaAllowedFeature.add_member(:get_object_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GetObjectRange", traits: {"smithy.api#enumValue" => "GetObject-Range"}))
    ObjectLambdaAllowedFeature.add_member(:get_object_part_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GetObjectPartNumber", traits: {"smithy.api#enumValue" => "GetObject-PartNumber"}))
    ObjectLambdaAllowedFeature.add_member(:head_object_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HeadObjectRange", traits: {"smithy.api#enumValue" => "HeadObject-Range"}))
    ObjectLambdaAllowedFeature.add_member(:head_object_part_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HeadObjectPartNumber", traits: {"smithy.api#enumValue" => "HeadObject-PartNumber"}))
    ObjectLambdaAllowedFeaturesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAllowedFeature, name: "member", traits: {"smithy.api#xmlName" => "AllowedFeature"}))
    ObjectLambdaConfiguration.add_member(:supporting_access_point, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaSupportingAccessPointArn, name: "SupportingAccessPoint", traits: {"smithy.api#required" => {}}))
    ObjectLambdaConfiguration.add_member(:cloud_watch_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "CloudWatchMetricsEnabled", traits: {"smithy.api#default" => false}))
    ObjectLambdaConfiguration.add_member(:allowed_features, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAllowedFeaturesList, name: "AllowedFeatures"))
    ObjectLambdaConfiguration.add_member(:transformation_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaTransformationConfigurationsList, name: "TransformationConfigurations", traits: {"smithy.api#required" => {}}))
    ObjectLambdaConfiguration.type = Types::ObjectLambdaConfiguration
    ObjectLambdaContentTransformation.add_member(:aws_lambda, Types::ObjectLambdaContentTransformation::AwsLambda, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsLambdaTransformation, name: "AwsLambda"))
    ObjectLambdaContentTransformation.add_member(:unknown, Types::ObjectLambdaContentTransformation::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ObjectLambdaContentTransformation.type = Types::ObjectLambdaContentTransformation
    ObjectLambdaTransformationConfiguration.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaTransformationConfigurationActionsList, name: "Actions", traits: {"smithy.api#required" => {}}))
    ObjectLambdaTransformationConfiguration.add_member(:content_transformation, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaContentTransformation, name: "ContentTransformation", traits: {"smithy.api#required" => {}}))
    ObjectLambdaTransformationConfiguration.type = Types::ObjectLambdaTransformationConfiguration
    ObjectLambdaTransformationConfigurationAction.add_member(:get_object, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GetObject", traits: {"smithy.api#enumValue" => "GetObject"}))
    ObjectLambdaTransformationConfigurationAction.add_member(:head_object, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HeadObject", traits: {"smithy.api#enumValue" => "HeadObject"}))
    ObjectLambdaTransformationConfigurationAction.add_member(:list_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ListObjects", traits: {"smithy.api#enumValue" => "ListObjects"}))
    ObjectLambdaTransformationConfigurationAction.add_member(:list_objects_v2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ListObjectsV2", traits: {"smithy.api#enumValue" => "ListObjectsV2"}))
    ObjectLambdaTransformationConfigurationActionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaTransformationConfigurationAction, name: "member", traits: {"smithy.api#xmlName" => "Action"}))
    ObjectLambdaTransformationConfigurationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaTransformationConfiguration, name: "member", traits: {"smithy.api#xmlName" => "TransformationConfiguration"}))
    OperationName.add_member(:lambda_invoke, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaInvoke", traits: {"smithy.api#enumValue" => "LambdaInvoke"}))
    OperationName.add_member(:s3_put_object_copy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3PutObjectCopy", traits: {"smithy.api#enumValue" => "S3PutObjectCopy"}))
    OperationName.add_member(:s3_put_object_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3PutObjectAcl", traits: {"smithy.api#enumValue" => "S3PutObjectAcl"}))
    OperationName.add_member(:s3_put_object_tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3PutObjectTagging", traits: {"smithy.api#enumValue" => "S3PutObjectTagging"}))
    OperationName.add_member(:s3_delete_object_tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3DeleteObjectTagging", traits: {"smithy.api#enumValue" => "S3DeleteObjectTagging"}))
    OperationName.add_member(:s3_initiate_restore_object, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3InitiateRestoreObject", traits: {"smithy.api#enumValue" => "S3InitiateRestoreObject"}))
    OperationName.add_member(:s3_put_object_legal_hold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3PutObjectLegalHold", traits: {"smithy.api#enumValue" => "S3PutObjectLegalHold"}))
    OperationName.add_member(:s3_put_object_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3PutObjectRetention", traits: {"smithy.api#enumValue" => "S3PutObjectRetention"}))
    OperationName.add_member(:s3_replicate_object, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3ReplicateObject", traits: {"smithy.api#enumValue" => "S3ReplicateObject"}))
    OperationName.add_member(:s3_compute_object_checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3ComputeObjectChecksum", traits: {"smithy.api#enumValue" => "S3ComputeObjectChecksum"}))
    OutputSchemaVersion.add_member(:v_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V_1", traits: {"smithy.api#enumValue" => "V_1"}))
    OwnerOverride.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Destination", traits: {"smithy.api#enumValue" => "Destination"}))
    Permission.add_member(:read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ", traits: {"smithy.api#enumValue" => "READ"}))
    Permission.add_member(:write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WRITE", traits: {"smithy.api#enumValue" => "WRITE"}))
    Permission.add_member(:readwrite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READWRITE", traits: {"smithy.api#enumValue" => "READWRITE"}))
    PolicyStatus.add_member(:is_public, ::Smithy::Schema::Shapes::MemberShape.new(target: IsPublic, name: "IsPublic", traits: {"smithy.api#default" => false, "smithy.api#xmlName" => "IsPublic"}))
    PolicyStatus.type = Types::PolicyStatus
    PrefixLevel.add_member(:storage_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefixLevelStorageMetrics, name: "StorageMetrics", traits: {"smithy.api#required" => {}}))
    PrefixLevel.type = Types::PrefixLevel
    PrefixLevelStorageMetrics.add_member(:is_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: IsEnabled, name: "IsEnabled", traits: {"smithy.api#default" => false}))
    PrefixLevelStorageMetrics.add_member(:selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectionCriteria, name: "SelectionCriteria"))
    PrefixLevelStorageMetrics.type = Types::PrefixLevelStorageMetrics
    PrefixesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "member", traits: {"smithy.api#xmlName" => "Prefix"}))
    Privilege.add_member(:minimal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Minimal", traits: {"smithy.api#enumValue" => "Minimal"}))
    Privilege.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Default", traits: {"smithy.api#enumValue" => "Default"}))
    ProposedMultiRegionAccessPointPolicy.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy"))
    ProposedMultiRegionAccessPointPolicy.type = Types::ProposedMultiRegionAccessPointPolicy
    PublicAccessBlockConfiguration.add_member(:block_public_acls, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, name: "BlockPublicAcls", traits: {"smithy.api#default" => false, "smithy.api#xmlName" => "BlockPublicAcls"}))
    PublicAccessBlockConfiguration.add_member(:ignore_public_acls, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, name: "IgnorePublicAcls", traits: {"smithy.api#default" => false, "smithy.api#xmlName" => "IgnorePublicAcls"}))
    PublicAccessBlockConfiguration.add_member(:block_public_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, name: "BlockPublicPolicy", traits: {"smithy.api#default" => false, "smithy.api#xmlName" => "BlockPublicPolicy"}))
    PublicAccessBlockConfiguration.add_member(:restrict_public_buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, name: "RestrictPublicBuckets", traits: {"smithy.api#default" => false, "smithy.api#xmlName" => "RestrictPublicBuckets"}))
    PublicAccessBlockConfiguration.type = Types::PublicAccessBlockConfiguration
    PutAccessGrantsInstanceResourcePolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutAccessGrantsInstanceResourcePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutAccessGrantsInstanceResourcePolicyRequest.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: Organization, name: "Organization"))
    PutAccessGrantsInstanceResourcePolicyRequest.type = Types::PutAccessGrantsInstanceResourcePolicyRequest
    PutAccessGrantsInstanceResourcePolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "Policy"))
    PutAccessGrantsInstanceResourcePolicyResult.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: Organization, name: "Organization"))
    PutAccessGrantsInstanceResourcePolicyResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "CreatedAt"))
    PutAccessGrantsInstanceResourcePolicyResult.type = Types::PutAccessGrantsInstanceResourcePolicyResult
    PutAccessPointConfigurationForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutAccessPointConfigurationForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAccessPointConfigurationForObjectLambdaRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaConfiguration, name: "Configuration", traits: {"smithy.api#required" => {}}))
    PutAccessPointConfigurationForObjectLambdaRequest.type = Types::PutAccessPointConfigurationForObjectLambdaRequest
    PutAccessPointPolicyForObjectLambdaRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutAccessPointPolicyForObjectLambdaRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaAccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutAccessPointPolicyForObjectLambdaRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectLambdaPolicy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutAccessPointPolicyForObjectLambdaRequest.type = Types::PutAccessPointPolicyForObjectLambdaRequest
    PutAccessPointPolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutAccessPointPolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    PutAccessPointPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutAccessPointPolicyRequest.type = Types::PutAccessPointPolicyRequest
    PutAccessPointScopeRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#hostLabel" => {}, "smithy.api#httpHeader" => "x-amz-account-id", "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutAccessPointScopeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "AccessPointName"}}))
    PutAccessPointScopeRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "Scope", traits: {"smithy.api#required" => {}}))
    PutAccessPointScopeRequest.type = Types::PutAccessPointScopeRequest
    PutBucketLifecycleConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutBucketLifecycleConfigurationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketLifecycleConfigurationRequest.add_member(:lifecycle_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleConfiguration, name: "LifecycleConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#xmlName" => "LifecycleConfiguration"}))
    PutBucketLifecycleConfigurationRequest[:http_payload] = :lifecycle_configuration
    PutBucketLifecycleConfigurationRequest[:http_payload_member] = PutBucketLifecycleConfigurationRequest.member(:lifecycle_configuration)
    PutBucketLifecycleConfigurationRequest.type = Types::PutBucketLifecycleConfigurationRequest
    PutBucketPolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutBucketPolicyRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketPolicyRequest.add_member(:confirm_remove_self_bucket_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmRemoveSelfBucketAccess, name: "ConfirmRemoveSelfBucketAccess", traits: {"smithy.api#default" => false, "smithy.api#httpHeader" => "x-amz-confirm-remove-self-bucket-access"}))
    PutBucketPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutBucketPolicyRequest.type = Types::PutBucketPolicyRequest
    PutBucketReplicationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutBucketReplicationRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketReplicationRequest.add_member(:replication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationConfiguration, name: "ReplicationConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "ReplicationConfiguration"}))
    PutBucketReplicationRequest[:http_payload] = :replication_configuration
    PutBucketReplicationRequest[:http_payload_member] = PutBucketReplicationRequest.member(:replication_configuration)
    PutBucketReplicationRequest.type = Types::PutBucketReplicationRequest
    PutBucketTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutBucketTaggingRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketTaggingRequest.add_member(:tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: Tagging, name: "Tagging", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "Tagging"}))
    PutBucketTaggingRequest[:http_payload] = :tagging
    PutBucketTaggingRequest[:http_payload_member] = PutBucketTaggingRequest.member(:tagging)
    PutBucketTaggingRequest.type = Types::PutBucketTaggingRequest
    PutBucketVersioningRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutBucketVersioningRequest.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "Bucket"}}))
    PutBucketVersioningRequest.add_member(:mfa, ::Smithy::Schema::Shapes::MemberShape.new(target: MFA, name: "MFA", traits: {"smithy.api#httpHeader" => "x-amz-mfa"}))
    PutBucketVersioningRequest.add_member(:versioning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VersioningConfiguration, name: "VersioningConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "VersioningConfiguration"}))
    PutBucketVersioningRequest[:http_payload] = :versioning_configuration
    PutBucketVersioningRequest[:http_payload_member] = PutBucketVersioningRequest.member(:versioning_configuration)
    PutBucketVersioningRequest.type = Types::PutBucketVersioningRequest
    PutJobTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutJobTaggingRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutJobTaggingRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TagSet, name: "Tags", traits: {"smithy.api#required" => {}}))
    PutJobTaggingRequest.type = Types::PutJobTaggingRequest
    PutJobTaggingResult.type = Types::PutJobTaggingResult
    PutMultiRegionAccessPointPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointName, name: "Name", traits: {"smithy.api#required" => {}}))
    PutMultiRegionAccessPointPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: Policy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutMultiRegionAccessPointPolicyInput.type = Types::PutMultiRegionAccessPointPolicyInput
    PutMultiRegionAccessPointPolicyRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutMultiRegionAccessPointPolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    PutMultiRegionAccessPointPolicyRequest.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: PutMultiRegionAccessPointPolicyInput, name: "Details", traits: {"smithy.api#required" => {}}))
    PutMultiRegionAccessPointPolicyRequest.type = Types::PutMultiRegionAccessPointPolicyRequest
    PutMultiRegionAccessPointPolicyResult.add_member(:request_token_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncRequestTokenARN, name: "RequestTokenARN"))
    PutMultiRegionAccessPointPolicyResult.type = Types::PutMultiRegionAccessPointPolicyResult
    PutPublicAccessBlockRequest.add_member(:public_access_block_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessBlockConfiguration, name: "PublicAccessBlockConfiguration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}, "smithy.api#xmlName" => "PublicAccessBlockConfiguration"}))
    PutPublicAccessBlockRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutPublicAccessBlockRequest[:http_payload] = :public_access_block_configuration
    PutPublicAccessBlockRequest[:http_payload_member] = PutPublicAccessBlockRequest.member(:public_access_block_configuration)
    PutPublicAccessBlockRequest.type = Types::PutPublicAccessBlockRequest
    PutStorageLensConfigurationRequest.add_member(:config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigId, name: "ConfigId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutStorageLensConfigurationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutStorageLensConfigurationRequest.add_member(:storage_lens_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensConfiguration, name: "StorageLensConfiguration", traits: {"smithy.api#required" => {}}))
    PutStorageLensConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensTags, name: "Tags"))
    PutStorageLensConfigurationRequest.type = Types::PutStorageLensConfigurationRequest
    PutStorageLensConfigurationTaggingRequest.add_member(:config_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigId, name: "ConfigId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutStorageLensConfigurationTaggingRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    PutStorageLensConfigurationTaggingRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensTags, name: "Tags", traits: {"smithy.api#required" => {}}))
    PutStorageLensConfigurationTaggingRequest.type = Types::PutStorageLensConfigurationTaggingRequest
    PutStorageLensConfigurationTaggingResult.type = Types::PutStorageLensConfigurationTaggingResult
    Region.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#required" => {}}))
    Region.add_member(:bucket_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "BucketAccountId"))
    Region.type = Types::Region
    RegionCreationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, name: "member", traits: {"smithy.api#xmlName" => "Region"}))
    RegionReport.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket"))
    RegionReport.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "Region"))
    RegionReport.add_member(:bucket_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "BucketAccountId"))
    RegionReport.type = Types::RegionReport
    RegionReportList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionReport, name: "member", traits: {"smithy.api#xmlName" => "Region"}))
    RegionalBucket.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketName, name: "Bucket", traits: {"smithy.api#required" => {}}))
    RegionalBucket.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3RegionalBucketArn, name: "BucketArn"))
    RegionalBucket.add_member(:public_access_block_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: PublicAccessBlockEnabled, name: "PublicAccessBlockEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    RegionalBucket.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationDate, name: "CreationDate", traits: {"smithy.api#required" => {}}))
    RegionalBucket.add_member(:outpost_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength64String, name: "OutpostId"))
    RegionalBucket.type = Types::RegionalBucket
    RegionalBucketList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionalBucket, name: "member", traits: {"smithy.api#xmlName" => "RegionalBucket"}))
    Regions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AWSRegion, name: "member", traits: {"smithy.api#xmlName" => "Region"}))
    ReplicaModifications.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaModificationsStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ReplicaModifications.type = Types::ReplicaModifications
    ReplicaModificationsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ReplicaModificationsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    ReplicationConfiguration.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: Role, name: "Role", traits: {"smithy.api#required" => {}}))
    ReplicationConfiguration.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationRules, name: "Rules", traits: {"smithy.api#required" => {}}))
    ReplicationConfiguration.type = Types::ReplicationConfiguration
    ReplicationRule.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ID, name: "ID"))
    ReplicationRule.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: Priority, name: "Priority", traits: {"smithy.api#default" => nil}))
    ReplicationRule.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix", traits: {"smithy.api#deprecated" => {"message" => "Prefix has been deprecated"}}))
    ReplicationRule.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationRuleFilter, name: "Filter"))
    ReplicationRule.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationRuleStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ReplicationRule.add_member(:source_selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceSelectionCriteria, name: "SourceSelectionCriteria"))
    ReplicationRule.add_member(:existing_object_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: ExistingObjectReplication, name: "ExistingObjectReplication"))
    ReplicationRule.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "Destination", traits: {"smithy.api#required" => {}}))
    ReplicationRule.add_member(:delete_marker_replication, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteMarkerReplication, name: "DeleteMarkerReplication"))
    ReplicationRule.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketIdentifierString, name: "Bucket", traits: {"smithy.api#required" => {}}))
    ReplicationRule.type = Types::ReplicationRule
    ReplicationRuleAndOperator.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    ReplicationRuleAndOperator.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TagSet, name: "Tags"))
    ReplicationRuleAndOperator.type = Types::ReplicationRuleAndOperator
    ReplicationRuleFilter.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    ReplicationRuleFilter.add_member(:tag, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Tag, name: "Tag"))
    ReplicationRuleFilter.add_member(:and, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationRuleAndOperator, name: "And"))
    ReplicationRuleFilter.type = Types::ReplicationRuleFilter
    ReplicationRuleStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ReplicationRuleStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    ReplicationRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationRule, name: "member", traits: {"smithy.api#xmlName" => "Rule"}))
    ReplicationStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ReplicationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ReplicationStatus.add_member(:replica, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICA", traits: {"smithy.api#enumValue" => "REPLICA"}))
    ReplicationStatus.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ReplicationStatusFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationStatus, name: "member"))
    ReplicationStorageClass.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    ReplicationStorageClass.add_member(:reduced_redundancy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDUCED_REDUNDANCY", traits: {"smithy.api#enumValue" => "REDUCED_REDUNDANCY"}))
    ReplicationStorageClass.add_member(:standard_ia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD_IA", traits: {"smithy.api#enumValue" => "STANDARD_IA"}))
    ReplicationStorageClass.add_member(:onezone_ia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONEZONE_IA", traits: {"smithy.api#enumValue" => "ONEZONE_IA"}))
    ReplicationStorageClass.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTELLIGENT_TIERING", traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    ReplicationStorageClass.add_member(:glacier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLACIER", traits: {"smithy.api#enumValue" => "GLACIER"}))
    ReplicationStorageClass.add_member(:deep_archive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEEP_ARCHIVE", traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE"}))
    ReplicationStorageClass.add_member(:outposts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTPOSTS", traits: {"smithy.api#enumValue" => "OUTPOSTS"}))
    ReplicationStorageClass.add_member(:glacier_ir, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLACIER_IR", traits: {"smithy.api#enumValue" => "GLACIER_IR"}))
    ReplicationTime.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTimeStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    ReplicationTime.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicationTimeValue, name: "Time", traits: {"smithy.api#required" => {}}))
    ReplicationTime.type = Types::ReplicationTime
    ReplicationTimeStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ReplicationTimeStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    ReplicationTimeValue.add_member(:minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Minutes, name: "Minutes", traits: {"smithy.api#default" => nil}))
    ReplicationTimeValue.type = Types::ReplicationTimeValue
    RequestedJobStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Cancelled", traits: {"smithy.api#enumValue" => "Cancelled"}))
    RequestedJobStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ready", traits: {"smithy.api#enumValue" => "Ready"}))
    RouteList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointRoute, name: "member", traits: {"smithy.api#xmlName" => "Route"}))
    S3AccessControlList.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectOwner, name: "Owner", traits: {"smithy.api#required" => {}}))
    S3AccessControlList.add_member(:grants, ::Smithy::Schema::Shapes::MemberShape.new(target: S3GrantList, name: "Grants"))
    S3AccessControlList.type = Types::S3AccessControlList
    S3AccessControlPolicy.add_member(:access_control_list, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessControlList, name: "AccessControlList"))
    S3AccessControlPolicy.add_member(:canned_access_control_list, ::Smithy::Schema::Shapes::MemberShape.new(target: S3CannedAccessControlList, name: "CannedAccessControlList"))
    S3AccessControlPolicy.type = Types::S3AccessControlPolicy
    S3BucketDestination.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: Format, name: "Format", traits: {"smithy.api#required" => {}}))
    S3BucketDestination.add_member(:output_schema_version, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputSchemaVersion, name: "OutputSchemaVersion", traits: {"smithy.api#required" => {}}))
    S3BucketDestination.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#required" => {}}))
    S3BucketDestination.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketArnString, name: "Arn", traits: {"smithy.api#required" => {}}))
    S3BucketDestination.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    S3BucketDestination.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensDataExportEncryption, name: "Encryption"))
    S3BucketDestination.type = Types::S3BucketDestination
    S3CannedAccessControlList.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE", traits: {"smithy.api#enumValue" => "private"}))
    S3CannedAccessControlList.add_member(:public_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_READ", traits: {"smithy.api#enumValue" => "public-read"}))
    S3CannedAccessControlList.add_member(:public_read_write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_READ_WRITE", traits: {"smithy.api#enumValue" => "public-read-write"}))
    S3CannedAccessControlList.add_member(:aws_exec_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_EXEC_READ", traits: {"smithy.api#enumValue" => "aws-exec-read"}))
    S3CannedAccessControlList.add_member(:authenticated_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTHENTICATED_READ", traits: {"smithy.api#enumValue" => "authenticated-read"}))
    S3CannedAccessControlList.add_member(:bucket_owner_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUCKET_OWNER_READ", traits: {"smithy.api#enumValue" => "bucket-owner-read"}))
    S3CannedAccessControlList.add_member(:bucket_owner_full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUCKET_OWNER_FULL_CONTROL", traits: {"smithy.api#enumValue" => "bucket-owner-full-control"}))
    S3ChecksumAlgorithm.add_member(:crc32, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRC32", traits: {"smithy.api#enumValue" => "CRC32"}))
    S3ChecksumAlgorithm.add_member(:crc32_c, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRC32C", traits: {"smithy.api#enumValue" => "CRC32C"}))
    S3ChecksumAlgorithm.add_member(:sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA1", traits: {"smithy.api#enumValue" => "SHA1"}))
    S3ChecksumAlgorithm.add_member(:sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA256", traits: {"smithy.api#enumValue" => "SHA256"}))
    S3ChecksumAlgorithm.add_member(:crc64_nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRC64NVME", traits: {"smithy.api#enumValue" => "CRC64NVME"}))
    S3ComputeObjectChecksumOperation.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeObjectChecksumAlgorithm, name: "ChecksumAlgorithm"))
    S3ComputeObjectChecksumOperation.add_member(:checksum_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeObjectChecksumType, name: "ChecksumType"))
    S3ComputeObjectChecksumOperation.type = Types::S3ComputeObjectChecksumOperation
    S3CopyObjectOperation.add_member(:target_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: S3RegionalOrS3ExpressBucketArnString, name: "TargetResource"))
    S3CopyObjectOperation.add_member(:canned_access_control_list, ::Smithy::Schema::Shapes::MemberShape.new(target: S3CannedAccessControlList, name: "CannedAccessControlList"))
    S3CopyObjectOperation.add_member(:access_control_grants, ::Smithy::Schema::Shapes::MemberShape.new(target: S3GrantList, name: "AccessControlGrants"))
    S3CopyObjectOperation.add_member(:metadata_directive, ::Smithy::Schema::Shapes::MemberShape.new(target: S3MetadataDirective, name: "MetadataDirective"))
    S3CopyObjectOperation.add_member(:modified_since_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "ModifiedSinceConstraint"))
    S3CopyObjectOperation.add_member(:new_object_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectMetadata, name: "NewObjectMetadata"))
    S3CopyObjectOperation.add_member(:new_object_tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TagSet, name: "NewObjectTagging"))
    S3CopyObjectOperation.add_member(:redirect_location, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength2048String, name: "RedirectLocation"))
    S3CopyObjectOperation.add_member(:requester_pays, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RequesterPays", traits: {"smithy.api#default" => false}))
    S3CopyObjectOperation.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: S3StorageClass, name: "StorageClass"))
    S3CopyObjectOperation.add_member(:un_modified_since_constraint, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "UnModifiedSinceConstraint"))
    S3CopyObjectOperation.add_member(:sse_aws_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArnString, name: "SSEAwsKmsKeyId"))
    S3CopyObjectOperation.add_member(:target_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "TargetKeyPrefix"))
    S3CopyObjectOperation.add_member(:object_lock_legal_hold_status, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectLockLegalHoldStatus, name: "ObjectLockLegalHoldStatus"))
    S3CopyObjectOperation.add_member(:object_lock_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectLockMode, name: "ObjectLockMode"))
    S3CopyObjectOperation.add_member(:object_lock_retain_until_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "ObjectLockRetainUntilDate"))
    S3CopyObjectOperation.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "BucketKeyEnabled", traits: {"smithy.api#default" => false}))
    S3CopyObjectOperation.add_member(:checksum_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ChecksumAlgorithm, name: "ChecksumAlgorithm"))
    S3CopyObjectOperation.type = Types::S3CopyObjectOperation
    S3DeleteObjectTaggingOperation.type = Types::S3DeleteObjectTaggingOperation
    S3GeneratedManifestDescriptor.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedManifestFormat, name: "Format"))
    S3GeneratedManifestDescriptor.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: JobManifestLocation, name: "Location"))
    S3GeneratedManifestDescriptor.type = Types::S3GeneratedManifestDescriptor
    S3GlacierJobTier.add_member(:bulk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BULK", traits: {"smithy.api#enumValue" => "BULK"}))
    S3GlacierJobTier.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    S3Grant.add_member(:grantee, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Grantee, name: "Grantee"))
    S3Grant.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Permission, name: "Permission"))
    S3Grant.type = Types::S3Grant
    S3GrantList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Grant, name: "member"))
    S3Grantee.add_member(:type_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: S3GranteeTypeIdentifier, name: "TypeIdentifier"))
    S3Grantee.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "Identifier"))
    S3Grantee.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "DisplayName"))
    S3Grantee.type = Types::S3Grantee
    S3GranteeTypeIdentifier.add_member(:canonical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANONICAL", traits: {"smithy.api#enumValue" => "id"}))
    S3GranteeTypeIdentifier.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_ADDRESS", traits: {"smithy.api#enumValue" => "emailAddress"}))
    S3GranteeTypeIdentifier.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "uri"}))
    S3InitiateRestoreObjectOperation.add_member(:expiration_in_days, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ExpirationInDays, name: "ExpirationInDays", traits: {"smithy.api#default" => nil}))
    S3InitiateRestoreObjectOperation.add_member(:glacier_job_tier, ::Smithy::Schema::Shapes::MemberShape.new(target: S3GlacierJobTier, name: "GlacierJobTier"))
    S3InitiateRestoreObjectOperation.type = Types::S3InitiateRestoreObjectOperation
    S3JobManifestGenerator.add_member(:expected_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedBucketOwner"))
    S3JobManifestGenerator.add_member(:source_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketArnString, name: "SourceBucket", traits: {"smithy.api#required" => {}}))
    S3JobManifestGenerator.add_member(:manifest_output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ManifestOutputLocation, name: "ManifestOutputLocation"))
    S3JobManifestGenerator.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: JobManifestGeneratorFilter, name: "Filter"))
    S3JobManifestGenerator.add_member(:enable_manifest_output, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnableManifestOutput", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    S3JobManifestGenerator.type = Types::S3JobManifestGenerator
    S3ManifestOutputLocation.add_member(:expected_manifest_bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "ExpectedManifestBucketOwner"))
    S3ManifestOutputLocation.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketArnString, name: "Bucket", traits: {"smithy.api#required" => {}}))
    S3ManifestOutputLocation.add_member(:manifest_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ManifestPrefixString, name: "ManifestPrefix"))
    S3ManifestOutputLocation.add_member(:manifest_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedManifestEncryption, name: "ManifestEncryption"))
    S3ManifestOutputLocation.add_member(:manifest_format, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedManifestFormat, name: "ManifestFormat", traits: {"smithy.api#required" => {}}))
    S3ManifestOutputLocation.type = Types::S3ManifestOutputLocation
    S3MetadataDirective.add_member(:copy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COPY", traits: {"smithy.api#enumValue" => "COPY"}))
    S3MetadataDirective.add_member(:replace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLACE", traits: {"smithy.api#enumValue" => "REPLACE"}))
    S3ObjectLockLegalHold.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectLockLegalHoldStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    S3ObjectLockLegalHold.type = Types::S3ObjectLockLegalHold
    S3ObjectLockLegalHoldStatus.add_member(:off, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OFF", traits: {"smithy.api#enumValue" => "OFF"}))
    S3ObjectLockLegalHoldStatus.add_member(:on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON", traits: {"smithy.api#enumValue" => "ON"}))
    S3ObjectLockMode.add_member(:compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLIANCE", traits: {"smithy.api#enumValue" => "COMPLIANCE"}))
    S3ObjectLockMode.add_member(:governance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOVERNANCE", traits: {"smithy.api#enumValue" => "GOVERNANCE"}))
    S3ObjectLockRetentionMode.add_member(:compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLIANCE", traits: {"smithy.api#enumValue" => "COMPLIANCE"}))
    S3ObjectLockRetentionMode.add_member(:governance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOVERNANCE", traits: {"smithy.api#enumValue" => "GOVERNANCE"}))
    S3ObjectMetadata.add_member(:cache_control, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "CacheControl"))
    S3ObjectMetadata.add_member(:content_disposition, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "ContentDisposition"))
    S3ObjectMetadata.add_member(:content_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "ContentEncoding"))
    S3ObjectMetadata.add_member(:content_language, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "ContentLanguage"))
    S3ObjectMetadata.add_member(:user_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: S3UserMetadata, name: "UserMetadata"))
    S3ObjectMetadata.add_member(:content_length, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ContentLength, name: "ContentLength", traits: {"smithy.api#default" => nil}))
    S3ObjectMetadata.add_member(:content_md5, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "ContentMD5"))
    S3ObjectMetadata.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "ContentType"))
    S3ObjectMetadata.add_member(:http_expires_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "HttpExpiresDate"))
    S3ObjectMetadata.add_member(:requester_charged, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "RequesterCharged", traits: {"smithy.api#default" => false}))
    S3ObjectMetadata.add_member(:sse_algorithm, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SSEAlgorithm, name: "SSEAlgorithm"))
    S3ObjectMetadata.type = Types::S3ObjectMetadata
    S3ObjectOwner.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "ID"))
    S3ObjectOwner.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "DisplayName"))
    S3ObjectOwner.type = Types::S3ObjectOwner
    S3Permission.add_member(:full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_CONTROL", traits: {"smithy.api#enumValue" => "FULL_CONTROL"}))
    S3Permission.add_member(:read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ", traits: {"smithy.api#enumValue" => "READ"}))
    S3Permission.add_member(:write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WRITE", traits: {"smithy.api#enumValue" => "WRITE"}))
    S3Permission.add_member(:read_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_ACP", traits: {"smithy.api#enumValue" => "READ_ACP"}))
    S3Permission.add_member(:write_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WRITE_ACP", traits: {"smithy.api#enumValue" => "WRITE_ACP"}))
    S3PrefixType.add_member(:object, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Object", traits: {"smithy.api#enumValue" => "Object"}))
    S3ReplicateObjectOperation.type = Types::S3ReplicateObjectOperation
    S3Retention.add_member(:retain_until_date, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "RetainUntilDate"))
    S3Retention.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectLockRetentionMode, name: "Mode"))
    S3Retention.type = Types::S3Retention
    S3SSEAlgorithm.add_member(:aes256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AES256", traits: {"smithy.api#enumValue" => "AES256"}))
    S3SSEAlgorithm.add_member(:kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS", traits: {"smithy.api#enumValue" => "KMS"}))
    S3SetObjectAclOperation.add_member(:access_control_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessControlPolicy, name: "AccessControlPolicy"))
    S3SetObjectAclOperation.type = Types::S3SetObjectAclOperation
    S3SetObjectLegalHoldOperation.add_member(:legal_hold, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectLockLegalHold, name: "LegalHold", traits: {"smithy.api#required" => {}}))
    S3SetObjectLegalHoldOperation.type = Types::S3SetObjectLegalHoldOperation
    S3SetObjectRetentionOperation.add_member(:bypass_governance_retention, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "BypassGovernanceRetention", traits: {"smithy.api#default" => nil}))
    S3SetObjectRetentionOperation.add_member(:retention, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Retention, name: "Retention", traits: {"smithy.api#required" => {}}))
    S3SetObjectRetentionOperation.type = Types::S3SetObjectRetentionOperation
    S3SetObjectTaggingOperation.add_member(:tag_set, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TagSet, name: "TagSet"))
    S3SetObjectTaggingOperation.type = Types::S3SetObjectTaggingOperation
    S3StorageClass.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    S3StorageClass.add_member(:standard_ia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD_IA", traits: {"smithy.api#enumValue" => "STANDARD_IA"}))
    S3StorageClass.add_member(:onezone_ia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONEZONE_IA", traits: {"smithy.api#enumValue" => "ONEZONE_IA"}))
    S3StorageClass.add_member(:glacier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLACIER", traits: {"smithy.api#enumValue" => "GLACIER"}))
    S3StorageClass.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTELLIGENT_TIERING", traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    S3StorageClass.add_member(:deep_archive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEEP_ARCHIVE", traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE"}))
    S3StorageClass.add_member(:glacier_ir, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLACIER_IR", traits: {"smithy.api#enumValue" => "GLACIER_IR"}))
    S3Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyString, name: "Key", traits: {"smithy.api#required" => {}}))
    S3Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueString, name: "Value", traits: {"smithy.api#required" => {}}))
    S3Tag.type = Types::S3Tag
    S3TagSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Tag, name: "member"))
    S3UserMetadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength1024String, name: "key"))
    S3UserMetadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLength1024String, name: "value"))
    SSECFilter.type = Types::SSECFilter
    SSEKMS.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMSKeyId, name: "KeyId", traits: {"smithy.api#required" => {}}))
    SSEKMS.type = Types::SSEKMS
    SSEKMSEncryption.add_member(:key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArnString, name: "KeyId", traits: {"smithy.api#required" => {}}))
    SSEKMSEncryption.type = Types::SSEKMSEncryption
    SSEKMSFilter.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyKmsKeyArnString, name: "KmsKeyArn"))
    SSEKMSFilter.add_member(:bucket_key_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "BucketKeyEnabled", traits: {"smithy.api#default" => nil}))
    SSEKMSFilter.type = Types::SSEKMSFilter
    SSES3.type = Types::SSES3
    SSES3Encryption.type = Types::SSES3Encryption
    SSES3Filter.type = Types::SSES3Filter
    Scope.add_member(:prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: PrefixesList, name: "Prefixes", traits: {"smithy.api#xmlName" => "Prefixes"}))
    Scope.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopePermissionList, name: "Permissions", traits: {"smithy.api#xmlName" => "Permissions"}))
    Scope.type = Types::Scope
    ScopePermission.add_member(:get_object, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GetObject", traits: {"smithy.api#enumValue" => "GetObject"}))
    ScopePermission.add_member(:get_object_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GetObjectAttributes", traits: {"smithy.api#enumValue" => "GetObjectAttributes"}))
    ScopePermission.add_member(:list_multipart_upload_parts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ListMultipartUploadParts", traits: {"smithy.api#enumValue" => "ListMultipartUploadParts"}))
    ScopePermission.add_member(:list_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ListBucket", traits: {"smithy.api#enumValue" => "ListBucket"}))
    ScopePermission.add_member(:list_bucket_multipart_uploads, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ListBucketMultipartUploads", traits: {"smithy.api#enumValue" => "ListBucketMultipartUploads"}))
    ScopePermission.add_member(:put_object, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PutObject", traits: {"smithy.api#enumValue" => "PutObject"}))
    ScopePermission.add_member(:delete_object, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DeleteObject", traits: {"smithy.api#enumValue" => "DeleteObject"}))
    ScopePermission.add_member(:abort_multipart_upload, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AbortMultipartUpload", traits: {"smithy.api#enumValue" => "AbortMultipartUpload"}))
    ScopePermissionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopePermission, name: "member", traits: {"smithy.api#xmlName" => "Permission"}))
    SelectionCriteria.add_member(:delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensPrefixLevelDelimiter, name: "Delimiter"))
    SelectionCriteria.add_member(:max_depth, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensPrefixLevelMaxDepth, name: "MaxDepth"))
    SelectionCriteria.add_member(:min_storage_bytes_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: MinStorageBytesPercentage, name: "MinStorageBytesPercentage"))
    SelectionCriteria.type = Types::SelectionCriteria
    SourceSelectionCriteria.add_member(:sse_kms_encrypted_objects, ::Smithy::Schema::Shapes::MemberShape.new(target: SseKmsEncryptedObjects, name: "SseKmsEncryptedObjects"))
    SourceSelectionCriteria.add_member(:replica_modifications, ::Smithy::Schema::Shapes::MemberShape.new(target: ReplicaModifications, name: "ReplicaModifications"))
    SourceSelectionCriteria.type = Types::SourceSelectionCriteria
    SseKmsEncryptedObjects.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SseKmsEncryptedObjectsStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    SseKmsEncryptedObjects.type = Types::SseKmsEncryptedObjects
    SseKmsEncryptedObjectsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    SseKmsEncryptedObjectsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    StorageClassList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: S3StorageClass, name: "member"))
    StorageLensAwsOrg.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsOrgArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    StorageLensAwsOrg.type = Types::StorageLensAwsOrg
    StorageLensConfiguration.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigId, name: "Id", traits: {"smithy.api#required" => {}}))
    StorageLensConfiguration.add_member(:account_level, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountLevel, name: "AccountLevel", traits: {"smithy.api#required" => {}}))
    StorageLensConfiguration.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: Include, name: "Include"))
    StorageLensConfiguration.add_member(:exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: Exclude, name: "Exclude"))
    StorageLensConfiguration.add_member(:data_export, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensDataExport, name: "DataExport"))
    StorageLensConfiguration.add_member(:is_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: IsEnabled, name: "IsEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    StorageLensConfiguration.add_member(:aws_org, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensAwsOrg, name: "AwsOrg"))
    StorageLensConfiguration.add_member(:storage_lens_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensArn, name: "StorageLensArn"))
    StorageLensConfiguration.type = Types::StorageLensConfiguration
    StorageLensConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListStorageLensConfigurationEntry, name: "member", traits: {"smithy.api#xmlName" => "StorageLensConfiguration"}))
    StorageLensDataExport.add_member(:s3_bucket_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketDestination, name: "S3BucketDestination"))
    StorageLensDataExport.add_member(:cloud_watch_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchMetrics, name: "CloudWatchMetrics"))
    StorageLensDataExport.type = Types::StorageLensDataExport
    StorageLensDataExportEncryption.add_member(:sses3, ::Smithy::Schema::Shapes::MemberShape.new(target: SSES3, name: "SSES3", traits: {"smithy.api#xmlName" => "SSE-S3"}))
    StorageLensDataExportEncryption.add_member(:ssekms, ::Smithy::Schema::Shapes::MemberShape.new(target: SSEKMS, name: "SSEKMS", traits: {"smithy.api#xmlName" => "SSE-KMS"}))
    StorageLensDataExportEncryption.type = Types::StorageLensDataExportEncryption
    StorageLensGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupName, name: "Name", traits: {"smithy.api#required" => {}}))
    StorageLensGroup.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupFilter, name: "Filter", traits: {"smithy.api#required" => {}}))
    StorageLensGroup.add_member(:storage_lens_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupArn, name: "StorageLensGroupArn"))
    StorageLensGroup.type = Types::StorageLensGroup
    StorageLensGroupAndOperator.add_member(:match_any_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchAnyPrefix, name: "MatchAnyPrefix"))
    StorageLensGroupAndOperator.add_member(:match_any_suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchAnySuffix, name: "MatchAnySuffix"))
    StorageLensGroupAndOperator.add_member(:match_any_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchAnyTag, name: "MatchAnyTag"))
    StorageLensGroupAndOperator.add_member(:match_object_age, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchObjectAge, name: "MatchObjectAge"))
    StorageLensGroupAndOperator.add_member(:match_object_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchObjectSize, name: "MatchObjectSize"))
    StorageLensGroupAndOperator.type = Types::StorageLensGroupAndOperator
    StorageLensGroupFilter.add_member(:match_any_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchAnyPrefix, name: "MatchAnyPrefix"))
    StorageLensGroupFilter.add_member(:match_any_suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchAnySuffix, name: "MatchAnySuffix"))
    StorageLensGroupFilter.add_member(:match_any_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchAnyTag, name: "MatchAnyTag"))
    StorageLensGroupFilter.add_member(:match_object_age, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchObjectAge, name: "MatchObjectAge"))
    StorageLensGroupFilter.add_member(:match_object_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchObjectSize, name: "MatchObjectSize"))
    StorageLensGroupFilter.add_member(:and, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupAndOperator, name: "And"))
    StorageLensGroupFilter.add_member(:or, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupOrOperator, name: "Or"))
    StorageLensGroupFilter.type = Types::StorageLensGroupFilter
    StorageLensGroupLevel.add_member(:selection_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupLevelSelectionCriteria, name: "SelectionCriteria"))
    StorageLensGroupLevel.type = Types::StorageLensGroupLevel
    StorageLensGroupLevelExclude.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupArn, name: "member", traits: {"smithy.api#xmlName" => "Arn"}))
    StorageLensGroupLevelInclude.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupArn, name: "member", traits: {"smithy.api#xmlName" => "Arn"}))
    StorageLensGroupLevelSelectionCriteria.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupLevelInclude, name: "Include"))
    StorageLensGroupLevelSelectionCriteria.add_member(:exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupLevelExclude, name: "Exclude"))
    StorageLensGroupLevelSelectionCriteria.type = Types::StorageLensGroupLevelSelectionCriteria
    StorageLensGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListStorageLensGroupEntry, name: "member", traits: {"smithy.api#xmlName" => "StorageLensGroup"}))
    StorageLensGroupOrOperator.add_member(:match_any_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchAnyPrefix, name: "MatchAnyPrefix"))
    StorageLensGroupOrOperator.add_member(:match_any_suffix, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchAnySuffix, name: "MatchAnySuffix"))
    StorageLensGroupOrOperator.add_member(:match_any_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchAnyTag, name: "MatchAnyTag"))
    StorageLensGroupOrOperator.add_member(:match_object_age, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchObjectAge, name: "MatchObjectAge"))
    StorageLensGroupOrOperator.add_member(:match_object_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchObjectSize, name: "MatchObjectSize"))
    StorageLensGroupOrOperator.type = Types::StorageLensGroupOrOperator
    StorageLensTag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyString, name: "Key", traits: {"smithy.api#required" => {}}))
    StorageLensTag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueString, name: "Value", traits: {"smithy.api#required" => {}}))
    StorageLensTag.type = Types::StorageLensTag
    StorageLensTags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensTag, name: "member", traits: {"smithy.api#xmlName" => "Tag"}))
    SubmitMultiRegionAccessPointRoutesRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    SubmitMultiRegionAccessPointRoutesRequest.add_member(:mrap, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiRegionAccessPointId, name: "Mrap", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SubmitMultiRegionAccessPointRoutesRequest.add_member(:route_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: RouteList, name: "RouteUpdates", traits: {"smithy.api#required" => {}}))
    SubmitMultiRegionAccessPointRoutesRequest.type = Types::SubmitMultiRegionAccessPointRoutesRequest
    SubmitMultiRegionAccessPointRoutesResult.type = Types::SubmitMultiRegionAccessPointRoutesResult
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyString, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueString, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyString, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member", traits: {"smithy.api#xmlName" => "Tag"}))
    TagResourceRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResult.type = Types::TagResourceResult
    Tagging.add_member(:tag_set, ::Smithy::Schema::Shapes::MemberShape.new(target: S3TagSet, name: "TagSet", traits: {"smithy.api#required" => {}}))
    Tagging.type = Types::Tagging
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    TooManyTagsException.type = Types::TooManyTagsException
    Transition.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "Date"))
    Transition.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: Days, name: "Days", traits: {"smithy.api#default" => 0}))
    Transition.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: TransitionStorageClass, name: "StorageClass"))
    Transition.type = Types::Transition
    TransitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Transition, name: "member", traits: {"smithy.api#xmlName" => "Transition"}))
    TransitionStorageClass.add_member(:glacier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GLACIER", traits: {"smithy.api#enumValue" => "GLACIER"}))
    TransitionStorageClass.add_member(:standard_ia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD_IA", traits: {"smithy.api#enumValue" => "STANDARD_IA"}))
    TransitionStorageClass.add_member(:onezone_ia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONEZONE_IA", traits: {"smithy.api#enumValue" => "ONEZONE_IA"}))
    TransitionStorageClass.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTELLIGENT_TIERING", traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    TransitionStorageClass.add_member(:deep_archive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEEP_ARCHIVE", traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE"}))
    UntagResourceRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ResourceArn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.rules#contextParam" => {"name" => "ResourceArn"}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResult.type = Types::UntagResourceResult
    UpdateAccessGrantsLocationRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    UpdateAccessGrantsLocationRequest.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationId, name: "AccessGrantsLocationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAccessGrantsLocationRequest.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IAMRoleArn", traits: {"smithy.api#required" => {}}))
    UpdateAccessGrantsLocationRequest.type = Types::UpdateAccessGrantsLocationRequest
    UpdateAccessGrantsLocationResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreationTimestamp, name: "CreatedAt"))
    UpdateAccessGrantsLocationResult.add_member(:access_grants_location_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationId, name: "AccessGrantsLocationId"))
    UpdateAccessGrantsLocationResult.add_member(:access_grants_location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessGrantsLocationArn, name: "AccessGrantsLocationArn"))
    UpdateAccessGrantsLocationResult.add_member(:location_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "LocationScope"))
    UpdateAccessGrantsLocationResult.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "IAMRoleArn"))
    UpdateAccessGrantsLocationResult.type = Types::UpdateAccessGrantsLocationResult
    UpdateJobPriorityRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    UpdateJobPriorityRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJobPriorityRequest.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: JobPriority, name: "Priority", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "priority", "smithy.api#required" => {}}))
    UpdateJobPriorityRequest.type = Types::UpdateJobPriorityRequest
    UpdateJobPriorityResult.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#required" => {}}))
    UpdateJobPriorityResult.add_member(:priority, ::Smithy::Schema::Shapes::MemberShape.new(target: JobPriority, name: "Priority", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    UpdateJobPriorityResult.type = Types::UpdateJobPriorityResult
    UpdateJobStatusRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    UpdateJobStatusRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateJobStatusRequest.add_member(:requested_job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestedJobStatus, name: "RequestedJobStatus", traits: {"smithy.api#httpQuery" => "requestedJobStatus", "smithy.api#required" => {}}))
    UpdateJobStatusRequest.add_member(:status_update_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusUpdateReason, name: "StatusUpdateReason", traits: {"smithy.api#httpQuery" => "statusUpdateReason"}))
    UpdateJobStatusRequest.type = Types::UpdateJobStatusRequest
    UpdateJobStatusResult.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "JobId"))
    UpdateJobStatusResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "Status"))
    UpdateJobStatusResult.add_member(:status_update_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatusUpdateReason, name: "StatusUpdateReason"))
    UpdateJobStatusResult.type = Types::UpdateJobStatusResult
    UpdateStorageLensGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroupName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateStorageLensGroupRequest.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "AccountId", traits: {"smithy.api#httpHeader" => "x-amz-account-id", "smithy.rules#contextParam" => {"name" => "AccountId"}}))
    UpdateStorageLensGroupRequest.add_member(:storage_lens_group, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageLensGroup, name: "StorageLensGroup", traits: {"smithy.api#required" => {}}))
    UpdateStorageLensGroupRequest.type = Types::UpdateStorageLensGroupRequest
    UserArguments.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLength64String, name: "key"))
    UserArguments.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxLength1024String, name: "value"))
    VersioningConfiguration.add_member(:mfa_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: MFADelete, name: "MFADelete", traits: {"smithy.api#xmlName" => "MfaDelete"}))
    VersioningConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketVersioningStatus, name: "Status"))
    VersioningConfiguration.type = Types::VersioningConfiguration
    VpcConfiguration.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "VpcId", traits: {"smithy.api#required" => {}}))
    VpcConfiguration.type = Types::VpcConfiguration

    AWSS3ControlServiceV20180820 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.s3control#AWSS3ControlServiceV20180820"
      service.name = "AWSS3ControlServiceV20180820"
      service.version = "2018-08-20"
      service.traits = {"aws.api#service" => {"sdkId" => "S3 Control", "arnNamespace" => "s3", "cloudFormationName" => "S3Control", "cloudTrailEventSource" => "s3control.amazonaws.com", "docId" => "s3control-2018-08-20", "endpointPrefix" => "s3-control"}, "aws.auth#sigv4" => {"name" => "s3"}, "aws.protocols#restXml" => {}, "smithy.api#title" => "AWS S3 Control", "smithy.api#xmlNamespace" => {"uri" => "http://awss3control.amazonaws.com/doc/2018-08-20/"}, "smithy.rules#clientContextParams" => {"UseArnRegion" => {"documentation" => "Enables this client to use an ARN's region when constructing an endpoint instead of the client's configured region.", "type" => "boolean"}}}
      service.add_operation(:associate_access_grants_identity_center, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#AssociateAccessGrantsIdentityCenter"
        operation.name = "AssociateAccessGrantsIdentityCenter"
        operation.input = AssociateAccessGrantsIdentityCenterRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/accessgrantsinstance/identitycenter", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:create_access_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateAccessGrant"
        operation.name = "CreateAccessGrant"
        operation.input = CreateAccessGrantRequest
        operation.output = CreateAccessGrantResult
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/accessgrantsinstance/grant", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:create_access_grants_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateAccessGrantsInstance"
        operation.name = "CreateAccessGrantsInstance"
        operation.input = CreateAccessGrantsInstanceRequest
        operation.output = CreateAccessGrantsInstanceResult
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/accessgrantsinstance", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:create_access_grants_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateAccessGrantsLocation"
        operation.name = "CreateAccessGrantsLocation"
        operation.input = CreateAccessGrantsLocationRequest
        operation.output = CreateAccessGrantsLocationResult
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/accessgrantsinstance/location", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:create_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateAccessPoint"
        operation.name = "CreateAccessPoint"
        operation.input = CreateAccessPointRequest
        operation.output = CreateAccessPointResult
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/accesspoint/{Name}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:create_access_point_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateAccessPointForObjectLambda"
        operation.name = "CreateAccessPointForObjectLambda"
        operation.input = CreateAccessPointForObjectLambdaRequest
        operation.output = CreateAccessPointForObjectLambdaResult
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/accesspointforobjectlambda/{Name}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:create_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateBucket"
        operation.name = "CreateBucket"
        operation.input = CreateBucketRequest
        operation.output = CreateBucketResult
        operation.errors << BucketAlreadyExists
        operation.errors << BucketAlreadyOwnedByYou
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/bucket/{Bucket}", "code" => 200}, "smithy.api#httpChecksumRequired" => {}}
      end)
      service.add_operation(:create_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateJob"
        operation.name = "CreateJob"
        operation.input = CreateJobRequest
        operation.output = CreateJobResult
        operation.errors << BadRequestException
        operation.errors << IdempotencyException
        operation.errors << InternalServiceException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/jobs", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:create_multi_region_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateMultiRegionAccessPoint"
        operation.name = "CreateMultiRegionAccessPoint"
        operation.input = CreateMultiRegionAccessPointRequest
        operation.output = CreateMultiRegionAccessPointResult
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/async-requests/mrap/create", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:create_storage_lens_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#CreateStorageLensGroup"
        operation.name = "CreateStorageLensGroup"
        operation.input = CreateStorageLensGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/storagelensgroup", "code" => 204}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessGrant"
        operation.name = "DeleteAccessGrant"
        operation.input = DeleteAccessGrantRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accessgrantsinstance/grant/{AccessGrantId}", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_grants_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessGrantsInstance"
        operation.name = "DeleteAccessGrantsInstance"
        operation.input = DeleteAccessGrantsInstanceRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accessgrantsinstance", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_grants_instance_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessGrantsInstanceResourcePolicy"
        operation.name = "DeleteAccessGrantsInstanceResourcePolicy"
        operation.input = DeleteAccessGrantsInstanceResourcePolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accessgrantsinstance/resourcepolicy", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_grants_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessGrantsLocation"
        operation.name = "DeleteAccessGrantsLocation"
        operation.input = DeleteAccessGrantsLocationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accessgrantsinstance/location/{AccessGrantsLocationId}", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessPoint"
        operation.name = "DeleteAccessPoint"
        operation.input = DeleteAccessPointRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accesspoint/{Name}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_point_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessPointForObjectLambda"
        operation.name = "DeleteAccessPointForObjectLambda"
        operation.input = DeleteAccessPointForObjectLambdaRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accesspointforobjectlambda/{Name}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_point_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessPointPolicy"
        operation.name = "DeleteAccessPointPolicy"
        operation.input = DeleteAccessPointPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accesspoint/{Name}/policy", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_point_policy_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessPointPolicyForObjectLambda"
        operation.name = "DeleteAccessPointPolicyForObjectLambda"
        operation.input = DeleteAccessPointPolicyForObjectLambdaRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accesspointforobjectlambda/{Name}/policy", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_access_point_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteAccessPointScope"
        operation.name = "DeleteAccessPointScope"
        operation.input = DeleteAccessPointScopeRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accesspoint/{Name}/scope", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}, "UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteBucket"
        operation.name = "DeleteBucket"
        operation.input = DeleteBucketRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/bucket/{Bucket}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_lifecycle_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteBucketLifecycleConfiguration"
        operation.name = "DeleteBucketLifecycleConfiguration"
        operation.input = DeleteBucketLifecycleConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/bucket/{Bucket}/lifecycleconfiguration", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteBucketPolicy"
        operation.name = "DeleteBucketPolicy"
        operation.input = DeleteBucketPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/bucket/{Bucket}/policy", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteBucketReplication"
        operation.name = "DeleteBucketReplication"
        operation.input = DeleteBucketReplicationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/bucket/{Bucket}/replication", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_bucket_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteBucketTagging"
        operation.name = "DeleteBucketTagging"
        operation.input = DeleteBucketTaggingRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/bucket/{Bucket}/tagging", "code" => 204}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_job_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteJobTagging"
        operation.name = "DeleteJobTagging"
        operation.input = DeleteJobTaggingRequest
        operation.output = DeleteJobTaggingResult
        operation.errors << InternalServiceException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/jobs/{JobId}/tagging", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_multi_region_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteMultiRegionAccessPoint"
        operation.name = "DeleteMultiRegionAccessPoint"
        operation.input = DeleteMultiRegionAccessPointRequest
        operation.output = DeleteMultiRegionAccessPointResult
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/async-requests/mrap/delete", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_public_access_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeletePublicAccessBlock"
        operation.name = "DeletePublicAccessBlock"
        operation.input = DeletePublicAccessBlockRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/configuration/publicAccessBlock", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_storage_lens_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteStorageLensConfiguration"
        operation.name = "DeleteStorageLensConfiguration"
        operation.input = DeleteStorageLensConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/storagelens/{ConfigId}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_storage_lens_configuration_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteStorageLensConfigurationTagging"
        operation.name = "DeleteStorageLensConfigurationTagging"
        operation.input = DeleteStorageLensConfigurationTaggingRequest
        operation.output = DeleteStorageLensConfigurationTaggingResult
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/storagelens/{ConfigId}/tagging", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:delete_storage_lens_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DeleteStorageLensGroup"
        operation.name = "DeleteStorageLensGroup"
        operation.input = DeleteStorageLensGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/storagelensgroup/{Name}", "code" => 204}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:describe_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DescribeJob"
        operation.name = "DescribeJob"
        operation.input = DescribeJobRequest
        operation.output = DescribeJobResult
        operation.errors << BadRequestException
        operation.errors << InternalServiceException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/jobs/{JobId}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:describe_multi_region_access_point_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DescribeMultiRegionAccessPointOperation"
        operation.name = "DescribeMultiRegionAccessPointOperation"
        operation.input = DescribeMultiRegionAccessPointOperationRequest
        operation.output = DescribeMultiRegionAccessPointOperationResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/async-requests/mrap/{RequestTokenARN+}", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:dissociate_access_grants_identity_center, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#DissociateAccessGrantsIdentityCenter"
        operation.name = "DissociateAccessGrantsIdentityCenter"
        operation.input = DissociateAccessGrantsIdentityCenterRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/accessgrantsinstance/identitycenter", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessGrant"
        operation.name = "GetAccessGrant"
        operation.input = GetAccessGrantRequest
        operation.output = GetAccessGrantResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance/grant/{AccessGrantId}", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_grants_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessGrantsInstance"
        operation.name = "GetAccessGrantsInstance"
        operation.input = GetAccessGrantsInstanceRequest
        operation.output = GetAccessGrantsInstanceResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_grants_instance_for_prefix, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessGrantsInstanceForPrefix"
        operation.name = "GetAccessGrantsInstanceForPrefix"
        operation.input = GetAccessGrantsInstanceForPrefixRequest
        operation.output = GetAccessGrantsInstanceForPrefixResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance/prefix", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_grants_instance_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessGrantsInstanceResourcePolicy"
        operation.name = "GetAccessGrantsInstanceResourcePolicy"
        operation.input = GetAccessGrantsInstanceResourcePolicyRequest
        operation.output = GetAccessGrantsInstanceResourcePolicyResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance/resourcepolicy", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_grants_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessGrantsLocation"
        operation.name = "GetAccessGrantsLocation"
        operation.input = GetAccessGrantsLocationRequest
        operation.output = GetAccessGrantsLocationResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance/location/{AccessGrantsLocationId}", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessPoint"
        operation.name = "GetAccessPoint"
        operation.input = GetAccessPointRequest
        operation.output = GetAccessPointResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspoint/{Name}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_point_configuration_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessPointConfigurationForObjectLambda"
        operation.name = "GetAccessPointConfigurationForObjectLambda"
        operation.input = GetAccessPointConfigurationForObjectLambdaRequest
        operation.output = GetAccessPointConfigurationForObjectLambdaResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspointforobjectlambda/{Name}/configuration", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_point_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessPointForObjectLambda"
        operation.name = "GetAccessPointForObjectLambda"
        operation.input = GetAccessPointForObjectLambdaRequest
        operation.output = GetAccessPointForObjectLambdaResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspointforobjectlambda/{Name}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_point_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessPointPolicy"
        operation.name = "GetAccessPointPolicy"
        operation.input = GetAccessPointPolicyRequest
        operation.output = GetAccessPointPolicyResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspoint/{Name}/policy", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_point_policy_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessPointPolicyForObjectLambda"
        operation.name = "GetAccessPointPolicyForObjectLambda"
        operation.input = GetAccessPointPolicyForObjectLambdaRequest
        operation.output = GetAccessPointPolicyForObjectLambdaResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspointforobjectlambda/{Name}/policy", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_point_policy_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessPointPolicyStatus"
        operation.name = "GetAccessPointPolicyStatus"
        operation.input = GetAccessPointPolicyStatusRequest
        operation.output = GetAccessPointPolicyStatusResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspoint/{Name}/policyStatus", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_point_policy_status_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessPointPolicyStatusForObjectLambda"
        operation.name = "GetAccessPointPolicyStatusForObjectLambda"
        operation.input = GetAccessPointPolicyStatusForObjectLambdaRequest
        operation.output = GetAccessPointPolicyStatusForObjectLambdaResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspointforobjectlambda/{Name}/policyStatus", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_access_point_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetAccessPointScope"
        operation.name = "GetAccessPointScope"
        operation.input = GetAccessPointScopeRequest
        operation.output = GetAccessPointScopeResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspoint/{Name}/scope", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}, "UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetBucket"
        operation.name = "GetBucket"
        operation.input = GetBucketRequest
        operation.output = GetBucketResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/bucket/{Bucket}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_lifecycle_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetBucketLifecycleConfiguration"
        operation.name = "GetBucketLifecycleConfiguration"
        operation.input = GetBucketLifecycleConfigurationRequest
        operation.output = GetBucketLifecycleConfigurationResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/bucket/{Bucket}/lifecycleconfiguration", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetBucketPolicy"
        operation.name = "GetBucketPolicy"
        operation.input = GetBucketPolicyRequest
        operation.output = GetBucketPolicyResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/bucket/{Bucket}/policy", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetBucketReplication"
        operation.name = "GetBucketReplication"
        operation.input = GetBucketReplicationRequest
        operation.output = GetBucketReplicationResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/bucket/{Bucket}/replication", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetBucketTagging"
        operation.name = "GetBucketTagging"
        operation.input = GetBucketTaggingRequest
        operation.output = GetBucketTaggingResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/bucket/{Bucket}/tagging", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_bucket_versioning, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetBucketVersioning"
        operation.name = "GetBucketVersioning"
        operation.input = GetBucketVersioningRequest
        operation.output = GetBucketVersioningResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/bucket/{Bucket}/versioning", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_data_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetDataAccess"
        operation.name = "GetDataAccess"
        operation.input = GetDataAccessRequest
        operation.output = GetDataAccessResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance/dataaccess", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_job_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetJobTagging"
        operation.name = "GetJobTagging"
        operation.input = GetJobTaggingRequest
        operation.output = GetJobTaggingResult
        operation.errors << InternalServiceException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/jobs/{JobId}/tagging", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_multi_region_access_point, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetMultiRegionAccessPoint"
        operation.name = "GetMultiRegionAccessPoint"
        operation.input = GetMultiRegionAccessPointRequest
        operation.output = GetMultiRegionAccessPointResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/mrap/instances/{Name+}", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_multi_region_access_point_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetMultiRegionAccessPointPolicy"
        operation.name = "GetMultiRegionAccessPointPolicy"
        operation.input = GetMultiRegionAccessPointPolicyRequest
        operation.output = GetMultiRegionAccessPointPolicyResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/mrap/instances/{Name+}/policy", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_multi_region_access_point_policy_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetMultiRegionAccessPointPolicyStatus"
        operation.name = "GetMultiRegionAccessPointPolicyStatus"
        operation.input = GetMultiRegionAccessPointPolicyStatusRequest
        operation.output = GetMultiRegionAccessPointPolicyStatusResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/mrap/instances/{Name+}/policystatus", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_multi_region_access_point_routes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetMultiRegionAccessPointRoutes"
        operation.name = "GetMultiRegionAccessPointRoutes"
        operation.input = GetMultiRegionAccessPointRoutesRequest
        operation.output = GetMultiRegionAccessPointRoutesResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/mrap/instances/{Mrap+}/routes", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_public_access_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetPublicAccessBlock"
        operation.name = "GetPublicAccessBlock"
        operation.input = GetPublicAccessBlockRequest
        operation.output = GetPublicAccessBlockOutput
        operation.errors << NoSuchPublicAccessBlockConfiguration
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/configuration/publicAccessBlock", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_storage_lens_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetStorageLensConfiguration"
        operation.name = "GetStorageLensConfiguration"
        operation.input = GetStorageLensConfigurationRequest
        operation.output = GetStorageLensConfigurationResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/storagelens/{ConfigId}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_storage_lens_configuration_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetStorageLensConfigurationTagging"
        operation.name = "GetStorageLensConfigurationTagging"
        operation.input = GetStorageLensConfigurationTaggingRequest
        operation.output = GetStorageLensConfigurationTaggingResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/storagelens/{ConfigId}/tagging", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:get_storage_lens_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#GetStorageLensGroup"
        operation.name = "GetStorageLensGroup"
        operation.input = GetStorageLensGroupRequest
        operation.output = GetStorageLensGroupResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/storagelensgroup/{Name}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:list_access_grants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListAccessGrants"
        operation.name = "ListAccessGrants"
        operation.input = ListAccessGrantsRequest
        operation.output = ListAccessGrantsResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance/grants", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListAccessGrants.new
      end)
      service.add_operation(:list_access_grants_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListAccessGrantsInstances"
        operation.name = "ListAccessGrantsInstances"
        operation.input = ListAccessGrantsInstancesRequest
        operation.output = ListAccessGrantsInstancesResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstances", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListAccessGrantsInstances.new
      end)
      service.add_operation(:list_access_grants_locations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListAccessGrantsLocations"
        operation.name = "ListAccessGrantsLocations"
        operation.input = ListAccessGrantsLocationsRequest
        operation.output = ListAccessGrantsLocationsResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance/locations", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListAccessGrantsLocations.new
      end)
      service.add_operation(:list_access_points, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListAccessPoints"
        operation.name = "ListAccessPoints"
        operation.input = ListAccessPointsRequest
        operation.output = ListAccessPointsResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspoint", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListAccessPoints.new
      end)
      service.add_operation(:list_access_points_for_directory_buckets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListAccessPointsForDirectoryBuckets"
        operation.name = "ListAccessPointsForDirectoryBuckets"
        operation.input = ListAccessPointsForDirectoryBucketsRequest
        operation.output = ListAccessPointsForDirectoryBucketsResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspointfordirectory", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}, "UseS3ExpressControlEndpoint" => {"value" => true}}}
        operation[:paginator] = Paginators::ListAccessPointsForDirectoryBuckets.new
      end)
      service.add_operation(:list_access_points_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListAccessPointsForObjectLambda"
        operation.name = "ListAccessPointsForObjectLambda"
        operation.input = ListAccessPointsForObjectLambdaRequest
        operation.output = ListAccessPointsForObjectLambdaResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accesspointforobjectlambda", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListAccessPointsForObjectLambda.new
      end)
      service.add_operation(:list_caller_access_grants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListCallerAccessGrants"
        operation.name = "ListCallerAccessGrants"
        operation.input = ListCallerAccessGrantsRequest
        operation.output = ListCallerAccessGrantsResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/accessgrantsinstance/caller/grants", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListCallerAccessGrants.new
      end)
      service.add_operation(:list_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListJobs"
        operation.name = "ListJobs"
        operation.input = ListJobsRequest
        operation.output = ListJobsResult
        operation.errors << InternalServiceException
        operation.errors << InvalidNextTokenException
        operation.errors << InvalidRequestException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/jobs", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_multi_region_access_points, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListMultiRegionAccessPoints"
        operation.name = "ListMultiRegionAccessPoints"
        operation.input = ListMultiRegionAccessPointsRequest
        operation.output = ListMultiRegionAccessPointsResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/mrap/instances", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListMultiRegionAccessPoints.new
      end)
      service.add_operation(:list_regional_buckets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListRegionalBuckets"
        operation.name = "ListRegionalBuckets"
        operation.input = ListRegionalBucketsRequest
        operation.output = ListRegionalBucketsResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/bucket", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListRegionalBuckets.new
      end)
      service.add_operation(:list_storage_lens_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListStorageLensConfigurations"
        operation.name = "ListStorageLensConfigurations"
        operation.input = ListStorageLensConfigurationsRequest
        operation.output = ListStorageLensConfigurationsResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/storagelens", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListStorageLensConfigurations.new
      end)
      service.add_operation(:list_storage_lens_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListStorageLensGroups"
        operation.name = "ListStorageLensGroups"
        operation.input = ListStorageLensGroupsRequest
        operation.output = ListStorageLensGroupsResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/storagelensgroup", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
        operation[:paginator] = Paginators::ListStorageLensGroups.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResult
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v20180820/tags/{ResourceArn+}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_access_grants_instance_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutAccessGrantsInstanceResourcePolicy"
        operation.name = "PutAccessGrantsInstanceResourcePolicy"
        operation.input = PutAccessGrantsInstanceResourcePolicyRequest
        operation.output = PutAccessGrantsInstanceResourcePolicyResult
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/accessgrantsinstance/resourcepolicy", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_access_point_configuration_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutAccessPointConfigurationForObjectLambda"
        operation.name = "PutAccessPointConfigurationForObjectLambda"
        operation.input = PutAccessPointConfigurationForObjectLambdaRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/accesspointforobjectlambda/{Name}/configuration", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_access_point_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutAccessPointPolicy"
        operation.name = "PutAccessPointPolicy"
        operation.input = PutAccessPointPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/accesspoint/{Name}/policy", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_access_point_policy_for_object_lambda, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutAccessPointPolicyForObjectLambda"
        operation.name = "PutAccessPointPolicyForObjectLambda"
        operation.input = PutAccessPointPolicyForObjectLambdaRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/accesspointforobjectlambda/{Name}/policy", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_access_point_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutAccessPointScope"
        operation.name = "PutAccessPointScope"
        operation.input = PutAccessPointScopeRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/accesspoint/{Name}/scope", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}, "UseS3ExpressControlEndpoint" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_lifecycle_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutBucketLifecycleConfiguration"
        operation.name = "PutBucketLifecycleConfiguration"
        operation.input = PutBucketLifecycleConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/bucket/{Bucket}/lifecycleconfiguration", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutBucketPolicy"
        operation.name = "PutBucketPolicy"
        operation.input = PutBucketPolicyRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/bucket/{Bucket}/policy", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_replication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutBucketReplication"
        operation.name = "PutBucketReplication"
        operation.input = PutBucketReplicationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/bucket/{Bucket}/replication", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutBucketTagging"
        operation.name = "PutBucketTagging"
        operation.input = PutBucketTaggingRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/bucket/{Bucket}/tagging", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_bucket_versioning, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutBucketVersioning"
        operation.name = "PutBucketVersioning"
        operation.input = PutBucketVersioningRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/bucket/{Bucket}/versioning", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_job_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutJobTagging"
        operation.name = "PutJobTagging"
        operation.input = PutJobTaggingRequest
        operation.output = PutJobTaggingResult
        operation.errors << InternalServiceException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << TooManyTagsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/jobs/{JobId}/tagging", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_multi_region_access_point_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutMultiRegionAccessPointPolicy"
        operation.name = "PutMultiRegionAccessPointPolicy"
        operation.input = PutMultiRegionAccessPointPolicyRequest
        operation.output = PutMultiRegionAccessPointPolicyResult
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/async-requests/mrap/put-policy", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_public_access_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutPublicAccessBlock"
        operation.name = "PutPublicAccessBlock"
        operation.input = PutPublicAccessBlockRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/configuration/publicAccessBlock", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_storage_lens_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutStorageLensConfiguration"
        operation.name = "PutStorageLensConfiguration"
        operation.input = PutStorageLensConfigurationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/storagelens/{ConfigId}", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:put_storage_lens_configuration_tagging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#PutStorageLensConfigurationTagging"
        operation.name = "PutStorageLensConfigurationTagging"
        operation.input = PutStorageLensConfigurationTaggingRequest
        operation.output = PutStorageLensConfigurationTaggingResult
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/storagelens/{ConfigId}/tagging", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:submit_multi_region_access_point_routes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#SubmitMultiRegionAccessPointRoutes"
        operation.name = "SubmitMultiRegionAccessPointRoutes"
        operation.input = SubmitMultiRegionAccessPointRoutesRequest
        operation.output = SubmitMultiRegionAccessPointRoutesResult
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v20180820/mrap/instances/{Mrap+}/routes", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResult
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/tags/{ResourceArn+}", "code" => 204}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResult
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v20180820/tags/{ResourceArn+}", "code" => 204}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:update_access_grants_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#UpdateAccessGrantsLocation"
        operation.name = "UpdateAccessGrantsLocation"
        operation.input = UpdateAccessGrantsLocationRequest
        operation.output = UpdateAccessGrantsLocationResult
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v20180820/accessgrantsinstance/location/{AccessGrantsLocationId}", "code" => 200}, "smithy.api#httpChecksumRequired" => {}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:update_job_priority, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#UpdateJobPriority"
        operation.name = "UpdateJobPriority"
        operation.input = UpdateJobPriorityRequest
        operation.output = UpdateJobPriorityResult
        operation.errors << BadRequestException
        operation.errors << InternalServiceException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/jobs/{JobId}/priority", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:update_job_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#UpdateJobStatus"
        operation.name = "UpdateJobStatus"
        operation.input = UpdateJobStatusRequest
        operation.output = UpdateJobStatusResult
        operation.errors << BadRequestException
        operation.errors << InternalServiceException
        operation.errors << JobStatusException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v20180820/jobs/{JobId}/status", "code" => 200}, "smithy.rules#staticContextParams" => {"RequiresAccountId" => {"value" => true}}}
      end)
      service.add_operation(:update_storage_lens_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.s3control#UpdateStorageLensGroup"
        operation.name = "UpdateStorageLensGroup"
        operation.input = UpdateStorageLensGroupRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
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
