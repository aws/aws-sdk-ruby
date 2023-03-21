# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3Control
  # @api private
  module ClientApi

    include Seahorse::Model

    AbortIncompleteMultipartUpload = Shapes::StructureShape.new(name: 'AbortIncompleteMultipartUpload')
    AccessControlTranslation = Shapes::StructureShape.new(name: 'AccessControlTranslation')
    AccessPoint = Shapes::StructureShape.new(name: 'AccessPoint')
    AccessPointList = Shapes::ListShape.new(name: 'AccessPointList')
    AccessPointName = Shapes::StringShape.new(name: 'AccessPointName')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountLevel = Shapes::StructureShape.new(name: 'AccountLevel')
    ActivityMetrics = Shapes::StructureShape.new(name: 'ActivityMetrics')
    AdvancedCostOptimizationMetrics = Shapes::StructureShape.new(name: 'AdvancedCostOptimizationMetrics')
    AdvancedDataProtectionMetrics = Shapes::StructureShape.new(name: 'AdvancedDataProtectionMetrics')
    Alias = Shapes::StringShape.new(name: 'Alias')
    AsyncCreationTimestamp = Shapes::TimestampShape.new(name: 'AsyncCreationTimestamp')
    AsyncErrorDetails = Shapes::StructureShape.new(name: 'AsyncErrorDetails')
    AsyncOperation = Shapes::StructureShape.new(name: 'AsyncOperation')
    AsyncOperationName = Shapes::StringShape.new(name: 'AsyncOperationName')
    AsyncRequestParameters = Shapes::StructureShape.new(name: 'AsyncRequestParameters')
    AsyncRequestStatus = Shapes::StringShape.new(name: 'AsyncRequestStatus')
    AsyncRequestTokenARN = Shapes::StringShape.new(name: 'AsyncRequestTokenARN')
    AsyncResponseDetails = Shapes::StructureShape.new(name: 'AsyncResponseDetails')
    AwsLambdaTransformation = Shapes::StructureShape.new(name: 'AwsLambdaTransformation')
    AwsLambdaTransformationPayload = Shapes::StringShape.new(name: 'AwsLambdaTransformationPayload')
    AwsOrgArn = Shapes::StringShape.new(name: 'AwsOrgArn')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BucketAlreadyExists = Shapes::StructureShape.new(name: 'BucketAlreadyExists')
    BucketAlreadyOwnedByYou = Shapes::StructureShape.new(name: 'BucketAlreadyOwnedByYou')
    BucketCannedACL = Shapes::StringShape.new(name: 'BucketCannedACL')
    BucketIdentifierString = Shapes::StringShape.new(name: 'BucketIdentifierString')
    BucketLevel = Shapes::StructureShape.new(name: 'BucketLevel')
    BucketLocationConstraint = Shapes::StringShape.new(name: 'BucketLocationConstraint')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    BucketVersioningStatus = Shapes::StringShape.new(name: 'BucketVersioningStatus')
    Buckets = Shapes::ListShape.new(name: 'Buckets')
    CloudWatchMetrics = Shapes::StructureShape.new(name: 'CloudWatchMetrics')
    ConfigId = Shapes::StringShape.new(name: 'ConfigId')
    ConfirmRemoveSelfBucketAccess = Shapes::BooleanShape.new(name: 'ConfirmRemoveSelfBucketAccess')
    ConfirmationRequired = Shapes::BooleanShape.new(name: 'ConfirmationRequired')
    ContinuationToken = Shapes::StringShape.new(name: 'ContinuationToken')
    CreateAccessPointForObjectLambdaRequest = Shapes::StructureShape.new(name: 'CreateAccessPointForObjectLambdaRequest')
    CreateAccessPointForObjectLambdaResult = Shapes::StructureShape.new(name: 'CreateAccessPointForObjectLambdaResult')
    CreateAccessPointRequest = Shapes::StructureShape.new(name: 'CreateAccessPointRequest')
    CreateAccessPointResult = Shapes::StructureShape.new(name: 'CreateAccessPointResult')
    CreateBucketConfiguration = Shapes::StructureShape.new(name: 'CreateBucketConfiguration')
    CreateBucketRequest = Shapes::StructureShape.new(name: 'CreateBucketRequest')
    CreateBucketResult = Shapes::StructureShape.new(name: 'CreateBucketResult')
    CreateJobRequest = Shapes::StructureShape.new(name: 'CreateJobRequest')
    CreateJobResult = Shapes::StructureShape.new(name: 'CreateJobResult')
    CreateMultiRegionAccessPointInput = Shapes::StructureShape.new(name: 'CreateMultiRegionAccessPointInput')
    CreateMultiRegionAccessPointRequest = Shapes::StructureShape.new(name: 'CreateMultiRegionAccessPointRequest')
    CreateMultiRegionAccessPointResult = Shapes::StructureShape.new(name: 'CreateMultiRegionAccessPointResult')
    CreationDate = Shapes::TimestampShape.new(name: 'CreationDate')
    CreationTimestamp = Shapes::TimestampShape.new(name: 'CreationTimestamp')
    Date = Shapes::TimestampShape.new(name: 'Date')
    Days = Shapes::IntegerShape.new(name: 'Days')
    DaysAfterInitiation = Shapes::IntegerShape.new(name: 'DaysAfterInitiation')
    DeleteAccessPointForObjectLambdaRequest = Shapes::StructureShape.new(name: 'DeleteAccessPointForObjectLambdaRequest')
    DeleteAccessPointPolicyForObjectLambdaRequest = Shapes::StructureShape.new(name: 'DeleteAccessPointPolicyForObjectLambdaRequest')
    DeleteAccessPointPolicyRequest = Shapes::StructureShape.new(name: 'DeleteAccessPointPolicyRequest')
    DeleteAccessPointRequest = Shapes::StructureShape.new(name: 'DeleteAccessPointRequest')
    DeleteBucketLifecycleConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteBucketLifecycleConfigurationRequest')
    DeleteBucketPolicyRequest = Shapes::StructureShape.new(name: 'DeleteBucketPolicyRequest')
    DeleteBucketReplicationRequest = Shapes::StructureShape.new(name: 'DeleteBucketReplicationRequest')
    DeleteBucketRequest = Shapes::StructureShape.new(name: 'DeleteBucketRequest')
    DeleteBucketTaggingRequest = Shapes::StructureShape.new(name: 'DeleteBucketTaggingRequest')
    DeleteJobTaggingRequest = Shapes::StructureShape.new(name: 'DeleteJobTaggingRequest')
    DeleteJobTaggingResult = Shapes::StructureShape.new(name: 'DeleteJobTaggingResult')
    DeleteMarkerReplication = Shapes::StructureShape.new(name: 'DeleteMarkerReplication')
    DeleteMarkerReplicationStatus = Shapes::StringShape.new(name: 'DeleteMarkerReplicationStatus')
    DeleteMultiRegionAccessPointInput = Shapes::StructureShape.new(name: 'DeleteMultiRegionAccessPointInput')
    DeleteMultiRegionAccessPointRequest = Shapes::StructureShape.new(name: 'DeleteMultiRegionAccessPointRequest')
    DeleteMultiRegionAccessPointResult = Shapes::StructureShape.new(name: 'DeleteMultiRegionAccessPointResult')
    DeletePublicAccessBlockRequest = Shapes::StructureShape.new(name: 'DeletePublicAccessBlockRequest')
    DeleteStorageLensConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteStorageLensConfigurationRequest')
    DeleteStorageLensConfigurationTaggingRequest = Shapes::StructureShape.new(name: 'DeleteStorageLensConfigurationTaggingRequest')
    DeleteStorageLensConfigurationTaggingResult = Shapes::StructureShape.new(name: 'DeleteStorageLensConfigurationTaggingResult')
    DescribeJobRequest = Shapes::StructureShape.new(name: 'DescribeJobRequest')
    DescribeJobResult = Shapes::StructureShape.new(name: 'DescribeJobResult')
    DescribeMultiRegionAccessPointOperationRequest = Shapes::StructureShape.new(name: 'DescribeMultiRegionAccessPointOperationRequest')
    DescribeMultiRegionAccessPointOperationResult = Shapes::StructureShape.new(name: 'DescribeMultiRegionAccessPointOperationResult')
    Destination = Shapes::StructureShape.new(name: 'Destination')
    DetailedStatusCodesMetrics = Shapes::StructureShape.new(name: 'DetailedStatusCodesMetrics')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    Endpoints = Shapes::MapShape.new(name: 'Endpoints')
    EstablishedMultiRegionAccessPointPolicy = Shapes::StructureShape.new(name: 'EstablishedMultiRegionAccessPointPolicy')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    Exclude = Shapes::StructureShape.new(name: 'Exclude')
    ExistingObjectReplication = Shapes::StructureShape.new(name: 'ExistingObjectReplication')
    ExistingObjectReplicationStatus = Shapes::StringShape.new(name: 'ExistingObjectReplicationStatus')
    ExpirationStatus = Shapes::StringShape.new(name: 'ExpirationStatus')
    ExpiredObjectDeleteMarker = Shapes::BooleanShape.new(name: 'ExpiredObjectDeleteMarker')
    Format = Shapes::StringShape.new(name: 'Format')
    FunctionArnString = Shapes::StringShape.new(name: 'FunctionArnString')
    GeneratedManifestEncryption = Shapes::StructureShape.new(name: 'GeneratedManifestEncryption')
    GeneratedManifestFormat = Shapes::StringShape.new(name: 'GeneratedManifestFormat')
    GetAccessPointConfigurationForObjectLambdaRequest = Shapes::StructureShape.new(name: 'GetAccessPointConfigurationForObjectLambdaRequest')
    GetAccessPointConfigurationForObjectLambdaResult = Shapes::StructureShape.new(name: 'GetAccessPointConfigurationForObjectLambdaResult')
    GetAccessPointForObjectLambdaRequest = Shapes::StructureShape.new(name: 'GetAccessPointForObjectLambdaRequest')
    GetAccessPointForObjectLambdaResult = Shapes::StructureShape.new(name: 'GetAccessPointForObjectLambdaResult')
    GetAccessPointPolicyForObjectLambdaRequest = Shapes::StructureShape.new(name: 'GetAccessPointPolicyForObjectLambdaRequest')
    GetAccessPointPolicyForObjectLambdaResult = Shapes::StructureShape.new(name: 'GetAccessPointPolicyForObjectLambdaResult')
    GetAccessPointPolicyRequest = Shapes::StructureShape.new(name: 'GetAccessPointPolicyRequest')
    GetAccessPointPolicyResult = Shapes::StructureShape.new(name: 'GetAccessPointPolicyResult')
    GetAccessPointPolicyStatusForObjectLambdaRequest = Shapes::StructureShape.new(name: 'GetAccessPointPolicyStatusForObjectLambdaRequest')
    GetAccessPointPolicyStatusForObjectLambdaResult = Shapes::StructureShape.new(name: 'GetAccessPointPolicyStatusForObjectLambdaResult')
    GetAccessPointPolicyStatusRequest = Shapes::StructureShape.new(name: 'GetAccessPointPolicyStatusRequest')
    GetAccessPointPolicyStatusResult = Shapes::StructureShape.new(name: 'GetAccessPointPolicyStatusResult')
    GetAccessPointRequest = Shapes::StructureShape.new(name: 'GetAccessPointRequest')
    GetAccessPointResult = Shapes::StructureShape.new(name: 'GetAccessPointResult')
    GetBucketLifecycleConfigurationRequest = Shapes::StructureShape.new(name: 'GetBucketLifecycleConfigurationRequest')
    GetBucketLifecycleConfigurationResult = Shapes::StructureShape.new(name: 'GetBucketLifecycleConfigurationResult')
    GetBucketPolicyRequest = Shapes::StructureShape.new(name: 'GetBucketPolicyRequest')
    GetBucketPolicyResult = Shapes::StructureShape.new(name: 'GetBucketPolicyResult')
    GetBucketReplicationRequest = Shapes::StructureShape.new(name: 'GetBucketReplicationRequest')
    GetBucketReplicationResult = Shapes::StructureShape.new(name: 'GetBucketReplicationResult')
    GetBucketRequest = Shapes::StructureShape.new(name: 'GetBucketRequest')
    GetBucketResult = Shapes::StructureShape.new(name: 'GetBucketResult')
    GetBucketTaggingRequest = Shapes::StructureShape.new(name: 'GetBucketTaggingRequest')
    GetBucketTaggingResult = Shapes::StructureShape.new(name: 'GetBucketTaggingResult')
    GetBucketVersioningRequest = Shapes::StructureShape.new(name: 'GetBucketVersioningRequest')
    GetBucketVersioningResult = Shapes::StructureShape.new(name: 'GetBucketVersioningResult')
    GetJobTaggingRequest = Shapes::StructureShape.new(name: 'GetJobTaggingRequest')
    GetJobTaggingResult = Shapes::StructureShape.new(name: 'GetJobTaggingResult')
    GetMultiRegionAccessPointPolicyRequest = Shapes::StructureShape.new(name: 'GetMultiRegionAccessPointPolicyRequest')
    GetMultiRegionAccessPointPolicyResult = Shapes::StructureShape.new(name: 'GetMultiRegionAccessPointPolicyResult')
    GetMultiRegionAccessPointPolicyStatusRequest = Shapes::StructureShape.new(name: 'GetMultiRegionAccessPointPolicyStatusRequest')
    GetMultiRegionAccessPointPolicyStatusResult = Shapes::StructureShape.new(name: 'GetMultiRegionAccessPointPolicyStatusResult')
    GetMultiRegionAccessPointRequest = Shapes::StructureShape.new(name: 'GetMultiRegionAccessPointRequest')
    GetMultiRegionAccessPointResult = Shapes::StructureShape.new(name: 'GetMultiRegionAccessPointResult')
    GetMultiRegionAccessPointRoutesRequest = Shapes::StructureShape.new(name: 'GetMultiRegionAccessPointRoutesRequest')
    GetMultiRegionAccessPointRoutesResult = Shapes::StructureShape.new(name: 'GetMultiRegionAccessPointRoutesResult')
    GetPublicAccessBlockOutput = Shapes::StructureShape.new(name: 'GetPublicAccessBlockOutput')
    GetPublicAccessBlockRequest = Shapes::StructureShape.new(name: 'GetPublicAccessBlockRequest')
    GetStorageLensConfigurationRequest = Shapes::StructureShape.new(name: 'GetStorageLensConfigurationRequest')
    GetStorageLensConfigurationResult = Shapes::StructureShape.new(name: 'GetStorageLensConfigurationResult')
    GetStorageLensConfigurationTaggingRequest = Shapes::StructureShape.new(name: 'GetStorageLensConfigurationTaggingRequest')
    GetStorageLensConfigurationTaggingResult = Shapes::StructureShape.new(name: 'GetStorageLensConfigurationTaggingResult')
    GrantFullControl = Shapes::StringShape.new(name: 'GrantFullControl')
    GrantRead = Shapes::StringShape.new(name: 'GrantRead')
    GrantReadACP = Shapes::StringShape.new(name: 'GrantReadACP')
    GrantWrite = Shapes::StringShape.new(name: 'GrantWrite')
    GrantWriteACP = Shapes::StringShape.new(name: 'GrantWriteACP')
    IAMRoleArn = Shapes::StringShape.new(name: 'IAMRoleArn')
    ID = Shapes::StringShape.new(name: 'ID')
    IdempotencyException = Shapes::StructureShape.new(name: 'IdempotencyException')
    Include = Shapes::StructureShape.new(name: 'Include')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    IsEnabled = Shapes::BooleanShape.new(name: 'IsEnabled')
    IsPublic = Shapes::BooleanShape.new(name: 'IsPublic')
    JobArn = Shapes::StringShape.new(name: 'JobArn')
    JobCreationTime = Shapes::TimestampShape.new(name: 'JobCreationTime')
    JobDescriptor = Shapes::StructureShape.new(name: 'JobDescriptor')
    JobFailure = Shapes::StructureShape.new(name: 'JobFailure')
    JobFailureCode = Shapes::StringShape.new(name: 'JobFailureCode')
    JobFailureList = Shapes::ListShape.new(name: 'JobFailureList')
    JobFailureReason = Shapes::StringShape.new(name: 'JobFailureReason')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobListDescriptor = Shapes::StructureShape.new(name: 'JobListDescriptor')
    JobListDescriptorList = Shapes::ListShape.new(name: 'JobListDescriptorList')
    JobManifest = Shapes::StructureShape.new(name: 'JobManifest')
    JobManifestFieldList = Shapes::ListShape.new(name: 'JobManifestFieldList')
    JobManifestFieldName = Shapes::StringShape.new(name: 'JobManifestFieldName')
    JobManifestFormat = Shapes::StringShape.new(name: 'JobManifestFormat')
    JobManifestGenerator = Shapes::UnionShape.new(name: 'JobManifestGenerator')
    JobManifestGeneratorFilter = Shapes::StructureShape.new(name: 'JobManifestGeneratorFilter')
    JobManifestLocation = Shapes::StructureShape.new(name: 'JobManifestLocation')
    JobManifestSpec = Shapes::StructureShape.new(name: 'JobManifestSpec')
    JobNumberOfTasksFailed = Shapes::IntegerShape.new(name: 'JobNumberOfTasksFailed')
    JobNumberOfTasksSucceeded = Shapes::IntegerShape.new(name: 'JobNumberOfTasksSucceeded')
    JobOperation = Shapes::StructureShape.new(name: 'JobOperation')
    JobPriority = Shapes::IntegerShape.new(name: 'JobPriority')
    JobProgressSummary = Shapes::StructureShape.new(name: 'JobProgressSummary')
    JobReport = Shapes::StructureShape.new(name: 'JobReport')
    JobReportFormat = Shapes::StringShape.new(name: 'JobReportFormat')
    JobReportScope = Shapes::StringShape.new(name: 'JobReportScope')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobStatusException = Shapes::StructureShape.new(name: 'JobStatusException')
    JobStatusList = Shapes::ListShape.new(name: 'JobStatusList')
    JobStatusUpdateReason = Shapes::StringShape.new(name: 'JobStatusUpdateReason')
    JobTerminationDate = Shapes::TimestampShape.new(name: 'JobTerminationDate')
    JobTimeInStateSeconds = Shapes::IntegerShape.new(name: 'JobTimeInStateSeconds')
    JobTimers = Shapes::StructureShape.new(name: 'JobTimers')
    JobTotalNumberOfTasks = Shapes::IntegerShape.new(name: 'JobTotalNumberOfTasks')
    KmsKeyArnString = Shapes::StringShape.new(name: 'KmsKeyArnString')
    LambdaInvokeOperation = Shapes::StructureShape.new(name: 'LambdaInvokeOperation')
    LifecycleConfiguration = Shapes::StructureShape.new(name: 'LifecycleConfiguration')
    LifecycleExpiration = Shapes::StructureShape.new(name: 'LifecycleExpiration')
    LifecycleRule = Shapes::StructureShape.new(name: 'LifecycleRule')
    LifecycleRuleAndOperator = Shapes::StructureShape.new(name: 'LifecycleRuleAndOperator')
    LifecycleRuleFilter = Shapes::StructureShape.new(name: 'LifecycleRuleFilter')
    LifecycleRules = Shapes::ListShape.new(name: 'LifecycleRules')
    ListAccessPointsForObjectLambdaRequest = Shapes::StructureShape.new(name: 'ListAccessPointsForObjectLambdaRequest')
    ListAccessPointsForObjectLambdaResult = Shapes::StructureShape.new(name: 'ListAccessPointsForObjectLambdaResult')
    ListAccessPointsRequest = Shapes::StructureShape.new(name: 'ListAccessPointsRequest')
    ListAccessPointsResult = Shapes::StructureShape.new(name: 'ListAccessPointsResult')
    ListJobsRequest = Shapes::StructureShape.new(name: 'ListJobsRequest')
    ListJobsResult = Shapes::StructureShape.new(name: 'ListJobsResult')
    ListMultiRegionAccessPointsRequest = Shapes::StructureShape.new(name: 'ListMultiRegionAccessPointsRequest')
    ListMultiRegionAccessPointsResult = Shapes::StructureShape.new(name: 'ListMultiRegionAccessPointsResult')
    ListRegionalBucketsRequest = Shapes::StructureShape.new(name: 'ListRegionalBucketsRequest')
    ListRegionalBucketsResult = Shapes::StructureShape.new(name: 'ListRegionalBucketsResult')
    ListStorageLensConfigurationEntry = Shapes::StructureShape.new(name: 'ListStorageLensConfigurationEntry')
    ListStorageLensConfigurationsRequest = Shapes::StructureShape.new(name: 'ListStorageLensConfigurationsRequest')
    ListStorageLensConfigurationsResult = Shapes::StructureShape.new(name: 'ListStorageLensConfigurationsResult')
    Location = Shapes::StringShape.new(name: 'Location')
    MFA = Shapes::StringShape.new(name: 'MFA')
    MFADelete = Shapes::StringShape.new(name: 'MFADelete')
    MFADeleteStatus = Shapes::StringShape.new(name: 'MFADeleteStatus')
    ManifestPrefixString = Shapes::StringShape.new(name: 'ManifestPrefixString')
    MaxLength1024String = Shapes::StringShape.new(name: 'MaxLength1024String')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Metrics = Shapes::StructureShape.new(name: 'Metrics')
    MetricsStatus = Shapes::StringShape.new(name: 'MetricsStatus')
    MinStorageBytesPercentage = Shapes::FloatShape.new(name: 'MinStorageBytesPercentage')
    Minutes = Shapes::IntegerShape.new(name: 'Minutes')
    MultiRegionAccessPointAlias = Shapes::StringShape.new(name: 'MultiRegionAccessPointAlias')
    MultiRegionAccessPointClientToken = Shapes::StringShape.new(name: 'MultiRegionAccessPointClientToken')
    MultiRegionAccessPointId = Shapes::StringShape.new(name: 'MultiRegionAccessPointId')
    MultiRegionAccessPointName = Shapes::StringShape.new(name: 'MultiRegionAccessPointName')
    MultiRegionAccessPointPolicyDocument = Shapes::StructureShape.new(name: 'MultiRegionAccessPointPolicyDocument')
    MultiRegionAccessPointRegionalResponse = Shapes::StructureShape.new(name: 'MultiRegionAccessPointRegionalResponse')
    MultiRegionAccessPointRegionalResponseList = Shapes::ListShape.new(name: 'MultiRegionAccessPointRegionalResponseList')
    MultiRegionAccessPointReport = Shapes::StructureShape.new(name: 'MultiRegionAccessPointReport')
    MultiRegionAccessPointReportList = Shapes::ListShape.new(name: 'MultiRegionAccessPointReportList')
    MultiRegionAccessPointRoute = Shapes::StructureShape.new(name: 'MultiRegionAccessPointRoute')
    MultiRegionAccessPointStatus = Shapes::StringShape.new(name: 'MultiRegionAccessPointStatus')
    MultiRegionAccessPointsAsyncResponse = Shapes::StructureShape.new(name: 'MultiRegionAccessPointsAsyncResponse')
    NetworkOrigin = Shapes::StringShape.new(name: 'NetworkOrigin')
    NoSuchPublicAccessBlockConfiguration = Shapes::StructureShape.new(name: 'NoSuchPublicAccessBlockConfiguration')
    NoSuchPublicAccessBlockConfigurationMessage = Shapes::StringShape.new(name: 'NoSuchPublicAccessBlockConfigurationMessage')
    NonEmptyMaxLength1024String = Shapes::StringShape.new(name: 'NonEmptyMaxLength1024String')
    NonEmptyMaxLength2048String = Shapes::StringShape.new(name: 'NonEmptyMaxLength2048String')
    NonEmptyMaxLength256String = Shapes::StringShape.new(name: 'NonEmptyMaxLength256String')
    NonEmptyMaxLength64String = Shapes::StringShape.new(name: 'NonEmptyMaxLength64String')
    NoncurrentVersionCount = Shapes::IntegerShape.new(name: 'NoncurrentVersionCount')
    NoncurrentVersionExpiration = Shapes::StructureShape.new(name: 'NoncurrentVersionExpiration')
    NoncurrentVersionTransition = Shapes::StructureShape.new(name: 'NoncurrentVersionTransition')
    NoncurrentVersionTransitionList = Shapes::ListShape.new(name: 'NoncurrentVersionTransitionList')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    ObjectCreationTime = Shapes::TimestampShape.new(name: 'ObjectCreationTime')
    ObjectLambdaAccessPoint = Shapes::StructureShape.new(name: 'ObjectLambdaAccessPoint')
    ObjectLambdaAccessPointAlias = Shapes::StructureShape.new(name: 'ObjectLambdaAccessPointAlias')
    ObjectLambdaAccessPointAliasStatus = Shapes::StringShape.new(name: 'ObjectLambdaAccessPointAliasStatus')
    ObjectLambdaAccessPointAliasValue = Shapes::StringShape.new(name: 'ObjectLambdaAccessPointAliasValue')
    ObjectLambdaAccessPointArn = Shapes::StringShape.new(name: 'ObjectLambdaAccessPointArn')
    ObjectLambdaAccessPointList = Shapes::ListShape.new(name: 'ObjectLambdaAccessPointList')
    ObjectLambdaAccessPointName = Shapes::StringShape.new(name: 'ObjectLambdaAccessPointName')
    ObjectLambdaAllowedFeature = Shapes::StringShape.new(name: 'ObjectLambdaAllowedFeature')
    ObjectLambdaAllowedFeaturesList = Shapes::ListShape.new(name: 'ObjectLambdaAllowedFeaturesList')
    ObjectLambdaConfiguration = Shapes::StructureShape.new(name: 'ObjectLambdaConfiguration')
    ObjectLambdaContentTransformation = Shapes::UnionShape.new(name: 'ObjectLambdaContentTransformation')
    ObjectLambdaPolicy = Shapes::StringShape.new(name: 'ObjectLambdaPolicy')
    ObjectLambdaSupportingAccessPointArn = Shapes::StringShape.new(name: 'ObjectLambdaSupportingAccessPointArn')
    ObjectLambdaTransformationConfiguration = Shapes::StructureShape.new(name: 'ObjectLambdaTransformationConfiguration')
    ObjectLambdaTransformationConfigurationAction = Shapes::StringShape.new(name: 'ObjectLambdaTransformationConfigurationAction')
    ObjectLambdaTransformationConfigurationActionsList = Shapes::ListShape.new(name: 'ObjectLambdaTransformationConfigurationActionsList')
    ObjectLambdaTransformationConfigurationsList = Shapes::ListShape.new(name: 'ObjectLambdaTransformationConfigurationsList')
    ObjectLockEnabledForBucket = Shapes::BooleanShape.new(name: 'ObjectLockEnabledForBucket')
    ObjectSizeGreaterThanBytes = Shapes::IntegerShape.new(name: 'ObjectSizeGreaterThanBytes')
    ObjectSizeLessThanBytes = Shapes::IntegerShape.new(name: 'ObjectSizeLessThanBytes')
    OperationName = Shapes::StringShape.new(name: 'OperationName')
    OutputSchemaVersion = Shapes::StringShape.new(name: 'OutputSchemaVersion')
    OwnerOverride = Shapes::StringShape.new(name: 'OwnerOverride')
    Policy = Shapes::StringShape.new(name: 'Policy')
    PolicyStatus = Shapes::StructureShape.new(name: 'PolicyStatus')
    Prefix = Shapes::StringShape.new(name: 'Prefix')
    PrefixLevel = Shapes::StructureShape.new(name: 'PrefixLevel')
    PrefixLevelStorageMetrics = Shapes::StructureShape.new(name: 'PrefixLevelStorageMetrics')
    Priority = Shapes::IntegerShape.new(name: 'Priority')
    ProposedMultiRegionAccessPointPolicy = Shapes::StructureShape.new(name: 'ProposedMultiRegionAccessPointPolicy')
    PublicAccessBlockConfiguration = Shapes::StructureShape.new(name: 'PublicAccessBlockConfiguration')
    PublicAccessBlockEnabled = Shapes::BooleanShape.new(name: 'PublicAccessBlockEnabled')
    PutAccessPointConfigurationForObjectLambdaRequest = Shapes::StructureShape.new(name: 'PutAccessPointConfigurationForObjectLambdaRequest')
    PutAccessPointPolicyForObjectLambdaRequest = Shapes::StructureShape.new(name: 'PutAccessPointPolicyForObjectLambdaRequest')
    PutAccessPointPolicyRequest = Shapes::StructureShape.new(name: 'PutAccessPointPolicyRequest')
    PutBucketLifecycleConfigurationRequest = Shapes::StructureShape.new(name: 'PutBucketLifecycleConfigurationRequest')
    PutBucketPolicyRequest = Shapes::StructureShape.new(name: 'PutBucketPolicyRequest')
    PutBucketReplicationRequest = Shapes::StructureShape.new(name: 'PutBucketReplicationRequest')
    PutBucketTaggingRequest = Shapes::StructureShape.new(name: 'PutBucketTaggingRequest')
    PutBucketVersioningRequest = Shapes::StructureShape.new(name: 'PutBucketVersioningRequest')
    PutJobTaggingRequest = Shapes::StructureShape.new(name: 'PutJobTaggingRequest')
    PutJobTaggingResult = Shapes::StructureShape.new(name: 'PutJobTaggingResult')
    PutMultiRegionAccessPointPolicyInput = Shapes::StructureShape.new(name: 'PutMultiRegionAccessPointPolicyInput')
    PutMultiRegionAccessPointPolicyRequest = Shapes::StructureShape.new(name: 'PutMultiRegionAccessPointPolicyRequest')
    PutMultiRegionAccessPointPolicyResult = Shapes::StructureShape.new(name: 'PutMultiRegionAccessPointPolicyResult')
    PutPublicAccessBlockRequest = Shapes::StructureShape.new(name: 'PutPublicAccessBlockRequest')
    PutStorageLensConfigurationRequest = Shapes::StructureShape.new(name: 'PutStorageLensConfigurationRequest')
    PutStorageLensConfigurationTaggingRequest = Shapes::StructureShape.new(name: 'PutStorageLensConfigurationTaggingRequest')
    PutStorageLensConfigurationTaggingResult = Shapes::StructureShape.new(name: 'PutStorageLensConfigurationTaggingResult')
    Region = Shapes::StructureShape.new(name: 'Region')
    RegionCreationList = Shapes::ListShape.new(name: 'RegionCreationList')
    RegionName = Shapes::StringShape.new(name: 'RegionName')
    RegionReport = Shapes::StructureShape.new(name: 'RegionReport')
    RegionReportList = Shapes::ListShape.new(name: 'RegionReportList')
    RegionalBucket = Shapes::StructureShape.new(name: 'RegionalBucket')
    RegionalBucketList = Shapes::ListShape.new(name: 'RegionalBucketList')
    Regions = Shapes::ListShape.new(name: 'Regions')
    ReplicaKmsKeyID = Shapes::StringShape.new(name: 'ReplicaKmsKeyID')
    ReplicaModifications = Shapes::StructureShape.new(name: 'ReplicaModifications')
    ReplicaModificationsStatus = Shapes::StringShape.new(name: 'ReplicaModificationsStatus')
    ReplicationConfiguration = Shapes::StructureShape.new(name: 'ReplicationConfiguration')
    ReplicationRule = Shapes::StructureShape.new(name: 'ReplicationRule')
    ReplicationRuleAndOperator = Shapes::StructureShape.new(name: 'ReplicationRuleAndOperator')
    ReplicationRuleFilter = Shapes::StructureShape.new(name: 'ReplicationRuleFilter')
    ReplicationRuleStatus = Shapes::StringShape.new(name: 'ReplicationRuleStatus')
    ReplicationRules = Shapes::ListShape.new(name: 'ReplicationRules')
    ReplicationStatus = Shapes::StringShape.new(name: 'ReplicationStatus')
    ReplicationStatusFilterList = Shapes::ListShape.new(name: 'ReplicationStatusFilterList')
    ReplicationStorageClass = Shapes::StringShape.new(name: 'ReplicationStorageClass')
    ReplicationTime = Shapes::StructureShape.new(name: 'ReplicationTime')
    ReplicationTimeStatus = Shapes::StringShape.new(name: 'ReplicationTimeStatus')
    ReplicationTimeValue = Shapes::StructureShape.new(name: 'ReplicationTimeValue')
    ReportPrefixString = Shapes::StringShape.new(name: 'ReportPrefixString')
    RequestedJobStatus = Shapes::StringShape.new(name: 'RequestedJobStatus')
    Role = Shapes::StringShape.new(name: 'Role')
    RouteList = Shapes::ListShape.new(name: 'RouteList')
    S3AWSRegion = Shapes::StringShape.new(name: 'S3AWSRegion')
    S3AccessControlList = Shapes::StructureShape.new(name: 'S3AccessControlList')
    S3AccessControlPolicy = Shapes::StructureShape.new(name: 'S3AccessControlPolicy')
    S3AccessPointArn = Shapes::StringShape.new(name: 'S3AccessPointArn')
    S3BucketArnString = Shapes::StringShape.new(name: 'S3BucketArnString')
    S3BucketDestination = Shapes::StructureShape.new(name: 'S3BucketDestination')
    S3CannedAccessControlList = Shapes::StringShape.new(name: 'S3CannedAccessControlList')
    S3ChecksumAlgorithm = Shapes::StringShape.new(name: 'S3ChecksumAlgorithm')
    S3ContentLength = Shapes::IntegerShape.new(name: 'S3ContentLength')
    S3CopyObjectOperation = Shapes::StructureShape.new(name: 'S3CopyObjectOperation')
    S3DeleteObjectTaggingOperation = Shapes::StructureShape.new(name: 'S3DeleteObjectTaggingOperation')
    S3ExpirationInDays = Shapes::IntegerShape.new(name: 'S3ExpirationInDays')
    S3GeneratedManifestDescriptor = Shapes::StructureShape.new(name: 'S3GeneratedManifestDescriptor')
    S3GlacierJobTier = Shapes::StringShape.new(name: 'S3GlacierJobTier')
    S3Grant = Shapes::StructureShape.new(name: 'S3Grant')
    S3GrantList = Shapes::ListShape.new(name: 'S3GrantList')
    S3Grantee = Shapes::StructureShape.new(name: 'S3Grantee')
    S3GranteeTypeIdentifier = Shapes::StringShape.new(name: 'S3GranteeTypeIdentifier')
    S3InitiateRestoreObjectOperation = Shapes::StructureShape.new(name: 'S3InitiateRestoreObjectOperation')
    S3JobManifestGenerator = Shapes::StructureShape.new(name: 'S3JobManifestGenerator')
    S3KeyArnString = Shapes::StringShape.new(name: 'S3KeyArnString')
    S3ManifestOutputLocation = Shapes::StructureShape.new(name: 'S3ManifestOutputLocation')
    S3MetadataDirective = Shapes::StringShape.new(name: 'S3MetadataDirective')
    S3ObjectLockLegalHold = Shapes::StructureShape.new(name: 'S3ObjectLockLegalHold')
    S3ObjectLockLegalHoldStatus = Shapes::StringShape.new(name: 'S3ObjectLockLegalHoldStatus')
    S3ObjectLockMode = Shapes::StringShape.new(name: 'S3ObjectLockMode')
    S3ObjectLockRetentionMode = Shapes::StringShape.new(name: 'S3ObjectLockRetentionMode')
    S3ObjectMetadata = Shapes::StructureShape.new(name: 'S3ObjectMetadata')
    S3ObjectOwner = Shapes::StructureShape.new(name: 'S3ObjectOwner')
    S3ObjectVersionId = Shapes::StringShape.new(name: 'S3ObjectVersionId')
    S3Permission = Shapes::StringShape.new(name: 'S3Permission')
    S3RegionalBucketArn = Shapes::StringShape.new(name: 'S3RegionalBucketArn')
    S3ReplicateObjectOperation = Shapes::StructureShape.new(name: 'S3ReplicateObjectOperation')
    S3Retention = Shapes::StructureShape.new(name: 'S3Retention')
    S3SSEAlgorithm = Shapes::StringShape.new(name: 'S3SSEAlgorithm')
    S3SetObjectAclOperation = Shapes::StructureShape.new(name: 'S3SetObjectAclOperation')
    S3SetObjectLegalHoldOperation = Shapes::StructureShape.new(name: 'S3SetObjectLegalHoldOperation')
    S3SetObjectRetentionOperation = Shapes::StructureShape.new(name: 'S3SetObjectRetentionOperation')
    S3SetObjectTaggingOperation = Shapes::StructureShape.new(name: 'S3SetObjectTaggingOperation')
    S3StorageClass = Shapes::StringShape.new(name: 'S3StorageClass')
    S3Tag = Shapes::StructureShape.new(name: 'S3Tag')
    S3TagSet = Shapes::ListShape.new(name: 'S3TagSet')
    S3UserMetadata = Shapes::MapShape.new(name: 'S3UserMetadata')
    SSEKMS = Shapes::StructureShape.new(name: 'SSEKMS')
    SSEKMSEncryption = Shapes::StructureShape.new(name: 'SSEKMSEncryption')
    SSEKMSKeyId = Shapes::StringShape.new(name: 'SSEKMSKeyId')
    SSES3 = Shapes::StructureShape.new(name: 'SSES3')
    SSES3Encryption = Shapes::StructureShape.new(name: 'SSES3Encryption')
    SelectionCriteria = Shapes::StructureShape.new(name: 'SelectionCriteria')
    Setting = Shapes::BooleanShape.new(name: 'Setting')
    SourceSelectionCriteria = Shapes::StructureShape.new(name: 'SourceSelectionCriteria')
    SseKmsEncryptedObjects = Shapes::StructureShape.new(name: 'SseKmsEncryptedObjects')
    SseKmsEncryptedObjectsStatus = Shapes::StringShape.new(name: 'SseKmsEncryptedObjectsStatus')
    StorageLensArn = Shapes::StringShape.new(name: 'StorageLensArn')
    StorageLensAwsOrg = Shapes::StructureShape.new(name: 'StorageLensAwsOrg')
    StorageLensConfiguration = Shapes::StructureShape.new(name: 'StorageLensConfiguration')
    StorageLensConfigurationList = Shapes::ListShape.new(name: 'StorageLensConfigurationList', flattened: true)
    StorageLensDataExport = Shapes::StructureShape.new(name: 'StorageLensDataExport')
    StorageLensDataExportEncryption = Shapes::StructureShape.new(name: 'StorageLensDataExportEncryption')
    StorageLensPrefixLevelDelimiter = Shapes::StringShape.new(name: 'StorageLensPrefixLevelDelimiter')
    StorageLensPrefixLevelMaxDepth = Shapes::IntegerShape.new(name: 'StorageLensPrefixLevelMaxDepth')
    StorageLensTag = Shapes::StructureShape.new(name: 'StorageLensTag')
    StorageLensTags = Shapes::ListShape.new(name: 'StorageLensTags')
    StringForNextToken = Shapes::StringShape.new(name: 'StringForNextToken')
    SubmitMultiRegionAccessPointRoutesRequest = Shapes::StructureShape.new(name: 'SubmitMultiRegionAccessPointRoutesRequest')
    SubmitMultiRegionAccessPointRoutesResult = Shapes::StructureShape.new(name: 'SubmitMultiRegionAccessPointRoutesResult')
    SuspendedCause = Shapes::StringShape.new(name: 'SuspendedCause')
    SuspendedDate = Shapes::TimestampShape.new(name: 'SuspendedDate')
    TagKeyString = Shapes::StringShape.new(name: 'TagKeyString')
    TagValueString = Shapes::StringShape.new(name: 'TagValueString')
    Tagging = Shapes::StructureShape.new(name: 'Tagging')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    TrafficDialPercentage = Shapes::IntegerShape.new(name: 'TrafficDialPercentage')
    Transition = Shapes::StructureShape.new(name: 'Transition')
    TransitionList = Shapes::ListShape.new(name: 'TransitionList')
    TransitionStorageClass = Shapes::StringShape.new(name: 'TransitionStorageClass')
    UpdateJobPriorityRequest = Shapes::StructureShape.new(name: 'UpdateJobPriorityRequest')
    UpdateJobPriorityResult = Shapes::StructureShape.new(name: 'UpdateJobPriorityResult')
    UpdateJobStatusRequest = Shapes::StructureShape.new(name: 'UpdateJobStatusRequest')
    UpdateJobStatusResult = Shapes::StructureShape.new(name: 'UpdateJobStatusResult')
    VersioningConfiguration = Shapes::StructureShape.new(name: 'VersioningConfiguration')
    VpcConfiguration = Shapes::StructureShape.new(name: 'VpcConfiguration')
    VpcId = Shapes::StringShape.new(name: 'VpcId')

    AbortIncompleteMultipartUpload.add_member(:days_after_initiation, Shapes::ShapeRef.new(shape: DaysAfterInitiation, location_name: "DaysAfterInitiation"))
    AbortIncompleteMultipartUpload.struct_class = Types::AbortIncompleteMultipartUpload

    AccessControlTranslation.add_member(:owner, Shapes::ShapeRef.new(shape: OwnerOverride, required: true, location_name: "Owner"))
    AccessControlTranslation.struct_class = Types::AccessControlTranslation

    AccessPoint.add_member(:name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location_name: "Name"))
    AccessPoint.add_member(:network_origin, Shapes::ShapeRef.new(shape: NetworkOrigin, required: true, location_name: "NetworkOrigin"))
    AccessPoint.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    AccessPoint.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "Bucket"))
    AccessPoint.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: S3AccessPointArn, location_name: "AccessPointArn"))
    AccessPoint.add_member(:alias, Shapes::ShapeRef.new(shape: Alias, location_name: "Alias"))
    AccessPoint.add_member(:bucket_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "BucketAccountId"))
    AccessPoint.struct_class = Types::AccessPoint

    AccessPointList.member = Shapes::ShapeRef.new(shape: AccessPoint, location_name: "AccessPoint")

    AccountLevel.add_member(:activity_metrics, Shapes::ShapeRef.new(shape: ActivityMetrics, location_name: "ActivityMetrics"))
    AccountLevel.add_member(:bucket_level, Shapes::ShapeRef.new(shape: BucketLevel, required: true, location_name: "BucketLevel"))
    AccountLevel.add_member(:advanced_cost_optimization_metrics, Shapes::ShapeRef.new(shape: AdvancedCostOptimizationMetrics, location_name: "AdvancedCostOptimizationMetrics"))
    AccountLevel.add_member(:advanced_data_protection_metrics, Shapes::ShapeRef.new(shape: AdvancedDataProtectionMetrics, location_name: "AdvancedDataProtectionMetrics"))
    AccountLevel.add_member(:detailed_status_codes_metrics, Shapes::ShapeRef.new(shape: DetailedStatusCodesMetrics, location_name: "DetailedStatusCodesMetrics"))
    AccountLevel.struct_class = Types::AccountLevel

    ActivityMetrics.add_member(:is_enabled, Shapes::ShapeRef.new(shape: IsEnabled, location_name: "IsEnabled"))
    ActivityMetrics.struct_class = Types::ActivityMetrics

    AdvancedCostOptimizationMetrics.add_member(:is_enabled, Shapes::ShapeRef.new(shape: IsEnabled, location_name: "IsEnabled"))
    AdvancedCostOptimizationMetrics.struct_class = Types::AdvancedCostOptimizationMetrics

    AdvancedDataProtectionMetrics.add_member(:is_enabled, Shapes::ShapeRef.new(shape: IsEnabled, location_name: "IsEnabled"))
    AdvancedDataProtectionMetrics.struct_class = Types::AdvancedDataProtectionMetrics

    AsyncErrorDetails.add_member(:code, Shapes::ShapeRef.new(shape: MaxLength1024String, location_name: "Code"))
    AsyncErrorDetails.add_member(:message, Shapes::ShapeRef.new(shape: MaxLength1024String, location_name: "Message"))
    AsyncErrorDetails.add_member(:resource, Shapes::ShapeRef.new(shape: MaxLength1024String, location_name: "Resource"))
    AsyncErrorDetails.add_member(:request_id, Shapes::ShapeRef.new(shape: MaxLength1024String, location_name: "RequestId"))
    AsyncErrorDetails.struct_class = Types::AsyncErrorDetails

    AsyncOperation.add_member(:creation_time, Shapes::ShapeRef.new(shape: AsyncCreationTimestamp, location_name: "CreationTime"))
    AsyncOperation.add_member(:operation, Shapes::ShapeRef.new(shape: AsyncOperationName, location_name: "Operation"))
    AsyncOperation.add_member(:request_token_arn, Shapes::ShapeRef.new(shape: AsyncRequestTokenARN, location_name: "RequestTokenARN"))
    AsyncOperation.add_member(:request_parameters, Shapes::ShapeRef.new(shape: AsyncRequestParameters, location_name: "RequestParameters"))
    AsyncOperation.add_member(:request_status, Shapes::ShapeRef.new(shape: AsyncRequestStatus, location_name: "RequestStatus"))
    AsyncOperation.add_member(:response_details, Shapes::ShapeRef.new(shape: AsyncResponseDetails, location_name: "ResponseDetails"))
    AsyncOperation.struct_class = Types::AsyncOperation

    AsyncRequestParameters.add_member(:create_multi_region_access_point_request, Shapes::ShapeRef.new(shape: CreateMultiRegionAccessPointInput, location_name: "CreateMultiRegionAccessPointRequest"))
    AsyncRequestParameters.add_member(:delete_multi_region_access_point_request, Shapes::ShapeRef.new(shape: DeleteMultiRegionAccessPointInput, location_name: "DeleteMultiRegionAccessPointRequest"))
    AsyncRequestParameters.add_member(:put_multi_region_access_point_policy_request, Shapes::ShapeRef.new(shape: PutMultiRegionAccessPointPolicyInput, location_name: "PutMultiRegionAccessPointPolicyRequest"))
    AsyncRequestParameters.struct_class = Types::AsyncRequestParameters

    AsyncResponseDetails.add_member(:multi_region_access_point_details, Shapes::ShapeRef.new(shape: MultiRegionAccessPointsAsyncResponse, location_name: "MultiRegionAccessPointDetails"))
    AsyncResponseDetails.add_member(:error_details, Shapes::ShapeRef.new(shape: AsyncErrorDetails, location_name: "ErrorDetails"))
    AsyncResponseDetails.struct_class = Types::AsyncResponseDetails

    AwsLambdaTransformation.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArnString, required: true, location_name: "FunctionArn"))
    AwsLambdaTransformation.add_member(:function_payload, Shapes::ShapeRef.new(shape: AwsLambdaTransformationPayload, location_name: "FunctionPayload"))
    AwsLambdaTransformation.struct_class = Types::AwsLambdaTransformation

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    BucketAlreadyExists.struct_class = Types::BucketAlreadyExists

    BucketAlreadyOwnedByYou.struct_class = Types::BucketAlreadyOwnedByYou

    BucketLevel.add_member(:activity_metrics, Shapes::ShapeRef.new(shape: ActivityMetrics, location_name: "ActivityMetrics"))
    BucketLevel.add_member(:prefix_level, Shapes::ShapeRef.new(shape: PrefixLevel, location_name: "PrefixLevel"))
    BucketLevel.add_member(:advanced_cost_optimization_metrics, Shapes::ShapeRef.new(shape: AdvancedCostOptimizationMetrics, location_name: "AdvancedCostOptimizationMetrics"))
    BucketLevel.add_member(:advanced_data_protection_metrics, Shapes::ShapeRef.new(shape: AdvancedDataProtectionMetrics, location_name: "AdvancedDataProtectionMetrics"))
    BucketLevel.add_member(:detailed_status_codes_metrics, Shapes::ShapeRef.new(shape: DetailedStatusCodesMetrics, location_name: "DetailedStatusCodesMetrics"))
    BucketLevel.struct_class = Types::BucketLevel

    Buckets.member = Shapes::ShapeRef.new(shape: S3BucketArnString, location_name: "Arn")

    CloudWatchMetrics.add_member(:is_enabled, Shapes::ShapeRef.new(shape: IsEnabled, required: true, location_name: "IsEnabled"))
    CloudWatchMetrics.struct_class = Types::CloudWatchMetrics

    CreateAccessPointForObjectLambdaRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    CreateAccessPointForObjectLambdaRequest.add_member(:name, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, required: true, location: "uri", location_name: "name"))
    CreateAccessPointForObjectLambdaRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ObjectLambdaConfiguration, required: true, location_name: "Configuration"))
    CreateAccessPointForObjectLambdaRequest.struct_class = Types::CreateAccessPointForObjectLambdaRequest

    CreateAccessPointForObjectLambdaResult.add_member(:object_lambda_access_point_arn, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointArn, location_name: "ObjectLambdaAccessPointArn"))
    CreateAccessPointForObjectLambdaResult.add_member(:alias, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointAlias, location_name: "Alias"))
    CreateAccessPointForObjectLambdaResult.struct_class = Types::CreateAccessPointForObjectLambdaResult

    CreateAccessPointRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    CreateAccessPointRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location: "uri", location_name: "name"))
    CreateAccessPointRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "Bucket", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    CreateAccessPointRequest.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    CreateAccessPointRequest.add_member(:public_access_block_configuration, Shapes::ShapeRef.new(shape: PublicAccessBlockConfiguration, location_name: "PublicAccessBlockConfiguration"))
    CreateAccessPointRequest.add_member(:bucket_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "BucketAccountId"))
    CreateAccessPointRequest.struct_class = Types::CreateAccessPointRequest

    CreateAccessPointResult.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: S3AccessPointArn, location_name: "AccessPointArn"))
    CreateAccessPointResult.add_member(:alias, Shapes::ShapeRef.new(shape: Alias, location_name: "Alias"))
    CreateAccessPointResult.struct_class = Types::CreateAccessPointResult

    CreateBucketConfiguration.add_member(:location_constraint, Shapes::ShapeRef.new(shape: BucketLocationConstraint, location_name: "LocationConstraint"))
    CreateBucketConfiguration.struct_class = Types::CreateBucketConfiguration

    CreateBucketRequest.add_member(:acl, Shapes::ShapeRef.new(shape: BucketCannedACL, location: "header", location_name: "x-amz-acl"))
    CreateBucketRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    CreateBucketRequest.add_member(:create_bucket_configuration, Shapes::ShapeRef.new(shape: CreateBucketConfiguration, location_name: "CreateBucketConfiguration", metadata: {"xmlNamespace"=>{"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}}))
    CreateBucketRequest.add_member(:grant_full_control, Shapes::ShapeRef.new(shape: GrantFullControl, location: "header", location_name: "x-amz-grant-full-control"))
    CreateBucketRequest.add_member(:grant_read, Shapes::ShapeRef.new(shape: GrantRead, location: "header", location_name: "x-amz-grant-read"))
    CreateBucketRequest.add_member(:grant_read_acp, Shapes::ShapeRef.new(shape: GrantReadACP, location: "header", location_name: "x-amz-grant-read-acp"))
    CreateBucketRequest.add_member(:grant_write, Shapes::ShapeRef.new(shape: GrantWrite, location: "header", location_name: "x-amz-grant-write"))
    CreateBucketRequest.add_member(:grant_write_acp, Shapes::ShapeRef.new(shape: GrantWriteACP, location: "header", location_name: "x-amz-grant-write-acp"))
    CreateBucketRequest.add_member(:object_lock_enabled_for_bucket, Shapes::ShapeRef.new(shape: ObjectLockEnabledForBucket, location: "header", location_name: "x-amz-bucket-object-lock-enabled"))
    CreateBucketRequest.add_member(:outpost_id, Shapes::ShapeRef.new(shape: NonEmptyMaxLength64String, location: "header", location_name: "x-amz-outpost-id", metadata: {"contextParam"=>{"name"=>"OutpostId"}}))
    CreateBucketRequest.struct_class = Types::CreateBucketRequest
    CreateBucketRequest[:payload] = :create_bucket_configuration
    CreateBucketRequest[:payload_member] = CreateBucketRequest.member(:create_bucket_configuration)

    CreateBucketResult.add_member(:location, Shapes::ShapeRef.new(shape: Location, location: "header", location_name: "Location"))
    CreateBucketResult.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: S3RegionalBucketArn, location_name: "BucketArn"))
    CreateBucketResult.struct_class = Types::CreateBucketResult

    CreateJobRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    CreateJobRequest.add_member(:confirmation_required, Shapes::ShapeRef.new(shape: ConfirmationRequired, location_name: "ConfirmationRequired", metadata: {"box"=>true}))
    CreateJobRequest.add_member(:operation, Shapes::ShapeRef.new(shape: JobOperation, required: true, location_name: "Operation"))
    CreateJobRequest.add_member(:report, Shapes::ShapeRef.new(shape: JobReport, required: true, location_name: "Report"))
    CreateJobRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: NonEmptyMaxLength64String, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateJobRequest.add_member(:manifest, Shapes::ShapeRef.new(shape: JobManifest, location_name: "Manifest"))
    CreateJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyMaxLength256String, location_name: "Description"))
    CreateJobRequest.add_member(:priority, Shapes::ShapeRef.new(shape: JobPriority, required: true, location_name: "Priority", metadata: {"box"=>true}))
    CreateJobRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, required: true, location_name: "RoleArn"))
    CreateJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: S3TagSet, location_name: "Tags"))
    CreateJobRequest.add_member(:manifest_generator, Shapes::ShapeRef.new(shape: JobManifestGenerator, location_name: "ManifestGenerator"))
    CreateJobRequest.struct_class = Types::CreateJobRequest

    CreateJobResult.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    CreateJobResult.struct_class = Types::CreateJobResult

    CreateMultiRegionAccessPointInput.add_member(:name, Shapes::ShapeRef.new(shape: MultiRegionAccessPointName, required: true, location_name: "Name"))
    CreateMultiRegionAccessPointInput.add_member(:public_access_block, Shapes::ShapeRef.new(shape: PublicAccessBlockConfiguration, location_name: "PublicAccessBlock"))
    CreateMultiRegionAccessPointInput.add_member(:regions, Shapes::ShapeRef.new(shape: RegionCreationList, required: true, location_name: "Regions"))
    CreateMultiRegionAccessPointInput.struct_class = Types::CreateMultiRegionAccessPointInput

    CreateMultiRegionAccessPointRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    CreateMultiRegionAccessPointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: MultiRegionAccessPointClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateMultiRegionAccessPointRequest.add_member(:details, Shapes::ShapeRef.new(shape: CreateMultiRegionAccessPointInput, required: true, location_name: "Details"))
    CreateMultiRegionAccessPointRequest.struct_class = Types::CreateMultiRegionAccessPointRequest

    CreateMultiRegionAccessPointResult.add_member(:request_token_arn, Shapes::ShapeRef.new(shape: AsyncRequestTokenARN, location_name: "RequestTokenARN"))
    CreateMultiRegionAccessPointResult.struct_class = Types::CreateMultiRegionAccessPointResult

    DeleteAccessPointForObjectLambdaRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    DeleteAccessPointForObjectLambdaRequest.add_member(:name, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, required: true, location: "uri", location_name: "name"))
    DeleteAccessPointForObjectLambdaRequest.struct_class = Types::DeleteAccessPointForObjectLambdaRequest

    DeleteAccessPointPolicyForObjectLambdaRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    DeleteAccessPointPolicyForObjectLambdaRequest.add_member(:name, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, required: true, location: "uri", location_name: "name"))
    DeleteAccessPointPolicyForObjectLambdaRequest.struct_class = Types::DeleteAccessPointPolicyForObjectLambdaRequest

    DeleteAccessPointPolicyRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    DeleteAccessPointPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"AccessPointName"}}))
    DeleteAccessPointPolicyRequest.struct_class = Types::DeleteAccessPointPolicyRequest

    DeleteAccessPointRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    DeleteAccessPointRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"AccessPointName"}}))
    DeleteAccessPointRequest.struct_class = Types::DeleteAccessPointRequest

    DeleteBucketLifecycleConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    DeleteBucketLifecycleConfigurationRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    DeleteBucketLifecycleConfigurationRequest.struct_class = Types::DeleteBucketLifecycleConfigurationRequest

    DeleteBucketPolicyRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    DeleteBucketPolicyRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    DeleteBucketPolicyRequest.struct_class = Types::DeleteBucketPolicyRequest

    DeleteBucketReplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    DeleteBucketReplicationRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    DeleteBucketReplicationRequest.struct_class = Types::DeleteBucketReplicationRequest

    DeleteBucketRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    DeleteBucketRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    DeleteBucketRequest.struct_class = Types::DeleteBucketRequest

    DeleteBucketTaggingRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    DeleteBucketTaggingRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    DeleteBucketTaggingRequest.struct_class = Types::DeleteBucketTaggingRequest

    DeleteJobTaggingRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    DeleteJobTaggingRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "id"))
    DeleteJobTaggingRequest.struct_class = Types::DeleteJobTaggingRequest

    DeleteJobTaggingResult.struct_class = Types::DeleteJobTaggingResult

    DeleteMarkerReplication.add_member(:status, Shapes::ShapeRef.new(shape: DeleteMarkerReplicationStatus, required: true, location_name: "Status"))
    DeleteMarkerReplication.struct_class = Types::DeleteMarkerReplication

    DeleteMultiRegionAccessPointInput.add_member(:name, Shapes::ShapeRef.new(shape: MultiRegionAccessPointName, required: true, location_name: "Name"))
    DeleteMultiRegionAccessPointInput.struct_class = Types::DeleteMultiRegionAccessPointInput

    DeleteMultiRegionAccessPointRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    DeleteMultiRegionAccessPointRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: MultiRegionAccessPointClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    DeleteMultiRegionAccessPointRequest.add_member(:details, Shapes::ShapeRef.new(shape: DeleteMultiRegionAccessPointInput, required: true, location_name: "Details"))
    DeleteMultiRegionAccessPointRequest.struct_class = Types::DeleteMultiRegionAccessPointRequest

    DeleteMultiRegionAccessPointResult.add_member(:request_token_arn, Shapes::ShapeRef.new(shape: AsyncRequestTokenARN, location_name: "RequestTokenARN"))
    DeleteMultiRegionAccessPointResult.struct_class = Types::DeleteMultiRegionAccessPointResult

    DeletePublicAccessBlockRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    DeletePublicAccessBlockRequest.struct_class = Types::DeletePublicAccessBlockRequest

    DeleteStorageLensConfigurationRequest.add_member(:config_id, Shapes::ShapeRef.new(shape: ConfigId, required: true, location: "uri", location_name: "storagelensid"))
    DeleteStorageLensConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    DeleteStorageLensConfigurationRequest.struct_class = Types::DeleteStorageLensConfigurationRequest

    DeleteStorageLensConfigurationTaggingRequest.add_member(:config_id, Shapes::ShapeRef.new(shape: ConfigId, required: true, location: "uri", location_name: "storagelensid"))
    DeleteStorageLensConfigurationTaggingRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    DeleteStorageLensConfigurationTaggingRequest.struct_class = Types::DeleteStorageLensConfigurationTaggingRequest

    DeleteStorageLensConfigurationTaggingResult.struct_class = Types::DeleteStorageLensConfigurationTaggingResult

    DescribeJobRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    DescribeJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "id"))
    DescribeJobRequest.struct_class = Types::DescribeJobRequest

    DescribeJobResult.add_member(:job, Shapes::ShapeRef.new(shape: JobDescriptor, location_name: "Job"))
    DescribeJobResult.struct_class = Types::DescribeJobResult

    DescribeMultiRegionAccessPointOperationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    DescribeMultiRegionAccessPointOperationRequest.add_member(:request_token_arn, Shapes::ShapeRef.new(shape: AsyncRequestTokenARN, required: true, location: "uri", location_name: "request_token"))
    DescribeMultiRegionAccessPointOperationRequest.struct_class = Types::DescribeMultiRegionAccessPointOperationRequest

    DescribeMultiRegionAccessPointOperationResult.add_member(:async_operation, Shapes::ShapeRef.new(shape: AsyncOperation, location_name: "AsyncOperation"))
    DescribeMultiRegionAccessPointOperationResult.struct_class = Types::DescribeMultiRegionAccessPointOperationResult

    Destination.add_member(:account, Shapes::ShapeRef.new(shape: AccountId, location_name: "Account"))
    Destination.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketIdentifierString, required: true, location_name: "Bucket"))
    Destination.add_member(:replication_time, Shapes::ShapeRef.new(shape: ReplicationTime, location_name: "ReplicationTime"))
    Destination.add_member(:access_control_translation, Shapes::ShapeRef.new(shape: AccessControlTranslation, location_name: "AccessControlTranslation"))
    Destination.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "EncryptionConfiguration"))
    Destination.add_member(:metrics, Shapes::ShapeRef.new(shape: Metrics, location_name: "Metrics"))
    Destination.add_member(:storage_class, Shapes::ShapeRef.new(shape: ReplicationStorageClass, location_name: "StorageClass"))
    Destination.struct_class = Types::Destination

    DetailedStatusCodesMetrics.add_member(:is_enabled, Shapes::ShapeRef.new(shape: IsEnabled, location_name: "IsEnabled"))
    DetailedStatusCodesMetrics.struct_class = Types::DetailedStatusCodesMetrics

    EncryptionConfiguration.add_member(:replica_kms_key_id, Shapes::ShapeRef.new(shape: ReplicaKmsKeyID, location_name: "ReplicaKmsKeyID", metadata: {"box"=>true}))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    Endpoints.key = Shapes::ShapeRef.new(shape: NonEmptyMaxLength64String)
    Endpoints.value = Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String)

    EstablishedMultiRegionAccessPointPolicy.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    EstablishedMultiRegionAccessPointPolicy.struct_class = Types::EstablishedMultiRegionAccessPointPolicy

    Exclude.add_member(:buckets, Shapes::ShapeRef.new(shape: Buckets, location_name: "Buckets"))
    Exclude.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, location_name: "Regions"))
    Exclude.struct_class = Types::Exclude

    ExistingObjectReplication.add_member(:status, Shapes::ShapeRef.new(shape: ExistingObjectReplicationStatus, required: true, location_name: "Status"))
    ExistingObjectReplication.struct_class = Types::ExistingObjectReplication

    GeneratedManifestEncryption.add_member(:sses3, Shapes::ShapeRef.new(shape: SSES3Encryption, location_name: "SSE-S3"))
    GeneratedManifestEncryption.add_member(:ssekms, Shapes::ShapeRef.new(shape: SSEKMSEncryption, location_name: "SSE-KMS"))
    GeneratedManifestEncryption.struct_class = Types::GeneratedManifestEncryption

    GetAccessPointConfigurationForObjectLambdaRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetAccessPointConfigurationForObjectLambdaRequest.add_member(:name, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, required: true, location: "uri", location_name: "name"))
    GetAccessPointConfigurationForObjectLambdaRequest.struct_class = Types::GetAccessPointConfigurationForObjectLambdaRequest

    GetAccessPointConfigurationForObjectLambdaResult.add_member(:configuration, Shapes::ShapeRef.new(shape: ObjectLambdaConfiguration, location_name: "Configuration"))
    GetAccessPointConfigurationForObjectLambdaResult.struct_class = Types::GetAccessPointConfigurationForObjectLambdaResult

    GetAccessPointForObjectLambdaRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetAccessPointForObjectLambdaRequest.add_member(:name, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, required: true, location: "uri", location_name: "name"))
    GetAccessPointForObjectLambdaRequest.struct_class = Types::GetAccessPointForObjectLambdaRequest

    GetAccessPointForObjectLambdaResult.add_member(:name, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, location_name: "Name"))
    GetAccessPointForObjectLambdaResult.add_member(:public_access_block_configuration, Shapes::ShapeRef.new(shape: PublicAccessBlockConfiguration, location_name: "PublicAccessBlockConfiguration"))
    GetAccessPointForObjectLambdaResult.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, location_name: "CreationDate"))
    GetAccessPointForObjectLambdaResult.add_member(:alias, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointAlias, location_name: "Alias"))
    GetAccessPointForObjectLambdaResult.struct_class = Types::GetAccessPointForObjectLambdaResult

    GetAccessPointPolicyForObjectLambdaRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetAccessPointPolicyForObjectLambdaRequest.add_member(:name, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, required: true, location: "uri", location_name: "name"))
    GetAccessPointPolicyForObjectLambdaRequest.struct_class = Types::GetAccessPointPolicyForObjectLambdaRequest

    GetAccessPointPolicyForObjectLambdaResult.add_member(:policy, Shapes::ShapeRef.new(shape: ObjectLambdaPolicy, location_name: "Policy"))
    GetAccessPointPolicyForObjectLambdaResult.struct_class = Types::GetAccessPointPolicyForObjectLambdaResult

    GetAccessPointPolicyRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetAccessPointPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"AccessPointName"}}))
    GetAccessPointPolicyRequest.struct_class = Types::GetAccessPointPolicyRequest

    GetAccessPointPolicyResult.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    GetAccessPointPolicyResult.struct_class = Types::GetAccessPointPolicyResult

    GetAccessPointPolicyStatusForObjectLambdaRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetAccessPointPolicyStatusForObjectLambdaRequest.add_member(:name, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, required: true, location: "uri", location_name: "name"))
    GetAccessPointPolicyStatusForObjectLambdaRequest.struct_class = Types::GetAccessPointPolicyStatusForObjectLambdaRequest

    GetAccessPointPolicyStatusForObjectLambdaResult.add_member(:policy_status, Shapes::ShapeRef.new(shape: PolicyStatus, location_name: "PolicyStatus"))
    GetAccessPointPolicyStatusForObjectLambdaResult.struct_class = Types::GetAccessPointPolicyStatusForObjectLambdaResult

    GetAccessPointPolicyStatusRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetAccessPointPolicyStatusRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"AccessPointName"}}))
    GetAccessPointPolicyStatusRequest.struct_class = Types::GetAccessPointPolicyStatusRequest

    GetAccessPointPolicyStatusResult.add_member(:policy_status, Shapes::ShapeRef.new(shape: PolicyStatus, location_name: "PolicyStatus"))
    GetAccessPointPolicyStatusResult.struct_class = Types::GetAccessPointPolicyStatusResult

    GetAccessPointRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetAccessPointRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"AccessPointName"}}))
    GetAccessPointRequest.struct_class = Types::GetAccessPointRequest

    GetAccessPointResult.add_member(:name, Shapes::ShapeRef.new(shape: AccessPointName, location_name: "Name"))
    GetAccessPointResult.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket"))
    GetAccessPointResult.add_member(:network_origin, Shapes::ShapeRef.new(shape: NetworkOrigin, location_name: "NetworkOrigin"))
    GetAccessPointResult.add_member(:vpc_configuration, Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: "VpcConfiguration"))
    GetAccessPointResult.add_member(:public_access_block_configuration, Shapes::ShapeRef.new(shape: PublicAccessBlockConfiguration, location_name: "PublicAccessBlockConfiguration"))
    GetAccessPointResult.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, location_name: "CreationDate"))
    GetAccessPointResult.add_member(:alias, Shapes::ShapeRef.new(shape: Alias, location_name: "Alias"))
    GetAccessPointResult.add_member(:access_point_arn, Shapes::ShapeRef.new(shape: S3AccessPointArn, location_name: "AccessPointArn"))
    GetAccessPointResult.add_member(:endpoints, Shapes::ShapeRef.new(shape: Endpoints, location_name: "Endpoints"))
    GetAccessPointResult.add_member(:bucket_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "BucketAccountId"))
    GetAccessPointResult.struct_class = Types::GetAccessPointResult

    GetBucketLifecycleConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetBucketLifecycleConfigurationRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    GetBucketLifecycleConfigurationRequest.struct_class = Types::GetBucketLifecycleConfigurationRequest

    GetBucketLifecycleConfigurationResult.add_member(:rules, Shapes::ShapeRef.new(shape: LifecycleRules, location_name: "Rules"))
    GetBucketLifecycleConfigurationResult.struct_class = Types::GetBucketLifecycleConfigurationResult

    GetBucketPolicyRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetBucketPolicyRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    GetBucketPolicyRequest.struct_class = Types::GetBucketPolicyRequest

    GetBucketPolicyResult.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    GetBucketPolicyResult.struct_class = Types::GetBucketPolicyResult

    GetBucketReplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetBucketReplicationRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    GetBucketReplicationRequest.struct_class = Types::GetBucketReplicationRequest

    GetBucketReplicationResult.add_member(:replication_configuration, Shapes::ShapeRef.new(shape: ReplicationConfiguration, location_name: "ReplicationConfiguration"))
    GetBucketReplicationResult.struct_class = Types::GetBucketReplicationResult

    GetBucketRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetBucketRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    GetBucketRequest.struct_class = Types::GetBucketRequest

    GetBucketResult.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket"))
    GetBucketResult.add_member(:public_access_block_enabled, Shapes::ShapeRef.new(shape: PublicAccessBlockEnabled, location_name: "PublicAccessBlockEnabled"))
    GetBucketResult.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, location_name: "CreationDate"))
    GetBucketResult.struct_class = Types::GetBucketResult

    GetBucketTaggingRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetBucketTaggingRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    GetBucketTaggingRequest.struct_class = Types::GetBucketTaggingRequest

    GetBucketTaggingResult.add_member(:tag_set, Shapes::ShapeRef.new(shape: S3TagSet, required: true, location_name: "TagSet"))
    GetBucketTaggingResult.struct_class = Types::GetBucketTaggingResult

    GetBucketVersioningRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetBucketVersioningRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    GetBucketVersioningRequest.struct_class = Types::GetBucketVersioningRequest

    GetBucketVersioningResult.add_member(:status, Shapes::ShapeRef.new(shape: BucketVersioningStatus, location_name: "Status"))
    GetBucketVersioningResult.add_member(:mfa_delete, Shapes::ShapeRef.new(shape: MFADeleteStatus, location_name: "MfaDelete"))
    GetBucketVersioningResult.struct_class = Types::GetBucketVersioningResult

    GetJobTaggingRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetJobTaggingRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "id"))
    GetJobTaggingRequest.struct_class = Types::GetJobTaggingRequest

    GetJobTaggingResult.add_member(:tags, Shapes::ShapeRef.new(shape: S3TagSet, location_name: "Tags"))
    GetJobTaggingResult.struct_class = Types::GetJobTaggingResult

    GetMultiRegionAccessPointPolicyRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetMultiRegionAccessPointPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: MultiRegionAccessPointName, required: true, location: "uri", location_name: "name"))
    GetMultiRegionAccessPointPolicyRequest.struct_class = Types::GetMultiRegionAccessPointPolicyRequest

    GetMultiRegionAccessPointPolicyResult.add_member(:policy, Shapes::ShapeRef.new(shape: MultiRegionAccessPointPolicyDocument, location_name: "Policy"))
    GetMultiRegionAccessPointPolicyResult.struct_class = Types::GetMultiRegionAccessPointPolicyResult

    GetMultiRegionAccessPointPolicyStatusRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetMultiRegionAccessPointPolicyStatusRequest.add_member(:name, Shapes::ShapeRef.new(shape: MultiRegionAccessPointName, required: true, location: "uri", location_name: "name"))
    GetMultiRegionAccessPointPolicyStatusRequest.struct_class = Types::GetMultiRegionAccessPointPolicyStatusRequest

    GetMultiRegionAccessPointPolicyStatusResult.add_member(:established, Shapes::ShapeRef.new(shape: PolicyStatus, location_name: "Established"))
    GetMultiRegionAccessPointPolicyStatusResult.struct_class = Types::GetMultiRegionAccessPointPolicyStatusResult

    GetMultiRegionAccessPointRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetMultiRegionAccessPointRequest.add_member(:name, Shapes::ShapeRef.new(shape: MultiRegionAccessPointName, required: true, location: "uri", location_name: "name"))
    GetMultiRegionAccessPointRequest.struct_class = Types::GetMultiRegionAccessPointRequest

    GetMultiRegionAccessPointResult.add_member(:access_point, Shapes::ShapeRef.new(shape: MultiRegionAccessPointReport, location_name: "AccessPoint"))
    GetMultiRegionAccessPointResult.struct_class = Types::GetMultiRegionAccessPointResult

    GetMultiRegionAccessPointRoutesRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetMultiRegionAccessPointRoutesRequest.add_member(:mrap, Shapes::ShapeRef.new(shape: MultiRegionAccessPointId, required: true, location: "uri", location_name: "mrap"))
    GetMultiRegionAccessPointRoutesRequest.struct_class = Types::GetMultiRegionAccessPointRoutesRequest

    GetMultiRegionAccessPointRoutesResult.add_member(:mrap, Shapes::ShapeRef.new(shape: MultiRegionAccessPointId, location_name: "Mrap"))
    GetMultiRegionAccessPointRoutesResult.add_member(:routes, Shapes::ShapeRef.new(shape: RouteList, location_name: "Routes"))
    GetMultiRegionAccessPointRoutesResult.struct_class = Types::GetMultiRegionAccessPointRoutesResult

    GetPublicAccessBlockOutput.add_member(:public_access_block_configuration, Shapes::ShapeRef.new(shape: PublicAccessBlockConfiguration, location_name: "PublicAccessBlockConfiguration"))
    GetPublicAccessBlockOutput.struct_class = Types::GetPublicAccessBlockOutput
    GetPublicAccessBlockOutput[:payload] = :public_access_block_configuration
    GetPublicAccessBlockOutput[:payload_member] = GetPublicAccessBlockOutput.member(:public_access_block_configuration)

    GetPublicAccessBlockRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetPublicAccessBlockRequest.struct_class = Types::GetPublicAccessBlockRequest

    GetStorageLensConfigurationRequest.add_member(:config_id, Shapes::ShapeRef.new(shape: ConfigId, required: true, location: "uri", location_name: "storagelensid"))
    GetStorageLensConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetStorageLensConfigurationRequest.struct_class = Types::GetStorageLensConfigurationRequest

    GetStorageLensConfigurationResult.add_member(:storage_lens_configuration, Shapes::ShapeRef.new(shape: StorageLensConfiguration, location_name: "StorageLensConfiguration"))
    GetStorageLensConfigurationResult.struct_class = Types::GetStorageLensConfigurationResult
    GetStorageLensConfigurationResult[:payload] = :storage_lens_configuration
    GetStorageLensConfigurationResult[:payload_member] = GetStorageLensConfigurationResult.member(:storage_lens_configuration)

    GetStorageLensConfigurationTaggingRequest.add_member(:config_id, Shapes::ShapeRef.new(shape: ConfigId, required: true, location: "uri", location_name: "storagelensid"))
    GetStorageLensConfigurationTaggingRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    GetStorageLensConfigurationTaggingRequest.struct_class = Types::GetStorageLensConfigurationTaggingRequest

    GetStorageLensConfigurationTaggingResult.add_member(:tags, Shapes::ShapeRef.new(shape: StorageLensTags, location_name: "Tags"))
    GetStorageLensConfigurationTaggingResult.struct_class = Types::GetStorageLensConfigurationTaggingResult

    IdempotencyException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    IdempotencyException.struct_class = Types::IdempotencyException

    Include.add_member(:buckets, Shapes::ShapeRef.new(shape: Buckets, location_name: "Buckets"))
    Include.add_member(:regions, Shapes::ShapeRef.new(shape: Regions, location_name: "Regions"))
    Include.struct_class = Types::Include

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    JobDescriptor.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    JobDescriptor.add_member(:confirmation_required, Shapes::ShapeRef.new(shape: ConfirmationRequired, location_name: "ConfirmationRequired", metadata: {"box"=>true}))
    JobDescriptor.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyMaxLength256String, location_name: "Description", metadata: {"box"=>true}))
    JobDescriptor.add_member(:job_arn, Shapes::ShapeRef.new(shape: JobArn, location_name: "JobArn", metadata: {"box"=>true}))
    JobDescriptor.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "Status"))
    JobDescriptor.add_member(:manifest, Shapes::ShapeRef.new(shape: JobManifest, location_name: "Manifest", metadata: {"box"=>true}))
    JobDescriptor.add_member(:operation, Shapes::ShapeRef.new(shape: JobOperation, location_name: "Operation", metadata: {"box"=>true}))
    JobDescriptor.add_member(:priority, Shapes::ShapeRef.new(shape: JobPriority, location_name: "Priority"))
    JobDescriptor.add_member(:progress_summary, Shapes::ShapeRef.new(shape: JobProgressSummary, location_name: "ProgressSummary", metadata: {"box"=>true}))
    JobDescriptor.add_member(:status_update_reason, Shapes::ShapeRef.new(shape: JobStatusUpdateReason, location_name: "StatusUpdateReason", metadata: {"box"=>true}))
    JobDescriptor.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: JobFailureList, location_name: "FailureReasons", metadata: {"box"=>true}))
    JobDescriptor.add_member(:report, Shapes::ShapeRef.new(shape: JobReport, location_name: "Report", metadata: {"box"=>true}))
    JobDescriptor.add_member(:creation_time, Shapes::ShapeRef.new(shape: JobCreationTime, location_name: "CreationTime"))
    JobDescriptor.add_member(:termination_date, Shapes::ShapeRef.new(shape: JobTerminationDate, location_name: "TerminationDate", metadata: {"box"=>true}))
    JobDescriptor.add_member(:role_arn, Shapes::ShapeRef.new(shape: IAMRoleArn, location_name: "RoleArn", metadata: {"box"=>true}))
    JobDescriptor.add_member(:suspended_date, Shapes::ShapeRef.new(shape: SuspendedDate, location_name: "SuspendedDate", metadata: {"box"=>true}))
    JobDescriptor.add_member(:suspended_cause, Shapes::ShapeRef.new(shape: SuspendedCause, location_name: "SuspendedCause", metadata: {"box"=>true}))
    JobDescriptor.add_member(:manifest_generator, Shapes::ShapeRef.new(shape: JobManifestGenerator, location_name: "ManifestGenerator"))
    JobDescriptor.add_member(:generated_manifest_descriptor, Shapes::ShapeRef.new(shape: S3GeneratedManifestDescriptor, location_name: "GeneratedManifestDescriptor"))
    JobDescriptor.struct_class = Types::JobDescriptor

    JobFailure.add_member(:failure_code, Shapes::ShapeRef.new(shape: JobFailureCode, location_name: "FailureCode"))
    JobFailure.add_member(:failure_reason, Shapes::ShapeRef.new(shape: JobFailureReason, location_name: "FailureReason"))
    JobFailure.struct_class = Types::JobFailure

    JobFailureList.member = Shapes::ShapeRef.new(shape: JobFailure)

    JobListDescriptor.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    JobListDescriptor.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyMaxLength256String, location_name: "Description"))
    JobListDescriptor.add_member(:operation, Shapes::ShapeRef.new(shape: OperationName, location_name: "Operation"))
    JobListDescriptor.add_member(:priority, Shapes::ShapeRef.new(shape: JobPriority, location_name: "Priority"))
    JobListDescriptor.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "Status"))
    JobListDescriptor.add_member(:creation_time, Shapes::ShapeRef.new(shape: JobCreationTime, location_name: "CreationTime"))
    JobListDescriptor.add_member(:termination_date, Shapes::ShapeRef.new(shape: JobTerminationDate, location_name: "TerminationDate"))
    JobListDescriptor.add_member(:progress_summary, Shapes::ShapeRef.new(shape: JobProgressSummary, location_name: "ProgressSummary"))
    JobListDescriptor.struct_class = Types::JobListDescriptor

    JobListDescriptorList.member = Shapes::ShapeRef.new(shape: JobListDescriptor)

    JobManifest.add_member(:spec, Shapes::ShapeRef.new(shape: JobManifestSpec, required: true, location_name: "Spec"))
    JobManifest.add_member(:location, Shapes::ShapeRef.new(shape: JobManifestLocation, required: true, location_name: "Location"))
    JobManifest.struct_class = Types::JobManifest

    JobManifestFieldList.member = Shapes::ShapeRef.new(shape: JobManifestFieldName)

    JobManifestGenerator.add_member(:s3_job_manifest_generator, Shapes::ShapeRef.new(shape: S3JobManifestGenerator, location_name: "S3JobManifestGenerator"))
    JobManifestGenerator.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    JobManifestGenerator.add_member_subclass(:s3_job_manifest_generator, Types::JobManifestGenerator::S3JobManifestGenerator)
    JobManifestGenerator.add_member_subclass(:unknown, Types::JobManifestGenerator::Unknown)
    JobManifestGenerator.struct_class = Types::JobManifestGenerator

    JobManifestGeneratorFilter.add_member(:eligible_for_replication, Shapes::ShapeRef.new(shape: Boolean, location_name: "EligibleForReplication", metadata: {"box"=>true}))
    JobManifestGeneratorFilter.add_member(:created_after, Shapes::ShapeRef.new(shape: ObjectCreationTime, location_name: "CreatedAfter"))
    JobManifestGeneratorFilter.add_member(:created_before, Shapes::ShapeRef.new(shape: ObjectCreationTime, location_name: "CreatedBefore"))
    JobManifestGeneratorFilter.add_member(:object_replication_statuses, Shapes::ShapeRef.new(shape: ReplicationStatusFilterList, location_name: "ObjectReplicationStatuses"))
    JobManifestGeneratorFilter.struct_class = Types::JobManifestGeneratorFilter

    JobManifestLocation.add_member(:object_arn, Shapes::ShapeRef.new(shape: S3KeyArnString, required: true, location_name: "ObjectArn"))
    JobManifestLocation.add_member(:object_version_id, Shapes::ShapeRef.new(shape: S3ObjectVersionId, location_name: "ObjectVersionId", metadata: {"box"=>true}))
    JobManifestLocation.add_member(:etag, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, required: true, location_name: "ETag"))
    JobManifestLocation.struct_class = Types::JobManifestLocation

    JobManifestSpec.add_member(:format, Shapes::ShapeRef.new(shape: JobManifestFormat, required: true, location_name: "Format"))
    JobManifestSpec.add_member(:fields, Shapes::ShapeRef.new(shape: JobManifestFieldList, location_name: "Fields", metadata: {"box"=>true}))
    JobManifestSpec.struct_class = Types::JobManifestSpec

    JobOperation.add_member(:lambda_invoke, Shapes::ShapeRef.new(shape: LambdaInvokeOperation, location_name: "LambdaInvoke", metadata: {"box"=>true}))
    JobOperation.add_member(:s3_put_object_copy, Shapes::ShapeRef.new(shape: S3CopyObjectOperation, location_name: "S3PutObjectCopy", metadata: {"box"=>true}))
    JobOperation.add_member(:s3_put_object_acl, Shapes::ShapeRef.new(shape: S3SetObjectAclOperation, location_name: "S3PutObjectAcl", metadata: {"box"=>true}))
    JobOperation.add_member(:s3_put_object_tagging, Shapes::ShapeRef.new(shape: S3SetObjectTaggingOperation, location_name: "S3PutObjectTagging", metadata: {"box"=>true}))
    JobOperation.add_member(:s3_delete_object_tagging, Shapes::ShapeRef.new(shape: S3DeleteObjectTaggingOperation, location_name: "S3DeleteObjectTagging", metadata: {"box"=>true}))
    JobOperation.add_member(:s3_initiate_restore_object, Shapes::ShapeRef.new(shape: S3InitiateRestoreObjectOperation, location_name: "S3InitiateRestoreObject", metadata: {"box"=>true}))
    JobOperation.add_member(:s3_put_object_legal_hold, Shapes::ShapeRef.new(shape: S3SetObjectLegalHoldOperation, location_name: "S3PutObjectLegalHold", metadata: {"box"=>true}))
    JobOperation.add_member(:s3_put_object_retention, Shapes::ShapeRef.new(shape: S3SetObjectRetentionOperation, location_name: "S3PutObjectRetention", metadata: {"box"=>true}))
    JobOperation.add_member(:s3_replicate_object, Shapes::ShapeRef.new(shape: S3ReplicateObjectOperation, location_name: "S3ReplicateObject", metadata: {"box"=>true}))
    JobOperation.struct_class = Types::JobOperation

    JobProgressSummary.add_member(:total_number_of_tasks, Shapes::ShapeRef.new(shape: JobTotalNumberOfTasks, location_name: "TotalNumberOfTasks", metadata: {"box"=>true}))
    JobProgressSummary.add_member(:number_of_tasks_succeeded, Shapes::ShapeRef.new(shape: JobNumberOfTasksSucceeded, location_name: "NumberOfTasksSucceeded", metadata: {"box"=>true}))
    JobProgressSummary.add_member(:number_of_tasks_failed, Shapes::ShapeRef.new(shape: JobNumberOfTasksFailed, location_name: "NumberOfTasksFailed", metadata: {"box"=>true}))
    JobProgressSummary.add_member(:timers, Shapes::ShapeRef.new(shape: JobTimers, location_name: "Timers"))
    JobProgressSummary.struct_class = Types::JobProgressSummary

    JobReport.add_member(:bucket, Shapes::ShapeRef.new(shape: S3BucketArnString, location_name: "Bucket", metadata: {"box"=>true}))
    JobReport.add_member(:format, Shapes::ShapeRef.new(shape: JobReportFormat, location_name: "Format", metadata: {"box"=>true}))
    JobReport.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    JobReport.add_member(:prefix, Shapes::ShapeRef.new(shape: ReportPrefixString, location_name: "Prefix", metadata: {"box"=>true}))
    JobReport.add_member(:report_scope, Shapes::ShapeRef.new(shape: JobReportScope, location_name: "ReportScope", metadata: {"box"=>true}))
    JobReport.struct_class = Types::JobReport

    JobStatusException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    JobStatusException.struct_class = Types::JobStatusException

    JobStatusList.member = Shapes::ShapeRef.new(shape: JobStatus)

    JobTimers.add_member(:elapsed_time_in_active_seconds, Shapes::ShapeRef.new(shape: JobTimeInStateSeconds, location_name: "ElapsedTimeInActiveSeconds", metadata: {"box"=>true}))
    JobTimers.struct_class = Types::JobTimers

    LambdaInvokeOperation.add_member(:function_arn, Shapes::ShapeRef.new(shape: FunctionArnString, location_name: "FunctionArn"))
    LambdaInvokeOperation.struct_class = Types::LambdaInvokeOperation

    LifecycleConfiguration.add_member(:rules, Shapes::ShapeRef.new(shape: LifecycleRules, location_name: "Rules"))
    LifecycleConfiguration.struct_class = Types::LifecycleConfiguration

    LifecycleExpiration.add_member(:date, Shapes::ShapeRef.new(shape: Date, location_name: "Date"))
    LifecycleExpiration.add_member(:days, Shapes::ShapeRef.new(shape: Days, location_name: "Days"))
    LifecycleExpiration.add_member(:expired_object_delete_marker, Shapes::ShapeRef.new(shape: ExpiredObjectDeleteMarker, location_name: "ExpiredObjectDeleteMarker"))
    LifecycleExpiration.struct_class = Types::LifecycleExpiration

    LifecycleRule.add_member(:expiration, Shapes::ShapeRef.new(shape: LifecycleExpiration, location_name: "Expiration"))
    LifecycleRule.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "ID"))
    LifecycleRule.add_member(:filter, Shapes::ShapeRef.new(shape: LifecycleRuleFilter, location_name: "Filter"))
    LifecycleRule.add_member(:status, Shapes::ShapeRef.new(shape: ExpirationStatus, required: true, location_name: "Status"))
    LifecycleRule.add_member(:transitions, Shapes::ShapeRef.new(shape: TransitionList, location_name: "Transitions"))
    LifecycleRule.add_member(:noncurrent_version_transitions, Shapes::ShapeRef.new(shape: NoncurrentVersionTransitionList, location_name: "NoncurrentVersionTransitions"))
    LifecycleRule.add_member(:noncurrent_version_expiration, Shapes::ShapeRef.new(shape: NoncurrentVersionExpiration, location_name: "NoncurrentVersionExpiration"))
    LifecycleRule.add_member(:abort_incomplete_multipart_upload, Shapes::ShapeRef.new(shape: AbortIncompleteMultipartUpload, location_name: "AbortIncompleteMultipartUpload"))
    LifecycleRule.struct_class = Types::LifecycleRule

    LifecycleRuleAndOperator.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    LifecycleRuleAndOperator.add_member(:tags, Shapes::ShapeRef.new(shape: S3TagSet, location_name: "Tags"))
    LifecycleRuleAndOperator.add_member(:object_size_greater_than, Shapes::ShapeRef.new(shape: ObjectSizeGreaterThanBytes, location_name: "ObjectSizeGreaterThan", metadata: {"box"=>true}))
    LifecycleRuleAndOperator.add_member(:object_size_less_than, Shapes::ShapeRef.new(shape: ObjectSizeLessThanBytes, location_name: "ObjectSizeLessThan", metadata: {"box"=>true}))
    LifecycleRuleAndOperator.struct_class = Types::LifecycleRuleAndOperator

    LifecycleRuleFilter.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    LifecycleRuleFilter.add_member(:tag, Shapes::ShapeRef.new(shape: S3Tag, location_name: "Tag"))
    LifecycleRuleFilter.add_member(:and, Shapes::ShapeRef.new(shape: LifecycleRuleAndOperator, location_name: "And"))
    LifecycleRuleFilter.add_member(:object_size_greater_than, Shapes::ShapeRef.new(shape: ObjectSizeGreaterThanBytes, location_name: "ObjectSizeGreaterThan", metadata: {"box"=>true}))
    LifecycleRuleFilter.add_member(:object_size_less_than, Shapes::ShapeRef.new(shape: ObjectSizeLessThanBytes, location_name: "ObjectSizeLessThan", metadata: {"box"=>true}))
    LifecycleRuleFilter.struct_class = Types::LifecycleRuleFilter

    LifecycleRules.member = Shapes::ShapeRef.new(shape: LifecycleRule, location_name: "Rule")

    ListAccessPointsForObjectLambdaRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    ListAccessPointsForObjectLambdaRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location: "querystring", location_name: "nextToken"))
    ListAccessPointsForObjectLambdaRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAccessPointsForObjectLambdaRequest.struct_class = Types::ListAccessPointsForObjectLambdaRequest

    ListAccessPointsForObjectLambdaResult.add_member(:object_lambda_access_point_list, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointList, location_name: "ObjectLambdaAccessPointList"))
    ListAccessPointsForObjectLambdaResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "NextToken"))
    ListAccessPointsForObjectLambdaResult.struct_class = Types::ListAccessPointsForObjectLambdaResult

    ListAccessPointsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    ListAccessPointsRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, location: "querystring", location_name: "bucket", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    ListAccessPointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location: "querystring", location_name: "nextToken"))
    ListAccessPointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAccessPointsRequest.struct_class = Types::ListAccessPointsRequest

    ListAccessPointsResult.add_member(:access_point_list, Shapes::ShapeRef.new(shape: AccessPointList, location_name: "AccessPointList"))
    ListAccessPointsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "NextToken"))
    ListAccessPointsResult.struct_class = Types::ListAccessPointsResult

    ListJobsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    ListJobsRequest.add_member(:job_statuses, Shapes::ShapeRef.new(shape: JobStatusList, location: "querystring", location_name: "jobStatuses"))
    ListJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: StringForNextToken, location: "querystring", location_name: "nextToken"))
    ListJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults", metadata: {"box"=>true}))
    ListJobsRequest.struct_class = Types::ListJobsRequest

    ListJobsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: StringForNextToken, location_name: "NextToken"))
    ListJobsResult.add_member(:jobs, Shapes::ShapeRef.new(shape: JobListDescriptorList, location_name: "Jobs"))
    ListJobsResult.struct_class = Types::ListJobsResult

    ListMultiRegionAccessPointsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    ListMultiRegionAccessPointsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location: "querystring", location_name: "nextToken"))
    ListMultiRegionAccessPointsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMultiRegionAccessPointsRequest.struct_class = Types::ListMultiRegionAccessPointsRequest

    ListMultiRegionAccessPointsResult.add_member(:access_points, Shapes::ShapeRef.new(shape: MultiRegionAccessPointReportList, location_name: "AccessPoints"))
    ListMultiRegionAccessPointsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "NextToken"))
    ListMultiRegionAccessPointsResult.struct_class = Types::ListMultiRegionAccessPointsResult

    ListRegionalBucketsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    ListRegionalBucketsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location: "querystring", location_name: "nextToken"))
    ListRegionalBucketsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListRegionalBucketsRequest.add_member(:outpost_id, Shapes::ShapeRef.new(shape: NonEmptyMaxLength64String, location: "header", location_name: "x-amz-outpost-id", metadata: {"contextParam"=>{"name"=>"OutpostId"}}))
    ListRegionalBucketsRequest.struct_class = Types::ListRegionalBucketsRequest

    ListRegionalBucketsResult.add_member(:regional_bucket_list, Shapes::ShapeRef.new(shape: RegionalBucketList, location_name: "RegionalBucketList"))
    ListRegionalBucketsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "NextToken"))
    ListRegionalBucketsResult.struct_class = Types::ListRegionalBucketsResult

    ListStorageLensConfigurationEntry.add_member(:id, Shapes::ShapeRef.new(shape: ConfigId, required: true, location_name: "Id"))
    ListStorageLensConfigurationEntry.add_member(:storage_lens_arn, Shapes::ShapeRef.new(shape: StorageLensArn, required: true, location_name: "StorageLensArn"))
    ListStorageLensConfigurationEntry.add_member(:home_region, Shapes::ShapeRef.new(shape: S3AWSRegion, required: true, location_name: "HomeRegion"))
    ListStorageLensConfigurationEntry.add_member(:is_enabled, Shapes::ShapeRef.new(shape: IsEnabled, location_name: "IsEnabled"))
    ListStorageLensConfigurationEntry.struct_class = Types::ListStorageLensConfigurationEntry

    ListStorageLensConfigurationsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    ListStorageLensConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ContinuationToken, location: "querystring", location_name: "nextToken"))
    ListStorageLensConfigurationsRequest.struct_class = Types::ListStorageLensConfigurationsRequest

    ListStorageLensConfigurationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: ContinuationToken, location_name: "NextToken"))
    ListStorageLensConfigurationsResult.add_member(:storage_lens_configuration_list, Shapes::ShapeRef.new(shape: StorageLensConfigurationList, location_name: "StorageLensConfigurationList"))
    ListStorageLensConfigurationsResult.struct_class = Types::ListStorageLensConfigurationsResult

    Metrics.add_member(:status, Shapes::ShapeRef.new(shape: MetricsStatus, required: true, location_name: "Status"))
    Metrics.add_member(:event_threshold, Shapes::ShapeRef.new(shape: ReplicationTimeValue, location_name: "EventThreshold"))
    Metrics.struct_class = Types::Metrics

    MultiRegionAccessPointPolicyDocument.add_member(:established, Shapes::ShapeRef.new(shape: EstablishedMultiRegionAccessPointPolicy, location_name: "Established"))
    MultiRegionAccessPointPolicyDocument.add_member(:proposed, Shapes::ShapeRef.new(shape: ProposedMultiRegionAccessPointPolicy, location_name: "Proposed"))
    MultiRegionAccessPointPolicyDocument.struct_class = Types::MultiRegionAccessPointPolicyDocument

    MultiRegionAccessPointRegionalResponse.add_member(:name, Shapes::ShapeRef.new(shape: RegionName, location_name: "Name"))
    MultiRegionAccessPointRegionalResponse.add_member(:request_status, Shapes::ShapeRef.new(shape: AsyncRequestStatus, location_name: "RequestStatus"))
    MultiRegionAccessPointRegionalResponse.struct_class = Types::MultiRegionAccessPointRegionalResponse

    MultiRegionAccessPointRegionalResponseList.member = Shapes::ShapeRef.new(shape: MultiRegionAccessPointRegionalResponse, location_name: "Region")

    MultiRegionAccessPointReport.add_member(:name, Shapes::ShapeRef.new(shape: MultiRegionAccessPointName, location_name: "Name"))
    MultiRegionAccessPointReport.add_member(:alias, Shapes::ShapeRef.new(shape: MultiRegionAccessPointAlias, location_name: "Alias"))
    MultiRegionAccessPointReport.add_member(:created_at, Shapes::ShapeRef.new(shape: CreationTimestamp, location_name: "CreatedAt"))
    MultiRegionAccessPointReport.add_member(:public_access_block, Shapes::ShapeRef.new(shape: PublicAccessBlockConfiguration, location_name: "PublicAccessBlock"))
    MultiRegionAccessPointReport.add_member(:status, Shapes::ShapeRef.new(shape: MultiRegionAccessPointStatus, location_name: "Status"))
    MultiRegionAccessPointReport.add_member(:regions, Shapes::ShapeRef.new(shape: RegionReportList, location_name: "Regions"))
    MultiRegionAccessPointReport.struct_class = Types::MultiRegionAccessPointReport

    MultiRegionAccessPointReportList.member = Shapes::ShapeRef.new(shape: MultiRegionAccessPointReport, location_name: "AccessPoint")

    MultiRegionAccessPointRoute.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket"))
    MultiRegionAccessPointRoute.add_member(:region, Shapes::ShapeRef.new(shape: RegionName, location_name: "Region"))
    MultiRegionAccessPointRoute.add_member(:traffic_dial_percentage, Shapes::ShapeRef.new(shape: TrafficDialPercentage, required: true, location_name: "TrafficDialPercentage"))
    MultiRegionAccessPointRoute.struct_class = Types::MultiRegionAccessPointRoute

    MultiRegionAccessPointsAsyncResponse.add_member(:regions, Shapes::ShapeRef.new(shape: MultiRegionAccessPointRegionalResponseList, location_name: "Regions"))
    MultiRegionAccessPointsAsyncResponse.struct_class = Types::MultiRegionAccessPointsAsyncResponse

    NoSuchPublicAccessBlockConfiguration.add_member(:message, Shapes::ShapeRef.new(shape: NoSuchPublicAccessBlockConfigurationMessage, location_name: "Message"))
    NoSuchPublicAccessBlockConfiguration.struct_class = Types::NoSuchPublicAccessBlockConfiguration

    NoncurrentVersionExpiration.add_member(:noncurrent_days, Shapes::ShapeRef.new(shape: Days, location_name: "NoncurrentDays"))
    NoncurrentVersionExpiration.add_member(:newer_noncurrent_versions, Shapes::ShapeRef.new(shape: NoncurrentVersionCount, location_name: "NewerNoncurrentVersions", metadata: {"box"=>true}))
    NoncurrentVersionExpiration.struct_class = Types::NoncurrentVersionExpiration

    NoncurrentVersionTransition.add_member(:noncurrent_days, Shapes::ShapeRef.new(shape: Days, location_name: "NoncurrentDays"))
    NoncurrentVersionTransition.add_member(:storage_class, Shapes::ShapeRef.new(shape: TransitionStorageClass, location_name: "StorageClass"))
    NoncurrentVersionTransition.struct_class = Types::NoncurrentVersionTransition

    NoncurrentVersionTransitionList.member = Shapes::ShapeRef.new(shape: NoncurrentVersionTransition, location_name: "NoncurrentVersionTransition")

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    ObjectLambdaAccessPoint.add_member(:name, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, required: true, location_name: "Name"))
    ObjectLambdaAccessPoint.add_member(:object_lambda_access_point_arn, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointArn, location_name: "ObjectLambdaAccessPointArn"))
    ObjectLambdaAccessPoint.add_member(:alias, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointAlias, location_name: "Alias"))
    ObjectLambdaAccessPoint.struct_class = Types::ObjectLambdaAccessPoint

    ObjectLambdaAccessPointAlias.add_member(:value, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointAliasValue, location_name: "Value"))
    ObjectLambdaAccessPointAlias.add_member(:status, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointAliasStatus, location_name: "Status"))
    ObjectLambdaAccessPointAlias.struct_class = Types::ObjectLambdaAccessPointAlias

    ObjectLambdaAccessPointList.member = Shapes::ShapeRef.new(shape: ObjectLambdaAccessPoint, location_name: "ObjectLambdaAccessPoint")

    ObjectLambdaAllowedFeaturesList.member = Shapes::ShapeRef.new(shape: ObjectLambdaAllowedFeature, location_name: "AllowedFeature")

    ObjectLambdaConfiguration.add_member(:supporting_access_point, Shapes::ShapeRef.new(shape: ObjectLambdaSupportingAccessPointArn, required: true, location_name: "SupportingAccessPoint"))
    ObjectLambdaConfiguration.add_member(:cloud_watch_metrics_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "CloudWatchMetricsEnabled"))
    ObjectLambdaConfiguration.add_member(:allowed_features, Shapes::ShapeRef.new(shape: ObjectLambdaAllowedFeaturesList, location_name: "AllowedFeatures"))
    ObjectLambdaConfiguration.add_member(:transformation_configurations, Shapes::ShapeRef.new(shape: ObjectLambdaTransformationConfigurationsList, required: true, location_name: "TransformationConfigurations"))
    ObjectLambdaConfiguration.struct_class = Types::ObjectLambdaConfiguration

    ObjectLambdaContentTransformation.add_member(:aws_lambda, Shapes::ShapeRef.new(shape: AwsLambdaTransformation, location_name: "AwsLambda"))
    ObjectLambdaContentTransformation.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ObjectLambdaContentTransformation.add_member_subclass(:aws_lambda, Types::ObjectLambdaContentTransformation::AwsLambda)
    ObjectLambdaContentTransformation.add_member_subclass(:unknown, Types::ObjectLambdaContentTransformation::Unknown)
    ObjectLambdaContentTransformation.struct_class = Types::ObjectLambdaContentTransformation

    ObjectLambdaTransformationConfiguration.add_member(:actions, Shapes::ShapeRef.new(shape: ObjectLambdaTransformationConfigurationActionsList, required: true, location_name: "Actions"))
    ObjectLambdaTransformationConfiguration.add_member(:content_transformation, Shapes::ShapeRef.new(shape: ObjectLambdaContentTransformation, required: true, location_name: "ContentTransformation"))
    ObjectLambdaTransformationConfiguration.struct_class = Types::ObjectLambdaTransformationConfiguration

    ObjectLambdaTransformationConfigurationActionsList.member = Shapes::ShapeRef.new(shape: ObjectLambdaTransformationConfigurationAction, location_name: "Action")

    ObjectLambdaTransformationConfigurationsList.member = Shapes::ShapeRef.new(shape: ObjectLambdaTransformationConfiguration, location_name: "TransformationConfiguration")

    PolicyStatus.add_member(:is_public, Shapes::ShapeRef.new(shape: IsPublic, location_name: "IsPublic"))
    PolicyStatus.struct_class = Types::PolicyStatus

    PrefixLevel.add_member(:storage_metrics, Shapes::ShapeRef.new(shape: PrefixLevelStorageMetrics, required: true, location_name: "StorageMetrics"))
    PrefixLevel.struct_class = Types::PrefixLevel

    PrefixLevelStorageMetrics.add_member(:is_enabled, Shapes::ShapeRef.new(shape: IsEnabled, location_name: "IsEnabled"))
    PrefixLevelStorageMetrics.add_member(:selection_criteria, Shapes::ShapeRef.new(shape: SelectionCriteria, location_name: "SelectionCriteria"))
    PrefixLevelStorageMetrics.struct_class = Types::PrefixLevelStorageMetrics

    ProposedMultiRegionAccessPointPolicy.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    ProposedMultiRegionAccessPointPolicy.struct_class = Types::ProposedMultiRegionAccessPointPolicy

    PublicAccessBlockConfiguration.add_member(:block_public_acls, Shapes::ShapeRef.new(shape: Setting, location_name: "BlockPublicAcls"))
    PublicAccessBlockConfiguration.add_member(:ignore_public_acls, Shapes::ShapeRef.new(shape: Setting, location_name: "IgnorePublicAcls"))
    PublicAccessBlockConfiguration.add_member(:block_public_policy, Shapes::ShapeRef.new(shape: Setting, location_name: "BlockPublicPolicy"))
    PublicAccessBlockConfiguration.add_member(:restrict_public_buckets, Shapes::ShapeRef.new(shape: Setting, location_name: "RestrictPublicBuckets"))
    PublicAccessBlockConfiguration.struct_class = Types::PublicAccessBlockConfiguration

    PutAccessPointConfigurationForObjectLambdaRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    PutAccessPointConfigurationForObjectLambdaRequest.add_member(:name, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, required: true, location: "uri", location_name: "name"))
    PutAccessPointConfigurationForObjectLambdaRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ObjectLambdaConfiguration, required: true, location_name: "Configuration"))
    PutAccessPointConfigurationForObjectLambdaRequest.struct_class = Types::PutAccessPointConfigurationForObjectLambdaRequest

    PutAccessPointPolicyForObjectLambdaRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    PutAccessPointPolicyForObjectLambdaRequest.add_member(:name, Shapes::ShapeRef.new(shape: ObjectLambdaAccessPointName, required: true, location: "uri", location_name: "name"))
    PutAccessPointPolicyForObjectLambdaRequest.add_member(:policy, Shapes::ShapeRef.new(shape: ObjectLambdaPolicy, required: true, location_name: "Policy"))
    PutAccessPointPolicyForObjectLambdaRequest.struct_class = Types::PutAccessPointPolicyForObjectLambdaRequest

    PutAccessPointPolicyRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    PutAccessPointPolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccessPointName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"AccessPointName"}}))
    PutAccessPointPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "Policy"))
    PutAccessPointPolicyRequest.struct_class = Types::PutAccessPointPolicyRequest

    PutBucketLifecycleConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    PutBucketLifecycleConfigurationRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    PutBucketLifecycleConfigurationRequest.add_member(:lifecycle_configuration, Shapes::ShapeRef.new(shape: LifecycleConfiguration, location_name: "LifecycleConfiguration", metadata: {"xmlNamespace"=>{"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}}))
    PutBucketLifecycleConfigurationRequest.struct_class = Types::PutBucketLifecycleConfigurationRequest
    PutBucketLifecycleConfigurationRequest[:payload] = :lifecycle_configuration
    PutBucketLifecycleConfigurationRequest[:payload_member] = PutBucketLifecycleConfigurationRequest.member(:lifecycle_configuration)

    PutBucketPolicyRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    PutBucketPolicyRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    PutBucketPolicyRequest.add_member(:confirm_remove_self_bucket_access, Shapes::ShapeRef.new(shape: ConfirmRemoveSelfBucketAccess, location: "header", location_name: "x-amz-confirm-remove-self-bucket-access"))
    PutBucketPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "Policy"))
    PutBucketPolicyRequest.struct_class = Types::PutBucketPolicyRequest

    PutBucketReplicationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    PutBucketReplicationRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    PutBucketReplicationRequest.add_member(:replication_configuration, Shapes::ShapeRef.new(shape: ReplicationConfiguration, required: true, location_name: "ReplicationConfiguration", metadata: {"xmlNamespace"=>{"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}}))
    PutBucketReplicationRequest.struct_class = Types::PutBucketReplicationRequest
    PutBucketReplicationRequest[:payload] = :replication_configuration
    PutBucketReplicationRequest[:payload_member] = PutBucketReplicationRequest.member(:replication_configuration)

    PutBucketTaggingRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    PutBucketTaggingRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    PutBucketTaggingRequest.add_member(:tagging, Shapes::ShapeRef.new(shape: Tagging, required: true, location_name: "Tagging", metadata: {"xmlNamespace"=>{"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}}))
    PutBucketTaggingRequest.struct_class = Types::PutBucketTaggingRequest
    PutBucketTaggingRequest[:payload] = :tagging
    PutBucketTaggingRequest[:payload_member] = PutBucketTaggingRequest.member(:tagging)

    PutBucketVersioningRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    PutBucketVersioningRequest.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location: "uri", location_name: "name", metadata: {"contextParam"=>{"name"=>"Bucket"}}))
    PutBucketVersioningRequest.add_member(:mfa, Shapes::ShapeRef.new(shape: MFA, location: "header", location_name: "x-amz-mfa"))
    PutBucketVersioningRequest.add_member(:versioning_configuration, Shapes::ShapeRef.new(shape: VersioningConfiguration, required: true, location_name: "VersioningConfiguration", metadata: {"xmlNamespace"=>{"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}}))
    PutBucketVersioningRequest.struct_class = Types::PutBucketVersioningRequest
    PutBucketVersioningRequest[:payload] = :versioning_configuration
    PutBucketVersioningRequest[:payload_member] = PutBucketVersioningRequest.member(:versioning_configuration)

    PutJobTaggingRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    PutJobTaggingRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "id"))
    PutJobTaggingRequest.add_member(:tags, Shapes::ShapeRef.new(shape: S3TagSet, required: true, location_name: "Tags"))
    PutJobTaggingRequest.struct_class = Types::PutJobTaggingRequest

    PutJobTaggingResult.struct_class = Types::PutJobTaggingResult

    PutMultiRegionAccessPointPolicyInput.add_member(:name, Shapes::ShapeRef.new(shape: MultiRegionAccessPointName, required: true, location_name: "Name"))
    PutMultiRegionAccessPointPolicyInput.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "Policy"))
    PutMultiRegionAccessPointPolicyInput.struct_class = Types::PutMultiRegionAccessPointPolicyInput

    PutMultiRegionAccessPointPolicyRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    PutMultiRegionAccessPointPolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: MultiRegionAccessPointClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    PutMultiRegionAccessPointPolicyRequest.add_member(:details, Shapes::ShapeRef.new(shape: PutMultiRegionAccessPointPolicyInput, required: true, location_name: "Details"))
    PutMultiRegionAccessPointPolicyRequest.struct_class = Types::PutMultiRegionAccessPointPolicyRequest

    PutMultiRegionAccessPointPolicyResult.add_member(:request_token_arn, Shapes::ShapeRef.new(shape: AsyncRequestTokenARN, location_name: "RequestTokenARN"))
    PutMultiRegionAccessPointPolicyResult.struct_class = Types::PutMultiRegionAccessPointPolicyResult

    PutPublicAccessBlockRequest.add_member(:public_access_block_configuration, Shapes::ShapeRef.new(shape: PublicAccessBlockConfiguration, required: true, location_name: "PublicAccessBlockConfiguration", metadata: {"xmlNamespace"=>{"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}}))
    PutPublicAccessBlockRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    PutPublicAccessBlockRequest.struct_class = Types::PutPublicAccessBlockRequest
    PutPublicAccessBlockRequest[:payload] = :public_access_block_configuration
    PutPublicAccessBlockRequest[:payload_member] = PutPublicAccessBlockRequest.member(:public_access_block_configuration)

    PutStorageLensConfigurationRequest.add_member(:config_id, Shapes::ShapeRef.new(shape: ConfigId, required: true, location: "uri", location_name: "storagelensid"))
    PutStorageLensConfigurationRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    PutStorageLensConfigurationRequest.add_member(:storage_lens_configuration, Shapes::ShapeRef.new(shape: StorageLensConfiguration, required: true, location_name: "StorageLensConfiguration"))
    PutStorageLensConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: StorageLensTags, location_name: "Tags"))
    PutStorageLensConfigurationRequest.struct_class = Types::PutStorageLensConfigurationRequest

    PutStorageLensConfigurationTaggingRequest.add_member(:config_id, Shapes::ShapeRef.new(shape: ConfigId, required: true, location: "uri", location_name: "storagelensid"))
    PutStorageLensConfigurationTaggingRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    PutStorageLensConfigurationTaggingRequest.add_member(:tags, Shapes::ShapeRef.new(shape: StorageLensTags, required: true, location_name: "Tags"))
    PutStorageLensConfigurationTaggingRequest.struct_class = Types::PutStorageLensConfigurationTaggingRequest

    PutStorageLensConfigurationTaggingResult.struct_class = Types::PutStorageLensConfigurationTaggingResult

    Region.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "Bucket"))
    Region.add_member(:bucket_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "BucketAccountId"))
    Region.struct_class = Types::Region

    RegionCreationList.member = Shapes::ShapeRef.new(shape: Region, location_name: "Region")

    RegionReport.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, location_name: "Bucket"))
    RegionReport.add_member(:region, Shapes::ShapeRef.new(shape: RegionName, location_name: "Region"))
    RegionReport.add_member(:bucket_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "BucketAccountId"))
    RegionReport.struct_class = Types::RegionReport

    RegionReportList.member = Shapes::ShapeRef.new(shape: RegionReport, location_name: "Region")

    RegionalBucket.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "Bucket"))
    RegionalBucket.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: S3RegionalBucketArn, location_name: "BucketArn"))
    RegionalBucket.add_member(:public_access_block_enabled, Shapes::ShapeRef.new(shape: PublicAccessBlockEnabled, required: true, location_name: "PublicAccessBlockEnabled"))
    RegionalBucket.add_member(:creation_date, Shapes::ShapeRef.new(shape: CreationDate, required: true, location_name: "CreationDate"))
    RegionalBucket.add_member(:outpost_id, Shapes::ShapeRef.new(shape: NonEmptyMaxLength64String, location_name: "OutpostId"))
    RegionalBucket.struct_class = Types::RegionalBucket

    RegionalBucketList.member = Shapes::ShapeRef.new(shape: RegionalBucket, location_name: "RegionalBucket")

    Regions.member = Shapes::ShapeRef.new(shape: S3AWSRegion, location_name: "Region")

    ReplicaModifications.add_member(:status, Shapes::ShapeRef.new(shape: ReplicaModificationsStatus, required: true, location_name: "Status"))
    ReplicaModifications.struct_class = Types::ReplicaModifications

    ReplicationConfiguration.add_member(:role, Shapes::ShapeRef.new(shape: Role, required: true, location_name: "Role"))
    ReplicationConfiguration.add_member(:rules, Shapes::ShapeRef.new(shape: ReplicationRules, required: true, location_name: "Rules"))
    ReplicationConfiguration.struct_class = Types::ReplicationConfiguration

    ReplicationRule.add_member(:id, Shapes::ShapeRef.new(shape: ID, location_name: "ID"))
    ReplicationRule.add_member(:priority, Shapes::ShapeRef.new(shape: Priority, location_name: "Priority", metadata: {"box"=>true}))
    ReplicationRule.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, deprecated: true, location_name: "Prefix", metadata: {"deprecatedMessage"=>"Prefix has been deprecated"}))
    ReplicationRule.add_member(:filter, Shapes::ShapeRef.new(shape: ReplicationRuleFilter, location_name: "Filter"))
    ReplicationRule.add_member(:status, Shapes::ShapeRef.new(shape: ReplicationRuleStatus, required: true, location_name: "Status"))
    ReplicationRule.add_member(:source_selection_criteria, Shapes::ShapeRef.new(shape: SourceSelectionCriteria, location_name: "SourceSelectionCriteria"))
    ReplicationRule.add_member(:existing_object_replication, Shapes::ShapeRef.new(shape: ExistingObjectReplication, location_name: "ExistingObjectReplication"))
    ReplicationRule.add_member(:destination, Shapes::ShapeRef.new(shape: Destination, required: true, location_name: "Destination"))
    ReplicationRule.add_member(:delete_marker_replication, Shapes::ShapeRef.new(shape: DeleteMarkerReplication, location_name: "DeleteMarkerReplication"))
    ReplicationRule.add_member(:bucket, Shapes::ShapeRef.new(shape: BucketIdentifierString, required: true, location_name: "Bucket"))
    ReplicationRule.struct_class = Types::ReplicationRule

    ReplicationRuleAndOperator.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    ReplicationRuleAndOperator.add_member(:tags, Shapes::ShapeRef.new(shape: S3TagSet, location_name: "Tags"))
    ReplicationRuleAndOperator.struct_class = Types::ReplicationRuleAndOperator

    ReplicationRuleFilter.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    ReplicationRuleFilter.add_member(:tag, Shapes::ShapeRef.new(shape: S3Tag, location_name: "Tag"))
    ReplicationRuleFilter.add_member(:and, Shapes::ShapeRef.new(shape: ReplicationRuleAndOperator, location_name: "And"))
    ReplicationRuleFilter.struct_class = Types::ReplicationRuleFilter

    ReplicationRules.member = Shapes::ShapeRef.new(shape: ReplicationRule, location_name: "Rule")

    ReplicationStatusFilterList.member = Shapes::ShapeRef.new(shape: ReplicationStatus)

    ReplicationTime.add_member(:status, Shapes::ShapeRef.new(shape: ReplicationTimeStatus, required: true, location_name: "Status"))
    ReplicationTime.add_member(:time, Shapes::ShapeRef.new(shape: ReplicationTimeValue, required: true, location_name: "Time"))
    ReplicationTime.struct_class = Types::ReplicationTime

    ReplicationTimeValue.add_member(:minutes, Shapes::ShapeRef.new(shape: Minutes, location_name: "Minutes", metadata: {"box"=>true}))
    ReplicationTimeValue.struct_class = Types::ReplicationTimeValue

    RouteList.member = Shapes::ShapeRef.new(shape: MultiRegionAccessPointRoute, location_name: "Route")

    S3AccessControlList.add_member(:owner, Shapes::ShapeRef.new(shape: S3ObjectOwner, required: true, location_name: "Owner"))
    S3AccessControlList.add_member(:grants, Shapes::ShapeRef.new(shape: S3GrantList, location_name: "Grants"))
    S3AccessControlList.struct_class = Types::S3AccessControlList

    S3AccessControlPolicy.add_member(:access_control_list, Shapes::ShapeRef.new(shape: S3AccessControlList, location_name: "AccessControlList", metadata: {"box"=>true}))
    S3AccessControlPolicy.add_member(:canned_access_control_list, Shapes::ShapeRef.new(shape: S3CannedAccessControlList, location_name: "CannedAccessControlList", metadata: {"box"=>true}))
    S3AccessControlPolicy.struct_class = Types::S3AccessControlPolicy

    S3BucketDestination.add_member(:format, Shapes::ShapeRef.new(shape: Format, required: true, location_name: "Format"))
    S3BucketDestination.add_member(:output_schema_version, Shapes::ShapeRef.new(shape: OutputSchemaVersion, required: true, location_name: "OutputSchemaVersion"))
    S3BucketDestination.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location_name: "AccountId"))
    S3BucketDestination.add_member(:arn, Shapes::ShapeRef.new(shape: S3BucketArnString, required: true, location_name: "Arn"))
    S3BucketDestination.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    S3BucketDestination.add_member(:encryption, Shapes::ShapeRef.new(shape: StorageLensDataExportEncryption, location_name: "Encryption"))
    S3BucketDestination.struct_class = Types::S3BucketDestination

    S3CopyObjectOperation.add_member(:target_resource, Shapes::ShapeRef.new(shape: S3BucketArnString, location_name: "TargetResource"))
    S3CopyObjectOperation.add_member(:canned_access_control_list, Shapes::ShapeRef.new(shape: S3CannedAccessControlList, location_name: "CannedAccessControlList", metadata: {"box"=>true}))
    S3CopyObjectOperation.add_member(:access_control_grants, Shapes::ShapeRef.new(shape: S3GrantList, location_name: "AccessControlGrants", metadata: {"box"=>true}))
    S3CopyObjectOperation.add_member(:metadata_directive, Shapes::ShapeRef.new(shape: S3MetadataDirective, location_name: "MetadataDirective"))
    S3CopyObjectOperation.add_member(:modified_since_constraint, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "ModifiedSinceConstraint"))
    S3CopyObjectOperation.add_member(:new_object_metadata, Shapes::ShapeRef.new(shape: S3ObjectMetadata, location_name: "NewObjectMetadata"))
    S3CopyObjectOperation.add_member(:new_object_tagging, Shapes::ShapeRef.new(shape: S3TagSet, location_name: "NewObjectTagging"))
    S3CopyObjectOperation.add_member(:redirect_location, Shapes::ShapeRef.new(shape: NonEmptyMaxLength2048String, location_name: "RedirectLocation"))
    S3CopyObjectOperation.add_member(:requester_pays, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequesterPays"))
    S3CopyObjectOperation.add_member(:storage_class, Shapes::ShapeRef.new(shape: S3StorageClass, location_name: "StorageClass"))
    S3CopyObjectOperation.add_member(:un_modified_since_constraint, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "UnModifiedSinceConstraint"))
    S3CopyObjectOperation.add_member(:sse_aws_kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyArnString, location_name: "SSEAwsKmsKeyId"))
    S3CopyObjectOperation.add_member(:target_key_prefix, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "TargetKeyPrefix"))
    S3CopyObjectOperation.add_member(:object_lock_legal_hold_status, Shapes::ShapeRef.new(shape: S3ObjectLockLegalHoldStatus, location_name: "ObjectLockLegalHoldStatus"))
    S3CopyObjectOperation.add_member(:object_lock_mode, Shapes::ShapeRef.new(shape: S3ObjectLockMode, location_name: "ObjectLockMode"))
    S3CopyObjectOperation.add_member(:object_lock_retain_until_date, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "ObjectLockRetainUntilDate"))
    S3CopyObjectOperation.add_member(:bucket_key_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "BucketKeyEnabled"))
    S3CopyObjectOperation.add_member(:checksum_algorithm, Shapes::ShapeRef.new(shape: S3ChecksumAlgorithm, location_name: "ChecksumAlgorithm"))
    S3CopyObjectOperation.struct_class = Types::S3CopyObjectOperation

    S3DeleteObjectTaggingOperation.struct_class = Types::S3DeleteObjectTaggingOperation

    S3GeneratedManifestDescriptor.add_member(:format, Shapes::ShapeRef.new(shape: GeneratedManifestFormat, location_name: "Format"))
    S3GeneratedManifestDescriptor.add_member(:location, Shapes::ShapeRef.new(shape: JobManifestLocation, location_name: "Location"))
    S3GeneratedManifestDescriptor.struct_class = Types::S3GeneratedManifestDescriptor

    S3Grant.add_member(:grantee, Shapes::ShapeRef.new(shape: S3Grantee, location_name: "Grantee"))
    S3Grant.add_member(:permission, Shapes::ShapeRef.new(shape: S3Permission, location_name: "Permission"))
    S3Grant.struct_class = Types::S3Grant

    S3GrantList.member = Shapes::ShapeRef.new(shape: S3Grant)

    S3Grantee.add_member(:type_identifier, Shapes::ShapeRef.new(shape: S3GranteeTypeIdentifier, location_name: "TypeIdentifier"))
    S3Grantee.add_member(:identifier, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "Identifier", metadata: {"box"=>true}))
    S3Grantee.add_member(:display_name, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "DisplayName"))
    S3Grantee.struct_class = Types::S3Grantee

    S3InitiateRestoreObjectOperation.add_member(:expiration_in_days, Shapes::ShapeRef.new(shape: S3ExpirationInDays, location_name: "ExpirationInDays", metadata: {"box"=>true}))
    S3InitiateRestoreObjectOperation.add_member(:glacier_job_tier, Shapes::ShapeRef.new(shape: S3GlacierJobTier, location_name: "GlacierJobTier"))
    S3InitiateRestoreObjectOperation.struct_class = Types::S3InitiateRestoreObjectOperation

    S3JobManifestGenerator.add_member(:expected_bucket_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "ExpectedBucketOwner"))
    S3JobManifestGenerator.add_member(:source_bucket, Shapes::ShapeRef.new(shape: S3BucketArnString, required: true, location_name: "SourceBucket"))
    S3JobManifestGenerator.add_member(:manifest_output_location, Shapes::ShapeRef.new(shape: S3ManifestOutputLocation, location_name: "ManifestOutputLocation"))
    S3JobManifestGenerator.add_member(:filter, Shapes::ShapeRef.new(shape: JobManifestGeneratorFilter, location_name: "Filter"))
    S3JobManifestGenerator.add_member(:enable_manifest_output, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "EnableManifestOutput"))
    S3JobManifestGenerator.struct_class = Types::S3JobManifestGenerator

    S3ManifestOutputLocation.add_member(:expected_manifest_bucket_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "ExpectedManifestBucketOwner"))
    S3ManifestOutputLocation.add_member(:bucket, Shapes::ShapeRef.new(shape: S3BucketArnString, required: true, location_name: "Bucket"))
    S3ManifestOutputLocation.add_member(:manifest_prefix, Shapes::ShapeRef.new(shape: ManifestPrefixString, location_name: "ManifestPrefix"))
    S3ManifestOutputLocation.add_member(:manifest_encryption, Shapes::ShapeRef.new(shape: GeneratedManifestEncryption, location_name: "ManifestEncryption"))
    S3ManifestOutputLocation.add_member(:manifest_format, Shapes::ShapeRef.new(shape: GeneratedManifestFormat, required: true, location_name: "ManifestFormat"))
    S3ManifestOutputLocation.struct_class = Types::S3ManifestOutputLocation

    S3ObjectLockLegalHold.add_member(:status, Shapes::ShapeRef.new(shape: S3ObjectLockLegalHoldStatus, required: true, location_name: "Status"))
    S3ObjectLockLegalHold.struct_class = Types::S3ObjectLockLegalHold

    S3ObjectMetadata.add_member(:cache_control, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "CacheControl"))
    S3ObjectMetadata.add_member(:content_disposition, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "ContentDisposition"))
    S3ObjectMetadata.add_member(:content_encoding, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "ContentEncoding"))
    S3ObjectMetadata.add_member(:content_language, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "ContentLanguage"))
    S3ObjectMetadata.add_member(:user_metadata, Shapes::ShapeRef.new(shape: S3UserMetadata, location_name: "UserMetadata"))
    S3ObjectMetadata.add_member(:content_length, Shapes::ShapeRef.new(shape: S3ContentLength, location_name: "ContentLength", metadata: {"box"=>true}))
    S3ObjectMetadata.add_member(:content_md5, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "ContentMD5"))
    S3ObjectMetadata.add_member(:content_type, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "ContentType"))
    S3ObjectMetadata.add_member(:http_expires_date, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "HttpExpiresDate"))
    S3ObjectMetadata.add_member(:requester_charged, Shapes::ShapeRef.new(shape: Boolean, location_name: "RequesterCharged"))
    S3ObjectMetadata.add_member(:sse_algorithm, Shapes::ShapeRef.new(shape: S3SSEAlgorithm, location_name: "SSEAlgorithm"))
    S3ObjectMetadata.struct_class = Types::S3ObjectMetadata

    S3ObjectOwner.add_member(:id, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "ID"))
    S3ObjectOwner.add_member(:display_name, Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String, location_name: "DisplayName"))
    S3ObjectOwner.struct_class = Types::S3ObjectOwner

    S3ReplicateObjectOperation.struct_class = Types::S3ReplicateObjectOperation

    S3Retention.add_member(:retain_until_date, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "RetainUntilDate"))
    S3Retention.add_member(:mode, Shapes::ShapeRef.new(shape: S3ObjectLockRetentionMode, location_name: "Mode"))
    S3Retention.struct_class = Types::S3Retention

    S3SetObjectAclOperation.add_member(:access_control_policy, Shapes::ShapeRef.new(shape: S3AccessControlPolicy, location_name: "AccessControlPolicy"))
    S3SetObjectAclOperation.struct_class = Types::S3SetObjectAclOperation

    S3SetObjectLegalHoldOperation.add_member(:legal_hold, Shapes::ShapeRef.new(shape: S3ObjectLockLegalHold, required: true, location_name: "LegalHold"))
    S3SetObjectLegalHoldOperation.struct_class = Types::S3SetObjectLegalHoldOperation

    S3SetObjectRetentionOperation.add_member(:bypass_governance_retention, Shapes::ShapeRef.new(shape: Boolean, location_name: "BypassGovernanceRetention", metadata: {"box"=>true}))
    S3SetObjectRetentionOperation.add_member(:retention, Shapes::ShapeRef.new(shape: S3Retention, required: true, location_name: "Retention"))
    S3SetObjectRetentionOperation.struct_class = Types::S3SetObjectRetentionOperation

    S3SetObjectTaggingOperation.add_member(:tag_set, Shapes::ShapeRef.new(shape: S3TagSet, location_name: "TagSet"))
    S3SetObjectTaggingOperation.struct_class = Types::S3SetObjectTaggingOperation

    S3Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKeyString, required: true, location_name: "Key"))
    S3Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValueString, required: true, location_name: "Value"))
    S3Tag.struct_class = Types::S3Tag

    S3TagSet.member = Shapes::ShapeRef.new(shape: S3Tag)

    S3UserMetadata.key = Shapes::ShapeRef.new(shape: NonEmptyMaxLength1024String)
    S3UserMetadata.value = Shapes::ShapeRef.new(shape: MaxLength1024String)

    SSEKMS.add_member(:key_id, Shapes::ShapeRef.new(shape: SSEKMSKeyId, required: true, location_name: "KeyId"))
    SSEKMS.struct_class = Types::SSEKMS

    SSEKMSEncryption.add_member(:key_id, Shapes::ShapeRef.new(shape: KmsKeyArnString, required: true, location_name: "KeyId"))
    SSEKMSEncryption.struct_class = Types::SSEKMSEncryption

    SSES3.struct_class = Types::SSES3

    SSES3Encryption.struct_class = Types::SSES3Encryption

    SelectionCriteria.add_member(:delimiter, Shapes::ShapeRef.new(shape: StorageLensPrefixLevelDelimiter, location_name: "Delimiter"))
    SelectionCriteria.add_member(:max_depth, Shapes::ShapeRef.new(shape: StorageLensPrefixLevelMaxDepth, location_name: "MaxDepth"))
    SelectionCriteria.add_member(:min_storage_bytes_percentage, Shapes::ShapeRef.new(shape: MinStorageBytesPercentage, location_name: "MinStorageBytesPercentage"))
    SelectionCriteria.struct_class = Types::SelectionCriteria

    SourceSelectionCriteria.add_member(:sse_kms_encrypted_objects, Shapes::ShapeRef.new(shape: SseKmsEncryptedObjects, location_name: "SseKmsEncryptedObjects"))
    SourceSelectionCriteria.add_member(:replica_modifications, Shapes::ShapeRef.new(shape: ReplicaModifications, location_name: "ReplicaModifications"))
    SourceSelectionCriteria.struct_class = Types::SourceSelectionCriteria

    SseKmsEncryptedObjects.add_member(:status, Shapes::ShapeRef.new(shape: SseKmsEncryptedObjectsStatus, required: true, location_name: "Status"))
    SseKmsEncryptedObjects.struct_class = Types::SseKmsEncryptedObjects

    StorageLensAwsOrg.add_member(:arn, Shapes::ShapeRef.new(shape: AwsOrgArn, required: true, location_name: "Arn"))
    StorageLensAwsOrg.struct_class = Types::StorageLensAwsOrg

    StorageLensConfiguration.add_member(:id, Shapes::ShapeRef.new(shape: ConfigId, required: true, location_name: "Id"))
    StorageLensConfiguration.add_member(:account_level, Shapes::ShapeRef.new(shape: AccountLevel, required: true, location_name: "AccountLevel"))
    StorageLensConfiguration.add_member(:include, Shapes::ShapeRef.new(shape: Include, location_name: "Include"))
    StorageLensConfiguration.add_member(:exclude, Shapes::ShapeRef.new(shape: Exclude, location_name: "Exclude"))
    StorageLensConfiguration.add_member(:data_export, Shapes::ShapeRef.new(shape: StorageLensDataExport, location_name: "DataExport"))
    StorageLensConfiguration.add_member(:is_enabled, Shapes::ShapeRef.new(shape: IsEnabled, required: true, location_name: "IsEnabled"))
    StorageLensConfiguration.add_member(:aws_org, Shapes::ShapeRef.new(shape: StorageLensAwsOrg, location_name: "AwsOrg"))
    StorageLensConfiguration.add_member(:storage_lens_arn, Shapes::ShapeRef.new(shape: StorageLensArn, location_name: "StorageLensArn"))
    StorageLensConfiguration.struct_class = Types::StorageLensConfiguration

    StorageLensConfigurationList.member = Shapes::ShapeRef.new(shape: ListStorageLensConfigurationEntry, location_name: "StorageLensConfiguration")

    StorageLensDataExport.add_member(:s3_bucket_destination, Shapes::ShapeRef.new(shape: S3BucketDestination, location_name: "S3BucketDestination"))
    StorageLensDataExport.add_member(:cloud_watch_metrics, Shapes::ShapeRef.new(shape: CloudWatchMetrics, location_name: "CloudWatchMetrics"))
    StorageLensDataExport.struct_class = Types::StorageLensDataExport

    StorageLensDataExportEncryption.add_member(:sses3, Shapes::ShapeRef.new(shape: SSES3, location_name: "SSE-S3"))
    StorageLensDataExportEncryption.add_member(:ssekms, Shapes::ShapeRef.new(shape: SSEKMS, location_name: "SSE-KMS"))
    StorageLensDataExportEncryption.struct_class = Types::StorageLensDataExportEncryption

    StorageLensTag.add_member(:key, Shapes::ShapeRef.new(shape: TagKeyString, required: true, location_name: "Key"))
    StorageLensTag.add_member(:value, Shapes::ShapeRef.new(shape: TagValueString, required: true, location_name: "Value"))
    StorageLensTag.struct_class = Types::StorageLensTag

    StorageLensTags.member = Shapes::ShapeRef.new(shape: StorageLensTag, location_name: "Tag")

    SubmitMultiRegionAccessPointRoutesRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    SubmitMultiRegionAccessPointRoutesRequest.add_member(:mrap, Shapes::ShapeRef.new(shape: MultiRegionAccessPointId, required: true, location: "uri", location_name: "mrap"))
    SubmitMultiRegionAccessPointRoutesRequest.add_member(:route_updates, Shapes::ShapeRef.new(shape: RouteList, required: true, location_name: "RouteUpdates"))
    SubmitMultiRegionAccessPointRoutesRequest.struct_class = Types::SubmitMultiRegionAccessPointRoutesRequest

    SubmitMultiRegionAccessPointRoutesResult.struct_class = Types::SubmitMultiRegionAccessPointRoutesResult

    Tagging.add_member(:tag_set, Shapes::ShapeRef.new(shape: S3TagSet, required: true, location_name: "TagSet"))
    Tagging.struct_class = Types::Tagging

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    Transition.add_member(:date, Shapes::ShapeRef.new(shape: Date, location_name: "Date"))
    Transition.add_member(:days, Shapes::ShapeRef.new(shape: Days, location_name: "Days"))
    Transition.add_member(:storage_class, Shapes::ShapeRef.new(shape: TransitionStorageClass, location_name: "StorageClass"))
    Transition.struct_class = Types::Transition

    TransitionList.member = Shapes::ShapeRef.new(shape: Transition, location_name: "Transition")

    UpdateJobPriorityRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    UpdateJobPriorityRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "id"))
    UpdateJobPriorityRequest.add_member(:priority, Shapes::ShapeRef.new(shape: JobPriority, required: true, location: "querystring", location_name: "priority"))
    UpdateJobPriorityRequest.struct_class = Types::UpdateJobPriorityRequest

    UpdateJobPriorityResult.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    UpdateJobPriorityResult.add_member(:priority, Shapes::ShapeRef.new(shape: JobPriority, required: true, location_name: "Priority"))
    UpdateJobPriorityResult.struct_class = Types::UpdateJobPriorityResult

    UpdateJobStatusRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location: "header", location_name: "x-amz-account-id", metadata: {"contextParam"=>{"name"=>"AccountId"}}))
    UpdateJobStatusRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "id"))
    UpdateJobStatusRequest.add_member(:requested_job_status, Shapes::ShapeRef.new(shape: RequestedJobStatus, required: true, location: "querystring", location_name: "requestedJobStatus"))
    UpdateJobStatusRequest.add_member(:status_update_reason, Shapes::ShapeRef.new(shape: JobStatusUpdateReason, location: "querystring", location_name: "statusUpdateReason"))
    UpdateJobStatusRequest.struct_class = Types::UpdateJobStatusRequest

    UpdateJobStatusResult.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    UpdateJobStatusResult.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "Status"))
    UpdateJobStatusResult.add_member(:status_update_reason, Shapes::ShapeRef.new(shape: JobStatusUpdateReason, location_name: "StatusUpdateReason"))
    UpdateJobStatusResult.struct_class = Types::UpdateJobStatusResult

    VersioningConfiguration.add_member(:mfa_delete, Shapes::ShapeRef.new(shape: MFADelete, location_name: "MfaDelete"))
    VersioningConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: BucketVersioningStatus, location_name: "Status"))
    VersioningConfiguration.struct_class = Types::VersioningConfiguration

    VpcConfiguration.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, required: true, location_name: "VpcId"))
    VpcConfiguration.struct_class = Types::VpcConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-08-20"

      api.metadata = {
        "apiVersion" => "2018-08-20",
        "endpointPrefix" => "s3-control",
        "protocol" => "rest-xml",
        "serviceFullName" => "AWS S3 Control",
        "serviceId" => "S3 Control",
        "signatureVersion" => "s3v4",
        "signingName" => "s3",
        "uid" => "s3control-2018-08-20",
      }

      api.add_operation(:create_access_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessPoint"
        o.http_method = "PUT"
        o.http_request_uri = "/v20180820/accesspoint/{name}"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: CreateAccessPointRequest,
          location_name: "CreateAccessPointRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: CreateAccessPointResult)
      end)

      api.add_operation(:create_access_point_for_object_lambda, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessPointForObjectLambda"
        o.http_method = "PUT"
        o.http_request_uri = "/v20180820/accesspointforobjectlambda/{name}"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: CreateAccessPointForObjectLambdaRequest,
          location_name: "CreateAccessPointForObjectLambdaRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: CreateAccessPointForObjectLambdaResult)
      end)

      api.add_operation(:create_bucket, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBucket"
        o.http_method = "PUT"
        o.http_request_uri = "/v20180820/bucket/{name}"
        o.http_checksum_required = true
        o.input = Shapes::ShapeRef.new(shape: CreateBucketRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBucketResult)
        o.errors << Shapes::ShapeRef.new(shape: BucketAlreadyExists)
        o.errors << Shapes::ShapeRef.new(shape: BucketAlreadyOwnedByYou)
      end)

      api.add_operation(:create_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateJob"
        o.http_method = "POST"
        o.http_request_uri = "/v20180820/jobs"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: CreateJobRequest,
          location_name: "CreateJobRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: CreateJobResult)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_multi_region_access_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMultiRegionAccessPoint"
        o.http_method = "POST"
        o.http_request_uri = "/v20180820/async-requests/mrap/create"
        o.http_checksum_required = true
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: CreateMultiRegionAccessPointRequest,
          location_name: "CreateMultiRegionAccessPointRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: CreateMultiRegionAccessPointResult)
      end)

      api.add_operation(:delete_access_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessPoint"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20180820/accesspoint/{name}"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessPointRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_access_point_for_object_lambda, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessPointForObjectLambda"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20180820/accesspointforobjectlambda/{name}"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessPointForObjectLambdaRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_access_point_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessPointPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20180820/accesspoint/{name}/policy"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessPointPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_access_point_policy_for_object_lambda, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessPointPolicyForObjectLambda"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20180820/accesspointforobjectlambda/{name}/policy"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessPointPolicyForObjectLambdaRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_bucket, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBucket"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20180820/bucket/{name}"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteBucketRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_bucket_lifecycle_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBucketLifecycleConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20180820/bucket/{name}/lifecycleconfiguration"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteBucketLifecycleConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_bucket_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBucketPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20180820/bucket/{name}/policy"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteBucketPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_bucket_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBucketReplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20180820/bucket/{name}/replication"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteBucketReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_bucket_tagging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBucketTagging"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20180820/bucket/{name}/tagging"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteBucketTaggingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_job_tagging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteJobTagging"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20180820/jobs/{id}/tagging"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteJobTaggingRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteJobTaggingResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:delete_multi_region_access_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMultiRegionAccessPoint"
        o.http_method = "POST"
        o.http_request_uri = "/v20180820/async-requests/mrap/delete"
        o.http_checksum_required = true
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteMultiRegionAccessPointRequest,
          location_name: "DeleteMultiRegionAccessPointRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: DeleteMultiRegionAccessPointResult)
      end)

      api.add_operation(:delete_public_access_block, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePublicAccessBlock"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20180820/configuration/publicAccessBlock"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeletePublicAccessBlockRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_storage_lens_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStorageLensConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20180820/storagelens/{storagelensid}"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteStorageLensConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_storage_lens_configuration_tagging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStorageLensConfigurationTagging"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20180820/storagelens/{storagelensid}/tagging"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: DeleteStorageLensConfigurationTaggingRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStorageLensConfigurationTaggingResult)
      end)

      api.add_operation(:describe_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJob"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/jobs/{id}"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_multi_region_access_point_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMultiRegionAccessPointOperation"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/async-requests/mrap/{request_token+}"
        o.http_checksum_required = true
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: DescribeMultiRegionAccessPointOperationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMultiRegionAccessPointOperationResult)
      end)

      api.add_operation(:get_access_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessPoint"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/accesspoint/{name}"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetAccessPointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccessPointResult)
      end)

      api.add_operation(:get_access_point_configuration_for_object_lambda, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessPointConfigurationForObjectLambda"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/accesspointforobjectlambda/{name}/configuration"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetAccessPointConfigurationForObjectLambdaRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccessPointConfigurationForObjectLambdaResult)
      end)

      api.add_operation(:get_access_point_for_object_lambda, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessPointForObjectLambda"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/accesspointforobjectlambda/{name}"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetAccessPointForObjectLambdaRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccessPointForObjectLambdaResult)
      end)

      api.add_operation(:get_access_point_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessPointPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/accesspoint/{name}/policy"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetAccessPointPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccessPointPolicyResult)
      end)

      api.add_operation(:get_access_point_policy_for_object_lambda, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessPointPolicyForObjectLambda"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/accesspointforobjectlambda/{name}/policy"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetAccessPointPolicyForObjectLambdaRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccessPointPolicyForObjectLambdaResult)
      end)

      api.add_operation(:get_access_point_policy_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessPointPolicyStatus"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/accesspoint/{name}/policyStatus"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetAccessPointPolicyStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccessPointPolicyStatusResult)
      end)

      api.add_operation(:get_access_point_policy_status_for_object_lambda, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccessPointPolicyStatusForObjectLambda"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/accesspointforobjectlambda/{name}/policyStatus"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetAccessPointPolicyStatusForObjectLambdaRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAccessPointPolicyStatusForObjectLambdaResult)
      end)

      api.add_operation(:get_bucket, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBucket"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/bucket/{name}"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetBucketRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBucketResult)
      end)

      api.add_operation(:get_bucket_lifecycle_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBucketLifecycleConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/bucket/{name}/lifecycleconfiguration"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetBucketLifecycleConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBucketLifecycleConfigurationResult)
      end)

      api.add_operation(:get_bucket_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBucketPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/bucket/{name}/policy"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetBucketPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBucketPolicyResult)
      end)

      api.add_operation(:get_bucket_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBucketReplication"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/bucket/{name}/replication"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetBucketReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBucketReplicationResult)
      end)

      api.add_operation(:get_bucket_tagging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBucketTagging"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/bucket/{name}/tagging"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetBucketTaggingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBucketTaggingResult)
      end)

      api.add_operation(:get_bucket_versioning, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBucketVersioning"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/bucket/{name}/versioning"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetBucketVersioningRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBucketVersioningResult)
      end)

      api.add_operation(:get_job_tagging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJobTagging"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/jobs/{id}/tagging"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetJobTaggingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobTaggingResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_multi_region_access_point, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMultiRegionAccessPoint"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/mrap/instances/{name+}"
        o.http_checksum_required = true
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetMultiRegionAccessPointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMultiRegionAccessPointResult)
      end)

      api.add_operation(:get_multi_region_access_point_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMultiRegionAccessPointPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/mrap/instances/{name+}/policy"
        o.http_checksum_required = true
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetMultiRegionAccessPointPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMultiRegionAccessPointPolicyResult)
      end)

      api.add_operation(:get_multi_region_access_point_policy_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMultiRegionAccessPointPolicyStatus"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/mrap/instances/{name+}/policystatus"
        o.http_checksum_required = true
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetMultiRegionAccessPointPolicyStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMultiRegionAccessPointPolicyStatusResult)
      end)

      api.add_operation(:get_multi_region_access_point_routes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMultiRegionAccessPointRoutes"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/mrap/instances/{mrap+}/routes"
        o.http_checksum_required = true
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetMultiRegionAccessPointRoutesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMultiRegionAccessPointRoutesResult)
      end)

      api.add_operation(:get_public_access_block, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPublicAccessBlock"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/configuration/publicAccessBlock"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetPublicAccessBlockRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPublicAccessBlockOutput)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchPublicAccessBlockConfiguration)
      end)

      api.add_operation(:get_storage_lens_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStorageLensConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/storagelens/{storagelensid}"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetStorageLensConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStorageLensConfigurationResult)
      end)

      api.add_operation(:get_storage_lens_configuration_tagging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStorageLensConfigurationTagging"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/storagelens/{storagelensid}/tagging"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: GetStorageLensConfigurationTaggingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStorageLensConfigurationTaggingResult)
      end)

      api.add_operation(:list_access_points, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessPoints"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/accesspoint"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: ListAccessPointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccessPointsResult)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_access_points_for_object_lambda, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessPointsForObjectLambda"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/accesspointforobjectlambda"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: ListAccessPointsForObjectLambdaRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccessPointsForObjectLambdaResult)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobs"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/jobs"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: ListJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobsResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_multi_region_access_points, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMultiRegionAccessPoints"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/mrap/instances"
        o.http_checksum_required = true
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: ListMultiRegionAccessPointsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMultiRegionAccessPointsResult)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_regional_buckets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegionalBuckets"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/bucket"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: ListRegionalBucketsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRegionalBucketsResult)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_storage_lens_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStorageLensConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/storagelens"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: ListStorageLensConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStorageLensConfigurationsResult)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_access_point_configuration_for_object_lambda, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccessPointConfigurationForObjectLambda"
        o.http_method = "PUT"
        o.http_request_uri = "/v20180820/accesspointforobjectlambda/{name}/configuration"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: PutAccessPointConfigurationForObjectLambdaRequest,
          location_name: "PutAccessPointConfigurationForObjectLambdaRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:put_access_point_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccessPointPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/v20180820/accesspoint/{name}/policy"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: PutAccessPointPolicyRequest,
          location_name: "PutAccessPointPolicyRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:put_access_point_policy_for_object_lambda, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutAccessPointPolicyForObjectLambda"
        o.http_method = "PUT"
        o.http_request_uri = "/v20180820/accesspointforobjectlambda/{name}/policy"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: PutAccessPointPolicyForObjectLambdaRequest,
          location_name: "PutAccessPointPolicyForObjectLambdaRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:put_bucket_lifecycle_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutBucketLifecycleConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/v20180820/bucket/{name}/lifecycleconfiguration"
        o.http_checksum_required = true
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: PutBucketLifecycleConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:put_bucket_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutBucketPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/v20180820/bucket/{name}/policy"
        o.http_checksum_required = true
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: PutBucketPolicyRequest,
          location_name: "PutBucketPolicyRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:put_bucket_replication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutBucketReplication"
        o.http_method = "PUT"
        o.http_request_uri = "/v20180820/bucket/{name}/replication"
        o.http_checksum_required = true
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: PutBucketReplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:put_bucket_tagging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutBucketTagging"
        o.http_method = "PUT"
        o.http_request_uri = "/v20180820/bucket/{name}/tagging"
        o.http_checksum_required = true
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: PutBucketTaggingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:put_bucket_versioning, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutBucketVersioning"
        o.http_method = "PUT"
        o.http_request_uri = "/v20180820/bucket/{name}/versioning"
        o.http_checksum_required = true
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: PutBucketVersioningRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:put_job_tagging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutJobTagging"
        o.http_method = "PUT"
        o.http_request_uri = "/v20180820/jobs/{id}/tagging"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: PutJobTaggingRequest,
          location_name: "PutJobTaggingRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: PutJobTaggingResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:put_multi_region_access_point_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutMultiRegionAccessPointPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/v20180820/async-requests/mrap/put-policy"
        o.http_checksum_required = true
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: PutMultiRegionAccessPointPolicyRequest,
          location_name: "PutMultiRegionAccessPointPolicyRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: PutMultiRegionAccessPointPolicyResult)
      end)

      api.add_operation(:put_public_access_block, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPublicAccessBlock"
        o.http_method = "PUT"
        o.http_request_uri = "/v20180820/configuration/publicAccessBlock"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: PutPublicAccessBlockRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:put_storage_lens_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutStorageLensConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/v20180820/storagelens/{storagelensid}"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: PutStorageLensConfigurationRequest,
          location_name: "PutStorageLensConfigurationRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:put_storage_lens_configuration_tagging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutStorageLensConfigurationTagging"
        o.http_method = "PUT"
        o.http_request_uri = "/v20180820/storagelens/{storagelensid}/tagging"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: PutStorageLensConfigurationTaggingRequest,
          location_name: "PutStorageLensConfigurationTaggingRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: PutStorageLensConfigurationTaggingResult)
      end)

      api.add_operation(:submit_multi_region_access_point_routes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitMultiRegionAccessPointRoutes"
        o.http_method = "PATCH"
        o.http_request_uri = "/v20180820/mrap/instances/{mrap+}/routes"
        o.http_checksum_required = true
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: SubmitMultiRegionAccessPointRoutesRequest,
          location_name: "SubmitMultiRegionAccessPointRoutesRequest",
          metadata: {
            "xmlNamespace" => {"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}
          }
        )
        o.output = Shapes::ShapeRef.new(shape: SubmitMultiRegionAccessPointRoutesResult)
      end)

      api.add_operation(:update_job_priority, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateJobPriority"
        o.http_method = "POST"
        o.http_request_uri = "/v20180820/jobs/{id}/priority"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateJobPriorityRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateJobPriorityResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_job_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateJobStatus"
        o.http_method = "POST"
        o.http_request_uri = "/v20180820/jobs/{id}/status"
        o.endpoint_pattern = {
        }
        o.input = Shapes::ShapeRef.new(shape: UpdateJobStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateJobStatusResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: JobStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)
    end

  end
end
