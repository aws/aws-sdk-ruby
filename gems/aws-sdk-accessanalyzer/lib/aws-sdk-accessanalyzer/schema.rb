# frozen_string_literal: true

# This is generated code!

module Aws::AccessAnalyzer
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Access = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#Access', name: 'Access')
    AccessCheckPolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessCheckPolicyDocument', name: 'AccessCheckPolicyDocument', traits: {"smithy.api#sensitive" => {}})
    AccessCheckPolicyType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessCheckPolicyType', name: 'AccessCheckPolicyType', traits: {"smithy.api#enum" => [{"value" => "IDENTITY_POLICY", "name" => "IDENTITY_POLICY"}, {"value" => "RESOURCE_POLICY", "name" => "RESOURCE_POLICY"}]})
    AccessCheckResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessCheckResourceType', name: 'AccessCheckResourceType', traits: {"smithy.api#enum" => [{"value" => "AWS::DynamoDB::Table", "name" => "DYNAMODB_TABLE"}, {"value" => "AWS::DynamoDB::Stream", "name" => "DYNAMODB_STREAM"}, {"value" => "AWS::EFS::FileSystem", "name" => "EFS_FILESYSTEM"}, {"value" => "AWS::OpenSearchService::Domain", "name" => "OPENSEARCHSERVICE_DOMAIN"}, {"value" => "AWS::Kinesis::Stream", "name" => "KINESIS_DATA_STREAM"}, {"value" => "AWS::Kinesis::StreamConsumer", "name" => "KINESIS_STREAM_CONSUMER"}, {"value" => "AWS::KMS::Key", "name" => "KMS_KEY"}, {"value" => "AWS::Lambda::Function", "name" => "LAMBDA_FUNCTION"}, {"value" => "AWS::S3::Bucket", "name" => "S3_BUCKET"}, {"value" => "AWS::S3::AccessPoint", "name" => "S3_ACCESS_POINT"}, {"value" => "AWS::S3Express::DirectoryBucket", "name" => "S3EXPRESS_DIRECTORYBUCKET"}, {"value" => "AWS::S3::Glacier", "name" => "S3_GLACIER"}, {"value" => "AWS::S3Outposts::Bucket", "name" => "S3_OUTPOSTS_BUCKET"}, {"value" => "AWS::S3Outposts::AccessPoint", "name" => "S3_OUTPOSTS_ACCESS_POINT"}, {"value" => "AWS::SecretsManager::Secret", "name" => "SECRETSMANAGER_SECRET"}, {"value" => "AWS::SNS::Topic", "name" => "SNS_TOPIC"}, {"value" => "AWS::SQS::Queue", "name" => "SQS_QUEUE"}, {"value" => "AWS::IAM::AssumeRolePolicyDocument", "name" => "ROLE_TRUST"}, {"value" => "AWS::S3Tables::TableBucket", "name" => "S3_TABLE_BUCKET"}, {"value" => "AWS::ApiGateway::RestApi", "name" => "API_GATEWAY_REST_API"}, {"value" => "AWS::CodeArtifact::Domain", "name" => "CODE_ARTIFACT_DOMAIN"}, {"value" => "AWS::Backup::BackupVault", "name" => "BACKUP_VAULT"}, {"value" => "AWS::CloudTrail::Dashboard", "name" => "CLOUDTRAIL_DASHBOARD"}, {"value" => "AWS::CloudTrail::EventDataStore", "name" => "CLOUDTRAIL_EVENT_DATA_STORE"}, {"value" => "AWS::S3Tables::Table", "name" => "S3_TABLE"}, {"value" => "AWS::S3Express::AccessPoint", "name" => "S3_EXPRESS_ACCESS_POINT"}]})
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#AccessList', name: 'AccessList')
    AccessPointArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessPointArn', name: 'AccessPointArn', traits: {"smithy.api#pattern" => "^arn:[^:]*:s3:[^:]*:[^:]*:accesspoint/.*$"})
    AccessPointPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessPointPolicy', name: 'AccessPointPolicy')
    AccessPreview = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreview', name: 'AccessPreview')
    AccessPreviewFinding = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewFinding', name: 'AccessPreviewFinding')
    AccessPreviewFindingId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewFindingId', name: 'AccessPreviewFindingId')
    AccessPreviewFindingsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewFindingsList', name: 'AccessPreviewFindingsList')
    AccessPreviewId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewId', name: 'AccessPreviewId', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    AccessPreviewStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewStatus', name: 'AccessPreviewStatus', traits: {"smithy.api#enum" => [{"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "CREATING", "name" => "CREATING"}, {"value" => "FAILED", "name" => "FAILED"}]})
    AccessPreviewStatusReason = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewStatusReason', name: 'AccessPreviewStatusReason')
    AccessPreviewStatusReasonCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewStatusReasonCode', name: 'AccessPreviewStatusReasonCode', traits: {"smithy.api#enum" => [{"value" => "INTERNAL_ERROR", "name" => "INTERNAL_ERROR"}, {"value" => "INVALID_CONFIGURATION", "name" => "INVALID_CONFIGURATION"}]})
    AccessPreviewSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewSummary', name: 'AccessPreviewSummary')
    AccessPreviewsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#AccessPreviewsList', name: 'AccessPreviewsList')
    AccountAggregations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#AccountAggregations', name: 'AccountAggregations', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AccountIdsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#AccountIdsList', name: 'AccountIdsList')
    AclCanonicalId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AclCanonicalId', name: 'AclCanonicalId')
    AclGrantee = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#AclGrantee', name: 'AclGrantee')
    AclPermission = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AclPermission', name: 'AclPermission', traits: {"smithy.api#enum" => [{"value" => "READ", "name" => "READ"}, {"value" => "WRITE", "name" => "WRITE"}, {"value" => "READ_ACP", "name" => "READ_ACP"}, {"value" => "WRITE_ACP", "name" => "WRITE_ACP"}, {"value" => "FULL_CONTROL", "name" => "FULL_CONTROL"}]})
    AclUri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AclUri', name: 'AclUri')
    Action = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#Action', name: 'Action')
    ActionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ActionList', name: 'ActionList')
    ActionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ActionsList', name: 'ActionsList')
    AnalysisRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AnalysisRule', name: 'AnalysisRule')
    AnalysisRuleCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AnalysisRuleCriteria', name: 'AnalysisRuleCriteria')
    AnalysisRuleCriteriaList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#AnalysisRuleCriteriaList', name: 'AnalysisRuleCriteriaList')
    AnalyzedResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AnalyzedResource', name: 'AnalyzedResource')
    AnalyzedResourceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AnalyzedResourceSummary', name: 'AnalyzedResourceSummary')
    AnalyzedResourcesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#AnalyzedResourcesList', name: 'AnalyzedResourcesList')
    AnalyzerArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AnalyzerArn', name: 'AnalyzerArn', traits: {"smithy.api#pattern" => "^[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:analyzer/.{1,255}$"})
    AnalyzerConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#AnalyzerConfiguration', name: 'AnalyzerConfiguration')
    AnalyzerStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#AnalyzerStatus', name: 'AnalyzerStatus', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "CREATING", "name" => "CREATING"}, {"value" => "DISABLED", "name" => "DISABLED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    AnalyzerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#AnalyzerSummary', name: 'AnalyzerSummary')
    AnalyzersList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#AnalyzersList', name: 'AnalyzersList')
    ApplyArchiveRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ApplyArchiveRuleInput', name: 'ApplyArchiveRuleInput')
    ArchiveRuleSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ArchiveRuleSummary', name: 'ArchiveRuleSummary')
    ArchiveRulesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ArchiveRulesList', name: 'ArchiveRulesList')
    CancelPolicyGenerationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CancelPolicyGenerationInput', name: 'CancelPolicyGenerationInput')
    CancelPolicyGenerationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CancelPolicyGenerationOutput', name: 'CancelPolicyGenerationOutput')
    CheckAccessNotGrantedRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CheckAccessNotGrantedRequest', name: 'CheckAccessNotGrantedRequest')
    CheckAccessNotGrantedResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CheckAccessNotGrantedResponse', name: 'CheckAccessNotGrantedResponse')
    CheckAccessNotGrantedResult = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#CheckAccessNotGrantedResult', name: 'CheckAccessNotGrantedResult', traits: {"smithy.api#enum" => [{"value" => "PASS", "name" => "PASS"}, {"value" => "FAIL", "name" => "FAIL"}]})
    CheckNoNewAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CheckNoNewAccessRequest', name: 'CheckNoNewAccessRequest')
    CheckNoNewAccessResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CheckNoNewAccessResponse', name: 'CheckNoNewAccessResponse')
    CheckNoNewAccessResult = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#CheckNoNewAccessResult', name: 'CheckNoNewAccessResult', traits: {"smithy.api#enum" => [{"value" => "PASS", "name" => "PASS"}, {"value" => "FAIL", "name" => "FAIL"}]})
    CheckNoPublicAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CheckNoPublicAccessRequest', name: 'CheckNoPublicAccessRequest')
    CheckNoPublicAccessResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CheckNoPublicAccessResponse', name: 'CheckNoPublicAccessResponse')
    CheckNoPublicAccessResult = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#CheckNoPublicAccessResult', name: 'CheckNoPublicAccessResult', traits: {"smithy.api#enum" => [{"value" => "PASS", "name" => "PASS"}, {"value" => "FAIL", "name" => "FAIL"}]})
    CloudTrailArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#CloudTrailArn', name: 'CloudTrailArn', traits: {"smithy.api#pattern" => "^arn:[^:]*:cloudtrail:[^:]*:[^:]*:trail/.{1,576}$"})
    CloudTrailDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CloudTrailDetails', name: 'CloudTrailDetails')
    CloudTrailProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CloudTrailProperties', name: 'CloudTrailProperties')
    ConditionKeyMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#ConditionKeyMap', name: 'ConditionKeyMap')
    Configuration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#Configuration', name: 'Configuration')
    ConfigurationsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#ConfigurationsMap', name: 'ConfigurationsMap')
    ConfigurationsMapKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ConfigurationsMapKey', name: 'ConfigurationsMapKey')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAccessPreviewInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CreateAccessPreviewInput', name: 'CreateAccessPreviewInput')
    CreateAccessPreviewOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CreateAccessPreviewOutput', name: 'CreateAccessPreviewOutput')
    CreateAnalyzerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CreateAnalyzerInput', name: 'CreateAnalyzerInput')
    CreateAnalyzerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CreateAnalyzerOutput', name: 'CreateAnalyzerOutput')
    CreateArchiveRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#CreateArchiveRuleInput', name: 'CreateArchiveRuleInput')
    Criterion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#Criterion', name: 'Criterion')
    DeleteAnalyzerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#DeleteAnalyzerInput', name: 'DeleteAnalyzerInput')
    DeleteArchiveRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#DeleteArchiveRuleInput', name: 'DeleteArchiveRuleInput')
    DynamodbStreamConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#DynamodbStreamConfiguration', name: 'DynamodbStreamConfiguration')
    DynamodbStreamPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#DynamodbStreamPolicy', name: 'DynamodbStreamPolicy')
    DynamodbTableConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#DynamodbTableConfiguration', name: 'DynamodbTableConfiguration')
    DynamodbTablePolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#DynamodbTablePolicy', name: 'DynamodbTablePolicy')
    EbsGroup = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#EbsGroup', name: 'EbsGroup')
    EbsGroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#EbsGroupList', name: 'EbsGroupList')
    EbsSnapshotConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#EbsSnapshotConfiguration', name: 'EbsSnapshotConfiguration')
    EbsSnapshotDataEncryptionKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#EbsSnapshotDataEncryptionKeyId', name: 'EbsSnapshotDataEncryptionKeyId')
    EbsUserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#EbsUserId', name: 'EbsUserId')
    EbsUserIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#EbsUserIdList', name: 'EbsUserIdList')
    EcrRepositoryConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#EcrRepositoryConfiguration', name: 'EcrRepositoryConfiguration')
    EcrRepositoryPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#EcrRepositoryPolicy', name: 'EcrRepositoryPolicy')
    EfsFileSystemConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#EfsFileSystemConfiguration', name: 'EfsFileSystemConfiguration')
    EfsFileSystemPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#EfsFileSystemPolicy', name: 'EfsFileSystemPolicy')
    ExternalAccessDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ExternalAccessDetails', name: 'ExternalAccessDetails')
    ExternalAccessFindingsStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ExternalAccessFindingsStatistics', name: 'ExternalAccessFindingsStatistics')
    FilterCriteriaMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#FilterCriteriaMap', name: 'FilterCriteriaMap')
    Finding = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#Finding', name: 'Finding')
    FindingAggregationAccountDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#FindingAggregationAccountDetails', name: 'FindingAggregationAccountDetails')
    FindingAggregationAccountDetailsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#FindingAggregationAccountDetailsMap', name: 'FindingAggregationAccountDetailsMap')
    FindingChangeType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#FindingChangeType', name: 'FindingChangeType', traits: {"smithy.api#enum" => [{"value" => "CHANGED", "name" => "CHANGED"}, {"value" => "NEW", "name" => "NEW"}, {"value" => "UNCHANGED", "name" => "UNCHANGED"}]})
    FindingDetails = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#FindingDetails', name: 'FindingDetails')
    FindingDetailsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#FindingDetailsList', name: 'FindingDetailsList')
    FindingId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#FindingId', name: 'FindingId')
    FindingIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#FindingIdList', name: 'FindingIdList')
    FindingSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#FindingSource', name: 'FindingSource')
    FindingSourceDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#FindingSourceDetail', name: 'FindingSourceDetail')
    FindingSourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#FindingSourceList', name: 'FindingSourceList')
    FindingSourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#FindingSourceType', name: 'FindingSourceType', traits: {"smithy.api#enum" => [{"value" => "POLICY", "name" => "POLICY"}, {"value" => "BUCKET_ACL", "name" => "BUCKET_ACL"}, {"value" => "S3_ACCESS_POINT", "name" => "S3_ACCESS_POINT"}, {"value" => "S3_ACCESS_POINT_ACCOUNT", "name" => "S3_ACCESS_POINT_ACCOUNT"}]})
    FindingStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#FindingStatus', name: 'FindingStatus', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "ARCHIVED", "name" => "ARCHIVED"}, {"value" => "RESOLVED", "name" => "RESOLVED"}]})
    FindingStatusUpdate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#FindingStatusUpdate', name: 'FindingStatusUpdate', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "ARCHIVED", "name" => "ARCHIVED"}]})
    FindingSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#FindingSummary', name: 'FindingSummary')
    FindingSummaryV2 = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#FindingSummaryV2', name: 'FindingSummaryV2')
    FindingType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#FindingType', name: 'FindingType', traits: {"smithy.api#enum" => [{"value" => "ExternalAccess", "name" => "EXTERNAL_ACCESS"}, {"value" => "UnusedIAMRole", "name" => "UNUSED_IAM_ROLE"}, {"value" => "UnusedIAMUserAccessKey", "name" => "UNUSED_IAM_USER_ACCESS_KEY"}, {"value" => "UnusedIAMUserPassword", "name" => "UNUSED_IAM_USER_PASSWORD"}, {"value" => "UnusedPermission", "name" => "UNUSED_PERMISSION"}, {"value" => "InternalAccess", "name" => "INTERNAL_ACCESS"}]})
    FindingsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#FindingsList', name: 'FindingsList')
    FindingsListV2 = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#FindingsListV2', name: 'FindingsListV2')
    FindingsStatistics = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#FindingsStatistics', name: 'FindingsStatistics')
    FindingsStatisticsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#FindingsStatisticsList', name: 'FindingsStatisticsList')
    GenerateFindingRecommendationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GenerateFindingRecommendationRequest', name: 'GenerateFindingRecommendationRequest')
    GeneratedPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GeneratedPolicy', name: 'GeneratedPolicy')
    GeneratedPolicyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#GeneratedPolicyList', name: 'GeneratedPolicyList')
    GeneratedPolicyProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GeneratedPolicyProperties', name: 'GeneratedPolicyProperties')
    GeneratedPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GeneratedPolicyResult', name: 'GeneratedPolicyResult')
    GetAccessPreviewInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetAccessPreviewInput', name: 'GetAccessPreviewInput')
    GetAccessPreviewOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetAccessPreviewOutput', name: 'GetAccessPreviewOutput')
    GetAnalyzedResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetAnalyzedResourceInput', name: 'GetAnalyzedResourceInput')
    GetAnalyzedResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetAnalyzedResourceOutput', name: 'GetAnalyzedResourceOutput')
    GetAnalyzerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetAnalyzerInput', name: 'GetAnalyzerInput')
    GetAnalyzerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetAnalyzerOutput', name: 'GetAnalyzerOutput')
    GetArchiveRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetArchiveRuleInput', name: 'GetArchiveRuleInput')
    GetArchiveRuleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetArchiveRuleOutput', name: 'GetArchiveRuleOutput')
    GetFindingInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetFindingInput', name: 'GetFindingInput')
    GetFindingOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetFindingOutput', name: 'GetFindingOutput')
    GetFindingRecommendationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetFindingRecommendationRequest', name: 'GetFindingRecommendationRequest')
    GetFindingRecommendationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetFindingRecommendationResponse', name: 'GetFindingRecommendationResponse')
    GetFindingV2Request = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetFindingV2Request', name: 'GetFindingV2Request')
    GetFindingV2Response = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetFindingV2Response', name: 'GetFindingV2Response')
    GetFindingsStatisticsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetFindingsStatisticsRequest', name: 'GetFindingsStatisticsRequest')
    GetFindingsStatisticsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetFindingsStatisticsResponse', name: 'GetFindingsStatisticsResponse')
    GetGeneratedPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetGeneratedPolicyInput', name: 'GetGeneratedPolicyInput')
    GetGeneratedPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#GetGeneratedPolicyOutput', name: 'GetGeneratedPolicyOutput')
    GranteePrincipal = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#GranteePrincipal', name: 'GranteePrincipal')
    IamRoleConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#IamRoleConfiguration', name: 'IamRoleConfiguration')
    IamTrustPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#IamTrustPolicy', name: 'IamTrustPolicy')
    InlineArchiveRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InlineArchiveRule', name: 'InlineArchiveRule')
    InlineArchiveRulesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#InlineArchiveRulesList', name: 'InlineArchiveRulesList')
    InternalAccessAnalysisRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessAnalysisRule', name: 'InternalAccessAnalysisRule')
    InternalAccessAnalysisRuleCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessAnalysisRuleCriteria', name: 'InternalAccessAnalysisRuleCriteria')
    InternalAccessAnalysisRuleCriteriaList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessAnalysisRuleCriteriaList', name: 'InternalAccessAnalysisRuleCriteriaList')
    InternalAccessConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessConfiguration', name: 'InternalAccessConfiguration')
    InternalAccessDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessDetails', name: 'InternalAccessDetails')
    InternalAccessFindingsStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessFindingsStatistics', name: 'InternalAccessFindingsStatistics')
    InternalAccessResourceTypeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessResourceTypeDetails', name: 'InternalAccessResourceTypeDetails')
    InternalAccessResourceTypeStatisticsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessResourceTypeStatisticsMap', name: 'InternalAccessResourceTypeStatisticsMap')
    InternalAccessType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#InternalAccessType', name: 'InternalAccessType', traits: {"smithy.api#enum" => [{"value" => "INTRA_ACCOUNT", "name" => "INTRA_ACCOUNT"}, {"value" => "INTRA_ORG", "name" => "INTRA_ORG"}]})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InternetConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InternetConfiguration', name: 'InternetConfiguration')
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IssueCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#IssueCode', name: 'IssueCode')
    IssuingAccount = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#IssuingAccount', name: 'IssuingAccount')
    JobDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#JobDetails', name: 'JobDetails')
    JobError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#JobError', name: 'JobError')
    JobErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#JobErrorCode', name: 'JobErrorCode', traits: {"smithy.api#enum" => [{"name" => "AUTHORIZATION_ERROR", "value" => "AUTHORIZATION_ERROR"}, {"name" => "RESOURCE_NOT_FOUND_ERROR", "value" => "RESOURCE_NOT_FOUND_ERROR"}, {"name" => "SERVICE_QUOTA_EXCEEDED_ERROR", "value" => "SERVICE_QUOTA_EXCEEDED_ERROR"}, {"name" => "SERVICE_ERROR", "value" => "SERVICE_ERROR"}]})
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#JobId', name: 'JobId')
    JobStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#JobStatus', name: 'JobStatus', traits: {"smithy.api#enum" => [{"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "CANCELED", "value" => "CANCELED"}]})
    KmsConstraintsKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#KmsConstraintsKey', name: 'KmsConstraintsKey')
    KmsConstraintsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#KmsConstraintsMap', name: 'KmsConstraintsMap')
    KmsConstraintsValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#KmsConstraintsValue', name: 'KmsConstraintsValue')
    KmsGrantConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#KmsGrantConfiguration', name: 'KmsGrantConfiguration')
    KmsGrantConfigurationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#KmsGrantConfigurationsList', name: 'KmsGrantConfigurationsList')
    KmsGrantConstraints = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#KmsGrantConstraints', name: 'KmsGrantConstraints')
    KmsGrantOperation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#KmsGrantOperation', name: 'KmsGrantOperation', traits: {"smithy.api#enum" => [{"value" => "CreateGrant", "name" => "CREATE_GRANT"}, {"value" => "Decrypt", "name" => "DECRYPT"}, {"value" => "DescribeKey", "name" => "DESCRIBE_KEY"}, {"value" => "Encrypt", "name" => "ENCRYPT"}, {"value" => "GenerateDataKey", "name" => "GENERATE_DATA_KEY"}, {"value" => "GenerateDataKeyPair", "name" => "GENERATE_DATA_KEY_PAIR"}, {"value" => "GenerateDataKeyPairWithoutPlaintext", "name" => "GENERATE_DATA_KEY_PAIR_WITHOUT_PLAINTEXT"}, {"value" => "GenerateDataKeyWithoutPlaintext", "name" => "GENERATE_DATA_KEY_WITHOUT_PLAINTEXT"}, {"value" => "GetPublicKey", "name" => "GET_PUBLIC_KEY"}, {"value" => "ReEncryptFrom", "name" => "REENCRYPT_FROM"}, {"value" => "ReEncryptTo", "name" => "REENCRYPT_TO"}, {"value" => "RetireGrant", "name" => "RETIRE_GRANT"}, {"value" => "Sign", "name" => "SIGN"}, {"value" => "Verify", "name" => "VERIFY"}]})
    KmsGrantOperationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#KmsGrantOperationsList', name: 'KmsGrantOperationsList')
    KmsKeyConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#KmsKeyConfiguration', name: 'KmsKeyConfiguration')
    KmsKeyPoliciesMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#KmsKeyPoliciesMap', name: 'KmsKeyPoliciesMap')
    KmsKeyPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#KmsKeyPolicy', name: 'KmsKeyPolicy')
    LearnMoreLink = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#LearnMoreLink', name: 'LearnMoreLink')
    ListAccessPreviewFindingsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListAccessPreviewFindingsInput', name: 'ListAccessPreviewFindingsInput')
    ListAccessPreviewFindingsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListAccessPreviewFindingsOutput', name: 'ListAccessPreviewFindingsOutput')
    ListAccessPreviewsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListAccessPreviewsInput', name: 'ListAccessPreviewsInput')
    ListAccessPreviewsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListAccessPreviewsOutput', name: 'ListAccessPreviewsOutput')
    ListAnalyzedResourcesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListAnalyzedResourcesInput', name: 'ListAnalyzedResourcesInput')
    ListAnalyzedResourcesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListAnalyzedResourcesOutput', name: 'ListAnalyzedResourcesOutput')
    ListAnalyzersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListAnalyzersInput', name: 'ListAnalyzersInput')
    ListAnalyzersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListAnalyzersOutput', name: 'ListAnalyzersOutput')
    ListArchiveRulesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListArchiveRulesInput', name: 'ListArchiveRulesInput')
    ListArchiveRulesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListArchiveRulesOutput', name: 'ListArchiveRulesOutput')
    ListFindingsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListFindingsInput', name: 'ListFindingsInput')
    ListFindingsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListFindingsOutput', name: 'ListFindingsOutput')
    ListFindingsV2Request = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListFindingsV2Request', name: 'ListFindingsV2Request')
    ListFindingsV2Response = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListFindingsV2Response', name: 'ListFindingsV2Response')
    ListPolicyGenerationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListPolicyGenerationsInput', name: 'ListPolicyGenerationsInput')
    ListPolicyGenerationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListPolicyGenerationsOutput', name: 'ListPolicyGenerationsOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    Locale = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#Locale', name: 'Locale', traits: {"smithy.api#enum" => [{"value" => "DE", "name" => "DE"}, {"value" => "EN", "name" => "EN"}, {"value" => "ES", "name" => "ES"}, {"value" => "FR", "name" => "FR"}, {"value" => "IT", "name" => "IT"}, {"value" => "JA", "name" => "JA"}, {"value" => "KO", "name" => "KO"}, {"value" => "PT_BR", "name" => "PT_BR"}, {"value" => "ZH_CN", "name" => "ZH_CN"}, {"value" => "ZH_TW", "name" => "ZH_TW"}]})
    Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#Location', name: 'Location')
    LocationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#LocationList', name: 'LocationList')
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z][A-Za-z0-9_.-]*$"})
    NetworkOriginConfiguration = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#NetworkOriginConfiguration', name: 'NetworkOriginConfiguration')
    OrderBy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#OrderBy', name: 'OrderBy', traits: {"smithy.api#enum" => [{"value" => "ASC", "name" => "ASC"}, {"value" => "DESC", "name" => "DESC"}]})
    PathElement = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#PathElement', name: 'PathElement')
    PathElementList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#PathElementList', name: 'PathElementList')
    PolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#PolicyDocument', name: 'PolicyDocument')
    PolicyGeneration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#PolicyGeneration', name: 'PolicyGeneration')
    PolicyGenerationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#PolicyGenerationDetails', name: 'PolicyGenerationDetails')
    PolicyGenerationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#PolicyGenerationList', name: 'PolicyGenerationList')
    PolicyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#PolicyName', name: 'PolicyName')
    PolicyType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#PolicyType', name: 'PolicyType', traits: {"smithy.api#enum" => [{"value" => "IDENTITY_POLICY", "name" => "IDENTITY_POLICY"}, {"value" => "RESOURCE_POLICY", "name" => "RESOURCE_POLICY"}, {"value" => "SERVICE_CONTROL_POLICY", "name" => "SERVICE_CONTROL_POLICY"}, {"value" => "RESOURCE_CONTROL_POLICY", "name" => "RESOURCE_CONTROL_POLICY"}]})
    Position = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#Position', name: 'Position')
    PrincipalArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#PrincipalArn', name: 'PrincipalArn', traits: {"smithy.api#pattern" => "^arn:[^:]*:iam::[^:]*:(role|user)/.{1,576}$"})
    PrincipalMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#PrincipalMap', name: 'PrincipalMap')
    PrincipalType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#PrincipalType', name: 'PrincipalType', traits: {"smithy.api#enum" => [{"value" => "IAM_ROLE", "name" => "IAM_ROLE"}, {"value" => "IAM_USER", "name" => "IAM_USER"}]})
    RdsDbClusterSnapshotAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbClusterSnapshotAccountId', name: 'RdsDbClusterSnapshotAccountId')
    RdsDbClusterSnapshotAccountIdsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbClusterSnapshotAccountIdsList', name: 'RdsDbClusterSnapshotAccountIdsList')
    RdsDbClusterSnapshotAttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbClusterSnapshotAttributeName', name: 'RdsDbClusterSnapshotAttributeName')
    RdsDbClusterSnapshotAttributeValue = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbClusterSnapshotAttributeValue', name: 'RdsDbClusterSnapshotAttributeValue')
    RdsDbClusterSnapshotAttributesMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbClusterSnapshotAttributesMap', name: 'RdsDbClusterSnapshotAttributesMap')
    RdsDbClusterSnapshotConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbClusterSnapshotConfiguration', name: 'RdsDbClusterSnapshotConfiguration')
    RdsDbClusterSnapshotKmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbClusterSnapshotKmsKeyId', name: 'RdsDbClusterSnapshotKmsKeyId')
    RdsDbSnapshotAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbSnapshotAccountId', name: 'RdsDbSnapshotAccountId')
    RdsDbSnapshotAccountIdsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbSnapshotAccountIdsList', name: 'RdsDbSnapshotAccountIdsList')
    RdsDbSnapshotAttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbSnapshotAttributeName', name: 'RdsDbSnapshotAttributeName')
    RdsDbSnapshotAttributeValue = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbSnapshotAttributeValue', name: 'RdsDbSnapshotAttributeValue')
    RdsDbSnapshotAttributesMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbSnapshotAttributesMap', name: 'RdsDbSnapshotAttributesMap')
    RdsDbSnapshotConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbSnapshotConfiguration', name: 'RdsDbSnapshotConfiguration')
    RdsDbSnapshotKmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RdsDbSnapshotKmsKeyId', name: 'RdsDbSnapshotKmsKeyId')
    ReasonCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ReasonCode', name: 'ReasonCode', traits: {"smithy.api#enum" => [{"value" => "AWS_SERVICE_ACCESS_DISABLED", "name" => "AWS_SERVICE_ACCESS_DISABLED"}, {"value" => "DELEGATED_ADMINISTRATOR_DEREGISTERED", "name" => "DELEGATED_ADMINISTRATOR_DEREGISTERED"}, {"value" => "ORGANIZATION_DELETED", "name" => "ORGANIZATION_DELETED"}, {"value" => "SERVICE_LINKED_ROLE_CREATION_FAILED", "name" => "SERVICE_LINKED_ROLE_CREATION_FAILED"}]})
    ReasonSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ReasonSummary', name: 'ReasonSummary')
    ReasonSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ReasonSummaryList', name: 'ReasonSummaryList')
    RecommendationError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#RecommendationError', name: 'RecommendationError')
    RecommendationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RecommendationType', name: 'RecommendationType', traits: {"smithy.api#enum" => [{"value" => "UnusedPermissionRecommendation", "name" => "UNUSED_PERMISSION_RECOMMENDATION"}]})
    RecommendedRemediationAction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RecommendedRemediationAction', name: 'RecommendedRemediationAction', traits: {"smithy.api#enum" => [{"value" => "CREATE_POLICY", "name" => "CREATE_POLICY"}, {"value" => "DETACH_POLICY", "name" => "DETACH_POLICY"}]})
    RecommendedStep = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.accessanalyzer#RecommendedStep', name: 'RecommendedStep')
    RecommendedStepList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#RecommendedStepList', name: 'RecommendedStepList')
    RegionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#RegionList', name: 'RegionList')
    Resource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#Resource', name: 'Resource', traits: {"smithy.api#length" => {"max" => 2048}})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#pattern" => "^arn:[^:]*:[^:]*:[^:]*:[^:]*:.*$"})
    ResourceArnsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ResourceArnsList', name: 'ResourceArnsList')
    ResourceControlPolicyRestriction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ResourceControlPolicyRestriction', name: 'ResourceControlPolicyRestriction', traits: {"smithy.api#enum" => [{"value" => "APPLICABLE", "name" => "APPLICABLE"}, {"value" => "FAILED_TO_EVALUATE_RCP", "name" => "FAILED_TO_EVALUATE_RCP"}, {"value" => "NOT_APPLICABLE", "name" => "NOT_APPLICABLE"}, {"value" => "APPLIED", "name" => "APPLIED"}]})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ResourceType', name: 'ResourceType', traits: {"smithy.api#enum" => [{"value" => "AWS::S3::Bucket", "name" => "AWS_S3_BUCKET"}, {"value" => "AWS::IAM::Role", "name" => "AWS_IAM_ROLE"}, {"value" => "AWS::SQS::Queue", "name" => "AWS_SQS_QUEUE"}, {"value" => "AWS::Lambda::Function", "name" => "AWS_LAMBDA_FUNCTION"}, {"value" => "AWS::Lambda::LayerVersion", "name" => "AWS_LAMBDA_LAYERVERSION"}, {"value" => "AWS::KMS::Key", "name" => "AWS_KMS_KEY"}, {"value" => "AWS::SecretsManager::Secret", "name" => "AWS_SECRETSMANAGER_SECRET"}, {"value" => "AWS::EFS::FileSystem", "name" => "AWS_EFS_FILESYSTEM"}, {"value" => "AWS::EC2::Snapshot", "name" => "AWS_EC2_SNAPSHOT"}, {"value" => "AWS::ECR::Repository", "name" => "AWS_ECR_REPOSITORY"}, {"value" => "AWS::RDS::DBSnapshot", "name" => "AWS_RDS_DBSNAPSHOT"}, {"value" => "AWS::RDS::DBClusterSnapshot", "name" => "AWS_RDS_DBCLUSTERSNAPSHOT"}, {"value" => "AWS::SNS::Topic", "name" => "AWS_SNS_TOPIC"}, {"value" => "AWS::S3Express::DirectoryBucket", "name" => "AWS_S3EXPRESS_DIRECTORYBUCKET"}, {"value" => "AWS::DynamoDB::Table", "name" => "AWS_DYNAMODB_TABLE"}, {"value" => "AWS::DynamoDB::Stream", "name" => "AWS_DYNAMODB_STREAM"}, {"value" => "AWS::IAM::User", "name" => "AWS_IAM_USER"}]})
    ResourceTypeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ResourceTypeDetails', name: 'ResourceTypeDetails')
    ResourceTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ResourceTypeList', name: 'ResourceTypeList')
    ResourceTypeStatisticsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#ResourceTypeStatisticsMap', name: 'ResourceTypeStatisticsMap')
    ResourcesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ResourcesList', name: 'ResourcesList')
    RetiringPrincipal = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RetiringPrincipal', name: 'RetiringPrincipal')
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#RoleArn', name: 'RoleArn', traits: {"smithy.api#pattern" => "^arn:[^:]*:iam::[^:]*:role/.{1,576}$"})
    S3AccessPointConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#S3AccessPointConfiguration', name: 'S3AccessPointConfiguration')
    S3AccessPointConfigurationsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#S3AccessPointConfigurationsMap', name: 'S3AccessPointConfigurationsMap')
    S3BucketAclGrantConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#S3BucketAclGrantConfiguration', name: 'S3BucketAclGrantConfiguration')
    S3BucketAclGrantConfigurationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#S3BucketAclGrantConfigurationsList', name: 'S3BucketAclGrantConfigurationsList')
    S3BucketConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#S3BucketConfiguration', name: 'S3BucketConfiguration')
    S3BucketPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#S3BucketPolicy', name: 'S3BucketPolicy')
    S3ExpressDirectoryAccessPointArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#S3ExpressDirectoryAccessPointArn', name: 'S3ExpressDirectoryAccessPointArn', traits: {"smithy.api#pattern" => "^arn:[^:]*:s3express:[^:]*:[^:]*:accesspoint/.*$"})
    S3ExpressDirectoryAccessPointConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#S3ExpressDirectoryAccessPointConfiguration', name: 'S3ExpressDirectoryAccessPointConfiguration')
    S3ExpressDirectoryAccessPointConfigurationsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#S3ExpressDirectoryAccessPointConfigurationsMap', name: 'S3ExpressDirectoryAccessPointConfigurationsMap')
    S3ExpressDirectoryBucketConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#S3ExpressDirectoryBucketConfiguration', name: 'S3ExpressDirectoryBucketConfiguration')
    S3ExpressDirectoryBucketPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#S3ExpressDirectoryBucketPolicy', name: 'S3ExpressDirectoryBucketPolicy')
    S3PublicAccessBlockConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#S3PublicAccessBlockConfiguration', name: 'S3PublicAccessBlockConfiguration')
    SecretsManagerSecretConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#SecretsManagerSecretConfiguration', name: 'SecretsManagerSecretConfiguration')
    SecretsManagerSecretKmsId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#SecretsManagerSecretKmsId', name: 'SecretsManagerSecretKmsId')
    SecretsManagerSecretPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#SecretsManagerSecretPolicy', name: 'SecretsManagerSecretPolicy')
    ServiceControlPolicyRestriction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ServiceControlPolicyRestriction', name: 'ServiceControlPolicyRestriction', traits: {"smithy.api#enum" => [{"value" => "APPLICABLE", "name" => "APPLICABLE"}, {"value" => "FAILED_TO_EVALUATE_SCP", "name" => "FAILED_TO_EVALUATE_SCP"}, {"value" => "NOT_APPLICABLE", "name" => "NOT_APPLICABLE"}, {"value" => "APPLIED", "name" => "APPLIED"}]})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SharedViaList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#SharedViaList', name: 'SharedViaList')
    SnsTopicConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#SnsTopicConfiguration', name: 'SnsTopicConfiguration')
    SnsTopicPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#SnsTopicPolicy', name: 'SnsTopicPolicy', traits: {"smithy.api#length" => {"max" => 30720}})
    SortCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#SortCriteria', name: 'SortCriteria')
    Span = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#Span', name: 'Span')
    SqsQueueConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#SqsQueueConfiguration', name: 'SqsQueueConfiguration')
    SqsQueuePolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#SqsQueuePolicy', name: 'SqsQueuePolicy')
    StartPolicyGenerationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#StartPolicyGenerationInput', name: 'StartPolicyGenerationInput')
    StartPolicyGenerationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#StartPolicyGenerationOutput', name: 'StartPolicyGenerationOutput')
    StartResourceScanInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#StartResourceScanInput', name: 'StartResourceScanInput')
    Status = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#Status', name: 'Status', traits: {"smithy.api#enum" => [{"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}]})
    StatusReason = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#StatusReason', name: 'StatusReason')
    Substring = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#Substring', name: 'Substring')
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#TagKeys', name: 'TagKeys')
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#TagResourceOutput', name: 'TagResourceOutput')
    TagsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#TagsList', name: 'TagsList')
    TagsMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.accessanalyzer#TagsMap', name: 'TagsMap')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.accessanalyzer#Timestamp', name: 'Timestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#Token', name: 'Token')
    Trail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#Trail', name: 'Trail')
    TrailList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#TrailList', name: 'TrailList')
    TrailProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#TrailProperties', name: 'TrailProperties')
    TrailPropertiesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#TrailPropertiesList', name: 'TrailPropertiesList')
    Type = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#Type', name: 'Type', traits: {"smithy.api#enum" => [{"value" => "ACCOUNT", "name" => "ACCOUNT"}, {"value" => "ORGANIZATION", "name" => "ORGANIZATION"}, {"value" => "ACCOUNT_UNUSED_ACCESS", "name" => "ACCOUNT_UNUSED_ACCESS"}, {"value" => "ORGANIZATION_UNUSED_ACCESS", "name" => "ORGANIZATION_UNUSED_ACCESS"}, {"value" => "ACCOUNT_INTERNAL_ACCESS", "name" => "ACCOUNT_INTERNAL_ACCESS"}, {"value" => "ORGANIZATION_INTERNAL_ACCESS", "name" => "ORGANIZATION_INTERNAL_ACCESS"}]})
    UnprocessableEntityException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnprocessableEntityException', name: 'UnprocessableEntityException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422, "smithy.api#retryable" => {}})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UntagResourceOutput', name: 'UntagResourceOutput')
    UnusedAccessConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedAccessConfiguration', name: 'UnusedAccessConfiguration')
    UnusedAccessFindingsStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedAccessFindingsStatistics', name: 'UnusedAccessFindingsStatistics')
    UnusedAccessTypeStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedAccessTypeStatistics', name: 'UnusedAccessTypeStatistics')
    UnusedAccessTypeStatisticsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#UnusedAccessTypeStatisticsList', name: 'UnusedAccessTypeStatisticsList')
    UnusedAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedAction', name: 'UnusedAction')
    UnusedActionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#UnusedActionList', name: 'UnusedActionList')
    UnusedIamRoleDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedIamRoleDetails', name: 'UnusedIamRoleDetails')
    UnusedIamUserAccessKeyDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedIamUserAccessKeyDetails', name: 'UnusedIamUserAccessKeyDetails')
    UnusedIamUserPasswordDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedIamUserPasswordDetails', name: 'UnusedIamUserPasswordDetails')
    UnusedPermissionDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedPermissionDetails', name: 'UnusedPermissionDetails')
    UnusedPermissionsRecommendedStep = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UnusedPermissionsRecommendedStep', name: 'UnusedPermissionsRecommendedStep')
    UpdateAnalyzerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UpdateAnalyzerRequest', name: 'UpdateAnalyzerRequest')
    UpdateAnalyzerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UpdateAnalyzerResponse', name: 'UpdateAnalyzerResponse')
    UpdateArchiveRuleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UpdateArchiveRuleInput', name: 'UpdateArchiveRuleInput')
    UpdateFindingsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#UpdateFindingsInput', name: 'UpdateFindingsInput')
    ValidatePolicyFinding = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ValidatePolicyFinding', name: 'ValidatePolicyFinding')
    ValidatePolicyFindingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ValidatePolicyFindingList', name: 'ValidatePolicyFindingList')
    ValidatePolicyFindingType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ValidatePolicyFindingType', name: 'ValidatePolicyFindingType', traits: {"smithy.api#enum" => [{"value" => "ERROR", "name" => "ERROR"}, {"value" => "SECURITY_WARNING", "name" => "SECURITY_WARNING"}, {"value" => "SUGGESTION", "name" => "SUGGESTION"}, {"value" => "WARNING", "name" => "WARNING"}]})
    ValidatePolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ValidatePolicyInput', name: 'ValidatePolicyInput')
    ValidatePolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ValidatePolicyOutput', name: 'ValidatePolicyOutput')
    ValidatePolicyResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ValidatePolicyResourceType', name: 'ValidatePolicyResourceType', traits: {"smithy.api#enum" => [{"value" => "AWS::S3::Bucket", "name" => "S3_BUCKET"}, {"value" => "AWS::S3::AccessPoint", "name" => "S3_ACCESS_POINT"}, {"value" => "AWS::S3::MultiRegionAccessPoint", "name" => "S3_MULTI_REGION_ACCESS_POINT"}, {"value" => "AWS::S3ObjectLambda::AccessPoint", "name" => "S3_OBJECT_LAMBDA_ACCESS_POINT"}, {"value" => "AWS::IAM::AssumeRolePolicyDocument", "name" => "ROLE_TRUST"}, {"value" => "AWS::DynamoDB::Table", "name" => "DYNAMODB_TABLE"}]})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#ValidationExceptionReason', name: 'ValidationExceptionReason', traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}, {"value" => "notSupported", "name" => "NOT_SUPPORTED"}]})
    ValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.accessanalyzer#ValueList', name: 'ValueList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    VpcConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.accessanalyzer#VpcConfiguration', name: 'VpcConfiguration')
    VpcId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.accessanalyzer#VpcId', name: 'VpcId', traits: {"smithy.api#pattern" => "^vpc-([0-9a-f]){8}(([0-9a-f]){9})?$"})

    Access.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionsList, location_name: 'actions', traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => [], "smithy.api#documentation" => "<p>A list of actions for the access permissions. Any strings that can be used as an action in an IAM policy can be used in the list of actions to check.</p>", "smithy.api#length" => {"max" => 100}}))
    Access.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcesList, location_name: 'resources', traits: {"smithy.api#default" => [], "smithy.api#documentation" => "<p>A list of resources for the access permissions. Any strings that can be used as an Amazon Resource Name (ARN) in an IAM policy can be used in the list of resources to check. You can only use a wildcard in the portion of the ARN that specifies the resource ID.</p>", "smithy.api#length" => {"max" => 100}}))
    Access.type = Types::Access
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Access)
    AccessPreview.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID for the access preview.</p>", "smithy.api#required" => {}}))
    AccessPreview.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the analyzer used to generate the access preview.</p>", "smithy.api#required" => {}}))
    AccessPreview.add_member(:configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationsMap, location_name: 'configurations', traits: {"smithy.api#documentation" => "<p>A map of resource ARNs for the proposed resource configuration.</p>", "smithy.api#required" => {}}))
    AccessPreview.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the access preview was created.</p>", "smithy.api#required" => {}}))
    AccessPreview.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the access preview.</p> <ul> <li> <p> <code>Creating</code> - The access preview creation is in progress.</p> </li> <li> <p> <code>Completed</code> - The access preview is complete. You can preview findings for external access to the resource.</p> </li> <li> <p> <code>Failed</code> - The access preview creation has failed.</p> </li> </ul>", "smithy.api#required" => {}}))
    AccessPreview.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewStatusReason, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>Provides more details about the current status of the access preview.</p> <p>For example, if the creation of the access preview fails, a <code>Failed</code> status is returned. This failure can be due to an internal issue with the analysis or due to an invalid resource configuration.</p>"}))
    AccessPreview.type = Types::AccessPreview
    AccessPreviewFinding.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewFindingId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the access preview finding. This ID uniquely identifies the element in the list of access preview findings and is not related to the finding ID in Access Analyzer.</p>", "smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:existing_finding_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId, location_name: 'existingFindingId', traits: {"smithy.api#documentation" => "<p>The existing ID of the finding in IAM Access Analyzer, provided only for existing findings.</p>"}))
    AccessPreviewFinding.add_member(:existing_finding_status, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatus, location_name: 'existingFindingStatus', traits: {"smithy.api#documentation" => "<p>The existing status of the finding, provided only for existing findings.</p>"}))
    AccessPreviewFinding.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalMap, location_name: 'principal', traits: {"smithy.api#documentation" => "<p>The external principal that has access to a resource within the zone of trust.</p>"}))
    AccessPreviewFinding.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action in the analyzed policy statement that an external principal has permission to perform.</p>"}))
    AccessPreviewFinding.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionKeyMap, location_name: 'condition', traits: {"smithy.api#documentation" => "<p>The condition in the analyzed policy statement that resulted in a finding.</p>"}))
    AccessPreviewFinding.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The resource that an external principal has access to. This is the resource associated with the access preview.</p>"}))
    AccessPreviewFinding.add_member(:is_public, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isPublic', traits: {"smithy.api#documentation" => "<p>Indicates whether the policy that generated the finding allows public access to the resource.</p>"}))
    AccessPreviewFinding.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that can be accessed in the finding.</p>", "smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the access preview finding was created.</p>", "smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:change_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingChangeType, location_name: 'changeType', traits: {"smithy.api#documentation" => "<p>Provides context on how the access preview finding compares to existing access identified in IAM Access Analyzer.</p> <ul> <li> <p> <code>New</code> - The finding is for newly-introduced access.</p> </li> <li> <p> <code>Unchanged</code> - The preview finding is an existing finding that would remain unchanged.</p> </li> <li> <p> <code>Changed</code> - The preview finding is an existing finding with a change in status.</p> </li> </ul> <p>For example, a <code>Changed</code> finding with preview status <code>Resolved</code> and existing status <code>Active</code> indicates the existing <code>Active</code> finding would become <code>Resolved</code> as a result of the proposed permissions change.</p>", "smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The preview status of the finding. This is what the status of the finding would be after permissions deployment. For example, a <code>Changed</code> finding with preview status <code>Resolved</code> and existing status <code>Active</code> indicates the existing <code>Active</code> finding would become <code>Resolved</code> as a result of the proposed permissions change.</p>", "smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:resource_owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceOwnerAccount', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that owns the resource. For most Amazon Web Services resources, the owning account is the account in which the resource was created.</p>", "smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'error', traits: {"smithy.api#documentation" => "<p>An error.</p>"}))
    AccessPreviewFinding.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSourceList, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the finding. This indicates how the access that generated the finding is granted. It is populated for Amazon S3 bucket findings.</p>"}))
    AccessPreviewFinding.add_member(:resource_control_policy_restriction, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceControlPolicyRestriction, location_name: 'resourceControlPolicyRestriction', traits: {"smithy.api#documentation" => "<p>The type of restriction applied to the finding by the resource owner with an Organizations resource control policy (RCP).</p>"}))
    AccessPreviewFinding.type = Types::AccessPreviewFinding
    AccessPreviewFindingsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewFinding)
    AccessPreviewStatusReason.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewStatusReasonCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The reason code for the current status of the access preview.</p>", "smithy.api#required" => {}}))
    AccessPreviewStatusReason.type = Types::AccessPreviewStatusReason
    AccessPreviewSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID for the access preview.</p>", "smithy.api#required" => {}}))
    AccessPreviewSummary.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the analyzer used to generate the access preview.</p>", "smithy.api#required" => {}}))
    AccessPreviewSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the access preview was created.</p>", "smithy.api#required" => {}}))
    AccessPreviewSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the access preview.</p> <ul> <li> <p> <code>Creating</code> - The access preview creation is in progress.</p> </li> <li> <p> <code>Completed</code> - The access preview is complete and previews the findings for external access to the resource.</p> </li> <li> <p> <code>Failed</code> - The access preview creation has failed.</p> </li> </ul>", "smithy.api#required" => {}}))
    AccessPreviewSummary.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewStatusReason, location_name: 'statusReason'))
    AccessPreviewSummary.type = Types::AccessPreviewSummary
    AccessPreviewsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewSummary)
    AccountAggregations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FindingAggregationAccountDetails)
    AccountIdsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    AclGrantee.add_member(:id, Types::AclGrantee::Id, Smithy::Schema::Shapes::ShapeRef.new(shape: AclCanonicalId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The value specified is the canonical user ID of an Amazon Web Services account.</p>"}))
    AclGrantee.add_member(:uri, Types::AclGrantee::Uri, Smithy::Schema::Shapes::ShapeRef.new(shape: AclUri, location_name: 'uri', traits: {"smithy.api#documentation" => "<p>Used for granting permissions to a predefined group.</p>"}))
    AclGrantee.add_member(:unknown, Types::AclGrantee::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AclGrantee.type = Types::AclGrantee
    ActionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ActionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Action)
    AnalysisRule.add_member(:exclusions, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleCriteriaList, location_name: 'exclusions', traits: {"smithy.api#documentation" => "<p>A list of rules for the analyzer containing criteria to exclude from analysis. Entities that meet the rule criteria will not generate findings.</p>"}))
    AnalysisRule.type = Types::AnalysisRule
    AnalysisRuleCriteria.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdsList, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>A list of Amazon Web Services account IDs to apply to the analysis rule criteria. The accounts cannot include the organization analyzer owner account. Account IDs can only be applied to the analysis rule criteria for organization-level analyzers. The list cannot include more than 2,000 account IDs.</p>"}))
    AnalysisRuleCriteria.add_member(:resource_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsList, location_name: 'resourceTags', traits: {"smithy.api#documentation" => "<p>An array of key-value pairs to match for your resources. You can use the set of Unicode letters, digits, whitespace, <code>_</code>, <code>.</code>, <code>/</code>, <code>=</code>, <code>+</code>, and <code>-</code>.</p> <p>For the tag key, you can specify a value that is 1 to 128 characters in length and cannot be prefixed with <code>aws:</code>.</p> <p>For the tag value, you can specify a value that is 0 to 256 characters in length. If the specified tag value is 0 characters, the rule is applied to all principals with the specified tag key.</p>"}))
    AnalysisRuleCriteria.type = Types::AnalysisRuleCriteria
    AnalysisRuleCriteriaList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRuleCriteria)
    AnalyzedResource.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource that was analyzed.</p>", "smithy.api#required" => {}}))
    AnalyzedResource.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that was analyzed.</p>", "smithy.api#required" => {}}))
    AnalyzedResource.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the finding was created.</p>", "smithy.api#required" => {}}))
    AnalyzedResource.add_member(:analyzed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'analyzedAt', traits: {"smithy.api#documentation" => "<p>The time at which the resource was analyzed.</p>", "smithy.api#required" => {}}))
    AnalyzedResource.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the finding was updated.</p>", "smithy.api#required" => {}}))
    AnalyzedResource.add_member(:is_public, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isPublic', traits: {"smithy.api#documentation" => "<p>Indicates whether the policy that generated the finding grants public access to the resource.</p>", "smithy.api#required" => {}}))
    AnalyzedResource.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>The actions that an external principal is granted permission to use by the policy that generated the finding.</p>"}))
    AnalyzedResource.add_member(:shared_via, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedViaList, location_name: 'sharedVia', traits: {"smithy.api#documentation" => "<p>Indicates how the access that generated the finding is granted. This is populated for Amazon S3 bucket findings.</p>"}))
    AnalyzedResource.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the finding generated from the analyzed resource.</p>"}))
    AnalyzedResource.add_member(:resource_owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceOwnerAccount', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that owns the resource.</p>", "smithy.api#required" => {}}))
    AnalyzedResource.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'error', traits: {"smithy.api#documentation" => "<p>An error message.</p>"}))
    AnalyzedResource.type = Types::AnalyzedResource
    AnalyzedResourceSummary.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the analyzed resource.</p>", "smithy.api#required" => {}}))
    AnalyzedResourceSummary.add_member(:resource_owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceOwnerAccount', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that owns the resource.</p>", "smithy.api#required" => {}}))
    AnalyzedResourceSummary.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of resource that was analyzed.</p>", "smithy.api#required" => {}}))
    AnalyzedResourceSummary.type = Types::AnalyzedResourceSummary
    AnalyzedResourcesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzedResourceSummary)
    AnalyzerConfiguration.add_member(:unused_access, Types::AnalyzerConfiguration::UnusedAccess, Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedAccessConfiguration, location_name: 'unusedAccess', traits: {"smithy.api#documentation" => "<p>Specifies the configuration of an unused access analyzer for an Amazon Web Services organization or account.</p>"}))
    AnalyzerConfiguration.add_member(:internal_access, Types::AnalyzerConfiguration::InternalAccess, Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessConfiguration, location_name: 'internalAccess', traits: {"smithy.api#documentation" => "<p>Specifies the configuration of an internal access analyzer for an Amazon Web Services organization or account. This configuration determines how the analyzer evaluates access within your Amazon Web Services environment.</p>"}))
    AnalyzerConfiguration.add_member(:unknown, Types::AnalyzerConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AnalyzerConfiguration.type = Types::AnalyzerConfiguration
    AnalyzerSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the analyzer.</p>", "smithy.api#required" => {}}))
    AnalyzerSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the analyzer.</p>", "smithy.api#required" => {}}))
    AnalyzerSummary.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of analyzer, which corresponds to the zone of trust chosen for the analyzer.</p>", "smithy.api#required" => {}}))
    AnalyzerSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>A timestamp for the time at which the analyzer was created.</p>", "smithy.api#required" => {}}))
    AnalyzerSummary.add_member(:last_resource_analyzed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'lastResourceAnalyzed', traits: {"smithy.api#documentation" => "<p>The resource that was most recently analyzed by the analyzer.</p>"}))
    AnalyzerSummary.add_member(:last_resource_analyzed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastResourceAnalyzedAt', traits: {"smithy.api#documentation" => "<p>The time at which the most recently analyzed resource was analyzed.</p>"}))
    AnalyzerSummary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags added to the analyzer.</p>"}))
    AnalyzerSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the analyzer. An <code>Active</code> analyzer successfully monitors supported resources and generates new findings. The analyzer is <code>Disabled</code> when a user action, such as removing trusted access for Identity and Access Management Access Analyzer from Organizations, causes the analyzer to stop generating new findings. The status is <code>Creating</code> when the analyzer creation is in progress and <code>Failed</code> when the analyzer creation has failed. </p>", "smithy.api#required" => {}}))
    AnalyzerSummary.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The <code>statusReason</code> provides more details about the current status of the analyzer. For example, if the creation for the analyzer fails, a <code>Failed</code> status is returned. For an analyzer with organization as the type, this failure can be due to an issue with creating the service-linked roles required in the member accounts of the Amazon Web Services organization.</p>"}))
    AnalyzerSummary.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>Specifies if the analyzer is an external access, unused access, or internal access analyzer.</p>"}))
    AnalyzerSummary.type = Types::AnalyzerSummary
    AnalyzersList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerSummary)
    ApplyArchiveRuleInput.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the analyzer.</p>", "smithy.api#required" => {}}))
    ApplyArchiveRuleInput.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ruleName', traits: {"smithy.api#documentation" => "<p>The name of the rule to apply.</p>", "smithy.api#required" => {}}))
    ApplyArchiveRuleInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A client token.</p>", "smithy.api#idempotencyToken" => {}}))
    ApplyArchiveRuleInput.type = Types::ApplyArchiveRuleInput
    ArchiveRuleSummary.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ruleName', traits: {"smithy.api#documentation" => "<p>The name of the archive rule.</p>", "smithy.api#required" => {}}))
    ArchiveRuleSummary.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>A filter used to define the archive rule.</p>", "smithy.api#required" => {}}))
    ArchiveRuleSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the archive rule was created.</p>", "smithy.api#required" => {}}))
    ArchiveRuleSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the archive rule was last updated.</p>", "smithy.api#required" => {}}))
    ArchiveRuleSummary.type = Types::ArchiveRuleSummary
    ArchiveRulesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveRuleSummary)
    CancelPolicyGenerationInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The <code>JobId</code> that is returned by the <code>StartPolicyGeneration</code> operation. The <code>JobId</code> can be used with <code>GetGeneratedPolicy</code> to retrieve the generated policies or used with <code>CancelPolicyGeneration</code> to cancel the policy generation request.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelPolicyGenerationInput.type = Types::CancelPolicyGenerationInput
    CancelPolicyGenerationOutput.type = Types::CancelPolicyGenerationOutput
    CheckAccessNotGrantedRequest.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessCheckPolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#documentation" => "<p>The JSON policy document to use as the content for the policy.</p>", "smithy.api#required" => {}}))
    CheckAccessNotGrantedRequest.add_member(:access, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessList, location_name: 'access', traits: {"smithy.api#documentation" => "<p>An access object containing the permissions that shouldn't be granted by the specified policy. If only actions are specified, IAM Access Analyzer checks for access to peform at least one of the actions on any resource in the policy. If only resources are specified, then IAM Access Analyzer checks for access to perform any action on at least one of the resources. If both actions and resources are specified, IAM Access Analyzer checks for access to perform at least one of the specified actions on at least one of the specified resources.</p>", "smithy.api#length" => {"max" => 1}, "smithy.api#required" => {}}))
    CheckAccessNotGrantedRequest.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessCheckPolicyType, location_name: 'policyType', traits: {"smithy.api#documentation" => "<p>The type of policy. Identity policies grant permissions to IAM principals. Identity policies include managed and inline policies for IAM roles, users, and groups.</p> <p>Resource policies grant permissions on Amazon Web Services resources. Resource policies include trust policies for IAM roles and bucket policies for Amazon S3 buckets.</p>", "smithy.api#required" => {}}))
    CheckAccessNotGrantedRequest.type = Types::CheckAccessNotGrantedRequest
    CheckAccessNotGrantedResponse.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckAccessNotGrantedResult, location_name: 'result', traits: {"smithy.api#documentation" => "<p>The result of the check for whether the access is allowed. If the result is <code>PASS</code>, the specified policy doesn't allow any of the specified permissions in the access object. If the result is <code>FAIL</code>, the specified policy might allow some or all of the permissions in the access object.</p>"}))
    CheckAccessNotGrantedResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message indicating whether the specified access is allowed.</p>"}))
    CheckAccessNotGrantedResponse.add_member(:reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: ReasonSummaryList, location_name: 'reasons', traits: {"smithy.api#documentation" => "<p>A description of the reasoning of the result.</p>"}))
    CheckAccessNotGrantedResponse.type = Types::CheckAccessNotGrantedResponse
    CheckNoNewAccessRequest.add_member(:new_policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessCheckPolicyDocument, location_name: 'newPolicyDocument', traits: {"smithy.api#documentation" => "<p>The JSON policy document to use as the content for the updated policy.</p>", "smithy.api#required" => {}}))
    CheckNoNewAccessRequest.add_member(:existing_policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessCheckPolicyDocument, location_name: 'existingPolicyDocument', traits: {"smithy.api#documentation" => "<p>The JSON policy document to use as the content for the existing policy.</p>", "smithy.api#required" => {}}))
    CheckNoNewAccessRequest.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessCheckPolicyType, location_name: 'policyType', traits: {"smithy.api#documentation" => "<p>The type of policy to compare. Identity policies grant permissions to IAM principals. Identity policies include managed and inline policies for IAM roles, users, and groups.</p> <p>Resource policies grant permissions on Amazon Web Services resources. Resource policies include trust policies for IAM roles and bucket policies for Amazon S3 buckets. You can provide a generic input such as identity policy or resource policy or a specific input such as managed policy or Amazon S3 bucket policy.</p>", "smithy.api#required" => {}}))
    CheckNoNewAccessRequest.type = Types::CheckNoNewAccessRequest
    CheckNoNewAccessResponse.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckNoNewAccessResult, location_name: 'result', traits: {"smithy.api#documentation" => "<p>The result of the check for new access. If the result is <code>PASS</code>, no new access is allowed by the updated policy. If the result is <code>FAIL</code>, the updated policy might allow new access.</p>"}))
    CheckNoNewAccessResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message indicating whether the updated policy allows new access.</p>"}))
    CheckNoNewAccessResponse.add_member(:reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: ReasonSummaryList, location_name: 'reasons', traits: {"smithy.api#documentation" => "<p>A description of the reasoning of the result.</p>"}))
    CheckNoNewAccessResponse.type = Types::CheckNoNewAccessResponse
    CheckNoPublicAccessRequest.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessCheckPolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#documentation" => "<p>The JSON policy document to evaluate for public access.</p>", "smithy.api#required" => {}}))
    CheckNoPublicAccessRequest.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessCheckResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of resource to evaluate for public access. For example, to check for public access to Amazon S3 buckets, you can choose <code>AWS::S3::Bucket</code> for the resource type.</p> <p>For resource types not supported as valid values, IAM Access Analyzer will return an error.</p>", "smithy.api#required" => {}}))
    CheckNoPublicAccessRequest.type = Types::CheckNoPublicAccessRequest
    CheckNoPublicAccessResponse.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: CheckNoPublicAccessResult, location_name: 'result', traits: {"smithy.api#documentation" => "<p>The result of the check for public access to the specified resource type. If the result is <code>PASS</code>, the policy doesn't allow public access to the specified resource type. If the result is <code>FAIL</code>, the policy might allow public access to the specified resource type.</p>"}))
    CheckNoPublicAccessResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The message indicating whether the specified policy allows public access to resources.</p>"}))
    CheckNoPublicAccessResponse.add_member(:reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: ReasonSummaryList, location_name: 'reasons', traits: {"smithy.api#documentation" => "<p>A list of reasons why the specified resource policy grants public access for the resource type.</p>"}))
    CheckNoPublicAccessResponse.type = Types::CheckNoPublicAccessResponse
    CloudTrailDetails.add_member(:trails, Smithy::Schema::Shapes::ShapeRef.new(shape: TrailList, location_name: 'trails', traits: {"smithy.api#documentation" => "<p>A <code>Trail</code> object that contains settings for a trail.</p>", "smithy.api#required" => {}}))
    CloudTrailDetails.add_member(:access_role, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'accessRole', traits: {"smithy.api#documentation" => "<p>The ARN of the service role that IAM Access Analyzer uses to access your CloudTrail trail and service last accessed information.</p>", "smithy.api#required" => {}}))
    CloudTrailDetails.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start of the time range for which IAM Access Analyzer reviews your CloudTrail events. Events with a timestamp before this time are not considered to generate a policy.</p>", "smithy.api#required" => {}}))
    CloudTrailDetails.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The end of the time range for which IAM Access Analyzer reviews your CloudTrail events. Events with a timestamp after this time are not considered to generate a policy. If this is not included in the request, the default value is the current time.</p>"}))
    CloudTrailDetails.type = Types::CloudTrailDetails
    CloudTrailProperties.add_member(:trail_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: TrailPropertiesList, location_name: 'trailProperties', traits: {"smithy.api#documentation" => "<p>A <code>TrailProperties</code> object that contains settings for trail properties.</p>", "smithy.api#required" => {}}))
    CloudTrailProperties.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The start of the time range for which IAM Access Analyzer reviews your CloudTrail events. Events with a timestamp before this time are not considered to generate a policy.</p>", "smithy.api#required" => {}}))
    CloudTrailProperties.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The end of the time range for which IAM Access Analyzer reviews your CloudTrail events. Events with a timestamp after this time are not considered to generate a policy. If this is not included in the request, the default value is the current time.</p>", "smithy.api#required" => {}}))
    CloudTrailProperties.type = Types::CloudTrailProperties
    ConditionKeyMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ConditionKeyMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    Configuration.add_member(:ebs_snapshot, Types::Configuration::EbsSnapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: EbsSnapshotConfiguration, location_name: 'ebsSnapshot', traits: {"smithy.api#documentation" => "<p>The access control configuration is for an Amazon EBS volume snapshot.</p>"}))
    Configuration.add_member(:ecr_repository, Types::Configuration::EcrRepository, Smithy::Schema::Shapes::ShapeRef.new(shape: EcrRepositoryConfiguration, location_name: 'ecrRepository', traits: {"smithy.api#documentation" => "<p>The access control configuration is for an Amazon ECR repository.</p>"}))
    Configuration.add_member(:iam_role, Types::Configuration::IamRole, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleConfiguration, location_name: 'iamRole', traits: {"smithy.api#documentation" => "<p>The access control configuration is for an IAM role. </p>"}))
    Configuration.add_member(:efs_file_system, Types::Configuration::EfsFileSystem, Smithy::Schema::Shapes::ShapeRef.new(shape: EfsFileSystemConfiguration, location_name: 'efsFileSystem', traits: {"smithy.api#documentation" => "<p>The access control configuration is for an Amazon EFS file system.</p>"}))
    Configuration.add_member(:kms_key, Types::Configuration::KmsKey, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyConfiguration, location_name: 'kmsKey', traits: {"smithy.api#documentation" => "<p>The access control configuration is for a KMS key. </p>"}))
    Configuration.add_member(:rds_db_cluster_snapshot, Types::Configuration::RdsDbClusterSnapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotConfiguration, location_name: 'rdsDbClusterSnapshot', traits: {"smithy.api#documentation" => "<p>The access control configuration is for an Amazon RDS DB cluster snapshot.</p>"}))
    Configuration.add_member(:rds_db_snapshot, Types::Configuration::RdsDbSnapshot, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbSnapshotConfiguration, location_name: 'rdsDbSnapshot', traits: {"smithy.api#documentation" => "<p>The access control configuration is for an Amazon RDS DB snapshot.</p>"}))
    Configuration.add_member(:secrets_manager_secret, Types::Configuration::SecretsManagerSecret, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerSecretConfiguration, location_name: 'secretsManagerSecret', traits: {"smithy.api#documentation" => "<p>The access control configuration is for a Secrets Manager secret.</p>"}))
    Configuration.add_member(:s3_bucket, Types::Configuration::S3Bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketConfiguration, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p>The access control configuration is for an Amazon S3 bucket. </p>"}))
    Configuration.add_member(:sns_topic, Types::Configuration::SnsTopic, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicConfiguration, location_name: 'snsTopic', traits: {"smithy.api#documentation" => "<p>The access control configuration is for an Amazon SNS topic</p>"}))
    Configuration.add_member(:sqs_queue, Types::Configuration::SqsQueue, Smithy::Schema::Shapes::ShapeRef.new(shape: SqsQueueConfiguration, location_name: 'sqsQueue', traits: {"smithy.api#documentation" => "<p>The access control configuration is for an Amazon SQS queue. </p>"}))
    Configuration.add_member(:s3_express_directory_bucket, Types::Configuration::S3ExpressDirectoryBucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ExpressDirectoryBucketConfiguration, location_name: 's3ExpressDirectoryBucket', traits: {"smithy.api#documentation" => "<p>The access control configuration is for an Amazon S3 directory bucket.</p>"}))
    Configuration.add_member(:dynamodb_stream, Types::Configuration::DynamodbStream, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamodbStreamConfiguration, location_name: 'dynamodbStream', traits: {"smithy.api#documentation" => "<p>The access control configuration is for a DynamoDB stream.</p>"}))
    Configuration.add_member(:dynamodb_table, Types::Configuration::DynamodbTable, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamodbTableConfiguration, location_name: 'dynamodbTable', traits: {"smithy.api#documentation" => "<p>The access control configuration is for a DynamoDB table or index.</p>"}))
    Configuration.add_member(:unknown, Types::Configuration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    Configuration.type = Types::Configuration
    ConfigurationsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationsMapKey)
    ConfigurationsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Configuration)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateAccessPreviewInput.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of the account analyzer</a> used to generate the access preview. You can only create an access preview for analyzers with an <code>Account</code> type and <code>Active</code> status.</p>", "smithy.api#required" => {}}))
    CreateAccessPreviewInput.add_member(:configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationsMap, location_name: 'configurations', traits: {"smithy.api#documentation" => "<p>Access control configuration for your resource that is used to generate the access preview. The access preview includes findings for external access allowed to the resource with the proposed access control configuration. The configuration must contain exactly one element.</p>", "smithy.api#required" => {}}))
    CreateAccessPreviewInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A client token.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAccessPreviewInput.type = Types::CreateAccessPreviewInput
    CreateAccessPreviewOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID for the access preview.</p>", "smithy.api#required" => {}}))
    CreateAccessPreviewOutput.type = Types::CreateAccessPreviewOutput
    CreateAnalyzerInput.add_member(:analyzer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#documentation" => "<p>The name of the analyzer to create.</p>", "smithy.api#required" => {}}))
    CreateAnalyzerInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of analyzer to create. You can create only one analyzer per account per Region. You can create up to 5 analyzers per organization per Region.</p>", "smithy.api#required" => {}}))
    CreateAnalyzerInput.add_member(:archive_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: InlineArchiveRulesList, location_name: 'archiveRules', traits: {"smithy.api#documentation" => "<p>Specifies the archive rules to add for the analyzer. Archive rules automatically archive findings that meet the criteria you define for the rule.</p>"}))
    CreateAnalyzerInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An array of key-value pairs to apply to the analyzer. You can use the set of Unicode letters, digits, whitespace, <code>_</code>, <code>.</code>, <code>/</code>, <code>=</code>, <code>+</code>, and <code>-</code>.</p> <p>For the tag key, you can specify a value that is 1 to 128 characters in length and cannot be prefixed with <code>aws:</code>.</p> <p>For the tag value, you can specify a value that is 0 to 256 characters in length.</p>"}))
    CreateAnalyzerInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A client token.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateAnalyzerInput.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>Specifies the configuration of the analyzer. If the analyzer is an unused access analyzer, the specified scope of unused access is used for the configuration. If the analyzer is an internal access analyzer, the specified internal access analysis rules are used for the configuration.</p>"}))
    CreateAnalyzerInput.type = Types::CreateAnalyzerInput
    CreateAnalyzerOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the analyzer that was created by the request.</p>"}))
    CreateAnalyzerOutput.type = Types::CreateAnalyzerOutput
    CreateArchiveRuleInput.add_member(:analyzer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#documentation" => "<p>The name of the created analyzer.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateArchiveRuleInput.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ruleName', traits: {"smithy.api#documentation" => "<p>The name of the rule to create.</p>", "smithy.api#required" => {}}))
    CreateArchiveRuleInput.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>The criteria for the rule.</p>", "smithy.api#required" => {}}))
    CreateArchiveRuleInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A client token.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateArchiveRuleInput.type = Types::CreateArchiveRuleInput
    Criterion.add_member(:eq, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueList, location_name: 'eq', traits: {"smithy.api#documentation" => "<p>An \"equals\" operator to match for the filter used to create the rule.</p>"}))
    Criterion.add_member(:neq, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueList, location_name: 'neq', traits: {"smithy.api#documentation" => "<p>A \"not equals\" operator to match for the filter used to create the rule.</p>"}))
    Criterion.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueList, location_name: 'contains', traits: {"smithy.api#documentation" => "<p>A \"contains\" operator to match for the filter used to create the rule.</p>"}))
    Criterion.add_member(:exists, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'exists', traits: {"smithy.api#documentation" => "<p>An \"exists\" operator to match for the filter used to create the rule. </p>"}))
    Criterion.type = Types::Criterion
    DeleteAnalyzerInput.add_member(:analyzer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#documentation" => "<p>The name of the analyzer to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAnalyzerInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A client token.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteAnalyzerInput.type = Types::DeleteAnalyzerInput
    DeleteArchiveRuleInput.add_member(:analyzer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#documentation" => "<p>The name of the analyzer that associated with the archive rule to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteArchiveRuleInput.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ruleName', traits: {"smithy.api#documentation" => "<p>The name of the rule to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteArchiveRuleInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A client token.</p>", "smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteArchiveRuleInput.type = Types::DeleteArchiveRuleInput
    DynamodbStreamConfiguration.add_member(:stream_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamodbStreamPolicy, location_name: 'streamPolicy', traits: {"smithy.api#documentation" => "<p>The proposed resource policy defining who can access or manage the DynamoDB stream.</p>"}))
    DynamodbStreamConfiguration.type = Types::DynamodbStreamConfiguration
    DynamodbTableConfiguration.add_member(:table_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamodbTablePolicy, location_name: 'tablePolicy', traits: {"smithy.api#documentation" => "<p>The proposed resource policy defining who can access or manage the DynamoDB table.</p>"}))
    DynamodbTableConfiguration.type = Types::DynamodbTableConfiguration
    EbsGroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EbsGroup)
    EbsSnapshotConfiguration.add_member(:user_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: EbsUserIdList, location_name: 'userIds', traits: {"smithy.api#documentation" => "<p>The IDs of the Amazon Web Services accounts that have access to the Amazon EBS volume snapshot.</p> <ul> <li> <p>If the configuration is for an existing Amazon EBS volume snapshot and you do not specify the <code>userIds</code>, then the access preview uses the existing shared <code>userIds</code> for the snapshot.</p> </li> <li> <p>If the access preview is for a new resource and you do not specify the <code>userIds</code>, then the access preview considers the snapshot without any <code>userIds</code>.</p> </li> <li> <p>To propose deletion of existing shared <code>accountIds</code>, you can specify an empty list for <code>userIds</code>.</p> </li> </ul>"}))
    EbsSnapshotConfiguration.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: EbsGroupList, location_name: 'groups', traits: {"smithy.api#documentation" => "<p>The groups that have access to the Amazon EBS volume snapshot. If the value <code>all</code> is specified, then the Amazon EBS volume snapshot is public.</p> <ul> <li> <p>If the configuration is for an existing Amazon EBS volume snapshot and you do not specify the <code>groups</code>, then the access preview uses the existing shared <code>groups</code> for the snapshot.</p> </li> <li> <p>If the access preview is for a new resource and you do not specify the <code>groups</code>, then the access preview considers the snapshot without any <code>groups</code>.</p> </li> <li> <p>To propose deletion of existing shared <code>groups</code>, you can specify an empty list for <code>groups</code>.</p> </li> </ul>"}))
    EbsSnapshotConfiguration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: EbsSnapshotDataEncryptionKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key identifier for an encrypted Amazon EBS volume snapshot. The KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p> <ul> <li> <p>If the configuration is for an existing Amazon EBS volume snapshot and you do not specify the <code>kmsKeyId</code>, or you specify an empty string, then the access preview uses the existing <code>kmsKeyId</code> of the snapshot.</p> </li> <li> <p>If the access preview is for a new resource and you do not specify the <code>kmsKeyId</code>, the access preview considers the snapshot as unencrypted.</p> </li> </ul>"}))
    EbsSnapshotConfiguration.type = Types::EbsSnapshotConfiguration
    EbsUserIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EbsUserId)
    EcrRepositoryConfiguration.add_member(:repository_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: EcrRepositoryPolicy, location_name: 'repositoryPolicy', traits: {"smithy.api#documentation" => "<p>The JSON repository policy text to apply to the Amazon ECR repository. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html\">Private repository policy examples</a> in the <i>Amazon ECR User Guide</i>.</p>"}))
    EcrRepositoryConfiguration.type = Types::EcrRepositoryConfiguration
    EfsFileSystemConfiguration.add_member(:file_system_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: EfsFileSystemPolicy, location_name: 'fileSystemPolicy', traits: {"smithy.api#documentation" => "<p>The JSON policy definition to apply to the Amazon EFS file system. For more information on the elements that make up a file system policy, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/access-control-overview.html#access-control-manage-access-intro-resource-policies\">Amazon EFS Resource-based policies</a>.</p>"}))
    EfsFileSystemConfiguration.type = Types::EfsFileSystemConfiguration
    ExternalAccessDetails.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action in the analyzed policy statement that an external principal has permission to use.</p>"}))
    ExternalAccessDetails.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionKeyMap, location_name: 'condition', traits: {"smithy.api#documentation" => "<p>The condition in the analyzed policy statement that resulted in an external access finding.</p>", "smithy.api#required" => {}}))
    ExternalAccessDetails.add_member(:is_public, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isPublic', traits: {"smithy.api#documentation" => "<p>Specifies whether the external access finding is public.</p>"}))
    ExternalAccessDetails.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalMap, location_name: 'principal', traits: {"smithy.api#documentation" => "<p>The external principal that has access to a resource within the zone of trust.</p>"}))
    ExternalAccessDetails.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSourceList, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the external access finding. This indicates how the access that generated the finding is granted. It is populated for Amazon S3 bucket findings.</p>"}))
    ExternalAccessDetails.add_member(:resource_control_policy_restriction, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceControlPolicyRestriction, location_name: 'resourceControlPolicyRestriction', traits: {"smithy.api#documentation" => "<p>The type of restriction applied to the finding by the resource owner with an Organizations resource control policy (RCP).</p> <ul> <li> <p> <code>APPLICABLE</code>: There is an RCP present in the organization but IAM Access Analyzer does not include it in the evaluation of effective permissions. For example, if <code>s3:DeleteObject</code> is blocked by the RCP and the restriction is <code>APPLICABLE</code>, then <code>s3:DeleteObject</code> would still be included in the list of actions for the finding.</p> </li> <li> <p> <code>FAILED_TO_EVALUATE_RCP</code>: There was an error evaluating the RCP.</p> </li> <li> <p> <code>NOT_APPLICABLE</code>: There was no RCP present in the organization, or there was no RCP applicable to the resource. For example, the resource being analyzed is an Amazon RDS snapshot and there is an RCP in the organization, but the RCP only impacts Amazon S3 buckets.</p> </li> <li> <p> <code>APPLIED</code>: This restriction is not currently available for external access findings. </p> </li> </ul>"}))
    ExternalAccessDetails.type = Types::ExternalAccessDetails
    ExternalAccessFindingsStatistics.add_member(:resource_type_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeStatisticsMap, location_name: 'resourceTypeStatistics', traits: {"smithy.api#documentation" => "<p>The total number of active cross-account and public findings for each resource type of the specified external access analyzer.</p>"}))
    ExternalAccessFindingsStatistics.add_member(:total_active_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalActiveFindings', traits: {"smithy.api#documentation" => "<p>The number of active findings for the specified external access analyzer.</p>"}))
    ExternalAccessFindingsStatistics.add_member(:total_archived_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalArchivedFindings', traits: {"smithy.api#documentation" => "<p>The number of archived findings for the specified external access analyzer.</p>"}))
    ExternalAccessFindingsStatistics.add_member(:total_resolved_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalResolvedFindings', traits: {"smithy.api#documentation" => "<p>The number of resolved findings for the specified external access analyzer.</p>"}))
    ExternalAccessFindingsStatistics.type = Types::ExternalAccessFindingsStatistics
    FilterCriteriaMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    FilterCriteriaMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Criterion)
    Finding.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the finding.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalMap, location_name: 'principal', traits: {"smithy.api#documentation" => "<p>The external principal that has access to a resource within the zone of trust.</p>"}))
    Finding.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action in the analyzed policy statement that an external principal has permission to use.</p>"}))
    Finding.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The resource that an external principal has access to.</p>"}))
    Finding.add_member(:is_public, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isPublic', traits: {"smithy.api#documentation" => "<p>Indicates whether the policy that generated the finding allows public access to the resource.</p>"}))
    Finding.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource identified in the finding.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionKeyMap, location_name: 'condition', traits: {"smithy.api#documentation" => "<p>The condition in the analyzed policy statement that resulted in a finding.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the finding was generated.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:analyzed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'analyzedAt', traits: {"smithy.api#documentation" => "<p>The time at which the resource was analyzed.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the finding was updated.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the finding.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:resource_owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceOwnerAccount', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that owns the resource.</p>", "smithy.api#required" => {}}))
    Finding.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'error', traits: {"smithy.api#documentation" => "<p>An error.</p>"}))
    Finding.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSourceList, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the finding. This indicates how the access that generated the finding is granted. It is populated for Amazon S3 bucket findings.</p>"}))
    Finding.add_member(:resource_control_policy_restriction, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceControlPolicyRestriction, location_name: 'resourceControlPolicyRestriction', traits: {"smithy.api#documentation" => "<p>The type of restriction applied to the finding by the resource owner with an Organizations resource control policy (RCP).</p>"}))
    Finding.type = Types::Finding
    FindingAggregationAccountDetails.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'account', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon Web Services account for which unused access finding details are provided.</p>"}))
    FindingAggregationAccountDetails.add_member(:number_of_active_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'numberOfActiveFindings', traits: {"smithy.api#documentation" => "<p>The number of active unused access findings for the specified Amazon Web Services account.</p>"}))
    FindingAggregationAccountDetails.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingAggregationAccountDetailsMap, location_name: 'details', traits: {"smithy.api#documentation" => "<p>Provides the number of active findings for each type of unused access for the specified Amazon Web Services account.</p>"}))
    FindingAggregationAccountDetails.type = Types::FindingAggregationAccountDetails
    FindingAggregationAccountDetailsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    FindingAggregationAccountDetailsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer)
    FindingDetails.add_member(:internal_access_details, Types::FindingDetails::InternalAccessDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessDetails, location_name: 'internalAccessDetails', traits: {"smithy.api#documentation" => "<p>The details for an internal access analyzer finding. This contains information about access patterns identified within your Amazon Web Services organization or account.</p>"}))
    FindingDetails.add_member(:external_access_details, Types::FindingDetails::ExternalAccessDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalAccessDetails, location_name: 'externalAccessDetails', traits: {"smithy.api#documentation" => "<p>The details for an external access analyzer finding.</p>"}))
    FindingDetails.add_member(:unused_permission_details, Types::FindingDetails::UnusedPermissionDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedPermissionDetails, location_name: 'unusedPermissionDetails', traits: {"smithy.api#documentation" => "<p>The details for an unused access analyzer finding with an unused permission finding type.</p>"}))
    FindingDetails.add_member(:unused_iam_user_access_key_details, Types::FindingDetails::UnusedIamUserAccessKeyDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedIamUserAccessKeyDetails, location_name: 'unusedIamUserAccessKeyDetails', traits: {"smithy.api#documentation" => "<p>The details for an unused access analyzer finding with an unused IAM user access key finding type.</p>"}))
    FindingDetails.add_member(:unused_iam_role_details, Types::FindingDetails::UnusedIamRoleDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedIamRoleDetails, location_name: 'unusedIamRoleDetails', traits: {"smithy.api#documentation" => "<p>The details for an unused access analyzer finding with an unused IAM role finding type.</p>"}))
    FindingDetails.add_member(:unused_iam_user_password_details, Types::FindingDetails::UnusedIamUserPasswordDetails, Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedIamUserPasswordDetails, location_name: 'unusedIamUserPasswordDetails', traits: {"smithy.api#documentation" => "<p>The details for an unused access analyzer finding with an unused IAM user password finding type.</p>"}))
    FindingDetails.add_member(:unknown, Types::FindingDetails::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    FindingDetails.type = Types::FindingDetails
    FindingDetailsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FindingDetails)
    FindingIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId)
    FindingSource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSourceType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Indicates the type of access that generated the finding.</p>", "smithy.api#required" => {}}))
    FindingSource.add_member(:detail, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSourceDetail, location_name: 'detail', traits: {"smithy.api#documentation" => "<p>Includes details about how the access that generated the finding is granted. This is populated for Amazon S3 bucket findings.</p>"}))
    FindingSource.type = Types::FindingSource
    FindingSourceDetail.add_member(:access_point_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'accessPointArn', traits: {"smithy.api#documentation" => "<p>The ARN of the access point that generated the finding. The ARN format depends on whether the ARN represents an access point or a multi-region access point.</p>"}))
    FindingSourceDetail.add_member(:access_point_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'accessPointAccount', traits: {"smithy.api#documentation" => "<p>The account of the cross-account access point that generated the finding.</p>"}))
    FindingSourceDetail.type = Types::FindingSourceDetail
    FindingSourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSource)
    FindingSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the finding.</p>", "smithy.api#required" => {}}))
    FindingSummary.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalMap, location_name: 'principal', traits: {"smithy.api#documentation" => "<p>The external principal that has access to a resource within the zone of trust.</p>"}))
    FindingSummary.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action in the analyzed policy statement that an external principal has permission to use.</p>"}))
    FindingSummary.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The resource that the external principal has access to.</p>"}))
    FindingSummary.add_member(:is_public, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isPublic', traits: {"smithy.api#documentation" => "<p>Indicates whether the finding reports a resource that has a policy that allows public access.</p>"}))
    FindingSummary.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that the external principal has access to.</p>", "smithy.api#required" => {}}))
    FindingSummary.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionKeyMap, location_name: 'condition', traits: {"smithy.api#documentation" => "<p>The condition in the analyzed policy statement that resulted in a finding.</p>", "smithy.api#required" => {}}))
    FindingSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the finding was created.</p>", "smithy.api#required" => {}}))
    FindingSummary.add_member(:analyzed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'analyzedAt', traits: {"smithy.api#documentation" => "<p>The time at which the resource-based policy that generated the finding was analyzed.</p>", "smithy.api#required" => {}}))
    FindingSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the finding was most recently updated.</p>", "smithy.api#required" => {}}))
    FindingSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the finding.</p>", "smithy.api#required" => {}}))
    FindingSummary.add_member(:resource_owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceOwnerAccount', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that owns the resource.</p>", "smithy.api#required" => {}}))
    FindingSummary.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error that resulted in an Error finding.</p>"}))
    FindingSummary.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSourceList, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the finding. This indicates how the access that generated the finding is granted. It is populated for Amazon S3 bucket findings.</p>"}))
    FindingSummary.add_member(:resource_control_policy_restriction, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceControlPolicyRestriction, location_name: 'resourceControlPolicyRestriction', traits: {"smithy.api#documentation" => "<p>The type of restriction applied to the finding by the resource owner with an Organizations resource control policy (RCP).</p>"}))
    FindingSummary.type = Types::FindingSummary
    FindingSummaryV2.add_member(:analyzed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'analyzedAt', traits: {"smithy.api#documentation" => "<p>The time at which the resource-based policy or IAM entity that generated the finding was analyzed.</p>", "smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the finding was created.</p>", "smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'error', traits: {"smithy.api#documentation" => "<p>The error that resulted in an Error finding.</p>"}))
    FindingSummaryV2.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the finding.</p>", "smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The resource that the external principal has access to.</p>"}))
    FindingSummaryV2.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource that the external principal has access to.</p>", "smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:resource_owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceOwnerAccount', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that owns the resource.</p>", "smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the finding.</p>", "smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the finding was most recently updated.</p>", "smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:finding_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingType, location_name: 'findingType', traits: {"smithy.api#documentation" => "<p>The type of the access finding. For external access analyzers, the type is <code>ExternalAccess</code>. For unused access analyzers, the type can be <code>UnusedIAMRole</code>, <code>UnusedIAMUserAccessKey</code>, <code>UnusedIAMUserPassword</code>, or <code>UnusedPermission</code>. For internal access analyzers, the type is <code>InternalAccess</code>.</p>"}))
    FindingSummaryV2.type = Types::FindingSummaryV2
    FindingsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSummary)
    FindingsListV2.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSummaryV2)
    FindingsStatistics.add_member(:external_access_findings_statistics, Types::FindingsStatistics::ExternalAccessFindingsStatistics, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalAccessFindingsStatistics, location_name: 'externalAccessFindingsStatistics', traits: {"smithy.api#documentation" => "<p>The aggregate statistics for an external access analyzer.</p>"}))
    FindingsStatistics.add_member(:internal_access_findings_statistics, Types::FindingsStatistics::InternalAccessFindingsStatistics, Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessFindingsStatistics, location_name: 'internalAccessFindingsStatistics', traits: {"smithy.api#documentation" => "<p>The aggregate statistics for an internal access analyzer. This includes information about active, archived, and resolved findings related to internal access within your Amazon Web Services organization or account.</p>"}))
    FindingsStatistics.add_member(:unused_access_findings_statistics, Types::FindingsStatistics::UnusedAccessFindingsStatistics, Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedAccessFindingsStatistics, location_name: 'unusedAccessFindingsStatistics', traits: {"smithy.api#documentation" => "<p>The aggregate statistics for an unused access analyzer.</p>"}))
    FindingsStatistics.add_member(:unknown, Types::FindingsStatistics::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    FindingsStatistics.type = Types::FindingsStatistics
    FindingsStatisticsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsStatistics)
    GenerateFindingRecommendationRequest.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of the analyzer</a> used to generate the finding recommendation.</p>", "smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GenerateFindingRecommendationRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID for the finding recommendation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    GenerateFindingRecommendationRequest.type = Types::GenerateFindingRecommendationRequest
    GeneratedPolicy.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The text to use as the content for the new policy. The policy is created using the <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html\">CreatePolicy</a> action.</p>", "smithy.api#required" => {}}))
    GeneratedPolicy.type = Types::GeneratedPolicy
    GeneratedPolicyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedPolicy)
    GeneratedPolicyProperties.add_member(:is_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'isComplete', traits: {"smithy.api#documentation" => "<p>This value is set to <code>true</code> if the generated policy contains all possible actions for a service that IAM Access Analyzer identified from the CloudTrail trail that you specified, and <code>false</code> otherwise.</p>"}))
    GeneratedPolicyProperties.add_member(:principal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalArn, location_name: 'principalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM entity (user or role) for which you are generating a policy.</p>", "smithy.api#required" => {}}))
    GeneratedPolicyProperties.add_member(:cloud_trail_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailProperties, location_name: 'cloudTrailProperties', traits: {"smithy.api#documentation" => "<p>Lists details about the <code>Trail</code> used to generated policy.</p>"}))
    GeneratedPolicyProperties.type = Types::GeneratedPolicyProperties
    GeneratedPolicyResult.add_member(:properties, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedPolicyProperties, location_name: 'properties', traits: {"smithy.api#documentation" => "<p>A <code>GeneratedPolicyProperties</code> object that contains properties of the generated policy.</p>", "smithy.api#required" => {}}))
    GeneratedPolicyResult.add_member(:generated_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedPolicyList, location_name: 'generatedPolicies', traits: {"smithy.api#documentation" => "<p>The text to use as the content for the new policy. The policy is created using the <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html\">CreatePolicy</a> action.</p>"}))
    GeneratedPolicyResult.type = Types::GeneratedPolicyResult
    GetAccessPreviewInput.add_member(:access_preview_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewId, location_name: 'accessPreviewId', traits: {"smithy.api#documentation" => "<p>The unique ID for the access preview.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessPreviewInput.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of the analyzer</a> used to generate the access preview.</p>", "smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GetAccessPreviewInput.type = Types::GetAccessPreviewInput
    GetAccessPreviewOutput.add_member(:access_preview, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreview, location_name: 'accessPreview', traits: {"smithy.api#documentation" => "<p>An object that contains information about the access preview.</p>", "smithy.api#required" => {}}))
    GetAccessPreviewOutput.type = Types::GetAccessPreviewOutput
    GetAnalyzedResourceInput.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of the analyzer</a> to retrieve information from.</p>", "smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GetAnalyzedResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to retrieve information about.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    GetAnalyzedResourceInput.type = Types::GetAnalyzedResourceInput
    GetAnalyzedResourceOutput.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzedResource, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>An <code>AnalyzedResource</code> object that contains information that IAM Access Analyzer found when it analyzed the resource.</p>"}))
    GetAnalyzedResourceOutput.type = Types::GetAnalyzedResourceOutput
    GetAnalyzerInput.add_member(:analyzer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#documentation" => "<p>The name of the analyzer retrieved.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnalyzerInput.type = Types::GetAnalyzerInput
    GetAnalyzerOutput.add_member(:analyzer, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerSummary, location_name: 'analyzer', traits: {"smithy.api#documentation" => "<p>An <code>AnalyzerSummary</code> object that contains information about the analyzer.</p>", "smithy.api#required" => {}}))
    GetAnalyzerOutput.type = Types::GetAnalyzerOutput
    GetArchiveRuleInput.add_member(:analyzer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#documentation" => "<p>The name of the analyzer to retrieve rules from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetArchiveRuleInput.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ruleName', traits: {"smithy.api#documentation" => "<p>The name of the rule to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetArchiveRuleInput.type = Types::GetArchiveRuleInput
    GetArchiveRuleOutput.add_member(:archive_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveRuleSummary, location_name: 'archiveRule', traits: {"smithy.api#required" => {}}))
    GetArchiveRuleOutput.type = Types::GetArchiveRuleOutput
    GetFindingInput.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of the analyzer</a> that generated the finding.</p>", "smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GetFindingInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the finding to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFindingInput.type = Types::GetFindingInput
    GetFindingOutput.add_member(:finding, Smithy::Schema::Shapes::ShapeRef.new(shape: Finding, location_name: 'finding', traits: {"smithy.api#documentation" => "<p>A <code>finding</code> object that contains finding details.</p>"}))
    GetFindingOutput.type = Types::GetFindingOutput
    GetFindingRecommendationRequest.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of the analyzer</a> used to generate the finding recommendation.</p>", "smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GetFindingRecommendationRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique ID for the finding recommendation.</p>", "smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    GetFindingRecommendationRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    GetFindingRecommendationRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetFindingRecommendationRequest.type = Types::GetFindingRecommendationRequest
    GetFindingRecommendationResponse.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>The time at which the retrieval of the finding recommendation was started.</p>", "smithy.api#required" => {}}))
    GetFindingRecommendationResponse.add_member(:completed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'completedAt', traits: {"smithy.api#documentation" => "<p>The time at which the retrieval of the finding recommendation was completed.</p>"}))
    GetFindingRecommendationResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>"}))
    GetFindingRecommendationResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationError, location_name: 'error', traits: {"smithy.api#documentation" => "<p>Detailed information about the reason that the retrieval of a recommendation for the finding failed.</p>"}))
    GetFindingRecommendationResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource of the finding.</p>", "smithy.api#required" => {}}))
    GetFindingRecommendationResponse.add_member(:recommended_steps, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedStepList, location_name: 'recommendedSteps', traits: {"smithy.api#documentation" => "<p>A group of recommended steps for the finding.</p>"}))
    GetFindingRecommendationResponse.add_member(:recommendation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationType, location_name: 'recommendationType', traits: {"smithy.api#documentation" => "<p>The type of recommendation for the finding.</p>", "smithy.api#required" => {}}))
    GetFindingRecommendationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the retrieval of the finding recommendation.</p>", "smithy.api#required" => {}}))
    GetFindingRecommendationResponse.type = Types::GetFindingRecommendationResponse
    GetFindingV2Request.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of the analyzer</a> that generated the finding.</p>", "smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GetFindingV2Request.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the finding to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFindingV2Request.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    GetFindingV2Request.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>", "smithy.api#httpQuery" => "nextToken"}))
    GetFindingV2Request.type = Types::GetFindingV2Request
    GetFindingV2Response.add_member(:analyzed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'analyzedAt', traits: {"smithy.api#documentation" => "<p>The time at which the resource-based policy or IAM entity that generated the finding was analyzed.</p>", "smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time at which the finding was created.</p>", "smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'error', traits: {"smithy.api#documentation" => "<p>An error.</p>"}))
    GetFindingV2Response.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the finding to retrieve.</p>", "smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>"}))
    GetFindingV2Response.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resource', traits: {"smithy.api#documentation" => "<p>The resource that generated the finding.</p>"}))
    GetFindingV2Response.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource identified in the finding.</p>", "smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:resource_owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceOwnerAccount', traits: {"smithy.api#documentation" => "<p>Tye Amazon Web Services account ID that owns the resource.</p>", "smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the finding.</p>", "smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the finding was updated.</p>", "smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:finding_details, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingDetailsList, location_name: 'findingDetails', traits: {"smithy.api#documentation" => "<p>A localized message that explains the finding and provides guidance on how to address it.</p>", "smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:finding_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingType, location_name: 'findingType', traits: {"smithy.api#documentation" => "<p>The type of the finding. For external access analyzers, the type is <code>ExternalAccess</code>. For unused access analyzers, the type can be <code>UnusedIAMRole</code>, <code>UnusedIAMUserAccessKey</code>, <code>UnusedIAMUserPassword</code>, or <code>UnusedPermission</code>. For internal access analyzers, the type is <code>InternalAccess</code>.</p>"}))
    GetFindingV2Response.type = Types::GetFindingV2Response
    GetFindingsStatisticsRequest.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of the analyzer</a> used to generate the statistics.</p>", "smithy.api#required" => {}}))
    GetFindingsStatisticsRequest.type = Types::GetFindingsStatisticsRequest
    GetFindingsStatisticsResponse.add_member(:findings_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsStatisticsList, location_name: 'findingsStatistics', traits: {"smithy.api#documentation" => "<p>A group of external access or unused access findings statistics.</p>"}))
    GetFindingsStatisticsResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the retrieval of the findings statistics was last updated. If the findings statistics have not been previously retrieved for the specified analyzer, this field will not be populated.</p>"}))
    GetFindingsStatisticsResponse.type = Types::GetFindingsStatisticsResponse
    GetGeneratedPolicyInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The <code>JobId</code> that is returned by the <code>StartPolicyGeneration</code> operation. The <code>JobId</code> can be used with <code>GetGeneratedPolicy</code> to retrieve the generated policies or used with <code>CancelPolicyGeneration</code> to cancel the policy generation request.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGeneratedPolicyInput.add_member(:include_resource_placeholders, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'includeResourcePlaceholders', traits: {"smithy.api#documentation" => "<p>The level of detail that you want to generate. You can specify whether to generate policies with placeholders for resource ARNs for actions that support resource level granularity in policies.</p> <p>For example, in the resource section of a policy, you can receive a placeholder such as <code>\"Resource\":\"arn:aws:s3:::${BucketName}\"</code> instead of <code>\"*\"</code>.</p>", "smithy.api#httpQuery" => "includeResourcePlaceholders"}))
    GetGeneratedPolicyInput.add_member(:include_service_level_template, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'includeServiceLevelTemplate', traits: {"smithy.api#documentation" => "<p>The level of detail that you want to generate. You can specify whether to generate service-level policies. </p> <p>IAM Access Analyzer uses <code>iam:servicelastaccessed</code> to identify services that have been used recently to create this service-level template.</p>", "smithy.api#httpQuery" => "includeServiceLevelTemplate"}))
    GetGeneratedPolicyInput.type = Types::GetGeneratedPolicyInput
    GetGeneratedPolicyOutput.add_member(:job_details, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDetails, location_name: 'jobDetails', traits: {"smithy.api#documentation" => "<p>A <code>GeneratedPolicyDetails</code> object that contains details about the generated policy.</p>", "smithy.api#required" => {}}))
    GetGeneratedPolicyOutput.add_member(:generated_policy_result, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedPolicyResult, location_name: 'generatedPolicyResult', traits: {"smithy.api#documentation" => "<p>A <code>GeneratedPolicyResult</code> object that contains the generated policies and associated details.</p>", "smithy.api#required" => {}}))
    GetGeneratedPolicyOutput.type = Types::GetGeneratedPolicyOutput
    IamRoleConfiguration.add_member(:trust_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: IamTrustPolicy, location_name: 'trustPolicy', traits: {"smithy.api#documentation" => "<p>The proposed trust policy for the IAM role.</p>"}))
    IamRoleConfiguration.type = Types::IamRoleConfiguration
    InlineArchiveRule.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ruleName', traits: {"smithy.api#documentation" => "<p>The name of the rule.</p>", "smithy.api#required" => {}}))
    InlineArchiveRule.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>The condition and values for a criterion.</p>", "smithy.api#required" => {}}))
    InlineArchiveRule.type = Types::InlineArchiveRule
    InlineArchiveRulesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InlineArchiveRule)
    InternalAccessAnalysisRule.add_member(:inclusions, Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessAnalysisRuleCriteriaList, location_name: 'inclusions', traits: {"smithy.api#documentation" => "<p>A list of rules for the internal access analyzer containing criteria to include in analysis. Only resources that meet the rule criteria will generate findings.</p>"}))
    InternalAccessAnalysisRule.type = Types::InternalAccessAnalysisRule
    InternalAccessAnalysisRuleCriteria.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountIdsList, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>A list of Amazon Web Services account IDs to apply to the internal access analysis rule criteria. Account IDs can only be applied to the analysis rule criteria for organization-level analyzers.</p>"}))
    InternalAccessAnalysisRuleCriteria.add_member(:resource_types, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeList, location_name: 'resourceTypes', traits: {"smithy.api#documentation" => "<p>A list of resource types to apply to the internal access analysis rule criteria. The analyzer will only generate findings for resources of these types. These resource types are currently supported for internal access analyzers:</p> <ul> <li> <p> <code>AWS::S3::Bucket</code> </p> </li> <li> <p> <code>AWS::RDS::DBSnapshot</code> </p> </li> <li> <p> <code>AWS::RDS::DBClusterSnapshot</code> </p> </li> <li> <p> <code>AWS::S3Express::DirectoryBucket</code> </p> </li> <li> <p> <code>AWS::DynamoDB::Table</code> </p> </li> <li> <p> <code>AWS::DynamoDB::Stream</code> </p> </li> </ul>"}))
    InternalAccessAnalysisRuleCriteria.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnsList, location_name: 'resourceArns', traits: {"smithy.api#documentation" => "<p>A list of resource ARNs to apply to the internal access analysis rule criteria. The analyzer will only generate findings for resources that match these ARNs.</p>"}))
    InternalAccessAnalysisRuleCriteria.type = Types::InternalAccessAnalysisRuleCriteria
    InternalAccessAnalysisRuleCriteriaList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessAnalysisRuleCriteria)
    InternalAccessConfiguration.add_member(:analysis_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessAnalysisRule, location_name: 'analysisRule', traits: {"smithy.api#documentation" => "<p>Contains information about analysis rules for the internal access analyzer. These rules determine which resources and access patterns will be analyzed.</p>"}))
    InternalAccessConfiguration.type = Types::InternalAccessConfiguration
    InternalAccessDetails.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionList, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action in the analyzed policy statement that has internal access permission to use.</p>"}))
    InternalAccessDetails.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: ConditionKeyMap, location_name: 'condition', traits: {"smithy.api#documentation" => "<p>The condition in the analyzed policy statement that resulted in an internal access finding.</p>"}))
    InternalAccessDetails.add_member(:principal, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalMap, location_name: 'principal', traits: {"smithy.api#documentation" => "<p>The principal that has access to a resource within the internal environment.</p>"}))
    InternalAccessDetails.add_member(:principal_owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'principalOwnerAccount', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that owns the principal identified in the internal access finding.</p>"}))
    InternalAccessDetails.add_member(:access_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessType, location_name: 'accessType', traits: {"smithy.api#documentation" => "<p>The type of internal access identified in the finding. This indicates how the access is granted within your Amazon Web Services environment.</p>"}))
    InternalAccessDetails.add_member(:principal_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalType, location_name: 'principalType', traits: {"smithy.api#documentation" => "<p>The type of principal identified in the internal access finding, such as IAM role or IAM user.</p>"}))
    InternalAccessDetails.add_member(:sources, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingSourceList, location_name: 'sources', traits: {"smithy.api#documentation" => "<p>The sources of the internal access finding. This indicates how the access that generated the finding is granted within your Amazon Web Services environment.</p>"}))
    InternalAccessDetails.add_member(:resource_control_policy_restriction, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceControlPolicyRestriction, location_name: 'resourceControlPolicyRestriction', traits: {"smithy.api#documentation" => "<p>The type of restriction applied to the finding by the resource owner with an Organizations resource control policy (RCP).</p> <ul> <li> <p> <code>APPLICABLE</code>: There is an RCP present in the organization but IAM Access Analyzer does not include it in the evaluation of effective permissions. For example, if <code>s3:DeleteObject</code> is blocked by the RCP and the restriction is <code>APPLICABLE</code>, then <code>s3:DeleteObject</code> would still be included in the list of actions for the finding. Only applicable to internal access findings with the account as the zone of trust. </p> </li> <li> <p> <code>FAILED_TO_EVALUATE_RCP</code>: There was an error evaluating the RCP.</p> </li> <li> <p> <code>NOT_APPLICABLE</code>: There was no RCP present in the organization. For internal access findings with the account as the zone of trust, <code>NOT_APPLICABLE</code> could also indicate that there was no RCP applicable to the resource.</p> </li> <li> <p> <code>APPLIED</code>: An RCP is present in the organization and IAM Access Analyzer included it in the evaluation of effective permissions. For example, if <code>s3:DeleteObject</code> is blocked by the RCP and the restriction is <code>APPLIED</code>, then <code>s3:DeleteObject</code> would not be included in the list of actions for the finding. Only applicable to internal access findings with the organization as the zone of trust. </p> </li> </ul>"}))
    InternalAccessDetails.add_member(:service_control_policy_restriction, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceControlPolicyRestriction, location_name: 'serviceControlPolicyRestriction', traits: {"smithy.api#documentation" => "<p>The type of restriction applied to the finding by an Organizations service control policy (SCP).</p> <ul> <li> <p> <code>APPLICABLE</code>: There is an SCP present in the organization but IAM Access Analyzer does not include it in the evaluation of effective permissions. Only applicable to internal access findings with the account as the zone of trust. </p> </li> <li> <p> <code>FAILED_TO_EVALUATE_SCP</code>: There was an error evaluating the SCP.</p> </li> <li> <p> <code>NOT_APPLICABLE</code>: There was no SCP present in the organization. For internal access findings with the account as the zone of trust, <code>NOT_APPLICABLE</code> could also indicate that there was no SCP applicable to the principal.</p> </li> <li> <p> <code>APPLIED</code>: An SCP is present in the organization and IAM Access Analyzer included it in the evaluation of effective permissions. Only applicable to internal access findings with the organization as the zone of trust. </p> </li> </ul>"}))
    InternalAccessDetails.type = Types::InternalAccessDetails
    InternalAccessFindingsStatistics.add_member(:resource_type_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessResourceTypeStatisticsMap, location_name: 'resourceTypeStatistics', traits: {"smithy.api#documentation" => "<p>The total number of active findings for each resource type of the specified internal access analyzer.</p>"}))
    InternalAccessFindingsStatistics.add_member(:total_active_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalActiveFindings', traits: {"smithy.api#documentation" => "<p>The number of active findings for the specified internal access analyzer.</p>"}))
    InternalAccessFindingsStatistics.add_member(:total_archived_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalArchivedFindings', traits: {"smithy.api#documentation" => "<p>The number of archived findings for the specified internal access analyzer.</p>"}))
    InternalAccessFindingsStatistics.add_member(:total_resolved_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalResolvedFindings', traits: {"smithy.api#documentation" => "<p>The number of resolved findings for the specified internal access analyzer.</p>"}))
    InternalAccessFindingsStatistics.type = Types::InternalAccessFindingsStatistics
    InternalAccessResourceTypeDetails.add_member(:total_active_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalActiveFindings', traits: {"smithy.api#documentation" => "<p>The total number of active findings for the resource type in the internal access analyzer.</p>"}))
    InternalAccessResourceTypeDetails.add_member(:total_resolved_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalResolvedFindings', traits: {"smithy.api#documentation" => "<p>The total number of resolved findings for the resource type in the internal access analyzer.</p>"}))
    InternalAccessResourceTypeDetails.add_member(:total_archived_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalArchivedFindings', traits: {"smithy.api#documentation" => "<p>The total number of archived findings for the resource type in the internal access analyzer.</p>"}))
    InternalAccessResourceTypeDetails.type = Types::InternalAccessResourceTypeDetails
    InternalAccessResourceTypeStatisticsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType)
    InternalAccessResourceTypeStatisticsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: InternalAccessResourceTypeDetails)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The seconds to wait to retry.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    InternetConfiguration.type = Types::InternetConfiguration
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InvalidParameterException.type = Types::InvalidParameterException
    JobDetails.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The <code>JobId</code> that is returned by the <code>StartPolicyGeneration</code> operation. The <code>JobId</code> can be used with <code>GetGeneratedPolicy</code> to retrieve the generated policies or used with <code>CancelPolicyGeneration</code> to cancel the policy generation request.</p>", "smithy.api#required" => {}}))
    JobDetails.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the job request.</p>", "smithy.api#required" => {}}))
    JobDetails.add_member(:started_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startedOn', traits: {"smithy.api#documentation" => "<p>A timestamp of when the job was started.</p>", "smithy.api#required" => {}}))
    JobDetails.add_member(:completed_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'completedOn', traits: {"smithy.api#documentation" => "<p>A timestamp of when the job was completed.</p>"}))
    JobDetails.add_member(:job_error, Smithy::Schema::Shapes::ShapeRef.new(shape: JobError, location_name: 'jobError', traits: {"smithy.api#documentation" => "<p>The job error for the policy generation request.</p>"}))
    JobDetails.type = Types::JobDetails
    JobError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: JobErrorCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The job error code.</p>", "smithy.api#required" => {}}))
    JobError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Specific information about the error. For example, which service quota was exceeded or which resource was not found.</p>", "smithy.api#required" => {}}))
    JobError.type = Types::JobError
    KmsConstraintsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: KmsConstraintsKey)
    KmsConstraintsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: KmsConstraintsValue)
    KmsGrantConfiguration.add_member(:operations, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsGrantOperationsList, location_name: 'operations', traits: {"smithy.api#documentation" => "<p>A list of operations that the grant permits.</p>", "smithy.api#required" => {}}))
    KmsGrantConfiguration.add_member(:grantee_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: GranteePrincipal, location_name: 'granteePrincipal', traits: {"smithy.api#documentation" => "<p>The principal that is given permission to perform the operations that the grant permits.</p>", "smithy.api#required" => {}}))
    KmsGrantConfiguration.add_member(:retiring_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: RetiringPrincipal, location_name: 'retiringPrincipal', traits: {"smithy.api#documentation" => "<p>The principal that is given permission to retire the grant by using <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_RetireGrant.html\">RetireGrant</a> operation.</p>"}))
    KmsGrantConfiguration.add_member(:constraints, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsGrantConstraints, location_name: 'constraints', traits: {"smithy.api#documentation" => "<p>Use this structure to propose allowing <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations\">cryptographic operations</a> in the grant only when the operation request includes the specified <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context\">encryption context</a>.</p>"}))
    KmsGrantConfiguration.add_member(:issuing_account, Smithy::Schema::Shapes::ShapeRef.new(shape: IssuingAccount, location_name: 'issuingAccount', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services account under which the grant was issued. The account is used to propose KMS grants issued by accounts other than the owner of the key.</p>", "smithy.api#required" => {}}))
    KmsGrantConfiguration.type = Types::KmsGrantConfiguration
    KmsGrantConfigurationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KmsGrantConfiguration)
    KmsGrantConstraints.add_member(:encryption_context_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsConstraintsMap, location_name: 'encryptionContextEquals', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that must match the encryption context in the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations\">cryptographic operation</a> request. The grant allows the operation only when the encryption context in the request is the same as the encryption context specified in this constraint.</p>"}))
    KmsGrantConstraints.add_member(:encryption_context_subset, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsConstraintsMap, location_name: 'encryptionContextSubset', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs that must be included in the encryption context of the <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations\">cryptographic operation</a> request. The grant allows the cryptographic operation only when the encryption context in the request includes the key-value pairs specified in this constraint, although it can include additional key-value pairs.</p>"}))
    KmsGrantConstraints.type = Types::KmsGrantConstraints
    KmsGrantOperationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KmsGrantOperation)
    KmsKeyConfiguration.add_member(:key_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyPoliciesMap, location_name: 'keyPolicies', traits: {"smithy.api#documentation" => "<p>Resource policy configuration for the KMS key. The only valid value for the name of the key policy is <code>default</code>. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default\">Default key policy</a>.</p>"}))
    KmsKeyConfiguration.add_member(:grants, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsGrantConfigurationsList, location_name: 'grants', traits: {"smithy.api#documentation" => "<p>A list of proposed grant configurations for the KMS key. If the proposed grant configuration is for an existing key, the access preview uses the proposed list of grant configurations in place of the existing grants. Otherwise, the access preview uses the existing grants for the key.</p>"}))
    KmsKeyConfiguration.type = Types::KmsKeyConfiguration
    KmsKeyPoliciesMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName)
    KmsKeyPoliciesMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyPolicy)
    ListAccessPreviewFindingsInput.add_member(:access_preview_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewId, location_name: 'accessPreviewId', traits: {"smithy.api#documentation" => "<p>The unique ID for the access preview.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAccessPreviewFindingsInput.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of the analyzer</a> used to generate the access.</p>", "smithy.api#required" => {}}))
    ListAccessPreviewFindingsInput.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>Criteria to filter the returned findings.</p>"}))
    ListAccessPreviewFindingsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>"}))
    ListAccessPreviewFindingsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response.</p>"}))
    ListAccessPreviewFindingsInput.type = Types::ListAccessPreviewFindingsInput
    ListAccessPreviewFindingsOutput.add_member(:findings, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewFindingsList, location_name: 'findings', traits: {"smithy.api#documentation" => "<p>A list of access preview findings that match the specified filter criteria.</p>", "smithy.api#required" => {}}))
    ListAccessPreviewFindingsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>"}))
    ListAccessPreviewFindingsOutput.type = Types::ListAccessPreviewFindingsOutput
    ListAccessPreviewsInput.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of the analyzer</a> used to generate the access preview.</p>", "smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    ListAccessPreviewsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAccessPreviewsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAccessPreviewsInput.type = Types::ListAccessPreviewsInput
    ListAccessPreviewsOutput.add_member(:access_previews, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPreviewsList, location_name: 'accessPreviews', traits: {"smithy.api#documentation" => "<p>A list of access previews retrieved for the analyzer.</p>", "smithy.api#required" => {}}))
    ListAccessPreviewsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>"}))
    ListAccessPreviewsOutput.type = Types::ListAccessPreviewsOutput
    ListAnalyzedResourcesInput.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of the analyzer</a> to retrieve a list of analyzed resources from.</p>", "smithy.api#required" => {}}))
    ListAnalyzedResourcesInput.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of resource.</p>"}))
    ListAnalyzedResourcesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>"}))
    ListAnalyzedResourcesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response.</p>"}))
    ListAnalyzedResourcesInput.type = Types::ListAnalyzedResourcesInput
    ListAnalyzedResourcesOutput.add_member(:analyzed_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzedResourcesList, location_name: 'analyzedResources', traits: {"smithy.api#documentation" => "<p>A list of resources that were analyzed.</p>", "smithy.api#required" => {}}))
    ListAnalyzedResourcesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>"}))
    ListAnalyzedResourcesOutput.type = Types::ListAnalyzedResourcesOutput
    ListAnalyzersInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAnalyzersInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAnalyzersInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of analyzer.</p>", "smithy.api#httpQuery" => "type"}))
    ListAnalyzersInput.type = Types::ListAnalyzersInput
    ListAnalyzersOutput.add_member(:analyzers, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzersList, location_name: 'analyzers', traits: {"smithy.api#documentation" => "<p>The analyzers retrieved.</p>", "smithy.api#required" => {}}))
    ListAnalyzersOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>"}))
    ListAnalyzersOutput.type = Types::ListAnalyzersOutput
    ListArchiveRulesInput.add_member(:analyzer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#documentation" => "<p>The name of the analyzer to retrieve rules from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListArchiveRulesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListArchiveRulesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the request.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListArchiveRulesInput.type = Types::ListArchiveRulesInput
    ListArchiveRulesOutput.add_member(:archive_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: ArchiveRulesList, location_name: 'archiveRules', traits: {"smithy.api#documentation" => "<p>A list of archive rules created for the specified analyzer.</p>", "smithy.api#required" => {}}))
    ListArchiveRulesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>"}))
    ListArchiveRulesOutput.type = Types::ListArchiveRulesOutput
    ListFindingsInput.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of the analyzer</a> to retrieve findings from.</p>", "smithy.api#required" => {}}))
    ListFindingsInput.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>A filter to match for the findings to return.</p>"}))
    ListFindingsInput.add_member(:sort, Smithy::Schema::Shapes::ShapeRef.new(shape: SortCriteria, location_name: 'sort', traits: {"smithy.api#documentation" => "<p>The sort order for the findings returned.</p>"}))
    ListFindingsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>"}))
    ListFindingsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response.</p>"}))
    ListFindingsInput.type = Types::ListFindingsInput
    ListFindingsOutput.add_member(:findings, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsList, location_name: 'findings', traits: {"smithy.api#documentation" => "<p>A list of findings retrieved from the analyzer that match the filter criteria specified, if any.</p>", "smithy.api#required" => {}}))
    ListFindingsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>"}))
    ListFindingsOutput.type = Types::ListFindingsOutput
    ListFindingsV2Request.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of the analyzer</a> to retrieve findings from.</p>", "smithy.api#required" => {}}))
    ListFindingsV2Request.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>A filter to match for the findings to return.</p>"}))
    ListFindingsV2Request.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response.</p>"}))
    ListFindingsV2Request.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>"}))
    ListFindingsV2Request.add_member(:sort, Smithy::Schema::Shapes::ShapeRef.new(shape: SortCriteria, location_name: 'sort'))
    ListFindingsV2Request.type = Types::ListFindingsV2Request
    ListFindingsV2Response.add_member(:findings, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsListV2, location_name: 'findings', traits: {"smithy.api#documentation" => "<p>A list of findings retrieved from the analyzer that match the filter criteria specified, if any.</p>", "smithy.api#required" => {}}))
    ListFindingsV2Response.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>"}))
    ListFindingsV2Response.type = Types::ListFindingsV2Response
    ListPolicyGenerationsInput.add_member(:principal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalArn, location_name: 'principalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM entity (user or role) for which you are generating a policy. Use this with <code>ListGeneratedPolicies</code> to filter the results to only include results for a specific principal.</p>", "smithy.api#httpQuery" => "principalArn"}))
    ListPolicyGenerationsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1}}))
    ListPolicyGenerationsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListPolicyGenerationsInput.type = Types::ListPolicyGenerationsInput
    ListPolicyGenerationsOutput.add_member(:policy_generations, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyGenerationList, location_name: 'policyGenerations', traits: {"smithy.api#documentation" => "<p>A <code>PolicyGeneration</code> object that contains details about the generated policy.</p>", "smithy.api#required" => {}}))
    ListPolicyGenerationsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>"}))
    ListPolicyGenerationsOutput.type = Types::ListPolicyGenerationsOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to retrieve tags from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags that are applied to the specified resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    Location.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: PathElementList, location_name: 'path', traits: {"smithy.api#documentation" => "<p>A path in a policy, represented as a sequence of path elements.</p>", "smithy.api#required" => {}}))
    Location.add_member(:span, Smithy::Schema::Shapes::ShapeRef.new(shape: Span, location_name: 'span', traits: {"smithy.api#documentation" => "<p>A span in a policy.</p>", "smithy.api#required" => {}}))
    Location.type = Types::Location
    LocationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Location)
    NetworkOriginConfiguration.add_member(:vpc_configuration, Types::NetworkOriginConfiguration::VpcConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfiguration, location_name: 'vpcConfiguration'))
    NetworkOriginConfiguration.add_member(:internet_configuration, Types::NetworkOriginConfiguration::InternetConfiguration, Smithy::Schema::Shapes::ShapeRef.new(shape: InternetConfiguration, location_name: 'internetConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for the Amazon S3 access point or multi-region access point with an <code>Internet</code> origin.</p>"}))
    NetworkOriginConfiguration.add_member(:unknown, Types::NetworkOriginConfiguration::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    NetworkOriginConfiguration.type = Types::NetworkOriginConfiguration
    PathElement.add_member(:index, Types::PathElement::Index, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'index', traits: {"smithy.api#documentation" => "<p>Refers to an index in a JSON array.</p>"}))
    PathElement.add_member(:key, Types::PathElement::Key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'key', traits: {"smithy.api#documentation" => "<p>Refers to a key in a JSON object.</p>"}))
    PathElement.add_member(:substring, Types::PathElement::Substring, Smithy::Schema::Shapes::ShapeRef.new(shape: Substring, location_name: 'substring', traits: {"smithy.api#documentation" => "<p>Refers to a substring of a literal string in a JSON object.</p>"}))
    PathElement.add_member(:value, Types::PathElement::Value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>Refers to the value associated with a given key in a JSON object.</p>"}))
    PathElement.add_member(:unknown, Types::PathElement::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    PathElement.type = Types::PathElement
    PathElementList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PathElement)
    PolicyGeneration.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The <code>JobId</code> that is returned by the <code>StartPolicyGeneration</code> operation. The <code>JobId</code> can be used with <code>GetGeneratedPolicy</code> to retrieve the generated policies or used with <code>CancelPolicyGeneration</code> to cancel the policy generation request.</p>", "smithy.api#required" => {}}))
    PolicyGeneration.add_member(:principal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalArn, location_name: 'principalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM entity (user or role) for which you are generating a policy.</p>", "smithy.api#required" => {}}))
    PolicyGeneration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the policy generation request.</p>", "smithy.api#required" => {}}))
    PolicyGeneration.add_member(:started_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startedOn', traits: {"smithy.api#documentation" => "<p>A timestamp of when the policy generation started.</p>", "smithy.api#required" => {}}))
    PolicyGeneration.add_member(:completed_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'completedOn', traits: {"smithy.api#documentation" => "<p>A timestamp of when the policy generation was completed.</p>"}))
    PolicyGeneration.type = Types::PolicyGeneration
    PolicyGenerationDetails.add_member(:principal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: PrincipalArn, location_name: 'principalArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM entity (user or role) for which you are generating a policy.</p>", "smithy.api#required" => {}}))
    PolicyGenerationDetails.type = Types::PolicyGenerationDetails
    PolicyGenerationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyGeneration)
    Position.add_member(:line, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'line', traits: {"smithy.api#documentation" => "<p>The line of the position, starting from 1.</p>", "smithy.api#required" => {}}))
    Position.add_member(:column, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'column', traits: {"smithy.api#documentation" => "<p>The column of the position, starting from 0.</p>", "smithy.api#required" => {}}))
    Position.add_member(:offset, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'offset', traits: {"smithy.api#documentation" => "<p>The offset within the policy that corresponds to the position, starting from 0.</p>", "smithy.api#required" => {}}))
    Position.type = Types::Position
    PrincipalMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    PrincipalMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    RdsDbClusterSnapshotAccountIdsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotAccountId)
    RdsDbClusterSnapshotAttributeValue.add_member(:account_ids, Types::RdsDbClusterSnapshotAttributeValue::AccountIds, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotAccountIdsList, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account IDs that have access to the manual Amazon RDS DB cluster snapshot. If the value <code>all</code> is specified, then the Amazon RDS DB cluster snapshot is public and can be copied or restored by all Amazon Web Services accounts.</p> <ul> <li> <p>If the configuration is for an existing Amazon RDS DB cluster snapshot and you do not specify the <code>accountIds</code> in <code>RdsDbClusterSnapshotAttributeValue</code>, then the access preview uses the existing shared <code>accountIds</code> for the snapshot.</p> </li> <li> <p>If the access preview is for a new resource and you do not specify the specify the <code>accountIds</code> in <code>RdsDbClusterSnapshotAttributeValue</code>, then the access preview considers the snapshot without any attributes.</p> </li> <li> <p>To propose deletion of existing shared <code>accountIds</code>, you can specify an empty list for <code>accountIds</code> in the <code>RdsDbClusterSnapshotAttributeValue</code>.</p> </li> </ul>"}))
    RdsDbClusterSnapshotAttributeValue.add_member(:unknown, Types::RdsDbClusterSnapshotAttributeValue::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RdsDbClusterSnapshotAttributeValue.type = Types::RdsDbClusterSnapshotAttributeValue
    RdsDbClusterSnapshotAttributesMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotAttributeName)
    RdsDbClusterSnapshotAttributesMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotAttributeValue)
    RdsDbClusterSnapshotConfiguration.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotAttributesMap, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>The names and values of manual DB cluster snapshot attributes. Manual DB cluster snapshot attributes are used to authorize other Amazon Web Services accounts to restore a manual DB cluster snapshot. The only valid value for <code>AttributeName</code> for the attribute map is <code>restore</code> </p>"}))
    RdsDbClusterSnapshotConfiguration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbClusterSnapshotKmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key identifier for an encrypted Amazon RDS DB cluster snapshot. The KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p> <ul> <li> <p>If the configuration is for an existing Amazon RDS DB cluster snapshot and you do not specify the <code>kmsKeyId</code>, or you specify an empty string, then the access preview uses the existing <code>kmsKeyId</code> of the snapshot.</p> </li> <li> <p>If the access preview is for a new resource and you do not specify the specify the <code>kmsKeyId</code>, then the access preview considers the snapshot as unencrypted.</p> </li> </ul>"}))
    RdsDbClusterSnapshotConfiguration.type = Types::RdsDbClusterSnapshotConfiguration
    RdsDbSnapshotAccountIdsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbSnapshotAccountId)
    RdsDbSnapshotAttributeValue.add_member(:account_ids, Types::RdsDbSnapshotAttributeValue::AccountIds, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbSnapshotAccountIdsList, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account IDs that have access to the manual Amazon RDS DB snapshot. If the value <code>all</code> is specified, then the Amazon RDS DB snapshot is public and can be copied or restored by all Amazon Web Services accounts.</p> <ul> <li> <p>If the configuration is for an existing Amazon RDS DB snapshot and you do not specify the <code>accountIds</code> in <code>RdsDbSnapshotAttributeValue</code>, then the access preview uses the existing shared <code>accountIds</code> for the snapshot.</p> </li> <li> <p>If the access preview is for a new resource and you do not specify the specify the <code>accountIds</code> in <code>RdsDbSnapshotAttributeValue</code>, then the access preview considers the snapshot without any attributes.</p> </li> <li> <p>To propose deletion of an existing shared <code>accountIds</code>, you can specify an empty list for <code>accountIds</code> in the <code>RdsDbSnapshotAttributeValue</code>.</p> </li> </ul>"}))
    RdsDbSnapshotAttributeValue.add_member(:unknown, Types::RdsDbSnapshotAttributeValue::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RdsDbSnapshotAttributeValue.type = Types::RdsDbSnapshotAttributeValue
    RdsDbSnapshotAttributesMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbSnapshotAttributeName)
    RdsDbSnapshotAttributesMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbSnapshotAttributeValue)
    RdsDbSnapshotConfiguration.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbSnapshotAttributesMap, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>The names and values of manual DB snapshot attributes. Manual DB snapshot attributes are used to authorize other Amazon Web Services accounts to restore a manual DB snapshot. The only valid value for <code>attributeName</code> for the attribute map is restore.</p>"}))
    RdsDbSnapshotConfiguration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbSnapshotKmsKeyId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The KMS key identifier for an encrypted Amazon RDS DB snapshot. The KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p> <ul> <li> <p>If the configuration is for an existing Amazon RDS DB snapshot and you do not specify the <code>kmsKeyId</code>, or you specify an empty string, then the access preview uses the existing <code>kmsKeyId</code> of the snapshot.</p> </li> <li> <p>If the access preview is for a new resource and you do not specify the specify the <code>kmsKeyId</code>, then the access preview considers the snapshot as unencrypted.</p> </li> </ul>"}))
    RdsDbSnapshotConfiguration.type = Types::RdsDbSnapshotConfiguration
    ReasonSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the reasoning of a result of checking for access.</p>"}))
    ReasonSummary.add_member(:statement_index, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'statementIndex', traits: {"smithy.api#documentation" => "<p>The index number of the reason statement.</p>"}))
    ReasonSummary.add_member(:statement_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'statementId', traits: {"smithy.api#documentation" => "<p>The identifier for the reason statement.</p>"}))
    ReasonSummary.type = Types::ReasonSummary
    ReasonSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReasonSummary)
    RecommendationError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The error code for a failed retrieval of a recommendation for a finding.</p>", "smithy.api#required" => {}}))
    RecommendationError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The error message for a failed retrieval of a recommendation for a finding.</p>", "smithy.api#required" => {}}))
    RecommendationError.type = Types::RecommendationError
    RecommendedStep.add_member(:unused_permissions_recommended_step, Types::RecommendedStep::UnusedPermissionsRecommendedStep, Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedPermissionsRecommendedStep, location_name: 'unusedPermissionsRecommendedStep', traits: {"smithy.api#documentation" => "<p>A recommended step for an unused permissions finding.</p>"}))
    RecommendedStep.add_member(:unknown, Types::RecommendedStep::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    RecommendedStep.type = Types::RecommendedStep
    RecommendedStepList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedStep)
    RegionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ResourceArnsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The ID of the resource.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTypeDetails.add_member(:total_active_public, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalActivePublic', traits: {"smithy.api#documentation" => "<p>The total number of active public findings for the resource type.</p>"}))
    ResourceTypeDetails.add_member(:total_active_cross_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalActiveCrossAccount', traits: {"smithy.api#documentation" => "<p>The total number of active cross-account findings for the resource type.</p>"}))
    ResourceTypeDetails.type = Types::ResourceTypeDetails
    ResourceTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType)
    ResourceTypeStatisticsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType)
    ResourceTypeStatisticsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeDetails)
    ResourcesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    S3AccessPointConfiguration.add_member(:access_point_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointPolicy, location_name: 'accessPointPolicy', traits: {"smithy.api#documentation" => "<p>The access point or multi-region access point policy.</p>"}))
    S3AccessPointConfiguration.add_member(:public_access_block, Smithy::Schema::Shapes::ShapeRef.new(shape: S3PublicAccessBlockConfiguration, location_name: 'publicAccessBlock', traits: {"smithy.api#documentation" => "<p>The proposed <code>S3PublicAccessBlock</code> configuration to apply to this Amazon S3 access point or multi-region access point.</p>"}))
    S3AccessPointConfiguration.add_member(:network_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkOriginConfiguration, location_name: 'networkOrigin', traits: {"smithy.api#documentation" => "<p>The proposed <code>Internet</code> and <code>VpcConfiguration</code> to apply to this Amazon S3 access point. <code>VpcConfiguration</code> does not apply to multi-region access points. If the access preview is for a new resource and neither is specified, the access preview uses <code>Internet</code> for the network origin. If the access preview is for an existing resource and neither is specified, the access preview uses the existing network origin.</p>"}))
    S3AccessPointConfiguration.type = Types::S3AccessPointConfiguration
    S3AccessPointConfigurationsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointArn)
    S3AccessPointConfigurationsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessPointConfiguration)
    S3BucketAclGrantConfiguration.add_member(:permission, Smithy::Schema::Shapes::ShapeRef.new(shape: AclPermission, location_name: 'permission', traits: {"smithy.api#documentation" => "<p>The permissions being granted.</p>", "smithy.api#required" => {}}))
    S3BucketAclGrantConfiguration.add_member(:grantee, Smithy::Schema::Shapes::ShapeRef.new(shape: AclGrantee, location_name: 'grantee', traits: {"smithy.api#documentation" => "<p>The grantee to whom you’re assigning access rights.</p>", "smithy.api#required" => {}}))
    S3BucketAclGrantConfiguration.type = Types::S3BucketAclGrantConfiguration
    S3BucketAclGrantConfigurationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketAclGrantConfiguration)
    S3BucketConfiguration.add_member(:bucket_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketPolicy, location_name: 'bucketPolicy', traits: {"smithy.api#documentation" => "<p>The proposed bucket policy for the Amazon S3 bucket.</p>"}))
    S3BucketConfiguration.add_member(:bucket_acl_grants, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketAclGrantConfigurationsList, location_name: 'bucketAclGrants', traits: {"smithy.api#documentation" => "<p>The proposed list of ACL grants for the Amazon S3 bucket. You can propose up to 100 ACL grants per bucket. If the proposed grant configuration is for an existing bucket, the access preview uses the proposed list of grant configurations in place of the existing grants. Otherwise, the access preview uses the existing grants for the bucket.</p>"}))
    S3BucketConfiguration.add_member(:bucket_public_access_block, Smithy::Schema::Shapes::ShapeRef.new(shape: S3PublicAccessBlockConfiguration, location_name: 'bucketPublicAccessBlock', traits: {"smithy.api#documentation" => "<p>The proposed block public access configuration for the Amazon S3 bucket.</p>"}))
    S3BucketConfiguration.add_member(:access_points, Smithy::Schema::Shapes::ShapeRef.new(shape: S3AccessPointConfigurationsMap, location_name: 'accessPoints', traits: {"smithy.api#documentation" => "<p>The configuration of Amazon S3 access points or multi-region access points for the bucket. You can propose up to 10 new access points per bucket.</p>"}))
    S3BucketConfiguration.type = Types::S3BucketConfiguration
    S3ExpressDirectoryAccessPointConfiguration.add_member(:access_point_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPointPolicy, location_name: 'accessPointPolicy', traits: {"smithy.api#documentation" => "<p>The proposed access point policy for an Amazon S3 directory bucket access point.</p>"}))
    S3ExpressDirectoryAccessPointConfiguration.add_member(:network_origin, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkOriginConfiguration, location_name: 'networkOrigin'))
    S3ExpressDirectoryAccessPointConfiguration.type = Types::S3ExpressDirectoryAccessPointConfiguration
    S3ExpressDirectoryAccessPointConfigurationsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: S3ExpressDirectoryAccessPointArn)
    S3ExpressDirectoryAccessPointConfigurationsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: S3ExpressDirectoryAccessPointConfiguration)
    S3ExpressDirectoryBucketConfiguration.add_member(:bucket_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ExpressDirectoryBucketPolicy, location_name: 'bucketPolicy', traits: {"smithy.api#documentation" => "<p>The proposed bucket policy for the Amazon S3 directory bucket.</p>"}))
    S3ExpressDirectoryBucketConfiguration.add_member(:access_points, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ExpressDirectoryAccessPointConfigurationsMap, location_name: 'accessPoints', traits: {"smithy.api#documentation" => "<p>The proposed access points for the Amazon S3 directory bucket.</p>"}))
    S3ExpressDirectoryBucketConfiguration.type = Types::S3ExpressDirectoryBucketConfiguration
    S3PublicAccessBlockConfiguration.add_member(:ignore_public_acls, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'ignorePublicAcls', traits: {"smithy.api#documentation" => "<p> Specifies whether Amazon S3 should ignore public ACLs for this bucket and objects in this bucket. </p>", "smithy.api#required" => {}}))
    S3PublicAccessBlockConfiguration.add_member(:restrict_public_buckets, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'restrictPublicBuckets', traits: {"smithy.api#documentation" => "<p> Specifies whether Amazon S3 should restrict public bucket policies for this bucket. </p>", "smithy.api#required" => {}}))
    S3PublicAccessBlockConfiguration.type = Types::S3PublicAccessBlockConfiguration
    SecretsManagerSecretConfiguration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerSecretKmsId, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The proposed ARN, key ID, or alias of the KMS key.</p>"}))
    SecretsManagerSecretConfiguration.add_member(:secret_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerSecretPolicy, location_name: 'secretPolicy', traits: {"smithy.api#documentation" => "<p>The proposed resource policy defining who can access or manage the secret.</p>"}))
    SecretsManagerSecretConfiguration.type = Types::SecretsManagerSecretConfiguration
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>The resource ID.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>The resource type.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SharedViaList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    SnsTopicConfiguration.add_member(:topic_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsTopicPolicy, location_name: 'topicPolicy', traits: {"smithy.api#documentation" => "<p>The JSON policy text that defines who can access an Amazon SNS topic. For more information, see <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-access-policy-use-cases.html\">Example cases for Amazon SNS access control</a> in the <i>Amazon SNS Developer Guide</i>.</p>"}))
    SnsTopicConfiguration.type = Types::SnsTopicConfiguration
    SortCriteria.add_member(:attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'attributeName', traits: {"smithy.api#documentation" => "<p>The name of the attribute to sort on.</p>"}))
    SortCriteria.add_member(:order_by, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderBy, location_name: 'orderBy', traits: {"smithy.api#documentation" => "<p>The sort order, ascending or descending.</p>"}))
    SortCriteria.type = Types::SortCriteria
    Span.add_member(:start, Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'start', traits: {"smithy.api#documentation" => "<p>The start position of the span (inclusive).</p>", "smithy.api#required" => {}}))
    Span.add_member(:end, Smithy::Schema::Shapes::ShapeRef.new(shape: Position, location_name: 'end', traits: {"smithy.api#documentation" => "<p>The end position of the span (exclusive).</p>", "smithy.api#required" => {}}))
    Span.type = Types::Span
    SqsQueueConfiguration.add_member(:queue_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: SqsQueuePolicy, location_name: 'queuePolicy', traits: {"smithy.api#documentation" => "<p> The proposed resource policy for the Amazon SQS queue. </p>"}))
    SqsQueueConfiguration.type = Types::SqsQueueConfiguration
    StartPolicyGenerationInput.add_member(:policy_generation_details, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyGenerationDetails, location_name: 'policyGenerationDetails', traits: {"smithy.api#documentation" => "<p>Contains the ARN of the IAM entity (user or role) for which you are generating a policy.</p>", "smithy.api#required" => {}}))
    StartPolicyGenerationInput.add_member(:cloud_trail_details, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailDetails, location_name: 'cloudTrailDetails', traits: {"smithy.api#documentation" => "<p>A <code>CloudTrailDetails</code> object that contains details about a <code>Trail</code> that you want to analyze to generate policies.</p>"}))
    StartPolicyGenerationInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect.</p> <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services SDK.</p>", "smithy.api#idempotencyToken" => {}}))
    StartPolicyGenerationInput.type = Types::StartPolicyGenerationInput
    StartPolicyGenerationOutput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The <code>JobId</code> that is returned by the <code>StartPolicyGeneration</code> operation. The <code>JobId</code> can be used with <code>GetGeneratedPolicy</code> to retrieve the generated policies or used with <code>CancelPolicyGeneration</code> to cancel the policy generation request.</p>", "smithy.api#required" => {}}))
    StartPolicyGenerationOutput.type = Types::StartPolicyGenerationOutput
    StartResourceScanInput.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of the analyzer</a> to use to scan the policies applied to the specified resource.</p>", "smithy.api#required" => {}}))
    StartResourceScanInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to scan.</p>", "smithy.api#required" => {}}))
    StartResourceScanInput.add_member(:resource_owner_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceOwnerAccount', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID that owns the resource. For most Amazon Web Services resources, the owning account is the account in which the resource was created.</p>"}))
    StartResourceScanInput.type = Types::StartResourceScanInput
    StatusReason.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ReasonCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The reason code for the current status of the analyzer.</p>", "smithy.api#required" => {}}))
    StatusReason.type = Types::StatusReason
    Substring.add_member(:start, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'start', traits: {"smithy.api#documentation" => "<p>The start index of the substring, starting from 0.</p>", "smithy.api#required" => {}}))
    Substring.add_member(:length, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'length', traits: {"smithy.api#documentation" => "<p>The length of the substring.</p>", "smithy.api#required" => {}}))
    Substring.type = Types::Substring
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to add the tag to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to add to the resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TagsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap)
    TagsMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    TagsMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The seconds to wait to retry.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    Trail.add_member(:cloud_trail_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailArn, location_name: 'cloudTrailArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the trail. The format of a trail ARN is <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>.</p>", "smithy.api#required" => {}}))
    Trail.add_member(:regions, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'regions', traits: {"smithy.api#documentation" => "<p>A list of regions to get CloudTrail data from and analyze to generate a policy.</p>"}))
    Trail.add_member(:all_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'allRegions', traits: {"smithy.api#documentation" => "<p>Possible values are <code>true</code> or <code>false</code>. If set to <code>true</code>, IAM Access Analyzer retrieves CloudTrail data from all regions to analyze and generate a policy.</p>"}))
    Trail.type = Types::Trail
    TrailList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Trail)
    TrailProperties.add_member(:cloud_trail_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudTrailArn, location_name: 'cloudTrailArn', traits: {"smithy.api#documentation" => "<p>Specifies the ARN of the trail. The format of a trail ARN is <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>.</p>", "smithy.api#required" => {}}))
    TrailProperties.add_member(:regions, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'regions', traits: {"smithy.api#documentation" => "<p>A list of regions to get CloudTrail data from and analyze to generate a policy.</p>"}))
    TrailProperties.add_member(:all_regions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'allRegions', traits: {"smithy.api#documentation" => "<p>Possible values are <code>true</code> or <code>false</code>. If set to <code>true</code>, IAM Access Analyzer retrieves CloudTrail data from all regions to analyze and generate a policy.</p>"}))
    TrailProperties.type = Types::TrailProperties
    TrailPropertiesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TrailProperties)
    UnprocessableEntityException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    UnprocessableEntityException.type = Types::UnprocessableEntityException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource to remove the tag from.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The key for the tag to add.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UnusedAccessConfiguration.add_member(:unused_access_age, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'unusedAccessAge', traits: {"smithy.api#documentation" => "<p>The specified access age in days for which to generate findings for unused access. For example, if you specify 90 days, the analyzer will generate findings for IAM entities within the accounts of the selected organization for any access that hasn't been used in 90 or more days since the analyzer's last scan. You can choose a value between 1 and 365 days.</p>"}))
    UnusedAccessConfiguration.add_member(:analysis_rule, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisRule, location_name: 'analysisRule'))
    UnusedAccessConfiguration.type = Types::UnusedAccessConfiguration
    UnusedAccessFindingsStatistics.add_member(:unused_access_type_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedAccessTypeStatisticsList, location_name: 'unusedAccessTypeStatistics', traits: {"smithy.api#documentation" => "<p>A list of details about the total number of findings for each type of unused access for the analyzer. </p>"}))
    UnusedAccessFindingsStatistics.add_member(:top_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAggregations, location_name: 'topAccounts', traits: {"smithy.api#documentation" => "<p>A list of one to ten Amazon Web Services accounts that have the most active findings for the unused access analyzer.</p>"}))
    UnusedAccessFindingsStatistics.add_member(:total_active_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalActiveFindings', traits: {"smithy.api#documentation" => "<p>The total number of active findings for the unused access analyzer.</p>"}))
    UnusedAccessFindingsStatistics.add_member(:total_archived_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalArchivedFindings', traits: {"smithy.api#documentation" => "<p>The total number of archived findings for the unused access analyzer.</p>"}))
    UnusedAccessFindingsStatistics.add_member(:total_resolved_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'totalResolvedFindings', traits: {"smithy.api#documentation" => "<p>The total number of resolved findings for the unused access analyzer.</p>"}))
    UnusedAccessFindingsStatistics.type = Types::UnusedAccessFindingsStatistics
    UnusedAccessTypeStatistics.add_member(:unused_access_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'unusedAccessType', traits: {"smithy.api#documentation" => "<p>The type of unused access.</p>"}))
    UnusedAccessTypeStatistics.add_member(:total, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'total', traits: {"smithy.api#documentation" => "<p>The total number of findings for the specified unused access type.</p>"}))
    UnusedAccessTypeStatistics.type = Types::UnusedAccessTypeStatistics
    UnusedAccessTypeStatisticsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedAccessTypeStatistics)
    UnusedAction.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action for which the unused access finding was generated.</p>", "smithy.api#required" => {}}))
    UnusedAction.add_member(:last_accessed, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastAccessed', traits: {"smithy.api#documentation" => "<p>The time at which the action was last accessed.</p>"}))
    UnusedAction.type = Types::UnusedAction
    UnusedActionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedAction)
    UnusedIamRoleDetails.add_member(:last_accessed, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastAccessed', traits: {"smithy.api#documentation" => "<p>The time at which the role was last accessed.</p>"}))
    UnusedIamRoleDetails.type = Types::UnusedIamRoleDetails
    UnusedIamUserAccessKeyDetails.add_member(:access_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'accessKeyId', traits: {"smithy.api#documentation" => "<p>The ID of the access key for which the unused access finding was generated.</p>", "smithy.api#required" => {}}))
    UnusedIamUserAccessKeyDetails.add_member(:last_accessed, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastAccessed', traits: {"smithy.api#documentation" => "<p>The time at which the access key was last accessed.</p>"}))
    UnusedIamUserAccessKeyDetails.type = Types::UnusedIamUserAccessKeyDetails
    UnusedIamUserPasswordDetails.add_member(:last_accessed, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastAccessed', traits: {"smithy.api#documentation" => "<p>The time at which the password was last accessed.</p>"}))
    UnusedIamUserPasswordDetails.type = Types::UnusedIamUserPasswordDetails
    UnusedPermissionDetails.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: UnusedActionList, location_name: 'actions', traits: {"smithy.api#documentation" => "<p>A list of unused actions for which the unused access finding was generated.</p>"}))
    UnusedPermissionDetails.add_member(:service_namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceNamespace', traits: {"smithy.api#documentation" => "<p>The namespace of the Amazon Web Services service that contains the unused actions.</p>", "smithy.api#required" => {}}))
    UnusedPermissionDetails.add_member(:last_accessed, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastAccessed', traits: {"smithy.api#documentation" => "<p>The time at which the permission was last accessed.</p>"}))
    UnusedPermissionDetails.type = Types::UnusedPermissionDetails
    UnusedPermissionsRecommendedStep.add_member(:policy_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'policyUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time at which the existing policy for the unused permissions finding was last updated.</p>"}))
    UnusedPermissionsRecommendedStep.add_member(:recommended_action, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendedRemediationAction, location_name: 'recommendedAction', traits: {"smithy.api#documentation" => "<p>A recommendation of whether to create or detach a policy for an unused permissions finding.</p>", "smithy.api#required" => {}}))
    UnusedPermissionsRecommendedStep.add_member(:recommended_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'recommendedPolicy', traits: {"smithy.api#documentation" => "<p>If the recommended action for the unused permissions finding is to replace the existing policy, the contents of the recommended policy to replace the policy specified in the <code>existingPolicyId</code> field.</p>"}))
    UnusedPermissionsRecommendedStep.add_member(:existing_policy_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'existingPolicyId', traits: {"smithy.api#documentation" => "<p>If the recommended action for the unused permissions finding is to detach a policy, the ID of an existing policy to be detached.</p>"}))
    UnusedPermissionsRecommendedStep.type = Types::UnusedPermissionsRecommendedStep
    UpdateAnalyzerRequest.add_member(:analyzer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#documentation" => "<p>The name of the analyzer to modify.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAnalyzerRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerConfiguration, location_name: 'configuration'))
    UpdateAnalyzerRequest.type = Types::UpdateAnalyzerRequest
    UpdateAnalyzerResponse.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerConfiguration, location_name: 'configuration'))
    UpdateAnalyzerResponse.type = Types::UpdateAnalyzerResponse
    UpdateArchiveRuleInput.add_member(:analyzer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'analyzerName', traits: {"smithy.api#documentation" => "<p>The name of the analyzer to update the archive rules for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateArchiveRuleInput.add_member(:rule_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ruleName', traits: {"smithy.api#documentation" => "<p>The name of the rule to update.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateArchiveRuleInput.add_member(:filter, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterCriteriaMap, location_name: 'filter', traits: {"smithy.api#documentation" => "<p>A filter to match for the rules to update. Only rules that match the filter are updated.</p>", "smithy.api#required" => {}}))
    UpdateArchiveRuleInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A client token.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateArchiveRuleInput.type = Types::UpdateArchiveRuleInput
    UpdateFindingsInput.add_member(:analyzer_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerArn, location_name: 'analyzerArn', traits: {"smithy.api#documentation" => "<p>The <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources\">ARN of the analyzer</a> that generated the findings to update.</p>", "smithy.api#required" => {}}))
    UpdateFindingsInput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatusUpdate, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The state represents the action to take to update the finding Status. Use <code>ARCHIVE</code> to change an Active finding to an Archived finding. Use <code>ACTIVE</code> to change an Archived finding to an Active finding.</p>", "smithy.api#required" => {}}))
    UpdateFindingsInput.add_member(:ids, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingIdList, location_name: 'ids', traits: {"smithy.api#documentation" => "<p>The IDs of the findings to update.</p>"}))
    UpdateFindingsInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource identified in the finding.</p>"}))
    UpdateFindingsInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A client token.</p>", "smithy.api#idempotencyToken" => {}}))
    UpdateFindingsInput.type = Types::UpdateFindingsInput
    ValidatePolicyFinding.add_member(:finding_details, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'findingDetails', traits: {"smithy.api#documentation" => "<p>A localized message that explains the finding and provides guidance on how to address it.</p>", "smithy.api#required" => {}}))
    ValidatePolicyFinding.add_member(:finding_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePolicyFindingType, location_name: 'findingType', traits: {"smithy.api#documentation" => "<p>The impact of the finding.</p> <p>Security warnings report when the policy allows access that we consider overly permissive.</p> <p>Errors report when a part of the policy is not functional.</p> <p>Warnings report non-security issues when a policy does not conform to policy writing best practices.</p> <p>Suggestions recommend stylistic improvements in the policy that do not impact access.</p>", "smithy.api#required" => {}}))
    ValidatePolicyFinding.add_member(:issue_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IssueCode, location_name: 'issueCode', traits: {"smithy.api#documentation" => "<p>The issue code provides an identifier of the issue associated with this finding.</p>", "smithy.api#required" => {}}))
    ValidatePolicyFinding.add_member(:learn_more_link, Smithy::Schema::Shapes::ShapeRef.new(shape: LearnMoreLink, location_name: 'learnMoreLink', traits: {"smithy.api#documentation" => "<p>A link to additional documentation about the type of finding.</p>", "smithy.api#required" => {}}))
    ValidatePolicyFinding.add_member(:locations, Smithy::Schema::Shapes::ShapeRef.new(shape: LocationList, location_name: 'locations', traits: {"smithy.api#documentation" => "<p>The list of locations in the policy document that are related to the finding. The issue code provides a summary of an issue identified by the finding.</p>", "smithy.api#required" => {}}))
    ValidatePolicyFinding.type = Types::ValidatePolicyFinding
    ValidatePolicyFindingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePolicyFinding)
    ValidatePolicyInput.add_member(:locale, Smithy::Schema::Shapes::ShapeRef.new(shape: Locale, location_name: 'locale', traits: {"smithy.api#documentation" => "<p>The locale to use for localizing the findings.</p>"}))
    ValidatePolicyInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in the response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ValidatePolicyInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ValidatePolicyInput.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#documentation" => "<p>The JSON policy document to use as the content for the policy.</p>", "smithy.api#required" => {}}))
    ValidatePolicyInput.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'policyType', traits: {"smithy.api#documentation" => "<p>The type of policy to validate. Identity policies grant permissions to IAM principals. Identity policies include managed and inline policies for IAM roles, users, and groups.</p> <p>Resource policies grant permissions on Amazon Web Services resources. Resource policies include trust policies for IAM roles and bucket policies for Amazon S3 buckets. You can provide a generic input such as identity policy or resource policy or a specific input such as managed policy or Amazon S3 bucket policy. </p> <p>Service control policies (SCPs) are a type of organization policy attached to an Amazon Web Services organization, organizational unit (OU), or an account.</p>", "smithy.api#required" => {}}))
    ValidatePolicyInput.add_member(:validate_policy_resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePolicyResourceType, location_name: 'validatePolicyResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource to attach to your resource policy. Specify a value for the policy validation resource type only if the policy type is <code>RESOURCE_POLICY</code>. For example, to validate a resource policy to attach to an Amazon S3 bucket, you can choose <code>AWS::S3::Bucket</code> for the policy validation resource type.</p> <p>For resource types not supported as valid values, IAM Access Analyzer runs policy checks that apply to all resource policies. For example, to validate a resource policy to attach to a KMS key, do not specify a value for the policy validation resource type and IAM Access Analyzer will run policy checks that apply to all resource policies.</p>"}))
    ValidatePolicyInput.type = Types::ValidatePolicyInput
    ValidatePolicyOutput.add_member(:findings, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePolicyFindingList, location_name: 'findings', traits: {"smithy.api#documentation" => "<p>The list of findings in a policy returned by IAM Access Analyzer based on its suite of policy checks.</p>", "smithy.api#required" => {}}))
    ValidatePolicyOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used for pagination of results returned.</p>"}))
    ValidatePolicyOutput.type = Types::ValidatePolicyOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>The reason for the exception.</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList', traits: {"smithy.api#documentation" => "<p>A list of fields that didn't validate.</p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the validation exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>A message about the validation exception.</p>", "smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    VpcConfiguration.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'vpcId', traits: {"smithy.api#documentation" => "<p> If this field is specified, this access point will only allow connections from the specified VPC ID. </p>", "smithy.api#required" => {}}))
    VpcConfiguration.type = Types::VpcConfiguration

    AccessAnalyzer = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.accessanalyzer#AccessAnalyzer"
      service.name = "AccessAnalyzer"
      service.version = "2019-11-01"
      service.traits = {"aws.api#service" => {"sdkId" => "AccessAnalyzer", "arnNamespace" => "access-analyzer", "cloudTrailEventSource" => "access-analyzer.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "access-analyzer"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Access Analyzer"}
      service.add_operation(:apply_archive_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ApplyArchiveRule"
        operation.name = "ApplyArchiveRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplyArchiveRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/archive-rule", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_policy_generation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CancelPolicyGeneration"
        operation.name = "CancelPolicyGeneration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelPolicyGenerationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelPolicyGenerationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/generation/{jobId}", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:check_access_not_granted, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CheckAccessNotGranted"
        operation.name = "CheckAccessNotGranted"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckAccessNotGrantedRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckAccessNotGrantedResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/check-access-not-granted", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:check_no_new_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CheckNoNewAccess"
        operation.name = "CheckNoNewAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckNoNewAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckNoNewAccessResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/check-no-new-access", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:check_no_public_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CheckNoPublicAccess"
        operation.name = "CheckNoPublicAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckNoPublicAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CheckNoPublicAccessResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/check-no-public-access", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:create_access_preview, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CreateAccessPreview"
        operation.name = "CreateAccessPreview"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessPreviewInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessPreviewOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/access-preview", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_analyzer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CreateAnalyzer"
        operation.name = "CreateAnalyzer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnalyzerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAnalyzerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_archive_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CreateArchiveRule"
        operation.name = "CreateArchiveRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateArchiveRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}/archive-rule", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_analyzer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#DeleteAnalyzer"
        operation.name = "DeleteAnalyzer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnalyzerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}", "method" => "DELETE", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_archive_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#DeleteArchiveRule"
        operation.name = "DeleteArchiveRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteArchiveRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}/archive-rule/{ruleName}", "method" => "DELETE", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:generate_finding_recommendation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GenerateFindingRecommendation"
        operation.name = "GenerateFindingRecommendation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateFindingRecommendationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/recommendation/{id}", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:get_access_preview, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetAccessPreview"
        operation.name = "GetAccessPreview"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPreviewInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccessPreviewOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/access-preview/{accessPreviewId}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_analyzed_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetAnalyzedResource"
        operation.name = "GetAnalyzedResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnalyzedResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnalyzedResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzed-resource", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_analyzer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetAnalyzer"
        operation.name = "GetAnalyzer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnalyzerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAnalyzerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_archive_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetArchiveRule"
        operation.name = "GetArchiveRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetArchiveRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetArchiveRuleOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}/archive-rule/{ruleName}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_finding, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetFinding"
        operation.name = "GetFinding"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/finding/{id}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_finding_recommendation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetFindingRecommendation"
        operation.name = "GetFindingRecommendation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingRecommendationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingRecommendationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/recommendation/{id}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetFindingRecommendation.new
      end)
      service.add_operation(:get_finding_v2, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetFindingV2"
        operation.name = "GetFindingV2"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingV2Request)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingV2Response)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/findingv2/{id}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetFindingV2.new
      end)
      service.add_operation(:get_findings_statistics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetFindingsStatistics"
        operation.name = "GetFindingsStatistics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsStatisticsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsStatisticsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/findings/statistics", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:get_generated_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetGeneratedPolicy"
        operation.name = "GetGeneratedPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGeneratedPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGeneratedPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/generation/{jobId}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_access_preview_findings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListAccessPreviewFindings"
        operation.name = "ListAccessPreviewFindings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPreviewFindingsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPreviewFindingsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/access-preview/{accessPreviewId}", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ListAccessPreviewFindings.new
      end)
      service.add_operation(:list_access_previews, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListAccessPreviews"
        operation.name = "ListAccessPreviews"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPreviewsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessPreviewsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/access-preview", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccessPreviews.new
      end)
      service.add_operation(:list_analyzed_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListAnalyzedResources"
        operation.name = "ListAnalyzedResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnalyzedResourcesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnalyzedResourcesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzed-resource", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ListAnalyzedResources.new
      end)
      service.add_operation(:list_analyzers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListAnalyzers"
        operation.name = "ListAnalyzers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnalyzersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnalyzersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAnalyzers.new
      end)
      service.add_operation(:list_archive_rules, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListArchiveRules"
        operation.name = "ListArchiveRules"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListArchiveRulesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListArchiveRulesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}/archive-rule", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListArchiveRules.new
      end)
      service.add_operation(:list_findings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListFindings"
        operation.name = "ListFindings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/finding", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ListFindings.new
      end)
      service.add_operation(:list_findings_v2, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListFindingsV2"
        operation.name = "ListFindingsV2"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsV2Request)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsV2Response)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/findingv2", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ListFindingsV2.new
      end)
      service.add_operation(:list_policy_generations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListPolicyGenerations"
        operation.name = "ListPolicyGenerations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPolicyGenerationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPolicyGenerationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/generation", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPolicyGenerations.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_policy_generation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#StartPolicyGeneration"
        operation.name = "StartPolicyGeneration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartPolicyGenerationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartPolicyGenerationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/generation", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_resource_scan, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#StartResourceScan"
        operation.name = "StartResourceScan"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartResourceScanInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/resource/scan", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_analyzer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#UpdateAnalyzer"
        operation.name = "UpdateAnalyzer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnalyzerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAnalyzerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_archive_rule, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#UpdateArchiveRule"
        operation.name = "UpdateArchiveRule"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateArchiveRuleInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}/archive-rule/{ruleName}", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_findings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#UpdateFindings"
        operation.name = "UpdateFindings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFindingsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/finding", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:validate_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ValidatePolicy"
        operation.name = "ValidatePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ValidatePolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/validation", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ValidatePolicy.new
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
