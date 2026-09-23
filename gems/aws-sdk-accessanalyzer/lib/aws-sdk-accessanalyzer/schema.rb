# frozen_string_literal: true

# This is generated code!

module Aws::AccessAnalyzer
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Access = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#Access", name: "Access")
    AccessCheckPolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#AccessCheckPolicyDocument", name: "AccessCheckPolicyDocument", traits: {"smithy.api#sensitive" => {}})
    AccessCheckPolicyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#AccessCheckPolicyType", name: "AccessCheckPolicyType", traits: {"smithy.api#enum" => [{"value" => "IDENTITY_POLICY", "name" => "IDENTITY_POLICY"}, {"value" => "RESOURCE_POLICY", "name" => "RESOURCE_POLICY"}]})
    AccessCheckResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#AccessCheckResourceType", name: "AccessCheckResourceType", traits: {"smithy.api#enum" => [{"value" => "AWS::DynamoDB::Table", "name" => "DYNAMODB_TABLE"}, {"value" => "AWS::DynamoDB::Stream", "name" => "DYNAMODB_STREAM"}, {"value" => "AWS::EFS::FileSystem", "name" => "EFS_FILESYSTEM"}, {"value" => "AWS::OpenSearchService::Domain", "name" => "OPENSEARCHSERVICE_DOMAIN"}, {"value" => "AWS::Kinesis::Stream", "name" => "KINESIS_DATA_STREAM"}, {"value" => "AWS::Kinesis::StreamConsumer", "name" => "KINESIS_STREAM_CONSUMER"}, {"value" => "AWS::KMS::Key", "name" => "KMS_KEY"}, {"value" => "AWS::Lambda::Function", "name" => "LAMBDA_FUNCTION"}, {"value" => "AWS::S3::Bucket", "name" => "S3_BUCKET"}, {"value" => "AWS::S3::AccessPoint", "name" => "S3_ACCESS_POINT"}, {"value" => "AWS::S3Express::DirectoryBucket", "name" => "S3EXPRESS_DIRECTORYBUCKET"}, {"value" => "AWS::S3::Glacier", "name" => "S3_GLACIER"}, {"value" => "AWS::S3Outposts::Bucket", "name" => "S3_OUTPOSTS_BUCKET"}, {"value" => "AWS::S3Outposts::AccessPoint", "name" => "S3_OUTPOSTS_ACCESS_POINT"}, {"value" => "AWS::SecretsManager::Secret", "name" => "SECRETSMANAGER_SECRET"}, {"value" => "AWS::SNS::Topic", "name" => "SNS_TOPIC"}, {"value" => "AWS::SQS::Queue", "name" => "SQS_QUEUE"}, {"value" => "AWS::IAM::AssumeRolePolicyDocument", "name" => "ROLE_TRUST"}, {"value" => "AWS::S3Tables::TableBucket", "name" => "S3_TABLE_BUCKET"}, {"value" => "AWS::ApiGateway::RestApi", "name" => "API_GATEWAY_REST_API"}, {"value" => "AWS::CodeArtifact::Domain", "name" => "CODE_ARTIFACT_DOMAIN"}, {"value" => "AWS::Backup::BackupVault", "name" => "BACKUP_VAULT"}, {"value" => "AWS::CloudTrail::Dashboard", "name" => "CLOUDTRAIL_DASHBOARD"}, {"value" => "AWS::CloudTrail::EventDataStore", "name" => "CLOUDTRAIL_EVENT_DATA_STORE"}, {"value" => "AWS::S3Tables::Table", "name" => "S3_TABLE"}, {"value" => "AWS::S3Express::AccessPoint", "name" => "S3_EXPRESS_ACCESS_POINT"}]})
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#AccessList", name: "AccessList")
    AccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#AccessPointArn", name: "AccessPointArn", traits: {"smithy.api#pattern" => "^arn:[^:]*:s3:[^:]*:[^:]*:accesspoint/.*$"})
    AccessPointPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#AccessPointPolicy", name: "AccessPointPolicy")
    AccessPreview = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#AccessPreview", name: "AccessPreview")
    AccessPreviewFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#AccessPreviewFinding", name: "AccessPreviewFinding")
    AccessPreviewFindingId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#AccessPreviewFindingId", name: "AccessPreviewFindingId")
    AccessPreviewFindingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#AccessPreviewFindingsList", name: "AccessPreviewFindingsList")
    AccessPreviewId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#AccessPreviewId", name: "AccessPreviewId", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    AccessPreviewStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#AccessPreviewStatus", name: "AccessPreviewStatus", traits: {"smithy.api#enum" => [{"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "CREATING", "name" => "CREATING"}, {"value" => "FAILED", "name" => "FAILED"}]})
    AccessPreviewStatusReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#AccessPreviewStatusReason", name: "AccessPreviewStatusReason")
    AccessPreviewStatusReasonCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#AccessPreviewStatusReasonCode", name: "AccessPreviewStatusReasonCode", traits: {"smithy.api#enum" => [{"value" => "INTERNAL_ERROR", "name" => "INTERNAL_ERROR"}, {"value" => "INVALID_CONFIGURATION", "name" => "INVALID_CONFIGURATION"}]})
    AccessPreviewSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#AccessPreviewSummary", name: "AccessPreviewSummary")
    AccessPreviewsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#AccessPreviewsList", name: "AccessPreviewsList")
    AccountAggregations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#AccountAggregations", name: "AccountAggregations", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AccountIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#AccountIdsList", name: "AccountIdsList")
    AclCanonicalId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#AclCanonicalId", name: "AclCanonicalId")
    AclGrantee = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accessanalyzer#AclGrantee", name: "AclGrantee")
    AclPermission = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#AclPermission", name: "AclPermission", traits: {"smithy.api#enum" => [{"value" => "READ", "name" => "READ"}, {"value" => "WRITE", "name" => "WRITE"}, {"value" => "READ_ACP", "name" => "READ_ACP"}, {"value" => "WRITE_ACP", "name" => "WRITE_ACP"}, {"value" => "FULL_CONTROL", "name" => "FULL_CONTROL"}]})
    AclUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#AclUri", name: "AclUri")
    Action = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#Action", name: "Action")
    ActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#ActionList", name: "ActionList")
    ActionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#ActionsList", name: "ActionsList")
    AnalysisRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#AnalysisRule", name: "AnalysisRule")
    AnalysisRuleCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#AnalysisRuleCriteria", name: "AnalysisRuleCriteria")
    AnalysisRuleCriteriaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#AnalysisRuleCriteriaList", name: "AnalysisRuleCriteriaList")
    AnalyzedResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#AnalyzedResource", name: "AnalyzedResource")
    AnalyzedResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#AnalyzedResourceSummary", name: "AnalyzedResourceSummary")
    AnalyzedResourcesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#AnalyzedResourcesList", name: "AnalyzedResourcesList")
    AnalyzerArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#AnalyzerArn", name: "AnalyzerArn", traits: {"smithy.api#pattern" => "^[^:]*:[^:]*:[^:]*:[^:]*:[^:]*:analyzer/.{1,255}$"})
    AnalyzerConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accessanalyzer#AnalyzerConfiguration", name: "AnalyzerConfiguration")
    AnalyzerStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#AnalyzerStatus", name: "AnalyzerStatus", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "CREATING", "name" => "CREATING"}, {"value" => "DISABLED", "name" => "DISABLED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    AnalyzerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#AnalyzerSummary", name: "AnalyzerSummary")
    AnalyzersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#AnalyzersList", name: "AnalyzersList")
    ApplyArchiveRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ApplyArchiveRuleInput", name: "ApplyArchiveRuleInput")
    ArchiveRuleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ArchiveRuleSummary", name: "ArchiveRuleSummary")
    ArchiveRulesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#ArchiveRulesList", name: "ArchiveRulesList")
    CancelPolicyGenerationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#CancelPolicyGenerationInput", name: "CancelPolicyGenerationInput")
    CancelPolicyGenerationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#CancelPolicyGenerationOutput", name: "CancelPolicyGenerationOutput")
    CheckAccessNotGrantedRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#CheckAccessNotGrantedRequest", name: "CheckAccessNotGrantedRequest")
    CheckAccessNotGrantedResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#CheckAccessNotGrantedResponse", name: "CheckAccessNotGrantedResponse")
    CheckAccessNotGrantedResult = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#CheckAccessNotGrantedResult", name: "CheckAccessNotGrantedResult", traits: {"smithy.api#enum" => [{"value" => "PASS", "name" => "PASS"}, {"value" => "FAIL", "name" => "FAIL"}]})
    CheckNoNewAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#CheckNoNewAccessRequest", name: "CheckNoNewAccessRequest")
    CheckNoNewAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#CheckNoNewAccessResponse", name: "CheckNoNewAccessResponse")
    CheckNoNewAccessResult = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#CheckNoNewAccessResult", name: "CheckNoNewAccessResult", traits: {"smithy.api#enum" => [{"value" => "PASS", "name" => "PASS"}, {"value" => "FAIL", "name" => "FAIL"}]})
    CheckNoPublicAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#CheckNoPublicAccessRequest", name: "CheckNoPublicAccessRequest")
    CheckNoPublicAccessResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#CheckNoPublicAccessResponse", name: "CheckNoPublicAccessResponse")
    CheckNoPublicAccessResult = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#CheckNoPublicAccessResult", name: "CheckNoPublicAccessResult", traits: {"smithy.api#enum" => [{"value" => "PASS", "name" => "PASS"}, {"value" => "FAIL", "name" => "FAIL"}]})
    CloudTrailArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#CloudTrailArn", name: "CloudTrailArn", traits: {"smithy.api#pattern" => "^arn:[^:]*:cloudtrail:[^:]*:[^:]*:trail/.{1,576}$"})
    CloudTrailDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#CloudTrailDetails", name: "CloudTrailDetails")
    CloudTrailProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#CloudTrailProperties", name: "CloudTrailProperties")
    ConditionKeyMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.accessanalyzer#ConditionKeyMap", name: "ConditionKeyMap")
    Configuration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accessanalyzer#Configuration", name: "Configuration")
    ConfigurationsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.accessanalyzer#ConfigurationsMap", name: "ConfigurationsMap")
    ConfigurationsMapKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#ConfigurationsMapKey", name: "ConfigurationsMapKey")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAccessPreviewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#CreateAccessPreviewInput", name: "CreateAccessPreviewInput")
    CreateAccessPreviewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#CreateAccessPreviewOutput", name: "CreateAccessPreviewOutput")
    CreateAnalyzerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#CreateAnalyzerInput", name: "CreateAnalyzerInput")
    CreateAnalyzerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#CreateAnalyzerOutput", name: "CreateAnalyzerOutput")
    CreateArchiveRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#CreateArchiveRuleInput", name: "CreateArchiveRuleInput")
    Criterion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#Criterion", name: "Criterion")
    DeleteAnalyzerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#DeleteAnalyzerInput", name: "DeleteAnalyzerInput")
    DeleteArchiveRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#DeleteArchiveRuleInput", name: "DeleteArchiveRuleInput")
    DynamodbStreamConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#DynamodbStreamConfiguration", name: "DynamodbStreamConfiguration")
    DynamodbStreamPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#DynamodbStreamPolicy", name: "DynamodbStreamPolicy")
    DynamodbTableConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#DynamodbTableConfiguration", name: "DynamodbTableConfiguration")
    DynamodbTablePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#DynamodbTablePolicy", name: "DynamodbTablePolicy")
    EbsGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#EbsGroup", name: "EbsGroup")
    EbsGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#EbsGroupList", name: "EbsGroupList")
    EbsSnapshotConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#EbsSnapshotConfiguration", name: "EbsSnapshotConfiguration")
    EbsSnapshotDataEncryptionKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#EbsSnapshotDataEncryptionKeyId", name: "EbsSnapshotDataEncryptionKeyId")
    EbsUserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#EbsUserId", name: "EbsUserId")
    EbsUserIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#EbsUserIdList", name: "EbsUserIdList")
    EcrRepositoryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#EcrRepositoryConfiguration", name: "EcrRepositoryConfiguration")
    EcrRepositoryPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#EcrRepositoryPolicy", name: "EcrRepositoryPolicy")
    EfsFileSystemConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#EfsFileSystemConfiguration", name: "EfsFileSystemConfiguration")
    EfsFileSystemPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#EfsFileSystemPolicy", name: "EfsFileSystemPolicy")
    ExternalAccessDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ExternalAccessDetails", name: "ExternalAccessDetails")
    ExternalAccessFindingsStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ExternalAccessFindingsStatistics", name: "ExternalAccessFindingsStatistics")
    FilterCriteriaMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.accessanalyzer#FilterCriteriaMap", name: "FilterCriteriaMap")
    Finding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#Finding", name: "Finding")
    FindingAggregationAccountDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#FindingAggregationAccountDetails", name: "FindingAggregationAccountDetails")
    FindingAggregationAccountDetailsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.accessanalyzer#FindingAggregationAccountDetailsMap", name: "FindingAggregationAccountDetailsMap")
    FindingChangeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#FindingChangeType", name: "FindingChangeType", traits: {"smithy.api#enum" => [{"value" => "CHANGED", "name" => "CHANGED"}, {"value" => "NEW", "name" => "NEW"}, {"value" => "UNCHANGED", "name" => "UNCHANGED"}]})
    FindingDetails = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accessanalyzer#FindingDetails", name: "FindingDetails")
    FindingDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#FindingDetailsList", name: "FindingDetailsList")
    FindingId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#FindingId", name: "FindingId")
    FindingIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#FindingIdList", name: "FindingIdList")
    FindingSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#FindingSource", name: "FindingSource")
    FindingSourceDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#FindingSourceDetail", name: "FindingSourceDetail")
    FindingSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#FindingSourceList", name: "FindingSourceList")
    FindingSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#FindingSourceType", name: "FindingSourceType", traits: {"smithy.api#enum" => [{"value" => "POLICY", "name" => "POLICY"}, {"value" => "BUCKET_ACL", "name" => "BUCKET_ACL"}, {"value" => "S3_ACCESS_POINT", "name" => "S3_ACCESS_POINT"}, {"value" => "S3_ACCESS_POINT_ACCOUNT", "name" => "S3_ACCESS_POINT_ACCOUNT"}]})
    FindingStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#FindingStatus", name: "FindingStatus", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "ARCHIVED", "name" => "ARCHIVED"}, {"value" => "RESOLVED", "name" => "RESOLVED"}]})
    FindingStatusUpdate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#FindingStatusUpdate", name: "FindingStatusUpdate", traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "ARCHIVED", "name" => "ARCHIVED"}]})
    FindingSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#FindingSummary", name: "FindingSummary")
    FindingSummaryV2 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#FindingSummaryV2", name: "FindingSummaryV2")
    FindingType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#FindingType", name: "FindingType", traits: {"smithy.api#enum" => [{"value" => "ExternalAccess", "name" => "EXTERNAL_ACCESS"}, {"value" => "UnusedIAMRole", "name" => "UNUSED_IAM_ROLE"}, {"value" => "UnusedIAMUserAccessKey", "name" => "UNUSED_IAM_USER_ACCESS_KEY"}, {"value" => "UnusedIAMUserPassword", "name" => "UNUSED_IAM_USER_PASSWORD"}, {"value" => "UnusedPermission", "name" => "UNUSED_PERMISSION"}, {"value" => "InternalAccess", "name" => "INTERNAL_ACCESS"}]})
    FindingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#FindingsList", name: "FindingsList")
    FindingsListV2 = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#FindingsListV2", name: "FindingsListV2")
    FindingsStatistics = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accessanalyzer#FindingsStatistics", name: "FindingsStatistics")
    FindingsStatisticsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#FindingsStatisticsList", name: "FindingsStatisticsList")
    GenerateFindingRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GenerateFindingRecommendationRequest", name: "GenerateFindingRecommendationRequest")
    GeneratedPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GeneratedPolicy", name: "GeneratedPolicy")
    GeneratedPolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#GeneratedPolicyList", name: "GeneratedPolicyList")
    GeneratedPolicyProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GeneratedPolicyProperties", name: "GeneratedPolicyProperties")
    GeneratedPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GeneratedPolicyResult", name: "GeneratedPolicyResult")
    GetAccessPreviewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetAccessPreviewInput", name: "GetAccessPreviewInput")
    GetAccessPreviewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetAccessPreviewOutput", name: "GetAccessPreviewOutput")
    GetAnalyzedResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetAnalyzedResourceInput", name: "GetAnalyzedResourceInput")
    GetAnalyzedResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetAnalyzedResourceOutput", name: "GetAnalyzedResourceOutput")
    GetAnalyzerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetAnalyzerInput", name: "GetAnalyzerInput")
    GetAnalyzerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetAnalyzerOutput", name: "GetAnalyzerOutput")
    GetArchiveRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetArchiveRuleInput", name: "GetArchiveRuleInput")
    GetArchiveRuleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetArchiveRuleOutput", name: "GetArchiveRuleOutput")
    GetFindingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetFindingInput", name: "GetFindingInput")
    GetFindingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetFindingOutput", name: "GetFindingOutput")
    GetFindingRecommendationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetFindingRecommendationRequest", name: "GetFindingRecommendationRequest")
    GetFindingRecommendationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetFindingRecommendationResponse", name: "GetFindingRecommendationResponse")
    GetFindingV2Request = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetFindingV2Request", name: "GetFindingV2Request")
    GetFindingV2Response = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetFindingV2Response", name: "GetFindingV2Response")
    GetFindingsStatisticsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetFindingsStatisticsRequest", name: "GetFindingsStatisticsRequest")
    GetFindingsStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetFindingsStatisticsResponse", name: "GetFindingsStatisticsResponse")
    GetGeneratedPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetGeneratedPolicyInput", name: "GetGeneratedPolicyInput")
    GetGeneratedPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#GetGeneratedPolicyOutput", name: "GetGeneratedPolicyOutput")
    GranteePrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#GranteePrincipal", name: "GranteePrincipal")
    IamRoleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#IamRoleConfiguration", name: "IamRoleConfiguration")
    IamTrustPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#IamTrustPolicy", name: "IamTrustPolicy")
    InlineArchiveRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#InlineArchiveRule", name: "InlineArchiveRule")
    InlineArchiveRulesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#InlineArchiveRulesList", name: "InlineArchiveRulesList")
    InternalAccessAnalysisRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#InternalAccessAnalysisRule", name: "InternalAccessAnalysisRule")
    InternalAccessAnalysisRuleCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#InternalAccessAnalysisRuleCriteria", name: "InternalAccessAnalysisRuleCriteria")
    InternalAccessAnalysisRuleCriteriaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#InternalAccessAnalysisRuleCriteriaList", name: "InternalAccessAnalysisRuleCriteriaList")
    InternalAccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#InternalAccessConfiguration", name: "InternalAccessConfiguration")
    InternalAccessDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#InternalAccessDetails", name: "InternalAccessDetails")
    InternalAccessFindingsStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#InternalAccessFindingsStatistics", name: "InternalAccessFindingsStatistics")
    InternalAccessResourceTypeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#InternalAccessResourceTypeDetails", name: "InternalAccessResourceTypeDetails")
    InternalAccessResourceTypeStatisticsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.accessanalyzer#InternalAccessResourceTypeStatisticsMap", name: "InternalAccessResourceTypeStatisticsMap")
    InternalAccessType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#InternalAccessType", name: "InternalAccessType", traits: {"smithy.api#enum" => [{"value" => "INTRA_ACCOUNT", "name" => "INTRA_ACCOUNT"}, {"value" => "INTRA_ORG", "name" => "INTRA_ORG"}]})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InternetConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#InternetConfiguration", name: "InternetConfiguration")
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IssueCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#IssueCode", name: "IssueCode")
    IssuingAccount = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#IssuingAccount", name: "IssuingAccount")
    JobDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#JobDetails", name: "JobDetails")
    JobError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#JobError", name: "JobError")
    JobErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#JobErrorCode", name: "JobErrorCode", traits: {"smithy.api#enum" => [{"name" => "AUTHORIZATION_ERROR", "value" => "AUTHORIZATION_ERROR"}, {"name" => "RESOURCE_NOT_FOUND_ERROR", "value" => "RESOURCE_NOT_FOUND_ERROR"}, {"name" => "SERVICE_QUOTA_EXCEEDED_ERROR", "value" => "SERVICE_QUOTA_EXCEEDED_ERROR"}, {"name" => "SERVICE_ERROR", "value" => "SERVICE_ERROR"}]})
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#JobId", name: "JobId")
    JobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#JobStatus", name: "JobStatus", traits: {"smithy.api#enum" => [{"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "CANCELED", "value" => "CANCELED"}]})
    KmsConstraintsKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#KmsConstraintsKey", name: "KmsConstraintsKey")
    KmsConstraintsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.accessanalyzer#KmsConstraintsMap", name: "KmsConstraintsMap")
    KmsConstraintsValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#KmsConstraintsValue", name: "KmsConstraintsValue")
    KmsGrantConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#KmsGrantConfiguration", name: "KmsGrantConfiguration")
    KmsGrantConfigurationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#KmsGrantConfigurationsList", name: "KmsGrantConfigurationsList")
    KmsGrantConstraints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#KmsGrantConstraints", name: "KmsGrantConstraints")
    KmsGrantOperation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#KmsGrantOperation", name: "KmsGrantOperation", traits: {"smithy.api#enum" => [{"value" => "CreateGrant", "name" => "CREATE_GRANT"}, {"value" => "Decrypt", "name" => "DECRYPT"}, {"value" => "DescribeKey", "name" => "DESCRIBE_KEY"}, {"value" => "Encrypt", "name" => "ENCRYPT"}, {"value" => "GenerateDataKey", "name" => "GENERATE_DATA_KEY"}, {"value" => "GenerateDataKeyPair", "name" => "GENERATE_DATA_KEY_PAIR"}, {"value" => "GenerateDataKeyPairWithoutPlaintext", "name" => "GENERATE_DATA_KEY_PAIR_WITHOUT_PLAINTEXT"}, {"value" => "GenerateDataKeyWithoutPlaintext", "name" => "GENERATE_DATA_KEY_WITHOUT_PLAINTEXT"}, {"value" => "GetPublicKey", "name" => "GET_PUBLIC_KEY"}, {"value" => "ReEncryptFrom", "name" => "REENCRYPT_FROM"}, {"value" => "ReEncryptTo", "name" => "REENCRYPT_TO"}, {"value" => "RetireGrant", "name" => "RETIRE_GRANT"}, {"value" => "Sign", "name" => "SIGN"}, {"value" => "Verify", "name" => "VERIFY"}]})
    KmsGrantOperationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#KmsGrantOperationsList", name: "KmsGrantOperationsList")
    KmsKeyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#KmsKeyConfiguration", name: "KmsKeyConfiguration")
    KmsKeyPoliciesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.accessanalyzer#KmsKeyPoliciesMap", name: "KmsKeyPoliciesMap")
    KmsKeyPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#KmsKeyPolicy", name: "KmsKeyPolicy")
    LearnMoreLink = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#LearnMoreLink", name: "LearnMoreLink")
    ListAccessPreviewFindingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListAccessPreviewFindingsInput", name: "ListAccessPreviewFindingsInput")
    ListAccessPreviewFindingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListAccessPreviewFindingsOutput", name: "ListAccessPreviewFindingsOutput")
    ListAccessPreviewsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListAccessPreviewsInput", name: "ListAccessPreviewsInput")
    ListAccessPreviewsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListAccessPreviewsOutput", name: "ListAccessPreviewsOutput")
    ListAnalyzedResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListAnalyzedResourcesInput", name: "ListAnalyzedResourcesInput")
    ListAnalyzedResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListAnalyzedResourcesOutput", name: "ListAnalyzedResourcesOutput")
    ListAnalyzersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListAnalyzersInput", name: "ListAnalyzersInput")
    ListAnalyzersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListAnalyzersOutput", name: "ListAnalyzersOutput")
    ListArchiveRulesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListArchiveRulesInput", name: "ListArchiveRulesInput")
    ListArchiveRulesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListArchiveRulesOutput", name: "ListArchiveRulesOutput")
    ListFindingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListFindingsInput", name: "ListFindingsInput")
    ListFindingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListFindingsOutput", name: "ListFindingsOutput")
    ListFindingsV2Request = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListFindingsV2Request", name: "ListFindingsV2Request")
    ListFindingsV2Response = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListFindingsV2Response", name: "ListFindingsV2Response")
    ListPolicyGenerationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListPolicyGenerationsInput", name: "ListPolicyGenerationsInput")
    ListPolicyGenerationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListPolicyGenerationsOutput", name: "ListPolicyGenerationsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    Locale = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#Locale", name: "Locale", traits: {"smithy.api#enum" => [{"value" => "DE", "name" => "DE"}, {"value" => "EN", "name" => "EN"}, {"value" => "ES", "name" => "ES"}, {"value" => "FR", "name" => "FR"}, {"value" => "IT", "name" => "IT"}, {"value" => "JA", "name" => "JA"}, {"value" => "KO", "name" => "KO"}, {"value" => "PT_BR", "name" => "PT_BR"}, {"value" => "ZH_CN", "name" => "ZH_CN"}, {"value" => "ZH_TW", "name" => "ZH_TW"}]})
    Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#Location", name: "Location")
    LocationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#LocationList", name: "LocationList")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z][A-Za-z0-9_.-]*$"})
    NetworkOriginConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accessanalyzer#NetworkOriginConfiguration", name: "NetworkOriginConfiguration")
    OrderBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#OrderBy", name: "OrderBy", traits: {"smithy.api#enum" => [{"value" => "ASC", "name" => "ASC"}, {"value" => "DESC", "name" => "DESC"}]})
    PathElement = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accessanalyzer#PathElement", name: "PathElement")
    PathElementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#PathElementList", name: "PathElementList")
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#PolicyDocument", name: "PolicyDocument")
    PolicyGeneration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#PolicyGeneration", name: "PolicyGeneration")
    PolicyGenerationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#PolicyGenerationDetails", name: "PolicyGenerationDetails")
    PolicyGenerationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#PolicyGenerationList", name: "PolicyGenerationList")
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#PolicyName", name: "PolicyName")
    PolicyType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#PolicyType", name: "PolicyType", traits: {"smithy.api#enum" => [{"value" => "IDENTITY_POLICY", "name" => "IDENTITY_POLICY"}, {"value" => "RESOURCE_POLICY", "name" => "RESOURCE_POLICY"}, {"value" => "SERVICE_CONTROL_POLICY", "name" => "SERVICE_CONTROL_POLICY"}, {"value" => "RESOURCE_CONTROL_POLICY", "name" => "RESOURCE_CONTROL_POLICY"}]})
    Position = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#Position", name: "Position")
    PrincipalArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#PrincipalArn", name: "PrincipalArn", traits: {"smithy.api#pattern" => "^arn:[^:]*:iam::[^:]*:(role|user)/.{1,576}$"})
    PrincipalMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.accessanalyzer#PrincipalMap", name: "PrincipalMap")
    PrincipalType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#PrincipalType", name: "PrincipalType", traits: {"smithy.api#enum" => [{"value" => "IAM_ROLE", "name" => "IAM_ROLE"}, {"value" => "IAM_USER", "name" => "IAM_USER"}]})
    RdsDbClusterSnapshotAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#RdsDbClusterSnapshotAccountId", name: "RdsDbClusterSnapshotAccountId")
    RdsDbClusterSnapshotAccountIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#RdsDbClusterSnapshotAccountIdsList", name: "RdsDbClusterSnapshotAccountIdsList")
    RdsDbClusterSnapshotAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#RdsDbClusterSnapshotAttributeName", name: "RdsDbClusterSnapshotAttributeName")
    RdsDbClusterSnapshotAttributeValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accessanalyzer#RdsDbClusterSnapshotAttributeValue", name: "RdsDbClusterSnapshotAttributeValue")
    RdsDbClusterSnapshotAttributesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.accessanalyzer#RdsDbClusterSnapshotAttributesMap", name: "RdsDbClusterSnapshotAttributesMap")
    RdsDbClusterSnapshotConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#RdsDbClusterSnapshotConfiguration", name: "RdsDbClusterSnapshotConfiguration")
    RdsDbClusterSnapshotKmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#RdsDbClusterSnapshotKmsKeyId", name: "RdsDbClusterSnapshotKmsKeyId")
    RdsDbSnapshotAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#RdsDbSnapshotAccountId", name: "RdsDbSnapshotAccountId")
    RdsDbSnapshotAccountIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#RdsDbSnapshotAccountIdsList", name: "RdsDbSnapshotAccountIdsList")
    RdsDbSnapshotAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#RdsDbSnapshotAttributeName", name: "RdsDbSnapshotAttributeName")
    RdsDbSnapshotAttributeValue = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accessanalyzer#RdsDbSnapshotAttributeValue", name: "RdsDbSnapshotAttributeValue")
    RdsDbSnapshotAttributesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.accessanalyzer#RdsDbSnapshotAttributesMap", name: "RdsDbSnapshotAttributesMap")
    RdsDbSnapshotConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#RdsDbSnapshotConfiguration", name: "RdsDbSnapshotConfiguration")
    RdsDbSnapshotKmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#RdsDbSnapshotKmsKeyId", name: "RdsDbSnapshotKmsKeyId")
    ReasonCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#ReasonCode", name: "ReasonCode", traits: {"smithy.api#enum" => [{"value" => "AWS_SERVICE_ACCESS_DISABLED", "name" => "AWS_SERVICE_ACCESS_DISABLED"}, {"value" => "DELEGATED_ADMINISTRATOR_DEREGISTERED", "name" => "DELEGATED_ADMINISTRATOR_DEREGISTERED"}, {"value" => "ORGANIZATION_DELETED", "name" => "ORGANIZATION_DELETED"}, {"value" => "SERVICE_LINKED_ROLE_CREATION_FAILED", "name" => "SERVICE_LINKED_ROLE_CREATION_FAILED"}]})
    ReasonSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ReasonSummary", name: "ReasonSummary")
    ReasonSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#ReasonSummaryList", name: "ReasonSummaryList")
    RecommendationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#RecommendationError", name: "RecommendationError")
    RecommendationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#RecommendationType", name: "RecommendationType", traits: {"smithy.api#enum" => [{"value" => "UnusedPermissionRecommendation", "name" => "UNUSED_PERMISSION_RECOMMENDATION"}]})
    RecommendedRemediationAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#RecommendedRemediationAction", name: "RecommendedRemediationAction", traits: {"smithy.api#enum" => [{"value" => "CREATE_POLICY", "name" => "CREATE_POLICY"}, {"value" => "DETACH_POLICY", "name" => "DETACH_POLICY"}]})
    RecommendedStep = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.accessanalyzer#RecommendedStep", name: "RecommendedStep")
    RecommendedStepList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#RecommendedStepList", name: "RecommendedStepList")
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#RegionList", name: "RegionList")
    Resource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#Resource", name: "Resource", traits: {"smithy.api#length" => {"max" => 2048}})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#ResourceArn", name: "ResourceArn", traits: {"smithy.api#pattern" => "^arn:[^:]*:[^:]*:[^:]*:[^:]*:.*$"})
    ResourceArnsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#ResourceArnsList", name: "ResourceArnsList")
    ResourceControlPolicyRestriction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#ResourceControlPolicyRestriction", name: "ResourceControlPolicyRestriction", traits: {"smithy.api#enum" => [{"value" => "APPLICABLE", "name" => "APPLICABLE"}, {"value" => "FAILED_TO_EVALUATE_RCP", "name" => "FAILED_TO_EVALUATE_RCP"}, {"value" => "NOT_APPLICABLE", "name" => "NOT_APPLICABLE"}, {"value" => "APPLIED", "name" => "APPLIED"}]})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#ResourceType", name: "ResourceType", traits: {"smithy.api#enum" => [{"value" => "AWS::S3::Bucket", "name" => "AWS_S3_BUCKET"}, {"value" => "AWS::IAM::Role", "name" => "AWS_IAM_ROLE"}, {"value" => "AWS::SQS::Queue", "name" => "AWS_SQS_QUEUE"}, {"value" => "AWS::Lambda::Function", "name" => "AWS_LAMBDA_FUNCTION"}, {"value" => "AWS::Lambda::LayerVersion", "name" => "AWS_LAMBDA_LAYERVERSION"}, {"value" => "AWS::KMS::Key", "name" => "AWS_KMS_KEY"}, {"value" => "AWS::SecretsManager::Secret", "name" => "AWS_SECRETSMANAGER_SECRET"}, {"value" => "AWS::EFS::FileSystem", "name" => "AWS_EFS_FILESYSTEM"}, {"value" => "AWS::EC2::Snapshot", "name" => "AWS_EC2_SNAPSHOT"}, {"value" => "AWS::ECR::Repository", "name" => "AWS_ECR_REPOSITORY"}, {"value" => "AWS::RDS::DBSnapshot", "name" => "AWS_RDS_DBSNAPSHOT"}, {"value" => "AWS::RDS::DBClusterSnapshot", "name" => "AWS_RDS_DBCLUSTERSNAPSHOT"}, {"value" => "AWS::SNS::Topic", "name" => "AWS_SNS_TOPIC"}, {"value" => "AWS::S3Express::DirectoryBucket", "name" => "AWS_S3EXPRESS_DIRECTORYBUCKET"}, {"value" => "AWS::DynamoDB::Table", "name" => "AWS_DYNAMODB_TABLE"}, {"value" => "AWS::DynamoDB::Stream", "name" => "AWS_DYNAMODB_STREAM"}, {"value" => "AWS::IAM::User", "name" => "AWS_IAM_USER"}]})
    ResourceTypeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ResourceTypeDetails", name: "ResourceTypeDetails")
    ResourceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#ResourceTypeList", name: "ResourceTypeList")
    ResourceTypeStatisticsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.accessanalyzer#ResourceTypeStatisticsMap", name: "ResourceTypeStatisticsMap")
    ResourcesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#ResourcesList", name: "ResourcesList")
    RetiringPrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#RetiringPrincipal", name: "RetiringPrincipal")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#RoleArn", name: "RoleArn", traits: {"smithy.api#pattern" => "^arn:[^:]*:iam::[^:]*:role/.{1,576}$"})
    S3AccessPointConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#S3AccessPointConfiguration", name: "S3AccessPointConfiguration")
    S3AccessPointConfigurationsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.accessanalyzer#S3AccessPointConfigurationsMap", name: "S3AccessPointConfigurationsMap")
    S3BucketAclGrantConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#S3BucketAclGrantConfiguration", name: "S3BucketAclGrantConfiguration")
    S3BucketAclGrantConfigurationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#S3BucketAclGrantConfigurationsList", name: "S3BucketAclGrantConfigurationsList")
    S3BucketConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#S3BucketConfiguration", name: "S3BucketConfiguration")
    S3BucketPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#S3BucketPolicy", name: "S3BucketPolicy")
    S3ExpressDirectoryAccessPointArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#S3ExpressDirectoryAccessPointArn", name: "S3ExpressDirectoryAccessPointArn", traits: {"smithy.api#pattern" => "^arn:[^:]*:s3express:[^:]*:[^:]*:accesspoint/.*$"})
    S3ExpressDirectoryAccessPointConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#S3ExpressDirectoryAccessPointConfiguration", name: "S3ExpressDirectoryAccessPointConfiguration")
    S3ExpressDirectoryAccessPointConfigurationsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.accessanalyzer#S3ExpressDirectoryAccessPointConfigurationsMap", name: "S3ExpressDirectoryAccessPointConfigurationsMap")
    S3ExpressDirectoryBucketConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#S3ExpressDirectoryBucketConfiguration", name: "S3ExpressDirectoryBucketConfiguration")
    S3ExpressDirectoryBucketPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#S3ExpressDirectoryBucketPolicy", name: "S3ExpressDirectoryBucketPolicy")
    S3PublicAccessBlockConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#S3PublicAccessBlockConfiguration", name: "S3PublicAccessBlockConfiguration")
    SecretsManagerSecretConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#SecretsManagerSecretConfiguration", name: "SecretsManagerSecretConfiguration")
    SecretsManagerSecretKmsId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#SecretsManagerSecretKmsId", name: "SecretsManagerSecretKmsId")
    SecretsManagerSecretPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#SecretsManagerSecretPolicy", name: "SecretsManagerSecretPolicy")
    ServiceControlPolicyRestriction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#ServiceControlPolicyRestriction", name: "ServiceControlPolicyRestriction", traits: {"smithy.api#enum" => [{"value" => "APPLICABLE", "name" => "APPLICABLE"}, {"value" => "FAILED_TO_EVALUATE_SCP", "name" => "FAILED_TO_EVALUATE_SCP"}, {"value" => "NOT_APPLICABLE", "name" => "NOT_APPLICABLE"}, {"value" => "APPLIED", "name" => "APPLIED"}]})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SharedViaList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#SharedViaList", name: "SharedViaList")
    SnsTopicConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#SnsTopicConfiguration", name: "SnsTopicConfiguration")
    SnsTopicPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#SnsTopicPolicy", name: "SnsTopicPolicy", traits: {"smithy.api#length" => {"max" => 30720}})
    SortCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#SortCriteria", name: "SortCriteria")
    Span = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#Span", name: "Span")
    SqsQueueConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#SqsQueueConfiguration", name: "SqsQueueConfiguration")
    SqsQueuePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#SqsQueuePolicy", name: "SqsQueuePolicy")
    StartPolicyGenerationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#StartPolicyGenerationInput", name: "StartPolicyGenerationInput")
    StartPolicyGenerationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#StartPolicyGenerationOutput", name: "StartPolicyGenerationOutput")
    StartResourceScanInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#StartResourceScanInput", name: "StartResourceScanInput")
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#Status", name: "Status", traits: {"smithy.api#enum" => [{"value" => "SUCCEEDED", "name" => "SUCCEEDED"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}]})
    StatusReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#StatusReason", name: "StatusReason")
    Substring = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#Substring", name: "Substring")
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#TagKeys", name: "TagKeys")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#TagResourceOutput", name: "TagResourceOutput")
    TagsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#TagsList", name: "TagsList")
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.accessanalyzer#TagsMap", name: "TagsMap")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.accessanalyzer#Timestamp", name: "Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#Token", name: "Token")
    Trail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#Trail", name: "Trail")
    TrailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#TrailList", name: "TrailList")
    TrailProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#TrailProperties", name: "TrailProperties")
    TrailPropertiesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#TrailPropertiesList", name: "TrailPropertiesList")
    Type = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#Type", name: "Type", traits: {"smithy.api#enum" => [{"value" => "ACCOUNT", "name" => "ACCOUNT"}, {"value" => "ORGANIZATION", "name" => "ORGANIZATION"}, {"value" => "ACCOUNT_UNUSED_ACCESS", "name" => "ACCOUNT_UNUSED_ACCESS"}, {"value" => "ORGANIZATION_UNUSED_ACCESS", "name" => "ORGANIZATION_UNUSED_ACCESS"}, {"value" => "ACCOUNT_INTERNAL_ACCESS", "name" => "ACCOUNT_INTERNAL_ACCESS"}, {"value" => "ORGANIZATION_INTERNAL_ACCESS", "name" => "ORGANIZATION_INTERNAL_ACCESS"}]})
    UnprocessableEntityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#UnprocessableEntityException", name: "UnprocessableEntityException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422, "smithy.api#retryable" => {}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#UntagResourceOutput", name: "UntagResourceOutput")
    UnusedAccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#UnusedAccessConfiguration", name: "UnusedAccessConfiguration")
    UnusedAccessFindingsStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#UnusedAccessFindingsStatistics", name: "UnusedAccessFindingsStatistics")
    UnusedAccessTypeStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#UnusedAccessTypeStatistics", name: "UnusedAccessTypeStatistics")
    UnusedAccessTypeStatisticsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#UnusedAccessTypeStatisticsList", name: "UnusedAccessTypeStatisticsList")
    UnusedAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#UnusedAction", name: "UnusedAction")
    UnusedActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#UnusedActionList", name: "UnusedActionList")
    UnusedIamRoleDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#UnusedIamRoleDetails", name: "UnusedIamRoleDetails")
    UnusedIamUserAccessKeyDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#UnusedIamUserAccessKeyDetails", name: "UnusedIamUserAccessKeyDetails")
    UnusedIamUserPasswordDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#UnusedIamUserPasswordDetails", name: "UnusedIamUserPasswordDetails")
    UnusedPermissionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#UnusedPermissionDetails", name: "UnusedPermissionDetails")
    UnusedPermissionsRecommendedStep = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#UnusedPermissionsRecommendedStep", name: "UnusedPermissionsRecommendedStep")
    UpdateAnalyzerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#UpdateAnalyzerRequest", name: "UpdateAnalyzerRequest")
    UpdateAnalyzerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#UpdateAnalyzerResponse", name: "UpdateAnalyzerResponse")
    UpdateArchiveRuleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#UpdateArchiveRuleInput", name: "UpdateArchiveRuleInput")
    UpdateFindingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#UpdateFindingsInput", name: "UpdateFindingsInput")
    ValidatePolicyFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ValidatePolicyFinding", name: "ValidatePolicyFinding")
    ValidatePolicyFindingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#ValidatePolicyFindingList", name: "ValidatePolicyFindingList")
    ValidatePolicyFindingType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#ValidatePolicyFindingType", name: "ValidatePolicyFindingType", traits: {"smithy.api#enum" => [{"value" => "ERROR", "name" => "ERROR"}, {"value" => "SECURITY_WARNING", "name" => "SECURITY_WARNING"}, {"value" => "SUGGESTION", "name" => "SUGGESTION"}, {"value" => "WARNING", "name" => "WARNING"}]})
    ValidatePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ValidatePolicyInput", name: "ValidatePolicyInput")
    ValidatePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ValidatePolicyOutput", name: "ValidatePolicyOutput")
    ValidatePolicyResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#ValidatePolicyResourceType", name: "ValidatePolicyResourceType", traits: {"smithy.api#enum" => [{"value" => "AWS::S3::Bucket", "name" => "S3_BUCKET"}, {"value" => "AWS::S3::AccessPoint", "name" => "S3_ACCESS_POINT"}, {"value" => "AWS::S3::MultiRegionAccessPoint", "name" => "S3_MULTI_REGION_ACCESS_POINT"}, {"value" => "AWS::S3ObjectLambda::AccessPoint", "name" => "S3_OBJECT_LAMBDA_ACCESS_POINT"}, {"value" => "AWS::IAM::AssumeRolePolicyDocument", "name" => "ROLE_TRUST"}, {"value" => "AWS::DynamoDB::Table", "name" => "DYNAMODB_TABLE"}]})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#ValidationExceptionReason", name: "ValidationExceptionReason", traits: {"smithy.api#enum" => [{"value" => "unknownOperation", "name" => "UNKNOWN_OPERATION"}, {"value" => "cannotParse", "name" => "CANNOT_PARSE"}, {"value" => "fieldValidationFailed", "name" => "FIELD_VALIDATION_FAILED"}, {"value" => "other", "name" => "OTHER"}, {"value" => "notSupported", "name" => "NOT_SUPPORTED"}]})
    ValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.accessanalyzer#ValueList", name: "ValueList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    VpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.accessanalyzer#VpcConfiguration", name: "VpcConfiguration")
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.accessanalyzer#VpcId", name: "VpcId", traits: {"smithy.api#pattern" => "^vpc-([0-9a-f]){8}(([0-9a-f]){9})?$"})

    Access.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionsList, name: "actions", traits: {"smithy.api#addedDefault" => {}, "smithy.api#default" => [], "smithy.api#length" => {"max" => 100}}))
    Access.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesList, name: "resources", traits: {"smithy.api#default" => [], "smithy.api#length" => {"max" => 100}}))
    Access.type = Types::Access
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Access, name: "member"))
    AccessPreview.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPreviewId, name: "id", traits: {"smithy.api#required" => {}}))
    AccessPreview.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#required" => {}}))
    AccessPreview.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationsMap, name: "configurations", traits: {"smithy.api#required" => {}}))
    AccessPreview.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    AccessPreview.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPreviewStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AccessPreview.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPreviewStatusReason, name: "statusReason"))
    AccessPreview.type = Types::AccessPreview
    AccessPreviewFinding.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPreviewFindingId, name: "id", traits: {"smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:existing_finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingId, name: "existingFindingId"))
    AccessPreviewFinding.add_member(:existing_finding_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "existingFindingStatus"))
    AccessPreviewFinding.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalMap, name: "principal"))
    AccessPreviewFinding.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionList, name: "action"))
    AccessPreviewFinding.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionKeyMap, name: "condition"))
    AccessPreviewFinding.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resource"))
    AccessPreviewFinding.add_member(:is_public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isPublic"))
    AccessPreviewFinding.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:change_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingChangeType, name: "changeType", traits: {"smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:resource_owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceOwnerAccount", traits: {"smithy.api#required" => {}}))
    AccessPreviewFinding.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "error"))
    AccessPreviewFinding.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSourceList, name: "sources"))
    AccessPreviewFinding.add_member(:resource_control_policy_restriction, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceControlPolicyRestriction, name: "resourceControlPolicyRestriction"))
    AccessPreviewFinding.type = Types::AccessPreviewFinding
    AccessPreviewFindingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPreviewFinding, name: "member"))
    AccessPreviewStatusReason.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPreviewStatusReasonCode, name: "code", traits: {"smithy.api#required" => {}}))
    AccessPreviewStatusReason.type = Types::AccessPreviewStatusReason
    AccessPreviewSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPreviewId, name: "id", traits: {"smithy.api#required" => {}}))
    AccessPreviewSummary.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#required" => {}}))
    AccessPreviewSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    AccessPreviewSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPreviewStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AccessPreviewSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPreviewStatusReason, name: "statusReason"))
    AccessPreviewSummary.type = Types::AccessPreviewSummary
    AccessPreviewsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPreviewSummary, name: "member"))
    AccountAggregations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingAggregationAccountDetails, name: "member"))
    AccountIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    AclGrantee.add_member(:id, Types::AclGrantee::Id, ::Smithy::Schema::Shapes::MemberShape.new(target: AclCanonicalId, name: "id"))
    AclGrantee.add_member(:uri, Types::AclGrantee::Uri, ::Smithy::Schema::Shapes::MemberShape.new(target: AclUri, name: "uri"))
    AclGrantee.add_member(:unknown, Types::AclGrantee::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AclGrantee.type = Types::AclGrantee
    ActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ActionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "member"))
    AnalysisRule.add_member(:exclusions, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleCriteriaList, name: "exclusions"))
    AnalysisRule.type = Types::AnalysisRule
    AnalysisRuleCriteria.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdsList, name: "accountIds"))
    AnalysisRuleCriteria.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsList, name: "resourceTags"))
    AnalysisRuleCriteria.type = Types::AnalysisRuleCriteria
    AnalysisRuleCriteriaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRuleCriteria, name: "member"))
    AnalyzedResource.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    AnalyzedResource.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    AnalyzedResource.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    AnalyzedResource.add_member(:analyzed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "analyzedAt", traits: {"smithy.api#required" => {}}))
    AnalyzedResource.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    AnalyzedResource.add_member(:is_public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isPublic", traits: {"smithy.api#required" => {}}))
    AnalyzedResource.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionList, name: "actions"))
    AnalyzedResource.add_member(:shared_via, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedViaList, name: "sharedVia"))
    AnalyzedResource.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "status"))
    AnalyzedResource.add_member(:resource_owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceOwnerAccount", traits: {"smithy.api#required" => {}}))
    AnalyzedResource.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "error"))
    AnalyzedResource.type = Types::AnalyzedResource
    AnalyzedResourceSummary.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    AnalyzedResourceSummary.add_member(:resource_owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceOwnerAccount", traits: {"smithy.api#required" => {}}))
    AnalyzedResourceSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    AnalyzedResourceSummary.type = Types::AnalyzedResourceSummary
    AnalyzedResourcesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzedResourceSummary, name: "member"))
    AnalyzerConfiguration.add_member(:unused_access, Types::AnalyzerConfiguration::UnusedAccess, ::Smithy::Schema::Shapes::MemberShape.new(target: UnusedAccessConfiguration, name: "unusedAccess"))
    AnalyzerConfiguration.add_member(:internal_access, Types::AnalyzerConfiguration::InternalAccess, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalAccessConfiguration, name: "internalAccess"))
    AnalyzerConfiguration.add_member(:unknown, Types::AnalyzerConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AnalyzerConfiguration.type = Types::AnalyzerConfiguration
    AnalyzerSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "arn", traits: {"smithy.api#required" => {}}))
    AnalyzerSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "name", traits: {"smithy.api#required" => {}}))
    AnalyzerSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "type", traits: {"smithy.api#required" => {}}))
    AnalyzerSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    AnalyzerSummary.add_member(:last_resource_analyzed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "lastResourceAnalyzed"))
    AnalyzerSummary.add_member(:last_resource_analyzed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastResourceAnalyzedAt"))
    AnalyzerSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    AnalyzerSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerStatus, name: "status", traits: {"smithy.api#required" => {}}))
    AnalyzerSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, name: "statusReason"))
    AnalyzerSummary.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerConfiguration, name: "configuration"))
    AnalyzerSummary.type = Types::AnalyzerSummary
    AnalyzersList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerSummary, name: "member"))
    ApplyArchiveRuleInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#required" => {}}))
    ApplyArchiveRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ruleName", traits: {"smithy.api#required" => {}}))
    ApplyArchiveRuleInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    ApplyArchiveRuleInput.type = Types::ApplyArchiveRuleInput
    ArchiveRuleSummary.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ruleName", traits: {"smithy.api#required" => {}}))
    ArchiveRuleSummary.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaMap, name: "filter", traits: {"smithy.api#required" => {}}))
    ArchiveRuleSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    ArchiveRuleSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ArchiveRuleSummary.type = Types::ArchiveRuleSummary
    ArchiveRulesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveRuleSummary, name: "member"))
    CancelPolicyGenerationInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelPolicyGenerationInput.type = Types::CancelPolicyGenerationInput
    CancelPolicyGenerationOutput.type = Types::CancelPolicyGenerationOutput
    CheckAccessNotGrantedRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessCheckPolicyDocument, name: "policyDocument", traits: {"smithy.api#required" => {}}))
    CheckAccessNotGrantedRequest.add_member(:access, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessList, name: "access", traits: {"smithy.api#length" => {"max" => 1}, "smithy.api#required" => {}}))
    CheckAccessNotGrantedRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessCheckPolicyType, name: "policyType", traits: {"smithy.api#required" => {}}))
    CheckAccessNotGrantedRequest.type = Types::CheckAccessNotGrantedRequest
    CheckAccessNotGrantedResponse.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckAccessNotGrantedResult, name: "result"))
    CheckAccessNotGrantedResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    CheckAccessNotGrantedResponse.add_member(:reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonSummaryList, name: "reasons"))
    CheckAccessNotGrantedResponse.type = Types::CheckAccessNotGrantedResponse
    CheckNoNewAccessRequest.add_member(:new_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessCheckPolicyDocument, name: "newPolicyDocument", traits: {"smithy.api#required" => {}}))
    CheckNoNewAccessRequest.add_member(:existing_policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessCheckPolicyDocument, name: "existingPolicyDocument", traits: {"smithy.api#required" => {}}))
    CheckNoNewAccessRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessCheckPolicyType, name: "policyType", traits: {"smithy.api#required" => {}}))
    CheckNoNewAccessRequest.type = Types::CheckNoNewAccessRequest
    CheckNoNewAccessResponse.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckNoNewAccessResult, name: "result"))
    CheckNoNewAccessResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    CheckNoNewAccessResponse.add_member(:reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonSummaryList, name: "reasons"))
    CheckNoNewAccessResponse.type = Types::CheckNoNewAccessResponse
    CheckNoPublicAccessRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessCheckPolicyDocument, name: "policyDocument", traits: {"smithy.api#required" => {}}))
    CheckNoPublicAccessRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessCheckResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    CheckNoPublicAccessRequest.type = Types::CheckNoPublicAccessRequest
    CheckNoPublicAccessResponse.add_member(:result, ::Smithy::Schema::Shapes::MemberShape.new(target: CheckNoPublicAccessResult, name: "result"))
    CheckNoPublicAccessResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    CheckNoPublicAccessResponse.add_member(:reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonSummaryList, name: "reasons"))
    CheckNoPublicAccessResponse.type = Types::CheckNoPublicAccessResponse
    CloudTrailDetails.add_member(:trails, ::Smithy::Schema::Shapes::MemberShape.new(target: TrailList, name: "trails", traits: {"smithy.api#required" => {}}))
    CloudTrailDetails.add_member(:access_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "accessRole", traits: {"smithy.api#required" => {}}))
    CloudTrailDetails.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    CloudTrailDetails.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    CloudTrailDetails.type = Types::CloudTrailDetails
    CloudTrailProperties.add_member(:trail_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: TrailPropertiesList, name: "trailProperties", traits: {"smithy.api#required" => {}}))
    CloudTrailProperties.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    CloudTrailProperties.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    CloudTrailProperties.type = Types::CloudTrailProperties
    ConditionKeyMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    ConditionKeyMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    Configuration.add_member(:ebs_snapshot, Types::Configuration::EbsSnapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsSnapshotConfiguration, name: "ebsSnapshot"))
    Configuration.add_member(:ecr_repository, Types::Configuration::EcrRepository, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrRepositoryConfiguration, name: "ecrRepository"))
    Configuration.add_member(:iam_role, Types::Configuration::IamRole, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleConfiguration, name: "iamRole"))
    Configuration.add_member(:efs_file_system, Types::Configuration::EfsFileSystem, ::Smithy::Schema::Shapes::MemberShape.new(target: EfsFileSystemConfiguration, name: "efsFileSystem"))
    Configuration.add_member(:kms_key, Types::Configuration::KmsKey, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyConfiguration, name: "kmsKey"))
    Configuration.add_member(:rds_db_cluster_snapshot, Types::Configuration::RdsDbClusterSnapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbClusterSnapshotConfiguration, name: "rdsDbClusterSnapshot"))
    Configuration.add_member(:rds_db_snapshot, Types::Configuration::RdsDbSnapshot, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbSnapshotConfiguration, name: "rdsDbSnapshot"))
    Configuration.add_member(:secrets_manager_secret, Types::Configuration::SecretsManagerSecret, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerSecretConfiguration, name: "secretsManagerSecret"))
    Configuration.add_member(:s3_bucket, Types::Configuration::S3Bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketConfiguration, name: "s3Bucket"))
    Configuration.add_member(:sns_topic, Types::Configuration::SnsTopic, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsTopicConfiguration, name: "snsTopic"))
    Configuration.add_member(:sqs_queue, Types::Configuration::SqsQueue, ::Smithy::Schema::Shapes::MemberShape.new(target: SqsQueueConfiguration, name: "sqsQueue"))
    Configuration.add_member(:s3_express_directory_bucket, Types::Configuration::S3ExpressDirectoryBucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ExpressDirectoryBucketConfiguration, name: "s3ExpressDirectoryBucket"))
    Configuration.add_member(:dynamodb_stream, Types::Configuration::DynamodbStream, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamodbStreamConfiguration, name: "dynamodbStream"))
    Configuration.add_member(:dynamodb_table, Types::Configuration::DynamodbTable, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamodbTableConfiguration, name: "dynamodbTable"))
    Configuration.add_member(:unknown, Types::Configuration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Configuration.type = Types::Configuration
    ConfigurationsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationsMapKey, name: "key"))
    ConfigurationsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "value"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateAccessPreviewInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#required" => {}}))
    CreateAccessPreviewInput.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationsMap, name: "configurations", traits: {"smithy.api#required" => {}}))
    CreateAccessPreviewInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAccessPreviewInput.type = Types::CreateAccessPreviewInput
    CreateAccessPreviewOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPreviewId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateAccessPreviewOutput.type = Types::CreateAccessPreviewOutput
    CreateAnalyzerInput.add_member(:analyzer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "analyzerName", traits: {"smithy.api#required" => {}}))
    CreateAnalyzerInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "type", traits: {"smithy.api#required" => {}}))
    CreateAnalyzerInput.add_member(:archive_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineArchiveRulesList, name: "archiveRules"))
    CreateAnalyzerInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateAnalyzerInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateAnalyzerInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerConfiguration, name: "configuration"))
    CreateAnalyzerInput.type = Types::CreateAnalyzerInput
    CreateAnalyzerOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "arn"))
    CreateAnalyzerOutput.type = Types::CreateAnalyzerOutput
    CreateArchiveRuleInput.add_member(:analyzer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "analyzerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateArchiveRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ruleName", traits: {"smithy.api#required" => {}}))
    CreateArchiveRuleInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaMap, name: "filter", traits: {"smithy.api#required" => {}}))
    CreateArchiveRuleInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateArchiveRuleInput.type = Types::CreateArchiveRuleInput
    Criterion.add_member(:eq, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueList, name: "eq"))
    Criterion.add_member(:neq, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueList, name: "neq"))
    Criterion.add_member(:contains, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueList, name: "contains"))
    Criterion.add_member(:exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "exists"))
    Criterion.type = Types::Criterion
    DeleteAnalyzerInput.add_member(:analyzer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "analyzerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAnalyzerInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteAnalyzerInput.type = Types::DeleteAnalyzerInput
    DeleteArchiveRuleInput.add_member(:analyzer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "analyzerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteArchiveRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ruleName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteArchiveRuleInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteArchiveRuleInput.type = Types::DeleteArchiveRuleInput
    DynamodbStreamConfiguration.add_member(:stream_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamodbStreamPolicy, name: "streamPolicy"))
    DynamodbStreamConfiguration.type = Types::DynamodbStreamConfiguration
    DynamodbTableConfiguration.add_member(:table_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamodbTablePolicy, name: "tablePolicy"))
    DynamodbTableConfiguration.type = Types::DynamodbTableConfiguration
    EbsGroupList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsGroup, name: "member"))
    EbsSnapshotConfiguration.add_member(:user_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsUserIdList, name: "userIds"))
    EbsSnapshotConfiguration.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsGroupList, name: "groups"))
    EbsSnapshotConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsSnapshotDataEncryptionKeyId, name: "kmsKeyId"))
    EbsSnapshotConfiguration.type = Types::EbsSnapshotConfiguration
    EbsUserIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsUserId, name: "member"))
    EcrRepositoryConfiguration.add_member(:repository_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrRepositoryPolicy, name: "repositoryPolicy"))
    EcrRepositoryConfiguration.type = Types::EcrRepositoryConfiguration
    EfsFileSystemConfiguration.add_member(:file_system_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: EfsFileSystemPolicy, name: "fileSystemPolicy"))
    EfsFileSystemConfiguration.type = Types::EfsFileSystemConfiguration
    ExternalAccessDetails.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionList, name: "action"))
    ExternalAccessDetails.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionKeyMap, name: "condition", traits: {"smithy.api#required" => {}}))
    ExternalAccessDetails.add_member(:is_public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isPublic"))
    ExternalAccessDetails.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalMap, name: "principal"))
    ExternalAccessDetails.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSourceList, name: "sources"))
    ExternalAccessDetails.add_member(:resource_control_policy_restriction, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceControlPolicyRestriction, name: "resourceControlPolicyRestriction"))
    ExternalAccessDetails.type = Types::ExternalAccessDetails
    ExternalAccessFindingsStatistics.add_member(:resource_type_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeStatisticsMap, name: "resourceTypeStatistics"))
    ExternalAccessFindingsStatistics.add_member(:total_active_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalActiveFindings"))
    ExternalAccessFindingsStatistics.add_member(:total_archived_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalArchivedFindings"))
    ExternalAccessFindingsStatistics.add_member(:total_resolved_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalResolvedFindings"))
    ExternalAccessFindingsStatistics.type = Types::ExternalAccessFindingsStatistics
    FilterCriteriaMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    FilterCriteriaMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Criterion, name: "value"))
    Finding.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingId, name: "id", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalMap, name: "principal"))
    Finding.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionList, name: "action"))
    Finding.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resource"))
    Finding.add_member(:is_public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isPublic"))
    Finding.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionKeyMap, name: "condition", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:analyzed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "analyzedAt", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "status", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:resource_owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceOwnerAccount", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "error"))
    Finding.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSourceList, name: "sources"))
    Finding.add_member(:resource_control_policy_restriction, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceControlPolicyRestriction, name: "resourceControlPolicyRestriction"))
    Finding.type = Types::Finding
    FindingAggregationAccountDetails.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "account"))
    FindingAggregationAccountDetails.add_member(:number_of_active_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "numberOfActiveFindings"))
    FindingAggregationAccountDetails.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingAggregationAccountDetailsMap, name: "details"))
    FindingAggregationAccountDetails.type = Types::FindingAggregationAccountDetails
    FindingAggregationAccountDetailsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    FindingAggregationAccountDetailsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "value"))
    FindingDetails.add_member(:internal_access_details, Types::FindingDetails::InternalAccessDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalAccessDetails, name: "internalAccessDetails"))
    FindingDetails.add_member(:external_access_details, Types::FindingDetails::ExternalAccessDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalAccessDetails, name: "externalAccessDetails"))
    FindingDetails.add_member(:unused_permission_details, Types::FindingDetails::UnusedPermissionDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: UnusedPermissionDetails, name: "unusedPermissionDetails"))
    FindingDetails.add_member(:unused_iam_user_access_key_details, Types::FindingDetails::UnusedIamUserAccessKeyDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: UnusedIamUserAccessKeyDetails, name: "unusedIamUserAccessKeyDetails"))
    FindingDetails.add_member(:unused_iam_role_details, Types::FindingDetails::UnusedIamRoleDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: UnusedIamRoleDetails, name: "unusedIamRoleDetails"))
    FindingDetails.add_member(:unused_iam_user_password_details, Types::FindingDetails::UnusedIamUserPasswordDetails, ::Smithy::Schema::Shapes::MemberShape.new(target: UnusedIamUserPasswordDetails, name: "unusedIamUserPasswordDetails"))
    FindingDetails.add_member(:unknown, Types::FindingDetails::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FindingDetails.type = Types::FindingDetails
    FindingDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingDetails, name: "member"))
    FindingIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingId, name: "member"))
    FindingSource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSourceType, name: "type", traits: {"smithy.api#required" => {}}))
    FindingSource.add_member(:detail, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSourceDetail, name: "detail"))
    FindingSource.type = Types::FindingSource
    FindingSourceDetail.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accessPointArn"))
    FindingSourceDetail.add_member(:access_point_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accessPointAccount"))
    FindingSourceDetail.type = Types::FindingSourceDetail
    FindingSourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSource, name: "member"))
    FindingSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingId, name: "id", traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalMap, name: "principal"))
    FindingSummary.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionList, name: "action"))
    FindingSummary.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resource"))
    FindingSummary.add_member(:is_public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isPublic"))
    FindingSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionKeyMap, name: "condition", traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:analyzed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "analyzedAt", traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "status", traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:resource_owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceOwnerAccount", traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "error"))
    FindingSummary.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSourceList, name: "sources"))
    FindingSummary.add_member(:resource_control_policy_restriction, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceControlPolicyRestriction, name: "resourceControlPolicyRestriction"))
    FindingSummary.type = Types::FindingSummary
    FindingSummaryV2.add_member(:analyzed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "analyzedAt", traits: {"smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "error"))
    FindingSummaryV2.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingId, name: "id", traits: {"smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resource"))
    FindingSummaryV2.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:resource_owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceOwnerAccount", traits: {"smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "status", traits: {"smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    FindingSummaryV2.add_member(:finding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingType, name: "findingType"))
    FindingSummaryV2.type = Types::FindingSummaryV2
    FindingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSummary, name: "member"))
    FindingsListV2.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSummaryV2, name: "member"))
    FindingsStatistics.add_member(:external_access_findings_statistics, Types::FindingsStatistics::ExternalAccessFindingsStatistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalAccessFindingsStatistics, name: "externalAccessFindingsStatistics"))
    FindingsStatistics.add_member(:internal_access_findings_statistics, Types::FindingsStatistics::InternalAccessFindingsStatistics, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalAccessFindingsStatistics, name: "internalAccessFindingsStatistics"))
    FindingsStatistics.add_member(:unused_access_findings_statistics, Types::FindingsStatistics::UnusedAccessFindingsStatistics, ::Smithy::Schema::Shapes::MemberShape.new(target: UnusedAccessFindingsStatistics, name: "unusedAccessFindingsStatistics"))
    FindingsStatistics.add_member(:unknown, Types::FindingsStatistics::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    FindingsStatistics.type = Types::FindingsStatistics
    FindingsStatisticsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingsStatistics, name: "member"))
    GenerateFindingRecommendationRequest.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GenerateFindingRecommendationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    GenerateFindingRecommendationRequest.type = Types::GenerateFindingRecommendationRequest
    GeneratedPolicy.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "policy", traits: {"smithy.api#required" => {}}))
    GeneratedPolicy.type = Types::GeneratedPolicy
    GeneratedPolicyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedPolicy, name: "member"))
    GeneratedPolicyProperties.add_member(:is_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isComplete"))
    GeneratedPolicyProperties.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalArn, name: "principalArn", traits: {"smithy.api#required" => {}}))
    GeneratedPolicyProperties.add_member(:cloud_trail_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudTrailProperties, name: "cloudTrailProperties"))
    GeneratedPolicyProperties.type = Types::GeneratedPolicyProperties
    GeneratedPolicyResult.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedPolicyProperties, name: "properties", traits: {"smithy.api#required" => {}}))
    GeneratedPolicyResult.add_member(:generated_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedPolicyList, name: "generatedPolicies"))
    GeneratedPolicyResult.type = Types::GeneratedPolicyResult
    GetAccessPreviewInput.add_member(:access_preview_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPreviewId, name: "accessPreviewId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAccessPreviewInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GetAccessPreviewInput.type = Types::GetAccessPreviewInput
    GetAccessPreviewOutput.add_member(:access_preview, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPreview, name: "accessPreview", traits: {"smithy.api#required" => {}}))
    GetAccessPreviewOutput.type = Types::GetAccessPreviewOutput
    GetAnalyzedResourceInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GetAnalyzedResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    GetAnalyzedResourceInput.type = Types::GetAnalyzedResourceInput
    GetAnalyzedResourceOutput.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzedResource, name: "resource"))
    GetAnalyzedResourceOutput.type = Types::GetAnalyzedResourceOutput
    GetAnalyzerInput.add_member(:analyzer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "analyzerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAnalyzerInput.type = Types::GetAnalyzerInput
    GetAnalyzerOutput.add_member(:analyzer, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerSummary, name: "analyzer", traits: {"smithy.api#required" => {}}))
    GetAnalyzerOutput.type = Types::GetAnalyzerOutput
    GetArchiveRuleInput.add_member(:analyzer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "analyzerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetArchiveRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ruleName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetArchiveRuleInput.type = Types::GetArchiveRuleInput
    GetArchiveRuleOutput.add_member(:archive_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveRuleSummary, name: "archiveRule", traits: {"smithy.api#required" => {}}))
    GetArchiveRuleOutput.type = Types::GetArchiveRuleOutput
    GetFindingInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GetFindingInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFindingInput.type = Types::GetFindingInput
    GetFindingOutput.add_member(:finding, ::Smithy::Schema::Shapes::MemberShape.new(target: Finding, name: "finding"))
    GetFindingOutput.type = Types::GetFindingOutput
    GetFindingRecommendationRequest.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GetFindingRecommendationRequest.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#required" => {}}))
    GetFindingRecommendationRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    GetFindingRecommendationRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetFindingRecommendationRequest.type = Types::GetFindingRecommendationRequest
    GetFindingRecommendationResponse.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startedAt", traits: {"smithy.api#required" => {}}))
    GetFindingRecommendationResponse.add_member(:completed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "completedAt"))
    GetFindingRecommendationResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    GetFindingRecommendationResponse.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationError, name: "error"))
    GetFindingRecommendationResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetFindingRecommendationResponse.add_member(:recommended_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedStepList, name: "recommendedSteps"))
    GetFindingRecommendationResponse.add_member(:recommendation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationType, name: "recommendationType", traits: {"smithy.api#required" => {}}))
    GetFindingRecommendationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status", traits: {"smithy.api#required" => {}}))
    GetFindingRecommendationResponse.type = Types::GetFindingRecommendationResponse
    GetFindingV2Request.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    GetFindingV2Request.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFindingV2Request.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetFindingV2Request.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetFindingV2Request.type = Types::GetFindingV2Request
    GetFindingV2Response.add_member(:analyzed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "analyzedAt", traits: {"smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "error"))
    GetFindingV2Response.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingId, name: "id", traits: {"smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    GetFindingV2Response.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resource"))
    GetFindingV2Response.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:resource_owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceOwnerAccount", traits: {"smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:finding_details, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingDetailsList, name: "findingDetails", traits: {"smithy.api#required" => {}}))
    GetFindingV2Response.add_member(:finding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingType, name: "findingType"))
    GetFindingV2Response.type = Types::GetFindingV2Response
    GetFindingsStatisticsRequest.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#required" => {}}))
    GetFindingsStatisticsRequest.type = Types::GetFindingsStatisticsRequest
    GetFindingsStatisticsResponse.add_member(:findings_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingsStatisticsList, name: "findingsStatistics"))
    GetFindingsStatisticsResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    GetFindingsStatisticsResponse.type = Types::GetFindingsStatisticsResponse
    GetGeneratedPolicyInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGeneratedPolicyInput.add_member(:include_resource_placeholders, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includeResourcePlaceholders", traits: {"smithy.api#httpQuery" => "includeResourcePlaceholders"}))
    GetGeneratedPolicyInput.add_member(:include_service_level_template, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includeServiceLevelTemplate", traits: {"smithy.api#httpQuery" => "includeServiceLevelTemplate"}))
    GetGeneratedPolicyInput.type = Types::GetGeneratedPolicyInput
    GetGeneratedPolicyOutput.add_member(:job_details, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDetails, name: "jobDetails", traits: {"smithy.api#required" => {}}))
    GetGeneratedPolicyOutput.add_member(:generated_policy_result, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneratedPolicyResult, name: "generatedPolicyResult", traits: {"smithy.api#required" => {}}))
    GetGeneratedPolicyOutput.type = Types::GetGeneratedPolicyOutput
    IamRoleConfiguration.add_member(:trust_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: IamTrustPolicy, name: "trustPolicy"))
    IamRoleConfiguration.type = Types::IamRoleConfiguration
    InlineArchiveRule.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ruleName", traits: {"smithy.api#required" => {}}))
    InlineArchiveRule.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaMap, name: "filter", traits: {"smithy.api#required" => {}}))
    InlineArchiveRule.type = Types::InlineArchiveRule
    InlineArchiveRulesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineArchiveRule, name: "member"))
    InternalAccessAnalysisRule.add_member(:inclusions, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalAccessAnalysisRuleCriteriaList, name: "inclusions"))
    InternalAccessAnalysisRule.type = Types::InternalAccessAnalysisRule
    InternalAccessAnalysisRuleCriteria.add_member(:account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountIdsList, name: "accountIds"))
    InternalAccessAnalysisRuleCriteria.add_member(:resource_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeList, name: "resourceTypes"))
    InternalAccessAnalysisRuleCriteria.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnsList, name: "resourceArns"))
    InternalAccessAnalysisRuleCriteria.type = Types::InternalAccessAnalysisRuleCriteria
    InternalAccessAnalysisRuleCriteriaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalAccessAnalysisRuleCriteria, name: "member"))
    InternalAccessConfiguration.add_member(:analysis_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalAccessAnalysisRule, name: "analysisRule"))
    InternalAccessConfiguration.type = Types::InternalAccessConfiguration
    InternalAccessDetails.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionList, name: "action"))
    InternalAccessDetails.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ConditionKeyMap, name: "condition"))
    InternalAccessDetails.add_member(:principal, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalMap, name: "principal"))
    InternalAccessDetails.add_member(:principal_owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "principalOwnerAccount"))
    InternalAccessDetails.add_member(:access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalAccessType, name: "accessType"))
    InternalAccessDetails.add_member(:principal_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalType, name: "principalType"))
    InternalAccessDetails.add_member(:sources, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSourceList, name: "sources"))
    InternalAccessDetails.add_member(:resource_control_policy_restriction, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceControlPolicyRestriction, name: "resourceControlPolicyRestriction"))
    InternalAccessDetails.add_member(:service_control_policy_restriction, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceControlPolicyRestriction, name: "serviceControlPolicyRestriction"))
    InternalAccessDetails.type = Types::InternalAccessDetails
    InternalAccessFindingsStatistics.add_member(:resource_type_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalAccessResourceTypeStatisticsMap, name: "resourceTypeStatistics"))
    InternalAccessFindingsStatistics.add_member(:total_active_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalActiveFindings"))
    InternalAccessFindingsStatistics.add_member(:total_archived_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalArchivedFindings"))
    InternalAccessFindingsStatistics.add_member(:total_resolved_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalResolvedFindings"))
    InternalAccessFindingsStatistics.type = Types::InternalAccessFindingsStatistics
    InternalAccessResourceTypeDetails.add_member(:total_active_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalActiveFindings"))
    InternalAccessResourceTypeDetails.add_member(:total_resolved_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalResolvedFindings"))
    InternalAccessResourceTypeDetails.add_member(:total_archived_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalArchivedFindings"))
    InternalAccessResourceTypeDetails.type = Types::InternalAccessResourceTypeDetails
    InternalAccessResourceTypeStatisticsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "key"))
    InternalAccessResourceTypeStatisticsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalAccessResourceTypeDetails, name: "value"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    InternetConfiguration.type = Types::InternetConfiguration
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InvalidParameterException.type = Types::InvalidParameterException
    JobDetails.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    JobDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    JobDetails.add_member(:started_on, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startedOn", traits: {"smithy.api#required" => {}}))
    JobDetails.add_member(:completed_on, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "completedOn"))
    JobDetails.add_member(:job_error, ::Smithy::Schema::Shapes::MemberShape.new(target: JobError, name: "jobError"))
    JobDetails.type = Types::JobDetails
    JobError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: JobErrorCode, name: "code", traits: {"smithy.api#required" => {}}))
    JobError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    JobError.type = Types::JobError
    KmsConstraintsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsConstraintsKey, name: "key"))
    KmsConstraintsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsConstraintsValue, name: "value"))
    KmsGrantConfiguration.add_member(:operations, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsGrantOperationsList, name: "operations", traits: {"smithy.api#required" => {}}))
    KmsGrantConfiguration.add_member(:grantee_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: GranteePrincipal, name: "granteePrincipal", traits: {"smithy.api#required" => {}}))
    KmsGrantConfiguration.add_member(:retiring_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: RetiringPrincipal, name: "retiringPrincipal"))
    KmsGrantConfiguration.add_member(:constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsGrantConstraints, name: "constraints"))
    KmsGrantConfiguration.add_member(:issuing_account, ::Smithy::Schema::Shapes::MemberShape.new(target: IssuingAccount, name: "issuingAccount", traits: {"smithy.api#required" => {}}))
    KmsGrantConfiguration.type = Types::KmsGrantConfiguration
    KmsGrantConfigurationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsGrantConfiguration, name: "member"))
    KmsGrantConstraints.add_member(:encryption_context_equals, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsConstraintsMap, name: "encryptionContextEquals"))
    KmsGrantConstraints.add_member(:encryption_context_subset, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsConstraintsMap, name: "encryptionContextSubset"))
    KmsGrantConstraints.type = Types::KmsGrantConstraints
    KmsGrantOperationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsGrantOperation, name: "member"))
    KmsKeyConfiguration.add_member(:key_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyPoliciesMap, name: "keyPolicies"))
    KmsKeyConfiguration.add_member(:grants, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsGrantConfigurationsList, name: "grants"))
    KmsKeyConfiguration.type = Types::KmsKeyConfiguration
    KmsKeyPoliciesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "key"))
    KmsKeyPoliciesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyPolicy, name: "value"))
    ListAccessPreviewFindingsInput.add_member(:access_preview_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPreviewId, name: "accessPreviewId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAccessPreviewFindingsInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#required" => {}}))
    ListAccessPreviewFindingsInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaMap, name: "filter"))
    ListAccessPreviewFindingsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    ListAccessPreviewFindingsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults"))
    ListAccessPreviewFindingsInput.type = Types::ListAccessPreviewFindingsInput
    ListAccessPreviewFindingsOutput.add_member(:findings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPreviewFindingsList, name: "findings", traits: {"smithy.api#required" => {}}))
    ListAccessPreviewFindingsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    ListAccessPreviewFindingsOutput.type = Types::ListAccessPreviewFindingsOutput
    ListAccessPreviewsInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#httpQuery" => "analyzerArn", "smithy.api#required" => {}}))
    ListAccessPreviewsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAccessPreviewsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAccessPreviewsInput.type = Types::ListAccessPreviewsInput
    ListAccessPreviewsOutput.add_member(:access_previews, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPreviewsList, name: "accessPreviews", traits: {"smithy.api#required" => {}}))
    ListAccessPreviewsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    ListAccessPreviewsOutput.type = Types::ListAccessPreviewsOutput
    ListAnalyzedResourcesInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#required" => {}}))
    ListAnalyzedResourcesInput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ListAnalyzedResourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    ListAnalyzedResourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults"))
    ListAnalyzedResourcesInput.type = Types::ListAnalyzedResourcesInput
    ListAnalyzedResourcesOutput.add_member(:analyzed_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzedResourcesList, name: "analyzedResources", traits: {"smithy.api#required" => {}}))
    ListAnalyzedResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    ListAnalyzedResourcesOutput.type = Types::ListAnalyzedResourcesOutput
    ListAnalyzersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAnalyzersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAnalyzersInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "type", traits: {"smithy.api#httpQuery" => "type"}))
    ListAnalyzersInput.type = Types::ListAnalyzersInput
    ListAnalyzersOutput.add_member(:analyzers, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzersList, name: "analyzers", traits: {"smithy.api#required" => {}}))
    ListAnalyzersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    ListAnalyzersOutput.type = Types::ListAnalyzersOutput
    ListArchiveRulesInput.add_member(:analyzer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "analyzerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListArchiveRulesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListArchiveRulesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListArchiveRulesInput.type = Types::ListArchiveRulesInput
    ListArchiveRulesOutput.add_member(:archive_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ArchiveRulesList, name: "archiveRules", traits: {"smithy.api#required" => {}}))
    ListArchiveRulesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    ListArchiveRulesOutput.type = Types::ListArchiveRulesOutput
    ListFindingsInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#required" => {}}))
    ListFindingsInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaMap, name: "filter"))
    ListFindingsInput.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: SortCriteria, name: "sort"))
    ListFindingsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    ListFindingsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults"))
    ListFindingsInput.type = Types::ListFindingsInput
    ListFindingsOutput.add_member(:findings, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingsList, name: "findings", traits: {"smithy.api#required" => {}}))
    ListFindingsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    ListFindingsOutput.type = Types::ListFindingsOutput
    ListFindingsV2Request.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#required" => {}}))
    ListFindingsV2Request.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaMap, name: "filter"))
    ListFindingsV2Request.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults"))
    ListFindingsV2Request.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    ListFindingsV2Request.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: SortCriteria, name: "sort"))
    ListFindingsV2Request.type = Types::ListFindingsV2Request
    ListFindingsV2Response.add_member(:findings, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingsListV2, name: "findings", traits: {"smithy.api#required" => {}}))
    ListFindingsV2Response.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    ListFindingsV2Response.type = Types::ListFindingsV2Response
    ListPolicyGenerationsInput.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalArn, name: "principalArn", traits: {"smithy.api#httpQuery" => "principalArn"}))
    ListPolicyGenerationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1}}))
    ListPolicyGenerationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListPolicyGenerationsInput.type = Types::ListPolicyGenerationsInput
    ListPolicyGenerationsOutput.add_member(:policy_generations, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyGenerationList, name: "policyGenerations", traits: {"smithy.api#required" => {}}))
    ListPolicyGenerationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    ListPolicyGenerationsOutput.type = Types::ListPolicyGenerationsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    Location.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: PathElementList, name: "path", traits: {"smithy.api#required" => {}}))
    Location.add_member(:span, ::Smithy::Schema::Shapes::MemberShape.new(target: Span, name: "span", traits: {"smithy.api#required" => {}}))
    Location.type = Types::Location
    LocationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "member"))
    NetworkOriginConfiguration.add_member(:vpc_configuration, Types::NetworkOriginConfiguration::VpcConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "vpcConfiguration"))
    NetworkOriginConfiguration.add_member(:internet_configuration, Types::NetworkOriginConfiguration::InternetConfiguration, ::Smithy::Schema::Shapes::MemberShape.new(target: InternetConfiguration, name: "internetConfiguration"))
    NetworkOriginConfiguration.add_member(:unknown, Types::NetworkOriginConfiguration::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    NetworkOriginConfiguration.type = Types::NetworkOriginConfiguration
    PathElement.add_member(:index, Types::PathElement::Index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "index"))
    PathElement.add_member(:key, Types::PathElement::Key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    PathElement.add_member(:substring, Types::PathElement::Substring, ::Smithy::Schema::Shapes::MemberShape.new(target: Substring, name: "substring"))
    PathElement.add_member(:value, Types::PathElement::Value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    PathElement.add_member(:unknown, Types::PathElement::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PathElement.type = Types::PathElement
    PathElementList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PathElement, name: "member"))
    PolicyGeneration.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    PolicyGeneration.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalArn, name: "principalArn", traits: {"smithy.api#required" => {}}))
    PolicyGeneration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status", traits: {"smithy.api#required" => {}}))
    PolicyGeneration.add_member(:started_on, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startedOn", traits: {"smithy.api#required" => {}}))
    PolicyGeneration.add_member(:completed_on, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "completedOn"))
    PolicyGeneration.type = Types::PolicyGeneration
    PolicyGenerationDetails.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: PrincipalArn, name: "principalArn", traits: {"smithy.api#required" => {}}))
    PolicyGenerationDetails.type = Types::PolicyGenerationDetails
    PolicyGenerationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyGeneration, name: "member"))
    Position.add_member(:line, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "line", traits: {"smithy.api#required" => {}}))
    Position.add_member(:column, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "column", traits: {"smithy.api#required" => {}}))
    Position.add_member(:offset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "offset", traits: {"smithy.api#required" => {}}))
    Position.type = Types::Position
    PrincipalMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    PrincipalMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    RdsDbClusterSnapshotAccountIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbClusterSnapshotAccountId, name: "member"))
    RdsDbClusterSnapshotAttributeValue.add_member(:account_ids, Types::RdsDbClusterSnapshotAttributeValue::AccountIds, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbClusterSnapshotAccountIdsList, name: "accountIds"))
    RdsDbClusterSnapshotAttributeValue.add_member(:unknown, Types::RdsDbClusterSnapshotAttributeValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RdsDbClusterSnapshotAttributeValue.type = Types::RdsDbClusterSnapshotAttributeValue
    RdsDbClusterSnapshotAttributesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbClusterSnapshotAttributeName, name: "key"))
    RdsDbClusterSnapshotAttributesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbClusterSnapshotAttributeValue, name: "value"))
    RdsDbClusterSnapshotConfiguration.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbClusterSnapshotAttributesMap, name: "attributes"))
    RdsDbClusterSnapshotConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbClusterSnapshotKmsKeyId, name: "kmsKeyId"))
    RdsDbClusterSnapshotConfiguration.type = Types::RdsDbClusterSnapshotConfiguration
    RdsDbSnapshotAccountIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbSnapshotAccountId, name: "member"))
    RdsDbSnapshotAttributeValue.add_member(:account_ids, Types::RdsDbSnapshotAttributeValue::AccountIds, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbSnapshotAccountIdsList, name: "accountIds"))
    RdsDbSnapshotAttributeValue.add_member(:unknown, Types::RdsDbSnapshotAttributeValue::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RdsDbSnapshotAttributeValue.type = Types::RdsDbSnapshotAttributeValue
    RdsDbSnapshotAttributesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbSnapshotAttributeName, name: "key"))
    RdsDbSnapshotAttributesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbSnapshotAttributeValue, name: "value"))
    RdsDbSnapshotConfiguration.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbSnapshotAttributesMap, name: "attributes"))
    RdsDbSnapshotConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RdsDbSnapshotKmsKeyId, name: "kmsKeyId"))
    RdsDbSnapshotConfiguration.type = Types::RdsDbSnapshotConfiguration
    ReasonSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    ReasonSummary.add_member(:statement_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "statementIndex"))
    ReasonSummary.add_member(:statement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statementId"))
    ReasonSummary.type = Types::ReasonSummary
    ReasonSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonSummary, name: "member"))
    RecommendationError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code", traits: {"smithy.api#required" => {}}))
    RecommendationError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    RecommendationError.type = Types::RecommendationError
    RecommendedStep.add_member(:unused_permissions_recommended_step, Types::RecommendedStep::UnusedPermissionsRecommendedStep, ::Smithy::Schema::Shapes::MemberShape.new(target: UnusedPermissionsRecommendedStep, name: "unusedPermissionsRecommendedStep"))
    RecommendedStep.add_member(:unknown, Types::RecommendedStep::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    RecommendedStep.type = Types::RecommendedStep
    RecommendedStepList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedStep, name: "member"))
    RegionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ResourceArnsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceTypeDetails.add_member(:total_active_public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalActivePublic"))
    ResourceTypeDetails.add_member(:total_active_cross_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalActiveCrossAccount"))
    ResourceTypeDetails.type = Types::ResourceTypeDetails
    ResourceTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "member"))
    ResourceTypeStatisticsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "key"))
    ResourceTypeStatisticsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeDetails, name: "value"))
    ResourcesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "member"))
    S3AccessPointConfiguration.add_member(:access_point_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointPolicy, name: "accessPointPolicy"))
    S3AccessPointConfiguration.add_member(:public_access_block, ::Smithy::Schema::Shapes::MemberShape.new(target: S3PublicAccessBlockConfiguration, name: "publicAccessBlock"))
    S3AccessPointConfiguration.add_member(:network_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkOriginConfiguration, name: "networkOrigin"))
    S3AccessPointConfiguration.type = Types::S3AccessPointConfiguration
    S3AccessPointConfigurationsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointArn, name: "key"))
    S3AccessPointConfigurationsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointConfiguration, name: "value"))
    S3BucketAclGrantConfiguration.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: AclPermission, name: "permission", traits: {"smithy.api#required" => {}}))
    S3BucketAclGrantConfiguration.add_member(:grantee, ::Smithy::Schema::Shapes::MemberShape.new(target: AclGrantee, name: "grantee", traits: {"smithy.api#required" => {}}))
    S3BucketAclGrantConfiguration.type = Types::S3BucketAclGrantConfiguration
    S3BucketAclGrantConfigurationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketAclGrantConfiguration, name: "member"))
    S3BucketConfiguration.add_member(:bucket_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketPolicy, name: "bucketPolicy"))
    S3BucketConfiguration.add_member(:bucket_acl_grants, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketAclGrantConfigurationsList, name: "bucketAclGrants"))
    S3BucketConfiguration.add_member(:bucket_public_access_block, ::Smithy::Schema::Shapes::MemberShape.new(target: S3PublicAccessBlockConfiguration, name: "bucketPublicAccessBlock"))
    S3BucketConfiguration.add_member(:access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: S3AccessPointConfigurationsMap, name: "accessPoints"))
    S3BucketConfiguration.type = Types::S3BucketConfiguration
    S3ExpressDirectoryAccessPointConfiguration.add_member(:access_point_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPointPolicy, name: "accessPointPolicy"))
    S3ExpressDirectoryAccessPointConfiguration.add_member(:network_origin, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkOriginConfiguration, name: "networkOrigin"))
    S3ExpressDirectoryAccessPointConfiguration.type = Types::S3ExpressDirectoryAccessPointConfiguration
    S3ExpressDirectoryAccessPointConfigurationsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ExpressDirectoryAccessPointArn, name: "key"))
    S3ExpressDirectoryAccessPointConfigurationsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ExpressDirectoryAccessPointConfiguration, name: "value"))
    S3ExpressDirectoryBucketConfiguration.add_member(:bucket_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ExpressDirectoryBucketPolicy, name: "bucketPolicy"))
    S3ExpressDirectoryBucketConfiguration.add_member(:access_points, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ExpressDirectoryAccessPointConfigurationsMap, name: "accessPoints"))
    S3ExpressDirectoryBucketConfiguration.type = Types::S3ExpressDirectoryBucketConfiguration
    S3PublicAccessBlockConfiguration.add_member(:ignore_public_acls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "ignorePublicAcls", traits: {"smithy.api#required" => {}}))
    S3PublicAccessBlockConfiguration.add_member(:restrict_public_buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "restrictPublicBuckets", traits: {"smithy.api#required" => {}}))
    S3PublicAccessBlockConfiguration.type = Types::S3PublicAccessBlockConfiguration
    SecretsManagerSecretConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerSecretKmsId, name: "kmsKeyId"))
    SecretsManagerSecretConfiguration.add_member(:secret_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerSecretPolicy, name: "secretPolicy"))
    SecretsManagerSecretConfiguration.type = Types::SecretsManagerSecretConfiguration
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceType", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SharedViaList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    SnsTopicConfiguration.add_member(:topic_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsTopicPolicy, name: "topicPolicy"))
    SnsTopicConfiguration.type = Types::SnsTopicConfiguration
    SortCriteria.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "attributeName"))
    SortCriteria.add_member(:order_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderBy, name: "orderBy"))
    SortCriteria.type = Types::SortCriteria
    Span.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "start", traits: {"smithy.api#required" => {}}))
    Span.add_member(:end, ::Smithy::Schema::Shapes::MemberShape.new(target: Position, name: "end", traits: {"smithy.api#required" => {}}))
    Span.type = Types::Span
    SqsQueueConfiguration.add_member(:queue_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: SqsQueuePolicy, name: "queuePolicy"))
    SqsQueueConfiguration.type = Types::SqsQueueConfiguration
    StartPolicyGenerationInput.add_member(:policy_generation_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyGenerationDetails, name: "policyGenerationDetails", traits: {"smithy.api#required" => {}}))
    StartPolicyGenerationInput.add_member(:cloud_trail_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudTrailDetails, name: "cloudTrailDetails"))
    StartPolicyGenerationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartPolicyGenerationInput.type = Types::StartPolicyGenerationInput
    StartPolicyGenerationOutput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    StartPolicyGenerationOutput.type = Types::StartPolicyGenerationOutput
    StartResourceScanInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#required" => {}}))
    StartResourceScanInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    StartResourceScanInput.add_member(:resource_owner_account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceOwnerAccount"))
    StartResourceScanInput.type = Types::StartResourceScanInput
    StatusReason.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonCode, name: "code", traits: {"smithy.api#required" => {}}))
    StatusReason.type = Types::StatusReason
    Substring.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "start", traits: {"smithy.api#required" => {}}))
    Substring.add_member(:length, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "length", traits: {"smithy.api#required" => {}}))
    Substring.type = Types::Substring
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TagsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "member"))
    TagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    TagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    Trail.add_member(:cloud_trail_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudTrailArn, name: "cloudTrailArn", traits: {"smithy.api#required" => {}}))
    Trail.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions"))
    Trail.add_member(:all_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "allRegions"))
    Trail.type = Types::Trail
    TrailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Trail, name: "member"))
    TrailProperties.add_member(:cloud_trail_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudTrailArn, name: "cloudTrailArn", traits: {"smithy.api#required" => {}}))
    TrailProperties.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions"))
    TrailProperties.add_member(:all_regions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "allRegions"))
    TrailProperties.type = Types::TrailProperties
    TrailPropertiesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TrailProperties, name: "member"))
    UnprocessableEntityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    UnprocessableEntityException.type = Types::UnprocessableEntityException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UnusedAccessConfiguration.add_member(:unused_access_age, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "unusedAccessAge"))
    UnusedAccessConfiguration.add_member(:analysis_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisRule, name: "analysisRule"))
    UnusedAccessConfiguration.type = Types::UnusedAccessConfiguration
    UnusedAccessFindingsStatistics.add_member(:unused_access_type_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: UnusedAccessTypeStatisticsList, name: "unusedAccessTypeStatistics"))
    UnusedAccessFindingsStatistics.add_member(:top_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAggregations, name: "topAccounts"))
    UnusedAccessFindingsStatistics.add_member(:total_active_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalActiveFindings"))
    UnusedAccessFindingsStatistics.add_member(:total_archived_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalArchivedFindings"))
    UnusedAccessFindingsStatistics.add_member(:total_resolved_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalResolvedFindings"))
    UnusedAccessFindingsStatistics.type = Types::UnusedAccessFindingsStatistics
    UnusedAccessTypeStatistics.add_member(:unused_access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "unusedAccessType"))
    UnusedAccessTypeStatistics.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "total"))
    UnusedAccessTypeStatistics.type = Types::UnusedAccessTypeStatistics
    UnusedAccessTypeStatisticsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UnusedAccessTypeStatistics, name: "member"))
    UnusedAction.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "action", traits: {"smithy.api#required" => {}}))
    UnusedAction.add_member(:last_accessed, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastAccessed"))
    UnusedAction.type = Types::UnusedAction
    UnusedActionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UnusedAction, name: "member"))
    UnusedIamRoleDetails.add_member(:last_accessed, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastAccessed"))
    UnusedIamRoleDetails.type = Types::UnusedIamRoleDetails
    UnusedIamUserAccessKeyDetails.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accessKeyId", traits: {"smithy.api#required" => {}}))
    UnusedIamUserAccessKeyDetails.add_member(:last_accessed, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastAccessed"))
    UnusedIamUserAccessKeyDetails.type = Types::UnusedIamUserAccessKeyDetails
    UnusedIamUserPasswordDetails.add_member(:last_accessed, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastAccessed"))
    UnusedIamUserPasswordDetails.type = Types::UnusedIamUserPasswordDetails
    UnusedPermissionDetails.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: UnusedActionList, name: "actions"))
    UnusedPermissionDetails.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceNamespace", traits: {"smithy.api#required" => {}}))
    UnusedPermissionDetails.add_member(:last_accessed, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastAccessed"))
    UnusedPermissionDetails.type = Types::UnusedPermissionDetails
    UnusedPermissionsRecommendedStep.add_member(:policy_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "policyUpdatedAt"))
    UnusedPermissionsRecommendedStep.add_member(:recommended_action, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendedRemediationAction, name: "recommendedAction", traits: {"smithy.api#required" => {}}))
    UnusedPermissionsRecommendedStep.add_member(:recommended_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendedPolicy"))
    UnusedPermissionsRecommendedStep.add_member(:existing_policy_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "existingPolicyId"))
    UnusedPermissionsRecommendedStep.type = Types::UnusedPermissionsRecommendedStep
    UpdateAnalyzerRequest.add_member(:analyzer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "analyzerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAnalyzerRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerConfiguration, name: "configuration"))
    UpdateAnalyzerRequest.type = Types::UpdateAnalyzerRequest
    UpdateAnalyzerResponse.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerConfiguration, name: "configuration"))
    UpdateAnalyzerResponse.type = Types::UpdateAnalyzerResponse
    UpdateArchiveRuleInput.add_member(:analyzer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "analyzerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateArchiveRuleInput.add_member(:rule_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ruleName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateArchiveRuleInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterCriteriaMap, name: "filter", traits: {"smithy.api#required" => {}}))
    UpdateArchiveRuleInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateArchiveRuleInput.type = Types::UpdateArchiveRuleInput
    UpdateFindingsInput.add_member(:analyzer_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerArn, name: "analyzerArn", traits: {"smithy.api#required" => {}}))
    UpdateFindingsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatusUpdate, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateFindingsInput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingIdList, name: "ids"))
    UpdateFindingsInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn"))
    UpdateFindingsInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateFindingsInput.type = Types::UpdateFindingsInput
    ValidatePolicyFinding.add_member(:finding_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "findingDetails", traits: {"smithy.api#required" => {}}))
    ValidatePolicyFinding.add_member(:finding_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatePolicyFindingType, name: "findingType", traits: {"smithy.api#required" => {}}))
    ValidatePolicyFinding.add_member(:issue_code, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueCode, name: "issueCode", traits: {"smithy.api#required" => {}}))
    ValidatePolicyFinding.add_member(:learn_more_link, ::Smithy::Schema::Shapes::MemberShape.new(target: LearnMoreLink, name: "learnMoreLink", traits: {"smithy.api#required" => {}}))
    ValidatePolicyFinding.add_member(:locations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationList, name: "locations", traits: {"smithy.api#required" => {}}))
    ValidatePolicyFinding.type = Types::ValidatePolicyFinding
    ValidatePolicyFindingList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatePolicyFinding, name: "member"))
    ValidatePolicyInput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale"))
    ValidatePolicyInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ValidatePolicyInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ValidatePolicyInput.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policyDocument", traits: {"smithy.api#required" => {}}))
    ValidatePolicyInput.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "policyType", traits: {"smithy.api#required" => {}}))
    ValidatePolicyInput.add_member(:validate_policy_resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatePolicyResourceType, name: "validatePolicyResourceType"))
    ValidatePolicyInput.type = Types::ValidatePolicyInput
    ValidatePolicyOutput.add_member(:findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidatePolicyFindingList, name: "findings", traits: {"smithy.api#required" => {}}))
    ValidatePolicyOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    ValidatePolicyOutput.type = Types::ValidatePolicyOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    VpcConfiguration.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcId, name: "vpcId", traits: {"smithy.api#required" => {}}))
    VpcConfiguration.type = Types::VpcConfiguration

    AccessAnalyzer = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.accessanalyzer#AccessAnalyzer"
      service.name = "AccessAnalyzer"
      service.version = "2019-11-01"
      service.traits = {"aws.api#service" => {"sdkId" => "AccessAnalyzer", "arnNamespace" => "access-analyzer", "cloudTrailEventSource" => "access-analyzer.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "access-analyzer"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Access Analyzer"}
      service.add_operation(:apply_archive_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ApplyArchiveRule"
        operation.name = "ApplyArchiveRule"
        operation.input = ApplyArchiveRuleInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/archive-rule", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:cancel_policy_generation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CancelPolicyGeneration"
        operation.name = "CancelPolicyGeneration"
        operation.input = CancelPolicyGenerationInput
        operation.output = CancelPolicyGenerationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/generation/{jobId}", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:check_access_not_granted, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CheckAccessNotGranted"
        operation.name = "CheckAccessNotGranted"
        operation.input = CheckAccessNotGrantedRequest
        operation.output = CheckAccessNotGrantedResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ThrottlingException
        operation.errors << UnprocessableEntityException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/check-access-not-granted", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:check_no_new_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CheckNoNewAccess"
        operation.name = "CheckNoNewAccess"
        operation.input = CheckNoNewAccessRequest
        operation.output = CheckNoNewAccessResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ThrottlingException
        operation.errors << UnprocessableEntityException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/check-no-new-access", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:check_no_public_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CheckNoPublicAccess"
        operation.name = "CheckNoPublicAccess"
        operation.input = CheckNoPublicAccessRequest
        operation.output = CheckNoPublicAccessResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << InvalidParameterException
        operation.errors << ThrottlingException
        operation.errors << UnprocessableEntityException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/check-no-public-access", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:create_access_preview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CreateAccessPreview"
        operation.name = "CreateAccessPreview"
        operation.input = CreateAccessPreviewInput
        operation.output = CreateAccessPreviewOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/access-preview", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_analyzer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CreateAnalyzer"
        operation.name = "CreateAnalyzer"
        operation.input = CreateAnalyzerInput
        operation.output = CreateAnalyzerOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_archive_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#CreateArchiveRule"
        operation.name = "CreateArchiveRule"
        operation.input = CreateArchiveRuleInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}/archive-rule", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_analyzer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#DeleteAnalyzer"
        operation.name = "DeleteAnalyzer"
        operation.input = DeleteAnalyzerInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}", "method" => "DELETE", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_archive_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#DeleteArchiveRule"
        operation.name = "DeleteArchiveRule"
        operation.input = DeleteArchiveRuleInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}/archive-rule/{ruleName}", "method" => "DELETE", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:generate_finding_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GenerateFindingRecommendation"
        operation.name = "GenerateFindingRecommendation"
        operation.input = GenerateFindingRecommendationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/recommendation/{id}", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:get_access_preview, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetAccessPreview"
        operation.name = "GetAccessPreview"
        operation.input = GetAccessPreviewInput
        operation.output = GetAccessPreviewOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/access-preview/{accessPreviewId}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_analyzed_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetAnalyzedResource"
        operation.name = "GetAnalyzedResource"
        operation.input = GetAnalyzedResourceInput
        operation.output = GetAnalyzedResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzed-resource", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_analyzer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetAnalyzer"
        operation.name = "GetAnalyzer"
        operation.input = GetAnalyzerInput
        operation.output = GetAnalyzerOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_archive_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetArchiveRule"
        operation.name = "GetArchiveRule"
        operation.input = GetArchiveRuleInput
        operation.output = GetArchiveRuleOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}/archive-rule/{ruleName}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_finding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetFinding"
        operation.name = "GetFinding"
        operation.input = GetFindingInput
        operation.output = GetFindingOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/finding/{id}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_finding_recommendation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetFindingRecommendation"
        operation.name = "GetFindingRecommendation"
        operation.input = GetFindingRecommendationRequest
        operation.output = GetFindingRecommendationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/recommendation/{id}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetFindingRecommendation.new
      end)
      service.add_operation(:get_finding_v2, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetFindingV2"
        operation.name = "GetFindingV2"
        operation.input = GetFindingV2Request
        operation.output = GetFindingV2Response
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/findingv2/{id}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetFindingV2.new
      end)
      service.add_operation(:get_findings_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetFindingsStatistics"
        operation.name = "GetFindingsStatistics"
        operation.input = GetFindingsStatisticsRequest
        operation.output = GetFindingsStatisticsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/findings/statistics", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
      end)
      service.add_operation(:get_generated_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#GetGeneratedPolicy"
        operation.name = "GetGeneratedPolicy"
        operation.input = GetGeneratedPolicyInput
        operation.output = GetGeneratedPolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/generation/{jobId}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_access_preview_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListAccessPreviewFindings"
        operation.name = "ListAccessPreviewFindings"
        operation.input = ListAccessPreviewFindingsInput
        operation.output = ListAccessPreviewFindingsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/access-preview/{accessPreviewId}", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ListAccessPreviewFindings.new
      end)
      service.add_operation(:list_access_previews, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListAccessPreviews"
        operation.name = "ListAccessPreviews"
        operation.input = ListAccessPreviewsInput
        operation.output = ListAccessPreviewsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/access-preview", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccessPreviews.new
      end)
      service.add_operation(:list_analyzed_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListAnalyzedResources"
        operation.name = "ListAnalyzedResources"
        operation.input = ListAnalyzedResourcesInput
        operation.output = ListAnalyzedResourcesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzed-resource", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ListAnalyzedResources.new
      end)
      service.add_operation(:list_analyzers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListAnalyzers"
        operation.name = "ListAnalyzers"
        operation.input = ListAnalyzersInput
        operation.output = ListAnalyzersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAnalyzers.new
      end)
      service.add_operation(:list_archive_rules, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListArchiveRules"
        operation.name = "ListArchiveRules"
        operation.input = ListArchiveRulesInput
        operation.output = ListArchiveRulesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}/archive-rule", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListArchiveRules.new
      end)
      service.add_operation(:list_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListFindings"
        operation.name = "ListFindings"
        operation.input = ListFindingsInput
        operation.output = ListFindingsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/finding", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ListFindings.new
      end)
      service.add_operation(:list_findings_v2, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListFindingsV2"
        operation.name = "ListFindingsV2"
        operation.input = ListFindingsV2Request
        operation.output = ListFindingsV2Response
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/findingv2", "method" => "POST", "code" => 200}, "smithy.api#readonly" => {}, "smithy.api#suppress" => ["HttpMethodSemantics"]}
        operation[:paginator] = Paginators::ListFindingsV2.new
      end)
      service.add_operation(:list_policy_generations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListPolicyGenerations"
        operation.name = "ListPolicyGenerations"
        operation.input = ListPolicyGenerationsInput
        operation.output = ListPolicyGenerationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/generation", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPolicyGenerations.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_policy_generation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#StartPolicyGeneration"
        operation.name = "StartPolicyGeneration"
        operation.input = StartPolicyGenerationInput
        operation.output = StartPolicyGenerationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/policy/generation", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_resource_scan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#StartResourceScan"
        operation.name = "StartResourceScan"
        operation.input = StartResourceScanInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/resource/scan", "method" => "POST", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_analyzer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#UpdateAnalyzer"
        operation.name = "UpdateAnalyzer"
        operation.input = UpdateAnalyzerRequest
        operation.output = UpdateAnalyzerResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_archive_rule, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#UpdateArchiveRule"
        operation.name = "UpdateArchiveRule"
        operation.input = UpdateArchiveRuleInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/analyzer/{analyzerName}/archive-rule/{ruleName}", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#UpdateFindings"
        operation.name = "UpdateFindings"
        operation.input = UpdateFindingsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/finding", "method" => "PUT", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:validate_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.accessanalyzer#ValidatePolicy"
        operation.name = "ValidatePolicy"
        operation.input = ValidatePolicyInput
        operation.output = ValidatePolicyOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
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
