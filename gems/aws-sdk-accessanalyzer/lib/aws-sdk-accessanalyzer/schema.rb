# frozen_string_literal: true

# This is generated code!

module Aws::AccessAnalyzer
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Access = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#Access', name: 'Access')
    AccessCheckPolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessCheckPolicyDocument', name: 'AccessCheckPolicyDocument', traits: {"smithy.api#sensitive" => {}})
    AccessCheckPolicyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessCheckPolicyType', name: 'AccessCheckPolicyType', traits: {"smithy.api#enum" => [{"value" => "IDENTITY_POLICY", "name" => "IDENTITY_POLICY"}, {"value" => "RESOURCE_POLICY", "name" => "RESOURCE_POLICY"}]})
    AccessCheckResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessCheckResourceType', name: 'AccessCheckResourceType', traits: {"smithy.api#enum" => [{"value" => "AWS::DynamoDB::Table", "name" => "DYNAMODB_TABLE"}, {"value" => "AWS::DynamoDB::Stream", "name" => "DYNAMODB_STREAM"}, {"value" => "AWS::EFS::FileSystem", "name" => "EFS_FILESYSTEM"}, {"value" => "AWS::OpenSearchService::Domain", "name" => "OPENSEARCHSERVICE_DOMAIN"}, {"value" => "AWS::Kinesis::Stream", "name" => "KINESIS_DATA_STREAM"}, {"value" => "AWS::Kinesis::StreamConsumer", "name" => "KINESIS_STREAM_CONSUMER"}, {"value" => "AWS::KMS::Key", "name" => "KMS_KEY"}, {"value" => "AWS::Lambda::Function", "name" => "LAMBDA_FUNCTION"}, {"value" => "AWS::S3::Bucket", "name" => "S3_BUCKET"}, {"value" => "AWS::S3::AccessPoint", "name" => "S3_ACCESS_POINT"}, {"value" => "AWS::S3Express::DirectoryBucket", "name" => "S3EXPRESS_DIRECTORYBUCKET"}, {"value" => "AWS::S3::Glacier", "name" => "S3_GLACIER"}, {"value" => "AWS::S3Outposts::Bucket", "name" => "S3_OUTPOSTS_BUCKET"}, {"value" => "AWS::S3Outposts::AccessPoint", "name" => "S3_OUTPOSTS_ACCESS_POINT"}, {"value" => "AWS::SecretsManager::Secret", "name" => "SECRETSMANAGER_SECRET"}, {"value" => "AWS::SNS::Topic", "name" => "SNS_TOPIC"}, {"value" => "AWS::SQS::Queue", "name" => "SQS_QUEUE"}, {"value" => "AWS::IAM::AssumeRolePolicyDocument", "name" => "ROLE_TRUST"}, {"value" => "AWS::S3Tables::TableBucket", "name" => "S3_TABLE_BUCKET"}, {"value" => "AWS::ApiGateway::RestApi", "name" => "API_GATEWAY_REST_API"}, {"value" => "AWS::CodeArtifact::Domain", "name" => "CODE_ARTIFACT_DOMAIN"}, {"value" => "AWS::Backup::BackupVault", "name" => "BACKUP_VAULT"}, {"value" => "AWS::CloudTrail::Dashboard", "name" => "CLOUDTRAIL_DASHBOARD"}, {"value" => "AWS::CloudTrail::EventDataStore", "name" => "CLOUDTRAIL_EVENT_DATA_STORE"}, {"value" => "AWS::S3Tables::Table", "name" => "S3_TABLE"}, {"value" => "AWS::S3Express::AccessPoint", "name" => "S3_EXPRESS_ACCESS_POINT"}]})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#AccessList', name: 'AccessList')
    AccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessPointArn', name: 'AccessPointArn', traits: {"smithy.api#pattern" => "^arn:[^:]*:s3:[^:]*:[^:]*:accesspoint/.*$"})
    AccessPointPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessPointPolicy', name: 'AccessPointPolicy')
    AccessPreview = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreview', name: 'AccessPreview')
    AccessPreviewFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewFinding', name: 'AccessPreviewFinding')
    AccessPreviewFindingId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewFindingId', name: 'AccessPreviewFindingId')
    AccessPreviewFindingsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewFindingsList', name: 'AccessPreviewFindingsList')
    AccessPreviewId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewId', name: 'AccessPreviewId', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    AccessPreviewStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewStatus', name: 'AccessPreviewStatus', traits: {"smithy.api#enum" => [{"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "CREATING", "name" => "CREATING"}, {"value" => "FAILED", "name" => "FAILED"}]})
    AccessPreviewStatusReason = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewStatusReason', name: 'AccessPreviewStatusReason')
    AccessPreviewStatusReasonCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewStatusReasonCode', name: 'AccessPreviewStatusReasonCode', traits: {"smithy.api#enum" => [{"value" => "INTERNAL_ERROR", "name" => "INTERNAL_ERROR"}, {"value" => "INVALID_CONFIGURATION", "name" => "INVALID_CONFIGURATION"}]})
    AccessPreviewSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewSummary', name: 'AccessPreviewSummary')
    AccessPreviewsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewsList', name: 'AccessPreviewsList')
    AccountAggregations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#AccountAggregations', name: 'AccountAggregations', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AccountIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#AccountIdsList', name: 'AccountIdsList')
    AclCanonicalId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AclCanonicalId', name: 'AclCanonicalId')
    AclGrantee = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#AclGrantee', name: 'AclGrantee')
    AclPermission = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AclPermission', name: 'AclPermission', traits: {"smithy.api#enum" => [{"value" => "READ", "name" => "READ"}, {"value" => "WRITE", "name" => "WRITE"}, {"value" => "READ_ACP", "name" => "READ_ACP"}, {"value" => "WRITE_ACP", "name" => "WRITE_ACP"}, {"value" => "FULL_CONTROL", "name" => "FULL_CONTROL"}]})
    AclUri = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AclUri', name: 'AclUri')
    Action = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#Action', name: 'Action')
    ActionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ActionList', name: 'ActionList')
    ActionsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ActionsList', name: 'ActionsList')
    AnalysisRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AnalysisRule', name: 'AnalysisRule')
    AnalysisRuleCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AnalysisRuleCriteria', name: 'AnalysisRuleCriteria')
    AnalysisRuleCriteriaList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#AnalysisRuleCriteriaList', name: 'AnalysisRuleCriteriaList')
    AnalyzedResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AnalyzedResource', name: 'AnalyzedResource')
    AnalyzedResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AnalyzedResourceSummary', name: 'AnalyzedResourceSummary')
    AnalyzedResourcesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#AnalyzedResourcesList', name: 'AnalyzedResourcesList')
    AnalyzerArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AnalyzerArn', name: 'AnalyzerArn', traits: {"smithy.api#pattern" => "^[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:analyzer/.{1,255}$"})
    AnalyzerConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#AnalyzerConfiguration', name: 'AnalyzerConfiguration')
    AnalyzerStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AnalyzerStatus', name: 'AnalyzerStatus', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "CREATING", "name" => "CREATING"}, {"value" => "DISABLED", "name" => "DISABLED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    AnalyzerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AnalyzerSummary', name: 'AnalyzerSummary')
    AnalyzersList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#AnalyzersList', name: 'AnalyzersList')
    ApplyArchiveRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ApplyArchiveRuleInput', name: 'ApplyArchiveRuleInput')
    ArchiveRuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ArchiveRuleSummary', name: 'ArchiveRuleSummary')
    ArchiveRulesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ArchiveRulesList', name: 'ArchiveRulesList')
    CancelPolicyGenerationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CancelPolicyGenerationInput', name: 'CancelPolicyGenerationInput')
    CancelPolicyGenerationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CancelPolicyGenerationOutput', name: 'CancelPolicyGenerationOutput')
    CheckAccessNotGrantedRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CheckAccessNotGrantedRequest', name: 'CheckAccessNotGrantedRequest')
    CheckAccessNotGrantedResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CheckAccessNotGrantedResponse', name: 'CheckAccessNotGrantedResponse')
    CheckAccessNotGrantedResult = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#CheckAccessNotGrantedResult', name: 'CheckAccessNotGrantedResult', traits: {"smithy.api#enum" => [{"value" => "PASS", "name" => "PASS"}, {"value" => "FAIL", "name" => "FAIL"}]})
    CheckNoNewAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CheckNoNewAccessRequest', name: 'CheckNoNewAccessRequest')
    CheckNoNewAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CheckNoNewAccessResponse', name: 'CheckNoNewAccessResponse')
    CheckNoNewAccessResult = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#CheckNoNewAccessResult', name: 'CheckNoNewAccessResult', traits: {"smithy.api#enum" => [{"value" => "PASS", "name" => "PASS"}, {"value" => "FAIL", "name" => "FAIL"}]})
    CheckNoPublicAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CheckNoPublicAccessRequest', name: 'CheckNoPublicAccessRequest')
    CheckNoPublicAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CheckNoPublicAccessResponse', name: 'CheckNoPublicAccessResponse')
    CheckNoPublicAccessResult = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#CheckNoPublicAccessResult', name: 'CheckNoPublicAccessResult', traits: {"smithy.api#enum" => [{"value" => "PASS", "name" => "PASS"}, {"value" => "FAIL", "name" => "FAIL"}]})
    CloudTrailArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#CloudTrailArn', name: 'CloudTrailArn', traits: {"smithy.api#pattern" => "^arn:[^:]*:cloudtrail:[^:]*:[^:]*:trail/.{1,576}$"})
    CloudTrailDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CloudTrailDetails', name: 'CloudTrailDetails')
    CloudTrailProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CloudTrailProperties', name: 'CloudTrailProperties')
    ConditionKeyMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#ConditionKeyMap', name: 'ConditionKeyMap')
    Configuration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#Configuration', name: 'Configuration')
    ConfigurationsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#ConfigurationsMap', name: 'ConfigurationsMap')
    ConfigurationsMapKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ConfigurationsMapKey', name: 'ConfigurationsMapKey')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAccessPreviewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CreateAccessPreviewInput', name: 'CreateAccessPreviewInput')
    CreateAccessPreviewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CreateAccessPreviewOutput', name: 'CreateAccessPreviewOutput')
    CreateAnalyzerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CreateAnalyzerInput', name: 'CreateAnalyzerInput')
    CreateAnalyzerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CreateAnalyzerOutput', name: 'CreateAnalyzerOutput')
    CreateArchiveRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CreateArchiveRuleInput', name: 'CreateArchiveRuleInput')
    Criterion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#Criterion', name: 'Criterion')
    DeleteAnalyzerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#DeleteAnalyzerInput', name: 'DeleteAnalyzerInput')
    DeleteArchiveRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#DeleteArchiveRuleInput', name: 'DeleteArchiveRuleInput')
    DynamodbStreamConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#DynamodbStreamConfiguration', name: 'DynamodbStreamConfiguration')
    DynamodbStreamPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#DynamodbStreamPolicy', name: 'DynamodbStreamPolicy')
    DynamodbTableConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#DynamodbTableConfiguration', name: 'DynamodbTableConfiguration')
    DynamodbTablePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#DynamodbTablePolicy', name: 'DynamodbTablePolicy')
    EbsGroup = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#EbsGroup', name: 'EbsGroup')
    EbsGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#EbsGroupList', name: 'EbsGroupList')
    EbsSnapshotConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#EbsSnapshotConfiguration', name: 'EbsSnapshotConfiguration')
    EbsSnapshotDataEncryptionKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#EbsSnapshotDataEncryptionKeyId', name: 'EbsSnapshotDataEncryptionKeyId')
    EbsUserId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#EbsUserId', name: 'EbsUserId')
    EbsUserIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#EbsUserIdList', name: 'EbsUserIdList')
    EcrRepositoryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#EcrRepositoryConfiguration', name: 'EcrRepositoryConfiguration')
    EcrRepositoryPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#EcrRepositoryPolicy', name: 'EcrRepositoryPolicy')
    EfsFileSystemConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#EfsFileSystemConfiguration', name: 'EfsFileSystemConfiguration')
    EfsFileSystemPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#EfsFileSystemPolicy', name: 'EfsFileSystemPolicy')
    ExternalAccessDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ExternalAccessDetails', name: 'ExternalAccessDetails')
    ExternalAccessFindingsStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ExternalAccessFindingsStatistics', name: 'ExternalAccessFindingsStatistics')
    FilterCriteriaMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#FilterCriteriaMap', name: 'FilterCriteriaMap')
    Finding = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#Finding', name: 'Finding')
    FindingAggregationAccountDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#FindingAggregationAccountDetails', name: 'FindingAggregationAccountDetails')
    FindingAggregationAccountDetailsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#FindingAggregationAccountDetailsMap', name: 'FindingAggregationAccountDetailsMap')
    FindingChangeType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#FindingChangeType', name: 'FindingChangeType', traits: {"smithy.api#enum" => [{"value" => "CHANGED", "name" => "CHANGED"}, {"value" => "NEW", "name" => "NEW"}, {"value" => "UNCHANGED", "name" => "UNCHANGED"}]})
    FindingDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#FindingDetails', name: 'FindingDetails')
    FindingDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#FindingDetailsList', name: 'FindingDetailsList')
    FindingId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#FindingId', name: 'FindingId')
    FindingIdList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#FindingIdList', name: 'FindingIdList')
    FindingSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#FindingSource', name: 'FindingSource')
    FindingSourceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#FindingSourceDetail', name: 'FindingSourceDetail')
    FindingSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#FindingSourceList', name: 'FindingSourceList')
    FindingSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#FindingSourceType', name: 'FindingSourceType', traits: {"smithy.api#enum" => [{"value" => "POLICY", "name" => "POLICY"}, {"value" => "BUCKET_ACL", "name" => "BUCKET_ACL"}, {"value" => "S3_ACCESS_POINT", "name" => "S3_ACCESS_POINT"}, {"value" => "S3_ACCESS_POINT_ACCOUNT", "name" => "S3_ACCESS_POINT_ACCOUNT"}]})
    FindingStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#FindingStatus', name: 'FindingStatus', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "ARCHIVED", "name" => "ARCHIVED"}, {"value" => "RESOLVED", "name" => "RESOLVED"}]})
    FindingStatusUpdate = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#FindingStatusUpdate', name: 'FindingStatusUpdate', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "ARCHIVED", "name" => "ARCHIVED"}]})
    FindingSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#FindingSummary', name: 'FindingSummary')
    FindingSummaryV2 = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#FindingSummaryV2', name: 'FindingSummaryV2')
    FindingType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#FindingType', name: 'FindingType', traits: {"smithy.api#enum" => [{"value" => "ExternalAccess", "name" => "EXTERNAL_ACCESS"}, {"value" => "UnusedIAMRole", "name" => "UNUSED_IAM_ROLE"}, {"value" => "UnusedIAMUserAccessKey", "name" => "UNUSED_IAM_USER_ACCESS_KEY"}, {"value" => "UnusedIAMUserPassword", "name" => "UNUSED_IAM_USER_PASSWORD"}, {"value" => "UnusedPermission", "name" => "UNUSED_PERMISSION"}, {"value" => "InternalAccess", "name" => "INTERNAL_ACCESS"}]})
    FindingsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#FindingsList', name: 'FindingsList')
    FindingsListV2 = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#FindingsListV2', name: 'FindingsListV2')
    FindingsStatistics = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#FindingsStatistics', name: 'FindingsStatistics')
    FindingsStatisticsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#FindingsStatisticsList', name: 'FindingsStatisticsList')
    GenerateFindingRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GenerateFindingRecommendationRequest', name: 'GenerateFindingRecommendationRequest')
    GeneratedPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GeneratedPolicy', name: 'GeneratedPolicy')
    GeneratedPolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#GeneratedPolicyList', name: 'GeneratedPolicyList')
    GeneratedPolicyProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GeneratedPolicyProperties', name: 'GeneratedPolicyProperties')
    GeneratedPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GeneratedPolicyResult', name: 'GeneratedPolicyResult')
    GetAccessPreviewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetAccessPreviewInput', name: 'GetAccessPreviewInput')
    GetAccessPreviewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetAccessPreviewOutput', name: 'GetAccessPreviewOutput')
    GetAnalyzedResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetAnalyzedResourceInput', name: 'GetAnalyzedResourceInput')
    GetAnalyzedResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetAnalyzedResourceOutput', name: 'GetAnalyzedResourceOutput')
    GetAnalyzerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetAnalyzerInput', name: 'GetAnalyzerInput')
    GetAnalyzerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetAnalyzerOutput', name: 'GetAnalyzerOutput')
    GetArchiveRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetArchiveRuleInput', name: 'GetArchiveRuleInput')
    GetArchiveRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetArchiveRuleOutput', name: 'GetArchiveRuleOutput')
    GetFindingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetFindingInput', name: 'GetFindingInput')
    GetFindingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetFindingOutput', name: 'GetFindingOutput')
    GetFindingRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetFindingRecommendationRequest', name: 'GetFindingRecommendationRequest')
    GetFindingRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetFindingRecommendationResponse', name: 'GetFindingRecommendationResponse')
    GetFindingV2Request = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetFindingV2Request', name: 'GetFindingV2Request')
    GetFindingV2Response = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetFindingV2Response', name: 'GetFindingV2Response')
    GetFindingsStatisticsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetFindingsStatisticsRequest', name: 'GetFindingsStatisticsRequest')
    GetFindingsStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetFindingsStatisticsResponse', name: 'GetFindingsStatisticsResponse')
    GetGeneratedPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetGeneratedPolicyInput', name: 'GetGeneratedPolicyInput')
    GetGeneratedPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetGeneratedPolicyOutput', name: 'GetGeneratedPolicyOutput')
    GranteePrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#GranteePrincipal', name: 'GranteePrincipal')
    IamRoleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#IamRoleConfiguration', name: 'IamRoleConfiguration')
    IamTrustPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#IamTrustPolicy', name: 'IamTrustPolicy')
    InlineArchiveRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InlineArchiveRule', name: 'InlineArchiveRule')
    InlineArchiveRulesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#InlineArchiveRulesList', name: 'InlineArchiveRulesList')
    InternalAccessAnalysisRule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessAnalysisRule', name: 'InternalAccessAnalysisRule')
    InternalAccessAnalysisRuleCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessAnalysisRuleCriteria', name: 'InternalAccessAnalysisRuleCriteria')
    InternalAccessAnalysisRuleCriteriaList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessAnalysisRuleCriteriaList', name: 'InternalAccessAnalysisRuleCriteriaList')
    InternalAccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessConfiguration', name: 'InternalAccessConfiguration')
    InternalAccessDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessDetails', name: 'InternalAccessDetails')
    InternalAccessFindingsStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessFindingsStatistics', name: 'InternalAccessFindingsStatistics')
    InternalAccessResourceTypeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessResourceTypeDetails', name: 'InternalAccessResourceTypeDetails')
    InternalAccessResourceTypeStatisticsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessResourceTypeStatisticsMap', name: 'InternalAccessResourceTypeStatisticsMap')
    InternalAccessType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessType', name: 'InternalAccessType', traits: {"smithy.api#enum" => [{"value" => "INTRA_ACCOUNT", "name" => "INTRA_ACCOUNT"}, {"value" => "INTRA_ORG", "name" => "INTRA_ORG"}]})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InternetConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InternetConfiguration', name: 'InternetConfiguration')
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IssueCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#IssueCode', name: 'IssueCode')
    IssuingAccount = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#IssuingAccount', name: 'IssuingAccount')
    JobDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#JobDetails', name: 'JobDetails')
    JobError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#JobError', name: 'JobError')
    JobErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#JobErrorCode', name: 'JobErrorCode', traits: {"smithy.api#enum" => [{"name" => "AUTHORIZATION_ERROR", "value" => "AUTHORIZATION_ERROR"}, {"name" => "RESOURCE_NOT_FOUND_ERROR", "value" => "RESOURCE_NOT_FOUND_ERROR"}, {"name" => "SERVICE_QUOTA_EXCEEDED_ERROR", "value" => "SERVICE_QUOTA_EXCEEDED_ERROR"}, {"name" => "SERVICE_ERROR", "value" => "SERVICE_ERROR"}]})
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#JobId', name: 'JobId')
    JobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#JobStatus', name: 'JobStatus', traits: {"smithy.api#enum" => [{"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "CANCELED", "value" => "CANCELED"}]})
    KmsConstraintsKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#KmsConstraintsKey', name: 'KmsConstraintsKey')
    KmsConstraintsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#KmsConstraintsMap', name: 'KmsConstraintsMap')
    KmsConstraintsValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#KmsConstraintsValue', name: 'KmsConstraintsValue')
    KmsGrantConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#KmsGrantConfiguration', name: 'KmsGrantConfiguration')
    KmsGrantConfigurationsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#KmsGrantConfigurationsList', name: 'KmsGrantConfigurationsList')
    KmsGrantConstraints = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#KmsGrantConstraints', name: 'KmsGrantConstraints')
    KmsGrantOperation = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#KmsGrantOperation', name: 'KmsGrantOperation', traits: {"smithy.api#enum" => [{"value" => "CreateGrant", "name" => "CREATE_GRANT"}, {"value" => "Decrypt", "name" => "DECRYPT"}, {"value" => "DescribeKey", "name" => "DESCRIBE_KEY"}, {"value" => "Encrypt", "name" => "ENCRYPT"}, {"value" => "GenerateDataKey", "name" => "GENERATE_DATA_KEY"}, {"value" => "GenerateDataKeyPair", "name" => "GENERATE_DATA_KEY_PAIR"}, {"value" => "GenerateDataKeyPairWithoutPlaintext", "name" => "GENERATE_DATA_KEY_PAIR_WITHOUT_PLAINTEXT"}, {"value" => "GenerateDataKeyWithoutPlaintext", "name" => "GENERATE_DATA_KEY_WITHOUT_PLAINTEXT"}, {"value" => "GetPublicKey", "name" => "GET_PUBLIC_KEY"}, {"value" => "ReEncryptFrom", "name" => "REENCRYPT_FROM"}, {"value" => "ReEncryptTo", "name" => "REENCRYPT_TO"}, {"value" => "RetireGrant", "name" => "RETIRE_GRANT"}, {"value" => "Sign", "name" => "SIGN"}, {"value" => "Verify", "name" => "VERIFY"}]})
    KmsGrantOperationsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#KmsGrantOperationsList', name: 'KmsGrantOperationsList')
    KmsKeyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#KmsKeyConfiguration', name: 'KmsKeyConfiguration')
    KmsKeyPoliciesMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#KmsKeyPoliciesMap', name: 'KmsKeyPoliciesMap')
    KmsKeyPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#KmsKeyPolicy', name: 'KmsKeyPolicy')
    LearnMoreLink = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#LearnMoreLink', name: 'LearnMoreLink')
    ListAccessPreviewFindingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListAccessPreviewFindingsInput', name: 'ListAccessPreviewFindingsInput')
    ListAccessPreviewFindingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListAccessPreviewFindingsOutput', name: 'ListAccessPreviewFindingsOutput')
    ListAccessPreviewsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListAccessPreviewsInput', name: 'ListAccessPreviewsInput')
    ListAccessPreviewsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListAccessPreviewsOutput', name: 'ListAccessPreviewsOutput')
    ListAnalyzedResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListAnalyzedResourcesInput', name: 'ListAnalyzedResourcesInput')
    ListAnalyzedResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListAnalyzedResourcesOutput', name: 'ListAnalyzedResourcesOutput')
    ListAnalyzersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListAnalyzersInput', name: 'ListAnalyzersInput')
    ListAnalyzersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListAnalyzersOutput', name: 'ListAnalyzersOutput')
    ListArchiveRulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListArchiveRulesInput', name: 'ListArchiveRulesInput')
    ListArchiveRulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListArchiveRulesOutput', name: 'ListArchiveRulesOutput')
    ListFindingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListFindingsInput', name: 'ListFindingsInput')
    ListFindingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListFindingsOutput', name: 'ListFindingsOutput')
    ListFindingsV2Request = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListFindingsV2Request', name: 'ListFindingsV2Request')
    ListFindingsV2Response = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListFindingsV2Response', name: 'ListFindingsV2Response')
    ListPolicyGenerationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListPolicyGenerationsInput', name: 'ListPolicyGenerationsInput')
    ListPolicyGenerationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListPolicyGenerationsOutput', name: 'ListPolicyGenerationsOutput')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    Locale = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#Locale', name: 'Locale', traits: {"smithy.api#enum" => [{"value" => "DE", "name" => "DE"}, {"value" => "EN", "name" => "EN"}, {"value" => "ES", "name" => "ES"}, {"value" => "FR", "name" => "FR"}, {"value" => "IT", "name" => "IT"}, {"value" => "JA", "name" => "JA"}, {"value" => "KO", "name" => "KO"}, {"value" => "PT_BR", "name" => "PT_BR"}, {"value" => "ZH_CN", "name" => "ZH_CN"}, {"value" => "ZH_TW", "name" => "ZH_TW"}]})
    Location = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#Location', name: 'Location')
    LocationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#LocationList', name: 'LocationList')
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z][A-Za-z0-9_.-]*$"})
    NetworkOriginConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#NetworkOriginConfiguration', name: 'NetworkOriginConfiguration')
    OrderBy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#OrderBy', name: 'OrderBy', traits: {"smithy.api#enum" => [{"value" => "ASC", "name" => "ASC"}, {"value" => "DESC", "name" => "DESC"}]})
    PathElement = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#PathElement', name: 'PathElement')
    PathElementList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#PathElementList', name: 'PathElementList')
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#PolicyDocument', name: 'PolicyDocument')
    PolicyGeneration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#PolicyGeneration', name: 'PolicyGeneration')
    PolicyGenerationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#PolicyGenerationDetails', name: 'PolicyGenerationDetails')
    PolicyGenerationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#PolicyGenerationList', name: 'PolicyGenerationList')
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#PolicyName', name: 'PolicyName')
    PolicyType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#PolicyType', name: 'PolicyType', traits: {"smithy.api#enum" => [{"value" => "IDENTITY_POLICY", "name" => "IDENTITY_POLICY"}, {"value" => "RESOURCE_POLICY", "name" => "RESOURCE_POLICY"}, {"value" => "SERVICE_CONTROL_POLICY", "name" => "SERVICE_CONTROL_POLICY"}, {"value" => "RESOURCE_CONTROL_POLICY", "name" => "RESOURCE_CONTROL_POLICY"}]})
    Position = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#Position', name: 'Position')
    PrincipalArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#PrincipalArn', name: 'PrincipalArn', traits: {"smithy.api#pattern" => "^arn:[^:]*:iam::[^:]*:(role|user)/.{1,576}$"})
    PrincipalMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#PrincipalMap', name: 'PrincipalMap')
    PrincipalType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#PrincipalType', name: 'PrincipalType', traits: {"smithy.api#enum" => [{"value" => "IAM_ROLE", "name" => "IAM_ROLE"}, {"value" => "IAM_USER", "name" => "IAM_USER"}]})
    RdsDbClusterSnapshotAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbClusterSnapshotAccountId', name: 'RdsDbClusterSnapshotAccountId')
    RdsDbClusterSnapshotAccountIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbClusterSnapshotAccountIdsList', name: 'RdsDbClusterSnapshotAccountIdsList')
    RdsDbClusterSnapshotAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbClusterSnapshotAttributeName', name: 'RdsDbClusterSnapshotAttributeName')
    RdsDbClusterSnapshotAttributeValue = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbClusterSnapshotAttributeValue', name: 'RdsDbClusterSnapshotAttributeValue')
    RdsDbClusterSnapshotAttributesMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbClusterSnapshotAttributesMap', name: 'RdsDbClusterSnapshotAttributesMap')
    RdsDbClusterSnapshotConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbClusterSnapshotConfiguration', name: 'RdsDbClusterSnapshotConfiguration')
    RdsDbClusterSnapshotKmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbClusterSnapshotKmsKeyId', name: 'RdsDbClusterSnapshotKmsKeyId')
    RdsDbSnapshotAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbSnapshotAccountId', name: 'RdsDbSnapshotAccountId')
    RdsDbSnapshotAccountIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbSnapshotAccountIdsList', name: 'RdsDbSnapshotAccountIdsList')
    RdsDbSnapshotAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbSnapshotAttributeName', name: 'RdsDbSnapshotAttributeName')
    RdsDbSnapshotAttributeValue = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbSnapshotAttributeValue', name: 'RdsDbSnapshotAttributeValue')
    RdsDbSnapshotAttributesMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbSnapshotAttributesMap', name: 'RdsDbSnapshotAttributesMap')
    RdsDbSnapshotConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbSnapshotConfiguration', name: 'RdsDbSnapshotConfiguration')
    RdsDbSnapshotKmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbSnapshotKmsKeyId', name: 'RdsDbSnapshotKmsKeyId')
    ReasonCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ReasonCode', name: 'ReasonCode', traits: {"smithy.api#enum" => [{"value" => "AWS_SERVICE_ACCESS_DISABLED", "name" => "AWS_SERVICE_ACCESS_DISABLED"}, {"value" => "DELEGATED_ADMINISTRATOR_DEREGISTERED", "name" => "DELEGATED_ADMINISTRATOR_DEREGISTERED"}, {"value" => "ORGANIZATION_DELETED", "name" => "ORGANIZATION_DELETED"}, {"value" => "SERVICE_LINKED_ROLE_CREATION_FAILED", "name" => "SERVICE_LINKED_ROLE_CREATION_FAILED"}]})
    ReasonSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ReasonSummary', name: 'ReasonSummary')
    ReasonSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ReasonSummaryList', name: 'ReasonSummaryList')
    RecommendationError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#RecommendationError', name: 'RecommendationError')
    RecommendationType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RecommendationType', name: 'RecommendationType', traits: {"smithy.api#enum" => [{"value" => "UnusedPermissionRecommendation", "name" => "UNUSED_PERMISSION_RECOMMENDATION"}]})
    RecommendedRemediationAction = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RecommendedRemediationAction', name: 'RecommendedRemediationAction', traits: {"smithy.api#enum" => [{"value" => "CREATE_POLICY", "name" => "CREATE_POLICY"}, {"value" => "DETACH_POLICY", "name" => "DETACH_POLICY"}]})
    RecommendedStep = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#RecommendedStep', name: 'RecommendedStep')
    RecommendedStepList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#RecommendedStepList', name: 'RecommendedStepList')
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#RegionList', name: 'RegionList')
    Resource = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#Resource', name: 'Resource', traits: {"smithy.api#length" => {"max" => 2048}})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#pattern" => "^arn:[^:]*:[^:]*:[^:]*:[^:]*:.*$"})
    ResourceArnsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ResourceArnsList', name: 'ResourceArnsList')
    ResourceControlPolicyRestriction = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ResourceControlPolicyRestriction', name: 'ResourceControlPolicyRestriction', traits: {"smithy.api#enum" => [{"value" => "APPLICABLE", "name" => "APPLICABLE"}, {"value" => "FAILED_TO_EVALUATE_RCP", "name" => "FAILED_TO_EVALUATE_RCP"}, {"value" => "NOT_APPLICABLE", "name" => "NOT_APPLICABLE"}, {"value" => "APPLIED", "name" => "APPLIED"}]})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ResourceType', name: 'ResourceType', traits: {"smithy.api#enum" => [{"value" => "AWS::S3::Bucket", "name" => "AWS_S3_BUCKET"}, {"value" => "AWS::IAM::Role", "name" => "AWS_IAM_ROLE"}, {"value" => "AWS::SQS::Queue", "name" => "AWS_SQS_QUEUE"}, {"value" => "AWS::Lambda::Function", "name" => "AWS_LAMBDA_FUNCTION"}, {"value" => "AWS::Lambda::LayerVersion", "name" => "AWS_LAMBDA_LAYERVERSION"}, {"value" => "AWS::KMS::Key", "name" => "AWS_KMS_KEY"}, {"value" => "AWS::SecretsManager::Secret", "name" => "AWS_SECRETSMANAGER_SECRET"}, {"value" => "AWS::EFS::FileSystem", "name" => "AWS_EFS_FILESYSTEM"}, {"value" => "AWS::EC2::Snapshot", "name" => "AWS_EC2_SNAPSHOT"}, {"value" => "AWS::ECR::Repository", "name" => "AWS_ECR_REPOSITORY"}, {"value" => "AWS::RDS::DBSnapshot", "name" => "AWS_RDS_DBSNAPSHOT"}, {"value" => "AWS::RDS::DBClusterSnapshot", "name" => "AWS_RDS_DBCLUSTERSNAPSHOT"}, {"value" => "AWS::SNS::Topic", "name" => "AWS_SNS_TOPIC"}, {"value" => "AWS::S3Express::DirectoryBucket", "name" => "AWS_S3EXPRESS_DIRECTORYBUCKET"}, {"value" => "AWS::DynamoDB::Table", "name" => "AWS_DYNAMODB_TABLE"}, {"value" => "AWS::DynamoDB::Stream", "name" => "AWS_DYNAMODB_STREAM"}, {"value" => "AWS::IAM::User", "name" => "AWS_IAM_USER"}]})
    ResourceTypeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ResourceTypeDetails', name: 'ResourceTypeDetails')
    ResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ResourceTypeList', name: 'ResourceTypeList')
    ResourceTypeStatisticsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#ResourceTypeStatisticsMap', name: 'ResourceTypeStatisticsMap')
    ResourcesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ResourcesList', name: 'ResourcesList')
    RetiringPrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RetiringPrincipal', name: 'RetiringPrincipal')
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RoleArn', name: 'RoleArn', traits: {"smithy.api#pattern" => "^arn:[^:]*:iam::[^:]*:role/.{1,576}$"})
    S3AccessPointConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#S3AccessPointConfiguration', name: 'S3AccessPointConfiguration')
    S3AccessPointConfigurationsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#S3AccessPointConfigurationsMap', name: 'S3AccessPointConfigurationsMap')
    S3BucketAclGrantConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#S3BucketAclGrantConfiguration', name: 'S3BucketAclGrantConfiguration')
    S3BucketAclGrantConfigurationsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#S3BucketAclGrantConfigurationsList', name: 'S3BucketAclGrantConfigurationsList')
    S3BucketConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#S3BucketConfiguration', name: 'S3BucketConfiguration')
    S3BucketPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#S3BucketPolicy', name: 'S3BucketPolicy')
    S3ExpressDirectoryAccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#S3ExpressDirectoryAccessPointArn', name: 'S3ExpressDirectoryAccessPointArn', traits: {"smithy.api#pattern" => "^arn:[^:]*:s3express:[^:]*:[^:]*:accesspoint/.*$"})
    S3ExpressDirectoryAccessPointConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#S3ExpressDirectoryAccessPointConfiguration', name: 'S3ExpressDirectoryAccessPointConfiguration')
    S3ExpressDirectoryAccessPointConfigurationsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#S3ExpressDirectoryAccessPointConfigurationsMap', name: 'S3ExpressDirectoryAccessPointConfigurationsMap')
    S3ExpressDirectoryBucketConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#S3ExpressDirectoryBucketConfiguration', name: 'S3ExpressDirectoryBucketConfiguration')
    S3ExpressDirectoryBucketPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#S3ExpressDirectoryBucketPolicy', name: 'S3ExpressDirectoryBucketPolicy')
    S3PublicAccessBlockConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#S3PublicAccessBlockConfiguration', name: 'S3PublicAccessBlockConfiguration')
    SecretsManagerSecretConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#SecretsManagerSecretConfiguration', name: 'SecretsManagerSecretConfiguration')
    SecretsManagerSecretKmsId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#SecretsManagerSecretKmsId', name: 'SecretsManagerSecretKmsId')
    SecretsManagerSecretPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#SecretsManagerSecretPolicy', name: 'SecretsManagerSecretPolicy')
    ServiceControlPolicyRestriction = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ServiceControlPolicyRestriction', name: 'ServiceControlPolicyRestriction', traits: {"smithy.api#enum" => [{"value" => "APPLICABLE", "name" => "APPLICABLE"}, {"value" => "FAILED_TO_EVALUATE_SCP", "name" => "FAILED_TO_EVALUATE_SCP"}, {"value" => "NOT_APPLICABLE", "name" => "NOT_APPLICABLE"}, {"value" => "APPLIED", "name" => "APPLIED"}]})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SharedViaList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#SharedViaList', name: 'SharedViaList')
    SnsTopicConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#SnsTopicConfiguration', name: 'SnsTopicConfiguration')
    SnsTopicPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#SnsTopicPolicy', name: 'SnsTopicPolicy', traits: {"smithy.api#length" => {"max" => 30720}})
    SortCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#SortCriteria', name: 'SortCriteria')
    Span = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#Span', name: 'Span')
    SqsQueueConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#SqsQueueConfiguration', name: 'SqsQueueConfiguration')
    SqsQueuePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#SqsQueuePolicy', name: 'SqsQueuePolicy')
    StartPolicyGenerationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#StartPolicyGenerationInput', name: 'StartPolicyGenerationInput')
    StartPolicyGenerationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#StartPolicyGenerationOutput', name: 'StartPolicyGenerationOutput')
    StartResourceScanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#StartResourceScanInput', name: 'StartResourceScanInput')
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#Status', name: 'Status', traits: {"smithy.api#enum" => [{"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}]})
    StatusReason = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#StatusReason', name: 'StatusReason')
    Substring = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#Substring', name: 'Substring')
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#TagKeys', name: 'TagKeys')
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#TagResourceOutput', name: 'TagResourceOutput')
    TagsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#TagsList', name: 'TagsList')
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#TagsMap', name: 'TagsMap')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.accessanalyzer#Timestamp', name: 'Timestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#Token', name: 'Token')
    Trail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#Trail', name: 'Trail')
    TrailList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#TrailList', name: 'TrailList')
    TrailProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#TrailProperties', name: 'TrailProperties')
    TrailPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#TrailPropertiesList', name: 'TrailPropertiesList')
    Type = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#Type', name: 'Type', traits: {"smithy.api#enum" => [{"value" => "ACCOUNT", "name" => "ACCOUNT"}, {"value" => "ORGANIZATION", "name" => "ORGANIZATION"}, {"value" => "ACCOUNT_UNUSED_ACCESS", "name" => "ACCOUNT_UNUSED_ACCESS"}, {"value" => "ORGANIZATION_UNUSED_ACCESS", "name" => "ORGANIZATION_UNUSED_ACCESS"}, {"value" => "ACCOUNT_INTERNAL_ACCESS", "name" => "ACCOUNT_INTERNAL_ACCESS"}, {"value" => "ORGANIZATION_INTERNAL_ACCESS", "name" => "ORGANIZATION_INTERNAL_ACCESS"}]})
    UnprocessableEntityException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnprocessableEntityException', name: 'UnprocessableEntityException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422, "smithy.api#retryable" => {}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UntagResourceOutput', name: 'UntagResourceOutput')
    UnusedAccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedAccessConfiguration', name: 'UnusedAccessConfiguration')
    UnusedAccessFindingsStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedAccessFindingsStatistics', name: 'UnusedAccessFindingsStatistics')
    UnusedAccessTypeStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedAccessTypeStatistics', name: 'UnusedAccessTypeStatistics')
    UnusedAccessTypeStatisticsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#UnusedAccessTypeStatisticsList', name: 'UnusedAccessTypeStatisticsList')
    UnusedAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedAction', name: 'UnusedAction')
    UnusedActionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#UnusedActionList', name: 'UnusedActionList')
    UnusedIamRoleDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedIamRoleDetails', name: 'UnusedIamRoleDetails')
    UnusedIamUserAccessKeyDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedIamUserAccessKeyDetails', name: 'UnusedIamUserAccessKeyDetails')
    UnusedIamUserPasswordDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedIamUserPasswordDetails', name: 'UnusedIamUserPasswordDetails')
    UnusedPermissionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedPermissionDetails', name: 'UnusedPermissionDetails')
    UnusedPermissionsRecommendedStep = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedPermissionsRecommendedStep', name: 'UnusedPermissionsRecommendedStep')
    UpdateAnalyzerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UpdateAnalyzerRequest', name: 'UpdateAnalyzerRequest')
    UpdateAnalyzerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UpdateAnalyzerResponse', name: 'UpdateAnalyzerResponse')
    UpdateArchiveRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UpdateArchiveRuleInput', name: 'UpdateArchiveRuleInput')
    UpdateFindingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UpdateFindingsInput', name: 'UpdateFindingsInput')
    ValidatePolicyFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ValidatePolicyFinding', name: 'ValidatePolicyFinding')
    ValidatePolicyFindingList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ValidatePolicyFindingList', name: 'ValidatePolicyFindingList')
    ValidatePolicyFindingType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ValidatePolicyFindingType', name: 'ValidatePolicyFindingType', traits: {"smithy.api#enum" => [{"value" => "ERROR", "name" => "ERROR"}, {"value" => "SECURITY_WARNING", "name" => "SECURITY_WARNING"}, {"value" => "SUGGESTION", "name" => "SUGGESTION"}, {"value" => "WARNING", "name" => "WARNING"}]})
    ValidatePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ValidatePolicyInput', name: 'ValidatePolicyInput')
    ValidatePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ValidatePolicyOutput', name: 'ValidatePolicyOutput')
    ValidatePolicyResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ValidatePolicyResourceType', name: 'ValidatePolicyResourceType', traits: {"smithy.api#enum" => [{"value" => "AWS::S3::Bucket", "name" => "S3_BUCKET"}, {"value" => "AWS::S3::AccessPoint", "name" => "S3_ACCESS_POINT"}, {"value" => "AWS::S3::MultiRegionAccessPoint", "name" => "S3_MULTI_REGION_ACCESS_POINT"}, {"value" => "AWS::S3ObjectLambda::AccessPoint", "name" => "S3_OBJECT_LAMBDA_ACCESS_POINT"}, {"value" => "AWS::IAM::AssumeRolePolicyDocument", "name" => "ROLE_TRUST"}, {"value" => "AWS::DynamoDB::Table", "name" => "DYNAMODB_TABLE"}]})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}, {"value" => "notSupported", "name" => "NOT_SUPPORTED"}]})
    ValueList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ValueList', name: 'ValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    VpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#VpcConfiguration', name: 'VpcConfiguration')
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#VpcId', name: 'VpcId', traits: {"smithy.api#pattern" => "^vpc-([0-9a-f]){8}(([0-9a-f]){9})?$"})

    Access.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsList, location_name: 'actions', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => [], "smithy.api#length" => {"max" => 100}}))
    Access.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcesList, location_name: 'resources', traits: {"smithy.api#default" => [], "smithy.api#length" => {"max" => 100}}))
    Access.type = Types::Access
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Access)
    AccessPreview.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    AccessPreview.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#required" => {}}))
    AccessPreview.add_member(:configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationsMap, location_name: 'configurations', traits: {"smithy.api#required" => {}}))
    AccessPreview.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    AccessPreview.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    AccessPreview.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewStatusReason, location_name: 'statusReason'))
    AccessPreview.type = Types::AccessPreview
    AccessPreviewFinding.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewFindingId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:existing_finding_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId, location_name: 'existingFindingId'))
    AccessPreviewFinding.add_member(:existing_finding_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatus, location_name: 'existingFindingStatus'))
    AccessPreviewFinding.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalMap, location_name: 'principal'))
    AccessPreviewFinding.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'action'))
    AccessPreviewFinding.add_member(:condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionKeyMap, location_name: 'condition'))
    AccessPreviewFinding.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resource'))
    AccessPreviewFinding.add_member(:is_public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isPublic'))
    AccessPreviewFinding.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:change_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingChangeType, location_name: 'changeType', traits: {"smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:resource_owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceOwnerAccount', traits: {"smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'error'))
    AccessPreviewFinding.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSourceList, location_name: 'sources'))
    AccessPreviewFinding.add_member(:resource_control_policy_restriction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceControlPolicyRestriction, location_name: 'resourceControlPolicyRestriction'))
    AccessPreviewFinding.type = Types::AccessPreviewFinding
    AccessPreviewFindingsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewFinding)
    AccessPreviewStatusReason.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewStatusReasonCode, location_name: 'code', traits: {"smithy.api#required" => {}}))
    AccessPreviewStatusReason.type = Types::AccessPreviewStatusReason
    AccessPreviewSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    AccessPreviewSummary.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#required" => {}}))
    AccessPreviewSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    AccessPreviewSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    AccessPreviewSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewStatusReason, location_name: 'statusReason'))
    AccessPreviewSummary.type = Types::AccessPreviewSummary
    AccessPreviewsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewSummary)
    AccountAggregations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingAggregationAccountDetails)
    AccountIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    AclGrantee.add_member(:id, Types::AclGrantee::Id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AclCanonicalId, location_name: 'id'))
    AclGrantee.add_member(:uri, Types::AclGrantee::Uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AclUri, location_name: 'uri'))
    AclGrantee.add_member(:unknown, Types::AclGrantee::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AclGrantee.type = Types::AclGrantee
    ActionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ActionsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Action)
    AnalysisRule.add_member(:exclusions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleCriteriaList, location_name: 'exclusions'))
    AnalysisRule.type = Types::AnalysisRule
    AnalysisRuleCriteria.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdsList, location_name: 'accountIds'))
    AnalysisRuleCriteria.add_member(:resource_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsList, location_name: 'resourceTags'))
    AnalysisRuleCriteria.type = Types::AnalysisRuleCriteria
    AnalysisRuleCriteriaList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleCriteria)
    AnalyzedResource.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    AnalyzedResource.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    AnalyzedResource.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    AnalyzedResource.add_member(:analyzed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'analyzedAt', traits: {"smithy.api#required" => {}}))
    AnalyzedResource.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    AnalyzedResource.add_member(:is_public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isPublic', traits: {"smithy.api#required" => {}}))
    AnalyzedResource.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'actions'))
    AnalyzedResource.add_member(:shared_via, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharedViaList, location_name: 'sharedVia'))
    AnalyzedResource.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatus, location_name: 'status'))
    AnalyzedResource.add_member(:resource_owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceOwnerAccount', traits: {"smithy.api#required" => {}}))
    AnalyzedResource.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'error'))
    AnalyzedResource.type = Types::AnalyzedResource
    AnalyzedResourceSummary.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    AnalyzedResourceSummary.add_member(:resource_owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceOwnerAccount', traits: {"smithy.api#required" => {}}))
    AnalyzedResourceSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    AnalyzedResourceSummary.type = Types::AnalyzedResourceSummary
    AnalyzedResourcesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzedResourceSummary)
    AnalyzerConfiguration.add_member(:unused_access, Types::AnalyzerConfiguration::UnusedAccess, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedAccessConfiguration, location_name: 'unusedAccess'))
    AnalyzerConfiguration.add_member(:internal_access, Types::AnalyzerConfiguration::InternalAccess, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessConfiguration, location_name: 'internalAccess'))
    AnalyzerConfiguration.add_member(:unknown, Types::AnalyzerConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    AnalyzerConfiguration.type = Types::AnalyzerConfiguration
    AnalyzerSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    AnalyzerSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#required" => {}}))
    AnalyzerSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type', traits: {"smithy.api#required" => {}}))
    AnalyzerSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    AnalyzerSummary.add_member(:last_resource_analyzed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'lastResourceAnalyzed'))
    AnalyzerSummary.add_member(:last_resource_analyzed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastResourceAnalyzedAt'))
    AnalyzerSummary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags'))
    AnalyzerSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    AnalyzerSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason, location_name: 'statusReason'))
    AnalyzerSummary.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerConfiguration, location_name: 'configuration'))
    AnalyzerSummary.type = Types::AnalyzerSummary
    AnalyzersList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerSummary)
    ApplyArchiveRuleInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#required" => {}}))
    ApplyArchiveRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ruleName', traits: {"smithy.api#required" => {}}))
    ApplyArchiveRuleInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    ApplyArchiveRuleInput.type = Types::ApplyArchiveRuleInput
    ArchiveRuleSummary.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ruleName', traits: {"smithy.api#required" => {}}))
    ArchiveRuleSummary.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: 'filter', traits: {"smithy.api#required" => {}}))
    ArchiveRuleSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    ArchiveRuleSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    ArchiveRuleSummary.type = Types::ArchiveRuleSummary
    ArchiveRulesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveRuleSummary)
    CancelPolicyGenerationInput.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelPolicyGenerationInput.type = Types::CancelPolicyGenerationInput
    CancelPolicyGenerationOutput.type = Types::CancelPolicyGenerationOutput
    CheckAccessNotGrantedRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessCheckPolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#required" => {}}))
    CheckAccessNotGrantedRequest.add_member(:access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessList, location_name: 'access', traits: {"smithy.api#length" => {"max" => 1}, "smithy.api#required" => {}}))
    CheckAccessNotGrantedRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessCheckPolicyType, location_name: 'policyType', traits: {"smithy.api#required" => {}}))
    CheckAccessNotGrantedRequest.type = Types::CheckAccessNotGrantedRequest
    CheckAccessNotGrantedResponse.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckAccessNotGrantedResult, location_name: 'result'))
    CheckAccessNotGrantedResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    CheckAccessNotGrantedResponse.add_member(:reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReasonSummaryList, location_name: 'reasons'))
    CheckAccessNotGrantedResponse.type = Types::CheckAccessNotGrantedResponse
    CheckNoNewAccessRequest.add_member(:new_policy_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessCheckPolicyDocument, location_name: 'newPolicyDocument', traits: {"smithy.api#required" => {}}))
    CheckNoNewAccessRequest.add_member(:existing_policy_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessCheckPolicyDocument, location_name: 'existingPolicyDocument', traits: {"smithy.api#required" => {}}))
    CheckNoNewAccessRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessCheckPolicyType, location_name: 'policyType', traits: {"smithy.api#required" => {}}))
    CheckNoNewAccessRequest.type = Types::CheckNoNewAccessRequest
    CheckNoNewAccessResponse.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckNoNewAccessResult, location_name: 'result'))
    CheckNoNewAccessResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    CheckNoNewAccessResponse.add_member(:reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReasonSummaryList, location_name: 'reasons'))
    CheckNoNewAccessResponse.type = Types::CheckNoNewAccessResponse
    CheckNoPublicAccessRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessCheckPolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#required" => {}}))
    CheckNoPublicAccessRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessCheckResourceType, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    CheckNoPublicAccessRequest.type = Types::CheckNoPublicAccessRequest
    CheckNoPublicAccessResponse.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckNoPublicAccessResult, location_name: 'result'))
    CheckNoPublicAccessResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    CheckNoPublicAccessResponse.add_member(:reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReasonSummaryList, location_name: 'reasons'))
    CheckNoPublicAccessResponse.type = Types::CheckNoPublicAccessResponse
    CloudTrailDetails.add_member(:trails, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrailList, location_name: 'trails', traits: {"smithy.api#required" => {}}))
    CloudTrailDetails.add_member(:access_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'accessRole', traits: {"smithy.api#required" => {}}))
    CloudTrailDetails.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    CloudTrailDetails.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime'))
    CloudTrailDetails.type = Types::CloudTrailDetails
    CloudTrailProperties.add_member(:trail_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrailPropertiesList, location_name: 'trailProperties', traits: {"smithy.api#required" => {}}))
    CloudTrailProperties.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#required" => {}}))
    CloudTrailProperties.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#required" => {}}))
    CloudTrailProperties.type = Types::CloudTrailProperties
    ConditionKeyMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ConditionKeyMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    Configuration.add_member(:ebs_snapshot, Types::Configuration::EbsSnapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsSnapshotConfiguration, location_name: 'ebsSnapshot'))
    Configuration.add_member(:ecr_repository, Types::Configuration::EcrRepository, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcrRepositoryConfiguration, location_name: 'ecrRepository'))
    Configuration.add_member(:iam_role, Types::Configuration::IamRole, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleConfiguration, location_name: 'iamRole'))
    Configuration.add_member(:efs_file_system, Types::Configuration::EfsFileSystem, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EfsFileSystemConfiguration, location_name: 'efsFileSystem'))
    Configuration.add_member(:kms_key, Types::Configuration::KmsKey, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyConfiguration, location_name: 'kmsKey'))
    Configuration.add_member(:rds_db_cluster_snapshot, Types::Configuration::RdsDbClusterSnapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotConfiguration, location_name: 'rdsDbClusterSnapshot'))
    Configuration.add_member(:rds_db_snapshot, Types::Configuration::RdsDbSnapshot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbSnapshotConfiguration, location_name: 'rdsDbSnapshot'))
    Configuration.add_member(:secrets_manager_secret, Types::Configuration::SecretsManagerSecret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerSecretConfiguration, location_name: 'secretsManagerSecret'))
    Configuration.add_member(:s3_bucket, Types::Configuration::S3Bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketConfiguration, location_name: 's3Bucket'))
    Configuration.add_member(:sns_topic, Types::Configuration::SnsTopic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicConfiguration, location_name: 'snsTopic'))
    Configuration.add_member(:sqs_queue, Types::Configuration::SqsQueue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqsQueueConfiguration, location_name: 'sqsQueue'))
    Configuration.add_member(:s3_express_directory_bucket, Types::Configuration::S3ExpressDirectoryBucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ExpressDirectoryBucketConfiguration, location_name: 's3ExpressDirectoryBucket'))
    Configuration.add_member(:dynamodb_stream, Types::Configuration::DynamodbStream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamodbStreamConfiguration, location_name: 'dynamodbStream'))
    Configuration.add_member(:dynamodb_table, Types::Configuration::DynamodbTable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamodbTableConfiguration, location_name: 'dynamodbTable'))
    Configuration.add_member(:unknown, Types::Configuration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Configuration.type = Types::Configuration
    ConfigurationsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationsMapKey)
    ConfigurationsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Configuration)
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateAccessPreviewInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#required" => {}}))
    CreateAccessPreviewInput.add_member(:configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationsMap, location_name: 'configurations', traits: {"smithy.api#required" => {}}))
    CreateAccessPreviewInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAccessPreviewInput.type = Types::CreateAccessPreviewInput
    CreateAccessPreviewOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    CreateAccessPreviewOutput.type = Types::CreateAccessPreviewOutput
    CreateAnalyzerInput.add_member(:analyzer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#required" => {}}))
    CreateAnalyzerInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type', traits: {"smithy.api#required" => {}}))
    CreateAnalyzerInput.add_member(:archive_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InlineArchiveRulesList, location_name: 'archiveRules'))
    CreateAnalyzerInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags'))
    CreateAnalyzerInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAnalyzerInput.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerConfiguration, location_name: 'configuration'))
    CreateAnalyzerInput.type = Types::CreateAnalyzerInput
    CreateAnalyzerOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'arn'))
    CreateAnalyzerOutput.type = Types::CreateAnalyzerOutput
    CreateArchiveRuleInput.add_member(:analyzer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateArchiveRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ruleName', traits: {"smithy.api#required" => {}}))
    CreateArchiveRuleInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: 'filter', traits: {"smithy.api#required" => {}}))
    CreateArchiveRuleInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateArchiveRuleInput.type = Types::CreateArchiveRuleInput
    Criterion.add_member(:eq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueList, location_name: 'eq'))
    Criterion.add_member(:neq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueList, location_name: 'neq'))
    Criterion.add_member(:contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueList, location_name: 'contains'))
    Criterion.add_member(:exists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'exists'))
    Criterion.type = Types::Criterion
    DeleteAnalyzerInput.add_member(:analyzer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAnalyzerInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteAnalyzerInput.type = Types::DeleteAnalyzerInput
    DeleteArchiveRuleInput.add_member(:analyzer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteArchiveRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ruleName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteArchiveRuleInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteArchiveRuleInput.type = Types::DeleteArchiveRuleInput
    DynamodbStreamConfiguration.add_member(:stream_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamodbStreamPolicy, location_name: 'streamPolicy'))
    DynamodbStreamConfiguration.type = Types::DynamodbStreamConfiguration
    DynamodbTableConfiguration.add_member(:table_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DynamodbTablePolicy, location_name: 'tablePolicy'))
    DynamodbTableConfiguration.type = Types::DynamodbTableConfiguration
    EbsGroupList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsGroup)
    EbsSnapshotConfiguration.add_member(:user_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsUserIdList, location_name: 'userIds'))
    EbsSnapshotConfiguration.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsGroupList, location_name: 'groups'))
    EbsSnapshotConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsSnapshotDataEncryptionKeyId, location_name: 'kmsKeyId'))
    EbsSnapshotConfiguration.type = Types::EbsSnapshotConfiguration
    EbsUserIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsUserId)
    EcrRepositoryConfiguration.add_member(:repository_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcrRepositoryPolicy, location_name: 'repositoryPolicy'))
    EcrRepositoryConfiguration.type = Types::EcrRepositoryConfiguration
    EfsFileSystemConfiguration.add_member(:file_system_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EfsFileSystemPolicy, location_name: 'fileSystemPolicy'))
    EfsFileSystemConfiguration.type = Types::EfsFileSystemConfiguration
    ExternalAccessDetails.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'action'))
    ExternalAccessDetails.add_member(:condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionKeyMap, location_name: 'condition', traits: {"smithy.api#required" => {}}))
    ExternalAccessDetails.add_member(:is_public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isPublic'))
    ExternalAccessDetails.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalMap, location_name: 'principal'))
    ExternalAccessDetails.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSourceList, location_name: 'sources'))
    ExternalAccessDetails.add_member(:resource_control_policy_restriction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceControlPolicyRestriction, location_name: 'resourceControlPolicyRestriction'))
    ExternalAccessDetails.type = Types::ExternalAccessDetails
    ExternalAccessFindingsStatistics.add_member(:resource_type_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeStatisticsMap, location_name: 'resourceTypeStatistics'))
    ExternalAccessFindingsStatistics.add_member(:total_active_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalActiveFindings'))
    ExternalAccessFindingsStatistics.add_member(:total_archived_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalArchivedFindings'))
    ExternalAccessFindingsStatistics.add_member(:total_resolved_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalResolvedFindings'))
    ExternalAccessFindingsStatistics.type = Types::ExternalAccessFindingsStatistics
    FilterCriteriaMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    FilterCriteriaMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Criterion)
    Finding.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    Finding.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalMap, location_name: 'principal'))
    Finding.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'action'))
    Finding.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resource'))
    Finding.add_member(:is_public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isPublic'))
    Finding.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    Finding.add_member(:condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionKeyMap, location_name: 'condition', traits: {"smithy.api#required" => {}}))
    Finding.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    Finding.add_member(:analyzed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'analyzedAt', traits: {"smithy.api#required" => {}}))
    Finding.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    Finding.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    Finding.add_member(:resource_owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceOwnerAccount', traits: {"smithy.api#required" => {}}))
    Finding.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'error'))
    Finding.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSourceList, location_name: 'sources'))
    Finding.add_member(:resource_control_policy_restriction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceControlPolicyRestriction, location_name: 'resourceControlPolicyRestriction'))
    Finding.type = Types::Finding
    FindingAggregationAccountDetails.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'account'))
    FindingAggregationAccountDetails.add_member(:number_of_active_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'numberOfActiveFindings'))
    FindingAggregationAccountDetails.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingAggregationAccountDetailsMap, location_name: 'details'))
    FindingAggregationAccountDetails.type = Types::FindingAggregationAccountDetails
    FindingAggregationAccountDetailsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    FindingAggregationAccountDetailsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer)
    FindingDetails.add_member(:internal_access_details, Types::FindingDetails::InternalAccessDetails, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessDetails, location_name: 'internalAccessDetails'))
    FindingDetails.add_member(:external_access_details, Types::FindingDetails::ExternalAccessDetails, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalAccessDetails, location_name: 'externalAccessDetails'))
    FindingDetails.add_member(:unused_permission_details, Types::FindingDetails::UnusedPermissionDetails, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedPermissionDetails, location_name: 'unusedPermissionDetails'))
    FindingDetails.add_member(:unused_iam_user_access_key_details, Types::FindingDetails::UnusedIamUserAccessKeyDetails, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedIamUserAccessKeyDetails, location_name: 'unusedIamUserAccessKeyDetails'))
    FindingDetails.add_member(:unused_iam_role_details, Types::FindingDetails::UnusedIamRoleDetails, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedIamRoleDetails, location_name: 'unusedIamRoleDetails'))
    FindingDetails.add_member(:unused_iam_user_password_details, Types::FindingDetails::UnusedIamUserPasswordDetails, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedIamUserPasswordDetails, location_name: 'unusedIamUserPasswordDetails'))
    FindingDetails.add_member(:unknown, Types::FindingDetails::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    FindingDetails.type = Types::FindingDetails
    FindingDetailsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingDetails)
    FindingIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId)
    FindingSource.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSourceType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    FindingSource.add_member(:detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSourceDetail, location_name: 'detail'))
    FindingSource.type = Types::FindingSource
    FindingSourceDetail.add_member(:access_point_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'accessPointArn'))
    FindingSourceDetail.add_member(:access_point_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'accessPointAccount'))
    FindingSourceDetail.type = Types::FindingSourceDetail
    FindingSourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSource)
    FindingSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalMap, location_name: 'principal'))
    FindingSummary.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'action'))
    FindingSummary.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resource'))
    FindingSummary.add_member(:is_public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isPublic'))
    FindingSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionKeyMap, location_name: 'condition', traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:analyzed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'analyzedAt', traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:resource_owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceOwnerAccount', traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'error'))
    FindingSummary.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSourceList, location_name: 'sources'))
    FindingSummary.add_member(:resource_control_policy_restriction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceControlPolicyRestriction, location_name: 'resourceControlPolicyRestriction'))
    FindingSummary.type = Types::FindingSummary
    FindingSummaryV2.add_member(:analyzed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'analyzedAt', traits: {"smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'error'))
    FindingSummaryV2.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resource'))
    FindingSummaryV2.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:resource_owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceOwnerAccount', traits: {"smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:finding_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingType, location_name: 'findingType'))
    FindingSummaryV2.type = Types::FindingSummaryV2
    FindingsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSummary)
    FindingsListV2.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSummaryV2)
    FindingsStatistics.add_member(:external_access_findings_statistics, Types::FindingsStatistics::ExternalAccessFindingsStatistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalAccessFindingsStatistics, location_name: 'externalAccessFindingsStatistics'))
    FindingsStatistics.add_member(:internal_access_findings_statistics, Types::FindingsStatistics::InternalAccessFindingsStatistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessFindingsStatistics, location_name: 'internalAccessFindingsStatistics'))
    FindingsStatistics.add_member(:unused_access_findings_statistics, Types::FindingsStatistics::UnusedAccessFindingsStatistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedAccessFindingsStatistics, location_name: 'unusedAccessFindingsStatistics'))
    FindingsStatistics.add_member(:unknown, Types::FindingsStatistics::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    FindingsStatistics.type = Types::FindingsStatistics
    FindingsStatisticsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsStatistics)
    GenerateFindingRecommendationRequest.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GenerateFindingRecommendationRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    GenerateFindingRecommendationRequest.type = Types::GenerateFindingRecommendationRequest
    GeneratedPolicy.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'policy', traits: {"smithy.api#required" => {}}))
    GeneratedPolicy.type = Types::GeneratedPolicy
    GeneratedPolicyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedPolicy)
    GeneratedPolicyProperties.add_member(:is_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isComplete'))
    GeneratedPolicyProperties.add_member(:principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalArn, location_name: 'principalArn', traits: {"smithy.api#required" => {}}))
    GeneratedPolicyProperties.add_member(:cloud_trail_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailProperties, location_name: 'cloudTrailProperties'))
    GeneratedPolicyProperties.type = Types::GeneratedPolicyProperties
    GeneratedPolicyResult.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedPolicyProperties, location_name: 'properties', traits: {"smithy.api#required" => {}}))
    GeneratedPolicyResult.add_member(:generated_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedPolicyList, location_name: 'generatedPolicies'))
    GeneratedPolicyResult.type = Types::GeneratedPolicyResult
    GetAccessPreviewInput.add_member(:access_preview_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewId, location_name: 'accessPreviewId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessPreviewInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GetAccessPreviewInput.type = Types::GetAccessPreviewInput
    GetAccessPreviewOutput.add_member(:access_preview, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreview, location_name: 'accessPreview', traits: {"smithy.api#required" => {}}))
    GetAccessPreviewOutput.type = Types::GetAccessPreviewOutput
    GetAnalyzedResourceInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GetAnalyzedResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    GetAnalyzedResourceInput.type = Types::GetAnalyzedResourceInput
    GetAnalyzedResourceOutput.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzedResource, location_name: 'resource'))
    GetAnalyzedResourceOutput.type = Types::GetAnalyzedResourceOutput
    GetAnalyzerInput.add_member(:analyzer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnalyzerInput.type = Types::GetAnalyzerInput
    GetAnalyzerOutput.add_member(:analyzer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerSummary, location_name: 'analyzer', traits: {"smithy.api#required" => {}}))
    GetAnalyzerOutput.type = Types::GetAnalyzerOutput
    GetArchiveRuleInput.add_member(:analyzer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetArchiveRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ruleName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetArchiveRuleInput.type = Types::GetArchiveRuleInput
    GetArchiveRuleOutput.add_member(:archive_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveRuleSummary, location_name: 'archiveRule', traits: {"smithy.api#required" => {}}))
    GetArchiveRuleOutput.type = Types::GetArchiveRuleOutput
    GetFindingInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GetFindingInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFindingInput.type = Types::GetFindingInput
    GetFindingOutput.add_member(:finding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Finding, location_name: 'finding'))
    GetFindingOutput.type = Types::GetFindingOutput
    GetFindingRecommendationRequest.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GetFindingRecommendationRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    GetFindingRecommendationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    GetFindingRecommendationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetFindingRecommendationRequest.type = Types::GetFindingRecommendationRequest
    GetFindingRecommendationResponse.add_member(:started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startedAt', traits: {"smithy.api#required" => {}}))
    GetFindingRecommendationResponse.add_member(:completed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'completedAt'))
    GetFindingRecommendationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    GetFindingRecommendationResponse.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationError, location_name: 'error'))
    GetFindingRecommendationResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    GetFindingRecommendationResponse.add_member(:recommended_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedStepList, location_name: 'recommendedSteps'))
    GetFindingRecommendationResponse.add_member(:recommendation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationType, location_name: 'recommendationType', traits: {"smithy.api#required" => {}}))
    GetFindingRecommendationResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetFindingRecommendationResponse.type = Types::GetFindingRecommendationResponse
    GetFindingV2Request.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GetFindingV2Request.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFindingV2Request.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetFindingV2Request.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetFindingV2Request.type = Types::GetFindingV2Request
    GetFindingV2Response.add_member(:analyzed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'analyzedAt', traits: {"smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'error'))
    GetFindingV2Response.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId, location_name: 'id', traits: {"smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    GetFindingV2Response.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resource'))
    GetFindingV2Response.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:resource_owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceOwnerAccount', traits: {"smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:finding_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingDetailsList, location_name: 'findingDetails', traits: {"smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:finding_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingType, location_name: 'findingType'))
    GetFindingV2Response.type = Types::GetFindingV2Response
    GetFindingsStatisticsRequest.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#required" => {}}))
    GetFindingsStatisticsRequest.type = Types::GetFindingsStatisticsRequest
    GetFindingsStatisticsResponse.add_member(:findings_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsStatisticsList, location_name: 'findingsStatistics'))
    GetFindingsStatisticsResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt'))
    GetFindingsStatisticsResponse.type = Types::GetFindingsStatisticsResponse
    GetGeneratedPolicyInput.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGeneratedPolicyInput.add_member(:include_resource_placeholders, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'includeResourcePlaceholders', traits: {"smithy.api#httpQuery" => "includeResourcePlaceholders"}))
    GetGeneratedPolicyInput.add_member(:include_service_level_template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'includeServiceLevelTemplate', traits: {"smithy.api#httpQuery" => "includeServiceLevelTemplate"}))
    GetGeneratedPolicyInput.type = Types::GetGeneratedPolicyInput
    GetGeneratedPolicyOutput.add_member(:job_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDetails, location_name: 'jobDetails', traits: {"smithy.api#required" => {}}))
    GetGeneratedPolicyOutput.add_member(:generated_policy_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedPolicyResult, location_name: 'generatedPolicyResult', traits: {"smithy.api#required" => {}}))
    GetGeneratedPolicyOutput.type = Types::GetGeneratedPolicyOutput
    IamRoleConfiguration.add_member(:trust_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamTrustPolicy, location_name: 'trustPolicy'))
    IamRoleConfiguration.type = Types::IamRoleConfiguration
    InlineArchiveRule.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ruleName', traits: {"smithy.api#required" => {}}))
    InlineArchiveRule.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: 'filter', traits: {"smithy.api#required" => {}}))
    InlineArchiveRule.type = Types::InlineArchiveRule
    InlineArchiveRulesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InlineArchiveRule)
    InternalAccessAnalysisRule.add_member(:inclusions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessAnalysisRuleCriteriaList, location_name: 'inclusions'))
    InternalAccessAnalysisRule.type = Types::InternalAccessAnalysisRule
    InternalAccessAnalysisRuleCriteria.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdsList, location_name: 'accountIds'))
    InternalAccessAnalysisRuleCriteria.add_member(:resource_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: 'resourceTypes'))
    InternalAccessAnalysisRuleCriteria.add_member(:resource_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnsList, location_name: 'resourceArns'))
    InternalAccessAnalysisRuleCriteria.type = Types::InternalAccessAnalysisRuleCriteria
    InternalAccessAnalysisRuleCriteriaList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessAnalysisRuleCriteria)
    InternalAccessConfiguration.add_member(:analysis_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessAnalysisRule, location_name: 'analysisRule'))
    InternalAccessConfiguration.type = Types::InternalAccessConfiguration
    InternalAccessDetails.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'action'))
    InternalAccessDetails.add_member(:condition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionKeyMap, location_name: 'condition'))
    InternalAccessDetails.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalMap, location_name: 'principal'))
    InternalAccessDetails.add_member(:principal_owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'principalOwnerAccount'))
    InternalAccessDetails.add_member(:access_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessType, location_name: 'accessType'))
    InternalAccessDetails.add_member(:principal_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'principalType'))
    InternalAccessDetails.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSourceList, location_name: 'sources'))
    InternalAccessDetails.add_member(:resource_control_policy_restriction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceControlPolicyRestriction, location_name: 'resourceControlPolicyRestriction'))
    InternalAccessDetails.add_member(:service_control_policy_restriction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceControlPolicyRestriction, location_name: 'serviceControlPolicyRestriction'))
    InternalAccessDetails.type = Types::InternalAccessDetails
    InternalAccessFindingsStatistics.add_member(:resource_type_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessResourceTypeStatisticsMap, location_name: 'resourceTypeStatistics'))
    InternalAccessFindingsStatistics.add_member(:total_active_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalActiveFindings'))
    InternalAccessFindingsStatistics.add_member(:total_archived_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalArchivedFindings'))
    InternalAccessFindingsStatistics.add_member(:total_resolved_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalResolvedFindings'))
    InternalAccessFindingsStatistics.type = Types::InternalAccessFindingsStatistics
    InternalAccessResourceTypeDetails.add_member(:total_active_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalActiveFindings'))
    InternalAccessResourceTypeDetails.add_member(:total_resolved_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalResolvedFindings'))
    InternalAccessResourceTypeDetails.add_member(:total_archived_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalArchivedFindings'))
    InternalAccessResourceTypeDetails.type = Types::InternalAccessResourceTypeDetails
    InternalAccessResourceTypeStatisticsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType)
    InternalAccessResourceTypeStatisticsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessResourceTypeDetails)
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    InternetConfiguration.type = Types::InternetConfiguration
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidParameterException.type = Types::InvalidParameterException
    JobDetails.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#required" => {}}))
    JobDetails.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    JobDetails.add_member(:started_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startedOn', traits: {"smithy.api#required" => {}}))
    JobDetails.add_member(:completed_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'completedOn'))
    JobDetails.add_member(:job_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobError, location_name: 'jobError'))
    JobDetails.type = Types::JobDetails
    JobError.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobErrorCode, location_name: 'code', traits: {"smithy.api#required" => {}}))
    JobError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    JobError.type = Types::JobError
    KmsConstraintsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsConstraintsKey)
    KmsConstraintsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsConstraintsValue)
    KmsGrantConfiguration.add_member(:operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsGrantOperationsList, location_name: 'operations', traits: {"smithy.api#required" => {}}))
    KmsGrantConfiguration.add_member(:grantee_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GranteePrincipal, location_name: 'granteePrincipal', traits: {"smithy.api#required" => {}}))
    KmsGrantConfiguration.add_member(:retiring_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetiringPrincipal, location_name: 'retiringPrincipal'))
    KmsGrantConfiguration.add_member(:constraints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsGrantConstraints, location_name: 'constraints'))
    KmsGrantConfiguration.add_member(:issuing_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IssuingAccount, location_name: 'issuingAccount', traits: {"smithy.api#required" => {}}))
    KmsGrantConfiguration.type = Types::KmsGrantConfiguration
    KmsGrantConfigurationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsGrantConfiguration)
    KmsGrantConstraints.add_member(:encryption_context_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsConstraintsMap, location_name: 'encryptionContextEquals'))
    KmsGrantConstraints.add_member(:encryption_context_subset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsConstraintsMap, location_name: 'encryptionContextSubset'))
    KmsGrantConstraints.type = Types::KmsGrantConstraints
    KmsGrantOperationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsGrantOperation)
    KmsKeyConfiguration.add_member(:key_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyPoliciesMap, location_name: 'keyPolicies'))
    KmsKeyConfiguration.add_member(:grants, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsGrantConfigurationsList, location_name: 'grants'))
    KmsKeyConfiguration.type = Types::KmsKeyConfiguration
    KmsKeyPoliciesMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName)
    KmsKeyPoliciesMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyPolicy)
    ListAccessPreviewFindingsInput.add_member(:access_preview_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewId, location_name: 'accessPreviewId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAccessPreviewFindingsInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#required" => {}}))
    ListAccessPreviewFindingsInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: 'filter'))
    ListAccessPreviewFindingsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListAccessPreviewFindingsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults'))
    ListAccessPreviewFindingsInput.type = Types::ListAccessPreviewFindingsInput
    ListAccessPreviewFindingsOutput.add_member(:findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewFindingsList, location_name: 'findings', traits: {"smithy.api#required" => {}}))
    ListAccessPreviewFindingsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListAccessPreviewFindingsOutput.type = Types::ListAccessPreviewFindingsOutput
    ListAccessPreviewsInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    ListAccessPreviewsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessPreviewsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAccessPreviewsInput.type = Types::ListAccessPreviewsInput
    ListAccessPreviewsOutput.add_member(:access_previews, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewsList, location_name: 'accessPreviews', traits: {"smithy.api#required" => {}}))
    ListAccessPreviewsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListAccessPreviewsOutput.type = Types::ListAccessPreviewsOutput
    ListAnalyzedResourcesInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#required" => {}}))
    ListAnalyzedResourcesInput.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType'))
    ListAnalyzedResourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListAnalyzedResourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults'))
    ListAnalyzedResourcesInput.type = Types::ListAnalyzedResourcesInput
    ListAnalyzedResourcesOutput.add_member(:analyzed_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzedResourcesList, location_name: 'analyzedResources', traits: {"smithy.api#required" => {}}))
    ListAnalyzedResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListAnalyzedResourcesOutput.type = Types::ListAnalyzedResourcesOutput
    ListAnalyzersInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAnalyzersInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAnalyzersInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type', traits: {"smithy.api#httpQuery" => "type"}))
    ListAnalyzersInput.type = Types::ListAnalyzersInput
    ListAnalyzersOutput.add_member(:analyzers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzersList, location_name: 'analyzers', traits: {"smithy.api#required" => {}}))
    ListAnalyzersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListAnalyzersOutput.type = Types::ListAnalyzersOutput
    ListArchiveRulesInput.add_member(:analyzer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListArchiveRulesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListArchiveRulesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListArchiveRulesInput.type = Types::ListArchiveRulesInput
    ListArchiveRulesOutput.add_member(:archive_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveRulesList, location_name: 'archiveRules', traits: {"smithy.api#required" => {}}))
    ListArchiveRulesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListArchiveRulesOutput.type = Types::ListArchiveRulesOutput
    ListFindingsInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#required" => {}}))
    ListFindingsInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: 'filter'))
    ListFindingsInput.add_member(:sort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortCriteria, location_name: 'sort'))
    ListFindingsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListFindingsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults'))
    ListFindingsInput.type = Types::ListFindingsInput
    ListFindingsOutput.add_member(:findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsList, location_name: 'findings', traits: {"smithy.api#required" => {}}))
    ListFindingsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListFindingsOutput.type = Types::ListFindingsOutput
    ListFindingsV2Request.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#required" => {}}))
    ListFindingsV2Request.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: 'filter'))
    ListFindingsV2Request.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults'))
    ListFindingsV2Request.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListFindingsV2Request.add_member(:sort, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortCriteria, location_name: 'sort'))
    ListFindingsV2Request.type = Types::ListFindingsV2Request
    ListFindingsV2Response.add_member(:findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsListV2, location_name: 'findings', traits: {"smithy.api#required" => {}}))
    ListFindingsV2Response.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListFindingsV2Response.type = Types::ListFindingsV2Response
    ListPolicyGenerationsInput.add_member(:principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalArn, location_name: 'principalArn', traits: {"smithy.api#httpQuery" => "principalArn"}))
    ListPolicyGenerationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1}}))
    ListPolicyGenerationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPolicyGenerationsInput.type = Types::ListPolicyGenerationsInput
    ListPolicyGenerationsOutput.add_member(:policy_generations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyGenerationList, location_name: 'policyGenerations', traits: {"smithy.api#required" => {}}))
    ListPolicyGenerationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ListPolicyGenerationsOutput.type = Types::ListPolicyGenerationsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    Location.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PathElementList, location_name: 'path', traits: {"smithy.api#required" => {}}))
    Location.add_member(:span, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Span, location_name: 'span', traits: {"smithy.api#required" => {}}))
    Location.type = Types::Location
    LocationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Location)
    NetworkOriginConfiguration.add_member(:vpc_configuration, Types::NetworkOriginConfiguration::VpcConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: 'vpcConfiguration'))
    NetworkOriginConfiguration.add_member(:internet_configuration, Types::NetworkOriginConfiguration::InternetConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternetConfiguration, location_name: 'internetConfiguration'))
    NetworkOriginConfiguration.add_member(:unknown, Types::NetworkOriginConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    NetworkOriginConfiguration.type = Types::NetworkOriginConfiguration
    PathElement.add_member(:index, Types::PathElement::Index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'index'))
    PathElement.add_member(:key, Types::PathElement::Key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'key'))
    PathElement.add_member(:substring, Types::PathElement::Substring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Substring, location_name: 'substring'))
    PathElement.add_member(:value, Types::PathElement::Value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'value'))
    PathElement.add_member(:unknown, Types::PathElement::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    PathElement.type = Types::PathElement
    PathElementList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PathElement)
    PolicyGeneration.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#required" => {}}))
    PolicyGeneration.add_member(:principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalArn, location_name: 'principalArn', traits: {"smithy.api#required" => {}}))
    PolicyGeneration.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    PolicyGeneration.add_member(:started_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startedOn', traits: {"smithy.api#required" => {}}))
    PolicyGeneration.add_member(:completed_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'completedOn'))
    PolicyGeneration.type = Types::PolicyGeneration
    PolicyGenerationDetails.add_member(:principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalArn, location_name: 'principalArn', traits: {"smithy.api#required" => {}}))
    PolicyGenerationDetails.type = Types::PolicyGenerationDetails
    PolicyGenerationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyGeneration)
    Position.add_member(:line, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'line', traits: {"smithy.api#required" => {}}))
    Position.add_member(:column, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'column', traits: {"smithy.api#required" => {}}))
    Position.add_member(:offset, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'offset', traits: {"smithy.api#required" => {}}))
    Position.type = Types::Position
    PrincipalMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    PrincipalMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    RdsDbClusterSnapshotAccountIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotAccountId)
    RdsDbClusterSnapshotAttributeValue.add_member(:account_ids, Types::RdsDbClusterSnapshotAttributeValue::AccountIds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotAccountIdsList, location_name: 'accountIds'))
    RdsDbClusterSnapshotAttributeValue.add_member(:unknown, Types::RdsDbClusterSnapshotAttributeValue::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    RdsDbClusterSnapshotAttributeValue.type = Types::RdsDbClusterSnapshotAttributeValue
    RdsDbClusterSnapshotAttributesMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotAttributeName)
    RdsDbClusterSnapshotAttributesMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotAttributeValue)
    RdsDbClusterSnapshotConfiguration.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotAttributesMap, location_name: 'attributes'))
    RdsDbClusterSnapshotConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotKmsKeyId, location_name: 'kmsKeyId'))
    RdsDbClusterSnapshotConfiguration.type = Types::RdsDbClusterSnapshotConfiguration
    RdsDbSnapshotAccountIdsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbSnapshotAccountId)
    RdsDbSnapshotAttributeValue.add_member(:account_ids, Types::RdsDbSnapshotAttributeValue::AccountIds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbSnapshotAccountIdsList, location_name: 'accountIds'))
    RdsDbSnapshotAttributeValue.add_member(:unknown, Types::RdsDbSnapshotAttributeValue::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    RdsDbSnapshotAttributeValue.type = Types::RdsDbSnapshotAttributeValue
    RdsDbSnapshotAttributesMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbSnapshotAttributeName)
    RdsDbSnapshotAttributesMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbSnapshotAttributeValue)
    RdsDbSnapshotConfiguration.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbSnapshotAttributesMap, location_name: 'attributes'))
    RdsDbSnapshotConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbSnapshotKmsKeyId, location_name: 'kmsKeyId'))
    RdsDbSnapshotConfiguration.type = Types::RdsDbSnapshotConfiguration
    ReasonSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'description'))
    ReasonSummary.add_member(:statement_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'statementIndex'))
    ReasonSummary.add_member(:statement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'statementId'))
    ReasonSummary.type = Types::ReasonSummary
    ReasonSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReasonSummary)
    RecommendationError.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'code', traits: {"smithy.api#required" => {}}))
    RecommendationError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    RecommendationError.type = Types::RecommendationError
    RecommendedStep.add_member(:unused_permissions_recommended_step, Types::RecommendedStep::UnusedPermissionsRecommendedStep, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedPermissionsRecommendedStep, location_name: 'unusedPermissionsRecommendedStep'))
    RecommendedStep.add_member(:unknown, Types::RecommendedStep::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    RecommendedStep.type = Types::RecommendedStep
    RecommendedStepList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedStep)
    RegionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ResourceArnsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTypeDetails.add_member(:total_active_public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalActivePublic'))
    ResourceTypeDetails.add_member(:total_active_cross_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalActiveCrossAccount'))
    ResourceTypeDetails.type = Types::ResourceTypeDetails
    ResourceTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType)
    ResourceTypeStatisticsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType)
    ResourceTypeStatisticsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeDetails)
    ResourcesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    S3AccessPointConfiguration.add_member(:access_point_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointPolicy, location_name: 'accessPointPolicy'))
    S3AccessPointConfiguration.add_member(:public_access_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3PublicAccessBlockConfiguration, location_name: 'publicAccessBlock'))
    S3AccessPointConfiguration.add_member(:network_origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkOriginConfiguration, location_name: 'networkOrigin'))
    S3AccessPointConfiguration.type = Types::S3AccessPointConfiguration
    S3AccessPointConfigurationsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointArn)
    S3AccessPointConfigurationsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessPointConfiguration)
    S3BucketAclGrantConfiguration.add_member(:permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AclPermission, location_name: 'permission', traits: {"smithy.api#required" => {}}))
    S3BucketAclGrantConfiguration.add_member(:grantee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AclGrantee, location_name: 'grantee', traits: {"smithy.api#required" => {}}))
    S3BucketAclGrantConfiguration.type = Types::S3BucketAclGrantConfiguration
    S3BucketAclGrantConfigurationsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketAclGrantConfiguration)
    S3BucketConfiguration.add_member(:bucket_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketPolicy, location_name: 'bucketPolicy'))
    S3BucketConfiguration.add_member(:bucket_acl_grants, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketAclGrantConfigurationsList, location_name: 'bucketAclGrants'))
    S3BucketConfiguration.add_member(:bucket_public_access_block, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3PublicAccessBlockConfiguration, location_name: 'bucketPublicAccessBlock'))
    S3BucketConfiguration.add_member(:access_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessPointConfigurationsMap, location_name: 'accessPoints'))
    S3BucketConfiguration.type = Types::S3BucketConfiguration
    S3ExpressDirectoryAccessPointConfiguration.add_member(:access_point_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointPolicy, location_name: 'accessPointPolicy'))
    S3ExpressDirectoryAccessPointConfiguration.add_member(:network_origin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkOriginConfiguration, location_name: 'networkOrigin'))
    S3ExpressDirectoryAccessPointConfiguration.type = Types::S3ExpressDirectoryAccessPointConfiguration
    S3ExpressDirectoryAccessPointConfigurationsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ExpressDirectoryAccessPointArn)
    S3ExpressDirectoryAccessPointConfigurationsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ExpressDirectoryAccessPointConfiguration)
    S3ExpressDirectoryBucketConfiguration.add_member(:bucket_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ExpressDirectoryBucketPolicy, location_name: 'bucketPolicy'))
    S3ExpressDirectoryBucketConfiguration.add_member(:access_points, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ExpressDirectoryAccessPointConfigurationsMap, location_name: 'accessPoints'))
    S3ExpressDirectoryBucketConfiguration.type = Types::S3ExpressDirectoryBucketConfiguration
    S3PublicAccessBlockConfiguration.add_member(:ignore_public_acls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'ignorePublicAcls', traits: {"smithy.api#required" => {}}))
    S3PublicAccessBlockConfiguration.add_member(:restrict_public_buckets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'restrictPublicBuckets', traits: {"smithy.api#required" => {}}))
    S3PublicAccessBlockConfiguration.type = Types::S3PublicAccessBlockConfiguration
    SecretsManagerSecretConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerSecretKmsId, location_name: 'kmsKeyId'))
    SecretsManagerSecretConfiguration.add_member(:secret_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerSecretPolicy, location_name: 'secretPolicy'))
    SecretsManagerSecretConfiguration.type = Types::SecretsManagerSecretConfiguration
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SharedViaList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    SnsTopicConfiguration.add_member(:topic_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicPolicy, location_name: 'topicPolicy'))
    SnsTopicConfiguration.type = Types::SnsTopicConfiguration
    SortCriteria.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'attributeName'))
    SortCriteria.add_member(:order_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderBy, location_name: 'orderBy'))
    SortCriteria.type = Types::SortCriteria
    Span.add_member(:start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'start', traits: {"smithy.api#required" => {}}))
    Span.add_member(:end, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'end', traits: {"smithy.api#required" => {}}))
    Span.type = Types::Span
    SqsQueueConfiguration.add_member(:queue_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqsQueuePolicy, location_name: 'queuePolicy'))
    SqsQueueConfiguration.type = Types::SqsQueueConfiguration
    StartPolicyGenerationInput.add_member(:policy_generation_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyGenerationDetails, location_name: 'policyGenerationDetails', traits: {"smithy.api#required" => {}}))
    StartPolicyGenerationInput.add_member(:cloud_trail_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailDetails, location_name: 'cloudTrailDetails'))
    StartPolicyGenerationInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartPolicyGenerationInput.type = Types::StartPolicyGenerationInput
    StartPolicyGenerationOutput.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#required" => {}}))
    StartPolicyGenerationOutput.type = Types::StartPolicyGenerationOutput
    StartResourceScanInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#required" => {}}))
    StartResourceScanInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    StartResourceScanInput.add_member(:resource_owner_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceOwnerAccount'))
    StartResourceScanInput.type = Types::StartResourceScanInput
    StatusReason.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReasonCode, location_name: 'code', traits: {"smithy.api#required" => {}}))
    StatusReason.type = Types::StatusReason
    Substring.add_member(:start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'start', traits: {"smithy.api#required" => {}}))
    Substring.add_member(:length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'length', traits: {"smithy.api#required" => {}}))
    Substring.type = Types::Substring
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TagsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap)
    TagsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    Trail.add_member(:cloud_trail_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailArn, location_name: 'cloudTrailArn', traits: {"smithy.api#required" => {}}))
    Trail.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'regions'))
    Trail.add_member(:all_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'allRegions'))
    Trail.type = Types::Trail
    TrailList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Trail)
    TrailProperties.add_member(:cloud_trail_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailArn, location_name: 'cloudTrailArn', traits: {"smithy.api#required" => {}}))
    TrailProperties.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'regions'))
    TrailProperties.add_member(:all_regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'allRegions'))
    TrailProperties.type = Types::TrailProperties
    TrailPropertiesList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TrailProperties)
    UnprocessableEntityException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    UnprocessableEntityException.type = Types::UnprocessableEntityException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UnusedAccessConfiguration.add_member(:unused_access_age, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'unusedAccessAge'))
    UnusedAccessConfiguration.add_member(:analysis_rule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRule, location_name: 'analysisRule'))
    UnusedAccessConfiguration.type = Types::UnusedAccessConfiguration
    UnusedAccessFindingsStatistics.add_member(:unused_access_type_statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedAccessTypeStatisticsList, location_name: 'unusedAccessTypeStatistics'))
    UnusedAccessFindingsStatistics.add_member(:top_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAggregations, location_name: 'topAccounts'))
    UnusedAccessFindingsStatistics.add_member(:total_active_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalActiveFindings'))
    UnusedAccessFindingsStatistics.add_member(:total_archived_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalArchivedFindings'))
    UnusedAccessFindingsStatistics.add_member(:total_resolved_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalResolvedFindings'))
    UnusedAccessFindingsStatistics.type = Types::UnusedAccessFindingsStatistics
    UnusedAccessTypeStatistics.add_member(:unused_access_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'unusedAccessType'))
    UnusedAccessTypeStatistics.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'total'))
    UnusedAccessTypeStatistics.type = Types::UnusedAccessTypeStatistics
    UnusedAccessTypeStatisticsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedAccessTypeStatistics)
    UnusedAction.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'action', traits: {"smithy.api#required" => {}}))
    UnusedAction.add_member(:last_accessed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastAccessed'))
    UnusedAction.type = Types::UnusedAction
    UnusedActionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedAction)
    UnusedIamRoleDetails.add_member(:last_accessed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastAccessed'))
    UnusedIamRoleDetails.type = Types::UnusedIamRoleDetails
    UnusedIamUserAccessKeyDetails.add_member(:access_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'accessKeyId', traits: {"smithy.api#required" => {}}))
    UnusedIamUserAccessKeyDetails.add_member(:last_accessed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastAccessed'))
    UnusedIamUserAccessKeyDetails.type = Types::UnusedIamUserAccessKeyDetails
    UnusedIamUserPasswordDetails.add_member(:last_accessed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastAccessed'))
    UnusedIamUserPasswordDetails.type = Types::UnusedIamUserPasswordDetails
    UnusedPermissionDetails.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedActionList, location_name: 'actions'))
    UnusedPermissionDetails.add_member(:service_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceNamespace', traits: {"smithy.api#required" => {}}))
    UnusedPermissionDetails.add_member(:last_accessed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastAccessed'))
    UnusedPermissionDetails.type = Types::UnusedPermissionDetails
    UnusedPermissionsRecommendedStep.add_member(:policy_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'policyUpdatedAt'))
    UnusedPermissionsRecommendedStep.add_member(:recommended_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedRemediationAction, location_name: 'recommendedAction', traits: {"smithy.api#required" => {}}))
    UnusedPermissionsRecommendedStep.add_member(:recommended_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'recommendedPolicy'))
    UnusedPermissionsRecommendedStep.add_member(:existing_policy_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'existingPolicyId'))
    UnusedPermissionsRecommendedStep.type = Types::UnusedPermissionsRecommendedStep
    UpdateAnalyzerRequest.add_member(:analyzer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAnalyzerRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerConfiguration, location_name: 'configuration'))
    UpdateAnalyzerRequest.type = Types::UpdateAnalyzerRequest
    UpdateAnalyzerResponse.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerConfiguration, location_name: 'configuration'))
    UpdateAnalyzerResponse.type = Types::UpdateAnalyzerResponse
    UpdateArchiveRuleInput.add_member(:analyzer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateArchiveRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ruleName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateArchiveRuleInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: 'filter', traits: {"smithy.api#required" => {}}))
    UpdateArchiveRuleInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateArchiveRuleInput.type = Types::UpdateArchiveRuleInput
    UpdateFindingsInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#required" => {}}))
    UpdateFindingsInput.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatusUpdate, location_name: 'status', traits: {"smithy.api#required" => {}}))
    UpdateFindingsInput.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingIdList, location_name: 'ids'))
    UpdateFindingsInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn'))
    UpdateFindingsInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateFindingsInput.type = Types::UpdateFindingsInput
    ValidatePolicyFinding.add_member(:finding_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'findingDetails', traits: {"smithy.api#required" => {}}))
    ValidatePolicyFinding.add_member(:finding_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePolicyFindingType, location_name: 'findingType', traits: {"smithy.api#required" => {}}))
    ValidatePolicyFinding.add_member(:issue_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IssueCode, location_name: 'issueCode', traits: {"smithy.api#required" => {}}))
    ValidatePolicyFinding.add_member(:learn_more_link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LearnMoreLink, location_name: 'learnMoreLink', traits: {"smithy.api#required" => {}}))
    ValidatePolicyFinding.add_member(:locations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LocationList, location_name: 'locations', traits: {"smithy.api#required" => {}}))
    ValidatePolicyFinding.type = Types::ValidatePolicyFinding
    ValidatePolicyFindingList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePolicyFinding)
    ValidatePolicyInput.add_member(:locale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale'))
    ValidatePolicyInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ValidatePolicyInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ValidatePolicyInput.add_member(:policy_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#required" => {}}))
    ValidatePolicyInput.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'policyType', traits: {"smithy.api#required" => {}}))
    ValidatePolicyInput.add_member(:validate_policy_resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePolicyResourceType, location_name: 'validatePolicyResourceType'))
    ValidatePolicyInput.type = Types::ValidatePolicyInput
    ValidatePolicyOutput.add_member(:findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePolicyFindingList, location_name: 'findings', traits: {"smithy.api#required" => {}}))
    ValidatePolicyOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken'))
    ValidatePolicyOutput.type = Types::ValidatePolicyOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValueList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    VpcConfiguration.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#required" => {}}))
    VpcConfiguration.type = Types::VpcConfiguration

    AccessAnalyzer = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.accessanalyzer#AccessAnalyzer"
      service.name = "AccessAnalyzer"
      service.version = "2019-11-01"
      service.traits = {"aws.api#service" => {"sdkId" => "AccessAnalyzer", "arnNamespace" => "access-analyzer", "cloudTrailEventSource" => "access-analyzer.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "access-analyzer"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Access Analyzer"}
      service.add_operation(:apply_archive_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ApplyArchiveRule"
        operation.name = "ApplyArchiveRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyArchiveRuleInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/archive-rule", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_policy_generation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CancelPolicyGeneration"
        operation.name = "CancelPolicyGeneration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelPolicyGenerationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelPolicyGenerationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/generation/{jobId}", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:check_access_not_granted, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CheckAccessNotGranted"
        operation.name = "CheckAccessNotGranted"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckAccessNotGrantedRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckAccessNotGrantedResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/check-access-not-granted", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:check_no_new_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CheckNoNewAccess"
        operation.name = "CheckNoNewAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckNoNewAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckNoNewAccessResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/check-no-new-access", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:check_no_public_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CheckNoPublicAccess"
        operation.name = "CheckNoPublicAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckNoPublicAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CheckNoPublicAccessResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/check-no-public-access", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:create_access_preview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CreateAccessPreview"
        operation.name = "CreateAccessPreview"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessPreviewInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessPreviewOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/access-preview", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_analyzer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CreateAnalyzer"
        operation.name = "CreateAnalyzer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnalyzerInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnalyzerOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_archive_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CreateArchiveRule"
        operation.name = "CreateArchiveRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateArchiveRuleInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}/archive-rule", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_analyzer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#DeleteAnalyzer"
        operation.name = "DeleteAnalyzer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnalyzerInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}", "method" => "DELETE", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_archive_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#DeleteArchiveRule"
        operation.name = "DeleteArchiveRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteArchiveRuleInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}/archive-rule/{ruleName}", "method" => "DELETE", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:generate_finding_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GenerateFindingRecommendation"
        operation.name = "GenerateFindingRecommendation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateFindingRecommendationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/recommendation/{id}", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:get_access_preview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetAccessPreview"
        operation.name = "GetAccessPreview"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPreviewInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPreviewOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/access-preview/{accessPreviewId}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_analyzed_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetAnalyzedResource"
        operation.name = "GetAnalyzedResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnalyzedResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnalyzedResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzed-resource", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_analyzer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetAnalyzer"
        operation.name = "GetAnalyzer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnalyzerInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnalyzerOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_archive_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetArchiveRule"
        operation.name = "GetArchiveRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetArchiveRuleInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetArchiveRuleOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}/archive-rule/{ruleName}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_finding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetFinding"
        operation.name = "GetFinding"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/finding/{id}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_finding_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetFindingRecommendation"
        operation.name = "GetFindingRecommendation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingRecommendationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingRecommendationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/recommendation/{id}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetFindingRecommendation.new
      end)
      service.add_operation(:get_finding_v2, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetFindingV2"
        operation.name = "GetFindingV2"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingV2Request)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingV2Response)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/findingv2/{id}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetFindingV2.new
      end)
      service.add_operation(:get_findings_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetFindingsStatistics"
        operation.name = "GetFindingsStatistics"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsStatisticsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsStatisticsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/findings/statistics", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:get_generated_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetGeneratedPolicy"
        operation.name = "GetGeneratedPolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGeneratedPolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGeneratedPolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/generation/{jobId}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_access_preview_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListAccessPreviewFindings"
        operation.name = "ListAccessPreviewFindings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPreviewFindingsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPreviewFindingsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/access-preview/{accessPreviewId}", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ListAccessPreviewFindings.new
      end)
      service.add_operation(:list_access_previews, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListAccessPreviews"
        operation.name = "ListAccessPreviews"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPreviewsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPreviewsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/access-preview", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccessPreviews.new
      end)
      service.add_operation(:list_analyzed_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListAnalyzedResources"
        operation.name = "ListAnalyzedResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnalyzedResourcesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnalyzedResourcesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzed-resource", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ListAnalyzedResources.new
      end)
      service.add_operation(:list_analyzers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListAnalyzers"
        operation.name = "ListAnalyzers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnalyzersInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnalyzersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAnalyzers.new
      end)
      service.add_operation(:list_archive_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListArchiveRules"
        operation.name = "ListArchiveRules"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListArchiveRulesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListArchiveRulesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}/archive-rule", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListArchiveRules.new
      end)
      service.add_operation(:list_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListFindings"
        operation.name = "ListFindings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/finding", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ListFindings.new
      end)
      service.add_operation(:list_findings_v2, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListFindingsV2"
        operation.name = "ListFindingsV2"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsV2Request)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsV2Response)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/findingv2", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ListFindingsV2.new
      end)
      service.add_operation(:list_policy_generations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListPolicyGenerations"
        operation.name = "ListPolicyGenerations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPolicyGenerationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPolicyGenerationsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/generation", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPolicyGenerations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_policy_generation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#StartPolicyGeneration"
        operation.name = "StartPolicyGeneration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartPolicyGenerationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartPolicyGenerationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/generation", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_resource_scan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#StartResourceScan"
        operation.name = "StartResourceScan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartResourceScanInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/resource/scan", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_analyzer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#UpdateAnalyzer"
        operation.name = "UpdateAnalyzer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnalyzerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnalyzerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_archive_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#UpdateArchiveRule"
        operation.name = "UpdateArchiveRule"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateArchiveRuleInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}/archive-rule/{ruleName}", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#UpdateFindings"
        operation.name = "UpdateFindings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFindingsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/finding", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:validate_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ValidatePolicy"
        operation.name = "ValidatePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/validation", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ValidatePolicy.new
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
